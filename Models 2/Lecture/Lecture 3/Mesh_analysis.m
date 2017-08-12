% Lecture 3 
% Circuit Analysis 

A = [3.2 -2.2 0; -2.2 11.1 -3.3; 0 -3.3 8];
b = [9;0;-6];

D = det(A);

if D == 0 
    fprintf('No solution\n');
else 
    I = inv(A)*b;
    fprintf('I1 = %0.4 mA\n',I(1));
    fprintf('I2 = %0.4 mA\n',I(2));
    fprintf('I3 = %0.4 mA\n',I(3));
end