%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 6
%Part C
%Crash With Air Bag 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all;
close all;
clc; 
commandwindow;
%loading Crash_Data2.mat
load Crash_Data2
d = 20:10:70;
for k = 1:length(d)
        [ HIC_Curve(k,:), HIC_Value(k)  ] = Lab6Function( a, t, d(k) );
end 
max_HIC = max(HIC_Value);
%displaying the max_HIC to the user
%plotting the HIC_Curve compared to time
fprintf('The max HIC Value is %0.8f \n',max_HIC);
plot(t, HIC_Curve);
ylabel('HIC Value');
xlabel('Time(ms)');
title('HIC Curves');
legend('d20','d30','d40','d50','d60','d70');