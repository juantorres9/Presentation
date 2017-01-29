

#include <iostream>
#include "Maison.h"
using namespace std;
//Constructeur sans parametre
//initialisation  membre statique
int Maison::nombreMaison=0;

Maison::Maison()
{   nombreMaison+=1;}
//Constructeur avec parametre
Maison::Maison(string ville,double surface,int piece):m_ville(ville),m_surface(surface),m_piece(piece)
{
    cout<<"contructeur Maison avec parametres:"<<m_ville<<","<<m_surface<<","<<m_piece<<endl;
    //increme,tation nombre d'instances
    nombreMaison+=1;
}

Maison::~Maison()
{}
//Methode
void Maison::decrireMaison(){
    cout<<"la Maison  ville="<<m_ville<<" surface="<<m_surface<<" pieces="<<m_piece<<endl;
};

//methode static
int Maison::showMaisonCompte(){

    cout<<"var statique :il y a ="<<nombreMaison<<" instances de Maison"<<endl;
    return nombreMaison;
}
