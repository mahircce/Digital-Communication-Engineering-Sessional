clc; 
clear all; 
close all;
t = 0:0.001:1;
Am = 1; fm = 5; Ac = 2; fc = 50;


s = (Ac + Am * cos(2*pi*fm*t)) .* cos(2*pi*fc*t); 
plot(t, s, 'LineWidth', 1.2, 'Color', 'g');
xlabel('Time (t)'); 
ylabel('Amplitude');
title('AM Modulated Wave');
grid on;