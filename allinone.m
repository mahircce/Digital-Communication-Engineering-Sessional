clc; clear all; close all;

% ???????????????
t = 0:0.001:1;
Am = 1; fm = 5; 
Ac = 2; fc = 50;
t_damp = 0:0.01:5;
v_ratio = 0.1:0.1:10;

% ??????????
m = Am * cos(2*pi*fm*t);
c = Ac * cos(2*pi*fc*t);
s = (Ac + Am * cos(2*pi*fm*t)) .* cos(2*pi*fc*t);
y = exp(-t_damp) .* cos(2*pi*t_damp);
snr = 20 * log10(v_ratio);

% ??????? ???? (? ????, ? ????)
subplot(3,2,1);
plot(t, m); title('Message Signal'); grid on;

subplot(3,2,2);
plot(t, c); title('Carrier Signal'); grid on;

subplot(3,2,3);
plot(t, s); title('AM Modulated Wave'); grid on;

subplot(3,2,4);
plot(t_damp, y); title('Exponentially Damped Signal'); grid on;

subplot(3,2,5);
plot(v_ratio, snr); title('SNR_{dB}'); xlabel('Vs/Vn'); grid on;