function numfreeze = freezing(A) 
n = logical(A(A<32));
numfreeze = sum(n); 
end
