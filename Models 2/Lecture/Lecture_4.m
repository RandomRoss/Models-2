% Lecture 4 
% 5/30/2017
clear all; close all; clc; commandwindow;

%initial data 
t = 0:0.5:3;
p = [0 1 3 4 5 4.5 4]; 
dt = 0.5;
%forward 2pt estimate 
for k =1:length(t)-1
    F2pt(k) = (p(k+1) - p(k))/dt;
    
end 