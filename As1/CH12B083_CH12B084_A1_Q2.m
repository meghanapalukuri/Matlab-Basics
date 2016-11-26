%% Program to calculate different properties of a matrix A
clc
clear all
close all

A=[-1.2953,0.0568,0.4407 ; -0.1935,-0.4862,0.1072; -0.5079,0.0363,-0.2185] % defining the matrix
Determinant=det(A) % Determinant of matrix
EigenVal=eig(A) % Returns eigen values of A stored in a matrix form
Rank=rank(A)% Rank of matrix
Ainv=inv(A) % Inverse of matrix
