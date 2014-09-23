/********************************************************************
 File: usb_cdc.c

 Description:
 This file contains the USB CDC functions.

 Authors and Copyright:
 (c) 2012-2014, Thomas Fischl <tfischl@gmx.de>

 Device: PIC18F14K50
 Compiler: Microchip MPLAB XC8 C Compiler V1.20

 License:
 This file is open source. You can use it or parts of it in own
 open source projects. For closed or commercial projects you have to
 contact the authors listed above to get the permission for using
 this source code.

 ********************************************************************/
#include <htc.h>
#include "usb_cdc.h"

#define USTAT_EP0_OUT 0x00
#define USTAT_EP0_IN 0x04
#define USTAT_EP2_IN 0x14
#define USTAT_EP3_OUT 0x18
#define USTAT_EP1_IN 0x0C

#define USB_PID_SETUP 0xD

#define REQUEST_GET_STATUS 0x00
#define REQUEST_CLEAR_FEATURE 0x01
#define REQUEST_SET_FEATURE 0x03
#define REQUEST_SET_ADDRESS 0x05
#define REQUEST_GET_DESCRIPTOR 0x06
#define REQUEST_GET_CONFIGURATION 0x08
#define REQUEST_SET_CONFIGURATION 0x09
#define REQUEST_GET_INTERFACE 0x0A
#define REQUEST_SET_INTERFACE 0x11
#define REQUEST_SYNCH_FRAME 0x12

#define REQUEST_SEND_ENCAPSULATED_COMMAND 0x00
#define REQUEST_GET_ENCAPSULATED_RESPONSE 0x01
#define REQUEST_SET_LINE_CODING           0x20
#define REQUEST_GET_LINE_CODING           0x21
#define REQUEST_SET_CONTROL_LINE_STATE    0x22

#define DESCR_DEVICE 0x01
#define DESCR_CONFIG 0x02
#define DESCR_STRING 0x03
#define DESCR_INTERFACE 0x04
#define DESCR_ENDPOINT 0x05

#define EP_BUFFERSIZE_BULK 0x40

typedef struct
{
    unsigned char stat;
    unsigned char cnt;
    unsigned char adrl;
    unsigned char adrh;
} BDT;     

typedef struct
{
	BDT out;
	BDT in;
} EndpointType;


/* USB request type values */
#define USBRQ_TYPE_MASK         0x60
#define USBRQ_TYPE_STANDARD     (0<<5)
#define USBRQ_TYPE_CLASS        (1<<5)
#define USBRQ_TYPE_VENDOR       (2<<5)

const unsigned char usb_dev_desc[] = {
	18,
	0x01,
	0x00, 0x02,	
	0x02, // Class code
	0x00,	
	0x00,	
	0x08, // max packet size
	0xd8, 0x04, // vendor
	0x0a, 0x00, // product
	0x00, 0x01, // device release
	0x01, // manuf string
	0x02, // product string
	0x00, // serial number string
	0x01
};

