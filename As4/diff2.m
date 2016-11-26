function V=diff2(t,T)
global M C UA Tst T0 W

V1 = (1/(M*C))*(UA*(Tst-T(1))+W*C*(T0-T(1)));
T1=T(1);
V2 = (1/(M*C))*(UA*(Tst-T(2))+W*C*(T1-T(2)));
T2=T(2);
V3 = (1/(M*C))*(UA*(Tst-T(3))+W*C*(T2-T(3)));
V=[V1;V2;V3];


end
