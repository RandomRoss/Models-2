%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HomeWork 4 
%Problem 3
%Trapezodial Rule 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up 
clc;
clear all;
close all; 
commandwindow;
t1=3;
x1= linspace(0,3,t1);
y = exp(-(x1-2).^2);
deltax = x1(2) - x1(1);
% trapezoidal sum
t1=3;
Sum1=0;
for k = 2:length(x1)
    areaRi = deltax*(y(k)+y(k-1)) / 2;
    Sum1 = Sum1 + areaRi;
end
t1=3;
Sum2=0;
while abs(Sum2 - Sum1) > 0.001
    t1 = t1*2;
     x1 = linspace(0,3,t1);
    y = exp(-(x1-2).^2);
    deltax = x1(2) - x1(1);
    Sum2 = Sum1;
        areaRi = deltax*(y(k)+y(k-1))/2;
        Sum1 = Sum1 + areaRi;
    Sum1=0;
    for k = 2:length(x1)
    end
end
 %fprintfing the "the Final estimate of the integral", " The final number
 %of sections" , and " The final delta x value"
fprintf('The final estimate of the integral is: %0.4f\n',Sum1);
fprintf('The final number of sections: %i\n',t1-1);
fprintf ('The final delta x value is: %0.4f\n',deltax);   