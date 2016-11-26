%% Program to find nearest point for a given point in a particular region

clc
clear all
close all


X= [ 2 2 6 -3 0 11 -4 1 1];
Y= [ 2 1 1 -2 0 10 -4 1 4];

cen = [1 1];
for i=1:9
    pt=[X(i),Y(i)]
    m=(Y(i)-1)/(X(i)-1);
     syms x y
    if(distance(pt,cen)>=5) % closest point lies on outer circle
               [xans,yans]= solve(y == 1+m*(x-1), (x-1)^2+(y-1)^2==25);
               xans=eval(xans);
               yans=eval(yans);
               pt1=[xans,yans];
               if(distance(pt1(1,:),pt)<distance(pt1(2,:),pt))
                   Ans=pt1(1,:)
               else
                   Ans=pt1(2,:)
               end
                   
    end
    if(distance(pt,cen)==0)
                   disp('All points on smaller circle')
               
    end
               if (distance(pt,cen)==3)
                   xans=X(i)
                   yans=Y(i)
               end
               
               
    if(distance(pt,cen)<=3)
        [xans,yans]= solve(y == 1+m*(x-1), (x-1)^2+(y-1)^2==9);
               xans=eval(xans);
               yans=eval(yans);
               pt1=[xans,yans];
               if(distance(pt1(1,:),pt)<distance(pt1(2,:),pt))
                   Ans=pt1(1,:)
               else
                   Ans=pt1(2,:)
               end
     end

    


end