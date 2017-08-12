
%% Airbag
clear;
clc;

load Crash_Data2
d = 20:10:70;
for k = 1:length(d)
    [ HIC_Curve(k,:), HIC_value(k), Aestimate(k,:) ] = Lab6( a, t, d(k) )

end
f = max(HIC_value);
fprintf('The max HIC Value is %0.6f \n',f);
plot(t, HIC_Curve)
xlabel('Time (ms)');
ylabel('HIC');
title('HIC vs Time');
legend('d20','d30','d40','d50','d60','d70');







