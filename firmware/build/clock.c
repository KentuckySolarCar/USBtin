/********************************************************************
 File: clock.c

 Description:
 This file contains the clock functions.

 Authors and Copyright:
 (c) 2012, Thomas Fischl <tfischl@gmx.de>

 Device: PIC18F14K50
 Compiler: Microchip MPLAB XC8 C Compiler V1.20

 License:
 This file is open source. You can use it or parts of it in own
 open source projects. For closed or commercial projects you have to
 contact the authors listed above to get the permission for using
 this source code.

 ********************************************************************/

#include <htc.h>
#include "clock.h"

unsigned short clock_lastclock;
unsigned short clock_msticker;

/**
 * Initialize clock/timer module
 */
void clock_init() {

    clock_reset();

    // set timer 0 to prescaler 1:32
    T0CON = 0x84;
}

/**
 * Handle clock task. Count milliseconds
 */
void clock_process() {
    if ((unsigned short) (TMR0 - clock_lastclock) > CLOCK_TIMERTICKS_1MS) {
       clock_lastclock += CLOCK_TIMERTICKS_1MS;
       clock_msticker++;
       if (clock_msticker > 60000) clock_msticker = 0;
    }
}

/**
 * Returns the milliseconds since last reset
 *
 * @return milliseconds since last reset
 */
unsigned short clock_getMS() {
    return clock_msticker;
}

/**
 * Reset millisecond counter
 */
void clock_reset() {
    TMR0 = 0;
    clock_lastclock = 0;
    clock_msticker = 0;
}
