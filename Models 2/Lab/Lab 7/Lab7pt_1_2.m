%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/21/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 7
%Part C
%Lab07_Data1.mat 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up
clear all;
close all;
clc; 
commandwindow;
%loading Lab07_Data1.mat 
load Lab07_Data1.mat 
%work/code for Lab07_Data1.mat
dt = 0.1;
x = -4:dt:4;
yt = sqrt(25*(1-x.^2/16));
yb = 3 - sqrt(25-x.^2);
area = 0;
for k = 1:length(x)
    y1 = yt(k) – yb(k);
    y2 = yt(k-1) – yb(k-1);
    area = area + (y1+y2)/2*dt;
end
