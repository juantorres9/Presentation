from fonction1 import table, somme
#if __name__=="__main__":
table(2, 10)
print("garger un nombre a sommer \n")
annee=int(input())
try:
    total=somme(annee, 4)
    print(total)
   
except TypeError:
    print("il ya eu une erreur typel")
except:
    print("il ya eu une erreur l'anne doit etre entier")
finally:
    print("je m'execute a la fin ")
    
    
    
    
