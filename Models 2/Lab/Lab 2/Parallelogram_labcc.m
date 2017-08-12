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
[ x , y ] = Intersection( m1,b1,m2,b2 );
% determining if top is zero or not 
if x == Inf 
    tp = 1;
else 
    tp = 0;
end 
m1 = ((y3 - y2) / (x3 - x2));
m2 = ((y4 - y1) / (x4 - x1));
b1 = -m1 * x2 + y2;
b2 = -m2 * x4 + y4;
[ x , y ] = Intersection( m1,b1,m2,b2 );
% determing if the sides are infinte or zero 
if x == Inf
    sd = 1; 
else 
    sd = 0; 
end 
%determing if the inputs make a parallelogram or not
if tp == 1 && sd == 1 
    % finding the center of the Parallelogram using the function 
m1 = (y3 - y1) / (x3 - x1);
m2 = (y4 - y2) / (x4 - x2);
b1 = y1 - m1 * x1; 
b2 = y2 - m2 * x2; 
[ x, y ] = Intersection( m1,b1,m2,b2 );
    fprintf('Parallelogram = Yes \n');
    fprintf('The Center of the Parallelogram would be:');
    fprintf('(%i,%i)\n',x,y);
else 
    fprintf('Parallelogram = No \n');
end