%% Problem 1
clc;
clear all;
close all;

[t,Y] = ode15s(@funode,[0:0.1:20],[1 0]); %solving diff equations defined in function funode
[t,Y]                                     %from results we can see the steady state occurs at

plot(t,Y)                                 %ploting y1 & y2 Vs temp(t)