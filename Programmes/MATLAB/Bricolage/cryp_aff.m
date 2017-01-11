function [E] = cryp_aff( a,b,n,x )
%UNTITLED Summary of this function goes here
E=[];
for k=1:length(x)
    e=a*x(1,k)+b;
    e1=mod(e,26);
    E=[E,e1];
end
E

