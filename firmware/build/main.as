opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	18F14K50
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 180 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 311 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 442 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 573 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 835 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 966 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1097 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1147 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1210 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1279 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1318 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1368 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIE equ 0F60h ;# 
# 1423 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIR equ 0F62h ;# 
# 1540 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1590 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCON equ 0F64h ;# 
# 1640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1771 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1840 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1901 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1970 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1975 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2107 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2138 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2170 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2208 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2252 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2290 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2334 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2371 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2507 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2658 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2954 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATA equ 0F89h ;# 
# 3060 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3169 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3301 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3306 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3511 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3516 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3732 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3801 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3874 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3947 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4020 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4085 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4150 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4353 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4358 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4562 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4567 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4859 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4864 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4870 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4875 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4886 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4892 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4898 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5006 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5012 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5018 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5024 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5105 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5174 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5339 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5459 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5464 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5599 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5679 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5760 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5766 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5772 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5848 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5894 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6016 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6022 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6028 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6034 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6095 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6164 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6403 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6409 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6415 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6490 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6600 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6716 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6722 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6854 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6912 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6990 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7059 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7065 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7071 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7077 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7155 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7161 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7167 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7173 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7185 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7191 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7197 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7203 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7209 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7221 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7227 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7233 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7239 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7245 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7251 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7257 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7268 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7274 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7298 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7304 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7310 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7316 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7407 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7476 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7622 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7628 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7634 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7648 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7654 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7660 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7666 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7674 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7681 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PC equ 0FF9h ;# 
# 7687 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7693 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7699 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7705 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7784 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7790 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7796 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 180 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 311 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 442 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 573 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 835 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 966 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1097 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1147 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1210 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1279 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1318 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1368 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIE equ 0F60h ;# 
# 1423 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIR equ 0F62h ;# 
# 1540 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1590 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCON equ 0F64h ;# 
# 1640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1771 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1840 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1901 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1970 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1975 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2107 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2138 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2170 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2208 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2252 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2290 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2334 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2371 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2507 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2658 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2954 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATA equ 0F89h ;# 
# 3060 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3169 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3301 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3306 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3511 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3516 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3732 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3801 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3874 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3947 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4020 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4085 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4150 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4353 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4358 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4562 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4567 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4859 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4864 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4870 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4875 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4886 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4892 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4898 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5006 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5012 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5018 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5024 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5105 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5174 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5339 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5459 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5464 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5599 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5679 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5760 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5766 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5772 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5848 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5894 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6016 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6022 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6028 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6034 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6095 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6164 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6403 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6409 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6415 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6490 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6600 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6716 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6722 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6854 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6912 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6990 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7059 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7065 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7071 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7077 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7155 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7161 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7167 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7173 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7185 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7191 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7197 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7203 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7209 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7221 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7227 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7233 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7239 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7245 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7251 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7257 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7268 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7274 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7298 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7304 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7310 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7316 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7407 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7476 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7622 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7628 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7634 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7648 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7654 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7660 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7666 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7674 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7681 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PC equ 0FF9h ;# 
# 7687 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7693 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7699 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7705 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7784 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7790 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7796 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 180 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 311 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 442 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 573 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 835 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 966 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1097 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1147 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1210 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1279 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1318 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1368 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIE equ 0F60h ;# 
# 1423 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIR equ 0F62h ;# 
# 1540 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1590 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCON equ 0F64h ;# 
# 1640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1771 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1840 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1901 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1970 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1975 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2107 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2138 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2170 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2208 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2252 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2290 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2334 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2371 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2507 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2658 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2954 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATA equ 0F89h ;# 
# 3060 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3169 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3301 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3306 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3511 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3516 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3732 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3801 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3874 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3947 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4020 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4085 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4150 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4353 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4358 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4562 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4567 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4859 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4864 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4870 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4875 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4886 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4892 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4898 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5006 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5012 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5018 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5024 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5105 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5174 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5339 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5459 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5464 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5599 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5679 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5760 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5766 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5772 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5848 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5894 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6016 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6022 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6028 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6034 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6095 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6164 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6403 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6409 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6415 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6490 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6600 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6716 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6722 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6854 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6912 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6990 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7059 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7065 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7071 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7077 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7155 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7161 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7167 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7173 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7185 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7191 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7197 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7203 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7209 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7221 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7227 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7233 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7239 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7245 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7251 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7257 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7268 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7274 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7298 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7304 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7310 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7316 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7407 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7476 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7622 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7628 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7634 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7648 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7654 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7660 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7666 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7674 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7681 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PC equ 0FF9h ;# 
# 7687 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7693 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7699 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7705 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7784 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7790 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7796 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP0 equ 0F53h ;# 
# 180 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP1 equ 0F54h ;# 
# 311 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP2 equ 0F55h ;# 
# 442 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP3 equ 0F56h ;# 
# 573 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP4 equ 0F57h ;# 
# 704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP5 equ 0F58h ;# 
# 835 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP6 equ 0F59h ;# 
# 966 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEP7 equ 0F5Ah ;# 
# 1097 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIE equ 0F5Bh ;# 
# 1147 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UADDR equ 0F5Ch ;# 
# 1210 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRML equ 0F5Dh ;# 
# 1279 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UFRMH equ 0F5Eh ;# 
# 1318 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UEIR equ 0F5Fh ;# 
# 1368 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIE equ 0F60h ;# 
# 1423 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCFG equ 0F61h ;# 
# 1485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UIR equ 0F62h ;# 
# 1540 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
USTAT equ 0F63h ;# 
# 1590 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
UCON equ 0F64h ;# 
# 1640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON0 equ 0F68h ;# 
# 1710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SRCON1 equ 0F69h ;# 
# 1771 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON0 equ 0F6Bh ;# 
# 1840 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM2CON1 equ 0F6Ch ;# 
# 1901 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CM1CON0 equ 0F6Dh ;# 
# 1970 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMSK equ 0F6Fh ;# 
# 1975 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPMASK equ 0F6Fh ;# 
# 2107 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SLRCON equ 0F76h ;# 
# 2138 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUA equ 0F77h ;# 
# 2170 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WPUB equ 0F78h ;# 
# 2208 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCA equ 0F79h ;# 
# 2252 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IOCB equ 0F7Ah ;# 
# 2290 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSEL equ 0F7Eh ;# 
# 2334 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ANSELH equ 0F7Fh ;# 
# 2371 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTA equ 0F80h ;# 
# 2507 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTB equ 0F81h ;# 
# 2658 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PORTC equ 0F82h ;# 
# 2954 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATA equ 0F89h ;# 
# 3060 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATB equ 0F8Ah ;# 
# 3169 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
LATC equ 0F8Bh ;# 
# 3301 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISA equ 0F92h ;# 
# 3306 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRA equ 0F92h ;# 
# 3382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISB equ 0F93h ;# 
# 3387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRB equ 0F93h ;# 
# 3511 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TRISC equ 0F94h ;# 
# 3516 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
DDRC equ 0F94h ;# 
# 3732 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCTUNE equ 0F9Bh ;# 
# 3801 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE1 equ 0F9Dh ;# 
# 3874 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR1 equ 0F9Eh ;# 
# 3947 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR1 equ 0F9Fh ;# 
# 4020 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIE2 equ 0FA0h ;# 
# 4085 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PIR2 equ 0FA1h ;# 
# 4150 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
IPR2 equ 0FA2h ;# 
# 4215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON1 equ 0FA6h ;# 
# 4280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EECON2 equ 0FA7h ;# 
# 4286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEDATA equ 0FA8h ;# 
# 4292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
EEADR equ 0FA9h ;# 
# 4353 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA equ 0FABh ;# 
# 4358 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCSTA1 equ 0FABh ;# 
# 4562 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA equ 0FACh ;# 
# 4567 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXSTA1 equ 0FACh ;# 
# 4859 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG equ 0FADh ;# 
# 4864 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TXREG1 equ 0FADh ;# 
# 4870 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG equ 0FAEh ;# 
# 4875 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCREG1 equ 0FAEh ;# 
# 4881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG equ 0FAFh ;# 
# 4886 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRG1 equ 0FAFh ;# 
# 4892 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SPBRGH equ 0FB0h ;# 
# 4898 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T3CON equ 0FB1h ;# 
# 5006 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3 equ 0FB2h ;# 
# 5012 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3L equ 0FB2h ;# 
# 5018 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR3H equ 0FB3h ;# 
# 5024 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ECCP1AS equ 0FB6h ;# 
# 5105 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PWM1CON equ 0FB7h ;# 
# 5174 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCON equ 0FB8h ;# 
# 5179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BAUDCTL equ 0FB8h ;# 
# 5339 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PSTRCON equ 0FB9h ;# 
# 5382 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON0 equ 0FBAh ;# 
# 5387 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON0 equ 0FBAh ;# 
# 5459 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON1 equ 0FBBh ;# 
# 5464 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON1 equ 0FBBh ;# 
# 5594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
REFCON2 equ 0FBCh ;# 
# 5599 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
VREFCON2 equ 0FBCh ;# 
# 5679 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCP1CON equ 0FBDh ;# 
# 5760 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1 equ 0FBEh ;# 
# 5766 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1L equ 0FBEh ;# 
# 5772 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
CCPR1H equ 0FBFh ;# 
# 5778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON2 equ 0FC0h ;# 
# 5848 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON1 equ 0FC1h ;# 
# 5894 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADCON0 equ 0FC2h ;# 
# 6016 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRES equ 0FC3h ;# 
# 6022 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESL equ 0FC3h ;# 
# 6028 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
ADRESH equ 0FC4h ;# 
# 6034 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON2 equ 0FC5h ;# 
# 6095 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPCON1 equ 0FC6h ;# 
# 6164 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPSTAT equ 0FC7h ;# 
# 6403 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPADD equ 0FC8h ;# 
# 6409 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
SSPBUF equ 0FC9h ;# 
# 6415 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T2CON equ 0FCAh ;# 
# 6485 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PR2 equ 0FCBh ;# 
# 6490 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
MEMCON equ 0FCBh ;# 
# 6594 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR2 equ 0FCCh ;# 
# 6600 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T1CON equ 0FCDh ;# 
# 6704 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1 equ 0FCEh ;# 
# 6710 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1L equ 0FCEh ;# 
# 6716 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR1H equ 0FCFh ;# 
# 6722 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
RCON equ 0FD0h ;# 
# 6854 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WDTCON equ 0FD1h ;# 
# 6881 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON2 equ 0FD2h ;# 
# 6912 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
OSCCON equ 0FD3h ;# 
# 6990 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
T0CON equ 0FD5h ;# 
# 7059 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0 equ 0FD6h ;# 
# 7065 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0L equ 0FD6h ;# 
# 7071 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TMR0H equ 0FD7h ;# 
# 7077 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STATUS equ 0FD8h ;# 
# 7155 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2 equ 0FD9h ;# 
# 7161 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2L equ 0FD9h ;# 
# 7167 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR2H equ 0FDAh ;# 
# 7173 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW2 equ 0FDBh ;# 
# 7179 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC2 equ 0FDCh ;# 
# 7185 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC2 equ 0FDDh ;# 
# 7191 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC2 equ 0FDEh ;# 
# 7197 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF2 equ 0FDFh ;# 
# 7203 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
BSR equ 0FE0h ;# 
# 7209 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1 equ 0FE1h ;# 
# 7215 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1L equ 0FE1h ;# 
# 7221 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR1H equ 0FE2h ;# 
# 7227 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW1 equ 0FE3h ;# 
# 7233 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC1 equ 0FE4h ;# 
# 7239 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC1 equ 0FE5h ;# 
# 7245 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC1 equ 0FE6h ;# 
# 7251 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF1 equ 0FE7h ;# 
# 7257 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
WREG equ 0FE8h ;# 
# 7268 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0 equ 0FE9h ;# 
# 7274 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0L equ 0FE9h ;# 
# 7280 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
FSR0H equ 0FEAh ;# 
# 7286 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PLUSW0 equ 0FEBh ;# 
# 7292 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PREINC0 equ 0FECh ;# 
# 7298 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTDEC0 equ 0FEDh ;# 
# 7304 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
POSTINC0 equ 0FEEh ;# 
# 7310 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INDF0 equ 0FEFh ;# 
# 7316 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON3 equ 0FF0h ;# 
# 7407 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON2 equ 0FF1h ;# 
# 7476 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
INTCON equ 0FF2h ;# 
# 7622 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PROD equ 0FF3h ;# 
# 7628 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODL equ 0FF3h ;# 
# 7634 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PRODH equ 0FF4h ;# 
# 7640 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TABLAT equ 0FF5h ;# 
# 7648 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTR equ 0FF6h ;# 
# 7654 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRL equ 0FF6h ;# 
# 7660 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRH equ 0FF7h ;# 
# 7666 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TBLPTRU equ 0FF8h ;# 
# 7674 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLAT equ 0FF9h ;# 
# 7681 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PC equ 0FF9h ;# 
# 7687 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCL equ 0FF9h ;# 
# 7693 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATH equ 0FFAh ;# 
# 7699 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
PCLATU equ 0FFBh ;# 
# 7705 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
STKPTR equ 0FFCh ;# 
# 7778 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOS equ 0FFDh ;# 
# 7784 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSL equ 0FFDh ;# 
# 7790 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSH equ 0FFEh ;# 
# 7796 "/opt/microchip/xc8/v1.33/include/pic18f14k50.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_clock_getMS
	FNCALL	_main,_clock_init
	FNCALL	_main,_clock_process
	FNCALL	_main,_mcp2515_init
	FNCALL	_main,_mcp2515_receive_message
	FNCALL	_main,_parseLine
	FNCALL	_main,_sendHex
	FNCALL	_main,_usb_chReceived
	FNCALL	_main,_usb_getch
	FNCALL	_main,_usb_init
	FNCALL	_main,_usb_process
	FNCALL	_main,_usb_putch
	FNCALL	_parseLine,_clock_reset
	FNCALL	_parseLine,_mcp2515_bit_modify
	FNCALL	_parseLine,_mcp2515_read_register
	FNCALL	_parseLine,_mcp2515_set_SJA1000_filter_code
	FNCALL	_parseLine,_mcp2515_set_SJA1000_filter_mask
	FNCALL	_parseLine,_mcp2515_set_bittiming
	FNCALL	_parseLine,_mcp2515_write_register
	FNCALL	_parseLine,_parseHex
	FNCALL	_parseLine,_sendByteHex
	FNCALL	_parseLine,_sendHex
	FNCALL	_parseLine,_transmitStd
	FNCALL	_parseLine,_usb_putch
	FNCALL	_transmitStd,_mcp2515_send_message
	FNCALL	_transmitStd,_parseHex
	FNCALL	_mcp2515_send_message,_mcp2515_read_status
	FNCALL	_mcp2515_send_message,_spi_transmit
	FNCALL	_mcp2515_read_status,_spi_transmit
	FNCALL	_sendByteHex,_sendHex
	FNCALL	_sendHex,_usb_putstr
	FNCALL	_usb_putstr,_usb_putch
	FNCALL	_usb_putch,_usb_process
	FNCALL	_usb_process,_usb_handleDescriptorRequest
	FNCALL	_usb_process,_usb_sendProcess
	FNCALL	_usb_process,_usb_txprocess
	FNCALL	_usb_handleDescriptorRequest,_usb_loadDescriptor
	FNCALL	_usb_loadDescriptor,_usb_sendProcess
	FNCALL	_mcp2515_set_bittiming,_mcp2515_write_register
	FNCALL	_mcp2515_set_SJA1000_filter_mask,_mcp2515_write_register
	FNCALL	_mcp2515_set_SJA1000_filter_code,_mcp2515_write_register
	FNCALL	_mcp2515_read_register,_spi_transmit
	FNCALL	_mcp2515_receive_message,_mcp2515_bit_modify
	FNCALL	_mcp2515_receive_message,_mcp2515_rx_status
	FNCALL	_mcp2515_receive_message,_spi_transmit
	FNCALL	_mcp2515_rx_status,_spi_transmit
	FNCALL	_mcp2515_bit_modify,_spi_transmit
	FNCALL	_mcp2515_init,_mcp2515_write_register
	FNCALL	_mcp2515_init,_spi_transmit
	FNCALL	_mcp2515_write_register,_spi_transmit
	FNCALL	_clock_init,_clock_reset
	FNROOT	_main
	global	_usb_config_desc
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"usb_cdc.c"
	line	94
