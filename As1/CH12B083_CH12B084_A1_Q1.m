%% Program to compute vapour pressure given the temperature
clc
clear all
close all
i=1;

for temp=50:5:100 % Variable temp indicating temperature in degrees celsius takes the values from 50 to 100 with increments of 5
    vap=exp( 14.2724-2945.47/(temp + 224)); % Variable vap stores the vapour pressure computed using temp.
    T(i)=temp; %Storing all values of temp in a matrix T
    P(i)=vap;  %Storing all values of pressure in a matrix P
    i=i+1;
end
T
P
%% Program to compute temperature given the vapour pressure

clear all
close all
i=1;
for vap=60:5:80
    temp=2945.47/(14.2724-log(vap))-224; %temperature calculated using pressure
    tempK=temp+273.15; % temperature in K
    T(i)=tempK;
    P(i)=vap;
    i=i+1;
end
P
T

% The variables P and T can be pre-allocated to improve speed , ex : define
% T=zeros(1,n) useful if data is very large. Here it doesnt make much
% difference.
