%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 3
%Problem 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc; 
commandwindow; 
%loading HW2P2
load HW2P2.mat
%plot
plot(t,pos,'*'); 
xlabel('Time(s)');
ylabel('Position(m)');
title('Position vs Time');
%velocity2pt
for k = 2:(length(t)-1)
    vel2p(k) = (pos(k) - pos(k-1)) / (t(k) - t(k-1));
end 
%velocity3pt
for k = 2:(length(t))
    vel3p(k) = (pos(k) - pos(k-1))/(t(k)-t(k-1));
end
%plot2
for k = 2:length(t)
    Dvel2p(k) = (pos(k) - pos(k-1)) / (t(k) - t(k-1));
end 
plot(t,Dvel2p,'b*',t_act,v_act,'r*');
xlabel('Time(s)');
ylabel('Velocity(m/s)');
title ('Estimated Velocity');
legend('2Pt. Velocity','Time');