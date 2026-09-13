clc; 
clear all; 
close all;
t = 0:0.001:1;          
Ac = 2;                 % Amplitude of carrier signal
fc = 50;                % Frequency of carrier signal (High frequency)

c = Ac * cos(2*pi*fc*t);
plot(t, c, 'LineWidth', 1.2, 'Color', 'r');
xlabel('Time (t)'); ylabel('Amplitude');
title(' Carrier Signal');
grid on;