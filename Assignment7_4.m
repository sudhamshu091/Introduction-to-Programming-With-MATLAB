function [summa ,index] = max_sum(V,n)
[q a] = size(V);
count = 0;
summa = 0;
if(n>a)
    index = -1;
else
    for ii = 1:a
        if((ii+n-1)>a)
        else
            k = 0;
            for jj = 0:(n-1)
                k = k + V(ii+jj);
            end
            if(summa<k || count==0)
                count =1;
                summa = k;
                index = ii;
            end
        end
    end
end
