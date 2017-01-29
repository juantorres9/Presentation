#include <iostream>
#include "Personne.h"
#include <string>
using namespace std;

Personne::Personne()
{
    //ctor
}
Personne::Personne(string nom, double taille):m_nom(nom),m_taille(taille)
{
    //ctor
}

Personne::~Personne()
{
    //dtor
}

void Personne::changerTaille(double taille){
    m_taille=taille;
}
void Personne::decrirePersonne(){
    cout<<"je suis personne de nom="<<m_nom<<" et taille="<<m_taille<<endl;
}

