function V=diff1(t,v1)
global c v g
vx=v1(1);
vy=v1(2);
V=[-c*v*vx;-(c*v*vy+g)];
V(3)=vx;
V(4)=vy;


end
