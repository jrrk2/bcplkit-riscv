/* Copyright (c) 2004 Robert Nordier.  All rights reserved. */

/* $Id: icint.c,v 1.6 2004/12/11 12:01:53 rn Exp $ */

#include <stdio.h>
#include <stdlib.h>
#include "blib.h"

#define VSIZE 32000
#define MGLOB 1
#define MPROG 402

#define FALSE 0
#define TRUE 1

#define FSHIFT 13
#define IBIT 010000
#define PBIT 04000
#define GBIT 02000
#define DBIT 01000
#define ABITS 0777
#define WORDSIZE 32
#define BYTESIZE 8

#define LIG1 0012001
#define K2 0140002
#define X22 0160026

register int *M asm("s3");
FILE *fp;

register int G asm("s4");
register int P asm("s5");
static int Ch;
static int Cyclecount;
static int *Labv;
static int Cp;
register int A asm("s6");
register int B asm("s7");
register int C asm("s8");
register int D asm("s9");
register int W asm("s10");

static void assemble(void);
static void stw(int);
static void stc(int);
static void rch(void);
static int rdn(void);
static void setlab(int);
static void labref(int, int);
static int interpret(void);
static int icgetbyte(int, int);
static void icputbyte(int, int, int);

static void
assemble(void)
{
    int v[501];
    int f = 0;
    int i;

    Labv = v;
clear:
    for (i = 0; i <= 500; i++) Labv[i] = 0;
    Cp = 0;
next:
    rch();
sw:
    switch (Ch) {

    default: if (Ch == EOF) return;
        printf("\nBAD CH %c AT P = %d\n", Ch, P);
        goto next;

    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
        setlab(rdn());
        Cp = 0;
        goto sw;

    case '$': case ' ': case '\n': goto next;

    case 'L': f = 0; break;
    case 'S': f = 1; break;
    case 'A': f = 2; break;
    case 'J': f = 3; break;
    case 'T': f = 4; break;
    case 'F': f = 5; break;
    case 'K': f = 6; break;
    case 'X': f = 7; break;

    case 'C': rch(); stc(rdn()); goto sw;

    case 'D': rch();
        if (Ch == 'L') {
            rch();
            stw(0);
            labref(rdn(), P - 1);
        } else
            stw(rdn());
        goto sw;

    case 'G': rch();
        A = rdn() + G;
        if (Ch == 'L') rch();
        else printf("\nBAD CODE AT P = %d\n", P);
        M[A] = 0;
        labref(rdn(), A);
        goto sw;
    case 'Z': for (i = 0; i <= 500; i++)
        if (Labv[i] > 0) printf("L%d UNSET\n", i);
        goto clear;
    }
    W = f << FSHIFT;
    rch();
    if (Ch == 'I') { W = W + IBIT; rch(); }
    if (Ch == 'P') { W = W + PBIT; rch(); }
    if (Ch == 'G') { W = W + GBIT; rch(); }

    if (Ch == 'L') {
        rch();
        stw(W + DBIT);
        stw(0);
        labref(rdn(), P - 1);
    } else {
        int a = rdn();
        if ((a & ABITS) == a)
            stw(W + a);
        else { stw(W + DBIT); stw(a); }
    }
    goto sw;
}

static void
stw(int w)
{
    M[P++] = w;
    Cp = 0;
}

static void
stc(int c)
{
    if (Cp == 0) { stw(0); Cp = WORDSIZE; }
    Cp -= BYTESIZE;
    M[P - 1] += c << Cp;
}

static void
rch(void)
{
    for (;;) {
        Ch = fgetc(fp);
        if (Ch != '/') return;
        do Ch = fgetc(fp); while (Ch != '\n');
    }
}

static int
rdn(void)
{
    int a = 0, b = FALSE;
    if (Ch == '-') { b = TRUE; rch(); }
    while ('0' <= Ch && Ch <= '9') { a = 10 * a + Ch - '0'; rch(); }
    if (b) a = -a;
    return a;
}

static void
setlab(int n)
{
    int k = Labv[n];
    if (k < 0) printf("L%d ALREADY SET TO %d AT P = %d\n", n, -k, P);
    while (k > 0) {
        int n = M[k];
        M[k] = P;
        k = n;
    }
    Labv[n] = -P;
}

static void
labref(int n, int a)
{
    int k = Labv[n];
    if (k < 0) k = -k; else Labv[n] = a;
    M[a] += k;
}

static int cnt = 0;
__attribute__((noinline)) static void Fetch1(void) { cnt++; }
__attribute__((noinline)) static void Fetch2(void) { cnt++; }
__attribute__((noinline)) static void FetchG1(void) { cnt++; }
__attribute__((noinline)) static void FetchG2(void) { cnt++; }
__attribute__((noinline)) static void FetchP1(void) { cnt++; }
__attribute__((noinline)) static void FetchP2(void) { cnt++; }
__attribute__((noinline)) static void IFetch1(void) { cnt++; }
__attribute__((noinline)) static void IFetch2(void) { cnt++; }
__attribute__((noinline)) static void Load(void) { cnt++; }
__attribute__((noinline)) static void Store(void) { cnt++; }
__attribute__((noinline)) static void Add(void) { cnt++; }
__attribute__((noinline)) static void Jump(void) { cnt++; }
__attribute__((noinline)) static void JumpTrue(void) { cnt++; }
__attribute__((noinline)) static void JumpFalse(void) { cnt++; }
__attribute__((noinline)) static void Call(void) { cnt++; }
__attribute__((noinline)) static void Execute(int option) { cnt += option; }

