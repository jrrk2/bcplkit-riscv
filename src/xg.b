// Copyright (c) 2004, 2012 Robert Nordier. All rights reserved.
// RISC-V adaptation (c) 2024

// BCPL compiler backend: generates RISC-V assembler from INTCODE

GET "LIBHDR"

MANIFEST $( WORDSZ=4; GSZ=500; LSZ=500 $)

// Type values (N=number, P=local, G=global, L=static, R=register)
MANIFEST $(
T.N=0;  T.LP=1; T.LG=2;  T.LL=3
T.R=4;  T.P=5;  T.G=6;   T.L=7
T.IR=8; T.IP=9; T.IG=10; T.IL=11
$)

GLOBAL $(
G:150           // Definitions vector for globals
L:151           // Definitions vector for labels
LN:152          // Labels in L vector
LOFF:153        // Label offset value
SECT:154        // Section (text or data) in output
LINE:155        // Source line number
COL:156         // Source column number
CH:157          // Source character last read
ERR:158         // Stream for errors
ASM:159         // Stream for output
$)

LET START() = VALOF
$(  LET GVEC = VEC GSZ
    AND LVEC = VEC LSZ
    G := GVEC
    L := LVEC
    FOR I = 0 TO GSZ DO G!I := 0
    LN, SECT, LINE, COL := 0, 0, 0, 0
    LOFF := 2000
    CH := '*N'
    ERR := OUTPUT()
    ASM := FINDOUTPUT("ASM")
    SELECTOUTPUT(ASM)
/*
    WRITEF("#register int A asm(*"s6*") Accumulator *N");
    WRITEF("#register int B asm(*"s7*") Auxiliary *N");
    WRITEF("#register int D asm(*"s9*") Address register *N");
    WRITEF("#register int G asm(*"s4*") Global vector *N");
    WRITEF("#register int *M asm(*"s3*") Base adress for working memory*N");
    WRITEF("#register int P asm(*"s5*") Local and function arguments *N");
*/    
    EMIT(".text")
    EMIT(".align 2")
    EMIT(".global main")
    EMIT("main:")
    EMIT("call initio")
    EMIT("call initmem")
    EMIT("la s4,G")
    EMIT("lw a0,4(s4)")
    EMIT("srli s4,s4,2")
    EMIT("la a1,stop")
    EMIT("slli a2,s5,2")
    EMIT("sw a1,4(a2)")
    EMIT("jalr a0")
    EMIT(".global finish")
    EMIT("finish:")
    EMIT(".global stop")
    EMIT("stop:")
    EMIT(".global unimplemented_40")
    EMIT("unimplemented_40:")
    EMIT("j _exit")
    ASSEM()
    EPILOG()
    ENDWRITE()
    RESULTIS 0
$)

