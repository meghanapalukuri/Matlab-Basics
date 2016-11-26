%% Problem 3
% Program to find temperature of 3 tanks in series for heating oil using
% steam

clear all
close all
clc

global M C UA Tst T0 W

M=1000;
T0=20;
Tst=250;
W=100; % in kg/min
C=2 ; % in KJ/kg
UA=10;


[T,Y] = ode15s(@diff2,[0 100],[20 20 20])
hold on

figure(1)
xlabel('Time');
ylabel('Temperature');
plot(T,Y(:,1),'r');
plot(T,Y(:,2),'b');
plot(T,Y(:,3),'k');
 hold off
