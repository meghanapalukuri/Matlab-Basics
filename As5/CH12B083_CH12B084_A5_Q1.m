clc;
clear all;
close all;

[A,fval]=fminunc(@As5,[1 1 1]); %calculating minimum value of function defined in 'As5'
[A,fval];                       %initial values x=y=z=1
Fmin=fval                       %Fmin is the minimum value of function
A                               %Minima of the function is: x=A(1), y=A(2), z=A(3)
