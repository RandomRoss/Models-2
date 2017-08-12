%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/31/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 4
%Part A 
%Great Circle Equation Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc;
%inputing the values of lat and lon 1,2 
lat1 = input('what is the first Latitude cordinate: ');
lon1 = input('what is the first Longitude cordinate: ');
lat2 = input('what is the second Latitude cordinate: ');
lon2 = input('what is the second Longitude cordinate: ');
%breaking the formula up into parts

a = (sind((lat2 - lat1)/2))^2;
b = cosd(lat1) * cosd(lat2);
c = (sind((lon2 - lon1)/2))^2;
%combining the formula parts 
dist = 222240*asind(sqrt(a+b*c));
%outputing the totals 
fprintf('The Distance is: %0.6f m \n', dist);