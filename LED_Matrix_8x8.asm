
_Display:

;LED_Matrix_8x8.c,30 :: 		void Display(char Letter[]){
;LED_Matrix_8x8.c,42 :: 		PORTC = 0b01111111;
	MOVLW       127
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,43 :: 		PORTD = Letter[0];
	MOVFF       FARG_Display_Letter+0, FSR0
	MOVFF       FARG_Display_Letter+1, FSR0H
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,44 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_Display0:
	DECFSZ      R13, 1, 1
	BRA         L_Display0
	DECFSZ      R12, 1, 1
	BRA         L_Display0
	NOP
;LED_Matrix_8x8.c,46 :: 		PORTC = 0b10111111;
	MOVLW       191
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,47 :: 		PORTD = Letter[1];
	MOVLW       1
	ADDWF       FARG_Display_Letter+0, 0 
	MOVWF       FSR0 
	MOVLW       0
	ADDWFC      FARG_Display_Letter+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,48 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_Display1:
	DECFSZ      R13, 1, 1
	BRA         L_Display1
	DECFSZ      R12, 1, 1
	BRA         L_Display1
	NOP
;LED_Matrix_8x8.c,50 :: 		PORTC = 0b11011111;
	MOVLW       223
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,51 :: 		PORTD = Letter[2];
	MOVLW       2
	ADDWF       FARG_Display_Letter+0, 0 
	MOVWF       FSR0 
	MOVLW       0
	ADDWFC      FARG_Display_Letter+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,52 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_Display2:
	DECFSZ      R13, 1, 1
	BRA         L_Display2
	DECFSZ      R12, 1, 1
	BRA         L_Display2
	NOP
;LED_Matrix_8x8.c,54 :: 		PORTC = 0b11101111;
	MOVLW       239
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,55 :: 		PORTD = Letter[3];
	MOVLW       3
	ADDWF       FARG_Display_Letter+0, 0 
	MOVWF       FSR0 
	MOVLW       0
	ADDWFC      FARG_Display_Letter+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,56 :: 		delay_ms(1);
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
;LED_Matrix_8x8.c,58 :: 		PORTC = 0b11110111;
	MOVLW       247
	MOVWF       PORTC+0 
;LED_Matrix_8x8.c,59 :: 		PORTD = Letter[4];
	MOVLW       4
	ADDWF       FARG_Display_Letter+0, 0 
	MOVWF       FSR0 
	MOVLW       0
	ADDWFC      FARG_Display_Letter+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;LED_Matrix_8x8.c,60 :: 		delay_ms(1);
	MOVLW       6
	MOVWF       R12, 0
	MOVLW       48
	MOVWF       R13, 0
L_Display4:
	DECFSZ      R13, 1, 1
	BRA         L_Display4
	DECFSZ      R12, 1, 1
	BRA         L_Display4
	NOP
;LED_Matrix_8x8.c,62 :: 		}
L_end_Display:
	RETURN      0
; end of _Display

_main:

;LED_Matrix_8x8.c,64 :: 		void main() {
;LED_Matrix_8x8.c,65 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;LED_Matrix_8x8.c,66 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;LED_Matrix_8x8.c,67 :: 		PORTC = 0x00;
	CLRF        PORTC+0 
;LED_Matrix_8x8.c,68 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LED_Matrix_8x8.c,70 :: 		while(1){
L_main5:
;LED_Matrix_8x8.c,71 :: 		Display(LetterA);
	MOVLW       _LetterA+0
	MOVWF       FARG_Display_Letter+0 
	MOVLW       hi_addr(_LetterA+0)
	MOVWF       FARG_Display_Letter+1 
	CALL        _Display+0, 0
;LED_Matrix_8x8.c,73 :: 		}
	GOTO        L_main5
;LED_Matrix_8x8.c,74 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
