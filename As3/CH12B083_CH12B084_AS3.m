%% Problem 1
%Program to estimate K and Km in rate expression for Enzymatic Reaction
clc
clear all
close all

% r=KS/(Km+S)

S=[1.233;0.540;0.442;0.258;0.198;0.162;0.130;0.128]
r=[5.970;3.319;2.253;2.547;1.493;1.182;1.095;0.869]
x=1./S; % x=1/S
y=1./r; % y=1/r

% Writing in the form y=a1+a0x
% y=(Km/K)*x+(1/K) 

% A =[1,x]
A(:,2)=x;  
A(:,1)=1;

% Aa=y where a=[(1/K);(Km/K)]

a=A\y;

K=1/a(1)
Km=K*a(2)

% Writing in the form x=b1y+b0
% x=(K/Km)*y-(1/Km)

% B =[1,y]
B(:,2)=y;
B(:,1)=1;

% Bb=x where b=[(-1/Km);(K/Km)]

b=B\x;

Km=-1/b(1)
K=Km*b(2)

%% Problem 2

%program to solve two equations in two variables
clc;
close all;
clear all;

X=[1,1];              %using initial values of (x,y)=(1,1)
a=fsolve(@Fun2,X);    %Solving two equations defined in Fun2 to obtain the solution
x = a(1)              %Final value of x
y = a(2)              %Final value of y

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
   
    
    
   %% Problem 4

% Program to Obtain the steady state fully developed flow profile for the liquid flowing through a cylindrical pipe

clc;
clear all;
close all;
mu = 0.001;        %viscocity of liquid in Kg/m.s
L = 0.2;           %length of a pipe in meter
R = 0.025;         %radius of a pipe in meter
dP = 0.1;         %pressure drop across the length in Pa
i=1;
for r= -0.025:0.001:0.025
    V(i) = (dP*R^2)*(1-(r^2/R^2))/4*mu*L; % Velocity profile
    i=i+1;
    
end
 r= -0.025:0.001:0.025;
 figure(2)
plot(V,r)
xlabel('Velocity');
ylabel('Radius');


%%calculating maximum velocity
Vmax = dP*R^2/(4*mu*L)