x=[1, 2, 3]
y=x
print(x)
x[1]=0
print(y)

condition=0
if x[1]==0:
    print('true')
else:
    print('false')
    
condition2=1
i=3
if i==0:
    print('i egal a zero')
elif i==1:
    print('i egal a 1')
elif i>1 and i<3:
    print('i egal a 2')
else:
    print('i superieur a 2')
  
a=[0,1, 2,3 ,4 ]  
i=2

for i in range(4):
    print (i) 
    
print ('**********fonction Arithmetiques')

def addition(a, b):
    c=a+b
    return c
def soustraction(a, b):
    c=a-b
    return c
    
e=addition(5, 4)
f=soustraction(10, 5)
print(e)
print(f)