static int
interpret(void)
{
fetch:
    Cyclecount++;
    Fetch1();
    W = M[C++];
    if ((W & DBIT) == 0)
        D = W & ABITS;
    else
        D = M[C++];
    Fetch2();

    if ((W & PBIT) != 0)
	{
	FetchP1();
	D += P;
	FetchP2();
	}
    if ((W & GBIT) != 0)
	{
	FetchG1();
	D += G;
	FetchG2();
	}
    if ((W & IBIT) != 0)
	{
	IFetch1();
	D = M[D];
	IFetch2();
	}
    switch (W >> FSHIFT) {
    error: default: printf("\nINTCODE ERROR AT C = %d\n", C - 1);
        return -1;
    case 0: B = A; A = D; Load(); goto fetch;
    case 1: M[D] = A; Store(); goto fetch;
    case 2: A = A + D; Add(); goto fetch;
    case 3: C = D; Jump(); goto fetch;
    case 4: A = !A; JumpTrue();
    case 5: if (!A) C = D; JumpFalse(); goto fetch;
    case 6: D += P;
        M[D] = P; M[D + 1] = C;
        P = D; C = A;
	Call();
        goto fetch;
    case 7: switch (D) {
        default: goto error;
        case 1: Execute(1); A = M[A]; goto fetch;
        case 2: Execute(2); A = -A; goto fetch;
        case 3: Execute(3); A = ~A; goto fetch;
        case 4: Execute(4); C = M[P + 1];
            P = M[P];
            goto fetch;
        case 5: Execute(5); A = B * A; goto fetch;
        case 6: Execute(6); A = B / A; goto fetch;
        case 7: Execute(7); A = B % A; goto fetch;
        case 8: Execute(8); A = B + A; goto fetch;
        case 9: Execute(9); A = B - A; goto fetch;
        case 10: Execute(10); A = B == A ? ~0 : 0; goto fetch;
        case 11: Execute(11); A = B != A ? ~0 : 0; goto fetch;
        case 12: Execute(12); A = B < A  ? ~0 : 0; goto fetch;
        case 13: Execute(13); A = B >= A ? ~0 : 0; goto fetch;
        case 14: Execute(14); A = B > A ? ~0 : 0; goto fetch;
        case 15: Execute(15); A = B <= A ? ~0 : 0; goto fetch;
        case 16: Execute(16); A = B << A; goto fetch;
        case 17: Execute(17); A = B >> A; goto fetch;
        case 18: Execute(18); A = B & A; goto fetch;
        case 19: Execute(19); A = B | A; goto fetch;
        case 20: Execute(20); A = B ^ A; goto fetch;
        case 21: Execute(21); A = B ^ ~A; goto fetch;
        case 22: Execute(22); return 0;
        case 23: Execute(23); B = M[C]; D = M[C + 1];
            while (B != 0) {
                B--; C += 2;
                if (A == M[C]) { D = M[C + 1]; break; }
            }
            C = D;
            goto fetch;

        case 24: Execute(24); selectinput(A); goto fetch;
        case 25: Execute(25); selectoutput(A); goto fetch;
        case 26: Execute(26); A = rdch(); goto fetch;
        case 27: Execute(27); wrch(A); goto fetch;
        case 28: Execute(28); A = findinput(A); goto fetch;
        case 29: Execute(29); A = findoutput(A); goto fetch;
        case 30: Execute(30); return A;
        case 31: Execute(31); A = M[P]; goto fetch;
        case 32: Execute(32); P = A; C = B; goto fetch;
        case 33: Execute(33); endread(); goto fetch;
        case 34: Execute(34); endwrite(); goto fetch;
        case 35: Execute(35); D = P + B + 1;
                 M[D] = M[P];
                 M[D + 1] = M[P + 1];
                 M[D + 2] = P;
                 M[D + 3] = B;
                 P = D;
                 C = A;
                 goto fetch;
        case 36: Execute(36); A = getbyte(A, B); goto fetch;
        case 37: Execute(37); putbyte(A, B, M[P + 4]); goto fetch;
        case 38: Execute(38); A = input(); goto fetch;
        case 39: Execute(39); A = output(); goto fetch;
        }
    }
}

int main(int argc, char *argv[])
{
    int pgvec[VSIZE];

    if (argc != 2) {
        fprintf(stderr, "usage: icint file\n");
        return 1;
    }
    fp = fopen(argv[1], "r");
    if (fp == NULL) {
        fprintf(stderr, "%s: Can't open\n", argv[1]);
        return 0;
    }
    M = pgvec;
    G = MGLOB;
    P = MPROG;
    M[P++] = LIG1;
    M[P++] = K2;
    M[P++] = X22;
    initio();
    printf("INTCODE SYSTEM ENTERED\n");
    assemble();
    fclose(fp);
    printf("\nPROGRAM SIZE = %d\n", P - MPROG);
    C = MPROG;
    Cyclecount = 0;
    A = interpret();
    printf("\nEXECUTION CYCLES = %d, CODE = %d\n", Cyclecount, A);
    if (A < 0) mapstore();
    return A;
}