_usb_config_desc:
	db	low(09h)
	db	low(02h)
	db	low(043h)
	db	low(0)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(080h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(05h)
	db	low(024h)
	db	low(0)
	db	low(010h)
	db	low(01h)
	db	low(04h)
	db	low(024h)
	db	low(02h)
	db	low(02h)
	db	low(05h)
	db	low(024h)
	db	low(06h)
	db	low(0)
	db	low(01h)
	db	low(05h)
	db	low(024h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(082h)
	db	low(03h)
	db	low(08h)
	db	low(0)
	db	low(02h)
	db	low(09h)
	db	low(04h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(03h)
	db	low(02h)
	db	low(08h)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	global __end_of_usb_config_desc
__end_of_usb_config_desc:
	global	_usb_string_manuf
psect	smallconst
	file	"usb_cdc.c"
	line	186
_usb_string_manuf:
	db	low(036h)
	db	low(03h)
	db	low(04Dh)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(072h)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(068h)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(070h)
	db	low(0)
	db	low(020h)
	db	low(0)
	db	low(054h)
	db	low(0)
	db	low(065h)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(068h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(06Ch)
	db	low(0)
	db	low(06Fh)
	db	low(0)
	db	low(067h)
	db	low(0)
	db	low(079h)
	db	low(0)
	db	low(02Ch)
	db	low(0)
	db	low(020h)
	db	low(0)
	db	low(049h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	db	low(063h)
	db	low(0)
	db	low(02Eh)
	db	low(0)
	global __end_of_usb_string_manuf
__end_of_usb_string_manuf:
	global	_usb_dev_desc
psect	smallconst
	file	"usb_cdc.c"
	line	77
_usb_dev_desc:
	db	low(012h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(02h)
	db	low(0)
	db	low(0)
	db	low(08h)
	db	low(0D8h)
	db	low(04h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_usb_dev_desc
__end_of_usb_dev_desc:
	global	_usb_string_product
psect	smallconst
	file	"usb_cdc.c"
	line	217
_usb_string_product:
	db	low(0Eh)
	db	low(03h)
	db	low(055h)
	db	low(0)
	db	low(053h)
	db	low(0)
	db	low(042h)
	db	low(0)
	db	low(074h)
	db	low(0)
	db	low(069h)
	db	low(0)
	db	low(06Eh)
	db	low(0)
	global __end_of_usb_string_product
__end_of_usb_string_product:
	global	_usb_string_0
psect	smallconst
	file	"usb_cdc.c"
	line	180
_usb_string_0:
	db	low(04h)
	db	low(03h)
	db	low(09h)
	db	low(04h)
	global __end_of_usb_string_0
__end_of_usb_string_0:
	global	_usb_config_desc
	global	_usb_string_manuf
	global	_usb_dev_desc
	global	_usb_string_product
	global	_usb_string_0
	global	_linecoding
	global	_usb_sendbuffer
	global	_clock_lastclock
	global	_clock_msticker
	global	_configured
	global	_usb_sendleft
	global	_dolinecoding
	global	_state
	global	_txbuffer_bytesleft
	global	_txbuffer_writepos
	global	_usb_config
	global	_usb_getchpos
	global	_usb_setaddress
	global	_txbuffer
	global	_timestamping
	global	_TMR0
_TMR0	set	0xFD6
	global	_ANSEL
_ANSEL	set	0xF7E
	global	_ANSELH
_ANSELH	set	0xF7F
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_T0CON
_T0CON	set	0xFD5
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_UADDR
_UADDR	set	0xF5C
	global	_UCFG
_UCFG	set	0xF61
	global	_UCON
_UCON	set	0xF64
	global	_UCONbits
_UCONbits	set	0xF64
	global	_UEP0
_UEP0	set	0xF53
	global	_UEP1
_UEP1	set	0xF54
	global	_UEP2
_UEP2	set	0xF55
	global	_UEP3
_UEP3	set	0xF56
	global	_UIRbits
_UIRbits	set	0xF62
	global	_USTAT
_USTAT	set	0xF63
	global	_ep

	DABS	1,512,32,_ep
	global	_ep0out_buffer

	DABS	1,640,8,_ep0out_buffer
	global	_ep0in_buffer

	DABS	1,648,8,_ep0in_buffer
	global	_ep2in_buffer

	DABS	1,664,8,_ep2in_buffer
	global	_ep1in_buffer

	DABS	1,680,64,_ep1in_buffer
	global	_ep3out_buffer

	DABS	1,672,8,_ep3out_buffer
; #config settings
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_linecoding
_linecoding:
       ds      7
	global	_usb_sendbuffer
_usb_sendbuffer:
       ds      3
	global	_clock_lastclock
_clock_lastclock:
       ds      2
	global	_clock_msticker
_clock_msticker:
       ds      2
	global	_configured
_configured:
       ds      2
	global	_usb_sendleft
_usb_sendleft:
       ds      2
	global	_dolinecoding
_dolinecoding:
       ds      1
	global	_state
_state:
       ds      1
	global	_txbuffer_bytesleft
_txbuffer_bytesleft:
       ds      1
	global	_txbuffer_writepos
_txbuffer_writepos:
       ds      1
	global	_usb_config
_usb_config:
       ds      1
	global	_usb_getchpos
_usb_getchpos:
       ds      1
	global	_usb_setaddress
_usb_setaddress:
       ds      1
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_txbuffer
_txbuffer:
       ds      128
	global	_timestamping
_timestamping:
       ds      1
	line	#
psect	cinit
; Clear objects allocated to BANK1 (129 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	129
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (25 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	25
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@line
main@line:	; 100 bytes @ 0x0
	ds   100
	global	main@timestamp
main@timestamp:	; 2 bytes @ 0x64
	ds   2
	global	main@idlen
main@idlen:	; 1 bytes @ 0x66
	ds   1
	global	main@type
main@type:	; 1 bytes @ 0x67
	ds   1
	global	main@i
main@i:	; 1 bytes @ 0x68
	ds   1
	global	main@ch
main@ch:	; 1 bytes @ 0x69
	ds   1
	global	main@linepos
main@linepos:	; 1 bytes @ 0x6A
	ds   1
	global	main@canmsg
main@canmsg:	; 14 bytes @ 0x6B
	ds   14
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	parseLine@value
parseLine@value:	; 1 bytes @ 0x0
	ds   1
	global	parseLine@status
parseLine@status:	; 1 bytes @ 0x1
	ds   1
	global	parseLine@cnf1
parseLine@cnf1:	; 4 bytes @ 0x2
	ds   4
	global	parseLine@cnf2
parseLine@cnf2:	; 4 bytes @ 0x6
	ds   4
	global	parseLine@cnf3
parseLine@cnf3:	; 4 bytes @ 0xA
	ds   4
	global	parseLine@address
parseLine@address:	; 4 bytes @ 0xE
	ds   4
	global	parseLine@address_484
parseLine@address_484:	; 4 bytes @ 0x12
	ds   4
	global	parseLine@data
parseLine@data:	; 4 bytes @ 0x16
	ds   4
	global	parseLine@stamping
parseLine@stamping:	; 4 bytes @ 0x1A
	ds   4
	global	parseLine@am0
parseLine@am0:	; 4 bytes @ 0x1E
	ds   4
	global	parseLine@am1
parseLine@am1:	; 4 bytes @ 0x22
	ds   4
	global	parseLine@am2
parseLine@am2:	; 4 bytes @ 0x26
	ds   4
	global	parseLine@am3
parseLine@am3:	; 4 bytes @ 0x2A
	ds   4
	global	parseLine@ac0
parseLine@ac0:	; 4 bytes @ 0x2E
	ds   4
	global	parseLine@ac1
parseLine@ac1:	; 4 bytes @ 0x32
	ds   4
	global	parseLine@ac2
parseLine@ac2:	; 4 bytes @ 0x36
	ds   4
	global	parseLine@ac3
parseLine@ac3:	; 4 bytes @ 0x3A
	ds   4
	global	parseLine@flags
parseLine@flags:	; 1 bytes @ 0x3E
	ds   1
	global	parseLine@result
parseLine@result:	; 1 bytes @ 0x3F
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_usb_putch:	; 0 bytes @ 0x0
?_clock_reset:	; 0 bytes @ 0x0
??_clock_reset:	; 0 bytes @ 0x0
?_mcp2515_init:	; 0 bytes @ 0x0
?_clock_init:	; 0 bytes @ 0x0
??_clock_init:	; 0 bytes @ 0x0
?_usb_init:	; 0 bytes @ 0x0
??_usb_init:	; 0 bytes @ 0x0
?_usb_process:	; 0 bytes @ 0x0
?_clock_process:	; 0 bytes @ 0x0
??_clock_process:	; 0 bytes @ 0x0
??_usb_getch:	; 0 bytes @ 0x0
??_usb_chReceived:	; 0 bytes @ 0x0
?_sendByteHex:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_usb_sendProcess:	; 0 bytes @ 0x0
??_usb_sendProcess:	; 0 bytes @ 0x0
?_usb_txprocess:	; 0 bytes @ 0x0
??_usb_txprocess:	; 0 bytes @ 0x0
??_spi_transmit:	; 0 bytes @ 0x0
?_mcp2515_read_register:	; 1 bytes @ 0x0
?_usb_getch:	; 1 bytes @ 0x0
?_usb_chReceived:	; 1 bytes @ 0x0
?_parseHex:	; 1 bytes @ 0x0
?_spi_transmit:	; 1 bytes @ 0x0
?_mcp2515_read_status:	; 1 bytes @ 0x0
?_mcp2515_rx_status:	; 1 bytes @ 0x0
	global	?_clock_getMS
?_clock_getMS:	; 2 bytes @ 0x0
	global	usb_txprocess@i
usb_txprocess@i:	; 1 bytes @ 0x0
	global	usb_getch@ch
usb_getch@ch:	; 1 bytes @ 0x0
	global	spi_transmit@c
spi_transmit@c:	; 1 bytes @ 0x0
	global	parseHex@line
parseHex@line:	; 2 bytes @ 0x0
	ds   1
??_mcp2515_read_register:	; 0 bytes @ 0x1
?_mcp2515_write_register:	; 0 bytes @ 0x1
?_mcp2515_bit_modify:	; 0 bytes @ 0x1
??_mcp2515_read_status:	; 0 bytes @ 0x1
??_mcp2515_rx_status:	; 0 bytes @ 0x1
	global	usb_txprocess@readpos
usb_txprocess@readpos:	; 1 bytes @ 0x1
	global	mcp2515_write_register@data
mcp2515_write_register@data:	; 1 bytes @ 0x1
	global	mcp2515_read_register@address
mcp2515_read_register@address:	; 1 bytes @ 0x1
	global	mcp2515_bit_modify@mask
mcp2515_bit_modify@mask:	; 1 bytes @ 0x1
	global	mcp2515_read_status@status
mcp2515_read_status@status:	; 1 bytes @ 0x1
	global	mcp2515_rx_status@status
mcp2515_rx_status@status:	; 1 bytes @ 0x1
	ds   1
??_mcp2515_write_register:	; 0 bytes @ 0x2
??_clock_getMS:	; 0 bytes @ 0x2
?_mcp2515_send_message:	; 1 bytes @ 0x2
	global	parseHex@len
parseHex@len:	; 1 bytes @ 0x2
	global	usb_sendProcess@i
usb_sendProcess@i:	; 1 bytes @ 0x2
	global	usb_txprocess@count
usb_txprocess@count:	; 1 bytes @ 0x2
	global	mcp2515_write_register@address
mcp2515_write_register@address:	; 1 bytes @ 0x2
	global	mcp2515_read_register@data
mcp2515_read_register@data:	; 1 bytes @ 0x2
	global	mcp2515_bit_modify@data
mcp2515_bit_modify@data:	; 1 bytes @ 0x2
	global	mcp2515_send_message@p_canmsg
mcp2515_send_message@p_canmsg:	; 2 bytes @ 0x2
	ds   1
?_mcp2515_set_bittiming:	; 0 bytes @ 0x3
??_mcp2515_bit_modify:	; 0 bytes @ 0x3
?_mcp2515_set_SJA1000_filter_mask:	; 0 bytes @ 0x3
?_mcp2515_set_SJA1000_filter_code:	; 0 bytes @ 0x3
??_mcp2515_init:	; 0 bytes @ 0x3
	global	mcp2515_bit_modify@address
mcp2515_bit_modify@address:	; 1 bytes @ 0x3
	global	mcp2515_init@dummy
mcp2515_init@dummy:	; 1 bytes @ 0x3
	global	mcp2515_set_SJA1000_filter_mask@amr1
mcp2515_set_SJA1000_filter_mask@amr1:	; 1 bytes @ 0x3
	global	mcp2515_set_SJA1000_filter_code@acr1
mcp2515_set_SJA1000_filter_code@acr1:	; 1 bytes @ 0x3
	global	mcp2515_set_bittiming@cnf2
mcp2515_set_bittiming@cnf2:	; 1 bytes @ 0x3
	global	parseHex@value
parseHex@value:	; 2 bytes @ 0x3
	global	usb_sendProcess@length
usb_sendProcess@length:	; 2 bytes @ 0x3
	ds   1
??_mcp2515_send_message:	; 0 bytes @ 0x4
?_mcp2515_receive_message:	; 1 bytes @ 0x4
	global	mcp2515_set_SJA1000_filter_mask@amr2
mcp2515_set_SJA1000_filter_mask@amr2:	; 1 bytes @ 0x4
	global	mcp2515_set_SJA1000_filter_code@acr2
mcp2515_set_SJA1000_filter_code@acr2:	; 1 bytes @ 0x4
	global	mcp2515_set_bittiming@cnf3
mcp2515_set_bittiming@cnf3:	; 1 bytes @ 0x4
	global	mcp2515_receive_message@p_canmsg
mcp2515_receive_message@p_canmsg:	; 2 bytes @ 0x4
	ds   1
??_mcp2515_set_bittiming:	; 0 bytes @ 0x5
??_parseHex:	; 0 bytes @ 0x5
?_usb_loadDescriptor:	; 1 bytes @ 0x5
	global	mcp2515_set_SJA1000_filter_mask@amr3
mcp2515_set_SJA1000_filter_mask@amr3:	; 1 bytes @ 0x5
	global	mcp2515_set_SJA1000_filter_code@acr3
mcp2515_set_SJA1000_filter_code@acr3:	; 1 bytes @ 0x5
	global	mcp2515_set_bittiming@cnf1
mcp2515_set_bittiming@cnf1:	; 1 bytes @ 0x5
	global	usb_loadDescriptor@descbuffer
usb_loadDescriptor@descbuffer:	; 2 bytes @ 0x5
	ds   1
??_mcp2515_set_SJA1000_filter_mask:	; 0 bytes @ 0x6
??_mcp2515_set_SJA1000_filter_code:	; 0 bytes @ 0x6
??_mcp2515_receive_message:	; 0 bytes @ 0x6
	global	mcp2515_set_SJA1000_filter_mask@amr0
mcp2515_set_SJA1000_filter_mask@amr0:	; 1 bytes @ 0x6
	global	mcp2515_set_SJA1000_filter_code@acr0
mcp2515_set_SJA1000_filter_code@acr0:	; 1 bytes @ 0x6
	ds   1
	global	usb_loadDescriptor@size
usb_loadDescriptor@size:	; 2 bytes @ 0x7
	ds   2
	global	usb_loadDescriptor@length
usb_loadDescriptor@length:	; 2 bytes @ 0x9
	ds   2
??_usb_loadDescriptor:	; 0 bytes @ 0xB
?_usb_handleDescriptorRequest:	; 1 bytes @ 0xB
	global	usb_handleDescriptorRequest@index
usb_handleDescriptorRequest@index:	; 1 bytes @ 0xB
	global	mcp2515_receive_message@temp
mcp2515_receive_message@temp:	; 4 bytes @ 0xB
	ds   1
	global	mcp2515_send_message@i
mcp2515_send_message@i:	; 1 bytes @ 0xC
	global	usb_handleDescriptorRequest@length
usb_handleDescriptorRequest@length:	; 2 bytes @ 0xC
	ds   1
	global	mcp2515_send_message@status
mcp2515_send_message@status:	; 1 bytes @ 0xD
	ds   1
??_usb_handleDescriptorRequest:	; 0 bytes @ 0xE
	global	usb_handleDescriptorRequest@type
usb_handleDescriptorRequest@type:	; 1 bytes @ 0xE
	global	mcp2515_send_message@address
mcp2515_send_message@address:	; 1 bytes @ 0xE
	ds   1
??_usb_process:	; 0 bytes @ 0xF
?_transmitStd:	; 1 bytes @ 0xF
	global	mcp2515_receive_message@i
mcp2515_receive_message@i:	; 1 bytes @ 0xF
	global	transmitStd@line
transmitStd@line:	; 2 bytes @ 0xF
	ds   1
	global	usb_process@i
usb_process@i:	; 1 bytes @ 0x10
	global	mcp2515_receive_message@address
mcp2515_receive_message@address:	; 1 bytes @ 0x10
	ds   1
??_transmitStd:	; 0 bytes @ 0x11
	global	usb_process@i_667
usb_process@i_667:	; 1 bytes @ 0x11
	global	mcp2515_receive_message@status
mcp2515_receive_message@status:	; 1 bytes @ 0x11
	ds   1
	global	usb_process@i_668
usb_process@i_668:	; 1 bytes @ 0x12
	ds   1
??_usb_putch:	; 0 bytes @ 0x13
	global	_transmitStd$472
_transmitStd$472:	; 1 bytes @ 0x13
	global	usb_putch@ch
usb_putch@ch:	; 1 bytes @ 0x13
	ds   1
?_usb_putstr:	; 0 bytes @ 0x14
	global	transmitStd@idlen
transmitStd@idlen:	; 1 bytes @ 0x14
	global	usb_putstr@s
usb_putstr@s:	; 2 bytes @ 0x14
	ds   1
	global	transmitStd@i
transmitStd@i:	; 1 bytes @ 0x15
	ds   1
??_usb_putstr:	; 0 bytes @ 0x16
?_sendHex:	; 0 bytes @ 0x16
	global	sendHex@value
sendHex@value:	; 4 bytes @ 0x16
	global	transmitStd@temp
transmitStd@temp:	; 4 bytes @ 0x16
	ds   4
	global	sendHex@len
sendHex@len:	; 1 bytes @ 0x1A
	global	transmitStd@canmsg
transmitStd@canmsg:	; 14 bytes @ 0x1A
	ds   1
??_sendHex:	; 0 bytes @ 0x1B
	ds   4
	global	sendHex@s
sendHex@s:	; 20 bytes @ 0x1F
	ds   20
	global	sendHex@hex
sendHex@hex:	; 1 bytes @ 0x33
	ds   1
??_sendByteHex:	; 0 bytes @ 0x34
	global	sendByteHex@value
sendByteHex@value:	; 1 bytes @ 0x34
	ds   1
?_parseLine:	; 0 bytes @ 0x35
	global	parseLine@line
parseLine@line:	; 2 bytes @ 0x35
	ds   2
??_parseLine:	; 0 bytes @ 0x37
	ds   1
??_main:	; 0 bytes @ 0x38
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    157
;!    Data        0
;!    BSS         154
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     57      82
;!    BANK0           160     64      64
;!    BANK1           256    121     250
;!    BANK2hl           8      0       0
;!    BANK2l           96      0       0
;!    BANK2hh          24      0       0

;!
;!Pointer List with Targets:
;!
;!    mcp2515_receive_message@p_canmsg	PTR struct . size(2) Largest target is 14
;!		 -> main@canmsg(BANK1[14]), 
;!
;!    mcp2515_send_message@p_canmsg	PTR struct . size(2) Largest target is 14
;!		 -> transmitStd@canmsg(COMRAM[14]), 
;!
;!    usb_putstr@s	PTR unsigned char  size(2) Largest target is 20
;!		 -> sendHex@s(COMRAM[20]), 
;!
;!    usb_loadDescriptor@descbuffer	PTR const unsigned char  size(2) Largest target is 67
;!		 -> usb_string_product(CODE[14]), usb_string_manuf(CODE[54]), usb_string_0(CODE[4]), usb_config_desc(CODE[67]), 
;!		 -> usb_dev_desc(CODE[18]), 
;!
;!    usb_sendbuffer	PTR const unsigned char  size(3) Largest target is 16383
;!		 -> usb_string_product(CODE[14]), usb_string_manuf(CODE[54]), usb_string_0(CODE[4]), usb_config_desc(CODE[67]), 
;!		 -> usb_dev_desc(CODE[18]), ROM(CODE[16383]), 
;!
;!    parseLine@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    transmitStd@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    parseHex@line	PTR unsigned char  size(2) Largest target is 100
;!		 -> main@line(BANK1[100]), 
;!
;!    parseHex@value	PTR unsigned long  size(2) Largest target is 4
;!		 -> parseLine@ac3(BANK0[4]), parseLine@ac2(BANK0[4]), parseLine@ac1(BANK0[4]), parseLine@ac0(BANK0[4]), 
;!		 -> parseLine@am3(BANK0[4]), parseLine@am2(BANK0[4]), parseLine@am1(BANK0[4]), parseLine@am0(BANK0[4]), 
;!		 -> parseLine@stamping(BANK0[4]), parseLine@data(BANK0[4]), parseLine@address_484(BANK0[4]), parseLine@address(BANK0[4]), 
;!		 -> parseLine@cnf3(BANK0[4]), parseLine@cnf2(BANK0[4]), parseLine@cnf1(BANK0[4]), transmitStd@temp(COMRAM[4]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_parseLine
;!    _parseLine->_sendByteHex
;!    _transmitStd->_mcp2515_send_message
;!    _mcp2515_send_message->_mcp2515_read_status
;!    _mcp2515_read_status->_spi_transmit
;!    _sendByteHex->_sendHex
;!    _sendHex->_usb_putstr
;!    _usb_putstr->_usb_putch
;!    _usb_putch->_usb_process
;!    _usb_process->_usb_handleDescriptorRequest
;!    _usb_handleDescriptorRequest->_usb_loadDescriptor
;!    _usb_loadDescriptor->_usb_sendProcess
;!    _mcp2515_set_bittiming->_mcp2515_write_register
;!    _mcp2515_set_SJA1000_filter_mask->_mcp2515_write_register
;!    _mcp2515_set_SJA1000_filter_code->_mcp2515_write_register
;!    _mcp2515_read_register->_spi_transmit
;!    _mcp2515_receive_message->_mcp2515_bit_modify
;!    _mcp2515_rx_status->_spi_transmit
;!    _mcp2515_bit_modify->_spi_transmit
;!    _mcp2515_init->_mcp2515_write_register
;!    _mcp2515_write_register->_spi_transmit
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_parseLine
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2hl
;!
;!    None.
;!
;!Critical Paths under _main in BANK2l
;!
;!    None.
;!
;!Critical Paths under _main in BANK2hh
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               122   122      0   42899
;!                                             56 COMRAM     1     1      0
;!                                              0 BANK1    121   121      0
;!                        _clock_getMS
;!                         _clock_init
;!                      _clock_process
;!                       _mcp2515_init
;!            _mcp2515_receive_message
;!                          _parseLine
;!                            _sendHex
;!                     _usb_chReceived
;!                          _usb_getch
;!                           _usb_init
;!                        _usb_process
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (1) _usb_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _usb_getch                                            1     1      0      23
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _usb_chReceived                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _parseLine                                           67    65      2   31177
;!                                             53 COMRAM     3     1      2
;!                                              0 BANK0     64    64      0
;!                        _clock_reset
;!                 _mcp2515_bit_modify
;!              _mcp2515_read_register
;!    _mcp2515_set_SJA1000_filter_code
;!    _mcp2515_set_SJA1000_filter_mask
;!              _mcp2515_set_bittiming
;!             _mcp2515_write_register
;!                           _parseHex
;!                        _sendByteHex
;!                            _sendHex
;!                        _transmitStd
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (2) _transmitStd                                         25    23      2    5129
;!                                             15 COMRAM    25    23      2
;!               _mcp2515_send_message
;!                           _parseHex
;! ---------------------------------------------------------------------------------
;! (3) _parseHex                                             9     4      5    3809
;!                                              0 COMRAM     9     4      5
;! ---------------------------------------------------------------------------------
;! (3) _mcp2515_send_message                                13    11      2     622
;!                                              2 COMRAM    13    11      2
;!                _mcp2515_read_status
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (4) _mcp2515_read_status                                  1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _sendByteHex                                          1     1      0    3229
;!                                             52 COMRAM     1     1      0
;!                            _sendHex
;! ---------------------------------------------------------------------------------
;! (1) _sendHex                                             30    25      5    3207
;!                                             22 COMRAM    30    25      5
;!                         _usb_putstr
;! ---------------------------------------------------------------------------------
;! (2) _usb_putstr                                           2     0      2    2165
;!                                             20 COMRAM     2     0      2
;!                          _usb_putch
;! ---------------------------------------------------------------------------------
;! (1) _usb_putch                                            1     1      0    2056
;!                                             19 COMRAM     1     1      0
;!                        _usb_process
;! ---------------------------------------------------------------------------------
;! (2) _usb_process                                          4     4      0    2034
;!                                             15 COMRAM     4     4      0
;!        _usb_handleDescriptorRequest
;!                    _usb_sendProcess
;!                      _usb_txprocess
;! ---------------------------------------------------------------------------------
;! (3) _usb_txprocess                                        3     3      0     183
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _usb_handleDescriptorRequest                          4     1      3    1489
;!                                             11 COMRAM     4     1      3
;!                 _usb_loadDescriptor
;! ---------------------------------------------------------------------------------
;! (4) _usb_loadDescriptor                                   6     0      6    1207
;!                                              5 COMRAM     6     0      6
;!                    _usb_sendProcess
;! ---------------------------------------------------------------------------------
;! (3) _usb_sendProcess                                      5     5      0     114
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_bittiming                                3     1      2    3716
;!                                              3 COMRAM     3     1      2
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_SJA1000_filter_mask                      4     1      3    2650
;!                                              3 COMRAM     4     1      3
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_set_SJA1000_filter_code                      4     1      3    2738
;!                                              3 COMRAM     4     1      3
;!             _mcp2515_write_register
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_read_register                                2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (1) _mcp2515_receive_message                             14    12      2    1417
;!                                              4 COMRAM    14    12      2
;!                 _mcp2515_bit_modify
;!                  _mcp2515_rx_status
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_rx_status                                    1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_bit_modify                                   3     1      2     728
;!                                              1 COMRAM     3     1      2
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (1) _mcp2515_init                                         1     1      0    2438
;!                                              3 COMRAM     1     1      0
;!             _mcp2515_write_register
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (2) _mcp2515_write_register                               2     1      1    2370
;!                                              1 COMRAM     2     1      1
;!                       _spi_transmit
;! ---------------------------------------------------------------------------------
;! (4) _spi_transmit                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_process                                        2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_init                                           0     0      0       0
;!                        _clock_reset
;! ---------------------------------------------------------------------------------
;! (2) _clock_reset                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _clock_getMS                                          2     0      2       0
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clock_getMS
;!   _clock_init
;!     _clock_reset
;!   _clock_process
;!   _mcp2515_init
;!     _mcp2515_write_register
;!       _spi_transmit
;!     _spi_transmit
;!   _mcp2515_receive_message
;!     _mcp2515_bit_modify
;!       _spi_transmit
;!     _mcp2515_rx_status
;!       _spi_transmit
;!     _spi_transmit
;!   _parseLine
;!     _clock_reset
;!     _mcp2515_bit_modify
;!       _spi_transmit
;!     _mcp2515_read_register
;!       _spi_transmit
;!     _mcp2515_set_SJA1000_filter_code
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_set_SJA1000_filter_mask
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_set_bittiming
;!       _mcp2515_write_register
;!         _spi_transmit
;!     _mcp2515_write_register
;!       _spi_transmit
;!     _parseHex
;!     _sendByteHex
;!       _sendHex
;!         _usb_putstr
;!           _usb_putch
;!             _usb_process
;!               _usb_handleDescriptorRequest
;!                 _usb_loadDescriptor
;!                   _usb_sendProcess
;!               _usb_sendProcess
;!               _usb_txprocess
;!     _sendHex
;!       _usb_putstr
;!         _usb_putch
;!           _usb_process
;!             _usb_handleDescriptorRequest
;!               _usb_loadDescriptor
;!                 _usb_sendProcess
;!             _usb_sendProcess
;!             _usb_txprocess
;!     _transmitStd
;!       _mcp2515_send_message
;!         _mcp2515_read_status
;!           _spi_transmit
;!         _spi_transmit
;!       _parseHex
;!     _usb_putch
;!       _usb_process
;!         _usb_handleDescriptorRequest
;!           _usb_loadDescriptor
;!             _usb_sendProcess
;!         _usb_sendProcess
;!         _usb_txprocess
;!   _sendHex
;!     _usb_putstr
;!       _usb_putch
;!         _usb_process
;!           _usb_handleDescriptorRequest
;!             _usb_loadDescriptor
;!               _usb_sendProcess
;!           _usb_sendProcess
;!           _usb_txprocess
;!   _usb_chReceived
;!   _usb_getch
;!   _usb_init
;!   _usb_process
;!     _usb_handleDescriptorRequest
;!       _usb_loadDescriptor
;!         _usb_sendProcess
;!     _usb_sendProcess
;!     _usb_txprocess
;!   _usb_putch
;!     _usb_process
;!       _usb_handleDescriptorRequest
;!         _usb_loadDescriptor
;!           _usb_sendProcess
;!       _usb_sendProcess
;!       _usb_txprocess
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAMl            1FF      0       0      18        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100     79      FA       8       97.7%
;!BITBANK0            A0      0       0       5        0.0%
;!BANK0               A0     40      40       6       40.0%
;!BIGRAMhl            60      0       0      17        0.0%
;!BITBANK2l           60      0       0      14        0.0%
;!BANK2l              60      0       0      10        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     39      52       1       86.3%
;!BIGRAMhhh           18      0       0      15        0.0%
;!BITBANK2hh          18      0       0      11        0.0%
;!BANK2hh             18      0       0      12        0.0%
;!BIGRAMhhl            8      0       0      16        0.0%
;!BITBANK2hl           8      0       0      13        0.0%
;!BANK2hl              8      0       0       9        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     18C       3        0.0%
;!DATA                 0      0     18C       4        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 357 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1  104[BANK1 ] unsigned char 
;;  timestamp       2  100[BANK1 ] unsigned short 
;;  type            1  103[BANK1 ] unsigned char 
;;  idlen           1  102[BANK1 ] unsigned char 
;;  canmsg         14  107[BANK1 ] struct .
;;  ch              1  105[BANK1 ] unsigned char 
;;  line          100    0[BANK1 ] unsigned char [100]
;;  linepos         1  106[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0     121       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0     121       0       0       0
;;Total ram usage:      122 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_clock_getMS
;;		_clock_init
;;		_clock_process
;;		_mcp2515_init
;;		_mcp2515_receive_message
;;		_parseLine
;;		_sendHex
;;		_usb_chReceived
;;		_usb_getch
;;		_usb_init
;;		_usb_process
;;		_usb_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	357
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	357
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 22
	line	360
	
l2700:
	call	_mcp2515_init	;wreg free
	line	363
	
l2702:
	movlw	low(030h)
	movwf	((c:4051)),c	;volatile
	line	366
	
l2704:
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	367
	
l2706:
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	368
	
l2708:
	bcf	((c:3987)),c,5	;volatile
	line	369
	
l2710:
	bcf	((c:3978)),c,5	;volatile
	line	372
	
l2712:
	call	_clock_init	;wreg free
	line	373
	
l2714:
	call	_usb_init	;wreg free
	line	376
	
l2716:
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@linepos))&0ffh
	goto	l2718
	line	378
	
l158:; BSR set to: 1

	line	381
	
l2718:
	call	_usb_process	;wreg free
	line	382
	
l2720:
	call	_clock_process	;wreg free
	line	385
	goto	l2740
	
l160:
	line	386
	
l2722:
	call	_usb_getch	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@ch))&0ffh
	line	388
	
l2724:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@ch))&0ffh,w
	xorlw	13

	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2732
u2340:
	line	389
	
l2726:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@linepos))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(main@line)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@line)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	390
	
l2728:; BSR set to: 1

	movlb	1	; () banked
		movlw	high(main@line)
	movwf	((c:parseLine@line+1)),c
	movlb	1	; () banked
	movlw	low(main@line)
	movwf	((c:parseLine@line)),c

	call	_parseLine	;wreg free
	line	391
	
l2730:
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@linepos))&0ffh
	line	392
	goto	l2740
	
