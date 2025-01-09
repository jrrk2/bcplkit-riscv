GET "LIBHDR"

LET START() BE
$(  
    LET X, Y = 12345, 20000
    PUTS("Hello, World*N")
    WRN(X)
    WRN(Y)
    PRINTF("%C", '**');
    PRINTF("X=%I, Y=%I, X < Y = %I *N", X, Y, X < Y)
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
AND PUTS(S) BE  FOR I = 1 TO GETBYTE(S, 0) DO WRCH(GETBYTE(S, I))

AND PRINTF(FORMAT, A, B, C, D, E, F, G, H, I, J, K) BE

$(1 LET T = @A

    FOR P = 1 TO GETBYTE(FORMAT, 0) DO
    $(2 LET K = GETBYTE(FORMAT, P)

WRCH(K)
WRCH('*N')
        TEST K='%'

          THEN $(3 LET F, Q, N = 0, T!0, 0
                   AND TYPE = GETBYTE(FORMAT, P+1)
                   P := P + 1
WRCH(TYPE)
WRCH('*N')
                   SWITCHON TYPE INTO
                $( DEFAULT: WRCH(TYPE); ENDCASE

                   CASE 'S': F := PUTS; GOTO L
                   CASE 'C': F := WRCH; PUTS("SELECTED C*N"); GOTO L
                   CASE 'O': F := WRITEOCT; GOTO M
                   CASE 'X': F := WRITEHEX; GOTO M
                   CASE 'I': F := WRITED; GOTO M
                   CASE 'N': F := WRITED; GOTO L

                M: P := P + 1
                   N := GETBYTE(FORMAT, P)
                   N := '0'<=N<='9' -> N-'0', N-'A'+10

                L: PUTS("CALLING F*N"); F(Q, N); T := T + 1  $)3

            OR WRCH(K)  $)2  $)1
