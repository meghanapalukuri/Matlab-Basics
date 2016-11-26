%% Q3.

clear all
close all
clc

F=70;

%% a.

A= 0.01*[ 7 18 15 24 ; 4 24 10 65 ; 54 42 54 10 ; 35 16 21 1 ] 

T=F*0.01*[ 15;25;40;20]

% Solving Ax=T where x' = [ D1 B1 D2 B2]

x=A\T
%% b.





D=x(1)+x(2)
CompD=A(:,1:2)*x(1:2)

B=x(3)+x(4)
CompB=A(:,3:4)*x(3:4)

% Xylene
% Styrene
% Toluene
% Benzene



