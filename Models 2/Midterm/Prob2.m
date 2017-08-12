%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/28/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Midterm
%Part 2 
%Problem 2 - Numeric Differentiation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up 
clear all; 
clc; 
close all; 
RL = 1:1:1000; % A vector of values from 1 to 1000 incrementing by 1 
V = 12; %12 volts 
r = 525; % r  equals 525
for k = 1:length(RL) % for loop to store and calculate power for each resistance
    PL(k) = (V^2)*((RL(k))/(r + RL(k))^2); % calculating power 
end
%2pt estimate
for k = 1:length(PL) %for loop to determine 2pt estimate for power 
    P(k) = ((PL(k)+1) - (2*(PL(k))) + (PL(k)-1))/(1000^2); % 2pt estimate derivative 
end 
location = max(PL); % finding the location of the max power

plot(RL,PL,'b');
xlabel('Resistance(ohms)');
ylabel('Power(Watts)');
title('Power Curve');
fprintf('The Maximum Power given out is:%0.15f Watts \n',location);
fprintf('The Maximum resistance needed for max Power is:%i ohms \n',r);
% the maximum resistance of resistor load will reach its max when the resistance is the same as the resitacne of r 
% This is because of a power Theory 