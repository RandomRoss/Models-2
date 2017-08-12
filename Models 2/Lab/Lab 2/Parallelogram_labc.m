%Jared Ross 
%5/18/2017
%Models II
%Determining the Center of a Parallelogram Based on Four Corners
clear; clc; 
% prompting the user to give values for 1st thru 4th x and y coordinates 
x1 = input('Enter the 1st points x-coordinate: ');
y1 = input('Enter the 1st points y-coordinate: ');
x2 = input('Enter the 2nd points x-coordinate: ');
y2 = input('Enter the 2nd points y-coordinate: ');
x3 = input('Enter the 3rd points x-coordinate: ');
y3 = input('Enter the 3rd points y-coordinate: ');
x4 = input('Enter the 4th points x-coordinate: ');
y4 = input('Enter the 4th points y-coordinate: ');

m1 = ((y2 - y1) / (x2 - x1));
m2 = ((y4 - y3) / (x4 - x3));
b1 = -m1 * x2 + y2; 
b2 = -m2 * x3 + y3;
[X1,Y1] = Intersection( m1,b1,m2,b2 );
m1 = ((y3 - y2) / (x3 - x2));
m2 = ((y4 - y1) / (x4 - x1));
b1 = -m1 * x2 + y2;
b2 = -m2 * x4 + y4;
[X2,Y2] = Intersection( m1,b1,m2,b2 );
% determining if top is zero or not 
if X1 == Inf 
    tp = 1;
else 
    tp = 0;
end 
% determing if the sides are infinte or zero 
if X2 == Inf
    sd = 1; 
else 
    sd = 0; 
end 
if tp == 1 && sd == 1 
    fprintf('Parallelogram = Yes');
else 
    fprintf('Parallelogram = No');
end