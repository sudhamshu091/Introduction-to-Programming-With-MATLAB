function summa = halfsum(A)
[row, col]=size(A);
sum=0;
for i=1:row
    for j=i:col
        if i<=j
            sum= sum + A(i,j);
        end
    end
end
summa =sum;
end
