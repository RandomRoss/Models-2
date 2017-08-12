%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lecture 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clean up
clear all; close all; clc; commandwindow;

% initial data
t = 0:0.5:3;
p = [0 1 3 4 5 4.5 4];
dt = 0.5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NOTE: for each of the examples below, a change of index in the vector of
% 1 corresponds to a change in time of dt.  In this example, the time
% vector t is as follows:
% 
% t:     0.0 0.5 1.0 1.5 2.0 2.5 3.0
% index:  1   2   3   4   5   6   7
% 
% From this we can see that a change in index of 1 corresponds to a change
% in our dt of 0.5 in actual time.  Therefore, since we are not in MATLAB
% and dealing with vectors instead of functions of time, we should not
% treat and dt used to evaluate a function as a change in index of 1.  We
% still use the actual value of dt when dividing in the estimate formulas.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% forward 2pt estimate
for k = 1:length(t)-1
    F2pt(k) = (p(k+1) - p(k))/dt;
end
% Description: since the forward two point estimate requires the current
% point (f(to)) and one point in the future (f(to + dt)), we start the loop
% at 1 and stop one before the last entry in the vector; otherwise, we 
% would end up with an out of bounds error
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% reverse 2pt estimate
for k = 2:length(t)
    R2pt(k) = (p(k) - p(k-1))/dt;
end
% Description: since the reverse two point estimate requires the current
% point (f(to)) and one point in the past (f(to - dt)), we start the loop
% at 2 and stop at the last entry in the vector; if we started at 1, we 
% would end up with an out of bounds error
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3pt estimate
for k = 2:length(t)-1
    E3pt(k) = (p(k+1) - p(k-1))/(2*dt);
end
% Description: since the three point estimate requires both a point in the
% past (f(to - dt)) and a point in the future (f(to + dt)), we start the 
% loop at 2 and stop one before the last entry in the vector; otherwise, we
% would end up with an out of bounds error
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2nd derivative
for k = 2:length(t)-1
    E2nd(k) = (p(k+1) - 2*p(k) + p(k-1))/(dt^2);
end
% Description: the loop is set up the same way for the 2nd derivative
% estimates as it is for the 3pt estimate, since both require a point in
% the past and in the future.