AND ASSEM() BE
$(  LET F, A, T, I = 0, 0, 0, 0
    RCH()
    F := CH
    SWITCHON F INTO $(
    DEFAULT:
        ERROR(1)
    CASE ENDSTREAMCH:
        GENER(0, 0, 0)
        RETURN
    CASE '*S': CASE '*N': CASE '$':
        LOOP
    CASE 'Z':
        LOFF := LOFF + 500
        LOOP
    CASE 'G':
        RCH()
        A := RDN()
        UNLESS A<GSZ ERROR(2)
        UNLESS CH='L' ERROR(3)
        RCH()
        G!A := LOFF + RDN()
        LOOP
    CASE '0': CASE '1': CASE '2': CASE '3': CASE '4':
    CASE '5': CASE '6': CASE '7': CASE '8': CASE '9':
        F := 'B'
        A := LOFF + RDN()
        ENDCASE
    CASE 'A': CASE 'F': CASE 'J': CASE 'K':
    CASE 'L': CASE 'S': CASE 'T': CASE 'X':
        RCH()
        IF CH='I' $( I := 1; RCH() $)
        T := CH='G' -> T.LG,
             CH='P' -> T.LP,
             CH='L' -> T.LL, T.N
        IF F='S' $( IF T=T.N ERROR(4); I := I + 1 $)
        IF T RCH()
        A := RDN()
        IF T=T.LL A := A + LOFF
        T := I << 2 | T
//	IF I > 0 WRITEF("#DBG %S=%I *N", TYP(T), T)
        ENDCASE
    CASE 'C':
        RCH()
        A := RDN()
        ENDCASE
    CASE 'D':
        RCH()
        IF CH='L' $( T := T.LL; RCH() $)
        A := RDN()
        IF T=T.LL A := A + LOFF
    $)
    GENER(F, A, T)
$) REPEAT
/*
AND TYP(T) = VALOF
$(
SWITCHON T INTO $(
       CASE T.N: RESULTIS "T.N"
       CASE T.LL: RESULTIS "T.LL"
       CASE T.LP: RESULTIS "T.LP"
       CASE T.LG: RESULTIS "T.LG"
       CASE T.R: RESULTIS "T.R"
       CASE T.P: RESULTIS "T.P"
       CASE T.G: RESULTIS "T.G"
       CASE T.L: RESULTIS "T.L"
       CASE T.IR: RESULTIS "T.IR"
       CASE T.IP: RESULTIS "T.IP"
       CASE T.IG: RESULTIS "T.IG"
       CASE T.IL: RESULTIS "T.IL"
       DEFAULT: ERROR(88); ENDCASE
       $)
$)
*/
AND GENER(F, A, T) BE
$(
    LET X = ?
    STATIC $( XLBL=10000 $)
//    IF F \= 'B' & F \= 'C' & F \= 'D' WRITEF("#F=%C, A=%I, T=%S *N", F, A, TYP(T))
    SWITCHON T INTO $(
	   CASE T.LP:
	   EMIT("#LP: P@I", A)
	   EMIT("li s9, @I", A)
           EMIT("addw s9,s5,s9")
	   ENDCASE
	   CASE T.LG:
	   EMIT("#LG: G@I", A)
	   EMIT("li s9, @I", A)
           EMIT("addw s9,s4,s9")
	   ENDCASE
	   CASE T.N:
	   IF F='B' | F='C' | F='D' ENDCASE
	   EMIT("#N: @I", A)
	   EMIT("li s9, @I", A)
	   ENDCASE
	   CASE T.LL:
	   IF F='B' | F='C' | F='D' ENDCASE
	   EMIT("#LL: L@I", A)
	   EMIT("la s9, L@I", A)
           EMIT("srli s9,s9,2")
	   ENDCASE
	   CASE T.R:
	   CASE T.IR:
	   EMIT("#R/IR: R@I", A)
	   EMIT("li s9, @I", A)
	   ENDCASE
	   CASE T.P:
	   CASE T.IP:
	   EMIT("#P/IP: P@I", A)
	   EMIT("li s9,@I", A)
           EMIT("addw s9,s5,s9")
           ENDCASE
	   CASE T.G:
	   CASE T.IG:
	   EMIT("#G/IG: G@I", A)
	   EMIT("li s9, @I", A)
           EMIT("addw s9,s4,s9")
	   ENDCASE
	   CASE T.L:
	   CASE T.IL:
	   EMIT("#L/IL: L@I", A)
	   EMIT("la s9, @L", A)
           EMIT("srli s9,s9,2")
	   ENDCASE
	   DEFAULT:
	   ENDCASE
	   $)
    SWITCHON T INTO $(
	   CASE T.IR:
	   EMIT("#DOUBLE IR:")
	   ENDCASE
	   CASE T.IP:
	   EMIT("#DOUBLE IP:")
	   EMIT("sext.w a5,s9")
	   EMIT("slli a5,a5,2")
	   EMIT("lw s9,0(a5)")
//           EMIT("srli s9,s9,2")	   
	   ENDCASE
	   CASE T.IG:
	   EMIT("#DOUBLE IG:")
	   ENDCASE
	   CASE T.IL:
	   EMIT("#DOUBLE IL:")
	   ENDCASE
	   CASE T.G:
	   EMIT("#IND G:")
	   EMIT("sext.w a5,s9")
	   EMIT("slli a5,a5,2")
//	   EMIT("add a5,s3,a5")
	   EMIT("lw s9,0(a5)")
           EMIT("srli s9,s9,2")
	   EMIT("#ILW:")
	   ENDCASE
	   CASE T.P:
	   IF F='S' ENDCASE
	   CASE T.R:
	   EMIT("#IND R:")
	   EMIT("sext.w a5,s9")
	   EMIT("slli a5,a5,2")
	   EMIT("lw s9,0(a5)")
	   EMIT("#IR:")
	   ENDCASE
	   CASE T.L:
	   EMIT("#IND L:")
	   EMIT("sext.w a5,s9")
	   EMIT("slli a5,a5,2")
	   EMIT("lw s9,0(a5)")
           EMIT("srli s9,s9,2")
	   EMIT("#IL:")
	   ENDCASE
	   DEFAULT:
	   ENDCASE
	   $)
    SWITCHON F INTO $(
    CASE 0:
        ENDCASE
    CASE 'B':
        UNLESS LN<LSZ ERROR(5)
        L!LN := A
        LN := LN + 1
        ENDCASE
    CASE 'D':
        SECT := 1
	TEST A < 0 THEN
          DATA(".word -@A", -A, T)
	ELSE
          DATA(".word @A", A, T)
        SECT := 0
        ENDCASE
    CASE 'C':
        SECT := 1
        DATA(".byte @A", A, 0)
        SECT := 0
        ENDCASE
    CASE 'L':
        EMIT("#LOAD:")
        EMIT("mv s7,s6")
        EMIT("mv s6,s9")
        ENDCASE
    CASE 'A':
        EMIT("#ADD:")
        EMIT("addw s6,s9,s6")
        ENDCASE
    CASE 'S':
        EMIT("#SAVE:")
        EMIT("sext.w a5,s9")
        EMIT("slli a5,a5,2")
//        EMIT("add a5,s3,a5")
        EMIT("sw s6,0(a5)")    
        ENDCASE
    CASE 'J':
        EMIT("#JUMP:")
        EMIT("slli s9,s9,2")
        EMIT("jalr s9")
        ENDCASE
    CASE 'T':
        EMIT("#TRUE:")
        EMIT("sext.w s6,s6")
        EMIT("seqz s6,s6")
    CASE 'F':
        EMIT("#FALSE:")
        EMIT("sext.w a5,s6")
        EMIT("bne a5,zero,1f")
        EMIT("slli s9,s9,2")
        EMIT("jalr s9")
        EMIT("1:")
        ENDCASE
    CASE 'K':
        EMIT("#CALL:")
        EMIT("addw a5,s5,s9")
        EMIT("slli a3,a5,2")
        EMIT("sw s5,0(a3)")
        EMIT("auipc t0, 0")
        EMIT("addi t0,t0, 16") // might need adjusting if sequence changes
        EMIT("sw t0,4(a3)")
        EMIT("mv s5,a5")
        EMIT("slli s6,s6,2")
        EMIT("jalr s6")
        ENDCASE
    CASE 'X':
        EMIT("#EXTENDED @I", A); 
        SWITCHON A INTO $(
        CASE 1: // indirection
        EMIT("sext.w a5,s6")
        EMIT("slli a5,a5,2")
//        EMIT("add a5,s3,a5")
        EMIT("lw s6,0(a5)")
            ENDCASE
        CASE 2: // negation
            EMIT("negw s6,s6")
            ENDCASE
        CASE 3: // not
            EMIT("sext.w s6,s6")
            EMIT("not s6,s6")
            ENDCASE
        CASE 4: // subroutine return
            EMIT("slli s5,s5,2")
            EMIT("lw a5,4(s5)")
            EMIT("lw s5,0(s5)")
	    EMIT("jalr a5")
            ENDCASE
        CASE 5: // multiply
            EMIT("mulw s6,s6,s7")
            ENDCASE
        CASE 6: // divide
            EMIT("divw s6,s7,s6")
            ENDCASE
        CASE 7: // modulo
            EMIT("remw s6,s7,s6")
            ENDCASE
        CASE 8: // addition
            EMIT("addw s6,s6,s7")
            ENDCASE
        CASE 9: // subtraction
            EMIT("subw s6,s7,s6")
            ENDCASE
        CASE 10: /* A := B = A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("sub a5,a5,s6")
            EMIT("seqz s6,a5")
            EMIT("neg s6,s6")
	    ENDCASE	
        CASE 11: /* A := B ~= A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("sub a5,a5,s6")
            EMIT("snez s6,a5")
            EMIT("neg s6,s6")
	    ENDCASE	
        CASE 12: /* A := B < A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("slt a5,a5,s6")
            EMIT("negw s6,a5")
	    ENDCASE	
        CASE 13: /* A := B >= A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("slt s6,a5,s6")
            EMIT("addi s6,s6,-1")
	    ENDCASE	
        CASE 14: /* A := B > A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("sgt a5,a5,s6")
            EMIT("negw s6,a5")
	    ENDCASE	
        CASE 15: /* A := B <= A */
            EMIT("sext.w s6,s6")
            EMIT("sext.w a5,s7")
            EMIT("sgt s6,a5,s6")
            EMIT("addi s6,s6,-1")	
            ENDCASE
        CASE 16: /* A := B LSHIFT A */
            EMIT("sllw s6,s7,s6")
            ENDCASE
        CASE 17: /* A := B RSHIFT A */
            EMIT("sraw s6,s7,s6")
            ENDCASE
        CASE 18: // logical AND
            EMIT("and s6,s6,s7")
            ENDCASE
        CASE 19: // Logical OR
            EMIT("or s6,s6,s7")
            ENDCASE
        CASE 20: // Logical XOR
            EMIT("xor s6,s6,s7")
            ENDCASE
        CASE 21: // Logical EQV
            EMIT("xor s6,s7,s6")
            EMIT("sext.w s6,s6")
            EMIT("not s6,s6")
            ENDCASE
        CASE 22: // Finish
            EMIT("j finish")
            ENDCASE
        CASE 23: // Switch
            EMIT("la a5,@L", XLBL)
            EMIT("lw s7,0(a5)")
            EMIT("lw s9,4(a5)")
	    LABEL(XLBL+1)
            EMIT("addi a5,a5,8")
            EMIT("lw a0,0(a5)")
            EMIT("lw a1,4(a5)")
            EMIT("beq s6,a0,@L", XLBL+2)
            EMIT("addiw s7,s7,-1")
            EMIT("bnez s7,@L", XLBL+1)
            EMIT("jalr s9")
	    LABEL(XLBL+2)
            EMIT("jalr a1")
            EMIT(".data")
	    LABEL(XLBL)
            XLBL := XLBL + 3
            ENDCASE
        CASE 24: // select input
            EMIT("sext.w a0,s6")
            EMIT("call selectinput")
            ENDCASE
        CASE 25: // select output
            EMIT("sext.w a0,s6")
            EMIT("call selectoutput")
            ENDCASE
        CASE 26: // read character
            EMIT("call rdch")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 27: // write character
            EMIT("sext.w a0,s6")
            EMIT("call wrch")
            ENDCASE
        CASE 28: // find input
            EMIT("sext.w a0,s6")
            EMIT("call findinput")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 29: // find output
            EMIT("sext.w a0,s6")
            EMIT("call findoutput")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 30: // stop
            EMIT("sext.w a0,s6")
            EMIT("j stop")
            ENDCASE
        CASE 31: // for level
            EMIT("sext.w a5,s5")
            EMIT("slli a5,a5,2")
//            EMIT("add a5,s3,a5")
            EMIT("lw s6,0(a5)")
            ENDCASE
        CASE 32: // for long jump
            EMIT("mv s5,s6")
	    EMIT("slli s7,s7,2")
            EMIT("jalr s7")
            ENDCASE
        CASE 33: // end read
            EMIT("sext.w a0,s6")
            EMIT("call endread")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 34: // end write
            EMIT("sext.w a0,s6")
            EMIT("call endwrite")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 35: // for aptovec
            EMIT("sext.w a3,s5")
            EMIT("slli a5,a3,2")
//            EMIT("add a5,s3,a5")
            EMIT("addw s5,s7,s5")
            EMIT("lw a2,0(a5)")
            EMIT("addiw s5,s5,1")
            EMIT("slli a4,s5,2")
            EMIT("addi a5,a3,1")
//            EMIT("add a4,s3,a4")
            EMIT("slli a5,a5,2")
            EMIT("sw a2,0(a4)")
//            EMIT("add a5,s3,a5")
            EMIT("lw a2,0(a5)")
            EMIT("addi a4,s5,1")
            EMIT("slli a4,a4,2")
//            EMIT("add a4,s3,a4")
            EMIT("addi a5,s5,2")
            EMIT("sw a2,0(a4)")
            EMIT("slli a5,a5,2")
            EMIT("addi a4,s5,3")
//            EMIT("add a5,s3,a5")
            EMIT("slli a4,a4,2")
            EMIT("sw a3,0(a5)")
//            EMIT("add a4,s3,a4")
            EMIT("sw s7,0(a4)")
            EMIT("mv s9,s5")
	    EMIT("slli s6,s6,2")
            EMIT("jalr s6")
            ENDCASE
        CASE 36: /* GETBYTE */
            EMIT("slli t1,s6,2")
            EMIT("add t1,s7,t1")
            EMIT("lb s6,0(t1)")
            EMIT("andi s6,s6,0xff")
            ENDCASE
        CASE 37: /* PUTBYTE */
            EMIT("sext.w a5,s5")
            EMIT("addi a5,a5,4")
            EMIT("slli a5,a5,2")
//            EMIT("add a5,s3,a5")
            EMIT("lw a2,0(a5)")
            EMIT("sext.w a1,s7")
            EMIT("sext.w a0,s6")
            EMIT("slli t1,a0,2")
            EMIT("add t1,a1,t1")
            EMIT("sb a0,0(t1)")
            ENDCASE
        CASE 38: // input
            EMIT("sext.w a0,s6")
            EMIT("call input")
            EMIT("mv s6,a0")
            ENDCASE
        CASE 39: // output
            EMIT("sext.w a0,s6")
            EMIT("call output")
            EMIT("mv s6,a0")
            ENDCASE
        DEFAULT:
        CASE 40: // undo read character
            EMIT("sext.w a0,s6")
            EMIT("call unimplemented_@I", X)
            EMIT("mv s6,a0")
            ENDCASE
        CASE 41: // rewind
            EMIT("sext.w a0,s6")
            EMIT("call rewind")
            EMIT("mv s6,a0")
            ENDCASE
        $)
    $)
$)

