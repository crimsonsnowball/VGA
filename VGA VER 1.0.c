#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/cpufunc.h>
#include <avr/pgmspace.h>
#include "Image_Data.h"

// Printing should start from 10th line or 80th byte
// Printing Should end before 484th line or 3871th byte
//unsigned char ARRAY[20] PROGMEM = {0x00,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00};
//unsigned char ARRAY[20] PROGMEM = {0x01,0X03,0X07,0X0f,0X1f,0X3f,0X7f,0X7f};	
int main(void)
{	
	DDRA=0xff;
	DDRB=0xff;
	PORTB=0x00;
	PORTA=0x00;
	/*---------------------------------------------------------------------------
									HSYNC
	----------------------------------------------------------------------------*/
	DDRD |= (1<<PD7);					//SET PD7 AS OUTPUT
	OCR2= 0xDE;							//LOAD COMPARE VALUE
	
	TCCR2 |= (1<<WGM20)|(1<<WGM21);		//SELECT FAST PWM MODE		
	TCCR2 |=(1<<COM21);  				//NON-INVERTED MODE(HIGH at bottom, LOW on Match)
	
	
	GICR|=(1<<INT0);					//ENABLE INT0
	MCUCR|=(1<<ISC00);					//TRIGGER ON RISING EDGE				
	MCUCR|=(1<<ISC01);
    DDRD|=(0<<PD2);						//PD2 AS INPUT FOR INT0
	
	GICR|=(1<<INT1);					//ENABLE INT1
	MCUCSR|=(1<<ISC11);					//TRIGGER ON FALLING EDGE				
	DDRB|=(0<<PD3);						//PD2 AS INPUT FOR INT1
	
	asm("LDI r31,0x00");				//LOAD MEMORY LOCATION POINTER INTO REG Z
	asm("LDI r30,0x54");
	//asm("LDI R18,0xe0");
	//asm("LDI R19,0x01");
		
	/*---------------------------------------------------------------------------
									VSYNC
	----------------------------------------------------------------------------*/			
	TCNT1=0x00;							//LOAD TIMER1
	
	OCR1A = 0x412A;						//SET TOP VALUE IN 16BIT COMPARE REG
	DDRD |= (1<<PD4);					//PWM PIN AS OUTPUT
	
	OCR1B=0x40EB;						//LOAD COMPARE VALUE(TOGGLE PD4 ON MATCH)
	
	TCCR1A|=(1<<COM1B1);				//FAST PWM MODE WITH TOP ORC1A
	TCCR1A|=(1<<WGM10);		
	TCCR1A|=(1<<WGM11);
	TCCR1B|=(1<<WGM12);
	TCCR1B|=(1<<WGM13);
	//---------------
	
	TCCR2 |=(1<<CS20);					//START TIMER2
	TCCR1B|=(1<<CS11);					//START TIMER1
	
	DDRC=0xff;
	sei();
	while(1)
    {
		_NOP();
    }
}