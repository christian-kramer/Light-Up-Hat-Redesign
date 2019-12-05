/* 
 * File:   main.c
 * Author: Christian Kramer
 *
 * Created on November 15, 2019, 8:45 PM
 */
#define _XTAL_FREQ 8000000
// CONFIG
#pragma config IOSCFS = 8MHZ    // Internal Oscillator Frequency Select bit (8 MHz)
#pragma config MCPU = ON        // Master Clear Pull-up Enable bit (Pull-up enabled)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config CP = OFF         // Code protection bit (Code protection off)
#pragma config MCLRE = ON       // GP3/MCLR Pin Function Select bit (GP3/MCLR pin function is MCLR)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
int main(int argc, char** argv) {

    OPTION = 0b00000000;
    OSCCALbits.FOSC4 = 0; //disable oscillator output on GP2
    TRISGPIO = 0b00000010;
    
    while (1) {
        
        //if ((GPIO >> 1) & 1U) {
            //GPIO ^= 1UL << 2;
        //}
        
        GPIO = 0b00000100;
        __delay_ms(1000);
        GPIO = 0b00000000;
        __delay_ms(1000);
        
    }
    return (EXIT_SUCCESS);
}

