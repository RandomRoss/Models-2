function [ dist ] = Greatcircle( lat1, lon1, lat2, lon2 )
%greatcircle function is calculating the distance between two points on a
%sphere using longitude and latitude
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/31/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 4
%Part A 
%Great Circle Equation Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


a = (sind((lat2 - lat1)/2))^2;
b = cosd(lat1) * cosd(lat2);
c = (sind((lon2 - lon1)/2))^2;
%combining the formula parts 
dist = 222240*asind(sqrt(a+b*c));

end

