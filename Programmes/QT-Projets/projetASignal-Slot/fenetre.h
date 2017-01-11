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
    explicit Fenetre(QWidget *parent = 0);
    
signals:
    
public slots:
    void changerLargeur(int largeur);

private:
    QLCDNumber *m_lcd;
    QSlider *m_slider;
};

#endif // FENETRE_H
