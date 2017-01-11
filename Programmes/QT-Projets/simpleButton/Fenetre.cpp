#include "Fenetre.h"

//Contructeur
Fenetre::Fenetre():QWidget()//Methode herité de  la Mere
{
    this->setFixedSize(200,100);
    //sous-widget1
    m_lcd = new QLCDNumber(this);
    m_lcd->setSegmentStyle(QLCDNumber::Flat);
    m_lcd->move(40,10);
    //sous-widget2
    m_slider=new QSlider(Qt::Horizontal,this);
    m_slider->setRange(100,600);
    m_slider->setGeometry(10,60,150,30);

    //Implementation Slot1
    QObject::connect(m_slider,SIGNAL(valueChanged(int)),this,SLOT(changerLargeur(int)));
}
/*//Destructeur
Fenetre::~Fenetre(){
    delete m_lcd;
    delete m_slider;
}*/
//Slot1
void Fenetre::changerLargeur(int largeur){
    this->setFixedSize(largeur,100);
}