l161:; BSR set to: 1

	
l2732:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@ch))&0ffh,w
	xorlw	10

	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2740
u2350:
	line	393
	
l2734:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@linepos))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(main@line)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@line)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movff	(main@ch),indf2

	line	394
	
l2736:; BSR set to: 1

	movlw	(063h)&0ffh
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@linepos))&0ffh,w
	btfsc	status,0
	goto	u2361
	goto	u2360
u2361:
	goto	l2740
u2360:
	
l2738:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@linepos))&0ffh
	goto	l2740
	
l164:; BSR set to: 1

	goto	l2740
	line	395
	
l163:; BSR set to: 1

	goto	l2740
	line	397
	
l162:; BSR set to: 1

	goto	l2740
	
l159:; BSR set to: 1

	line	385
	
l2740:
	call	_usb_chReceived	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2722
u2370:
	goto	l2742
	
l165:
	line	400
	
l2742:
	movf	((c:_state)),c,w	;volatile
	btfsc	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2786
u2380:
	
l2744:
	btfsc	((c:3970)),c,2	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l2786
u2390:
	goto	l2784
	line	404
	
l2746:
	goto	l2784
	
l168:
	line	407
	
l2748:
	call	_clock_getMS	;wreg free
	movff	0+?_clock_getMS,(main@timestamp)
	movff	1+?_clock_getMS,(main@timestamp+1)
	line	409
	
l2750:
	movlb	1	; () banked
	btfss	(0+(main@canmsg+04h))&0ffh,0
	goto	u2401
	goto	u2400
u2401:
	goto	l2754
u2400:
	
l2752:; BSR set to: 1

	movlw	low(072h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@type))&0ffh
	goto	l2756
	line	410
	
l169:; BSR set to: 1

	
l2754:; BSR set to: 1

	movlw	low(074h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@type))&0ffh
	goto	l2756
	
l170:; BSR set to: 1

	line	412
	
l2756:; BSR set to: 1

	movlb	1	; () banked
	btfss	(0+(main@canmsg+04h))&0ffh,1
	goto	u2411
	goto	u2410
u2411:
	goto	l2762
u2410:
	line	413
	
l2758:; BSR set to: 1

	movlw	(020h)&0ffh
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@type))&0ffh
	line	414
	
l2760:; BSR set to: 1

	movlw	low(08h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@idlen))&0ffh
	line	415
	goto	l2764
	
l171:; BSR set to: 1

	line	416
	
l2762:; BSR set to: 1

	movlw	low(03h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@idlen))&0ffh
	goto	l2764
	line	417
	
l172:; BSR set to: 1

	line	419
	
l2764:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@type))&0ffh,w
	
	call	_usb_putch
	line	420
	
l2766:
	movff	(main@canmsg),(c:sendHex@value)
	movff	(main@canmsg+1),(c:sendHex@value+1)
	movff	(main@canmsg+2),(c:sendHex@value+2)
	movff	(main@canmsg+3),(c:sendHex@value+3)
	movff	(main@idlen),(c:sendHex@len)
	call	_sendHex	;wreg free
	line	422
	
l2768:
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(main@canmsg+05h))&0ffh,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(01h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	424
	
l2770:
	movlb	1	; () banked
	btfsc	(0+(main@canmsg+04h))&0ffh,0
	goto	u2421
	goto	u2420
u2421:
	goto	l2780
u2420:
	line	426
	
l2772:; BSR set to: 1

	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	goto	l2778
	
l175:; BSR set to: 1

	line	427
	
l2774:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@i))&0ffh,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	1	; () banked
	movlw	low(main@canmsg)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@canmsg)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_main+0+0)&0ffh,c
	movf	((??_main+0+0)),c,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(02h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	426
	
l2776:
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@i))&0ffh
	goto	l2778
	
l174:; BSR set to: 1

	
l2778:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	(0+(main@canmsg+05h))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	btfss	status,0
	goto	u2431
	goto	u2430
u2431:
	goto	l2774
u2430:
	goto	l2780
	
l176:; BSR set to: 1

	goto	l2780
	line	429
	
l173:; BSR set to: 1

	line	431
	
l2780:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((_timestamping))&0ffh,w
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l177
u2440:
	line	432
	
l2782:; BSR set to: 1

	movlb	1	; () banked
	movff	(main@timestamp),(c:sendHex@value)
	movlb	1	; () banked
	movff	(main@timestamp+1),(c:sendHex@value+1)
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(04h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	433
	
l177:
	line	435
	movlw	(0Dh)&0ffh
	
	call	_usb_putch
	goto	l2784
	line	436
	
l167:
	line	404
	
l2784:
	movlb	1	; () banked
		movlw	high(main@canmsg)
	movwf	((c:mcp2515_receive_message@p_canmsg+1)),c
	movlb	1	; () banked
	movlw	low(main@canmsg)
	movwf	((c:mcp2515_receive_message@p_canmsg)),c

	call	_mcp2515_receive_message	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2748
u2450:
	goto	l2786
	
l178:
	goto	l2786
	line	437
	
l166:
	line	440
	
l2786:
	movlw	(0)&0ffh
	clrf	prodl
	cpfseq	((c:_state)),c	;volatile
	incf	prodl
	movff	prodl,??_main+0+0
	swapf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3978)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3978)),c	;volatile
	line	443
	
l2788:
	btfsc	((c:3968)),c,3	;volatile
	goto	u2461
	goto	u2460
u2461:
	goto	l2718
u2460:
	line	444
	
l2790:
	movlw	low(0)
	movwf	((c:3940)),c	;volatile
	line	445
	
l2792:
	movlw	250
u2477:
	nop
decfsz	wreg,f
	goto	u2477

	line	446
# 446 "main.c"
reset ;# 
psect	text0
	goto	l2718
	line	447
	
l179:
	goto	l2718
	line	448
	
l180:
	line	378
	goto	l2718
	
l181:
	line	449
	
l182:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_usb_init

;; *************** function _usb_init *****************
;; Defined at:
;;		line 419 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"usb_cdc.c"
	line	419
global __ptext1
__ptext1:
psect	text1
	file	"usb_cdc.c"
	line	419
	global	__size_of_usb_init
	__size_of_usb_init	equ	__end_of_usb_init-_usb_init
	
_usb_init:
;incstack = 0
	opt	stack 30
	line	420
	
l2612:
	movlw	low(080h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	421
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	422
	movlw	low(080h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+02h))&0ffh	;volatile
	line	423
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+03h))&0ffh	;volatile
	line	425
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	426
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	427
	movlw	low(088h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+06h))&0ffh	;volatile
	line	428
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+07h))&0ffh	;volatile
	line	430
	movlw	low(040h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	line	431
	movlw	low(040h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Dh))&0ffh	;volatile
	line	432
	movlw	low(0A8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Eh))&0ffh	;volatile
	line	433
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Fh))&0ffh	;volatile
	line	435
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+014h))&0ffh	;volatile
	line	436
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+015h))&0ffh	;volatile
	line	437
	movlw	low(098h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+016h))&0ffh	;volatile
	line	438
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+017h))&0ffh	;volatile
	line	440
	movlw	low(080h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+018h))&0ffh	;volatile
	line	441
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+019h))&0ffh	;volatile
	line	442
	movlw	low(0A0h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01Ah))&0ffh	;volatile
	line	443
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01Bh))&0ffh	;volatile
	line	445
	movlw	low(016h)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3923))&0ffh	;volatile
	line	446
	movlw	low(01Ah)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3924))&0ffh	;volatile
	line	447
	movlw	low(01Ah)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3925))&0ffh	;volatile
	line	448
	movlw	low(01Ch)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3926))&0ffh	;volatile
	line	450
	movlw	low(014h)
	movwf	((c:3937)),c	;volatile
	line	451
	movlw	low(08h)
	movwf	((c:3940)),c	;volatile
	line	452
	
l312:; BSR set to: 15

	return
	opt stack 0
GLOBAL	__end_of_usb_init
	__end_of_usb_init:
	signat	_usb_init,88
	global	_usb_getch

;; *************** function _usb_getch *****************
;; Defined at:
;;		line 403 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	403
global __ptext2
__ptext2:
psect	text2
	file	"usb_cdc.c"
	line	403
	global	__size_of_usb_getch
	__size_of_usb_getch	equ	__end_of_usb_getch-_usb_getch
	
_usb_getch:; BSR set to: 15

;incstack = 0
	opt	stack 30
	line	404
	
l2624:
	goto	l2626
	
l306:
	goto	l2626
	
l305:
	goto	l2626
	
l307:
	line	406
	
l2626:
	movf	((c:_usb_getchpos)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(672)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(672)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:usb_getch@ch)),c
	line	407
	
l2628:; BSR set to: 2

	incf	((c:_usb_getchpos)),c
	line	408
	
l2630:; BSR set to: 2

	movf	((c:_usb_getchpos)),c,w
	movlb	2	; () banked
	lfsr	2,512+019h	;volatile
	cpfseq	indf2
	goto	u2221
	goto	u2220
u2221:
	goto	l308
u2220:
	line	409
	
l2632:; BSR set to: 2

	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+019h))&0ffh	;volatile
	line	410
	movlw	low(080h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+018h))&0ffh	;volatile
	line	411
	movlw	low(0)
	movwf	((c:_usb_getchpos)),c
	line	412
	
l308:; BSR set to: 2

	line	413
	movf	((c:usb_getch@ch)),c,w
	goto	l309
	
l2634:; BSR set to: 2

	line	414
	
l309:; BSR set to: 2

	return
	opt stack 0
GLOBAL	__end_of_usb_getch
	__end_of_usb_getch:
	signat	_usb_getch,89
	global	_usb_chReceived

;; *************** function _usb_chReceived *****************
;; Defined at:
;;		line 394 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	394
global __ptext3
__ptext3:
psect	text3
	file	"usb_cdc.c"
	line	394
	global	__size_of_usb_chReceived
	__size_of_usb_chReceived	equ	__end_of_usb_chReceived-_usb_chReceived
	
_usb_chReceived:; BSR set to: 2

;incstack = 0
	opt	stack 30
	line	395
	
l2636:
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+018h))&0ffh,(7)&7	;volatile
	goto	u2231
	goto	u2230
u2231:
	movlw	1
	goto	u2236
u2230:
	movlw	0
u2236:
	goto	l302
	
l2638:; BSR set to: 2

	line	396
	
l302:; BSR set to: 2

	return
	opt stack 0
GLOBAL	__end_of_usb_chReceived
	__end_of_usb_chReceived:
	signat	_usb_chReceived,89
	global	_parseLine

