a=ones(3,3)
b=ones(3,2)

cola=size(a,2);%nombre de columns
rowa=size(a,1);%nombre de rows

colb=size(b,2);%nombre de columns
rowb=size(b,1);%nombre de rows

%Creation matrice a
for n=1:cola
    for m=1:rowa
    a(m,n)=n;
    end
end

%Creation matrice b
for n=1:colb
    for m=1:rowb
    b(m,n)=n;
    end
end
a
b
