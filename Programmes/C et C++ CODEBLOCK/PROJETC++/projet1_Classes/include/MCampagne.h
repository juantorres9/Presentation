#ifndef MCAMPAGNE_H
#define MCAMPAGNE_H
#include<string>
#include "Maison.h"//heritage
class MCampagne :public Maison
{
    public:
        MCampagne();
        MCampagne(std::string,double,int,bool);
        virtual ~MCampagne();
        void decrireMaison();
    protected:
    private:
        bool m_fenceOurs;
};

#endif // MCAMPAGNE_H

