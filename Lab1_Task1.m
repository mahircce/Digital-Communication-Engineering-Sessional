clc
clear all
close all
%E241001
t1=1:0.4:30;
f=70;
fs1=350;
fs2=530;
fs3=800;
X=sin(2*pi*f*t1/f);
subplot(4,1,1);
plot(t1,X);
xlabel('Time');
ylabel('Amplitude');
title('Continuous sin wave');

Y=sin(2*pi*f*t1/fs1);
subplot(4,1,2);
stem(t1,Y);
xlabel('Time');
ylabel('Amplitude');
title('Sin wave smapled at 350');

Y=sin(2*pi*f*t1/fs2);
subplot(4,1,3);
stem(t1,Y);
xlabel('Time');
ylabel('Amplitude');
title('Sin wave smapled at 530');

Y=sin(2*pi*f*t1/fs3);
subplot(4,1,4);
stem(t1,Y);
xlabel('Time');
ylabel('Amplitude');
title('Sin wave smapled at 800');