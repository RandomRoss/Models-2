function [ Keq, x1, x2 ] = Summer( K1, K2, F )
% this function will compute the equivalent spring constant and
% displacements for a series spring system

% compute equivalent spring constant
Keq = 1/((1/K1)+(1/K2));

% compute displacements for each spring
x1 = F/K1;
x2 = F/K2;

end

% NOTES:
% - in order for the function to operate correctly, the variable names used
%   within the function must match the names of the variables defined in
%   the function header
% - when calling the function, you do not need to use the same variable
%   names as those defined in the function header because the variables in
%   the function header are specific to the function and those in the
%   function call are specific to the general command window/script file
% - I think I forgot to mention this in class, but function names need to
%   follow the same conventions as variables --> may only contain numbers,
%   letters, or underscores "_" and must start with a letter or underscore