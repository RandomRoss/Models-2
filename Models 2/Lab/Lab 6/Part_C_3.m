%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 6
%Part C
%Crash With no Air Bag and Air bags 
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
        [ HIC_Curve1(k,:), HIC_Value1(k) ] = Lab6Function( a, t, d(k) );
end 
%finding the largest value in HIC_Value
max_HIC1 = max(HIC_Value1);
%plotting HIC_Curve, displaying max HIC_Value represented by max_HIC
fprintf('The max HIC Value with no air bags is: %0.8f \n',max_HIC1);
plot(t, HIC_Curve1);
ylabel('HIC Value');
xlabel('Time(ms)');
title('HIC Curves');
legend('d20','d30','d40','d50','d60','d70');

%loading Crash_Data2.mat
load Crash_Data2
d = 20:10:70;
for k = 1:length(d)
        [ HIC_Curve2(k,:), HIC_Value2(k)  ] = Lab6Function( a, t, d(k) );
end 
max_HIC2 = max(HIC_Value2);
%displaying the max_HIC to the user
fprintf('The max HIC Value with air bags is: %0.8f \n',max_HIC2);
%plotting the HIC_Curve compared to time
figure
plot(t, HIC_Curve2);
ylabel('HIC Value');
xlabel('Time(ms)');
title('HIC Curves');
legend('d20','d30','d40','d50','d60','d70');