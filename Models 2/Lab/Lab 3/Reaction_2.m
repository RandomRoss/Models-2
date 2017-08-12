%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/24/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 3 
%Part A 
%Balancing of Chemical Reactions
%Reaction 2: Oxidation of Sugar
%C12H22O11 + O2 ? CO2 + H2O, 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; 
%Matrix Equation
A = [1 0 0 0; 12 0 -1 0; 22 0 0 -2; 11 2 -2 -1];
b = [ 3; 0; 0; 0];
%Solving The Chemical Rection
if det(A) ~= 0
%getting the inverse of Matrix A and setting x variable as the inverse of
%the a matrix 
    x = inv(A)*b;
    fprintf('There are %i C12H22O11 \n',x(1));
    fprintf('There are %i O2 \n',x(2));
    fprintf('There are %i CO2 \n',x(3));
    fprintf('There are %i H2O \n',x(4));
else 
    %The chemical rection can't be solved 
    fprintf('No Solution \n');
end 
