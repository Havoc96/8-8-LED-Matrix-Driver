void main() {
    TRISC = 0x00;
    TRISD = 0x00;
    PORTC = 0x00;
    PORTD = 0x00;
    
    while(1){
        PORTC = 0b01111111;
        PORTD = 0b01111111;
        delay_ms(1);

        PORTC = 0b10111111;
        PORTD = 0b11111111;
        delay_ms(1);

        PORTC = 0b11011111;
        PORTD = 0b11001100;
        delay_ms(1);

        PORTC = 0b11101111;
        PORTD = 0b11111111;
        delay_ms(1);

        PORTC = 0b11110111;
        PORTD = 0b01111111;
        delay_ms(1);
    
    }
}