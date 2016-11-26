%%Problem 4
% Program to Obtain the steady state fully developed flow profile for the liquid flowing through a cylindrical pipe

clc;
clear all;
close all;
mu = 0.001;        %viscocity of liquid in Kg/m.s
L = 0.2;           %length of a pipe in meter
R = 0.025;         %radius of a pipe in meter
dP = 0.1;         %pressure drop across the length in Pa
i=1
for r= -0.025:0.001:0.025
    V(i) = (dP*R^2)*(1-(r^2/R^2))/4*mu*L; % Velocity profile
    i=i+1
    
end
 r= -0.025:0.001:0.025
plot(V,r)

%%calculating maximum velocity
Vmax = dP*R^2/(4*mu*L)