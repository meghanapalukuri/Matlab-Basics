%%Problem 2
%program to solve two equations in two variables
clc;
close all;
clear all;

X=[1,1];              %using initial values of (x,y)=(1,1)
a=fsolve(@Fun2,X);    %Solving two equations defined in Fun2 to obtain the solution
x = a(1)              %Final value of x
y = a(2)              %Final value of y