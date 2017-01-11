#ifndef FENETRE_H
#define FENETRE_H

#include <QWidget>

#include<QApplication>
#include<QPushButton>
#include<QLCDNumber>
#include<QSlider>

class Fenetre : public QWidget
{
    Q_OBJECT
public:
   // explicit Fenetre(QWidget *parent = 0);
    Fenetre();
signals:

public slots:
    void changerLargeur(int largeur);
    void changerLongueur(int longueur);

private:
    QLCDNumber *m_lcdH,*m_lcdV;
    QSlider *m_sliderH,*m_sliderV;
};

#endif // FENETRE_H
