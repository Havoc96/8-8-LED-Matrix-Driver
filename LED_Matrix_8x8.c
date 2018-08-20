void main() {
    TRISC = 0x00;
    TRISD = 0x00;
    PORTC = 0x00;
    PORTD = 0x00;
    
    while(1){
        PORTC = 0b11111110;
        PORTD = 0b11111111;
        delay_ms(1);
        
        PORTC = 0b11111101;
        PORTD = 0b00011000;
        delay_ms(1);
    
        PORTC = 0b11111011;
        PORTD = 0b00100100;
        delay_ms(1);
        
        PORTC = 0b11110111;
        PORTD = 0b01000010;
        delay_ms(1);
        
        PORTC = 0b11101111;
        PORTD = 0b10000001;
        delay_ms(1);
    
    }
}