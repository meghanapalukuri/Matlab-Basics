%% Program to determine conversion in CSTR
clc
clear all
close all

% Defining req variables
molFlow= 10;          % flow rate in mol/min
conc=2;               % inlet conc in mol/dm^3
Q=molFlow*conc;       % volumetric flow rate in dm^3/min
V=500;                % volume in dm^3
k=0.1;                % rate constant per min at 375 K
T=375;                % temperature in K
E=10;                 % activation energy in cal/mol
E=E*4.186;            % converting to J/mol
R=8.314;              % universal gas constant in J/molK

%% k is proportional to e^(-E/RT) 


for T1=300:10:400
    k1=k*exp((-E/R)*(1/T1-1/T))
    X=k1/(k1+Q/V)     % Calculating conversion X
end

    


