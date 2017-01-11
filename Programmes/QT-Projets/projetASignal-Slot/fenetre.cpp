#include <QWidget>
#include<QApplication>
#include "fenetre.h"

Fenetre::Fenetre(QWidget *parent) :QWidget(parent)
{
    this->setFixedSize(200,300);
    //Instantiation de widgets
    m_lcd=new QLCDNumber(this);
    m_slider=new QSlider(Qt::Horizontal,this);

    m_lcd->setSegmentStyle(QLCDNumber::Flat);
    m_lcd->move(50,30);

    m_slider->setGeometry(10,60,130,20);
    m_slider->setRange(200,600);

    //Connexion1
    QObject::connect(m_slider,SIGNAL(valueChanged(int)),m_lcd,SLOT(display(int)));
    //Connexion2
    QObject::connect(m_slider,SIGNAL(valueChanged(int)),this,SLOT(changerLargeur(int)));

}

void Fenetre::changerLargeur(int largeur){
    this->setFixedSize(largeur,100);
}
