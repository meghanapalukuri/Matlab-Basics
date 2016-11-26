%% Problem 5 : Program to calculate angle req to hit bulls eye

clc
clear all
close all

y=10;  % Height of target
x=300; % x co-ordinate of target
u=100;  % velocity of water balloon
g=9.81;

% Solve the equation for projectile motion : 
%y = tan(theta)*x-g*x^2/(2*u^2*cos^2(theta))
% Let a = tan(theta)
% j = g*x^2/(2*u^2)
 % Eqn : ja^2+xa-(j+y)=0
 
 j = g*x^2/(2*u^2);
 p= [j x -(j+y)]; % Coefficients of the quadratic equation
 a=roots(p);      % Calculating roots of the equation
 
 theta = atand(a);% in degrees.
 
 for i=1:2 
     if(theta(i)>=0)
         angle=theta(i) % Angle to be thrown is the positive root of theta 
     end
     i=i+1;
 end
 

 
 
 
 
  
 