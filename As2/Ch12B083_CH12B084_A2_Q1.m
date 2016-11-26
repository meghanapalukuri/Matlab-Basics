% Program to estimate A and phi in pendulum equation
%% Defining variables
clc
clear all
close all

t = [0;0.2;0.4;0.6;0.8;1]  % time t
x = [ 1.7651;1.5034;-0.799;-1.972;-0.3891;1.7684] % position of pendulum x

S = sin(2*pi*t); % Sine of 2*pi*t
C = cos(2*pi*t); % Cos of 2*pi*t
%% M*res =x

M(:,1)=S;        % Matrix M has 1st column Sine 2*pi*t
M(:,2)=C        % Matrix M has 2nd column Cos 2*pi*t
res = M\x       % Solving the equation : M*res=x where res =[Acos(phi);Asin(phi)]

phi = atan(res(2)/res(1)); % tan(phi)=Asin(phi)/Acos(phi)
phid = atand(res(2)/res(1)) % phi in degrees 
A = res(1)/cos(phi)        % Using phi value in res(1)=Acos(phi)to get A

