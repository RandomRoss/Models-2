%Lecture 7 
% Area Between two curves 
% Area = integral 0.6 to 3.4 (topCurve - BottomCurve)dx
% integral adds up all the rectangles 
% area (RightCurve - LeftCurve)
% When would you use numeric integration to estimate area? some examples 
% find the area enclosed by the two curves shown 

%%Example 1 
%clean up 
clear all; 
clc; 

%get values 
dx = 0.1;
x = -4:dx:4;
x = -4:dt:4;
yt = sqrt(25*(1-x.^2/16));
yb = 3 - sqrt(25 - x.^2);

%trapezoidal sum
trap = 0; 
for k = 2:length(x)
    y1 = yt(k) - yb(k);
    y2 = yt(k-1) yb(k-1);
    trap = trap + (y1 + y2) / 2 * dx;
end 
fprintf('The estimate for the area is %0.4f in ^2\n',trap)