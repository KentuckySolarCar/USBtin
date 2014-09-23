/********************************************************************
 File: usb_cdc.h

 Description:
 This file contains the USB CDC definitions.

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
#ifndef _USB_CDC_
#define _USB_CDC_

extern void usb_putch(unsigned char ch);
extern void usb_putstr(char * s);
extern unsigned char usb_chReceived();
extern unsigned char usb_getch();
extern void usb_init();
extern void usb_process();
extern void usb_txprocess();

#endif
