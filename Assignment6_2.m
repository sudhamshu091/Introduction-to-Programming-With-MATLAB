function admit=eligible(v,q)
if v>88 & q>88
ave=(v+q)/2;
if ave>=92
    admit=true;
else
    admit=false;
end
else
    admit=false;
end
