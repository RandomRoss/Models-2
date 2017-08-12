%Lecture 6
%Riemann Sums 
%riemann sums use rectangles to approximate the area under the curve 
%Left Riemann sums: height of the rectangle is determined by the left point
%of the interval
%Right Riemann sums: height of the rectangle is determined by the right
%point of the interval

%Dt =0.5 
%because going to 2 seconds there would be 4 rectangles 
%sum of all rectangles 
%A1+A2+....+An
%1(0.5)+3(0.5)+4(0.5)+5(0.5)=6.5
%use the left and right riemann sums to estimate the intergral of the data
%shown below. 
%   t      D
%   0.0    1.0
clear all;
close all;
clc; 
commandwindow; 

t = 0:0.5:2;
D = [1.0 1.6 2.7 4.5 7.4];
dt = t(2) - t(1);

%left Riemann Sum
for k= 1:length(t)-1
    AL(k) = D(k)*dt;
end 
LREstiamte = sum(AL);
% right Riemann Sum
for k = 2:length(t)
    AR(k) = D(k)*dt;
end 

RREstimat = sum(AR);

% trapezoid Sum 
% This way is more acurate than the Riemann sum
% example of what code would look like when ran
% trapizoidal Sum
for k = 2:length(t)
    AT(k) = (D(k)+D(k-1))/2*dt;     
end 
TEstimate = sum(AT);

%piston.m
%Crankshaft
