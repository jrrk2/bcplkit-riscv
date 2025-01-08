GET "LIBHDR"

LET START() BE
$(  
    LET X, Y = 11000, 20000
    WRN(X < Y)
    WRN(X <= Y)
    WRN(X = Y)
    WRN(X \= Y)
    WRN(X >= Y)
    WRN(X > Y)
    X := 1; Y := -1;
    WRN(X < Y)
    WRN(X <= Y)
    WRN(X = Y)
    WRN(X \= Y)
    WRN(X >= Y)
    WRN(X > Y)
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
