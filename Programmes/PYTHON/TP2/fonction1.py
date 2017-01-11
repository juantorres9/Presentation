
def table(nb, max=10):
    i=0
    while i<max:
        print(i, "*", nb, "=", nb*i)
        i +=1

def somme(num1, num2=4):
    result=num1+num2
    print("Le resultat de la Somme c'est ", result)
    return result
    
#if __name__=="__main__":
    table(4, 3)