;; *************** function _parseLine *****************
;; Defined at:
;;		line 176 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2   53[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;; Auto vars:     Size  Location     Type
;;  value           1    0[BANK0 ] unsigned char 
;;  ac3             4   58[BANK0 ] unsigned long 
;;  ac2             4   54[BANK0 ] unsigned long 
;;  ac1             4   50[BANK0 ] unsigned long 
;;  ac0             4   46[BANK0 ] unsigned long 
;;  am3             4   42[BANK0 ] unsigned long 
;;  am2             4   38[BANK0 ] unsigned long 
;;  am1             4   34[BANK0 ] unsigned long 
;;  am0             4   30[BANK0 ] unsigned long 
;;  stamping        4   26[BANK0 ] unsigned long 
;;  flags           1   62[BANK0 ] unsigned char 
;;  status          1    1[BANK0 ] unsigned char 
;;  data            4   22[BANK0 ] unsigned long 
;;  address         4   18[BANK0 ] unsigned long 
;;  address         4   14[BANK0 ] unsigned long 
;;  cnf3            4   10[BANK0 ] unsigned long 
;;  cnf2            4    6[BANK0 ] unsigned long 
;;  cnf1            4    2[BANK0 ] unsigned long 
;;  result          1   63[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0      64       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         3      64       0       0       0       0
;;Total ram usage:       67 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_clock_reset
;;		_mcp2515_bit_modify
;;		_mcp2515_read_register
;;		_mcp2515_set_SJA1000_filter_code
;;		_mcp2515_set_SJA1000_filter_mask
;;		_mcp2515_set_bittiming
;;		_mcp2515_write_register
;;		_parseHex
;;		_sendByteHex
;;		_sendHex
;;		_transmitStd
;;		_usb_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"main.c"
	line	176
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	176
	global	__size_of_parseLine
	__size_of_parseLine	equ	__end_of_parseLine-_parseLine
	
_parseLine:; BSR set to: 2

;incstack = 0
	opt	stack 22
	line	178
	
l2406:
	movlw	low(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	180
	goto	l2584
	line	181
	
l102:; BSR set to: 0

	line	182
	tstfsz	((c:_state)),c	;volatile
	goto	u1891
	goto	u1890
u1891:
	goto	l2586
u1890:
	goto	l2448
	line	184
	
l2408:; BSR set to: 0

	goto	l2448
	line	185
	
l105:; BSR set to: 0

	
l2410:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0FBh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2412:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	186
	
l107:; BSR set to: 0

	
l2414:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0DDh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2416:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	187
	
l108:; BSR set to: 0

	
l2418:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0CBh)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2420:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	188
	
l109:; BSR set to: 0

	
l2422:; BSR set to: 0

	movlw	low(0ADh)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(06h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C5h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2424:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	189
	
l110:; BSR set to: 0

	
l2426:; BSR set to: 0

	movlw	low(0A4h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C5h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2428:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	190
	
l111:; BSR set to: 0

	
l2430:; BSR set to: 0

	movlw	low(0A4h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C2h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2432:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	191
	
l112:; BSR set to: 0

	
l2434:; BSR set to: 0

	movlw	low(09Ah)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(03h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C1h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2436:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	192
	
l113:; BSR set to: 0

	
l2438:; BSR set to: 0

	movlw	low(0A3h)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(04h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C0h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2440:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	193
	
l114:; BSR set to: 0

	
l2442:; BSR set to: 0

	movlw	low(09Ah)
	movwf	((c:mcp2515_set_bittiming@cnf2)),c
	movlw	low(03h)
	movwf	((c:mcp2515_set_bittiming@cnf3)),c
	movlw	(0C0h)&0ffh
	
	call	_mcp2515_set_bittiming
	
l2444:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	194
	
l2446:; BSR set to: 0

	goto	l2586
	line	184
	
l104:; BSR set to: 0

	
l2448:; BSR set to: 0

	lfsr	2,01h
	movf	((c:parseLine@line)),c,w
	addwf	fsr2l
	movf	((c:parseLine@line+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 48 to 56
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	48^0	; case 48
	skipnz
	goto	l2410
	xorlw	49^48	; case 49
	skipnz
	goto	l2414
	xorlw	50^49	; case 50
	skipnz
	goto	l2418
	xorlw	51^50	; case 51
	skipnz
	goto	l2422
	xorlw	52^51	; case 52
	skipnz
	goto	l2426
	xorlw	53^52	; case 53
	skipnz
	goto	l2430
	xorlw	54^53	; case 54
	skipnz
	goto	l2434
	xorlw	55^54	; case 55
	skipnz
	goto	l2438
	xorlw	56^55	; case 56
	skipnz
	goto	l2442
	goto	l2586

	line	194
	
l106:; BSR set to: 0

	goto	l2586
	line	196
	
l103:; BSR set to: 0

	line	197
	goto	l2586
	line	198
	
l116:; BSR set to: 0

	line	199
	tstfsz	((c:_state)),c	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l2586
u1900:
	line	202
	
l2450:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@cnf1)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@cnf1)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2586
u1910:
	
l2452:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@cnf2)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@cnf2)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l2586
u1920:
	
l2454:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@cnf3)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@cnf3)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l2586
u1930:
	line	203
	
l2456:
	movff	(parseLine@cnf2),(c:mcp2515_set_bittiming@cnf2)
	movff	(parseLine@cnf3),(c:mcp2515_set_bittiming@cnf3)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@cnf1))&0ffh,w
	
	call	_mcp2515_set_bittiming
	line	204
	
l2458:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	205
	
l118:; BSR set to: 0

	goto	l2586
	line	206
	
l117:; BSR set to: 0

	line	207
	goto	l2586
	line	208
	
l119:; BSR set to: 0

	line	211
	
l2460:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@address)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@address)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2586
u1940:
	line	212
	
l2462:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@address))&0ffh,w
	
	call	_mcp2515_read_register
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@value))&0ffh
	line	213
	
l2464:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@value))&0ffh,w
	
	call	_sendByteHex
	line	214
	
l2466:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	215
	
l120:; BSR set to: 0

	line	217
	goto	l2586
	line	218
	
l121:; BSR set to: 0

	line	221
	
l2468:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@address_484)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@address_484)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l2586
u1950:
	
l2470:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@data)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@data)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l2586
u1960:
	line	222
	
l2472:
	movff	(parseLine@data),(c:mcp2515_write_register@data)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@address_484))&0ffh,w
	
	call	_mcp2515_write_register
	line	223
	
l2474:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	224
	
l122:; BSR set to: 0

	line	227
	goto	l2586
	line	228
	
l123:; BSR set to: 0

	line	230
	
l2476:; BSR set to: 0

	movlw	(056h)&0ffh
	
	call	_usb_putch
	line	231
	movlw	(01h)&0ffh
	
	call	_sendByteHex
	line	232
	movlw	(0)&0ffh
	
	call	_sendByteHex
	line	233
	
l2478:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	235
	goto	l2586
	line	236
	
l124:; BSR set to: 0

	line	238
	
l2480:; BSR set to: 0

	movlw	(076h)&0ffh
	
	call	_usb_putch
	line	239
	movlw	(01h)&0ffh
	
	call	_sendByteHex
	line	240
	movlw	(04h)&0ffh
	
	call	_sendByteHex
	line	241
	
l2482:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	243
	goto	l2586
	line	244
	
l125:; BSR set to: 0

	line	246
	
l2484:; BSR set to: 0

	movlw	(04Eh)&0ffh
	
	call	_usb_putch
	line	247
	movlw	low(0FFFFh)
	movwf	((c:sendHex@value)),c
	movlw	high(0FFFFh)
	movwf	((c:sendHex@value+1)),c
	movlw	low highword(0FFFFh)
	movwf	((c:sendHex@value+2)),c
	movlw	high highword(0FFFFh)
	movwf	((c:sendHex@value+3)),c
	movlw	low(04h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	248
	
l2486:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	250
	goto	l2586
	line	251
	
l126:; BSR set to: 0

	line	252
	tstfsz	((c:_state)),c	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l2586
u1970:
	line	254
	
l2488:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(0)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	256
	call	_clock_reset	;wreg free
	line	258
	
l2490:
	movlw	low(01h)
	movwf	((c:_state)),c	;volatile
	line	259
	
l2492:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	260
	
l127:; BSR set to: 0

	line	261
	goto	l2586
	line	262
	
l128:; BSR set to: 0

	line	263
	tstfsz	((c:_state)),c	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l2586
u1980:
	line	265
	
l2494:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(040h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	267
	
l2496:
	movlw	low(01h)
	movwf	((c:_state)),c	;volatile
	line	268
	
l2498:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	269
	
l129:; BSR set to: 0

	line	270
	goto	l2586
	line	271
	
l130:; BSR set to: 0

	line	272
	tstfsz	((c:_state)),c	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l2586
u1990:
	line	274
	
l2500:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(060h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	276
	
l2502:
	movlw	low(02h)
	movwf	((c:_state)),c	;volatile
	line	277
	
l2504:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	278
	
l131:; BSR set to: 0

	line	279
	goto	l2586
	line	280
	
l132:; BSR set to: 0

	line	281
	
l2506:; BSR set to: 0

	movf	((c:_state)),c,w	;volatile
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2586
u2000:
	line	283
	
l2508:; BSR set to: 0

	movlw	low(0E0h)
	movwf	((c:mcp2515_bit_modify@mask)),c
	movlw	low(080h)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_bit_modify
	line	285
	
l2510:
	movlw	low(0)
	movwf	((c:_state)),c	;volatile
	line	286
	
l2512:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	287
	
l133:; BSR set to: 0

	line	288
	goto	l2586
	line	289
	
l134:; BSR set to: 0

	goto	l2514
	line	290
	
l135:; BSR set to: 0

	goto	l2514
	line	291
	
l136:; BSR set to: 0

	goto	l2514
	line	292
	
l137:; BSR set to: 0

	line	293
	
l2514:; BSR set to: 0

	decf	((c:_state)),c,w	;volatile

	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l2586
u2010:
	line	295
	
l2516:; BSR set to: 0

		movff	(c:parseLine@line+1),(c:transmitStd@line+1)
	movff	(c:parseLine@line),(c:transmitStd@line)

	call	_transmitStd	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2586
u2020:
	line	296
	
l2518:
	movff	(c:parseLine@line),fsr2l
	movff	(c:parseLine@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseLine+0+0)&0ffh,c
	movlw	(05Ah)&0ffh
	subwf	((??_parseLine+0+0)),c,w
	btfsc	status,0
	goto	u2031
	goto	u2030
u2031:
	goto	l2522
u2030:
	
l2520:
	movlw	(05Ah)&0ffh
	
	call	_usb_putch
	goto	l2524
	line	297
	
l140:
	
l2522:
	movlw	(07Ah)&0ffh
	
	call	_usb_putch
	goto	l2524
	
l141:
	line	298
	
l2524:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	299
	
l139:; BSR set to: 0

	goto	l2586
	line	301
	
l138:; BSR set to: 0

	line	302
	goto	l2586
	line	303
	
l142:; BSR set to: 0

	line	305
	
l2526:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_mcp2515_read_register
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@flags))&0ffh
	line	306
	
l2528:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@status))&0ffh
	line	308
	
l2530:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((parseLine@flags))&0ffh,(0)&7
	goto	u2041
	goto	u2040
u2041:
	goto	l2534
u2040:
	
l2532:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(2/8)+(parseLine@status))&0ffh,(2)&7
	goto	l2534
	
l143:; BSR set to: 0

	line	309
	
l2534:; BSR set to: 0

	movff	(parseLine@flags),??_parseLine+0+0
	movlw	0C0h
	andwf	(??_parseLine+0+0),c
	btfsc	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l2538
u2050:
	
l2536:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(3/8)+(parseLine@status))&0ffh,(3)&7
	goto	l2538
	
l144:; BSR set to: 0

	line	310
	
l2538:; BSR set to: 0

	movff	(parseLine@flags),??_parseLine+0+0
	movlw	018h
	andwf	(??_parseLine+0+0),c
	btfsc	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l2542
u2060:
	
l2540:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(5/8)+(parseLine@status))&0ffh,(5)&7
	goto	l2542
	
l145:; BSR set to: 0

	line	311
	
l2542:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((parseLine@flags))&0ffh,(5)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l2546
u2070:
	
l2544:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(7/8)+(parseLine@status))&0ffh,(7)&7
	goto	l2546
	
l146:; BSR set to: 0

	line	313
	
l2546:; BSR set to: 0

	movlw	(046h)&0ffh
	
	call	_usb_putch
	line	314
	
l2548:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@status))&0ffh,w
	
	call	_sendByteHex
	line	315
	
l2550:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	line	317
	goto	l2586
	line	318
	
l147:; BSR set to: 0

	line	321
	
l2552:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(01h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@stamping)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@stamping)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l2586
u2080:
	line	322
	
l2554:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@stamping+3))&0ffh,w
	iorwf ((parseLine@stamping))&0ffh,w
	iorwf ((parseLine@stamping+1))&0ffh,w
	iorwf ((parseLine@stamping+2))&0ffh,w

	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	movlw	1
	goto	u2096
u2090:
	movlw	0
u2096:
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_timestamping))&0ffh
	line	323
	
l2556:; BSR set to: 1

	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	324
	
l148:; BSR set to: 0

	line	326
	goto	l2586
	line	327
	
l149:; BSR set to: 0

	line	328
	tstfsz	((c:_state)),c	;volatile
	goto	u2101
	goto	u2100
u2101:
	goto	l2586
u2100:
	line	331
	
l2558:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@am0)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@am0)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2586
u2110:
	
l2560:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@am1)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@am1)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2586
u2120:
	
l2562:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@am2)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@am2)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l2586
u2130:
	
l2564:
	movlw	low(07h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(07h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@am3)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@am3)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2586
u2140:
	line	332
	
l2566:
	movff	(parseLine@am1),(c:mcp2515_set_SJA1000_filter_mask@amr1)
	movff	(parseLine@am2),(c:mcp2515_set_SJA1000_filter_mask@amr2)
	movff	(parseLine@am3),(c:mcp2515_set_SJA1000_filter_mask@amr3)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@am0))&0ffh,w
	
	call	_mcp2515_set_SJA1000_filter_mask
	line	333
	
l2568:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	334
	
l151:; BSR set to: 0

	goto	l2586
	line	335
	
l150:; BSR set to: 0

	line	336
	goto	l2586
	line	337
	
l152:; BSR set to: 0

	line	338
	tstfsz	((c:_state)),c	;volatile
	goto	u2151
	goto	u2150
u2151:
	goto	l2586
u2150:
	line	341
	
l2570:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@ac0)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@ac0)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l2586
u2160:
	
l2572:
	movlw	low(03h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(03h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@ac1)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@ac1)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l2586
u2170:
	
l2574:
	movlw	low(05h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(05h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@ac2)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@ac2)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l2586
u2180:
	
