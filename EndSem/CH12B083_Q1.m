%% Q1

clear all
close all
clc

% x = [x1;x2]
% Following Constraint equations are written in the form of Ax<=b
% -x1+2x2<=4
% x1+x2<=5
% x1<=3
% -x2<=0
% -x1<=0

A= [ -1 2 ; 1 1 ; 1 0; 0 -1 ;-1 0]
b=[4;5;3;0;0]

x0=[ 0 0 ]; % Initial guess value for x1 and x2 taken 0 0 

[x,fval] = fmincon(@fun,x0,A,b)
x1=x(1)
x2=x(2)


