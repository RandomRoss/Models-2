%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/28/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Midterm
%Part 2 
%Problem 1 - Linear Algebra
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all;
close all;
clc; 
commandwindow;
T1 = 25; % this is in celcius 
T2 = 20; % this is in celcius 
T3 = 20; % this is in celcius 
T4 = 30; % this is in celcius 
%linear algebra
A = [0 1 1 0; 1 0 0 1; 1 0 0 1; 0 1 1 0];
b = [T1 0 0 T4; T1 T2 0 0; 0 0 T3 T4; 0 T2 T3 0];
c = A+b;
if det(c) ~= 0
    x = inv(c)*b;
    x1 = x(1)+ x(1,2)+x(1,3) + x(1,4);
    x1 = x1/4;
    x2 = x(2) + x(2,2) + x(2,3) + x(2,3);
    x2 = (x2/4) * -1;
    x3 = x(3) + x(3,2) + x(3,3) + x(3,4); 
    x3 = x3/4;
    x4 = x(4) + x(4,2) + x(4,3) + x(4,4);
    x4 = x4/4;
    
    fprintf('The Temperature at x1 is:%0.4f \n',x1); %displaying the temp at x1
    fprintf('The Temperature at x2 is:%0.4f \n',x2); %displaying the temp at x2
    fprintf('The Temperature at x3 is:%0.4f \n',x3); %displaying the temp at x3
    fprintf('The Temperature at x4 is:%0.4f \n',x4); %displaying the temp at x4
else 
    fprintf('No Solution');
end 
    