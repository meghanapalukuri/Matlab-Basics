%% Problem 1
%Program to estimate K and Km in rate expression for Enzymatic Reaction
clc
clear all
close all

% r=KS/(Km+S)

S=[1.233;0.540;0.442;0.258;0.198;0.162;0.130;0.128]
r=[5.970;3.319;2.253;2.547;1.493;1.182;1.095;0.869]
x=1./S; % x=1/S
y=1./r; % y=1/r

% Writing in the form y=a1+a0x
% y=(Km/K)*x+(1/K) 

% A =[1,x]
A(:,2)=x;  
A(:,1)=1;

% Aa=y where a=[(1/K);(Km/K)]

a=A\y;

K=1/a(1)
Km=K*a(2)

% Writing in the form x=b1y+b0
% x=(K/Km)*y-(1/Km)

% B =[1,y]
B(:,2)=y;
B(:,1)=1;

% Bb=x where b=[(-1/Km);(K/Km)]

b=B\x;

Km=-1/b(1)
K=Km*b(2)




