#include <iostream>
#include "Mere.h"

using namespace std;
const string Mere::articles[]={"poele","laptop","sechoire"};


Mere::Mere()
{
}
Mere::~Mere()
{
    //dtor
}

double  Mere::calculPrixTotal(string article){
    double prix=0;

    if(!(article.compare(articles[0]))){
        prix=20*(m_tva+1);
        cout<<"le prix de "<<articles[0]<<" est= "<<prix<<endl;
    }else{
        cout<<"l'article n'existe pas dans l'inventaire"<<endl;
    }

    return prix;

};
