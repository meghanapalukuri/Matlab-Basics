clc
clear all
close all
%% CH12B014_Q a)
% Assume dp/dx=-1 and M1=10^(-3)
% Guiding equation dp/dx=M* d/dy(du/dy)
syms  u(y)
k=dsolve(diff(u, 2) == -10^(3), u(-1) == 0, u(1)==0) % Finding out the parametric equation using the boundary conditions
k1  = inline(char(k)); % To convert char to double
y=-1:0.01:1;
k=length(y)
for(i=1:1:k)
    
        
        m(i)=k1(y(i)); % Finding out the functional value at every point and storing in a matrice
       
end  
figure(5)        
plot(m,y)
title('M1=M2')
xlabel('Velocity')
ylabel('y')
%% Q10 b
% Assume dp/dx=-1 and M1=10^(-3) M2=2*10^(-3)
% Guiding equation dp/dx=M* d/dy(du/dy)
% The way this question was solved is that I declared du1/dy= a at y=0 and
% du2/dy= 0.5a and using u1=u2 at y=0 I solved for a= 500/3
syms a u1(y)
Du1=diff(u1); % Split it up into two region from y=1 to 0 and y=0 to -1
k1=dsolve(diff(u1, 2) == -10^(3), u1(1) == 0,Du1(0) == 500/3)
syms a u2(y)
Du2=diff(u2);
k2=dsolve(diff(u2, 2) == -0.5*10^(3), u2(-1) == 0, Du2(0)==0.5*500/3)
k11=inline(char(k1));
k22=inline(char(k2));
y1=0:0.01:1;
k=length(y1)
for(i=1:1:k)
    
        
        m1(i)=k11(y1(i)); % Finding out the functional value at every point and storing in a matrice
       
end  
y2=-1:0.01:0;
k=length(y2)
for(i=1:1:k)
    
        
        m2(i)=k22(y2(i)); % Finding out the functional value at every point and storing in a matrice
       
end  
 figure(4)       
plot(m1,y1)
hold on
plot(m2,y2)
title('M1=0.5M2')
xlabel('Velocity')
ylabel('Y')