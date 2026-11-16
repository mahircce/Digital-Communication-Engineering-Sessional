hte=150
%height of transmitting base station antenna in meters
hre=10
%height of receiving antenna of mobile station in meters
sdA=3
%standard deviation of noise for Base station A
sdB=5
%standard deviation of noise for Base station B
noiseA=sdA*randn(1,50);
noiseB=sdB*randn(1,50);
disp('Handoff Performance || E241001')
fc=input('Enter the input frequency= ');
for d=1:50
% path loss calculation Between Mobile & Base station A
LA(d)=(69.55+26.6*log10(fc))-(13.82*log10(hte))-((1.11*log10(fc)-0.7)*(10)+(1.56*log10(fc)-0.8))+((44.9-6.55*log10(hte))*log10(d));
%path loss calculation Between Mobile & Base station B
LB(d)=(69.55+26.6*log10(fc))-(13.82*log10(hte))-((1.11*log10(fc)-0.7)*(10)+(1.56*log10(fc)-0.8))+((44.9-6.55*log10(hte))*log10(51-(d)));
% path loss calculation for free space model
LF(d)=32.4+20*log10(fc)+20*log10(d);
% Received power at A without noise
SrA(d)=60-LA(d);
% Received power at B without noise
SrB(d)=60-LB(d);
% Received power at A with Gaussian noise sd = 3
PrA(d)=60-LA(d)+noiseA(d);
% Received power at B with Gaussian noise sd = 5
PrB(d)=60-LB(d)+noiseB(d);
end
figure(1)
subplot(2,1,1);
plot (PrA);
hold on
plot (PrB,'m');
axis([0 50 -110 -50]);
xlabel('distance');
ylabel('signal strength')
grid
subplot(2,1,2);
plot(SrA);
hold on
plot(SrB,'m');
axis([0 50 -110 -50]);
xlabel('distance');
ylabel('signal strength')
grid
figure(2)
plot(LA);
hold on
plot(LF);
xlabel('distance');
ylabel('signal strength')