l2576:
	movlw	low(07h)
	addwf	((c:parseLine@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(07h)
	addwfc	((c:parseLine@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
	movlb	0	; () banked
		movlw	high(parseLine@ac3)
	movwf	((c:parseHex@value+1)),c
	movlb	0	; () banked
	movlw	low(parseLine@ac3)
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l2586
u2190:
	line	342
	
l2578:
	movff	(parseLine@ac1),(c:mcp2515_set_SJA1000_filter_code@acr1)
	movff	(parseLine@ac2),(c:mcp2515_set_SJA1000_filter_code@acr2)
	movff	(parseLine@ac3),(c:mcp2515_set_SJA1000_filter_code@acr3)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@ac0))&0ffh,w
	
	call	_mcp2515_set_SJA1000_filter_code
	line	343
	
l2580:
	movlw	low(0Dh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((parseLine@result))&0ffh
	goto	l2586
	line	344
	
l154:; BSR set to: 0

	goto	l2586
	line	345
	
l153:; BSR set to: 0

	line	346
	goto	l2586
	line	348
	
l2582:; BSR set to: 0

	goto	l2586
	line	180
	
l101:; BSR set to: 0

	
l2584:; BSR set to: 0

	movff	(c:parseLine@line),fsr2l
	movff	(c:parseLine@line+1),fsr2h
	movf	indf2,w
	; Switch size 1, requested type "space"
; Number of cases is 19, Range of values is 67 to 118
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           58    30 (average)
;	Chosen strategy is simple_byte

	xorlw	67^0	; case 67
	skipnz
	goto	l2506
	xorlw	70^67	; case 70
	skipnz
	goto	l2526
	xorlw	71^70	; case 71
	skipnz
	goto	l2460
	xorlw	76^71	; case 76
	skipnz
	goto	l130
	xorlw	77^76	; case 77
	skipnz
	goto	l152
	xorlw	78^77	; case 78
	skipnz
	goto	l2484
	xorlw	79^78	; case 79
	skipnz
	goto	l126
	xorlw	82^79	; case 82
	skipnz
	goto	l2514
	xorlw	83^82	; case 83
	skipnz
	goto	l102
	xorlw	84^83	; case 84
	skipnz
	goto	l2514
	xorlw	86^84	; case 86
	skipnz
	goto	l2476
	xorlw	87^86	; case 87
	skipnz
	goto	l2468
	xorlw	90^87	; case 90
	skipnz
	goto	l2552
	xorlw	108^90	; case 108
	skipnz
	goto	l128
	xorlw	109^108	; case 109
	skipnz
	goto	l149
	xorlw	114^109	; case 114
	skipnz
	goto	l2514
	xorlw	115^114	; case 115
	skipnz
	goto	l116
	xorlw	116^115	; case 116
	skipnz
	goto	l2514
	xorlw	118^116	; case 118
	skipnz
	goto	l2480
	goto	l2586

	line	348
	
l115:; BSR set to: 0

	line	350
	
l2586:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((parseLine@result))&0ffh,w
	
	call	_usb_putch
	line	351
	
l155:
	return
	opt stack 0
GLOBAL	__end_of_parseLine
	__end_of_parseLine:
	signat	_parseLine,4216
	global	_transmitStd

;; *************** function _transmitStd *****************
;; Defined at:
;;		line 138 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2   15[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;; Auto vars:     Size  Location     Type
;;  i               1   21[COMRAM] unsigned char 
;;  canmsg         14   26[COMRAM] struct .
;;  temp            4   22[COMRAM] unsigned long 
;;  idlen           1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_mcp2515_send_message
;;		_parseHex
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	138
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	138
	global	__size_of_transmitStd
	__size_of_transmitStd	equ	__end_of_transmitStd-_transmitStd
	
_transmitStd:
;incstack = 0
	opt	stack 26
	line	143
	
l2298:
	movlw	low(01h)
	movwf	((c:_transmitStd$472)),c
	
l2300:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
	movf	indf2,w
	xorlw	072h

	btfsc	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l2306
u1800:
	
l2302:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
	movf	indf2,w
	xorlw	052h

	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2306
u1810:
	
l2304:
	movlw	low(0)
	movwf	((c:_transmitStd$472)),c
	goto	l2306
	
l88:
	
l2306:
	btfsc	(c:_transmitStd$472),c,0
	bra	u1825
	bcf	(0+((c:transmitStd@canmsg)+04h)),c,0
	bra	u1826
	u1825:
	bsf	(0+((c:transmitStd@canmsg)+04h)),c,0
	u1826:

	line	146
	
l2308:
	movff	(c:transmitStd@line),fsr2l
	movff	(c:transmitStd@line+1),fsr2h
	movf	indf2,w
	movwf	(??_transmitStd+0+0)&0ffh,c
	movlw	(05Ah)&0ffh
	subwf	((??_transmitStd+0+0)),c,w
	btfsc	status,0
	goto	u1831
	goto	u1830
u1831:
	goto	l89
u1830:
	line	147
	
l2310:
	bsf	(0+((c:transmitStd@canmsg)+04h)),c,1
	line	148
	
l2312:
	movlw	low(08h)
	movwf	((c:transmitStd@idlen)),c
	line	149
	goto	l2316
	
l89:
	line	150
	bcf	(0+((c:transmitStd@canmsg)+04h)),c,1
	line	151
	
l2314:
	movlw	low(03h)
	movwf	((c:transmitStd@idlen)),c
	goto	l2316
	line	152
	
l90:
	line	154
	
l2316:
	movlw	low(01h)
	addwf	((c:transmitStd@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movlw	high(01h)
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movff	(c:transmitStd@idlen),(c:parseHex@len)
		movlw	high((c:transmitStd@temp))
	movwf	((c:parseHex@value+1)),c
	movlw	low((c:transmitStd@temp))
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l91
u1840:
	
l2318:
	movlw	(0)&0ffh
	goto	l92
	
l2320:
	goto	l92
	
l91:
	line	155
	movff	(c:transmitStd@temp),(c:transmitStd@canmsg)
	movff	(c:transmitStd@temp+1),(c:transmitStd@canmsg+1)
	movff	(c:transmitStd@temp+2),(c:transmitStd@canmsg+2)
	movff	(c:transmitStd@temp+3),(c:transmitStd@canmsg+3)
	line	157
	
l2322:
	movf	((c:transmitStd@idlen)),c,w
	movwf	(??_transmitStd+0+0)&0ffh,c
	clrf	(??_transmitStd+0+0+1)&0ffh,c

	movlw	01h
	addwf	(??_transmitStd+0+0),c
	movlw	0
	addwfc	(??_transmitStd+0+1),c
	movf	(??_transmitStd+0+0),c,w
	addwf	((c:transmitStd@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movf	(??_transmitStd+0+1),c,w
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(01h)
	movwf	((c:parseHex@len)),c
		movlw	high((c:transmitStd@temp))
	movwf	((c:parseHex@value+1)),c
	movlw	low((c:transmitStd@temp))
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l93
u1850:
	
l2324:
	movlw	(0)&0ffh
	goto	l92
	
l2326:
	goto	l92
	
l93:
	line	158
	movff	(c:transmitStd@temp),0+((c:transmitStd@canmsg)+05h)
	line	160
	btfsc	(0+((c:transmitStd@canmsg)+04h)),c,0
	goto	u1861
	goto	u1860
u1861:
	goto	l2342
u1860:
	line	162
	
l2328:
	movlw	low(0)
	movwf	((c:transmitStd@i)),c
	goto	l2340
	
l96:
	line	163
	
l2330:
	movf	((c:transmitStd@i)),c,w
	mullw	02h
	movf	((c:transmitStd@idlen)),c,w
	movwf	(??_transmitStd+0+0)&0ffh,c
	clrf	(??_transmitStd+0+0+1)&0ffh,c

	movf	(prodl),c,w
	addwf	(??_transmitStd+0+0),c
	movf	(prodh),c,w
	addwfc	(??_transmitStd+0+1),c
	movlw	02h
	addwf	(??_transmitStd+0+0),c
	movlw	0
	addwfc	(??_transmitStd+0+1),c
	movf	(??_transmitStd+0+0),c,w
	addwf	((c:transmitStd@line)),c,w
	
	movwf	((c:parseHex@line)),c
	movf	(??_transmitStd+0+1),c,w
	addwfc	((c:transmitStd@line+1)),c,w
	movwf	1+((c:parseHex@line)),c
	movlw	low(02h)
	movwf	((c:parseHex@len)),c
		movlw	high((c:transmitStd@temp))
	movwf	((c:parseHex@value+1)),c
	movlw	low((c:transmitStd@temp))
	movwf	((c:parseHex@value)),c

	call	_parseHex	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2336
u1870:
	
l2332:
	movlw	(0)&0ffh
	goto	l92
	
l2334:
	goto	l92
	
l97:
	line	164
	
l2336:
	movf	((c:transmitStd@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:transmitStd@canmsg))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:transmitStd@canmsg))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:transmitStd@temp),indf2

	line	162
	
l2338:
	incf	((c:transmitStd@i)),c
	goto	l2340
	
l95:
	
l2340:
	movf	(0+((c:transmitStd@canmsg)+05h)),c,w
	subwf	((c:transmitStd@i)),c,w
	btfss	status,0
	goto	u1881
	goto	u1880
u1881:
	goto	l2330
u1880:
	goto	l2342
	
l98:
	goto	l2342
	line	166
	
l94:
	line	168
	
l2342:
		movlw	high((c:transmitStd@canmsg))
	movwf	((c:mcp2515_send_message@p_canmsg+1)),c
	movlw	low((c:transmitStd@canmsg))
	movwf	((c:mcp2515_send_message@p_canmsg)),c

	call	_mcp2515_send_message	;wreg free
	goto	l92
	
l2344:
	line	169
	
l92:
	return
	opt stack 0
GLOBAL	__end_of_transmitStd
	__end_of_transmitStd:
	signat	_transmitStd,4217
	global	_parseHex

;; *************** function _parseHex *****************
;; Defined at:
;;		line 81 in file "main.c"
;; Parameters:    Size  Location     Type
;;  line            2    0[COMRAM] PTR unsigned char 
;;		 -> main@line(100), 
;;  len             1    2[COMRAM] unsigned char 
;;  value           2    3[COMRAM] PTR unsigned long 
;;		 -> parseLine@ac3(4), parseLine@ac2(4), parseLine@ac1(4), parseLine@ac0(4), 
;;		 -> parseLine@am3(4), parseLine@am2(4), parseLine@am1(4), parseLine@am0(4), 
;;		 -> parseLine@stamping(4), parseLine@data(4), parseLine@address_484(4), parseLine@address(4), 
;;		 -> parseLine@cnf3(4), parseLine@cnf2(4), parseLine@cnf1(4), transmitStd@temp(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_transmitStd
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	81
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	81
	global	__size_of_parseHex
	__size_of_parseHex	equ	__end_of_parseHex-_parseHex
	
_parseHex:
;incstack = 0
	opt	stack 28
	line	82
	
l2174:
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	83
	goto	l2208
	
l64:
	line	84
	
l2176:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2182
u1550:
	
l2178:
	movlw	(0)&0ffh
	goto	l66
	
l2180:
	goto	l66
	
l65:
	line	85
	
l2182:
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movlw	04h
u1565:
	bcf	status,0
	rlcf	postinc2
	rlcf	postinc2
	rlcf	postinc2
	rlcf	postdec2
	decf	fsr2
	decf	fsr2
	decfsz	wreg
	goto	u1565
	line	86
	
l2184:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movlw	(030h-1)
	cpfsgt	indf2
	goto	u1571
	goto	u1570
u1571:
	goto	l2190
u1570:
	
l2186:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	(03Ah)&0ffh
	subwf	((??_parseHex+0+0)),c,w
	btfsc	status,0
	goto	u1581
	goto	u1580
u1581:
	goto	l2190
u1580:
	line	87
	
l2188:
	movlw	low(0FFD0h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFD0h)
	movwf	(??_parseHex+0+0+1)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postdec2
	movf	postdec2
	movf	postdec2
	line	88
	goto	l2206
	
l67:
	
l2190:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movlw	(041h-1)
	cpfsgt	indf2
	goto	u1591
	goto	u1590
u1591:
	goto	l2196
u1590:
	
l2192:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	(047h)&0ffh
	subwf	((??_parseHex+0+0)),c,w
	btfsc	status,0
	goto	u1601
	goto	u1600
u1601:
	goto	l2196
u1600:
	line	89
	
l2194:
	movlw	low(0FFC9h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFC9h)
	movwf	(??_parseHex+0+0+1)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postdec2
	movf	postdec2
	movf	postdec2
	line	90
	goto	l2206
	
l69:
	
l2196:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movlw	(061h-1)
	cpfsgt	indf2
	goto	u1611
	goto	u1610
u1611:
	goto	l2202
u1610:
	
l2198:
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	(067h)&0ffh
	subwf	((??_parseHex+0+0)),c,w
	btfsc	status,0
	goto	u1621
	goto	u1620
u1621:
	goto	l2202
u1620:
	line	91
	
l2200:
	movlw	low(0FFA9h)
	movwf	(??_parseHex+0+0)&0ffh,c
	movlw	high(0FFA9h)
	movwf	(??_parseHex+0+0+1)&0ffh,c
	movff	(c:parseHex@line),fsr2l
	movff	(c:parseHex@line+1),fsr2h
	movf	indf2,w
	movwf	(??_parseHex+2+0)&0ffh,c
	clrf	(??_parseHex+2+0+1)&0ffh,c

	movf	(??_parseHex+0+0),c,w
	addwf	(??_parseHex+2+0),c
	movf	(??_parseHex+0+1),c,w
	addwfc	(??_parseHex+2+1),c
	movff	(c:parseHex@value),fsr2l
	movff	(c:parseHex@value+1),fsr2h
	movf	(??_parseHex+2+0),c,w
	addwf	postinc2
	movf	(??_parseHex+2+1),c,w
	addwfc	postinc2
	movlw	0
	addwfc	postinc2
	addwfc	postdec2
	movf	postdec2
	movf	postdec2
	line	92
	goto	l2206
	
l71:
	
l2202:
	movlw	(0)&0ffh
	goto	l66
	
l2204:
	goto	l66
	
l72:
	goto	l2206
	
l70:
	goto	l2206
	
l68:
	line	93
	
l2206:
	infsnz	((c:parseHex@line)),c
	incf	((c:parseHex@line+1)),c
	goto	l2208
	line	94
	
l63:
	line	83
	
l2208:
	decf	((c:parseHex@len)),c
	incf	((c:parseHex@len))&0ffh,w

	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2176
u1630:
	goto	l2210
	
l73:
	line	95
	
l2210:
	movlw	(01h)&0ffh
	goto	l66
	
l2212:
	line	96
	
l66:
	return
	opt stack 0
GLOBAL	__end_of_parseHex
	__end_of_parseHex:
	signat	_parseHex,12409
	global	_mcp2515_send_message

;; *************** function _mcp2515_send_message *****************
;; Defined at:
;;		line 280 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  p_canmsg        2    2[COMRAM] PTR struct .
;;		 -> transmitStd@canmsg(14), 
;; Auto vars:     Size  Location     Type
;;  i               1   12[COMRAM] unsigned char 
;;  address         1   14[COMRAM] unsigned char 
;;  status          1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_read_status
;;		_spi_transmit
;; This function is called by:
;;		_transmitStd
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"mcp2515.c"
	line	280
global __ptext7
__ptext7:
psect	text7
	file	"mcp2515.c"
	line	280
	global	__size_of_mcp2515_send_message
	__size_of_mcp2515_send_message	equ	__end_of_mcp2515_send_message-_mcp2515_send_message
	
_mcp2515_send_message:
;incstack = 0
	opt	stack 26
	line	282
	
l2232:
	call	_mcp2515_read_status	;wreg free
	movwf	((c:mcp2515_send_message@status)),c
	line	286
	
l2234:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movlw	(09h-1)
	cpfsgt	indf2
	goto	u1671
	goto	u1670
u1671:
	goto	l412
u1670:
	
l2236:
	movlw	(0)&0ffh
	goto	l413
	
l2238:
	goto	l413
	
l412:
	line	289
	
	btfsc	((c:mcp2515_send_message@status)),c,(2)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l414
u1680:
	line	290
	
l2240:
	movlw	low(0)
	movwf	((c:mcp2515_send_message@address)),c
	line	291
	goto	l415
	
l414:
	
	btfsc	((c:mcp2515_send_message@status)),c,(4)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l416
u1690:
	line	292
	
l2242:
	movlw	low(02h)
	movwf	((c:mcp2515_send_message@address)),c
	line	293
	goto	l415
	
l416:
	
	btfsc	((c:mcp2515_send_message@status)),c,(6)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l2246
u1700:
	line	294
	
l2244:
	movlw	low(04h)
	movwf	((c:mcp2515_send_message@address)),c
	line	295
	goto	l415
	
l418:
	line	297
	
l2246:
	movlw	(0)&0ffh
	goto	l413
	
l2248:
	goto	l413
	line	298
	
l419:
	goto	l415
	
l417:
	
l415:
	line	301
	bcf	((c:3979)),c,6	;volatile
	line	303
	
l2250:
	movf	((c:mcp2515_send_message@address)),c,w
	iorlw	low(040h)
	
	call	_spi_transmit
	line	305
	
l2252:
	lfsr	2,04h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	indf2,1
	goto	u1711
	goto	u1710
u1711:
	goto	l2260
u1710:
	line	306
	
l2254:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	015h+1
	goto	u1720
u1725:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1720:
	decfsz	wreg
	goto	u1725
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	307
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	010h+1
	goto	u1730
u1735:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1730:
	decfsz	wreg
	goto	u1735
	movlw	03h
	andwf	(??_mcp2515_send_message+0+0),c
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+4+0
	movff	postinc2,??_mcp2515_send_message+4+0+1
	movff	postinc2,??_mcp2515_send_message+4+0+2
	movff	postinc2,??_mcp2515_send_message+4+0+3
	movlw	0Dh+1
	goto	u1740
u1745:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+4+3),c
	rrcf	(??_mcp2515_send_message+4+2),c
	rrcf	(??_mcp2515_send_message+4+1),c
	rrcf	(??_mcp2515_send_message+4+0),c
u1740:
	decfsz	wreg
	goto	u1745
	movf	(??_mcp2515_send_message+4+0),c,w
	andlw	low(0E0h)
	iorwf	(??_mcp2515_send_message+0+0),c,w
	iorlw	low(08h)
	
	call	_spi_transmit
	line	308
	
l2256:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movff	??_mcp2515_send_message+0+1,??_mcp2515_send_message+0+0
	movff	??_mcp2515_send_message+0+2,??_mcp2515_send_message+0+1
	movff	??_mcp2515_send_message+0+3,??_mcp2515_send_message+0+2
	clrf	(??_mcp2515_send_message+0+3),c
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	309
	
l2258:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movf	indf2,w
	
	call	_spi_transmit
	line	310
	goto	l2266
	
l420:
	line	311
	
l2260:
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movff	postinc2,??_mcp2515_send_message+0+0
	movff	postinc2,??_mcp2515_send_message+0+0+1
	movff	postinc2,??_mcp2515_send_message+0+0+2
	movff	postinc2,??_mcp2515_send_message+0+0+3
	movlw	03h+1
	goto	u1750
u1755:
	bcf	status,0
	rrcf	(??_mcp2515_send_message+0+3),c
	rrcf	(??_mcp2515_send_message+0+2),c
	rrcf	(??_mcp2515_send_message+0+1),c
	rrcf	(??_mcp2515_send_message+0+0),c
u1750:
	decfsz	wreg
	goto	u1755
	movf	(??_mcp2515_send_message+0+0),c,w
	
	call	_spi_transmit
	line	312
	movff	(c:mcp2515_send_message@p_canmsg),fsr2l
	movff	(c:mcp2515_send_message@p_canmsg+1),fsr2h
	movf	indf2,w
	movwf	(??_mcp2515_send_message+0+0)&0ffh,c
	movlw	05h
	movwf	(??_mcp2515_send_message+1+0)&0ffh,c
u1765:
	bcf	status,0
	rlcf	((??_mcp2515_send_message+0+0)),c
	decfsz	(??_mcp2515_send_message+1+0)&0ffh,c
	goto	u1765
	movf	((??_mcp2515_send_message+0+0)),c,w
	
	call	_spi_transmit
	line	313
	
l2262:
	movlw	(0)&0ffh
	
	call	_spi_transmit
	line	314
	
l2264:
	movlw	(0)&0ffh
	
	call	_spi_transmit
	goto	l2266
	line	315
	
l421:
	line	318
	
l2266:
	lfsr	2,04h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	indf2,0
	goto	u1771
	goto	u1770
u1771:
	goto	l2270
u1770:
	line	319
	
l2268:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	iorlw	low(040h)
	
	call	_spi_transmit
	line	320
	goto	l423
	
l422:
	line	321
	
l2270:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	
	call	_spi_transmit
	line	323
	
l2272:
	movlw	low(0)
	movwf	((c:mcp2515_send_message@i)),c
	goto	l2278
	
l425:
	line	324
	
l2274:
	movf	((c:mcp2515_send_message@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movf	(prodl),c,w
	addwf	((c:mcp2515_send_message@p_canmsg)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:mcp2515_send_message@p_canmsg+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_spi_transmit
	line	323
	
l2276:
	incf	((c:mcp2515_send_message@i)),c
	goto	l2278
	
l424:
	
l2278:
	lfsr	2,05h
	movf	((c:mcp2515_send_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_send_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	subwf	((c:mcp2515_send_message@i)),c,w
	btfss	status,0
	goto	u1781
	goto	u1780
u1781:
	goto	l2274
u1780:
	goto	l423
	
l426:
	line	326
	
l423:
	line	329
	bsf	((c:3979)),c,6	;volatile
	line	331
	nop
	line	334
	bcf	((c:3979)),c,6	;volatile
	line	335
	tstfsz	((c:mcp2515_send_message@address)),c
	goto	u1791
	goto	u1790
u1791:
	goto	l2282
u1790:
	
l2280:
	movlw	low(01h)
	movwf	((c:mcp2515_send_message@address)),c
	goto	l2282
	
l427:
	line	336
	
l2282:
	movf	((c:mcp2515_send_message@address)),c,w
	iorlw	low(080h)
	
	call	_spi_transmit
	line	338
	
l2284:
	bsf	((c:3979)),c,6	;volatile
	line	340
	
l2286:
	movlw	(01h)&0ffh
	goto	l413
	
l2288:
	line	341
	
l413:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_send_message
	__end_of_mcp2515_send_message:
	signat	_mcp2515_send_message,4217
	global	_mcp2515_read_status

;; *************** function _mcp2515_read_status *****************
;; Defined at:
;;		line 239 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_mcp2515_send_message
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	239
global __ptext8
__ptext8:
psect	text8
	file	"mcp2515.c"
	line	239
	global	__size_of_mcp2515_read_status
	__size_of_mcp2515_read_status	equ	__end_of_mcp2515_read_status-_mcp2515_read_status
	
_mcp2515_read_status:
;incstack = 0
	opt	stack 26
	line	242
	
l2164:
	bcf	((c:3979)),c,6	;volatile
	line	244
	
l2166:
	movlw	(0A0h)&0ffh
	
	call	_spi_transmit
	line	245
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_read_status@status)),c
	line	248
	
l2168:
	bsf	((c:3979)),c,6	;volatile
	line	250
	
l2170:
	movf	((c:mcp2515_read_status@status)),c,w
	goto	l406
	
l2172:
	line	251
	
l406:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_read_status
	__end_of_mcp2515_read_status:
	signat	_mcp2515_read_status,89
	global	_sendByteHex

;; *************** function _sendByteHex *****************
;; Defined at:
;;		line 128 in file "main.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   52[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_sendHex
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"main.c"
	line	128
global __ptext9
__ptext9:
psect	text9
	file	"main.c"
	line	128
	global	__size_of_sendByteHex
	__size_of_sendByteHex	equ	__end_of_sendByteHex-_sendByteHex
	
_sendByteHex:
;incstack = 0
	opt	stack 22
	movwf	((c:sendByteHex@value)),c
	line	130
	
l2296:
	movf	((c:sendByteHex@value)),c,w
	movwf	((c:sendHex@value)),c
	clrf	((c:sendHex@value+1)),c
	clrf	((c:sendHex@value+2)),c
	clrf	((c:sendHex@value+3)),c

	movlw	low(02h)
	movwf	((c:sendHex@len)),c
	call	_sendHex	;wreg free
	line	131
	
l84:
	return
	opt stack 0
GLOBAL	__end_of_sendByteHex
	__end_of_sendByteHex:
	signat	_sendByteHex,4216
	global	_sendHex

;; *************** function _sendHex *****************
;; Defined at:
;;		line 104 in file "main.c"
;; Parameters:    Size  Location     Type
;;  value           4   22[COMRAM] unsigned long 
;;  len             1   26[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hex             1   51[COMRAM] unsigned char 
;;  s              20   31[COMRAM] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         5       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0
;;      Totals:        30       0       0       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_usb_putstr
;; This function is called by:
;;		_sendByteHex
;;		_parseLine
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	104
global __ptext10
__ptext10:
psect	text10
	file	"main.c"
	line	104
	global	__size_of_sendHex
	__size_of_sendHex	equ	__end_of_sendHex-_sendHex
	
_sendHex:
;incstack = 0
	opt	stack 24
	line	107
	
l2214:
	movf	((c:sendHex@len)),c,w
	mullw	01h
	movlw	low((c:sendHex@s))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:sendHex@s))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	109
	goto	l2228
	
l77:
	line	111
	
l2216:
	movf	((c:sendHex@value)),c,w
	andlw	low(0Fh)
	movwf	((c:sendHex@hex)),c
	line	112
	
l2218:
	movlw	(0Ah-1)
	cpfsgt	((c:sendHex@hex)),c
	goto	u1641
	goto	u1640
u1641:
	goto	l2222
u1640:
	
l2220:
	movf	((c:sendHex@hex)),c,w
	addlw	low(037h)
	movwf	((c:sendHex@hex)),c
	goto	l2224
	line	113
	
l78:
	
l2222:
	movf	((c:sendHex@hex)),c,w
	addlw	low(030h)
	movwf	((c:sendHex@hex)),c
	goto	l2224
	
l79:
	line	114
	
l2224:
	movf	((c:sendHex@len)),c,w
	mullw	01h
	movlw	low((c:sendHex@s))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:sendHex@s))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:sendHex@hex),indf2

	line	116
	
l2226:
	movff	(c:sendHex@value),??_sendHex+0+0
	movff	(c:sendHex@value+1),??_sendHex+0+0+1
	movff	(c:sendHex@value+2),??_sendHex+0+0+2
	movff	(c:sendHex@value+3),??_sendHex+0+0+3
	movlw	04h+1
	goto	u1650
u1655:
	bcf	status,0
	rrcf	(??_sendHex+0+3),c
	rrcf	(??_sendHex+0+2),c
	rrcf	(??_sendHex+0+1),c
	rrcf	(??_sendHex+0+0),c
u1650:
	decfsz	wreg
	goto	u1655
	movff	??_sendHex+0+0,(c:sendHex@value)
	movff	??_sendHex+0+1,(c:sendHex@value+1)
	movff	??_sendHex+0+2,(c:sendHex@value+2)
	movff	??_sendHex+0+3,(c:sendHex@value+3)
	goto	l2228
	line	117
	
l76:
	line	109
	
l2228:
	decf	((c:sendHex@len)),c
	incf	((c:sendHex@len))&0ffh,w

	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2216
u1660:
	goto	l2230
	
l80:
	line	119
	
l2230:
		movlw	high((c:sendHex@s))
	movwf	((c:usb_putstr@s+1)),c
	movlw	low((c:sendHex@s))
	movwf	((c:usb_putstr@s)),c

	call	_usb_putstr	;wreg free
	line	121
	
l81:
	return
	opt stack 0
GLOBAL	__end_of_sendHex
	__end_of_sendHex:
	signat	_sendHex,8312
	global	_usb_putstr

;; *************** function _usb_putstr *****************
;; Defined at:
;;		line 352 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  s               2   20[COMRAM] PTR unsigned char 
;;		 -> sendHex@s(20), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_usb_putch
;; This function is called by:
;;		_sendHex
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"usb_cdc.c"
	line	352
global __ptext11
__ptext11:
psect	text11
	file	"usb_cdc.c"
	line	352
	global	__size_of_usb_putstr
	__size_of_usb_putstr	equ	__end_of_usb_putstr-_usb_putstr
	
_usb_putstr:
;incstack = 0
	opt	stack 24
	line	353
	
l2156:
	goto	l2162
	
l284:
	line	354
	
l2158:
	movff	(c:usb_putstr@s),fsr2l
	movff	(c:usb_putstr@s+1),fsr2h
	movf	indf2,w
	
	call	_usb_putch
	line	355
	
l2160:
	infsnz	((c:usb_putstr@s)),c
	incf	((c:usb_putstr@s+1)),c
	goto	l2162
	line	356
	
l283:
	line	353
	
l2162:
	movff	(c:usb_putstr@s),fsr2l
	movff	(c:usb_putstr@s+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2158
u1540:
	goto	l286
	
l285:
	line	357
	
l286:
	return
	opt stack 0
GLOBAL	__end_of_usb_putstr
	__end_of_usb_putstr:
	signat	_usb_putstr,4216
	global	_usb_putch

;; *************** function _usb_putch *****************
;; Defined at:
;;		line 331 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_usb_process
;; This function is called by:
;;		_parseLine
;;		_main
;;		_usb_putstr
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	331
global __ptext12
__ptext12:
psect	text12
	file	"usb_cdc.c"
	line	331
	global	__size_of_usb_putch
	__size_of_usb_putch	equ	__end_of_usb_putch-_usb_putch
	
_usb_putch:
;incstack = 0
	opt	stack 26
	movwf	((c:usb_putch@ch)),c
	line	333
	
l2138:
	movf	((c:_txbuffer_bytesleft)),c,w
	xorlw	128

	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2142
u1510:
	goto	l279
	line	335
	
l2140:
	goto	l279
	line	336
	
l278:
	line	338
	
l2142:
	movf	((c:_txbuffer_writepos)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_txbuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_txbuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:usb_putch@ch),indf2

	line	339
	
l2144:; BSR set to: 1

	incf	((c:_txbuffer_writepos)),c
	line	340
	
l2146:; BSR set to: 1

	movf	((c:_txbuffer_writepos)),c,w
	xorlw	128

	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2150
u1520:
	
l2148:; BSR set to: 1

	movlw	low(0)
	movwf	((c:_txbuffer_writepos)),c
	goto	l2150
	
l280:; BSR set to: 1

	line	341
	
l2150:; BSR set to: 1

	incf	((c:_txbuffer_bytesleft)),c
	line	344
	
l2152:; BSR set to: 1

	call	_usb_process	;wreg free
	line	345
	
l279:
	return
	opt stack 0
GLOBAL	__end_of_usb_putch
	__end_of_usb_putch:
	signat	_usb_putch,4216
	global	_usb_process

;; *************** function _usb_process *****************
;; Defined at:
;;		line 458 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[COMRAM] unsigned char 
;;  i               1   16[COMRAM] unsigned char 
;;  i               1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_usb_handleDescriptorRequest
;;		_usb_sendProcess
;;		_usb_txprocess
;; This function is called by:
;;		_main
;;		_usb_putch
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	line	458
global __ptext13
__ptext13:
psect	text13
	file	"usb_cdc.c"
	line	458
	global	__size_of_usb_process
	__size_of_usb_process	equ	__end_of_usb_process-_usb_process
	
_usb_process:
;incstack = 0
	opt	stack 26
	line	460
	
l2030:
	call	_usb_txprocess	;wreg free
	line	462
	
l2032:
	btfss	((c:3938)),c,3	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l354
u1360:
	line	465
	
l2034:
	tstfsz	((c:3939)),c	;volatile
	goto	u1371
	goto	u1370
u1371:
	goto	l2124
u1370:
	line	469
	
l2036:
	movff	(512),??_usb_process+0+0	;volatile
	bcf	status,0
	rrcf	(??_usb_process+0+0),c
	bcf	status,0
	rrcf	(??_usb_process+0+0),c

	movlw	0Fh
	andwf	(??_usb_process+0+0),c
	movf	(??_usb_process+0+0),c,w
	xorlw	0Dh

	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2108
u1380:
	line	472
	
l2038:
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	473
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	475
	
l2040:; BSR set to: 2

	movff	(640),??_usb_process+0+0	;volatile
	movlw	060h
	andwf	(??_usb_process+0+0),c
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l2066
u1390:
	goto	l2064
	line	477
	
l2042:; BSR set to: 2

	goto	l2064
	line	478
	
l320:; BSR set to: 2

	line	479
	
l2044:; BSR set to: 2

	movff	0+(640+02h),(c:usb_handleDescriptorRequest@index)	;volatile
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(640+07h))&0ffh,w	;volatile
	movwf	((c:usb_handleDescriptorRequest@length+1)),c
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(640+06h))&0ffh,w	;volatile
	movwf	((c:usb_handleDescriptorRequest@length)),c
	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(640+03h))&0ffh,w	;volatile
	
	call	_usb_handleDescriptorRequest
	iorlw	0
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l347
u1400:
	line	480
	
l2046:
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	481
	movlw	low(0CCh)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l347
	line	482
	
l321:; BSR set to: 2

	line	483
	goto	l347
	line	484
	
l323:; BSR set to: 2

	line	486
	movff	0+(640+02h),(c:_usb_setaddress)	;volatile
	line	488
	
l2048:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	489
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	491
	goto	l347
	line	492
	
l324:; BSR set to: 2

	line	494
	movff	0+(640+02h),(c:_usb_config)	;volatile
	line	495
	
l2050:; BSR set to: 2

	movlw	high(01h)
	movwf	((c:_configured+1)),c
	movlw	low(01h)
	movwf	((c:_configured)),c
	line	496
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	497
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	498
	goto	l347
	line	500
	
l325:; BSR set to: 2

	line	502
	movff	(c:_usb_config),(648)	;volatile
	line	503
	
l2052:; BSR set to: 2

	movlw	low(01h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	504
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	505
	goto	l347
	line	507
	
l326:; BSR set to: 2

	line	509
	
l2054:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((648))&0ffh	;volatile
	line	510
	movlw	low(01h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	511
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	512
	goto	l347
	line	514
	
l327:; BSR set to: 2

	goto	l2056
	line	515
	
l328:; BSR set to: 2

	line	516
	
l2056:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((648))&0ffh	;volatile
	line	517
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(648+01h))&0ffh	;volatile
	line	518
	movlw	low(02h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	519
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	520
	goto	l347
	line	522
	
l329:; BSR set to: 2

	goto	l2058
	line	523
	
l330:; BSR set to: 2

	goto	l2058
	line	524
	
l331:; BSR set to: 2

	line	525
	
l2058:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	526
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	527
	goto	l347
	line	528
	
l332:; BSR set to: 2

	line	529
	
l2060:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	530
	movlw	low(0CCh)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	531
	goto	l347
	line	533
	
l2062:; BSR set to: 2

	goto	l347
	line	477
	
l319:; BSR set to: 2

	
l2064:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(640+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2056
	xorlw	1^0	; case 1
	skipnz
	goto	l2058
	xorlw	3^1	; case 3
	skipnz
	goto	l2058
	xorlw	5^3	; case 5
	skipnz
	goto	l323
	xorlw	6^5	; case 6
	skipnz
	goto	l2044
	xorlw	8^6	; case 8
	skipnz
	goto	l325
	xorlw	9^8	; case 9
	skipnz
	goto	l324
	xorlw	10^9	; case 10
	skipnz
	goto	l2054
	xorlw	17^10	; case 17
	skipnz
	goto	l2058
	xorlw	18^17	; case 18
	skipnz
	goto	l2056
	goto	l2060

	line	533
	
l322:; BSR set to: 2

	line	534
	goto	l347
	
l318:; BSR set to: 2

	
l2066:; BSR set to: 2

	movff	(640),??_usb_process+0+0	;volatile
	movlw	060h
	andwf	(??_usb_process+0+0),c
	movf	(??_usb_process+0+0),c,w
	xorlw	020h

	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l347
u1410:
	goto	l2106
	line	535
	
l2068:; BSR set to: 2

	goto	l2106
	line	537
	
l336:; BSR set to: 2

	line	538
	
l2070:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_process@i)),c
	
l2072:; BSR set to: 2

	movlw	(08h-1)
	cpfsgt	((c:usb_process@i)),c
	goto	u1421
	goto	u1420
u1421:
	goto	l2076
u1420:
	goto	l2082
	
l2074:; BSR set to: 2

	goto	l2082
	
l337:; BSR set to: 2

	
l2076:; BSR set to: 2

	movf	((c:usb_process@i)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(648)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(648)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	
l2078:; BSR set to: 2

	incf	((c:usb_process@i)),c
	
l2080:; BSR set to: 2

	movlw	(08h-1)
	cpfsgt	((c:usb_process@i)),c
	goto	u1431
	goto	u1430
u1431:
	goto	l2076
u1430:
	goto	l2082
	
l338:; BSR set to: 2

	line	539
	
l2082:; BSR set to: 2

	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	540
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	541
	goto	l347
	line	543
	
l340:; BSR set to: 2

	line	544
	
l2084:; BSR set to: 2

	movlw	low(01h)
	movwf	((c:_dolinecoding)),c
	line	545
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	546
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	547
	goto	l347
	line	549
	
l341:; BSR set to: 2

	line	552
	
l2086:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_process@i_667)),c
	
l2088:; BSR set to: 2

	movlw	(07h-1)
	cpfsgt	((c:usb_process@i_667)),c
	goto	u1441
	goto	u1440
u1441:
	goto	l2092
u1440:
	goto	l2098
	
l2090:; BSR set to: 2

	goto	l2098
	
l342:; BSR set to: 2

	line	553
	
l2092:; BSR set to: 2

	movf	((c:usb_process@i_667)),c,w
	mullw	01h
	movlw	low((c:_linecoding))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_linecoding))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_process@i_667)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(648)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	2	; () banked
	movlw	high(648)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	552
	
