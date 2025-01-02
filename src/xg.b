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

// RISC-V instruction patterns
MANIFEST $(
A.BEQ=0;  A.BNE=1;  A.BLT=2;   A.BGE=3;  A.BGT=4;   A.BLE=5;  A.J=6
A.MUL=7;  A.DIV=8;  A.MV=9;    A.ADD=10; A.SUB=11;  A.SLT=12; A.SLL=13
A.SRL=14; A.AND=15; A.OR=16;   A.XOR=17; A.SW=18;   A.LW=19;  A.ADDI=20
A.SLLI=21; A.SRLI=22; A.JALR=23; A.JAL=24
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

AND GENER(F1, A1, T1) BE
$(  STATIC $(
        F=0; A=0; T=0
        F0=0; A0=0; T0=0
        XL=0
    $)

    LET XDYADIC(X) = 5<=X<=21 | X=32 | 35<=X<=37

    AND XFORCE(X, T) =
        (5<=X<=7 & T=T.N) |
        (16<=X<=17 & T NE T.N) |
        X>=32

    AND LOAD(R, J, FORCE) BE
    $(  LET E = T=T.LP | T=T.LG
        AND M = E | (NOT J & T=T.LL)
        AND I = T>=T.IR
        IF FORCE | M | I $(
            CODE1(E -> A.LW, A.MV, A, T, R)
            IF M & NOT J CODE1(A.SRLI, 2, T.N, R)
            A, T := R, I -> T.IR, T.R
        $)
    $)

    LET X = ?
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
        DATA(".word @A", A, T)
        SECT := 0
        ENDCASE
    CASE 'C':
        SECT := 1
        DATA(".byte @A", A, 0)
        UNLESS F1='C' EMIT(".align 2")
        SECT := 0
        ENDCASE
    CASE 'L':
        X := F1='X' & XDYADIC(A1) -> 1, 0
        LOAD(X, FALSE, X=0 | XFORCE(A1, T))
        ENDCASE
    CASE 'A': CASE 'S':
        LOAD(1, FALSE, FALSE)
        CODE((F='A' -> A.ADD, A.SW), A, T)
        ENDCASE
    CASE 'J':
        LOAD(1, TRUE, FALSE)
        CODE(A.JALR, A, T)
        ENDCASE
    CASE 'T': CASE 'F':
        UNLESS T=T.LL ERROR(6)
        X := A0
        UNLESS F0='X' & 10<=X<=15 $(
            EMIT("bnez a0,1f")
            X := 11
        $)
        CODE((X - 10) NEQV (F='F' -> 1, 0), A, T)
        ENDCASE
    CASE 'K':
        UNLESS T=T.N ERROR(7)
        EMIT("mv s1,sp")
        EMIT("addi sp,sp,-@A", A << 2, T.N, 0, FALSE)
        EMIT("sw s1,0(sp)")
        EMIT("la s1,1f")
        EMIT("sw s1,4(sp)")
        EMIT("jalr zero,a0,0")
        EMIT("1:")
        ENDCASE
    CASE 'X':
        SWITCHON A INTO $(
        DEFAULT: ERROR(8)
        CASE 1:
            EMIT("lw a0,0(a0)")
            ENDCASE
        CASE 2:
            EMIT("neg a0,a0")
            ENDCASE
        CASE 3:
            EMIT("not a0,a0")
            ENDCASE
        CASE 4:
            EMIT("lw t0,4(sp)")
            EMIT("lw sp,0(sp)")
            EMIT("jalr zero,t0,0")
            ENDCASE
        CASE 5:
            CODE(A.MUL, A0, T0)
            ENDCASE
        CASE 6: CASE 7:
            CODE(A.DIV, A0, T0)
            IF A=7
                EMIT("mv a0,a1")
            ENDCASE
        CASE 8:
            CODE(A.ADD, A0, T0)
            ENDCASE
        CASE 9:
            CODE(A.SUB, A0, T0)
            ENDCASE
        CASE 10: CASE 11: CASE 12: CASE 13: CASE 14: CASE 15:
            CODE(A.SLT, A0, T0)
            IF F1='F' | F1='T'
                ENDCASE
            EMIT(ASTR(A - 10 + A.BNE))
            EMIT("andi a0,a0,1")
            EMIT("addi a0,a0,-1")
            ENDCASE
        CASE 16:
            CODE(T0=T.N -> A.SLL, A.SLLI, A0, T0)
            ENDCASE
        CASE 17:
            CODE(T0=T.N -> A.SRL, A.SRLI, A0, T0)
            ENDCASE
        CASE 18:
            CODE(A.AND, A0, T0)
            ENDCASE
        CASE 19:
            CODE(A.OR, A0, T0)
            ENDCASE
        CASE 20:
            CODE(A.XOR, A0, T0)
            ENDCASE
        CASE 21:
            EMIT("not a0,a0")
            CODE(A.XOR, A0, T0)
            ENDCASE
        CASE 22:
            EMIT("j finish")
            ENDCASE
        CASE 23:
            EMIT("la s1,@A", XL, T.LL, 0, FALSE)
            EMIT("lw t1,0(s1)")
            EMIT("lw t2,4(s1)")
            EMIT("beqz t1,2f")
            EMIT("1:")
            EMIT("addi s1,s1,8")
            EMIT("lw t0,0(s1)")
            EMIT("beq a0,t0,3f")
            EMIT("addi t1,t1,-1")
            EMIT("bnez t1,1b")
            EMIT("2:")
            EMIT("jalr zero,t2,0")
            EMIT("3:")
            EMIT("lw t0,4(s1)")
            EMIT("jalr zero,t0,0")
            L!LN := XL
            LN := LN + 1
            XL := XL + 1
            ENDCASE
        CASE 24:
            EMIT("call selectinput")
            ENDCASE
        CASE 25:
            EMIT("call selectoutput")
            ENDCASE
        CASE 26:
            EMIT("call rdch")
            ENDCASE
        CASE 27:
            EMIT("call wrch")
            ENDCASE
        CASE 28:
            EMIT("call findinput")
            ENDCASE
        CASE 29:
            EMIT("call findoutput")
            ENDCASE
        CASE 30:
            EMIT("j stop")
            ENDCASE
        CASE 31:
            EMIT("lw a0,0(sp)")
            ENDCASE
        CASE 32:
            EMIT("mv sp,t0")
            EMIT("jalr zero,a0,0")
            ENDCASE
        CASE 33:
            EMIT("call endread")
            ENDCASE
        CASE 34:
            EMIT("call endwrite")
            ENDCASE
        CASE 35:
            EMIT("mv s1,sp")
            EMIT("mv t0,a0")
            EMIT("addi t0,t0,1")
            EMIT("slli t0,t0,2")
            EMIT("add s1,s1,t0")
            EMIT("lw t0,0(sp)")
            EMIT("sw t0,0(s1)")
            EMIT("lw t0,4(sp)")
            EMIT("sw t0,4(s1)")
            EMIT("mv t0,sp")
            EMIT("srli t0,t0,2")
            EMIT("sw t0,8(s1)")
            EMIT("sw a0,12(s1)")
            EMIT("mv sp,s1")
            EMIT("jalr zero,t1,0")
            ENDCASE
        CASE 36:
            EMIT("slli t1,t1,2")
            EMIT("add t1,a0,t1")
            EMIT("lb a0,0(t1)")
            EMIT("andi a0,a0,0xff")
            ENDCASE
        CASE 37:
            EMIT("slli t1,t1,2")
            EMIT("add t1,a0,t1")
            EMIT("lw a0,16(sp)")
            EMIT("sb a0,0(t1)")
            ENDCASE
        CASE 38:
            EMIT("call input")
            ENDCASE
        CASE 39:
            EMIT("call output")
            ENDCASE
        CASE 40:
            EMIT("call unrdch")
            ENDCASE
        CASE 41:
            EMIT("call rewind")
        $)
    $)
    F0, A0, T0 := F, A, T
    F, A, T := F1, A1, T1
$)

