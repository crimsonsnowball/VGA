 #include <avr/io.h>
.global INT0_vect

 INT0_vect:		 
			LDI R24,0xFF	
 			//OUT 0x15,R30
			//OUT 0x18,R31
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			
			//1

			LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP2

			//2

LOOP2:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP3

			//3

LOOP3:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP4

			//4

LOOP4:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP5

			//5

LOOP5:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP6

			//6

LOOP6:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP7

			//7

LOOP7:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//DEC R24
			//BRNE LOOP8

			//8

LOOP8:		LPM R16,Z+
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16	
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			LSL R16
			OUT 0x1B,R16
			//LSL R16
			LDI R16,0x00
			OUT 0x1B,R16
			
			DEC R24
			NOP
			
			RETI


.global INT1_vect
INT1_vect:	
			LDI R30,0x54
			LDI R31,0x00
			RETI