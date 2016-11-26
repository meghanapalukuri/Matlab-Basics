%% Program to find sum of squares of 1st 100 natural numbers
%%Using for loop
clc
clear all
close all

sum=0;
for i=1:100 % i takes values 1,2,.. 100
    sum=sum+i*i; % adds new number to the sum each time
end
sum
%% Using while loop
clear all
close all
i=1; % increment loop variable
sum=0;
while(i<=100)
    sum =sum+i*i;
    i=i+1;
end
sum   %displaying sum



