clc
clear all
close all
n = [0 1 0 1 1 0];
N = length(n);
fs = 1000 * N;
t = 0:1/fs:N;
N1 = length(t);
i = 1;
for j=1:N1
if t(j)<=i
x(j)=n(i);
else
i = i+1;
end
end
figure(1);
subplot(3, 2, 1);
plot(t, x, 'Linewidth', 2);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
a = 2;
f1 = 10;
f2 = 5;
x1 = a*sin(2*pi*f1*t);
subplot(3, 2, 2);
plot(t, x1);
title('1st carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
x2 = a*sin(2*pi*f2*t);
subplot(3, 2, 3);
plot(t, x2);
title('2nd carrier Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
for j=1:N1
if x(j)==1
y1(j)=x1(j);
else
y1(j)=x2(j);
end
end
subplot(3, 2, 4);
plot(t, y1);
title('Modulated FSK Output');
xlabel('Time');
ylabel('Amplitude');
grid on;
for j=1:N1
if y1(j)==x1(j)
y2(j)=1;
else
y2(j)=0;
end
end
subplot(3, 2, 5);
plot(t, y2);
title('Modulated FSK Output');
xlabel('Time');
ylabel('Amplitude');
grid on;