AND EPILOG() BE
$(  SECT := 1
    EMIT(".global G")
    EMIT(".align 2")
    EMIT("G:")
    FOR I = 0 TO GSZ-1
        EMIT(".word @A # @N", G!I, G!I -> T.LL, T.N, I, 1)
$)

AND DATA(S, A, T) BE EMIT(S, A, T, 0, TRUE)

AND LABEL(LAB) BE $( L!LN := LAB; LN := LN+1; EMIT("") $)

AND EMIT(S, A, T, X, J) BE
$(  STATIC $( PSECT=0 $)
    UNLESS SECT=PSECT $(
        WRITES(SECT=0 -> ".text", ".data"); WRCH('*N')
        PSECT := SECT $)
    IF LN $(
        WRITES(".align 2*N")
        FOR I = 0 TO LN - 1 $( WRCH('L'); WRN(L!I); WRITES(":*N") $)
        LN := 0 $)
    FOR I = 1 TO GETBYTE(S, 0) $(
        LET C = GETBYTE(S, I)
        TEST C='@' $(
            I := I + 1
            SWITCHON GETBYTE(S, I) INTO $(
            CASE 'A':
                TEST NOT J & (T=T.N | T=T.LL) WRCH(')')
                OR IF J & T>=T.R WRCH('**')
                ARGOUT(A, T)
                ENDCASE
            CASE 'G':
                WRN(A*4)
		WRITES("+G")
                ENDCASE
            CASE 'I':
	        TEST A <0 THEN $(
		WRCH('-')
                WRN(-A)
		$) ELSE $(
                WRN(A)
		$)
                ENDCASE
            CASE 'L':
		WRCH('L')
                ARGOUT(A, T.N)
                ENDCASE
            CASE 'N':
                ARGOUT(X, T.N)
                ENDCASE
            CASE 'P':
                WRN(A*4)
		WRITES("(s2)")
                ENDCASE
            CASE 'R':
                ARGOUT(X, T.R)
                ENDCASE
            CASE 'X':
                WRN(A*WORDSZ)
                ENDCASE
            $)
         $) OR WRCH(C)
    $)
    WRCH('*N')
$)

