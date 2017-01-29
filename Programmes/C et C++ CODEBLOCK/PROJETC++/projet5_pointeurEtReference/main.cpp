#include <iostream>
#include "Personne.h"
using namespace std;
void changerTailleRef(Personne& p,double taille);
void changerTaillePoint(Personne* p,double taille);
void changerTailleVal(Personne p,double taille);
int main()
{
    Personne p1("Juan",1.72);
    Personne p2("Fred",1.68);
    p1.decrirePersonne();

    //Passsage par réference
    changerTailleRef(p1,1.90);
    p1.decrirePersonne();
    //Passage par Pointeur
    changerTaillePoint(&p1,1.80);
    p1.decrirePersonne();
    //Passage par Valeur
    changerTailleVal(p1,1.70);
    p1.decrirePersonne();
    return 0;
}

//changement par Reference
void changerTailleRef(Personne& p,double taille){
    p.changerTaille(taille);
}
//changement par Pointeur
void changerTaillePoint(Personne* p,double taille){
    p->changerTaille(taille);
}
//changement par Valeur
void changerTailleVal(Personne p,double taille){
    p.changerTaille(taille);
}
