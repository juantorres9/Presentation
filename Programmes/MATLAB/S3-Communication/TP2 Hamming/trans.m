function a=trans(m)
% matbin=str2bin(m);
% b=matbin
% a=b(2:8)
c=[];
for i=1:size(m,2)
c=str2bin(m(1,i));
end
c

%a=c;