%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/24/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 3 
%Part A 
%Balancing of Chemical Reactions
%Reaction 3: Photosynthesis
%CO2 + H2O ? C6H12O6 + O2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; 
%Matrix Equation
A = [1 0 0 0; 1 0 -6 0; 2 1 -6 -2; 0 2 -12 0];
b = [ 12; 0; 0; 0];
%Solving The Chemical Rection
if det(A) ~= 0
%getting the inverse of Matrix A and setting x variable as the inverse of
%the a matrix 
    x = inv(A)*b;
    fprintf('There are %i CO2 \n',x(1));
    fprintf('There are %i H2O \n',x(2));
    fprintf('There are %i CH12O6 \n',x(3));
    fprintf('There are %i O2 \n',x(4));
else 
    %The chemical rection can't be solved 
    fprintf('No Solution \n');
end 
