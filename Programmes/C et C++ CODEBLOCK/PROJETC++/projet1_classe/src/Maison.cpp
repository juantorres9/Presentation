#include <iostream>
#include "Maison.h"
using namespace std;
//Constructeur sans parametre
Maison::Maison()
{

}
//Constructeur avec parametre
Maison::Maison(string ville,double surface,int piece):m_ville(ville),m_surface(surface),m_piece(piece)
{
    cout<<"contructeur Maison avec parametres:"<<m_ville<<","<<m_surface<<","<<m_piece<<endl;
}

Maison::~Maison()
{

}
//Methode
void Maison::decrireMaison(){
    cout<<"la Maison  ville="<<m_ville<<" surface="<<m_surface<<" pieces="<<m_piece<<endl;
};
