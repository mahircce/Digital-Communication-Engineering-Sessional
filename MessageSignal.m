clc; 
clear all; 
close all;
t = 0:0.001:1;          % Time vector
Am = 1;                 % Amplitude of message signal
fm = 5;                 % Frequency of message signal

m = Am * cos(2*pi*fm*t);
plot(t, m, 'LineWidth', 1.5);
xlabel('Time (t)'); 
ylabel('Amplitude');
title('Message Signal');
grid on;