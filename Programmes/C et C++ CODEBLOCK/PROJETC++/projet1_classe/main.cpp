#include <iostream>
#include "Maison.h"//Mere
#include "MCampagne.h"//Fille
using namespace std;

int main()
{
     //Instantiation de classe avec Allocation Automatique
    Maison m1;
    Maison m2("Arc et Senans",80,3);
    //Instantiation de classe avec Allocation Dynamique
    Maison *m3= new Maison();
    Maison *m4= new Maison("Besancon",32.5,2);

    //methodes appel par valeur
    m1.decrireMaison();
    m2.decrireMaison();
    //methode appel par pointeur
    m3->decrireMaison();
    m4->decrireMaison();

    cout<<"coucou"<<endl;

    //Instantiation de classe Fille
    MCampagne c1("San Salvador",90,4,true);
    //Methode classe Fille redéfini
    c1.decrireMaison();
    return 0;
}
