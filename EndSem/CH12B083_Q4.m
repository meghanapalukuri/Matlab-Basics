%% Q4

clc
clear all
close all

global V k1 k2 v cAin cBin cCin cDin 
V=100;
k1=1;
k2=1;
v=1;
cAin=1;
cBin=2;
cCin=0;
cDin=0;

C=[ cAin cBin cCin cDin ];

[t,c]=ode15s(@cstr,[0 10],C)

plot(t,c)
xlabel('time')
ylabel('conc')
legend('A','B','C','D')