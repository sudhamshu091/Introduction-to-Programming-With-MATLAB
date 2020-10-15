function distance = get_distance(x,y)
[~,~,raw] = xlsread('Distances.xlsx');
[a b]=size(raw);q=0;w=0;
for i = 2:a
    if strcmp(raw{i,1},x)==1
        q=i;
    end
end
for j = 2:b
    if strcmp(raw{1,j},y)==1
        w=j;
    end
end
if q>1 && w>1
    distance = raw{q,w};
else 
    distance = -1;
end
