function [ ReactionRate,DecompositionTime ] = Reaction(A,Ea,T,Co)
%The function should calculate the reaction rate (k) and decomposition time (5/k) using the input arguments and Arrhenius’ Equation.  
%finding reaction rate and decompositiontime  
%Chemical Reaction Rate 
% R = ideal gas constant that equals 8.314
 R = 8.314;
 k = A*exp(-Ea/(R*T));
 dt = 5/k;
 
 ReactionRate = k;
 DecompositionTime = dt;

end


