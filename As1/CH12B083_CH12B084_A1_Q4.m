%% Program to plot graphs of functions
clc
clear all
close all

x= -5:0.05:5;
figure(1)

%%1st plot

y1=sqrt(25-x.*x);
y2=-sqrt(25-x.*x);
subplot(2,2,1)
plot(x,y1,x,y2,'b-')
axis equal         % Equal length of axes shown
xlabel('x')        % x axis is labelled as x
ylabel('y')         % y axis is labelled as y
title('x^2 + y^2 =25') % title for plot
axis tight      
% hold on
% plot(x,y2)
% hold off

%%2nd plot

y=5*x+3;
subplot(2,2,2)
plot(x,y,'r-')
xlabel('x')
ylabel('y')
title('y=5*x+3')
%%3rd plot

y=x.*x;
subplot(2,2,3)
plot(x,y,'m-')
xlabel('x')
ylabel('y')
title('y=x^2')
%%4th plot


y=3*cos(4*x+2);
subplot(2,2,4)
plot(x,y,'k')
xlabel('x')
ylabel('y')
title('y=3*cos(4*x+2)')

%% Plotting circle using polar co-ordinates
figure(2)
r=5;
theta=0:0.01:2*pi;
x=r*cos(theta);
y=r*sin(theta);
plot(x,y,'r-')
axis equal
axis tight







