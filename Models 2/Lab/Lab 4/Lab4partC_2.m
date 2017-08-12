%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/31/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 4
%Part C
%Estimating Velocity and Acceleration from GPS Data
%GPS_Data1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; 
close all; 
%loading GPS_Data1
load GPS_Data1.mat
%calculating Distance
for k=2:length(latitude)
    distance(k) =  Greatcircle(latitude(k-1), longitude(k-1), latitude(k), longitude(k));
end 
I = 0; 
for k=2:length(latitude)
    I(k) = distance(k) + I(k-1);
end 
t = time; 
%calculating Velocity 2pt estimate
for k = 2:length(latitude)
    Velocity2pt(k) = (I(k)- I(k-1))/(t(k)-t(k-1));
end
 %finding errors
error1 = abs(actual_velocity - Velocity2pt);
%calculating Velocity 3pt estimate
for k = 2:length(latitude)-1
    Velocity3pt(k) = (I(k+1)- I(k-1))/(2*(t(k)-t(k-1)));
end
 %finding errors
error2 = abs(actual_velocity(1:24) - Velocity3pt);
%plotting estimated 2pt, 3pt, and actual on a graph
subplot(2,1,1);
plot(t,Velocity2pt,'r*',t, actual_velocity,t(1:24), Velocity3pt,'b*')
title('Estimated and Actual Velocities')
xlabel('Time')
ylabel('Velocity (m/s)')
%putting legends on the right of the graph to show points are not under the
%legend 
legend('2pt Estimate', 'Actual', '3pt Estimate','location','eastoutside' )
subplot(2,1,2);
plot(t,error1,'r*', t(1:24), error2,'b*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s)')
legend('Error 2pt', 'Error 3pt','location','eastoutside')
% calculating Acceleration
for k = 2:length(latitude)-1
    Acce1eration(k) = (I(k+1)- 2*I(k)+I(k-1))/((t(k)-t(k-1))^2);
end
 %finding errors 
error3 = abs(actual_acceleration - Acce1eration);
 %creating a new figure to plot actual acceleration and estimated
 %acceleration 
figure
subplot(2,1,1);
plot(t(1:24),actual_acceleration, t(1:24), Acce1eration,'r*' )
title('Estimated and Actual Accelerations')
xlabel('Time')
ylabel('Acceleration (m/s^2)')
legend('Actual Acceleration','Estimated Acceleration','location','eastoutside')
subplot(2,1,2);
plot(t(1:24),error3,'r*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s^2)')
