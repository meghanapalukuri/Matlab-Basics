%% Problem 6 : Program to find concentrations of reagents and products as a function of time in a reaction

clear all
close all
clc

global k1 
global k2
k1=0.1;
k2=0.05;

[T,C] = ode15s(@as6,[0 3600],[1 1 0 0]); % Calculating for time till 3600s
% cA0=1, cB0=1, cR0=0, cS0=0

plot(T(1:58),C(1:58,:));  % Plotting conc profiles till 2minutes.
xlabel('Time in seconds');
ylabel('Conc. in M');
legend('A','B','R','S');


[maxR,maxIndex]=max(C(:,3)); % Finding max conc of R and its index
maxR % Max conc of R 

maxTmin=T(maxIndex)/60 % Time at which conc of R is maximum

