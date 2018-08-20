
_main:

;LED_Matrix_8x8.c,1 :: 		void main() {
;LED_Matrix_8x8.c,2 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;LED_Matrix_8x8.c,3 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;LED_Matrix_8x8.c,4 :: 		PORTC = 0x00;
	CLRF        PORTC+0 
;LED_Matrix_8x8.c,5 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LED_Matrix_8x8.c,7 :: 		while(1){
L_main0:
;LED_Matrix_8x8.c,8 :: 		PORTC = 0b11111110;
	MOVLW       254
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,9 :: 		PORTD = 0b11111111;
	MOVLW       255
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,10 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	NOP
;LED_Matrix_8x8.c,12 :: 		PORTC = 0b11111101;
	MOVLW       253
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,13 :: 		PORTD = 0b00011000;
	MOVLW       24
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,14 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	NOP
;LED_Matrix_8x8.c,16 :: 		PORTC = 0b11111011;
	MOVLW       251
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,17 :: 		PORTD = 0b00100100;
	MOVLW       36
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,18 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	NOP
;LED_Matrix_8x8.c,20 :: 		PORTC = 0b11110111;
	MOVLW       247
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,21 :: 		PORTD = 0b01000010;
	MOVLW       66
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,22 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	NOP
;LED_Matrix_8x8.c,24 :: 		PORTC = 0b11101111;
	MOVLW       239
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,25 :: 		PORTD = 0b10000001;
	MOVLW       129
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,26 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	NOP
;LED_Matrix_8x8.c,28 :: 		}
	GOTO        L_main0
;LED_Matrix_8x8.c,29 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
