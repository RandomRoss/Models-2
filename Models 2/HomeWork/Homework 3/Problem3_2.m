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
Wp = input('Enter the weight of the original person:');
Cdp = input('Enter the drag coefficent of the original person:');
Ap = input('Enter the area of the original person:');
Alp = input('Enter the inital altitude of the original person:');
Wh = input('Enter the weight of the hero:');
Cdh = input('Enter the drag coefficent of the hero:');
Ah = input('Enter the area of the hero:');
Alh = input('Enter the inital altitude of the hero:');

% Terminal Velocity for Person
t =  1.225;
t1 = 2*Wp;
b1 = Cdp*t*Ap;
v1 = sqrt(t1/b1);
% Terminal Velocity for Hero
t =  1.225;
t2 = 2*Wh;
b2 = Cdh*t*Ah;
v2 = sqrt(t2/b2);
x = input('Enter your initial guess:');
a = 9.8;
tol = 0.001;
f = 1;
while abs(f) > tol
 f = (-(1/2) * a * (x)^2 + Alh) + (v1 * x - Alp);
 f_prime = - a * x + v1;
 x = x  -(f/f_prime);
end
finalalt = (-(1/2) * a * x^2 +Alh);
altp = (-v1 * x + Alp);
fvh = a * x;
if finalalt > 0 && fvh < v2
    fprintf('Possible \n');
    fprintf('The altitide when reached is %0.4f m\n',finalalt);
elseif finalalt < 0
    fprintf('Not Possible\n');
elseif fvh > v2
    if v2 < v1
        fprintf('Not Possible\n');
    else 
        Htt = v2/a;
        altp = (-v1 * Htt + Alp);
        f2 = (-(1/2) * a * (Htt)^2 + Alh);
        Ctt = (altp - f2) / (-v2 + v1);
        finalalt = -v2 * Ctt + f2;
        if finalalt < 0 
            fprintf('Not Possible\n');
        elseif finalalt > 0 
            fprintf('Possible\n');
              fprintf('The altitide when reached is %0.4f m\n',finalalt);
        end 
    end
end


            