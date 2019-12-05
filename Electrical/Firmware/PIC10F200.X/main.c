/* 
 * File:   main.c
 * Author: flyhi
 *
 * Created on December 5, 2019, 11:11 AM
 */
#define _XTAL_FREQ 4000000

// CONFIG
#pragma config WDTE = OFF       // Watchdog Timer (WDT disabled)
#pragma config CP = OFF         // Code Protect (Code protection off)
#pragma config MCLRE = ON       // Master Clear Enable (GP3/MCLR pin function  is MCLR)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

/*
 * 
 */
int main(int argc, char** argv) {
    OSCCALbits.FOSC4 = 0; //disable oscillator output on GP2
    OPTION = 0b10000000;
    TRISGPIO = 0b00000010;
    
    uint8_t ledstate = 0;
    
    uint8_t flashcounter = 0;
    
    
    while(1) {
        
        if (!((GPIO >> 1) & 1U)) {
            //button pressed
            __delay_ms(50);
            if (!((GPIO >> 1) & 1U)) {
                //button has passed de-bounce, this is a press
                uint16_t lengthcount = 0;
                
                while((!((GPIO >> 1) & 1U)) && lengthcount < 2000){
                    //button is being held
                    lengthcount++;
                    __delay_ms(1);
                };
                
                if (lengthcount < 500) {
                    //short press
                    
                    //were we just in emergency mode?
                    if ((ledstate >> 3) & 1U) {
                        //clear emergency and led
                        ledstate &= ~(1UL << 3);
                        ledstate &= ~(1UL << 2);                        
                    } else {
                        //toggle state bit
                        ledstate ^= 1UL << 2;

                        //clear emergency bit
                        ledstate &= ~(1UL << 3);
                    }
                } else {
                    //long press
                    
                    //set emergency bit
                    ledstate |= 1UL << 3;
                }
            }
        }
        
        if ((ledstate >> 3) & 1U) {
            //emergency mode
            if (++flashcounter > 100) {
                flashcounter = 0;
                GPIO ^= 1UL << 2;
            }
            __delay_ms(1);
        } else {
            //not emergency mode
            GPIO ^= (-(!((ledstate >> 2) & 1U)) ^ GPIO) & (1UL << 2);
        }
    }
    
    return (EXIT_SUCCESS);
}

