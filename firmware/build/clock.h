/********************************************************************
 File: clock.h

 Description:
 This file contains the clock definitions.

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

#ifndef _CLOCK_
#define _CLOCK_

extern void clock_init();
extern void clock_process();
extern unsigned short clock_getMS();
extern void clock_reset();

#define CLOCK_TIMERTICKS_1MS 375

#endif