l2094:; BSR set to: 2

	incf	((c:usb_process@i_667)),c
	
l2096:; BSR set to: 2

	movlw	(07h-1)
	cpfsgt	((c:usb_process@i_667)),c
	goto	u1451
	goto	u1450
u1451:
	goto	l2092
u1450:
	goto	l2098
	
l343:; BSR set to: 2

	line	556
	
l2098:; BSR set to: 2

	movlw	low(07h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	557
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	558
	goto	l347
	line	560
	
l344:; BSR set to: 2

	goto	l2100
	line	561
	
l345:; BSR set to: 2

	line	562
	
l2100:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	563
	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	564
	goto	l347
	line	565
	
l346:; BSR set to: 2

	line	566
	
l2102:; BSR set to: 2

	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+05h))&0ffh	;volatile
	line	567
	movlw	low(0CCh)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	line	568
	goto	l347
	line	569
	
l2104:; BSR set to: 2

	goto	l347
	line	535
	
l335:; BSR set to: 2

	
l2106:; BSR set to: 2

	movlb	2	; () banked
	movlb	2	; () banked
	movf	(0+(640+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 34
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2100
	xorlw	1^0	; case 1
	skipnz
	goto	l2070
	xorlw	32^1	; case 32
	skipnz
	goto	l2084
	xorlw	33^32	; case 33
	skipnz
	goto	l2086
	xorlw	34^33	; case 34
	skipnz
	goto	l2100
	goto	l2102

	line	569
	
l339:; BSR set to: 2

	goto	l347
	line	570
	
l334:; BSR set to: 2

	goto	l347
	line	573
	
l333:; BSR set to: 2

	goto	l347
	
l317:; BSR set to: 2

	line	576
	
l2108:
	movf	((c:_dolinecoding)),c,w
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l347
u1460:
	line	578
	
l2110:
	movlw	low(0)
	movwf	((c:usb_process@i_668)),c
	
l2112:
	movlw	(07h-1)
	cpfsgt	((c:usb_process@i_668)),c
	goto	u1471
	goto	u1470
u1471:
	goto	l2116
u1470:
	goto	l2122
	
l2114:
	goto	l2122
	
l349:
	line	579
	
l2116:
	movf	((c:usb_process@i_668)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(640)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(640)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_process@i_668)),c,w
	mullw	01h
	movlw	low((c:_linecoding))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_linecoding))
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	578
	
l2118:; BSR set to: 2

	incf	((c:usb_process@i_668)),c
	
l2120:; BSR set to: 2

	movlw	(07h-1)
	cpfsgt	((c:usb_process@i_668)),c
	goto	u1481
	goto	u1480
u1481:
	goto	l2116
u1480:
	goto	l2122
	
l350:; BSR set to: 2

	line	581
	
l2122:
	movlw	low(0)
	movwf	((c:_dolinecoding)),c
	goto	l347
	line	582
	
l348:
	line	583
	
l347:
	line	585
	movlw	low(08h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+01h))&0ffh	;volatile
	line	586
	movlw	low(080h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((512))&0ffh	;volatile
	line	588
	goto	l2134
	
l316:; BSR set to: 2

	
l2124:
	movf	((c:3939)),c,w	;volatile
	xorlw	4

	btfss	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2134
u1490:
	line	591
	
l2126:
	movf	((c:_usb_setaddress)),c,w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2132
u1500:
	line	592
	
l2128:
	movff	(c:_usb_setaddress),(3932)	;volatile
	line	593
	
l2130:
	movlw	low(0)
	movwf	((c:_usb_setaddress)),c
	goto	l2132
	line	594
	
l353:
	line	596
	
l2132:
	call	_usb_sendProcess	;wreg free
	goto	l2134
	line	598
	
l352:
	goto	l2134
	line	600
	
l351:
	
l2134:
	bcf	((c:3940)),c,4	;volatile
	line	601
	
l2136:
	bcf	((c:3938)),c,3	;volatile
	goto	l354
	line	602
	
l315:
	line	603
	
l354:
	return
	opt stack 0
GLOBAL	__end_of_usb_process
	__end_of_usb_process:
	signat	_usb_process,88
	global	_usb_txprocess

;; *************** function _usb_txprocess *****************
;; Defined at:
;;		line 362 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1    2[COMRAM] unsigned char 
;;  readpos         1    1[COMRAM] unsigned char 
;;  i               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	362
global __ptext14
__ptext14:
psect	text14
	file	"usb_cdc.c"
	line	362
	global	__size_of_usb_txprocess
	__size_of_usb_txprocess	equ	__end_of_usb_txprocess-_usb_txprocess
	
_usb_txprocess:
;incstack = 0
	opt	stack 28
	line	363
	
l1992:
	tstfsz	((c:_txbuffer_bytesleft)),c
	goto	u1291
	goto	u1290
u1291:
	goto	l1996
u1290:
	goto	l290
	
l1994:
	goto	l290
	
l289:
	line	364
	
l1996:
	movf	((c:_configured+1)),c,w
	iorwf ((c:_configured)),c,w

	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l291
u1300:
	goto	l290
	
l1998:
	goto	l290
	
l291:
	line	365
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+0Ch))&0ffh,(7)&7	;volatile
	goto	u1311
	goto	u1310
u1311:
	goto	l292
u1310:
	goto	l290
	
l2000:; BSR set to: 2

	goto	l290
	
l292:; BSR set to: 2

	line	367
	movff	(c:_txbuffer_bytesleft),(c:usb_txprocess@count)
	line	368
	
l2002:; BSR set to: 2

	movlw	(040h-1)
	cpfsgt	((c:usb_txprocess@count)),c
	goto	u1321
	goto	u1320
u1321:
	goto	l2006
u1320:
	
l2004:; BSR set to: 2

	movlw	low(03Fh)
	movwf	((c:usb_txprocess@count)),c
	goto	l2006
	
l293:; BSR set to: 2

	line	370
	
l2006:; BSR set to: 2

	movf	((c:_txbuffer_bytesleft)),c,w
	sublw	0
	addwf	((c:_txbuffer_writepos)),c,w
	addlw	low(080h)
	andlw	low(07Fh)
	movwf	((c:usb_txprocess@readpos)),c
	line	373
	
l2008:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_txprocess@i)),c
	goto	l2020
	
l295:; BSR set to: 2

	line	374
	
l2010:; BSR set to: 2

	movf	((c:usb_txprocess@readpos)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_txbuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_txbuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:usb_txprocess@i)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(680)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	2	; () banked
	movlw	high(680)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	375
	
l2012:; BSR set to: 2

	incf	((c:usb_txprocess@readpos)),c
	line	376
	
l2014:; BSR set to: 2

	movf	((c:usb_txprocess@readpos)),c,w
	xorlw	128

	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l2018
u1330:
	
l2016:; BSR set to: 2

	movlw	low(0)
	movwf	((c:usb_txprocess@readpos)),c
	goto	l2018
	
l296:; BSR set to: 2

	line	373
	
l2018:; BSR set to: 2

	incf	((c:usb_txprocess@i)),c
	goto	l2020
	
l294:; BSR set to: 2

	
l2020:; BSR set to: 2

	movf	((c:usb_txprocess@count)),c,w
	subwf	((c:usb_txprocess@i)),c,w
	btfss	status,0
	goto	u1341
	goto	u1340
u1341:
	goto	l2010
u1340:
	
l297:; BSR set to: 2

	line	379
	movff	(c:usb_txprocess@count),0+(512+0Dh)	;volatile
	line	380
	
l2022:; BSR set to: 2

	movf	((c:usb_txprocess@count)),c,w
	subwf	((c:_txbuffer_bytesleft)),c
	line	382
	
l2024:; BSR set to: 2

	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+0Ch))&0ffh,(6)&7	;volatile
	goto	u1351
	goto	u1350
u1351:
	goto	l2028
u1350:
	line	383
	
l2026:; BSR set to: 2

	movlw	low(088h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	goto	l290
	line	384
	
l298:; BSR set to: 2

	line	385
	
l2028:; BSR set to: 2

	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+0Ch))&0ffh	;volatile
	goto	l290
	
l299:; BSR set to: 2

	line	386
	
