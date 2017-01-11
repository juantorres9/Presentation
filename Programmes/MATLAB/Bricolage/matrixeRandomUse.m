a=[1 2 3 4]
b=ones(4)
c=random('beta',0,4,[4,1]);
for i=1:length(a);
    c(i,1)=b(i,1);
end
c