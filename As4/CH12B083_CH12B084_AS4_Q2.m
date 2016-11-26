%% Problem 2
% Program to solve ODEs to calculate distance travelled by cricket ball in
% different places having different g and c


clear all
close all
clc

global c g v

v=35;
gM=9.81;
cM=0.006;
Re=6400;
vx1=35*cos(pi/4)
vy1=35*sin(pi/4)

% MOHALI

h=0;


g=gM*(Re/(Re+h))^2

c=cM*(1-6.5*h/300)^5



[TM,YM] = ode15s(@diff1,[0 40],[vx1,vy1,0,0])

XM=YM(40,3)       % Distance travelled in X direction in Mohali
MaxYM=max(YM(4))  % Max height attained ( in Y direction in Mohali


% DHARMASALA

h=1.2;

g=gM*(Re/(Re+h))^2

c=cM*(1-6.5*h/300)^5



[TD,YD] = ode15s(@diff1,[0 40],[vx1,vy1,0,0])
XD=YD(40,3)       % Distance travelled in X direction in DHARMASALA
MaxYD=max(YD(4))  % Max height attained ( in Y direction in DHARMASALA


