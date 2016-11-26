%% ASSIGNMENT 2 - CH12B083, CH12B084
%% Problem 1
% Program to estimate A and phi in pendulum equation     
%% Defining variables
clc
clear all
close all

t = [0;0.2;0.4;0.6;0.8;1]  % time t
x = [ 1.7651;1.5034;-0.799;-1.972;-0.3891;1.7684] % position of pendulum x

S = sin(2*pi*t); % Sine of 2*pi*t
C = cos(2*pi*t); % Cos of 2*pi*t
%% M*res =x

M(:,1)=S;        % Matrix M has 1st column Sine 2*pi*t
M(:,2)=C        % Matrix M has 2nd column Cos 2*pi*t
res = M\x       % Solving the equation : M*res=x where res =[Acos(phi);Asin(phi)]

phi = atan(res(2)/res(1)); % tan(phi)=Asin(phi)/Acos(phi)
phid = atand(res(2)/res(1)) % phi in degrees 
A = res(1)/cos(phi)        % Using phi value in res(1)=Acos(phi)to get A


%% Problem 2
%%Program to explain the yield z as a function of the reactant concentrations x; y

clear all;
close all;
I = ones(10,1);
X = [20;20;30;40;40;50;50;50;60;70];  %reactant x concentration 
Y = [10;10;15;22;22;27;27;27;32;40];  %reactant y concentration
Z = [73;78;85;90;91;87;86;91;75;65];  %compound yield z
x2 = X.*X ;                           %defining square of reactant x concentration
y2 = Y.*Y ;                           %defining square of reactant y concentration
A(:,1)=I;
A(:,2)=X;                             %defining matrix A
A(:,3)=x2;                            %A=[1,X,x2,Y,y2]
A(:,4)=Y;                            % A*Ans=Z
A(:,5)=y2;                           %Ans=[a0;a1;a2;b1;b2]
A
Z
Ans = A\Z                             



%% Problem 3
%program to obtain lengths of the opposite and the adjacent sides
%%consider the following information about given triangle
%In triangle 'c' is the hypotenuse
%'A' is the angle(in degree) opposite to the side 'a'
%'b' is the side adjacent(other than hypotenuse) to the angle 'A'


c=10
A=60
a=c*sin(A*pi/180)                        %sin(A*pi/180)=a/c
b=c*cos(A*pi/180)                        %cos(A*pi/180)=b/c


%% Problem 4
%% Program to create the given matrix of n+1*n+1 dimensions and to calculate number of elements greater than an input number in the matrix.

clear all
close all
%% Creating the given matrix M with parameter n, say 5

n=5
for j=1:n+1
    
    for i=1:n+1
    M(j,i)=n+j-i; % An element in this matrix is given by n+j-i, where i j is row number and i is column number.
    end
    
end

M
%% Finding number of elements greater than an input number x say 4

x=4

count=0;                       % Counting variable is initially set to 0
for j=1:n+1
    for i=1:n+1
      if(M(i,j)>x)                   
       count=count+1;             % If the given number is greater than the element in the matrix, increment count
                                  % Loop checks for all elements
      end
    end
end

    
    count
    %% Problem 5
%%file to plot r (radius) of a ellipse 
%for given ellipse, semi-major axis 'b'=7 
%semi-minor axis 'a'=4
%'theta' is the angle between radius and positive x-axis

clear all;
close all;
a = 4;
b = 7;
i=1;
for theta= 0:0.1:pi             %theta goes from 0 to ?
    x = a*cos(theta);           %x,y are points on the ellipse at given theta
    y = b*sin(theta);
    r(i) = sqrt((x*x)+(y*y));   %r^2=x^2+y^2
    i=i+1;
end

theta= 0:0.1:pi
r

plot(theta*(180/pi),r)          %plotting radius vs theta





