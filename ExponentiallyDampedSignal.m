clc; 
clear all; 
close all;
t = 0:0.01:5;  


y = exp(-t) .* cos(2*pi*t);
plot(t, y, 'LineWidth', 1.5, 'Color', 'm');
xlabel('Time (t)'); ylabel('Amplitude');
title('4) Exponentially Damped Signal');
grid on;