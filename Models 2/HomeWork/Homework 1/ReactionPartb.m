clear all; 
clc
% clearing workspace 

Ea = 7.5  * 10^4;
A = 10^11; %using/setting A = 10^11 Hz and Ea = 7.5*104 J/mol for the other parameters

i = 1; %i is a counter 
for T = 300:5:350  %setting T = to 300 and incrementing by 5 till it reaches 350 
    for Co = 8:1:12
        [k(i), t(i)] = Reaction(A,Ea,T,Co)
        i = i + 1; % increasing i or the counter by 1 
    end 
  end 