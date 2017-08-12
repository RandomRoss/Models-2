%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 5
%Part A
%Solving Nonlinear Equations using the Newton-Raphson Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
close all; 
clc;
commandwindow;
x = 2.60517109;
 f = (x)^5 - 120; % compute value of function with new guess
 f_prime = 5 * (x)^4 ; % compute value of derivative with new guess
 
 fx = x - ((x)^5 - 120)/(5 * (x)^4);
 evalaccuracy = (x)^5 - 120;
 fprintf('fx is: %0.8f\n',fx);
 fprintf('evalaccuarcy is %0.8f:\n',evalaccuracy);