#ifndef PERSONNE_H
#define PERSONNE_H


class Personne
{
    public:
        Personne();
        Personne(std::string nom, double taille);
        virtual ~Personne();
        void changerTaille(double taille);
        void decrirePersonne();


    protected:

    private:
        std::string m_nom;
        double m_taille;
};

#endif // PERSONNE_H
