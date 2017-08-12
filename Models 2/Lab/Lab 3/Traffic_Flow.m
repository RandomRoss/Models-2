%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/24/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 3 
%Part B 
%Traffic Flow
%On Vine, Walnut, 5th, and 6th street
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; 
%Matrix Equation
A = [1 0 0 1; 0 1 0 1; 1 0 1 0; 0 0 0 1];
b = [375; 325; 300; 200];
%Solving The Chemical Rection
if det(A) ~= 0
%getting the inverse of Matrix A and setting x variable as the inverse of
%the a matrix 
    x = inv(A)*b;
    fprintf('There are %i Cars on Vine \n',x(1));
    fprintf('There are %i Cars on Walnut \n',x(2));
    fprintf('There are %i Cars on 5th \n',x(3));
    fprintf('There are %i Cars on 6th \n',x(4));
else 
    %The chemical rection can't be solved 
    fprintf('No Solution \n');
end 