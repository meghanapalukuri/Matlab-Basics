%% Q2.

clear all
close all
clc

g=9.80665;
rhop=1800;
Dp=0.208*10^(-3);
rho=994.6;
mu=8.931*10^(-4);

Re=0.05;
    Cd=24/Re;
    v=sqrt(4*g*(rhop-rho)*Dp/(3*Cd*rho));
    Re=rho*v*Dp/mu;
    if(Re<0.1)
         Re
         Vt=v
    end
    
Cd=(24/Re)*(1+0.14*Re^0.7) ;
v=sqrt(4*g*(rhop-rho)*Dp/(3*Cd*rho));
 Re=rho*v*Dp/mu;
if(Re<=1000 && 0.1<=Re)
    Re
    Vt=v
    end
    
 Cd=0.44 ;
 v=sqrt(4*g*(rhop-rho)*Dp/(3*Cd*rho));
 Re=rho*v*Dp/mu;
if(Re<=350000 && 1000<Re)
     Re
    Vt=v
end

Cd=0.19-8*(10^4)/Re;
v=sqrt(4*g*(rhop-rho)*Dp/(3*Cd*rho));
Re=rho*v*Dp/mu;
if(Re>350000)
    Re
    Vt=v
    s
end

