clc;
close all;
clear all;

% Inputs
a = 5; % Amplitude from Simulink
f_rad = 1; % Frequency in rad/sec from Simulink
f_hz = f_rad / (2*pi); % Convert to Hz for the sine function

% 1. Time vector (matching Simulink's 10 seconds)
t = 0:0.01:10; 

% 2. Message Signal (Sine Wave)
x2 = a * sin(2*pi * f_hz * t); 

% 3. Carrier Signal (Pulse Train)
% Generating a 1 Hz pulse wave with a 20% duty cycle, shifted to 0 and 1
pulse_freq = 1; 
x1 = (square(2*pi * pulse_freq * t, 20) + 1) / 2; 

% 4. Modulated Signal (PAM Wave)
y = x1 .* x2; 

% Plotting
subplot(3,1,1); 
plot(t, x1, 'LineWidth', 1.5);
axis([0 10 -0.5 1.5]);
title('Pulse Train (Carrier)');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2) 
plot(t, x2, 'LineWidth', 1.5);
title('Message Signal (Sine Wave)');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3) 
plot(t, y, 'LineWidth', 1.5);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');