GET "LIBHDR"

LET START() BE
$(  
    LET X, Y = 12345, 20000
    WRITES("Hello, World*N")
    WRITEF("X=%I6, Y=%I6, X < Y = %I *N", X, Y, X < Y)
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X); WRCH('*N') $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
