function T=trio(n,m)
T(3*n,m)=3; % or you can use random no. generation...but since we are assigning alues anyway , this vl work fine !
T(1:n,:)=1;
T((n+1):2*n,:)=2;
T((2*n+1):3*n,:)=3;
end
