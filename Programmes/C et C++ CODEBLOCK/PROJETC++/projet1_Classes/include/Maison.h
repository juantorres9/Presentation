#ifndef MAISON_H
#define MAISON_H


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

        //variable static
        static int nombreMaison;
        //fonction static
        static int showMaisonCompte();
    protected:
    private:
        std::string m_ville;
        double m_surface;
        int m_piece;

};

#endif // MAISON_H
