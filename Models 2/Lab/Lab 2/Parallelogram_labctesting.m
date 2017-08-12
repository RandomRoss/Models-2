clear; clc;



x1 = input('&#39;Enter the x coordinate for point 1: &#39;');

y1 = input('&#39;Enter the y coordinate for point 1: &#39;');

x2 = input('&#39;Enter the x coordinate for point 2: &#39;');

y2 = input('Enter the y coordinate for point 2:');

x3 = input('Enter the x coordinate for point 3:');

y3 = input('Enter the y coordinate for point 3: ');

x4 = input('Enter the x coordinate for point 4: ');

y4 = input('Enter the y coordinate for point 4: ');

m1 = (y2 - y1)/(x2 - x1);

m2 = (y4 - y3)/(x4 - x3);

b1 = y1 - m1*x1;

b2 = y3 -m2*x2;

[ x, y ] = Intersection( m1, b1, m2, b2 )

if x == Inf

top = 1;

else

top = 0;

end

m1 = (y3 - y2)/(x3 - x2);

m2 = (y4 - y1)/(x4 - x1);

b1 = y2 - m1*x1;

b2 = y4 -m2*x2;

[ x, y ] = Intersection( m1, b1, m2, b2 )

if x == Inf

sides = 1;

else

sides = 0;

end

if top == 1 && sides == 1

fprintf('Parrallelogram = Yes')

else

error('Parrallelogram = No')

end

m1 = (y3 - y1)/(x3 - x1);

m2 = (y4 - y2)/(x4 - x2);

b1 = y1 - m1*x1;

b2 = y2 -m2*x2;

[ x, y ] = Intersection( m1, b1, m2, b2 )