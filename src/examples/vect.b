GET "LIBHDR"

LET START() BE
$(  
    LET V = VEC 10
    LET X,Y = 1, ?
    V!X := 42
    WRN(V!X)
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
