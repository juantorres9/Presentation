#ifndef MAISON_H
#define MAISON_H
#include<string>


class Maison
{
    public:
        virtual ~Maison();
        //Constructeur sans parametre
        Maison();
        //Constructeur avec parametre
        Maison(std::string,double,int);
        //Methodes
        void decrireMaison();


    protected:

    private:
        std::string m_ville;
        double m_surface;
        int m_piece;
};

#endif // MAISON_H
