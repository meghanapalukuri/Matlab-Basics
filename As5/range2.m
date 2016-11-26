function f=range2(thet)
den=1.3;      


global c g v r M

M=0.046;        %M=mass of ball in Kg
r=0.021;        %r=radius of ball in meter
v=35.5;
g=9.81;
c=0.5*den*r*r/M;

vx1=v*cos(thet) ;% thet in radians
vy1=v*sin(thet);


[TM,YM] = ode15s(@diff1,[0 40],[vx1,vy1,0,0]);

Q=size(YM);
f=-YM(Q(1),3) ;






end

