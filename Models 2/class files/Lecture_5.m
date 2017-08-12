%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lecture 5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clean up
clear all; close all; clc; commandwindow;

% ask user for initial guess and tolerance
x = input('Please enter your initial guess for a root of the equation: ');
tol = input('Please enter your tolerance: ');   % tolerance is the actual tolerance value

% compute values for function and derivative based on initial guess
f = x^3 - 3*x^2 - 10*x + 24;
f_prime = 3*x^2 - 6*x - 10;

% set current count to 1
n = 1;

% begin Newton Raphson
while abs(f) > tol                              % continue to repeat while the function is not close enough to 0
    x(n+1) = x(n) - f/f_prime;                  % update the guess using Newton Raphson
    f = x(n+1)^3 - 3*x(n+1)^2 - 10*x(n+1) + 24; % compute value of function with new guess
    f_prime = 3*x(n+1)^2 - 6*x(n+1) - 10;       % compute value of derivative with new guess
    n = n + 1;                                  % increment count
end

% display results
fprintf('The estimate of the root is %0.4f\n',x(end));
fprintf('The number of iterations required is %i\n',n-1);