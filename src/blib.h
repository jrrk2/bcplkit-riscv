/* Copyright (c) 2004 Robert Nordier.  All rights reserved. */

/* $Id: blib.h,v 1.3 2004/12/11 11:27:20 rn Exp $ */

#ifndef BLIB_H_
#define BLIB_H_

int getbyte(int, int);
void putbyte(int, int, int);
void initio(void);
int findinput(int);
int findoutput(int);
void selectinput(int);
void selectoutput(int);
int input(void);
int output(void);
int rdch(void);
void wrch(int);
void endread(void);
void endwrite(void);
void mapstore(void);

#ifdef __riscv
#define ASM(x) asm(x)
#define REGISTER register
#else
#define ASM(x)
#define REGISTER extern
#endif

REGISTER int *M ASM("s3");
REGISTER int G ASM("s4");
REGISTER int P ASM("s5");
REGISTER int A ASM("s6");
REGISTER int B ASM("s7");
REGISTER int C ASM("s8");
REGISTER int D ASM("s9");
REGISTER int W ASM("s10");

#endif
