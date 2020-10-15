function matrix=sparse2matrix(cellvec);

matrix=zeros(cellvec{1})+cellvec{2};

for i=3:length(cellvec)

      matrix(cellvec{i}(1,1),cellvec{i}(1,2))=cellvec{i}(3);

end
