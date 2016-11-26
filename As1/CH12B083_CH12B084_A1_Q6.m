%% Program to solve linear equations
clc
clear all
close all

A = [2,-1,5,1; 3,2,2,-6 ; 1,3,3,-1 ;5,-2,-3,3 ] % Coefficient matrix
B=[-3;-32;-47;49] % AX=B

X1=inv(A)*B % Calculating X using inverse of A
X2=A\B      % Calculating X using backslash


