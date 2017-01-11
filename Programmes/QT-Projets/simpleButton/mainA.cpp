#include <QApplication>

#include "Fenetre.h"

int main(int argc, char* argv[]){
    //debut de programme QT
    QApplication app(argc,argv);
    //Instantiation fenetre allocation dynamique
    Fenetre *f1 =new Fenetre();
    f1->show();

    return app.exec();
}

