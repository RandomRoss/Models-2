%Jared Ross 
%5/18/2017
%Models II
%Mirroring a point across a line 
x1 = input('Enter the x-coordinate of the original point:');
y1 = input('Enter the y-coordinate of the original point:');
m1 = input('Enter the slope of the original line:');
b1 = input('Enter the y-intercept of the original line:');

m2 =(-1/m1); %finding the new slope 
b2 = -m2 * x1 + y1; %finding the yint of line 

[x,y] = Intersection( m1,b1,m2,b2 );

dx = x - x1; %finding distance between 
dy = y - y1; %finding distance between 
xref = x + dx; %finding reflection of line  
yref = y + dy; % finding reflection of line 

fprintf('The reflected point is: (%0.2f', xref); % outputing the points of the reflected line
fprintf(',%0.2f)\n', yref); %putting the outout of reflected line in (x,y) showing the x and y poins  