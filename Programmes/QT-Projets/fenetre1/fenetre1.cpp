#include <QApplication>
#include <QPushButton>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QPushButton bouton("Salut les Baudilio, comment tu vas ");
    bouton.show();

    return app.exec();
}
