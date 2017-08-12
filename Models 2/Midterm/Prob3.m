%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/28/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Midterm
%Part 2
%Problem 3 - Numeric Integration 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clean up 
clear all; 
clc; 
close all; 
%loading P3.mat 
load P3.mat
%plotting the force measurements verses position as data points 
plot(x,force)
title('Force Measurment')
xlabel('Position')
ylabel('Force measurements')
%calculating the right reimann sum 
deltax = x(1)-x(2);
Sum1 = 0;
for k = 2:length(x)
    areaRi(k) = deltax*(force(k));
    Sum1 = Sum1 + areaRi(k);
end
%calculating the trapezoidal sum 
Sum2 = 0;
for k = 2:length(x)
    areatrap(k) = ((force(k)+force(k-1)) / 2)*deltax;
    Sum2 = Sum2 + areatrap(k);
end
for k = 2:length(x)
   areatrap2(k) = areatrap(k) * -1 ;
end
for k = 2:length(x)
    areaRi2(k) = areaRi(k) * -1;
end
Sum2 = Sum2 * -1;
Sum1 = Sum1 * -1;
figure % creating a new figure 
plot(x,force,x,areaRi2,'r*',x,areatrap2,'b*') %plotting the data 
ylabel('Work done');
xlabel('Position');
title('Work done vs Position');
legend('Actual Work','Estimated Work Done with Trapezoidal','Estimate Work Done with Riemann','location','eastoutside')
fprintf('The estimated sum using Trapezoidal sum was: %0.3f \n',Sum1);
fprintf('The estimated sum using Riemann sum was: %0.3f \n',Sum2);