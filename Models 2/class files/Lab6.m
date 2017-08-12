function [ HIC_Curve, HIC_value, Aestimate ] = Lab6( a, t, d )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


HIC_Curve = zeros(1,length(t));
dt = t(2) - t(1);
Aestimate = zeros(1,length(t));
for r = 2:length(t)-d/dt
    for k = r:(r+d/dt)
        AT(k) = (a(k)+a(k-1))/2*dt;
    end
    Aestimate(r) = sum(AT);
    AT = 0;
    HIC_Curve(r) = (d/1000) * ((1/d) * Aestimate(r))^2.5;
end
HIC_value = max(HIC_Curve);
end

