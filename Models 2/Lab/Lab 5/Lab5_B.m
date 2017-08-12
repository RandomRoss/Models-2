%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 5
%Part B
%Solving Nonlinear Equations using the Newton-Raphson Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
close all; 
clc;
commandwindow;
%asking user for inputs of roots, number, tolorance, and guess
n = input('Enter Root:');
num = input('Enter number:');
tol = input('Enter Accuracy/Tolorance:');
gs = input('Enter guess:');
%counter
x = 1;
%functions f(x) and f_prime(x)
f = (gs^n) - num; 
f_prime = n * (gs-1);
% while loop loop to iterate through the Newton Raphson 
% loop exits once the function has went through 100 guesses 
% and exits the while loop when the function reaches the given tolerance
while (x < 100)
    
    x = x + 1; 
end 