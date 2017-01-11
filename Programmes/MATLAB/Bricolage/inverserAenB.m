function  [a,b]= inverserAenB (a,b) %le variables dans le fonctionnes sont locales
aOld=a
bOld=b
row=size(a,1)
column=size(a,2)
for k=1:1:row
    for l=1:1:column
        b(k,l)=a(k,column+1-l);
    end
end


    