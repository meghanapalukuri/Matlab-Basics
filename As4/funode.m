
function f=funode(t,Y)           %defining odes
f=[0.5-Y(1)^1.25-(0.5*Y(1));     %defining first eqn d(y1)/dt
   -(0.5*Y(2))+(2*Y(1)^1.25)-(0.4*Y(2)^2);]; %defining second eqn d(y2)/dt
end
