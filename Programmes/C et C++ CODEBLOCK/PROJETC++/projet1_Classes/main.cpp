#include <iostream>
#include "Maison.h"
#include "MCampagne.h"

using namespace std;

int main()
{
    //Allocation Automatique
    Maison m1("San Salvador",32.5,4);
    MCampagne mc1("Monte Christ",25.7,3,true);
    //Allocation Dynamique
    Maison *m2= new Maison("Arc et Senans",45.1,4);
    MCampagne *mc2=new MCampagne("Besancon",42.3,3,true);
   cout<<"*****************separateur allocation Automatique**********"<<endl;
    //decription
    m1.decrireMaison();
    mc1.decrireMaison();
    cout<<"*****************separateur allocation dynamique**********"<<endl;
    m2->decrireMaison();
    mc2->decrireMaison();

    Maison::showMaisonCompte();
    //Appelle attribut statique
    cout<<"variables statiques"<<Maison::nombreMaison<<endl;
    cout<<"variables statiques"<<m1.nombreMaison<<endl;

    Maison::nombreMaison+=1;
    cout<<"variables statiques"<<Maison::nombreMaison<<endl;


    return 0;
}
