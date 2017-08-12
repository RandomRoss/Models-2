%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/06/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lecture 5 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all; 
close all; 
clc;
commandwindow; 

x = input('Please enter your initial guess for a root of the equation: ');
tol = input('Please enter your tolerance: '); % tolerance is the actual tolerance 

f = x^3 - 3*x^2 - 10*x + 24;
f_prime = 3*x^2 - 6*x - 10; 
n = 1; %index in matlab start at one(1)

while abs(f) > tol 
    x(n+1) = x(n) - f/f_prime; 
    f = x(n+1)^3 - 3*x(n+1)^2 - 10*x(n+1) + 24;
    f_prime = 3*x(n+1)^2 - 6*x(n+1) - 10; 
    n = n + 1;
end 
fprintf('The estimate of the root is %0.4f \n',x(end));
fprintf('The number of iterations required is %i \n',n-1);