const unsigned char usb_config_desc[] = {
/*Configuation Descriptor*/
        0x09,   /* bLength: Configuation Descriptor size */
        DESCR_CONFIG,      /* bDescriptorType: Configuration */
        9+9+5+5+4+5+7+9+7+7,       /* wTotalLength:no of returned bytes */
        0x00,
        0x02,   /* bNumInterfaces: 2 interface */
        0x01,   /* bConfigurationValue: Configuration value */
        0x00,   /* iConfiguration: Index of string descriptor describing the configuration */
        0x80,   /* bmAttributes: bus powered */
        50,     /* MaxPower 100 mA */
/*Interface Descriptor*/
        0x09,   /* bLength: Interface Descriptor size */
        DESCR_INTERFACE,  /* bDescriptorType: Interface */
                        /* Interface descriptor type */
        0x00,   /* bInterfaceNumber: Number of Interface */
        0x00,   /* bAlternateSetting: Alternate setting */
        0x01,   /* bNumEndpoints: One endpoints used */
        0x02,   /* bInterfaceClass: Communication Interface Class */
        0x02,   /* bInterfaceSubClass: Abstract Control Model */
        0x01,   /* bInterfaceProtocol: Common AT commands */
        0x00,   /* iInterface: */
/*Header Functional Descriptor*/
        0x05,   /* bLength: Endpoint Descriptor size */
        0x24,   /* bDescriptorType: CS_INTERFACE */
        0x00,   /* bDescriptorSubtype: Header Func Desc */
        0x10,   /* bcdCDC: spec release number */
        0x01,

/*ACM Functional Descriptor*/
        0x04,   /* bFunctionLength */
        0x24,   /* bDescriptorType: CS_INTERFACE */
        0x02,   /* bDescriptorSubtype: Abstract Control Management desc */
        0x02,   /* bmCapabilities */ 

/*Union Functional Descriptor*/
        0x05,   /* bFunctionLength */
        0x24,   /* bDescriptorType: CS_INTERFACE */
        0x06,   /* bDescriptorSubtype: Union func desc */
        0x00,   /* bMasterInterface: Communication class interface */
        0x01,   /* bSlaveInterface0: Data Class Interface */

/*Call Managment Functional Descriptor*/
        0x05,   /* bFunctionLength */
        0x24,   /* bDescriptorType: CS_INTERFACE */
        0x01,   /* bDescriptorSubtype: Call Management Func Desc */
        0x00,   /* bmCapabilities: D0+D1 */
        0x01,   /* bDataInterface: 1 */


/*Endpoint 2 Descriptor*/
        0x07,   /* bLength: Endpoint Descriptor size */
        DESCR_ENDPOINT,   /* bDescriptorType: Endpoint */
        0x82,   /* bEndpointAddress: (IN2) */
        0x03,   /* bmAttributes: Interrupt */
        0x08,      /* wMaxPacketSize: ???????????????????? */
        0x00,
        0x02,   /* bInterval: */
/*Data class interface descriptor*/
        0x09,   /* bLength: Endpoint Descriptor size */
        DESCR_INTERFACE,  /* bDescriptorType: */
        0x01,   /* bInterfaceNumber: Number of Interface */
        0x00,   /* bAlternateSetting: Alternate setting */
        0x02,   /* bNumEndpoints: Two endpoints used */
        0x0A,   /* bInterfaceClass: CDC */
        0x00,   /* bInterfaceSubClass: */
        0x00,   /* bInterfaceProtocol: */
        0x00,   /* iInterface: */
/*Endpoint 3 Descriptor*/
        0x07,   /* bLength: Endpoint Descriptor size */
        DESCR_ENDPOINT,   /* bDescriptorType: Endpoint */
        0x03,   /* bEndpointAddress: (OUT3) */
        0x02,   /* bmAttributes: Bulk */
        0x08,             /* wMaxPacketSize: */
        0x00,
        0x00,   /* bInterval: ignore for Bulk transfer */
/*Endpoint 1 Descriptor*/
        0x07,   /* bLength: Endpoint Descriptor size */
        DESCR_ENDPOINT,   /* bDescriptorType: Endpoint */
        0x81,   /* bEndpointAddress: (IN1) */
        0x02,   /* bmAttributes: Bulk */
        EP_BUFFERSIZE_BULK,  /* wMaxPacketSize: */
        0x00,
        0x00    /* bInterval: ignore for Bulk transfer */
};

const unsigned char usb_string_0[] = {
    4, // length
    0x03, // descriptor type
    0x09, 0x04, // english
};

const unsigned char usb_string_manuf[] = {
	0x36,	
	0x03,	// type
	'M', 0x00, 
	'i', 0x00, 
	'c', 0x00, 
	'r', 0x00, 
	'o', 0x00, 
	'c', 0x00, 
	'h', 0x00, 
	'i', 0x00, 
	'p', 0x00, 
	' ', 0x00,
	'T', 0x00, 
	'e', 0x00, 
	'c', 0x00, 
	'h', 0x00, 
	'n', 0x00, 
	'o', 0x00, 
	'l', 0x00, 
	'o', 0x00, 
	'g', 0x00, 
	'y', 0x00, 
	',', 0x00, 
	' ', 0x00,
	'I', 0x00, 
	'n', 0x00, 
	'c', 0x00, 
	'.', 0x00
};

