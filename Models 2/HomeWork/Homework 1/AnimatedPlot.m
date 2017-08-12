function [ ] = AnimatedPlot( t,y,Time,xa,YV,titless)
%Makeing an animated plot gives graphs a point and moves to the next output
%to make  a graph that moves 
%   function labels and titles the x and y axis 
%   gives y and x limits 
% uses hold on and hold off to graph the inputs in a for loop 

xlabel(xa);ylabel(YV);
xlim([min(t),max(t)]);
ylim([min(t),max(t*2)]);
xMin = min(t);
xMax = max(t);
title(titless);
hold on
for k = 1:length(t)-1
    figure(1)
    plot(t(k),y(k),'s') 
    hold on 
    pause(Time);
    
    
end
end 
