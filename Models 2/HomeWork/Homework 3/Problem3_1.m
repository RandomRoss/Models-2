%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 3
%Problem 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc; 
commandwindow; 
WeP = input('Enter the weight of the original person:');
Dcop = input('Enter the dray coefficent of the original person:');
arP = input('Enter the area of the original person:');
altp = input('Enter the initial altitude of the original person:');
weH = input('Enter the weight of the hero:');
Dcoh = input('Enter the drag coefficent of the hero:');
arh = input('Enter the area of the hero:');
alth = input('Enter the initial altitude of the hero:');

%Terminal velocity of person 
r = 1.225;
t1 = 2*WeP; 
b1 = Dcop*r*arP;
v1 = sqrt(t1/b1);
%terminal velocity for hero
t2 = 2*weH;
b2 = Dcoh*r*arh;
v1 = sqrt(t2/b2);

ig = input('Enter your initial guess:');
toler = input('Enter your tolerance:');
a = 9.8;
f1 = -0.5*a*ig - v1*ig + (alth - altp);
f1_prime = -a*ig - v1;
i = 1;
while abs(f1) > toler
    ig(i+1) = ig(i) - f1/f1_prime;
    f1 = -0.5*ig(i+1) - v1;
    i = i + 1; 
end 
fprintf('The time it takes: %0.4f\n',ig(end))