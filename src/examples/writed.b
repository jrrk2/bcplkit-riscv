GET "LIBHDR"

LET START() BE
$(
    LET N, D = 316, 6
    LET T = VEC 20 AND I, K = 0, N
    TEST N<0 THEN D := D-1 ELSE K := -N
    $( WRN(K); T!I, K, I := K REM 10, K/10, I+1 $) REPEATUNTIL K=0
    FOR J = 0 TO I-1 DO WRN(T!J)
    FOR J = I+1 TO D DO WRCH('*S')
    IF N<0 DO WRCH('-')
    FOR J = I-1 TO 0 BY -1 DO WRCH('0'-T!J)
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
