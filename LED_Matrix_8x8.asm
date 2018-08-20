
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
;LED_Matrix_8x8.c,8 :: 		PORTC = 0xFF;
	MOVLW       255
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,9 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,12 :: 		}
	GOTO        L_main0
;LED_Matrix_8x8.c,13 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
