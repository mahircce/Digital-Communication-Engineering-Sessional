clc; 
clear all; 
close all;
voltage_ratio = 0.1:0.1:10; 

snr_db = 20 * log10(voltage_ratio);
plot(voltage_ratio, snr_db, 'LineWidth', 1.5, 'Color', 'k');
xlabel('Voltage Ratio (Vs/Vn)'); ylabel('SNR (dB)');
title('5) SNR_{dB} vs Voltage Ratio');
grid on;