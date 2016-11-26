%%file to plot r (radius) of a ellipse 
%for given ellipse, semi-major axis 'b'=7 
%semi-minor axis 'a'=4
%'theta' is the angle between radius and positive x-axis
clc;
clear all;
close all;
a = 4;
b = 7;
i=1;
for theta= 0:0.1:pi             %theta goes from 0 to ?
    x = a*cos(theta);           %x,y are points on the ellipse at given theta
    y = b*sin(theta);
    r(i) = sqrt((x*x)+(y*y));   %r^2=x^2+y^2
    i=i+1;
end
theta= 0:0.1:pi
plot(theta*(180/pi),r)          %plotting radius vs theta