clear all
close all
clc

Y_input = input('Enter the value of Y input: ');
b = [-Y_input;0;0;0];
A = eye(4);
A = -2.5.*A;
for i = 1:3
    A(i,i) = -2.5;
    A(i,i+1) = 1.5;
    A(i+1,i) = 1;
end
y = A\b;
Y_output = y(4)

%% Question 8(b): 5-Stage Extraction Equilibrium with feed ratio 0.75:

clear all
close all
clc

Y_input = input('Enter the value of Y input: ');
b = [-Y_input;0;0;0;0];
A = eye(5);
A = -3.25.*A;
for i = 1:4
    A(i,i) = -3.25;
    A(i,i+1) = 2.25;
    A(i+1,i) = 1;
end
y = A\b;
Y_output = y(5)

%% Question 8(c): 5-Stage Extraction Equilibrium with feed ratio 1:

clear all
close all
clc

Y_input = input('Enter the value of Y input: ');
b = [-Y_input;0;0;0;0];
A = eye(5);
A = -4.*A;
for i = 1:4
    A(i,i) = -4;
    A(i,i+1) = 3;
    A(i+1,i) = 1;
end
y = A\b;
Y_output = y(5)

%% Question 8(d): 6-Stage Extraction Equilibrium with feed ratio 0.75:

clear all
close all
clc

Y_input = input('Enter the value of Y input: ');
b = [-Y_input;0;0;0;0;0];
A = eye(6);
A = -3.25.*A;
for i = 1:5
    A(i,i) = -3.25;
    A(i,i+1) = 2.25;
    A(i+1,i) = 1;
end
y = A\b;
Y_output = y(6)

%% Question 8(e): 6-Stage Extraction Equilibrium with feed ratio 1:

clear all
close all
clc

Y_input = input('Enter the value of Y input: ');
b = [-Y_input;0;0;0;0;0];
A = eye(6);
A = -4.*A;
for i = 1:5
    A(i,i) = -4;
    A(i,i+1) = 3;
    A(i+1,i) = 1;
end
y = A\b;
Y_output = y(6)