const unsigned char usb_string_product[] = {
    14,
    0x03, // type
    'U', 0x00,
    'S', 0x00,
    'B', 0x00,
    't', 0x00,
    'i', 0x00,
    'n', 0x00
};



#define EP_MAX 4
#define EP_BUFFERSIZE 0x08
#define TXBUFFER_SIZE 128

volatile EndpointType ep[EP_MAX] @ 0x200;
volatile unsigned char ep0out_buffer[EP_BUFFERSIZE] @ 0x280;
volatile unsigned char ep0in_buffer[EP_BUFFERSIZE] @ 0x288;
volatile unsigned char ep2in_buffer[EP_BUFFERSIZE] @ 0x298;
volatile unsigned char ep3out_buffer[EP_BUFFERSIZE] @ 0x2A0;
volatile unsigned char ep1in_buffer[EP_BUFFERSIZE_BULK] @ 0x2A8;


unsigned configured = 0;
unsigned char usb_config = 0;
unsigned char usb_setaddress = 0;
unsigned short usb_sendleft = 0;
const unsigned char * usb_sendbuffer;

unsigned char txbuffer[TXBUFFER_SIZE];
unsigned char txbuffer_writepos = 0;
unsigned char txbuffer_bytesleft = 0;
unsigned char usb_getchpos = 0;
unsigned char linecoding[7];
unsigned char dolinecoding = 0;


/**
 * Process pending send activity
 */
void usb_sendProcess() {
    if (usb_sendleft == 0) return;
    
    unsigned short length = usb_sendleft; 
    if (length > EP_BUFFERSIZE)
        length = EP_BUFFERSIZE;

    unsigned char i;
    for (i = 0; i < length; i++) {
        ep0in_buffer[i] = *usb_sendbuffer;
        usb_sendbuffer ++;
        usb_sendleft--;
    }

    ep[0].in.cnt = length;
    if (ep[0].in.stat & 0x40)
        ep[0].in.stat = 0x88;
    else
        ep[0].in.stat = 0xC8;    
}

/**
 * Load given descriptor buffer into send buffer
 *
 * @param descbuffer Pointer to descriptor
 * @param size Size of descriptor
 * @param length Count of bytes to send
 * @return 0 on error, 1 on success
 */
unsigned char usb_loadDescriptor(const unsigned char * descbuffer, unsigned short size, unsigned short length) {

    if (length > size)
        length = size;

    usb_sendleft = length;
    usb_sendbuffer = descbuffer;

    usb_sendProcess();
    return length;
}

/**
 * Handle descriptor requests
 *
 * @param type Type of descriptor
 * @param index Index of descriptor
 * @param length Requested length
 * @return 0 on error, 1 on success
 */
unsigned char usb_handleDescriptorRequest(unsigned char type, unsigned char index, unsigned short length) {

    switch (type) {
        case DESCR_DEVICE:
            return usb_loadDescriptor(usb_dev_desc, sizeof(usb_dev_desc), length);
        case DESCR_CONFIG:
            return usb_loadDescriptor(usb_config_desc, sizeof(usb_config_desc), length);
        case DESCR_STRING:
            switch (index) {
                case 0: return usb_loadDescriptor(usb_string_0, sizeof(usb_string_0), length);
                case 1: return usb_loadDescriptor(usb_string_manuf, sizeof(usb_string_manuf), length);            
                case 2: return usb_loadDescriptor(usb_string_product, sizeof(usb_string_product), length);            
            }
    }

    return 0;
}

/**
 * Put given character into send buffer
 *
 * @param ch Character to send
 */
