function V=as6(t,C)
global k1 
global k2

% C(1)=cA, C(2)=cB, C(3)=cR, C(4)=cS
V=[-k1*C(1)*C(2) ; -k1*C(1)*C(2)-k2*C(3)*C(2) ; k1*C(1)*C(2)-k2*C(3)*C(2) ; k2*C(3)*C(2) ];



end
