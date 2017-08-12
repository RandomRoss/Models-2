function [ x,y ] = Intersection( m1,b1,m2,b2 )
%Function that is finding the intersection of lines 
%Jared Ross
%5/17/2017
%Lab 2 
%   A is inputing slope = m and b that = intercept
A = [-m1 1; -m2 1];
B = [b1; b2];


 
if det(A) ~= 0
    xval = inv(A)*B;
    x = xval(1);
    y = xval(2);
   fprintf('x= %0.2f\n',x);
   fprintf('x= %0.2f\n',y);
else
   fprintf('x= Inf\n');
   fprintf('y= Inf\n');
   x = Inf;
   y = Inf;
end


end

