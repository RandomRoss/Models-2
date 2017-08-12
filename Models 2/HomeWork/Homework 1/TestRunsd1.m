A = input('What is the value of Frequency factor(A): ');
Ea = input('What is the Value of Activation Energy(Ea): ');
T = input('What is the Value of Temperature(T): ');
Co = input('What is the Value of Initial Concentration: ');
Reaction(A,Ea,T,Co)
k = zeros(1,100);
for k = 1:1:100
dtime(k) = Reaction(A,Ea,T,Co);

end 
dti = linspace(0,100,100);
fprintf ('Decomposition Time for Hydrogen Peroxide based on the user provided inputs would be:',dtime)
AnimatedPlot(dti,dtime,0.1 ,'Time ,s','Decomposition,M','Decomposition Time for Hydrogen Peroxide')
