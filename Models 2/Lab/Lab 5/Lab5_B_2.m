%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/07/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 5
%Part B
%Estimated Roots Using Newton Raphson
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc; 
commandwindow; 
%prompting the user to enter in values
N = input('Enter a number:');
prt = input('Enter the power of the root:');
Toler = input('Enter a tolerance/accuracy:');
g = input('Enter an initial guess:');
f1 = (g^prt) - N;
f1_prime  = prt * g^(prt - 1);
i = 1;

while abs(f1) > 10^-Toler && i <= 100
    f1_prime = prt * g(i)^(prt -1);
    if f1_prime == 0
        g(i) = g(i) + 0.01;
        f1_prime = prt * g(i)^(prt - 1);
    end
    g(i+1) = g(i) - f1/f1_prime;
    i = i + 1;
    f1 = (g(i)^prt)- N;
end 
if i == 101 
    g = [];
end 
% displaying final estimate and iterations that it took to find the final
% estimate or when the tolerance was enough to through it out of the loop
if i <=100
fprintf('The final estimate is %0.12f\n',g(end));
fprintf('The number of iterations is %i\n',i-1);
plot(1:i, g)
title('Estimated Roots');
xlabel('Number of iterations');
ylabel('Estimate');
else
    fprintf('The final estimate is:[]\n');
    fprintf('The number of iterations is:%i\n',i-1);
end 

