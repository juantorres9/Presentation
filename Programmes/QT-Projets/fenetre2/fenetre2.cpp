#include <QApplication>
#include <QPushButton>
int main(int argc, char* argv[]){
    //debur QT
    QApplication app(argc,argv);
    //creation de buton
    QPushButton bouton("Je suis un bouton");
    //Atributs d'un widget Bouton
    bouton.setText("poussé");
    bouton.setToolTip("bulle d'aide ");
    bouton.show();
    //fin du QT
    return app.exec();
}







