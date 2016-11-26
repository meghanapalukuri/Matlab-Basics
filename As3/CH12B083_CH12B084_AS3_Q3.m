%% Problem 3
% Finding friction factor for turbulent flow in a smooth pipe given Reynold's number.

clc
clear all
close all

% Using iteration
Re=100000
fin=0.01; % Initial value of f
f=0.01;
while(abs(f-fin)<0.00001)
    fin=f;
    f=(1/(-0.4+sqrt(3)*log(Re*sqrt(f))))^2;
    f=f+0.00001;
end
    f
    
    % Solving using fsolve
    
    X=0.01;
    g = @(X)fun(X,Re); % Modified function which can accept parameter Re
    f=fsolve(g,X)
    
    % Solving for different values of Re using fsolve
    Re=(4000:10^5:10^6);
    for(i=1:10)
        g = @(X)fun(X,Re(i));
    F(i)=fsolve(g,X);
    end
    
 Re=4000:10^5:10^6      
 F
   loglog(Re,F);
   xlabel('log(Reynolds Number)')
   ylabel('log(Friction factor)')
   
    
    