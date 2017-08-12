%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 5
%Part C
%Estimated Roots Using Newton Raphson
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc; 
commandwindow; 
%Prompting user to eter in values 
iv = input('Enter your initial value:');
toler = input('Enter your tolerance:');
% calculating f and f prime(f')
f1 = 1300 + 1.45*iv + 2.2*iv^(0.75) - 7.49*iv;
f1_prime = -6.04 + 1.6*iv^(-0.25);
i = 1;
while abs(f1) > toler
    iv(i+1) = iv(i) - f1/f1_prime;
    f1 = 1300 + 1.45*iv(i+1) + 2.2*iv(i+1)^0.75 - 7.49*iv(i+1);
    f1_prime = -6.04 + 1.6*iv(i+1)^-0.25;
    i = i + 1; 
end 
%displaying the number of widgets
fprintf (' The number of widgets needed is: %0.4f\n',iv(end));
