%program to obtain lengths of the opposite and the adjacent sides
%%consider the following information about given triangle
%In triangle 'c' is the hypotenuse
%'A' is the angle(in degree) opposite to the side 'a'
%'b' is the side adjacent(other than hypotenuse) to the angle 'A'

function f=CH12B083_CH12B084_A2_Q3(c,A) %function with parameters c and A
c=input('input c')
A=input('input A')
a=c*sin(A*pi/180)                        %sin(A*pi/180)=a/c
b=c*cos(A*pi/180)                        %cos(A*pi/180)=b/c
end



