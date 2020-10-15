function id = saddle(M)
[a,b]=size(M);
id = zeros(a+b,2);
count = 0;
for i = 1:a
    mah = max(M(i,:));
    [c1,c2] = find(M(i,:) == mah);
    for k = 1:length(c1)
        c1k = c1(k); c2k = c2(k);
        mic = min(M(:,c2k));
        if M(i,c2k)==mic
            count = count+1;
            id(count,:) = [i,c2k];
        end
    end
end
id = id(1:count,:);
end
