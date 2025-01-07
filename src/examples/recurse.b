GET "LIBHDR"

LET START() BE
$(  
    WRN(0)
    WRCH('*N')
    WRN(42)
    WRCH('*N')
    WRN(345)
    WRCH('*N')
    WRN(-12345)
    WRCH('*N')
    FINISH
$)

AND WRN(X) BE $( IF X < 0 THEN $( WRCH('-'); X := -X $); WRU(X) $)
AND WRU(X) BE $( IF X > 9 THEN WRU(X/10); WRCH('0'+ X REM 10) $)
