function bin=str2bin(str)
l=length(str);
bin=[];
for x=1:l
     bin=[bin,dec2bin(str(x),8)];
end
