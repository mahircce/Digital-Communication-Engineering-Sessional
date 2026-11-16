clear all;
clc;
S=1100;
CS=100;
CC=0:10:100;
CCH=500;
COSS=(S*CS)+CC+CCH;
subplot(3,1,1);
plot(CC,COSS)
title('CC vs COSS Waveform');
xlabel('CC')
ylabel('COSS')
grid on;

CS1=10:10:100;
CC1=10;
CCH1=1000;
COSS1=(S*CS1)+CC1+CCH1;
subplot(3,1,2);
plot(CS1,COSS1)
title('CS1 vs COSS1 Waveform');
xlabel('CS1')
ylabel('COSS1')
grid on;
hold on;

CC=10;
CCH2 = 0:1:1000;
COSS3 = (S*CS)+CC1+CCH2;
subplot(3,1,3);
plot(CCH2,COSS3)
title('CCH2 vs COSS3 Waveform');
xlabel('CCH2')
ylabel('COSS3')
grid on;
hold on;
