% Lecture 3%
clear all; close all; clc; comandwindow;

A = [cosd(138.6) cosd(46.6); sind(138.6) sind(45.6)];
b = [0;500];

D = det(A); 

if D == 0
    fprintf('No solution, death ensues\n');
else 
    F = inv(A)*b;
    fprintf ('F1 = %0.4f lbs \n');