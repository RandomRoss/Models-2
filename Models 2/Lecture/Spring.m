function [ Keq, x1, x2 ] = Spring( K1, K2, F )
%this function will calculate the equivalent spring constant and the
%displacements of two springs that are connected in series system 

Keq = 1/((1/K1)+(1/K2));

x1 = F/K1;
x2 = F/K2;


end

