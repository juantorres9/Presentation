function a=transfor(m)
c=ones(1,8)
a=ones(size(m,2),8)
for i=1:size(m,2)

c=str2bin(m(1,i));
for k=1:size(c,2)
a(i,k)=c(1,k);
end
end


a=a-48;
ligne=size(a,1);
column=size(a,2)-1;
b=ones(ligne,column);
for(s=1:ligne)
    for(t=1:column)
        b(s,t)=a(s,t+1);
    end
end
a=b


%mess=transfor('MASTER UFR-ST UFC')
%G=[eye(7) ones(7,1)]
%mess*G
%mod(mess*G,2)
