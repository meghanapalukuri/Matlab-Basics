function count = findnum(M,x,n)
count=0;                       % Counting variable is initially set to 0
for j=1:n+1
    for i=1:n+1
if(M(i,j)>x)                   
    count=count+1;             % If the given number is greater than the element in the matrix, increment count
                               % Loop checks for all elements
end
    end
    
end

