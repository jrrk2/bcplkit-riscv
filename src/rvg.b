// $ID: CG.BCPL,V 1.4 2004/12/21 09:37:53 RN EXP $

//    CG1

GET "CGHDR"

STATIC $( WP=0; STRSIZE=0  $)

LET T(S) = VALOF
      $( FOR I = 0 TO STRSIZE DO UNLESS S!I=WORDV!I RESULTIS FALSE
         RESULTIS TRUE  $)

LET READOP() = VALOF
    $(1 LET S = VEC 20

        CH := RDCH() REPEATWHILE CH='*N' \/ CH='*S'
        WP := 0

        WHILE 'A'<=CH<='Z' DO
           $( WP := WP + 1
              S!WP := CH
              CH := RDCH()  $)

        S!0 := WP
        STRSIZE := PACKSTRING(S, WORDV)

        SWITCHON S!1 INTO
     $( DEFAULT: IF CH=ENDSTREAMCH RESULTIS S.END
                 RESULTIS ERROR

        CASE 'D':
        RESULTIS T("DATALAB") -> S.DATALAB,
                 T("DIV") -> S.DIV,
                 T("DEBUG") -> S.DEBUG, ERROR

        CASE 'E':
        RESULTIS T("EQ") -> S.EQ,
                 T("ENTRY") -> S.ENTRY,
                 T("EQV") -> S.EQV,
                 T("ENDPROC") -> S.ENDPROC,
                 T("END") -> S.END, ERROR

        CASE 'F':
        RESULTIS T("FNAP") -> S.FNAP,
                 T("FNRN") -> S.FNRN,
                 T("FALSE") -> S.FALSE,
                 T("FINISH") -> S.FINISH, ERROR


        CASE 'G':
        RESULTIS T("GOTO") -> S.GOTO,
                 T("GE") -> S.GE,
                 T("GR") -> S.GR,
                 T("GLOBAL") -> S.GLOBAL, ERROR

        CASE 'I':
        RESULTIS T("ITEMN") -> S.ITEMN,
                 T("ITEML") -> S.ITEML,  ERROR

        CASE 'J':
        RESULTIS T("JUMP") -> S.JUMP,
                 T("JF") -> S.JF,
                 T("JT") -> S.JT,  ERROR

        CASE 'L':
        IF WP=2 DO
             SWITCHON S!2 INTO
             $( DEFAULT: RESULTIS ERROR
                CASE 'E': RESULTIS S.LE
                CASE 'N': RESULTIS S.LN
                CASE 'G': RESULTIS S.LG
                CASE 'P': RESULTIS S.LP
                CASE 'L': RESULTIS S.LL
                CASE 'S': RESULTIS S.LS  $)

        RESULTIS T("LAB") -> S.LAB,
                 T("LLG") -> S.LLG,
                 T("LLL") -> S.LLL,
                 T("LLP") -> S.LLP,
                 T("LOGAND") -> S.LOGAND,
                 T("LOGOR") -> S.LOGOR,
                 T("LSHIFT") -> S.LSHIFT,
                 T("LSTR") -> S.LSTR, ERROR

        CASE 'M':
        RESULTIS T("MINUS") -> S.MINUS,
                 T("MULT") -> S.MULT, ERROR

        CASE 'N':
        RESULTIS  T("NE") -> S.NE,
                  T("NEG") -> S.NEG,
                  T("NEQV") -> S.NEQV,
                  T("NOT") -> S.NOT,  ERROR

        CASE 'P':
        RESULTIS T("PLUS") -> S.PLUS, ERROR

        CASE 'Q':
        RESULTIS T("QUERY") -> S.QUERY, ERROR

        CASE 'R':
        RESULTIS T("RES") -> S.RES,
                 T("REM") -> S.REM,
                 T("RTAP") -> S.RTAP,
                 T("RTRN") -> S.RTRN,
                 T("RSHIFT") -> S.RSHIFT,
                 T("RSTACK") -> S.RSTACK,
                 T("RV") -> S.RV, ERROR

        CASE 'S':
        RESULTIS T("SG") -> S.SG,
                 T("SP") -> S.SP,
                 T("SL") -> S.SL,
                 T("STIND") -> S.STIND,
                 T("STACK") -> S.STACK,
                 T("SAVE") -> S.SAVE,
                 T("SWITCHON") -> S.SWITCHON,
                 T("STORE") -> S.STORE, ERROR

        CASE 'T':
        RESULTIS T("TRUE") -> S.TRUE, ERROR              $)1


AND RDN() = VALOF
    $(1 LET A, NEG = 0, FALSE

        CH := RDCH() REPEATWHILE CH='*N' \/ CH='*S'
        IF CH='-' DO $( NEG := TRUE; CH := RDCH()  $)

        WHILE '0' LE CH LE '9' DO
                  $( A := A*10 +CH - '0'
                     CH := RDCH()  $)

        RESULTIS NEG -> -A, A  $)1


AND RDL() = VALOF
    $(1 LET A = 0

        CH := RDCH() REPEATWHILE CH='*N' \/ CH='*S'

        IF CH='L' DO CH := RDCH()

        WHILE '0' LE CH LE '9' DO
                  $( A := A*10 + CH - '0'
                     CH := RDCH()  $)

        RESULTIS A   $)1


.

//    CG2


GET "CGHDR"

LET START(PARM) BE
    $(1 LET V = VEC 8000
        DATAV, DATAT := V, 8000
     $( LET V = VEC 50
        WORDV := V

        SYSPRINT := OUTPUT()
        RVGCODE := FINDOUTPUT("RVGCODE")
        IF RVGCODE=0 DO RVGCODE := SYSPRINT

        PROGLENGTH := 0

        SELECTOUTPUT(RVGCODE)

     $( SSP, STATE := 2*WORDSZ, NIL
        DATAP, LINEP,  PARAM := 0, 0, 500
        GENCODE() $) REPEATWHILE OP=S.GLOBAL

        SELECTOUTPUT(SYSPRINT)
        WRITEF("*NPROGRAM LENGTH = %N*N", PROGLENGTH)
        FINISH            $)1

.

//    CG3


GET "CGHDR"

LET GENCODE() BE
    $(1

NEXT: OP := READOP()

      SWITCHON OP INTO

   $( DEFAULT:    SELECTOUTPUT(SYSPRINT)
                  WRITEF("*NUNKNOWN KEY WORD:  %S*N", WORDV)
                  SELECTOUTPUT(RVGCODE)
                  GOTO NEXT

      CASE S.END: RETURN

      CASE S.DEBUG:
           SELECTOUTPUT(SYSPRINT)
           WRITEF("*NSTATE=%N, SSP=%N, AD.A=%N, AD.K=%N*N",
                     STATE,    SSP,    AD.A,    AD.K)
           SELECTOUTPUT(RVGCODE)
           GOTO NEXT

      CASE S.LP: LOAD(RDN(), M.IP); GOTO NEXT
      CASE S.LG: LOAD(RDN(), M.IG); GOTO NEXT
      CASE S.LL: LOAD(RDL(), M.IL); GOTO NEXT
      CASE S.LN: LOAD(RDN(), M.N); GOTO NEXT

      CASE S.LSTR: CGSTRING(RDN()); GOTO NEXT

      CASE S.TRUE:  LOAD(-1, M.N); GOTO NEXT
      CASE S.FALSE: LOAD(0, M.N); GOTO NEXT


      CASE S.LLP: LOAD(RDN(), M.P); GOTO NEXT
      CASE S.LLG: LOAD(RDN(), M.G); GOTO NEXT
      CASE S.LLL: LOAD(RDL(), M.L); GOTO NEXT

      CASE S.SP: STOREIN(RDN(), M.P); GOTO NEXT
      CASE S.SG: STOREIN(RDN(), M.G); GOTO NEXT
      CASE S.SL: STOREIN(RDL(), M.L); GOTO NEXT

      CASE S.STIND: FORCE.ACAD()
                    CODE(F.S, AD.A, AD.K)
                    SSP, STATE := SSP-2*WORDSZ, NIL
                    GOTO NEXT

      CASE S.MULT:CASE S.DIV:CASE S.REM:
      CASE S.MINUS:CASE S.EQ:CASE S.NE:
      CASE S.LS:CASE S.GR:CASE S.LE:CASE S.GE:
      CASE S.LSHIFT:CASE S.RSHIFT:
      CASE S.LOGAND:CASE S.LOGOR:CASE S.NEQV:CASE S.EQV:
           FORCE.ACAD()
           CODE(F.L, AD.A, AD.K)
           CODE(F.X, OP, M.N)
           STATE, SSP := AC, SSP-WORDSZ
           GOTO NEXT

      CASE S.RV:CASE S.NEG:CASE S.NOT:
           FORCE.AC()
           CODE(F.X, OP, M.N)
           GOTO NEXT

      CASE S.PLUS: FORCE.ACAD()
                   CODE(F.A, AD.A, AD.K)
                   STATE, SSP := AC, SSP-WORDSZ
                   GOTO NEXT

      CASE S.JUMP: FORCE.NIL()
                   CODE(F.J, RDL(), M.L)
                   GOTO NEXT

      CASE S.JT:CASE S.JF:
                FORCE.AC()
                CODE(OP=S.JT->F.T,F.F, RDL(), M.L)
                SSP, STATE := SSP-WORDSZ, NIL
                GOTO NEXT

      CASE S.GOTO: FORCE.AD()
                   CODE(F.J, AD.A, AD.K)
                   SSP, STATE := SSP-WORDSZ, NIL
                   GOTO NEXT

      CASE S.LAB: FORCE.NIL()
                  COMPLAB(RDL())
                  GOTO NEXT

      CASE S.QUERY: FORCE.NIL(); SSP := SSP + WORDSZ; GOTO NEXT

      CASE S.STACK: FORCE.NIL(); SSP := WORDSZ * RDN(); GOTO NEXT

      CASE S.STORE: FORCE.NIL(); GOTO NEXT

      CASE S.ENTRY: $( LET N = RDN()
                       LET L = RDL()
                       WRITEF("ENTRY*N")
                       FOR I = 1 TO N DO RDN()
                       COMPLAB(L)
                       GOTO NEXT  $)

      CASE S.SAVE: SSP := RDN(); GOTO NEXT

      CASE S.ENDPROC: RDN(); GOTO NEXT
      CASE S.RTAP:
      CASE S.FNAP: $( LET K = RDN()
                      FORCE.AC()
                      CODE(F.K, K, M.N)
                      TEST OP=S.FNAP
                            THEN SSP, STATE := K*WORDSZ+WORDSZ, AC
                              OR SSP, STATE := K*WORDSZ, NIL
                      GOTO NEXT   $)

      CASE S.FNRN: FORCE.AC()
                   SSP := SSP - WORDSZ
      CASE S.RTRN: CODE(F.X, S.RTRN, M.N)
                   STATE := NIL
                   GOTO NEXT

      CASE S.RES: FORCE.AC()
                  CODE(F.J, RDL(), M.L)
                  SSP, STATE := SSP-WORDSZ, NIL
                  GOTO NEXT

      CASE S.RSTACK: FORCE.NIL()
                     SSP, STATE := WORDSZ * RDN() + WORDSZ, AC
                     GOTO NEXT

      CASE S.FINISH: CODE(F.X, OP, M.N); GOTO NEXT

      CASE S.SWITCHON:
          $( LET N = RDN()
             LET D = RDL()
             FORCE.AC()
             CODE(F.X, OP, M.N)
             CODE(F.D, N, M.N)
             CODE(F.D, D, M.L)
             SSP, STATE := SSP-WORDSZ, NIL
             FOR I = 1 TO N DO
                  $( CODE(F.D, RDN(), M.N)
                     CODE(F.D, RDL(), M.L)  $)
             GOTO NEXT  $)


        CASE S.GLOBAL:
             WRITEF("GLOBALS*N")
             FOR I = 0 TO DATAP-2 BY 2 DO WRDATA(DATAV!I, DATAV!(I+1))
             FOR I = 1 TO RDN() DO
                 $( WRITEF("GLOB(%I,L%I)*N",RDN(), RDL()) $)
             WRITEF("ENDGLOBALS*N")
             RETURN

      CASE S.DATALAB:
      CASE S.ITEML: DATA(OP, RDL())
                    GOTO NEXT

      CASE S.ITEMN: DATA(OP, RDN())
                    GOTO NEXT                   $)1

.

//    CG4


GET "CGHDR"

// BCPL CODE GENERATOR CUSTOMIZATION FOR RISC-V
// NOTE: THIS IS A SIMPLIFIED EXAMPLE AND MAY NEED FURTHER REFINEMENT

// REGISTER ALLOCATION
// X0: ZERO (HARDWIRED TO 0)
// X1: RETURN ADDRESS
// X2: STACK POINTER
// X3: GLOBAL POINTER
// X4: THREAD POINTER
// X5-X7, X28-X31: TEMPORARIES
// X8-X9: SAVED REGISTERS (S0-S1)
// X10-X17: ARGUMENT/RETURN REGISTERS (A0-A7)
// X18-X27: SAVED REGISTERS (S2-S11)

MANIFEST $(
  F.ADDI = 1
  F.LD = 2
  F.LDI = 3
  F.SD = 4
$)

STATIC $(
  INREG.A = 0
  INREG.B = 0
  INREG.X = 0
$)

LET FORCE.A() BE
$( // LOAD ACCUMULATOR (ASSUMING X10 AS ACCUMULATOR)
    WRITES("FORCE.A*N");
    IF INREG.A RETURN
    LOADA()
    INREG.A := TRUE
$)

AND FORCE.B() BE
$( // LOAD SECOND ACCUMULATOR (ASSUMING X11 AS SECOND ACCUMULATOR)
    WRITES("FORCE.B*N");
    IF INREG.B RETURN
    LOADB()
    INREG.B := TRUE
$)

AND FORCE.AB() BE
$( // ENSURE BOTH ACCUMULATORS ARE LOADED
    WRITES("FORCE.AB*N");
    FORCE.B()
    FORCE.A()
$)

AND FORCE.X() BE
$( // LOAD INDEX REGISTER (ASSUMING X12 AS INDEX REGISTER)
    WRITES("FORCE.X*N");
    IF INREG.X RETURN
    LOADX()
    INREG.X := TRUE
$)

AND FORCE.NIL() BE
$( // CLEAR ACCUMULATOR
    WRITES("FORCE.NIL*N");
    INREG.A := FALSE
    GENXCH(F.LDI, 0, 0, 0)  // LDI X10, ZERO
$)

AND GET.GLOB() = VALOF
$(
RESULTIS -1 // PLACEHOLDER
$)

AND LOADA() BE
$( // LOAD ACCUMULATOR FROM MEMORY
    LET G = GET.GLOB()
    TEST G < 0
    THEN GENXCH(F.LD, 10, 3, -G)     // LD X10, -G(X3)
    ELSE GENXCH(F.LD, 10, 3, G)      // LD X10, G(X3)
$)

AND LOADB() BE
$( // LOAD SECOND ACCUMULATOR FROM MEMORY
    LET G = GET.GLOB()
    TEST G < 0
    THEN GENXCH(F.LD, 11, 3, -G)     // LD X11, -G(X3)
    ELSE GENXCH(F.LD, 11, 3, G)      // LD X11, G(X3)
$)

AND LOADX() BE
$( // LOAD INDEX REGISTER FROM MEMORY
    LET G = GET.GLOB()
    TEST G < 0
    THEN GENXCH(F.LD, 12, 3, -G)     // LD X12, -G(X3)
    ELSE GENXCH(F.LD, 12, 3, G)      // LD X12, G(X3)
$)

AND STOREA() BE
$( // STORE ACCUMULATOR TO MEMORY
    LET G = GET.GLOB()
    TEST G < 0
    THEN GENXCH(F.SD, 10, 3, -G)     // SD X10, -G(X3)
    ELSE GENXCH(F.SD, 10, 3, G)      // SD X10, G(X3)
    INREG.A := FALSE
$)

AND FORCE.ACAD() BE 
$( // LOAD ADDRESS OF ACCUMULATOR INTO ACCUMULATOR
    LET G = GET.GLOB()
    TEST G < 0
    THEN GENXCH(F.ADDI, 10, 3, -G)   // ADDI X10, X3, -G
    ELSE GENXCH(F.ADDI, 10, 3, G)    // ADDI X10, X3, G
    INREG.A := TRUE
$)

// ... ADDITIONAL FORCE.* FUNCTIONS AS NEEDED

AND GENXCH(F, A, B, D) BE
$( // GENERATE RISC-V INSTRUCTION
    // F: FUNCTION CODE
    // A: DESTINATION REGISTER
    // B: SOURCE REGISTER
    // D: IMMEDIATE OR OFFSET
    SELECTOUTPUT(RVGCODE)
    WRITEF("#F=%I *N", F)
    SWITCHON F INTO
    $( CASE F.LDI:  WRITES("LDI X")
                   WRITEN(A)
                   WRITES(", ")
                   WRITEN(D)
                   NEWLINE()
                   ENDCASE
      CASE F.LD:   WRITES("LD X")
                   WRITEN(A)
                   WRITES(", ")
                   WRITEN(D)
                   WRITES("(X")
                   WRITEN(B)
                   WRITES(")")
                   NEWLINE()
                   ENDCASE
      CASE F.SD:   WRITES("SD X")
                   WRITEN(A)
                   WRITES(", ")
                   WRITEN(D)
                   WRITES("(X")
                   WRITEN(B)
                   WRITES(")")
                   NEWLINE()
                   ENDCASE
      CASE F.ADDI: WRITES("ADDI X")
                   WRITEN(A)
                   WRITES(", X")
                   WRITEN(B)
                   WRITES(", ")
                   WRITEN(D)
                   NEWLINE()
                   ENDCASE
      // ... ADDITIONAL CASES FOR OTHER RISC-V INSTRUCTIONS
    $)
    SELECTOUTPUT(SYSPRINT)$)

AND LOAD(A, K) BE
      SWITCHON STATE INTO
      $( CASE NIL: STATE := AD
                   GOTO M

         CASE ACAD:
         CASE AD:  FORCE.AC()
         CASE AC:  STATE := ACAD
         M:        AD.A, AD.K := A, K
                   SSP := SSP + WORDSZ  $)


AND STOREIN(A, K) BE
    $( FORCE.AC()
       CODE(F.S, A, K)
       SSP, STATE := SSP-WORDSZ, NIL  $)

AND CGSTRING(N) BE
    $(1 LET L = NEXTPARAM()
        DATA(S.DATALAB, L)
        DATA(S.CHAR, N)
        FOR I = 1 TO N DO DATA(S.CHAR, RDN())
        LOAD(L, M.L)
        RETURN  $)1

AND DATA(K, V) BE
    $( LET P = DATAP
       DATAV!P, DATAV!(P+1) := K, V
       DATAP := DATAP + 2
       IF DATAP>DATAT DO
              $( SELECTOUTPUT(SYSPRINT)
                 WRITES("*NTOO MANY CONSTANTS*N")
                 SELECTOUTPUT(RVGCODE)
                 DATAP := 0  $)  $)

AND NEXTPARAM() = VALOF $( PARAM := PARAM - 1
                           RESULTIS PARAM  $)

.

//    CG5


GET "CGHDR"

LET CODE(F, A, K) BE
    $( SWITCHON(F) INTO $(
       CASE F.D: WRITEF("DATA: "); ENDCASE
       CASE F.L:        SWITCHON K INTO
       $( CASE M.I: WRITEF("M.I %I *N", A); ENDCASE
          CASE M.N: WRITEF("D = %I;*N", A); ENDCASE

          CASE M.IG: WRITEF("M.IG %I *N", A); ENDCASE
          CASE M.G:  WRITEF("M.G %I *N", A); ENDCASE

          CASE M.IP: WRITEF("M.IP %I *N", A); ENDCASE
          CASE M.P:  WRITEF("M.P %I *N", A); ENDCASE

          CASE M.IL: WRITEF("M.IL %I *N", A); ENDCASE
          CASE M.L:  WRITEF("M.L %I *N", A); ENDCASE
	  $); WRITEF("B = A; A = D;*N"); ENDCASE
       CASE F.S: WRITEF("M[D] = A;*N"); ENDCASE
       CASE F.J: WRITEF("C = D;*N"); ENDCASE
       CASE F.T: WRITEF("IF (A) C = D;*N"); ENDCASE
       CASE F.F: WRITEF("IF (!A) C = D;*N"); ENDCASE
       CASE F.K: WRITEF("D += P; M[D] = P;M[D + 1] = C; P = D;C = A;*N"); ENDCASE
       CASE F.X: SWITCHON A INTO
     $( CASE S.RV: WRITEF("A = M[A];*N"); ENDCASE
        CASE S.NEG: WRITEF("A = -A;*N"); ENDCASE
        CASE S.NOT: WRITEF("A = ~A;*N"); ENDCASE
        CASE S.RTRN: WRITEF("C = M[P + 1]; P = M[P];*N"); ENDCASE
        CASE S.MULT: WRITEF("A = B * A;*N"); ENDCASE
        CASE S.DIV: WRITEF("A = B / A;*N"); ENDCASE
        CASE S.REM: WRITEF("A = B % A;*N"); ENDCASE
        CASE S.PLUS: WRITEF("A = B + A;*N"); ENDCASE
        CASE S.MINUS: WRITEF("A = B - A;*N"); ENDCASE
        CASE S.EQ: WRITEF("A = B == A ? ~0 : 0;*N"); ENDCASE
        CASE S.NE: WRITEF("A = B != A ? ~0 : 0;*N"); ENDCASE
        CASE S.LS: WRITEF("A = B < A  ? ~0 : 0;*N"); ENDCASE
        CASE S.GE: WRITEF("A = B >= A ? ~0 : 0;*N"); ENDCASE
        CASE S.GR: WRITEF("A = B > A ? ~0 : 0;*N"); ENDCASE
        CASE S.LE: WRITEF("A = B <= A ? ~0 : 0;*N"); ENDCASE
        CASE S.LSHIFT: WRITEF("A = B << A;*N"); ENDCASE
        CASE S.RSHIFT: WRITEF("A = B >> A*N"); ENDCASE
        CASE S.LOGAND: WRITEF("A = B & A;*N"); ENDCASE
        CASE S.LOGOR: WRITEF("A = B | A;*N"); ENDCASE
        CASE S.NEQV: WRITEF("A = B ^ A;*N"); ENDCASE
        CASE S.EQV: WRITEF("A = B ^ ~A;*N"); ENDCASE
        CASE S.FINISH: WRITEF("FINISH()*N"); ENDCASE
        CASE S.SWITCHON: WRITEF("B = M[C]; D = M[C + 1]; WHILE (B != 0) $( B--; C += 2; IF (A == M[C]) $( D = M[C + 1]; BREAK; $) $) C = D;*N"); ENDCASE
        DEFAULT: SELECTOUTPUT(SYSPRINT)
                 WRITEF("*NUNKNOWN OP %N*N", OP)
                 SELECTOUTPUT(RVGCODE)
                 ENDCASE  $); ENDCASE
       DEFAULT:  WRITEF("DEFAULT(%C): ", F); ENDCASE
       $)
       /*
       SWITCHON K INTO
       $( CASE M.I: WRITEF("M.I %I *N", A); ENDCASE
          CASE M.N: WRITEF("M.N %I *N", A); ENDCASE

          CASE M.IG: WRITEF("M.IG %I *N", A); ENDCASE
          CASE M.G:  WRITEF("M.G %I *N", A); ENDCASE

          CASE M.IP: WRITEF("M.IP %I *N", A); ENDCASE
          CASE M.P:  WRITEF("M.P %I *N", A); ENDCASE

          CASE M.IL: WRITEF("M.IL %I *N", A); ENDCASE
          CASE M.L:  WRITEF("M.L %I *N", A); ENDCASE
	  $)
	  */
       PROGLENGTH := PROGLENGTH + 1  $)

AND COMPLAB(N) BE $( WRITEF("COMPLAB %I *N", N) $)

AND WRDATA(K, N) BE SWITCHON K INTO
      $( CASE S.DATALAB: COMPLAB(N); RETURN

         CASE S.ITEMN: CODE(F.D, N, M.N); RETURN

         CASE S.ITEML: CODE(F.D, N, M.L); RETURN

         CASE S.CHAR:  CODE(F.C, N, M.N); RETURN  $)

AND WR(CH) BE
    $( IF CH='*N' DO $( WRCH('*N')
                        LINEP := 0
                        RETURN  $)

       IF LINEP=71 DO
              $( WRCH('/')
                 WRCH('*N')
                 LINEP := 0  $)
       LINEP := LINEP + 1
       WRCH(CH)  $)

AND WRN(N) BE
    $( TEST N<0 DO WR('-') OR N := -N
       IF N<-9 DO WRN(-N/10)
       WR('0' - N REM 10)  $)
