#include<QApplication>
#include "fenetre.h"

int main(int argc, char* argv[]){
    //debut de programme QT
    QApplication app(argc,argv);
    Fenetre *f1=new Fenetre();
    f1->show();

    return app.exec();
}
