%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/31/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 4
%Part C
%Estimating Velocity and Acceleration from GPS Data
%GPS_Data2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
 
load GPS_Data2.mat
% calculating Distance
for k = 2:length(latitude)
     distance(k)  = Greatcircle(latitude(k-1), longitude(k-1), latitude(k), longitude(k));
end
 
I = 0;
for k = 2:length(latitude)
    I(k) = distance(k) + I(k-1);
end
 
t = time;
%calculating velocity 2pt estimate
for k = 2:length(latitude)
    velocityF2pt(k) = (I(k)- I(k-1))/(t(k)-t(k-1));
end
 %finding errors 
error1 = abs(actual_velocity - velocityF2pt);
 
% calculating 3pt estimate
for k = 2:length(latitude)-1
    velocityF3pt(k) = (I(k+1)- I(k-1))/(2*(t(k)-t(k-1)));
end
 %finding errors 
error2 = abs(actual_velocity(1:146) - velocityF3pt);
 %plotting velocity 2pt and 3pt estimate and the actual 
subplot(2,1,1);
plot(t,velocityF2pt,'r*',t, actual_velocity,t(1:146), velocityF3pt,'b*')
title('Estimated and Actual Velocities')
xlabel('Time')
ylabel('Velocity (m/s)')
legend('2pt Estimate', 'Actual', '3pt Estimate','location','eastoutside' )
subplot(2,1,2);
plot(t,error1,'r*', t(1:146), error2,'b*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s)')
legend('Error 2pt', 'Error 3pt','location','eastoutside')
 
% calculating Acceleration
for k = 2:length(latitude)-1
    Acceleration(k) = (I(k+1)- 2*I(k)+I(k-1))/((t(k)-t(k-1))^2);
end
 %finding errors
error3 = abs(actual_acceleration - Acceleration);
 %creating a new figure to plot actual acceleration and estimated
 %acceleration 
figure
subplot(2,1,1);
plot(t(1:146),actual_acceleration, t(1:146), Acceleration,'r*' )
title('Estimated and Actual Accelerations')
xlabel('Time')
ylabel('Acceleration (m/s^2)')
legend('Actual Acceleration','Estimated Acceleration','location','eastoutside')
subplot(2,1,2);
plot(t(1:146),error3,'r*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s^2)')