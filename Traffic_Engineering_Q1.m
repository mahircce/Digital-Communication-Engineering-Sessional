clc;
clear all;
TNS = 1000;
BHCA = 10:1000:10000;
CCR = 0.6;
ABHC = BHCA * CCR;
BHCR = ABHC/TNS;
subplot(2,2,1);
plot(BHCA,BHCR,'-*black')
title('BHCA vs BHCR Waveform');
xlabel('BHCA')
ylabel('BHCR')
grid on;

TNS1 = 1:100:1000;
BHCA1 = 10000;
CCR1 = 0.6;
ABHC1 = BHCA1 * CCR1;
BHCR = ABHC1/TNS;
subplot(2,2,2);
plot(TNS1,BHCR,'-*black')
title('TNS1 vs BHCR Waveform');
xlabel('TNS1')
ylabel('BHCR')
grid on;

TNS2 = 1000;
BHCA2 = 30000;
CCR2 = 0.01:0.1:1;
ABHC2 = BHCA2 * CCR2;
BHCR2 = ABHC2/TNS2;
subplot(2,2,3);
plot(CCR2,BHCR2,'-*black')
title('TNS2 vs BHCR2 Waveform');
xlabel('TNS2')
ylabel('BHCR2')
grid on;
hold on;
