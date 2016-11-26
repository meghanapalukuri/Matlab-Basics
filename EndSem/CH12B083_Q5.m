%% Q.5

clear all
close all
clc

cA0=0.2;
k=0.001;
D=1.2*10^(-9);
L=0.001;

syms c(z)

Dc=diff(c);
cA1=dsolve(diff(c,2)==(k/D)*c,'c(0)=cA0','Dc(0)=25.3126');



cA0=0.2;
z=[0:0.0001:0.001];
CA1=eval(cA1);

plot(z,CA1,'r-')
xlabel('z')
ylabel('Conc of A' )

syms c(z)

Dc=diff(c);
cA2=dsolve(diff(c,2)==(k/D)*c,'c(0)=cA0','Dc(0)=-131.9112');




cA0=0.2;
z=[0:0.0001:0.001];
CA2=eval(cA2);
hold on
plot(z,CA2,'b-')
legend('IC1','IC2');
hold off

% 2nd initial conditions are correct because as we can see from graph,dcA/dz at z=L is 0 which is the right condition.


figure(2)
z=[0:0.0001:0.001];
cAanal= cA0*cosh(L*sqrt(k/D)*(1-z/L)/cosh(L*sqrt(k/D)))

plot(z,cAanal,z,CA2);
legend('cAnalytical','cNumerical')
xlabel('z')
ylabel('Conc of A' )

