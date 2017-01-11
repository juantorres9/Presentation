 # -*- coding: utf-8 -*-
import re
strA="gettep sys 50 output"
k=40
m2=re.findall(r'\w{2,7}', strA)
sizeM2=len(m2)
print(sizeM2)
print(m2[0])
print(m2[1])       
print(m2[2])
d=int(m2[2])
if(m2[0]=="gettemp"):
    print ('k superieur a 30')
    print('string ok')
else:
    print('k infeireur erreur')
    print(d)
