function V=diff3(x,BV) 

% Solving higher order eqns. requires conversion to system of 1st order
% eqns. Assign n=dm/dx
% 1st equation : dm/dx = n
% 2nd equation : dn/dx = -m

V=[BV(2); -BV(1)]; % n : BV(2) , m= BV(1)

end
