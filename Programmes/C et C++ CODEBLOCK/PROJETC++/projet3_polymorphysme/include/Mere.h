#ifndef MERE_H
#define MERE_H
#include<string>

class Mere
{
    public:
        Mere();
        virtual ~Mere();

        //Attributs
        static const std::string articles[];
        //Methodes
        void decrireArticle();
        double  calculPrixTotal(std::string article);

    protected:

    private:
        const double m_tva=0.19;


};

#endif // MERE_H
