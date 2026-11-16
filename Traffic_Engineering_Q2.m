clear all;
clc;
TD=100;
OD = 30;
NOSR = 1:5:50;
TCPS = OD/TD;
TTC = NOSR*TCPS;
subplot(2,2,1);
plot(NOSR, TTC,'-*black')
title('NOSR vs TI Waveform');
xlabel('NOSR')
ylabel('TTC')
hold on;
grid on;

OD1 = 1:5:50;
TD1 = 100;
NOSR1 = 20;
TCPS1 = OD1/TD1;
TTC1 = NOSR1*TCPS1;
subplot(2,2,2);
plot(OD1,TTC1,'*black')
title('OD1 vs TTC1 waveform');
xlabel('OD1')
ylabel('TTC1')
grid on;
hold on;
