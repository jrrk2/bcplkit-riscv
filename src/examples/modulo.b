GET "LIBHDR"

LET START() BE
$(
    LET N, D = -316, 10
    LET I = N REM D
    WRN(I)
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