AND ARGOUT(A, T) BE
$(  TEST T=T.R | T=T.IR THEN
        WRITES(A=0 -> "a0", "a1")
    ELSE $(
        LET K, E = T & 3, K=T.LP | K=T.LG
        IF E DO A := A * WORDSZ
        TEST K=T.LL THEN $(
            WRCH('L')
            WRN(A)
        $) ELSE
            TEST E THEN $(
                WRN(A)
                WRITES(K=T.LP -> "(s2)", "(s0)")
            $) ELSE
                WRN(A)
    $)
$)

AND WRN(N) BE
$(  TEST N<0 THEN $(
        WRCH('-'); N := -N
    $) OR $(
        IF N>9 THEN WRN(N / 10)
        WRCH('0' + N REM 10)
    $)
$)

AND RDN() = VALOF
$(  LET X, N, I = 0, FALSE, 0
    IF CH='-' $( N := TRUE; RCH() $)
    WHILE '0' <= CH <= '9' $(
        X := X * 10 - (CH - '0')
        I := I + 1
        RCH()
    $)
    IF I=0 ERROR(10)
    RESULTIS N -> X, -X
$)

AND RCH() BE
$(  RCH1()
    UNLESS CH='/' RETURN
    $( RCH1();
       IF CH=ENDSTREAMCH DO ERROR(11)
    $) REPEATUNTIL CH='*N'
$) REPEAT

AND RCH1() BE
$(  IF CH='*N' LINE, COL := LINE + 1, 0
    COL := COL + 1
    CH := RDCH()
$)

AND ERROR(N) BE
$(  SELECTOUTPUT(ERR)
    UNLESS LINE=0
        WRITEF("stdin(%N,%N): ", LINE, COL)
    WRITEF("xg error %N*N", N)
    STOP(1)
$)
