
%%Program to explain the yield z as a function of the reactant concentrations x; y
clc;
clear all;
close all;
I = [1;1;1;1;1;1;1;1;1;1];
X = [20;20;30;40;40;50;50;50;60;70];  %reactant x concentration 
Y = [10;10;15;22;22;27;27;27;32;40];  %reactant y concentration
Z = [73;78;85;90;91;87;86;91;75;65];  %compound yield z
x2 = X.*X ;                           %defining square of reactant x concentration
y2 = Y.*Y ;                           %defining square of reactant y concentration
A(:,1)=I;
A(:,2)=X;                             %defining matrix A
A(:,3)=x2;                            %A=[1,X,x2,Y,y2]
A(:,4)=Y;                            % A*Ans=Z
A(:,5)=y2;                           %Ans=[a0;a1;a2;b1;b2]
A
Z
Ans = A\Z                             



