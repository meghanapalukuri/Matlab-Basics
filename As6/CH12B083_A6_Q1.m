clc;
clear all;
close all;

T=75;

Psat1= exp(14.2724-(2945.47/(T+224.00)));
Psat2= exp(14.2043-(2972.64/(T+209.00)));
Psat3= exp(14.5463-(2940.46/(T+237.22)));
Psat1
Psat2
Psat3

i=1
for x1=0:0.1:1
    P(i)=(x1*Psat2)+((1-x1)*Psat1)      %x1 is liquid composition of more volatile component i.e. nitromethane
  i=i+1
end
 x1=[0:0.1:1]
 figure
plot(x1,P,'-r')
xlabel('x1')
ylabel('P(in mm Hg)')
title('P vs x1')
  i=1
for x1=0:0.1:1
    M(i)=x1*Psat2;
   i=i+1
end
M
y1=M./P

figure
plot(y1,P,'-b')
xlabel('y1')
ylabel('P(in mm Hg)')
title('P vs y1')

%% b part
%Psat1= exp(14.2724-(2945.47/(T+224.00)));
%Psat3= exp(14.5463-(2940.46/(T+237.22)));

N=525.043 
i=1
for x1=0.1:0.1:1    
for T=50:1:200
    K=(x1*exp(14.2724-(2945.47/(T+224.00))))+((1-x1)*exp(14.5463-(2940.46/(T+237.22)))) 
   if (abs(K-N)<7)
       break
   end
end
temp(i)= T;
i=i+1;
end
temp
x1=[0.1:0.1:1]
figure
plot(x1,temp,'-k')
xlabel('x1')
ylabel('T in ºC')
title('T vs x1')

 i=1
for x1=0.1:0.1:1
    M(i)=x1*exp(14.2724-(2945.47/(T+224.00)));
   i=i+1
end
M
y1=M./K
% figure
% plot(y1,temp,'-k')
% xlabel('y1')
% ylabel('T in ºC')
% title('T vs y1')
