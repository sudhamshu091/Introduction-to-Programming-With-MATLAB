function charnum = char_counter(fname,character)
fid=fopen(fname);
if fid< 0
    charnum = -1;
    return;
end
if strcmp(character,'')==1
    charnum=0;
    return;
end
if strcmp(character,' " ')==1
    charnum=0;
    return;
end
if double(character)>=35 && double(character)<=43 && double(character) ~=39 && double(character) ~= 41 && double(character) ~= 40 
    charnum = 0;
    return;
end
if double(character) >=60 && double(character) <=64 && double(character) ~= 63 
    charnum = 0;
    return;
end
if double(character) == 81 || double(character) == 88 || double(character) == 90
    charnum = 0;
    return;
end
cc = fgets(fid);
sumv=0;
while ischar(cc)
    z = sprintf('%s',cc);
    k = strfind(z,character);
    sumv = sumv + length(k);
    cc = fgets(fid);
end
charnum = sumv;
if ischar(character)==0
    charnum =-1;
elseif charnum==0
    charnum=0;
    return;
end
