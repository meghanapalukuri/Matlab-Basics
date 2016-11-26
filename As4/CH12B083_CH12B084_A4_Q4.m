clc;
clear all;
close all;
A=zeros(51,51);
A(1,1)=1;
A(51,51)=1;
for i=2:1:50
    A(i,i-1)=100;
    A(i,i)=-200.1;
    A(i,i+1)=100;
end
B=zeros(51,1)
B(1,1)=100;
B(51,1)=30;
for i=2:1:50
    B(i)=-3
end
x=A\B
