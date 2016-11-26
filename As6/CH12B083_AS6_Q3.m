%% Problem 3 : Program to solve ODE
%% d2m/dx2 + m =0

clc
clear all
close all

[X,M] = ode15s(@diff3,[0 3.142],[2 3]) % x values range from 0 to 3.1412
% M(1) : m , M(2) : dm/dx
% m(0)=2 , dm/dx(0)= 3

plot(X,M(:,1)) % plotting x vs m
xlabel('x');
ylabel('m(x)');