AND ASTR(X) = VALOF
    SWITCHON X INTO $(
    CASE A.BEQ:  RESULTIS "beq a0,x0,L@A"
    CASE A.BNE:  RESULTIS "bne a0,x0,L@A"
    CASE A.BLT:  RESULTIS "blt a0,x0,L@A"
    CASE A.BGE:  RESULTIS "bge a0,x0,L@A"
    CASE A.BGT:  RESULTIS "bgt a0,x0,L@A"
    CASE A.BLE:  RESULTIS "ble a0,x0,L@A"
    CASE A.J:    RESULTIS "j L@A"
    CASE A.MUL:  RESULTIS "mul a0,a0,a1"
    CASE A.DIV:  RESULTIS "div a0,a0,a1"
    CASE A.MV:   RESULTIS "lw @R,@A"
    CASE A.ADD:  RESULTIS "add a0,a0,a1"
    CASE A.SUB:  RESULTIS "sub a0,a0,a1"
    CASE A.SLT:  RESULTIS "slt a0,a0,a1"
    CASE A.SLL:  RESULTIS "sll a0,a0,a1"
    CASE A.SRL:  RESULTIS "srl a0,a0,a1"
    CASE A.AND:  RESULTIS "and a0,a0,a1"
    CASE A.OR:   RESULTIS "or a0,a0,a1"
    CASE A.XOR:  RESULTIS "xor a0,a0,a1"
    CASE A.SW:   RESULTIS "sw @R,@A"
    CASE A.LW:   RESULTIS "lw @R,@A"
    CASE A.ADDI: RESULTIS "addi a0,a0,@A"
    CASE A.SLLI: RESULTIS "slli a0,a0,2"
    CASE A.SRLI: RESULTIS "srli a0,a0,2"
    CASE A.JALR: RESULTIS "jalr zero,a0,0"
    CASE A.JAL:  RESULTIS "jal L@R"
    DEFAULT: ERROR(9)
$)

AND EPILOG() BE
$(  SECT := 1
    EMIT(".global G")
    EMIT(".align 2")
    EMIT("G:")
    FOR I = 0 TO GSZ-1
        EMIT(".word @A # @N", G!I, G!I -> T.LL, T.N, I, 1)
$)

AND CODE(OP, A, T) BE CODE1(OP, A, T, 0)
AND CODE1(OP, A, T, R) BE EMIT(ASTR(OP), A, T, R, OP<=A.J)
AND DATA(S, A, T) BE EMIT(S, A, T, 0, TRUE)

AND EMIT(S, A, T, X, J) BE
$(  STATIC $( PSECT=0 $)
    UNLESS SECT=PSECT $(
        WRITES(SECT=0 -> ".text", ".data"); WRCH('*N')
        PSECT := SECT $)
    IF LN $(
        WRITES(".align 4*N")
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
            CASE 'N':
                ARGOUT(X, T.N)
                ENDCASE
            CASE 'R':
                ARGOUT(X, T.R)
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
        $) ELSE $(
          IF E DO $(
	    IF K=T.LP WRITES("+")
            WRN(A)
            WRITES(K=T.LP -> "(sp)", "(s0)")
	  $) ELSE WRN(A)
        $)
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
