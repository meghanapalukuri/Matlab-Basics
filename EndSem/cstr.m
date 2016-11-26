function conc = cstr(t,C)
global V k1 k2 v cAin cBin cCin cDin 

A=(v/V)*(cAin-C(1))-k1*C(1)*C(2);
B=(v/V)*(cBin-C(2))-k1*C(1)*C(2)-k2*C(2)*C(3);
Co=(v/V)*(cCin-C(3))+k1*C(1)*C(2)-k2*C(2)*C(3);
D=(v/V)*(cDin-C(4))+k2*C(2)*C(3);

conc= [ A ; B ; Co;D];


end
