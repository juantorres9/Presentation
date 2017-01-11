chaine=str()
i=0
while chaine.lower() != "q":
    print("tapez Q pour quitter ...")
    chaine=input()
print("Merci!")

chaine2=str()

while i<3:
    print("maintenent pour gagner taper winer ")
    chaine2=input()
    if(chaine2.lower()=="winer"):
        print("tu avait gagne la mot correct es"+chaine2.upper())
    else:
        print("tu avait perdu  la mot correct etais"+chaine2.upper())

    i=i+1
    
    
