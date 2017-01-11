function str=bin2str(bin)
l=length(bin);
str=[];
for i=1:l/8
    str=[str char(bin2dec(bin((8*(i-1)+1):8*i)))];
end
