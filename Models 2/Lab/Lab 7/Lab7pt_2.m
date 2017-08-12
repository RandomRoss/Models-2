%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/21/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 7
%Part C
%Lab07_Data2.mat 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all;
close all;
clc; 
commandwindow;
%loading Lab07_Data2.mat 
load Lab07_Data2.mat 
%work/code for Lab07_Data2.mat
dt  = time(2) - time(1);
% declaring variables 
curve1 =0;
curve2 = 0; 
% finding/ caluclating curve 1 and curve 2 
for k = 2:length(time)
 curve1(k) = curve1(k-1) + (vel_ob1(k) + vel_ob1(k-1)) / 2 * dt;
 curve2(k) = curve2(k-1) + (vel_ob2(k) + vel_ob2(k-1)) / 2 * dt;
end

distf = curve1 - curve2; 
plot(time,curve1,time,curve2);
title('Object 1 vs Object 2')
xlabel('Time (s)');
ylabel('Distance (m)');
legend('Object 1','Object 2');
figure 
plot (time,distf);
title('Distance Traveled');
xlabel('time (s)');
ylabel('Distance (m)');
fprintf('Final Distance is :%0.02f \n',distf(end));