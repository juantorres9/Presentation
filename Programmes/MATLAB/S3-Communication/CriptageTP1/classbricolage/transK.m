function k = transK(m)

for i=1:64
    k(i)=floor(abs(sin(i+1))*2^32)
    
end;
