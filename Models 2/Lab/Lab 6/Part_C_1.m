%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 6
%Part C
%Crash With no Air Bag 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all;
close all;
clc; 
commandwindow;
%loading Crash_Data1.mat
load Crash_Data1
d = 20:10:70;

for k = 1:length(d)
        [ HIC_Curve(k,:), HIC_Value(k) ] = Lab6Function( a, t, d(k) );
end 
%finding the largest value in HIC_Value
max_HIC = max(HIC_Value);
%plotting HIC_Curve, displaying max HIC_Value represented by max_HIC
fprintf('The max HIC Value is %0.8f \n',max_HIC);
plot(t, HIC_Curve);
ylabel('HIC Value');
xlabel('Time(ms)');
title('HIC Curves');
legend('d20','d30','d40','d50','d60','d70');