
	; Microchip MPLAB XC8 C Compiler V1.33
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; main.c usb_cdc.c mcp2515.c clock.c --chip=18F14K50 --CODEOFFSET=1000h \
	; --ROM=default,-0-fff --MODE=free
	;


	processor	18F14K50

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CODE,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1,noexec
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine
	GLOBAL __accesstop
__accesstop EQU 96


	psect	init
start:

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	0A0h
	stackhi	equ	0FFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:

	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect sfr,class=SFR,space=1


	end	start