l290:
	return
	opt stack 0
GLOBAL	__end_of_usb_txprocess
	__end_of_usb_txprocess:
	signat	_usb_txprocess,88
	global	_usb_handleDescriptorRequest

;; *************** function _usb_handleDescriptorRequest *****************
;; Defined at:
;;		line 308 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  type            1    wreg     unsigned char 
;;  index           1   11[COMRAM] unsigned char 
;;  length          2   12[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  type            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_usb_loadDescriptor
;; This function is called by:
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	308
global __ptext15
__ptext15:
psect	text15
	file	"usb_cdc.c"
	line	308
	global	__size_of_usb_handleDescriptorRequest
	__size_of_usb_handleDescriptorRequest	equ	__end_of_usb_handleDescriptorRequest-_usb_handleDescriptorRequest
	
_usb_handleDescriptorRequest:
;incstack = 0
	opt	stack 26
	movwf	((c:usb_handleDescriptorRequest@type)),c
	line	310
	
l1960:
	goto	l1986
	line	311
	
l266:
	line	312
	
l1962:
		movlw	high(_usb_dev_desc)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c
	movlw	low(_usb_dev_desc)
	movwf	((c:usb_loadDescriptor@descbuffer)),c

	movlw	high(012h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(012h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l267
	
l1964:
	goto	l267
	line	313
	
l268:
	line	314
	
l1966:
		movlw	high(_usb_config_desc)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c
	movlw	low(_usb_config_desc)
	movwf	((c:usb_loadDescriptor@descbuffer)),c

	movlw	high(043h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(043h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l267
	
l1968:
	goto	l267
	line	315
	
l269:
	line	316
	goto	l1984
	line	317
	
l271:
	
l1970:
		movlw	high(_usb_string_0)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c
	movlw	low(_usb_string_0)
	movwf	((c:usb_loadDescriptor@descbuffer)),c

	movlw	high(04h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(04h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l267
	
l1972:
	goto	l267
	line	318
	
l272:
	
l1974:
		movlw	high(_usb_string_manuf)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c
	movlw	low(_usb_string_manuf)
	movwf	((c:usb_loadDescriptor@descbuffer)),c

	movlw	high(036h)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(036h)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l267
	
l1976:
	goto	l267
	line	319
	
l273:
	
l1978:
		movlw	high(_usb_string_product)
	movwf	((c:usb_loadDescriptor@descbuffer+1)),c
	movlw	low(_usb_string_product)
	movwf	((c:usb_loadDescriptor@descbuffer)),c

	movlw	high(0Eh)
	movwf	((c:usb_loadDescriptor@size+1)),c
	movlw	low(0Eh)
	movwf	((c:usb_loadDescriptor@size)),c
	movff	(c:usb_handleDescriptorRequest@length),(c:usb_loadDescriptor@length)
	movff	(c:usb_handleDescriptorRequest@length+1),(c:usb_loadDescriptor@length+1)
	call	_usb_loadDescriptor	;wreg free
	goto	l267
	
l1980:
	goto	l267
	line	320
	
l1982:
	goto	l1988
	line	316
	
l270:
	
l1984:
	movf	((c:usb_handleDescriptorRequest@index)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1970
	xorlw	1^0	; case 1
	skipnz
	goto	l1974
	xorlw	2^1	; case 2
	skipnz
	goto	l1978
	goto	l1988

	line	320
	
l274:
	line	321
	goto	l1988
	line	310
	
l265:
	
l1986:
	movf	((c:usb_handleDescriptorRequest@type)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l1962
	xorlw	2^1	; case 2
	skipnz
	goto	l1966
	xorlw	3^2	; case 3
	skipnz
	goto	l1984
	goto	l1988

	line	321
	
l275:
	line	323
	
l1988:
	movlw	(0)&0ffh
	goto	l267
	
l1990:
	line	324
	
l267:
	return
	opt stack 0
GLOBAL	__end_of_usb_handleDescriptorRequest
	__end_of_usb_handleDescriptorRequest:
	signat	_usb_handleDescriptorRequest,12409
	global	_usb_loadDescriptor

;; *************** function _usb_loadDescriptor *****************
;; Defined at:
;;		line 288 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;  descbuffer      2    5[COMRAM] PTR const unsigned char 
;;		 -> usb_string_product(14), usb_string_manuf(54), usb_string_0(4), usb_config_desc(67), 
;;		 -> usb_dev_desc(18), 
;;  size            2    7[COMRAM] unsigned short 
;;  length          2    9[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_usb_sendProcess
;; This function is called by:
;;		_usb_handleDescriptorRequest
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	288
global __ptext16
__ptext16:
psect	text16
	file	"usb_cdc.c"
	line	288
	global	__size_of_usb_loadDescriptor
	__size_of_usb_loadDescriptor	equ	__end_of_usb_loadDescriptor-_usb_loadDescriptor
	
_usb_loadDescriptor:
;incstack = 0
	opt	stack 26
	line	290
	
l1948:
	movf	((c:usb_loadDescriptor@length)),c,w
	subwf	((c:usb_loadDescriptor@size)),c,w
	movf	((c:usb_loadDescriptor@length+1)),c,w
	subwfb	((c:usb_loadDescriptor@size+1)),c,w
	btfsc	status,0
	goto	u1281
	goto	u1280
u1281:
	goto	l261
u1280:
	line	291
	
l1950:
	movff	(c:usb_loadDescriptor@size),(c:usb_loadDescriptor@length)
	movff	(c:usb_loadDescriptor@size+1),(c:usb_loadDescriptor@length+1)
	
l261:
	line	293
	movff	(c:usb_loadDescriptor@length),(c:_usb_sendleft)
	movff	(c:usb_loadDescriptor@length+1),(c:_usb_sendleft+1)
	line	294
	
l1952:
		movlw	low highword(__mediumconst)
	movwf	((c:_usb_sendbuffer+2)),c
	movff	(c:usb_loadDescriptor@descbuffer+1),(c:_usb_sendbuffer+1)
	movff	(c:usb_loadDescriptor@descbuffer),(c:_usb_sendbuffer)

	line	296
	
l1954:
	call	_usb_sendProcess	;wreg free
	line	297
	
l1956:
	movf	((c:usb_loadDescriptor@length)),c,w
	goto	l262
	
l1958:
	line	298
	
l262:
	return
	opt stack 0
GLOBAL	__end_of_usb_loadDescriptor
	__end_of_usb_loadDescriptor:
	signat	_usb_loadDescriptor,12409
	global	_usb_sendProcess

;; *************** function _usb_sendProcess *****************
;; Defined at:
;;		line 259 in file "usb_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  length          2    3[COMRAM] unsigned short 
;;  i               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_usb_loadDescriptor
;;		_usb_process
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	259
global __ptext17
__ptext17:
psect	text17
	file	"usb_cdc.c"
	line	259
	global	__size_of_usb_sendProcess
	__size_of_usb_sendProcess	equ	__end_of_usb_sendProcess-_usb_sendProcess
	
_usb_sendProcess:
;incstack = 0
	opt	stack 28
	line	260
	
l1926:
	movf	((c:_usb_sendleft+1)),c,w
	iorwf ((c:_usb_sendleft)),c,w

	btfss	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l251
u1240:
	goto	l252
	
l1928:
	goto	l252
	
l251:
	line	262
	movff	(c:_usb_sendleft),(c:usb_sendProcess@length)
	movff	(c:_usb_sendleft+1),(c:usb_sendProcess@length+1)
	line	263
	
l1930:
	movlw	09h
	subwf	((c:usb_sendProcess@length)),c,w
	movlw	0
	subwfb	((c:usb_sendProcess@length+1)),c,w
	btfss	status,0
	goto	u1251
	goto	u1250
u1251:
	goto	l253
u1250:
	line	264
	
l1932:
	movlw	high(08h)
	movwf	((c:usb_sendProcess@length+1)),c
	movlw	low(08h)
	movwf	((c:usb_sendProcess@length)),c
	
l253:
	line	267
	movlw	low(0)
	movwf	((c:usb_sendProcess@i)),c
	goto	l1942
	
l255:
	line	268
	
l1934:
	movff	(c:_usb_sendbuffer),tblptrl
	movff	(c:_usb_sendbuffer+1),tblptrh
	movff	(c:_usb_sendbuffer+2),tblptru
	movf	((c:usb_sendProcess@i)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(648)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(648)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	tblrd	*
	
	movff	tablat,indf2
	line	269
	
l1936:; BSR set to: 2

	movlw	low(01h)
	addwf	((c:_usb_sendbuffer)),c
	movlw	high(01h)
	addwfc	((c:_usb_sendbuffer+1)),c
	movlw	low highword(01h)
	addwfc	((c:_usb_sendbuffer+2)),c
	line	270
	
l1938:; BSR set to: 2

	decf	((c:_usb_sendleft)),c
	btfss	status,0
	decf	((c:_usb_sendleft+1)),c
	line	267
	
l1940:; BSR set to: 2

	incf	((c:usb_sendProcess@i)),c
	goto	l1942
	
l254:; BSR set to: 2

	
l1942:
	movf	((c:usb_sendProcess@i)),c,w
	movwf	(??_usb_sendProcess+0+0)&0ffh,c
	clrf	(??_usb_sendProcess+0+0+1)&0ffh,c

	movf	((c:usb_sendProcess@length)),c,w
	subwf	(??_usb_sendProcess+0+0),c,w
	movf	((c:usb_sendProcess@length+1)),c,w
	subwfb	(??_usb_sendProcess+0+1),c,w
	btfss	status,0
	goto	u1261
	goto	u1260
u1261:
	goto	l1934
u1260:
	
l256:
	line	273
	movff	(c:usb_sendProcess@length),0+(512+05h)	;volatile
	line	274
	movlb	2	; () banked
	
	movlb	2	; () banked
	btfss	(0+(512+04h))&0ffh,(6)&7	;volatile
	goto	u1271
	goto	u1270
u1271:
	goto	l1946
u1270:
	line	275
	
l1944:; BSR set to: 2

	movlw	low(088h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l252
	line	276
	
l257:; BSR set to: 2

	line	277
	
l1946:; BSR set to: 2

	movlw	low(0C8h)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	(0+(512+04h))&0ffh	;volatile
	goto	l252
	
l258:; BSR set to: 2

	line	278
	
l252:
	return
	opt stack 0
GLOBAL	__end_of_usb_sendProcess
	__end_of_usb_sendProcess:
	signat	_usb_sendProcess,88
	global	_mcp2515_set_bittiming

;; *************** function _mcp2515_set_bittiming *****************
;; Defined at:
;;		line 226 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  cnf1            1    wreg     unsigned char 
;;  cnf2            1    3[COMRAM] unsigned char 
;;  cnf3            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnf1            1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"mcp2515.c"
	line	226
global __ptext18
__ptext18:
psect	text18
	file	"mcp2515.c"
	line	226
	global	__size_of_mcp2515_set_bittiming
	__size_of_mcp2515_set_bittiming	equ	__end_of_mcp2515_set_bittiming-_mcp2515_set_bittiming
	
_mcp2515_set_bittiming:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_bittiming@cnf1)),c
	line	228
	
l2346:
	movff	(c:mcp2515_set_bittiming@cnf1),(c:mcp2515_write_register@data)
	movlw	(02Ah)&0ffh
	
	call	_mcp2515_write_register
	line	229
	movff	(c:mcp2515_set_bittiming@cnf2),(c:mcp2515_write_register@data)
	movlw	(029h)&0ffh
	
	call	_mcp2515_write_register
	line	230
	movff	(c:mcp2515_set_bittiming@cnf3),(c:mcp2515_write_register@data)
	movlw	(028h)&0ffh
	
	call	_mcp2515_write_register
	line	232
	
l403:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_set_bittiming
	__end_of_mcp2515_set_bittiming:
	signat	_mcp2515_set_bittiming,12408
	global	_mcp2515_set_SJA1000_filter_mask

;; *************** function _mcp2515_set_SJA1000_filter_mask *****************
;; Defined at:
;;		line 165 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  amr0            1    wreg     unsigned char 
;;  amr1            1    3[COMRAM] unsigned char 
;;  amr2            1    4[COMRAM] unsigned char 
;;  amr3            1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  amr0            1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	165
global __ptext19
__ptext19:
psect	text19
	file	"mcp2515.c"
	line	165
	global	__size_of_mcp2515_set_SJA1000_filter_mask
	__size_of_mcp2515_set_SJA1000_filter_mask	equ	__end_of_mcp2515_set_SJA1000_filter_mask-_mcp2515_set_SJA1000_filter_mask
	
_mcp2515_set_SJA1000_filter_mask:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_SJA1000_filter_mask@amr0)),c
	line	172
	
l2366:
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr0)),c,w
	xorlw	0ffh
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(020h)&0ffh
	
	call	_mcp2515_write_register
	line	173
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr1)),c,w
	xorlw	0ffh
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(021h)&0ffh
	
	call	_mcp2515_write_register
	line	174
	
l2368:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(022h)&0ffh
	
	call	_mcp2515_write_register
	line	175
	
l2370:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(023h)&0ffh
	
	call	_mcp2515_write_register
	line	178
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr2)),c,w
	xorlw	0ffh
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(024h)&0ffh
	
	call	_mcp2515_write_register
	line	179
	movf	((c:mcp2515_set_SJA1000_filter_mask@amr3)),c,w
	xorlw	0ffh
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(025h)&0ffh
	
	call	_mcp2515_write_register
	line	180
	
l2372:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(026h)&0ffh
	
	call	_mcp2515_write_register
	line	181
	
l2374:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(027h)&0ffh
	
	call	_mcp2515_write_register
	line	183
	
l397:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_set_SJA1000_filter_mask
	__end_of_mcp2515_set_SJA1000_filter_mask:
	signat	_mcp2515_set_SJA1000_filter_mask,16504
	global	_mcp2515_set_SJA1000_filter_code

;; *************** function _mcp2515_set_SJA1000_filter_code *****************
;; Defined at:
;;		line 195 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  acr0            1    wreg     unsigned char 
;;  acr1            1    3[COMRAM] unsigned char 
;;  acr2            1    4[COMRAM] unsigned char 
;;  acr3            1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  acr0            1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         3       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	195
global __ptext20
__ptext20:
psect	text20
	file	"mcp2515.c"
	line	195
	global	__size_of_mcp2515_set_SJA1000_filter_code
	__size_of_mcp2515_set_SJA1000_filter_code	equ	__end_of_mcp2515_set_SJA1000_filter_code-_mcp2515_set_SJA1000_filter_code
	
_mcp2515_set_SJA1000_filter_code:
;incstack = 0
	opt	stack 27
	movwf	((c:mcp2515_set_SJA1000_filter_code@acr0)),c
	line	198
	
l2376:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr0),(c:mcp2515_write_register@data)
	movlw	(0)&0ffh
	
	call	_mcp2515_write_register
	line	199
	
l2378:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr1)),c,w
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(01h)&0ffh
	
	call	_mcp2515_write_register
	line	200
	
l2380:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr0),(c:mcp2515_write_register@data)
	movlw	(04h)&0ffh
	
	call	_mcp2515_write_register
	line	201
	movf	((c:mcp2515_set_SJA1000_filter_code@acr1)),c,w
	andlw	low(0E0h)
	iorlw	low(08h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(05h)&0ffh
	
	call	_mcp2515_write_register
	line	204
	
l2382:
	movff	(c:mcp2515_set_SJA1000_filter_code@acr2),(c:mcp2515_write_register@data)
	movlw	(08h)&0ffh
	
	call	_mcp2515_write_register
	line	205
	
l2384:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr3)),c,w
	andlw	low(0E0h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(09h)&0ffh
	
	call	_mcp2515_write_register
	line	206
	movff	(c:mcp2515_set_SJA1000_filter_code@acr2),(c:mcp2515_write_register@data)
	movlw	(010h)&0ffh
	
	call	_mcp2515_write_register
	line	207
	
l2386:
	movf	((c:mcp2515_set_SJA1000_filter_code@acr3)),c,w
	andlw	low(0E0h)
	iorlw	low(08h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(011h)&0ffh
	
	call	_mcp2515_write_register
	line	210
	
l2388:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(014h)&0ffh
	
	call	_mcp2515_write_register
	line	211
	
l2390:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(015h)&0ffh
	
	call	_mcp2515_write_register
	line	212
	
l2392:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(018h)&0ffh
	
	call	_mcp2515_write_register
	line	213
	
l2394:
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(019h)&0ffh
	
	call	_mcp2515_write_register
	line	214
	
l400:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_set_SJA1000_filter_code
	__end_of_mcp2515_set_SJA1000_filter_code:
	signat	_mcp2515_set_SJA1000_filter_code,16504
	global	_mcp2515_read_register

;; *************** function _mcp2515_read_register *****************
;; Defined at:
;;		line 63 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	63
global __ptext21
__ptext21:
psect	text21
	file	"mcp2515.c"
	line	63
	global	__size_of_mcp2515_read_register
	__size_of_mcp2515_read_register	equ	__end_of_mcp2515_read_register-_mcp2515_read_register
	
_mcp2515_read_register:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_read_register@address)),c
	line	68
	
l2348:
	bcf	((c:3979)),c,6	;volatile
	line	70
	
l2350:
	movlw	(03h)&0ffh
	
	call	_spi_transmit
	line	71
	movf	((c:mcp2515_read_register@address)),c,w
	
	call	_spi_transmit
	line	72
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_read_register@data)),c
	line	75
	
l2352:
	bsf	((c:3979)),c,6	;volatile
	line	77
	
l2354:
	movf	((c:mcp2515_read_register@data)),c,w
	goto	l382
	
l2356:
	line	78
	
l382:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_read_register
	__end_of_mcp2515_read_register:
	signat	_mcp2515_read_register,4217
	global	_mcp2515_receive_message

;; *************** function _mcp2515_receive_message *****************
;; Defined at:
;;		line 349 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  p_canmsg        2    4[COMRAM] PTR struct .
;;		 -> main@canmsg(14), 
;; Auto vars:     Size  Location     Type
;;  i               1   15[COMRAM] unsigned char 
;;  temp            4   11[COMRAM] unsigned long 
;;  status          1   17[COMRAM] unsigned char 
;;  address         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_bit_modify
;;		_mcp2515_rx_status
;;		_spi_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	349
global __ptext22
__ptext22:
psect	text22
	file	"mcp2515.c"
	line	349
	global	__size_of_mcp2515_receive_message
	__size_of_mcp2515_receive_message	equ	__end_of_mcp2515_receive_message-_mcp2515_receive_message
	
_mcp2515_receive_message:
;incstack = 0
	opt	stack 28
	line	351
	
l2642:
	call	_mcp2515_rx_status	;wreg free
	movwf	((c:mcp2515_receive_message@status)),c
	line	354
	
l2644:
	
	btfss	((c:mcp2515_receive_message@status)),c,(6)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l430
u2240:
	line	355
	
l2646:
	movlw	low(0)
	movwf	((c:mcp2515_receive_message@address)),c
	line	356
	goto	l2654
	
l430:
	
	btfss	((c:mcp2515_receive_message@status)),c,(7)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2650
u2250:
	line	357
	
l2648:
	movlw	low(04h)
	movwf	((c:mcp2515_receive_message@address)),c
	line	358
	goto	l2654
	
l432:
	line	360
	
l2650:
	movlw	(0)&0ffh
	goto	l434
	
l2652:
	goto	l434
	line	361
	
l433:
	goto	l2654
	
l431:
	line	363
	
l2654:
	movff	(c:mcp2515_receive_message@status),??_mcp2515_receive_message+0+0
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c
	bcf	status,0
	rrcf	(??_mcp2515_receive_message+0+0),c

	movlw	01h
	andwf	(??_mcp2515_receive_message+0+0),c
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	(indf2),c,w
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	movwf	(indf2),c
	line	364
	movff	(c:mcp2515_receive_message@status),??_mcp2515_receive_message+0+0
	swapf	(??_mcp2515_receive_message+0+0),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	(??_mcp2515_receive_message+0+0),c
	movlw	01h
	andwf	(??_mcp2515_receive_message+0+0),c
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	rlncf	(??_mcp2515_receive_message+0+0),c
	movf	(indf2),c,w
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_mcp2515_receive_message+0+0),c,w
	movwf	(indf2),c
	line	367
	
