%% Problem 2
% Solving using Newton Raphson method and comparing with true solution

clc
clear all
close all


x=0.05; % Initial value of x

xold=0;

while ((x-xold)>0.001) % Stopping criteria - error is 0.001
xold=x;                % Storing value of previous x in variable xold, so that it can be used for checking stopping criteria 
syms x                 % Converting to variable form
y=(x^3)-0.165*(x^2)+3.993*10^(-4);

dy=diff(y,x);          % Derivative of f
x=xold;                % x is assigned back its value.
x=x-eval(y)/eval(dy);  % new x value

end

x

