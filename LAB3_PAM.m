clc;
close all;
clear all;
%E241001

a = input('Enter the amplitude = ');
f = input('Enter the frequency = ');
disp('E241001')
t = 0:0.02:2; 
x1 = 1; 
x2 = a*sin(2*pi*f*t); 
y = x1.*x2;
subplot(3,1,1); 
stem(x1);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude ');
subplot(3,1,2)
plot(t,x2);
title('Sine Wave');
xlabel('Time ');
ylabel('Amplitude ');
subplot(3,1,3) 
stem(t,y);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');