void usb_putch(unsigned char ch) {

    if (txbuffer_bytesleft == TXBUFFER_SIZE) {
        // overflow!
        return;
    }

    txbuffer[txbuffer_writepos] = ch;
    txbuffer_writepos++;
    if (txbuffer_writepos == TXBUFFER_SIZE) txbuffer_writepos = 0;
    txbuffer_bytesleft++;

    // trigger sending
    usb_process();
}

/**
 * Put given nullterminated string into send buffer
 *
 * @param s String to send
 */
void usb_putstr(char * s) {
   while (*s) {
     usb_putch((unsigned char) *s);
     s++;
   }
}

/**
 * Handle pending transmition
 */
void usb_txprocess() {
    if (txbuffer_bytesleft == 0) return;
    if (!configured) return;
    if (ep[1].in.stat & 0x80) return;

    unsigned char count = txbuffer_bytesleft;
    if (count > EP_BUFFERSIZE_BULK - 1) count = EP_BUFFERSIZE_BULK - 1;

    unsigned char readpos = (TXBUFFER_SIZE + txbuffer_writepos - txbuffer_bytesleft) % TXBUFFER_SIZE;    

    unsigned char i;
    for (i = 0; i < count; i++) {
        ep1in_buffer[i] = txbuffer[readpos];
        readpos ++;
        if (readpos == TXBUFFER_SIZE) readpos = 0;
    } 

    ep[1].in.cnt = count;
    txbuffer_bytesleft -= count;

    if (ep[1].in.stat & 0x40)
        ep[1].in.stat = 0x88;
    else
        ep[1].in.stat = 0xC8;
}

/**
 * Determine if there are received characters
 *
 * @retval 1 if there are characters in the receive buffer
 * @retval 0 receive buffer empty
 */
unsigned char usb_chReceived() {
    return (ep[3].out.stat & 0x80) == 0;
}

/**
 * Read character from receive buffer
 *
 * @return Character read from receive buffer
 */
unsigned char usb_getch() {
    while (!usb_chReceived) {}

    unsigned char ch = ep3out_buffer[usb_getchpos];
    usb_getchpos++;
    if (usb_getchpos == ep[3].out.cnt) {
        ep[3].out.cnt = EP_BUFFERSIZE;
        ep[3].out.stat = 0x80;
        usb_getchpos = 0;
    }
    return ch;
}

/**
 * Initialize USB module
 */
void usb_init() {
    ep[0].out.stat = 0x80;
    ep[0].out.cnt = EP_BUFFERSIZE;
    ep[0].out.adrl = 0x80;
    ep[0].out.adrh = 0x02;

    ep[0].in.stat = 0;
    ep[0].in.cnt = EP_BUFFERSIZE;
    ep[0].in.adrl = 0x88;
    ep[0].in.adrh = 0x02;

    ep[1].in.stat = 0x40;
    ep[1].in.cnt = EP_BUFFERSIZE_BULK;
    ep[1].in.adrl = 0xA8;
    ep[1].in.adrh = 0x02;

    ep[2].in.stat = 0;
    ep[2].in.cnt = EP_BUFFERSIZE;
    ep[2].in.adrl = 0x98;
    ep[2].in.adrh = 0x02;

    ep[3].out.stat = 0x80;
    ep[3].out.cnt = EP_BUFFERSIZE;
    ep[3].out.adrl = 0xA0;
    ep[3].out.adrh = 0x02;

    UEP0 = 0x16;
    UEP1 = 0x1A;
    UEP2 = 0x1A;
    UEP3 = 0x1C;

    UCFG = 0x14;
    UCON = 0x08;
}


/**
 * Do USB processing
 */
