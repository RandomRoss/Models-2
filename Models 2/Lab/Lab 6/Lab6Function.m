function [ HIC_Curve, HIC_Value] = Lab6Function( a, t, d )
%Calculating HIC Curve and the HIC Value 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Jared Ross
%6/14/2017
%Models II
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 6
%Part B
%function for HIC_Value and HIC_Curve
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HIC_Curve = zeros(1,length(t));
dt = t(2) - t(1);
Aestimate = zeros(1,length(t));
for i = 2:length(t)-d/dt
    for k = i: (i+d/dt)
        ATime(k) = (a(k)+a(k-1))/ 2 * dt;
    end 
        Aestimate(i) = sum(ATime);
        ATime = 0; 
        HIC_Curve(i) = (d/1000) * ((1/d) * Aestimate(i))^2.5;
end 
    HIC_Value = max(HIC_Curve);
end

