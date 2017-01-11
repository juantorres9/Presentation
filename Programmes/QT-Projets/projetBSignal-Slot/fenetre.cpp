#include <QWidget>
#include<QApplication>
#include "fenetre.h"

//Fenetre::Fenetre(QWidget *parent) :QWidget(parent)
Fenetre::Fenetre()
{
    this->setFixedSize(200,300);
    //Instantiation de widgets
    m_lcdH=new QLCDNumber(this);
    m_lcdV=new QLCDNumber(this);
    m_sliderH=new QSlider(Qt::Horizontal,this);//Horizontal
    m_sliderV=new QSlider(Qt::Horizontal,this);// Slider vertical

    //CONFIGURATION
    //Afficheur LCD Horizontal
    m_lcdH->setSegmentStyle(QLCDNumber::Flat);
    m_lcdH->move(60,60);
    //Afficheur LCD Vertical
    m_lcdV->setSegmentStyle(QLCDNumber::Outline);
    m_lcdV->move(60,80);
    //scroll de taille fenetre Horizontal
    m_sliderH->setGeometry(1,1,40,50);
    m_sliderH->setRange(200,600);
    //scroll de taille fenetre Vertical
    m_sliderV->setGeometry(60,1,40,50);
    m_sliderV->setRange(100,500);

    //Connexion1
    QObject::connect(m_sliderH,SIGNAL(valueChanged(int)),m_lcdH,SLOT(display(int)));
    //Connexion2
    QObject::connect(m_sliderV,SIGNAL(valueChanged(int)),m_lcdV,SLOT(display(int)));
    //Connexion3
    QObject::connect(m_sliderH,SIGNAL(valueChanged(int)),this,SLOT(changerLargeur(int)));
    //Connexion4
    QObject::connect(m_sliderV,SIGNAL(valueChanged(int)),this,SLOT(changerLongueur(int)));
}

void Fenetre::changerLargeur(int largeur){
    this->setFixedSize(largeur,this->height());
}

void Fenetre::changerLongueur(int longueur){
    this->setFixedSize(this->width(),longueur);
}
