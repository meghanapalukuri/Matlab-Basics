%%Problem 2
% Defining two functions with two variables

function f=Fun2(X)        %function containing two equations
x=X(1);                   %using value of x after iteration
y=X(2);                   %using value of y after iteration
f(1)= x^2-x*y-4;          %first non linear equation in two variables
f(2)= y^3+y*x^(0.5)+12;   %second non linear equation in two variables
end