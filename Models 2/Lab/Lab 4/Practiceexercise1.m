%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%5/31/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 4
%Part B
%Practice Exercise
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc; 
%latitude 1 vector 
lati1 = [39.132844 39.132662 39.132353 39.132076 39.132001 39.131964 0];
%longitude 1 vector 
long1 = [-84.516888 -84.516955 -84.516878 -84.516945 -84.517047 -84.517095 0];
%Distance
for k=2:length(lati1)
    dist(k) = Greatcircle(lati1(k-1), long1(k-1), lati1(k), long1(k));
    
end 
I = 0;
for k = 2:length(lati1)
    I(k) = dist(k) + I(k-1);
end
t = [0, 2, 4, 6, 8, 10];
%Velocity 2pt estimate
for k = 2:length(lati1)
    F2pt(k) = (I(k)- I(k-1))/(t(k)-t(k-1));
end
 %Velocity 3pt estimate
for k = 2:length(lati1)-1
    F3pt(k) = (I(k+1)- I(k-1))/(2*(t(k)-t(k-1)));
end
 
% Acceleration
for k = 2:length(t)-1
    Acc(k) = (I(k+1)- 2*I(k)+I(k-1))/((t(k)-t(k-1))^2);
end 
