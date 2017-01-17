#include <iostream>
#include "MCampagne.h"
using namespace std;

//Constructeur sans parametres
MCampagne::MCampagne()
{
}
//Constructeur avec parametre
MCampagne::MCampagne(string ville,double surface,int piece,bool fenceOurs):Maison(ville,surface,piece),m_fenceOurs(fenceOurs)
{

}

MCampagne::~MCampagne()
{
    //dtor
}

void MCampagne::decrireMaison(){
    Maison::decrireMaison();
    cout<<"Maison de type Campagne , inclus fence ours="<<m_fenceOurs<<endl;
}


