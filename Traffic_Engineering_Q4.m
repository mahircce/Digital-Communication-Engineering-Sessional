clear all;
clc;
K=1:10:100;
TST=0.0001;
KO=0;
TS=(TST*K)+KO;
subplot(2,1,1);
plot(K,TST,'*black')
title('K vs TST Waveform');
xlabel('K')
ylabel('TST')
hold on;

K1=10;
TS1=100:100:1000;
KO1=0.00001;
TST1=(TS1-KO1)/K1;
subplot(2,1,2);
plot(TS1,TST1)
title('TS1 vs TST1 Waveform');
xlabel('TS1')
ylabel('TST1')
hold on;
