#ifndef FONC1_C_INCLUDED
#define FONC1_C_INCLUDED
#include <avr/io.h>
#include <util/delay.h>
#include "Fonc1.h"

//definition fonction1
void affichePortA(int nombre){
	if(nombre>0x0F){
	PORTA=00;
	}else{
	PORTA=nombre;//conversion
	}
}
//definition fonction2
void comptage(int nombre){
	for(int i=0;i<=nombre;i++){
		affichePortA(i);
		_delay_ms(2000);
	}
}
#endif//FONC1_C_INCLUDED

