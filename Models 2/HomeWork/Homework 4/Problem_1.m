%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HomeWork 4 
%Problem 1
%Trapizoid sum 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up 
clear all;
close all;
clc; 
commandwindow;
t = 0:0.3:3;
% putting data points in an array
dp = [0.0183 0.0555 0.1408 0.2981 0.5272 0.7788 0.9608 0.9900 0.8521 0.6126 0.3679];
dtime = 0.3;
sum1 = 0; 
%calculating trapizoid sum 
for k = 2:length(t)
   area1 = dtime*(dp(k)+dp(k-1)) / 2; 
   sum1 = sum1 + area1;
end
%Displaying the estimate of sum using the trapezoid rule 
fprintf('The Estimate for the Trapezoid Rule is: %0.4f \n',sum1);