void usb_process() {

    usb_txprocess();

    if (UIRbits.TRNIF) {
        // complete interrupt

            if (USTAT == USTAT_EP0_OUT) {

                    // out/setup

                    if (((ep[0].out.stat >> 2) & 0x0F) == USB_PID_SETUP) {
                        // setup token

                        ep[0].in.stat = 0;
                        ep[0].in.stat = 0;

			if ((ep0out_buffer[0] & USBRQ_TYPE_MASK) == USBRQ_TYPE_STANDARD) {

		                switch (ep0out_buffer[1]) {
		                    case REQUEST_GET_DESCRIPTOR:
		                        if (!usb_handleDescriptorRequest(ep0out_buffer[3], ep0out_buffer[2] , (ep0out_buffer[7] << 8) | ep0out_buffer[6])) {
                                            ep[0].in.cnt = 0;
		                            ep[0].in.stat = 0xCC; // Stall
                                        }
		                        break;
		                    case REQUEST_SET_ADDRESS:

		                        usb_setaddress = ep0out_buffer[2];

		                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xC8;

		                        break;
		                    case REQUEST_SET_CONFIGURATION:

		                        usb_config = ep0out_buffer[2];
                                        configured = 1;
		                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xC8;
		                        break;

		                    case REQUEST_GET_CONFIGURATION:

		                        ep0in_buffer[0] = usb_config;
		                        ep[0].in.cnt = 1;                         
                                        ep[0].in.stat = 0xC8;    
		                        break;

		                    case REQUEST_GET_INTERFACE:

		                        ep0in_buffer[0] = 0;
		                        ep[0].in.cnt = 1;                         
                                        ep[0].in.stat = 0xC8;    
		                        break;

                                    case REQUEST_SYNCH_FRAME:
                                    case REQUEST_GET_STATUS:
                                        ep0in_buffer[0] = 0;
                                        ep0in_buffer[1] = 0;
		                        ep[0].in.cnt = 2;
		                        ep[0].in.stat = 0xC8;
                                        break;

                                    case REQUEST_SET_INTERFACE:
                                    case REQUEST_CLEAR_FEATURE:
                                    case REQUEST_SET_FEATURE:
                                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xC8;
		                        break;
		                    default:		                                       
		                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xCC; // stall
		                        break;
		                        
		                }
			} else if ((ep0out_buffer[0] & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
                                switch (ep0out_buffer[1]) {
		                    
                                    case REQUEST_GET_ENCAPSULATED_RESPONSE:
                                        {unsigned char i; for (i=0; i<8; i++) {ep0in_buffer[i] = 0;}};
		                        ep[0].in.cnt = 8;
		                        ep[0].in.stat = 0xC8;
                                        break;                          

				    case REQUEST_SET_LINE_CODING:
                                        dolinecoding = 1;
                                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xC8;
		                        break;

                                    case REQUEST_GET_LINE_CODING:
                                        {
                                            unsigned char i;
                                            for (i = 0; i < sizeof(linecoding); i++) {
                                                ep0in_buffer[i] = linecoding[i];
                                            }
                                        }
                                        ep[0].in.cnt = 7;
		                        ep[0].in.stat = 0xC8;
		                        break;

                                    case REQUEST_SET_CONTROL_LINE_STATE:
                                    case REQUEST_SEND_ENCAPSULATED_COMMAND:
                                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xC8;
		                        break;
		                    default:
		                        ep[0].in.cnt = 0;
		                        ep[0].in.stat = 0xCC; // Stall
		                        break;
                                }
                       }


                    } else {
                          // data stage

                          if (dolinecoding) {
                              unsigned char i;
                              for (i = 0; i < sizeof(linecoding); i++) {
                                  linecoding[i] = ep0out_buffer[i];
                              }
                              dolinecoding = 0;
                          }
                    }

                    ep[0].out.cnt = EP_BUFFERSIZE;
                    ep[0].out.stat = 0x80;

            } else if (USTAT == USTAT_EP0_IN) {

                // check if set address command is pending
                if (usb_setaddress > 0) {
                    UADDR = usb_setaddress;
                    usb_setaddress = 0;
                }
               
                usb_sendProcess();

            }

            UCONbits.PKTDIS = 0;
            UIRbits.TRNIF = 0;
        }
}

