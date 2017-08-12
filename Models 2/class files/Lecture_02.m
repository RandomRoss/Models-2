%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lecture 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% example 1

A = [2 3; 3 1];
b = [-8;9];

if det(A) ~= 0
    % i can solve it!
    x = inv(A)*b;
    fprintf('x = %0.2f\n',x(1));
    fprintf('y = %0.2f\n',x(2));
else
    % i cannot solve it :(
    fprintf('There is no solution\n');
end

%% example 2

A = [1 2 -5; 3 1 4; 1 2 -1];
b = [-8;9;0];

if det(A) ~= 0
    % i can solve it!
    x = inv(A)*b;
    fprintf('x = %0.2f\n',x(1));
    fprintf('y = %0.2f\n',x(2));
    fprintf('z = %0.2f\n',x(3));
else
    % i cannot solve it :(
    fprintf('There is no solution\n');
end

%% example 4

A = [10 20 20; 50 40 10; 30 10 40];
b = [100;300;200];

if det(A) ~= 0
    % i can solve it!
    x = inv(A)*b;
    fprintf('Food 1 = %0.2f servings\n',x(1));
    fprintf('Food 2 = %0.2f servings\n',x(2));
    fprintf('Food 3 = %0.2f servings\n',x(3));
else
    % i cannot solve it :(
    fprintf('There is no food!\n');
end