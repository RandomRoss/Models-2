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
%loading GPS_Data1
load GPS_Data2.mat
%Distance
for k=2:length(latitude)
    dist(k) =  Greatcircle(latitude(k-1), longitude(k-1), latitude(k), longitude(k));
end 
I = 0; 
for k=2:length(latitude)
    I(k) = dist(k) + I(k-1);
end 
t = time; 
%Velocity 2pt estimate
for k = 2:length(latitude)
    Velocity2pt(k) = (I(k)- I(k-1))/(t(k)-t(k-1));
end
 
error1 = abs(actual_velocity - Velocity2pt);
%Velocity 3pt estimate
for k = 2:length(latitude)-1
    Velocity3pt(k) = (I(k+1)- I(k-1))/(2*(t(k)-t(k-1)));
end
 
error2 = abs(actual_velocity(1:24) - Velocity3pt);
%plotting
subplot(2,1,1);
plot(t,Velocity2pt,'r*',t, actual_velocity,t(1:146), Velocity3pt,'b*')
title('Estimated and Actual Velocities')
xlabel('Time')
ylabel('Velocity (m/s)')
legend('2pt Estimate', 'Actual', '3pt Estimate' )
subplot(2,1,2);
plot(t,error1,'r*', t(1:146), error2,'b*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s)')
legend('Error 2pt', 'Error 3pt')
% Acceleration
for k = 2:length(latitude)-1
    Acc1(k) = (I(k+1)- 2*I(k)+I(k-1))/((t(k)-t(k-1))^2);
end
 
error3 = abs(actual_acceleration - Acc1);
 
figure
subplot(2,1,1);
plot(t(1:146),actual_acceleration, t(1:146), Acc1,'r*' )
title('Estimated and Actual Accelerations')
xlabel('Time')
ylabel('Acceleration (m/s^2)')
legend('Actual Acceleration','Estimated Acceleration')
subplot(2,1,2);
plot(t(1:146),error3,'r*')
title('Error of Estimate')
xlabel('Time')
ylabel('Error (m/s^2)')