l2656:
	bcf	((c:3979)),c,6	;volatile
	line	369
	
l2658:
	movf	((c:mcp2515_receive_message@address)),c,w
	iorlw	low(090h)
	
	call	_spi_transmit
	line	371
	
l2660:
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfss	indf2,1
	goto	u2261
	goto	u2260
u2261:
	goto	l2674
u2260:
	line	372
	
l2662:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movlw	015h
u2275:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+1+0),c
	rlcf	(??_mcp2515_receive_message+1+1),c
	rlcf	(??_mcp2515_receive_message+1+2),c
	rlcf	(??_mcp2515_receive_message+1+3),c
	decfsz	wreg
	goto	u2275
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movff	??_mcp2515_receive_message+1+0,postinc2
	movff	??_mcp2515_receive_message+1+1,postinc2
	movff	??_mcp2515_receive_message+1+2,postinc2
	movff	??_mcp2515_receive_message+1+3,postdec2
	decf	fsr2
	decf	fsr2
	line	373
	
l2664:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movwf	((c:mcp2515_receive_message@temp)),c
	clrf	((c:mcp2515_receive_message@temp+1)),c
	clrf	((c:mcp2515_receive_message@temp+2)),c
	clrf	((c:mcp2515_receive_message@temp+3)),c

	line	374
	
l2666:
	movlw	0E0h
	andwf	((c:mcp2515_receive_message@temp)),c,w
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+1)),c,w
	movwf	1+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+2)),c,w
	movwf	2+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+3)),c,w
	movwf	3+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0Dh
u2285:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+0+0),c
	rlcf	(??_mcp2515_receive_message+0+1),c
	rlcf	(??_mcp2515_receive_message+0+2),c
	rlcf	(??_mcp2515_receive_message+0+3),c
	decfsz	wreg
	goto	u2285
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+0+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+3),c,w
	iorwf	postdec2
	movf	postdec2
	movf	postdec2
	line	375
	
l2668:
	movlw	03h
	andwf	((c:mcp2515_receive_message@temp)),c,w
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+1)),c,w
	movwf	1+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+2)),c,w
	movwf	2+(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	0
	andwf	((c:mcp2515_receive_message@temp+3)),c,w
	movwf	3+(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	??_mcp2515_receive_message+0+1,??_mcp2515_receive_message+0+3
	movff	??_mcp2515_receive_message+0+0,??_mcp2515_receive_message+0+2
	clrf	(??_mcp2515_receive_message+0+1),c
	clrf	(??_mcp2515_receive_message+0+0),c
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+0+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+0+3),c,w
	iorwf	postdec2
	movf	postdec2
	movf	postdec2
	line	376
	
l2670:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movff	??_mcp2515_receive_message+1+2,??_mcp2515_receive_message+1+3
	movff	??_mcp2515_receive_message+1+1,??_mcp2515_receive_message+1+2
	movff	??_mcp2515_receive_message+1+0,??_mcp2515_receive_message+1+1
	clrf	(??_mcp2515_receive_message+1+0),c
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movf	(??_mcp2515_receive_message+1+0),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+1),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+2),c,w
	iorwf	postinc2
	movf	(??_mcp2515_receive_message+1+3),c,w
	iorwf	postdec2
	movf	postdec2
	movf	postdec2
	line	377
	
l2672:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postinc2
	iorwf	postinc2
	iorwf	postdec2
	movf	postdec2
	movf	postdec2
	line	378
	goto	l436
	
l435:
	line	379
	
l2674:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movff	(??_mcp2515_receive_message+0+0),??_mcp2515_receive_message+1+0
	clrf	(??_mcp2515_receive_message+1+0+1)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+2)&0ffh,c
	clrf	(??_mcp2515_receive_message+1+0+3)&0ffh,c
	movlw	03h
u2295:
	bcf	status,0
	rlcf	(??_mcp2515_receive_message+1+0),c
	rlcf	(??_mcp2515_receive_message+1+1),c
	rlcf	(??_mcp2515_receive_message+1+2),c
	rlcf	(??_mcp2515_receive_message+1+3),c
	decfsz	wreg
	goto	u2295
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	movff	??_mcp2515_receive_message+1+0,postinc2
	movff	??_mcp2515_receive_message+1+1,postinc2
	movff	??_mcp2515_receive_message+1+2,postinc2
	movff	??_mcp2515_receive_message+1+3,postdec2
	decf	fsr2
	decf	fsr2
	line	380
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	(??_mcp2515_receive_message+0+0)&0ffh,c
	movlw	05h
	movwf	(??_mcp2515_receive_message+1+0)&0ffh,c
u2305:
	bcf	status,0
	rrcf	((??_mcp2515_receive_message+0+0)),c
	decfsz	(??_mcp2515_receive_message+1+0)&0ffh,c
	goto	u2305
	movf	((??_mcp2515_receive_message+0+0)),c,w
	movff	(c:mcp2515_receive_message@p_canmsg),fsr2l
	movff	(c:mcp2515_receive_message@p_canmsg+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postinc2
	iorwf	postinc2
	iorwf	postdec2
	movf	postdec2
	movf	postdec2
	line	381
	
l2676:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	line	382
	
l2678:
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	line	383
	
l436:
	line	386
	lfsr	2,05h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	andlw	low(0Fh)
	movwf	indf2,c

	line	387
	
l2680:
	lfsr	2,04h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	btfsc	indf2,0
	goto	u2311
	goto	u2310
u2311:
	goto	l437
u2310:
	line	389
	
l2682:
	movlw	low(0)
	movwf	((c:mcp2515_receive_message@i)),c
	goto	l2688
	
l439:
	line	390
	
l2684:
	movf	((c:mcp2515_receive_message@i)),c,w
	mullw	01h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movf	(prodl),c,w
	addwf	((c:mcp2515_receive_message@p_canmsg)),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	movwf	1+c:fsr2l
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	indf2,c

	line	389
	
l2686:
	incf	((c:mcp2515_receive_message@i)),c
	goto	l2688
	
l438:
	
l2688:
	lfsr	2,05h
	movf	((c:mcp2515_receive_message@p_canmsg)),c,w
	addwf	fsr2l
	movf	((c:mcp2515_receive_message@p_canmsg+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	subwf	((c:mcp2515_receive_message@i)),c,w
	btfss	status,0
	goto	u2321
	goto	u2320
u2321:
	goto	l2684
u2320:
	goto	l437
	
l440:
	line	392
	
l437:
	line	395
	bsf	((c:3979)),c,6	;volatile
	line	397
	tstfsz	((c:mcp2515_receive_message@address)),c
	goto	u2331
	goto	u2330
u2331:
	goto	l2692
u2330:
	
l2690:
	movlw	low(01h)
	movwf	((c:mcp2515_receive_message@address)),c
	goto	l2694
	line	398
	
l441:
	
l2692:
	movlw	low(02h)
	movwf	((c:mcp2515_receive_message@address)),c
	goto	l2694
	
l442:
	line	399
	
l2694:
	movff	(c:mcp2515_receive_message@address),(c:mcp2515_bit_modify@mask)
	movlw	low(0)
	movwf	((c:mcp2515_bit_modify@data)),c
	movlw	(02Ch)&0ffh
	
	call	_mcp2515_bit_modify
	line	401
	
l2696:
	movlw	(01h)&0ffh
	goto	l434
	
l2698:
	line	402
	
l434:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_receive_message
	__end_of_mcp2515_receive_message:
	signat	_mcp2515_receive_message,4217
	global	_mcp2515_rx_status

;; *************** function _mcp2515_rx_status *****************
;; Defined at:
;;		line 259 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	259
global __ptext23
__ptext23:
psect	text23
	file	"mcp2515.c"
	line	259
	global	__size_of_mcp2515_rx_status
	__size_of_mcp2515_rx_status	equ	__end_of_mcp2515_rx_status-_mcp2515_rx_status
	
_mcp2515_rx_status:
;incstack = 0
	opt	stack 28
	line	262
	
l2396:
	bcf	((c:3979)),c,6	;volatile
	line	264
	
l2398:
	movlw	(0B0h)&0ffh
	
	call	_spi_transmit
	line	265
	movlw	(0FFh)&0ffh
	
	call	_spi_transmit
	movwf	((c:mcp2515_rx_status@status)),c
	line	268
	
l2400:
	bsf	((c:3979)),c,6	;volatile
	line	270
	
l2402:
	movf	((c:mcp2515_rx_status@status)),c,w
	goto	l409
	
l2404:
	line	271
	
l409:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_rx_status
	__end_of_mcp2515_rx_status:
	signat	_mcp2515_rx_status,89
	global	_mcp2515_bit_modify

;; *************** function _mcp2515_bit_modify *****************
;; Defined at:
;;		line 90 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  mask            1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	line	90
global __ptext24
__ptext24:
psect	text24
	file	"mcp2515.c"
	line	90
	global	__size_of_mcp2515_bit_modify
	__size_of_mcp2515_bit_modify	equ	__end_of_mcp2515_bit_modify-_mcp2515_bit_modify
	
_mcp2515_bit_modify:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_bit_modify@address)),c
	line	93
	
l2358:
	bcf	((c:3979)),c,6	;volatile
	line	95
	
l2360:
	movlw	(05h)&0ffh
	
	call	_spi_transmit
	line	96
	movf	((c:mcp2515_bit_modify@address)),c,w
	
	call	_spi_transmit
	line	97
	movf	((c:mcp2515_bit_modify@mask)),c,w
	
	call	_spi_transmit
	line	98
	movf	((c:mcp2515_bit_modify@data)),c,w
	
	call	_spi_transmit
	line	101
	
l2362:
	bsf	((c:3979)),c,6	;volatile
	line	102
	
l385:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_bit_modify
	__end_of_mcp2515_bit_modify:
	signat	_mcp2515_bit_modify,12408
	global	_mcp2515_init

;; *************** function _mcp2515_init *****************
;; Defined at:
;;		line 108 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_mcp2515_write_register
;;		_spi_transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	108
global __ptext25
__ptext25:
psect	text25
	file	"mcp2515.c"
	line	108
	global	__size_of_mcp2515_init
	__size_of_mcp2515_init	equ	__end_of_mcp2515_init-_mcp2515_init
	
_mcp2515_init:
;incstack = 0
	opt	stack 28
	line	113
	
l2588:
	movlw	low(040h)
	movwf	((c:4039)),c	;volatile
	line	114
	movlw	low(021h)
	movwf	((c:4038)),c	;volatile
	line	115
	
l2590:
	movff	(c:4041),(c:mcp2515_init@dummy)	;volatile
	line	116
	movlw	low(0)
	movwf	((c:mcp2515_init@dummy)),c
	line	118
	
l2592:
	bsf	((c:3987)),c,4	;volatile
	line	119
	
l2594:
	bcf	((c:3988)),c,6	;volatile
	line	120
	
l2596:
	bcf	((c:3988)),c,7	;volatile
	line	121
	
l2598:
	bcf	((c:3987)),c,6	;volatile
	line	122
	
l2600:
	bsf	((c:3979)),c,6	;volatile
	line	124
	goto	l388
	
l389:
	
l388:
	incfsz	((c:mcp2515_init@dummy)),c
	
	goto	l388
	
l390:
	line	127
	bcf	((c:3979)),c,6	;volatile
	line	128
	
l2602:
	movlw	(0C0h)&0ffh
	
	call	_spi_transmit
	line	129
	
l2604:
	bsf	((c:3979)),c,6	;volatile
	line	131
	goto	l391
	
l392:
	
l391:
	incfsz	((c:mcp2515_init@dummy)),c
	
	goto	l391
	goto	l2606
	
l393:
	line	133
	
l2606:
	movlw	low(085h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(0Fh)&0ffh
	
	call	_mcp2515_write_register
	line	136
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(060h)&0ffh
	
	call	_mcp2515_write_register
	line	137
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(070h)&0ffh
	
	call	_mcp2515_write_register
	line	140
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(020h)&0ffh
	
	call	_mcp2515_write_register
	line	141
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(021h)&0ffh
	
	call	_mcp2515_write_register
	line	142
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(022h)&0ffh
	
	call	_mcp2515_write_register
	line	143
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(023h)&0ffh
	
	call	_mcp2515_write_register
	line	144
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(024h)&0ffh
	
	call	_mcp2515_write_register
	line	145
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(025h)&0ffh
	
	call	_mcp2515_write_register
	line	146
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(026h)&0ffh
	
	call	_mcp2515_write_register
	line	147
	movlw	low(0)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(027h)&0ffh
	
	call	_mcp2515_write_register
	line	149
	movlw	low(03h)
	movwf	((c:mcp2515_write_register@data)),c
	movlw	(02Bh)&0ffh
	
	call	_mcp2515_write_register
	line	151
	
l394:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_init
	__end_of_mcp2515_init:
	signat	_mcp2515_init,88
	global	_mcp2515_write_register

;; *************** function _mcp2515_write_register *****************
;; Defined at:
;;		line 43 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         1       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_spi_transmit
;; This function is called by:
;;		_parseLine
;;		_mcp2515_init
;;		_mcp2515_set_SJA1000_filter_mask
;;		_mcp2515_set_SJA1000_filter_code
;;		_mcp2515_set_bittiming
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	43
global __ptext26
__ptext26:
psect	text26
	file	"mcp2515.c"
	line	43
	global	__size_of_mcp2515_write_register
	__size_of_mcp2515_write_register	equ	__end_of_mcp2515_write_register-_mcp2515_write_register
	
_mcp2515_write_register:
;incstack = 0
	opt	stack 28
	movwf	((c:mcp2515_write_register@address)),c
	line	46
	
l2290:
	bcf	((c:3979)),c,6	;volatile
	line	48
	
l2292:
	movlw	(02h)&0ffh
	
	call	_spi_transmit
	line	49
	movf	((c:mcp2515_write_register@address)),c,w
	
	call	_spi_transmit
	line	50
	movf	((c:mcp2515_write_register@data)),c,w
	
	call	_spi_transmit
	line	53
	
l2294:
	bsf	((c:3979)),c,6	;volatile
	line	54
	
l379:
	return
	opt stack 0
GLOBAL	__end_of_mcp2515_write_register
	__end_of_mcp2515_write_register:
	signat	_mcp2515_write_register,8312
	global	_spi_transmit

;; *************** function _spi_transmit *****************
;; Defined at:
;;		line 30 in file "mcp2515.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mcp2515_write_register
;;		_mcp2515_read_register
;;		_mcp2515_bit_modify
;;		_mcp2515_init
;;		_mcp2515_read_status
;;		_mcp2515_rx_status
;;		_mcp2515_send_message
;;		_mcp2515_receive_message
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	30
global __ptext27
__ptext27:
psect	text27
	file	"mcp2515.c"
	line	30
	global	__size_of_spi_transmit
	__size_of_spi_transmit	equ	__end_of_spi_transmit-_spi_transmit
	
_spi_transmit:
;incstack = 0
	opt	stack 27
	movwf	((c:spi_transmit@c)),c
	line	31
	
l2154:
	movff	(c:spi_transmit@c),(c:4041)	;volatile
	line	32
	goto	l373
	
l374:
	
l373:
	btfss	((c:4039)),c,0	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l373
u1530:
	
l375:
	line	33
	movf	((c:4041)),c,w	;volatile
	line	34
	
l376:
	return
	opt stack 0
GLOBAL	__end_of_spi_transmit
	__end_of_spi_transmit:
	signat	_spi_transmit,4217
	global	_clock_process

;; *************** function _clock_process *****************
;; Defined at:
;;		line 41 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"clock.c"
	line	41
global __ptext28
__ptext28:
psect	text28
	file	"clock.c"
	line	41
	global	__size_of_clock_process
	__size_of_clock_process	equ	__end_of_clock_process-_clock_process
	
_clock_process:
;incstack = 0
	opt	stack 30
	line	42
	
l2614:
	movff	(c:_clock_lastclock),??_clock_process+0+0
	movff	(c:_clock_lastclock+1),??_clock_process+0+0+1
	comf	(??_clock_process+0+0),c
	comf	(??_clock_process+0+1),c
	infsnz	(??_clock_process+0+0),c
	incf	(??_clock_process+0+1),c
	movf	((c:4054)),c,w	;volatile
	addwf	(??_clock_process+0+0),c
	movf	((c:4054+1)),c,w	;volatile
	addwfc	(??_clock_process+0+1),c
	movlw	078h
	subwf	(??_clock_process+0+0),c,w
	movlw	01h
	subwfb	(??_clock_process+0+1),c,w
	btfss	status,0
	goto	u2201
	goto	u2200
u2201:
	goto	l460
u2200:
	line	43
	
l2616:
	movlw	low(0177h)
	addwf	((c:_clock_lastclock)),c
	movlw	high(0177h)
	addwfc	((c:_clock_lastclock+1)),c
	line	44
	
l2618:
	infsnz	((c:_clock_msticker)),c
	incf	((c:_clock_msticker+1)),c
	line	45
	
l2620:
	movlw	061h
	subwf	((c:_clock_msticker)),c,w
	movlw	0EAh
	subwfb	((c:_clock_msticker+1)),c,w
	btfss	status,0
	goto	u2211
	goto	u2210
u2211:
	goto	l460
u2210:
	
l2622:
	movlw	high(0)
	movwf	((c:_clock_msticker+1)),c
	movlw	low(0)
	movwf	((c:_clock_msticker)),c
	goto	l460
	
l459:
	goto	l460
	line	46
	
l458:
	line	47
	
l460:
	return
	opt stack 0
GLOBAL	__end_of_clock_process
	__end_of_clock_process:
	signat	_clock_process,88
	global	_clock_init

;; *************** function _clock_init *****************
;; Defined at:
;;		line 30 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_clock_reset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	30
global __ptext29
__ptext29:
psect	text29
	file	"clock.c"
	line	30
	global	__size_of_clock_init
	__size_of_clock_init	equ	__end_of_clock_init-_clock_init
	
_clock_init:
;incstack = 0
	opt	stack 29
	line	32
	
l2608:
	call	_clock_reset	;wreg free
	line	35
	
l2610:
	movlw	low(084h)
	movwf	((c:4053)),c	;volatile
	line	36
	
l455:
	return
	opt stack 0
GLOBAL	__end_of_clock_init
	__end_of_clock_init:
	signat	_clock_init,88
	global	_clock_reset

;; *************** function _clock_reset *****************
;; Defined at:
;;		line 61 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_parseLine
;;		_clock_init
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	61
global __ptext30
__ptext30:
psect	text30
	file	"clock.c"
	line	61
	global	__size_of_clock_reset
	__size_of_clock_reset	equ	__end_of_clock_reset-_clock_reset
	
_clock_reset:
;incstack = 0
	opt	stack 29
	line	62
	
l2364:
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	63
	movlw	high(0)
	movwf	((c:_clock_lastclock+1)),c
	movlw	low(0)
	movwf	((c:_clock_lastclock)),c
	line	64
	movlw	high(0)
	movwf	((c:_clock_msticker+1)),c
	movlw	low(0)
	movwf	((c:_clock_msticker)),c
	line	65
	
l466:
	return
	opt stack 0
GLOBAL	__end_of_clock_reset
	__end_of_clock_reset:
	signat	_clock_reset,88
	global	_clock_getMS

;; *************** function _clock_getMS *****************
;; Defined at:
;;		line 54 in file "clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1 BANK2hl  BANK2l BANK2hh
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	line	54
global __ptext31
__ptext31:
psect	text31
	file	"clock.c"
	line	54
	global	__size_of_clock_getMS
	__size_of_clock_getMS	equ	__end_of_clock_getMS-_clock_getMS
	
_clock_getMS:
;incstack = 0
	opt	stack 30
	line	55
	
l2640:
	movff	(c:_clock_msticker),(c:?_clock_getMS)
	movff	(c:_clock_msticker+1),(c:?_clock_getMS+1)
	line	56
	
l463:
	return
	opt stack 0
GLOBAL	__end_of_clock_getMS
	__end_of_clock_getMS:
	signat	_clock_getMS,90
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
