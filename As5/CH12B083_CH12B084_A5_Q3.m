clc;
clear all;
close all;

M=0.046;        %M=mass of ball in Kg
r=0.021;        %r=radius of ball in meter
u=35.5;         %u=initial velocity of ball in m/s
[theta,fval]=fminunc(@range,0); %calculating maximum value of function and corresponding theta
Angle=theta*180/pi       %angle(in degree) for which horizontal range is maximized
MaxRange=-fval           %maximum range corresponding to angle theta  



[thet,fval]=fminunc(@range2,0);
Horizontalrange=-fval
thet=(thet)*180/pi




