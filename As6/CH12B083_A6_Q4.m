clc
clear all
close all
%% CH12B014_A6_Q4
d0 = [15 15 15];% Intial guess for d0 in mm
A = [];
b = [];
Aeq = [];
beq = [];
for i = 1:1:3
    lb(i) = 0;% The lower bound and the upper bound
    ub(i) = Inf;
end
d = fmincon(@costfun,d0,A,b,Aeq,beq,lb,ub,@costcond)