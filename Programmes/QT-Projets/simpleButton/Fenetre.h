#ifndef FENETRE_H
#define FENETRE_H

#include <QApplication>
#include <QtWidgets>
#include <QLCDNumber>
#include  <QSlider>

class Fenetre:public  QWidget
{
    Q_OBJECT//Macro oblicatoire
    public:
        Fenetre();
       // virtual ~Fenetre();
    public slots:
        void changerLargeur(int largeur);

    private:
        //Pointeurs sur Widgets
        QLCDNumber * m_lcd;
        QSlider * m_slider;
};
#endif // FENETRE_H
