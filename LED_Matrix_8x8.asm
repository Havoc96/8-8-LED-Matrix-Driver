
_Display:

;LED_Matrix_8x8.c,30 :: 		void Display(char Letter[]){
;LED_Matrix_8x8.c,33 :: 		for(i=0; i<5; i++){
	CLRF        R2 
L_Display0:
	MOVLW       5
	SUBWF       R2, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_Display1
;LED_Matrix_8x8.c,34 :: 		PORTC = 0xFF;
	MOVLW       255
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,35 :: 		PORTC &= ~(1<<(7-i));
	MOVF        R2, 0 
	SUBLW       7
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__Display7:
	BZ          L__Display8
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__Display7
L__Display8:
	COMF        R0, 1 
	MOVF        R0, 0 
	ANDWF       PORTC+0, 1 
;LED_Matrix_8x8.c,36 :: 		PORTD = Letter[i];
	MOVF        R2, 0 
	ADDWF       FARG_Display_Letter+0, 0 
	MOVWF       FSR0 
	MOVLW       0
	ADDWFC      FARG_Display_Letter+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,37 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_Display3:
	DECFSZ      R13, 1, 1
	BRA         L_Display3
	DECFSZ      R12, 1, 1
	BRA         L_Display3
	NOP
;LED_Matrix_8x8.c,33 :: 		for(i=0; i<5; i++){
	INCF        R2, 1 
;LED_Matrix_8x8.c,40 :: 		}
	GOTO        L_Display0
L_Display1:
;LED_Matrix_8x8.c,63 :: 		}
L_end_Display:
	RETURN      0
; end of _Display

_main:

;LED_Matrix_8x8.c,65 :: 		void main() {
;LED_Matrix_8x8.c,66 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;LED_Matrix_8x8.c,67 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;LED_Matrix_8x8.c,68 :: 		PORTC = 0x00;
	CLRF        PORTC+0 
;LED_Matrix_8x8.c,69 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LED_Matrix_8x8.c,71 :: 		while(1){
L_main4:
;LED_Matrix_8x8.c,72 :: 		Display(LetterA);
	MOVLW       _LetterA+0
	MOVWF       FARG_Display_Letter+0 
	MOVLW       hi_addr(_LetterA+0)
	MOVWF       FARG_Display_Letter+1 
	CALL        _Display+0, 0
;LED_Matrix_8x8.c,74 :: 		}
	GOTO        L_main4
;LED_Matrix_8x8.c,75 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
