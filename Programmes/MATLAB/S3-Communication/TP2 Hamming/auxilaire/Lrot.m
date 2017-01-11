function nk=Lrot(k,n)
l=length(k);
k1=k(n+1:l);
k2=k(1:n);
nk=[k1 k2];