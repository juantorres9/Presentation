#include <avr/io.h>
#include <avr/interrupt.h>
#include "Fonc1.h"


/*******************************OVERFLOW TIMER0 INTERRUPT***********************************/
void t0_overflow_init(void){
	//TCCRO: Control registre 0000 0101=0X05
	TCCR0|=(1<<CS02)|(1<<CS00);//Prescalaire 1MHZ/1024
	//TIMSK:Activation Overflow interrupt timer0
	TIMSK |=(1<<TOIE0);//Overflow interrupt timer0 enable
}
//Overflow timer0 routine d'interruption
ISR(TIMER0_OVF_vect){
	PORTB^=0X01;
}

/*******************************OUTPUT COMPARE A TIMER1 INTERRUPT*************************/ 
void t1_compareA_init(void){ 
  //TTCR1A et TCCR1B: resgistre de control timer 1 
  TCCR1B|=(1<<WGM12)|(1<<CS11)|(1<<CS10);//CTC Mode et prescalaire de 64 
  //TIMSK:Registre Masque d'interruption des Timers 
  TIMSK|=(1<<OCIE1A);//Permet d'activer l'interruption OUTPUT COMPARE A 
  //OCR1A:Registre pour garder la valeur à comparer 
  OCR1A=15625; //1 second 
} 
//Output compare A Timer1 Routine d'interruption 
ISR(TIMER1_COMPA_vect){ 
  PORTB^=0x02; 
  } 
 
/************************************MAIN PROGRAM****************************************/ 
int main(void) 
{ 
  //DDRB=output 
  DDRB=0x03;// 0000 0011 
  //DDRA=output 
  DDRA=0x0F;// 0000 1111 
  //Global interrupt 
  sei();//global interrupt enable; 
  //config  Overflow Timer0 interrupt 
  t0_overflow_init(); 
  //config  Output compare A Timer1 interrupt 
  t1_compareA_init(); 
  while(1){   
    comptage(7); 
    comptage(15); 
  } 
   
  return 0; 
} 
 