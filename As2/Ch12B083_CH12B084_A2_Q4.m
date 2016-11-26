%% Program to create the given matrix of n+1*n+1 dimensions and to calculate number of elements greater than an input number in the matrix.
clc
clear all
close all
%% Creating the given matrix M with parameter n

n=input('Enter value of n. ');
for j=1:n+1
    
    for i=1:n+1
    M(j,i)=n+j-i; % An element in this matrix is given by n+j-i, where i j is row number and i is column number.
    end
    
end

M
%% Finding number of elements greater than an input number

x=input('Enter x to find number of elements in the matrix strictly greater than x. ');
count = findnum(M,x,n) % Function to find number of elements greater than x in M


