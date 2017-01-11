function bin=touille(pwb,k,flag)
flag=bitand(flag,1);
l=length(pwb);
n=ceil(l/k);
rb=mod(l,k);
bin=[];

sb=0;
if rb~=0
	sb=k-rb;
	for i=1:sb
        z(i)='0';
    end
	pwb=[pwb z];
end     
     
for x=0:n-1
    pwb1=pwb(x*k+1:(x+1)*k);
	lone=bitand(length(find(pwb1=='1')),1);
    opb='0'+(~xor(flag,lone));
    
	pwb1=[pwb1 opb];
    bin=[bin pwb1];
end
