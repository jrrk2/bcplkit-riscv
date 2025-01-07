GET "LIBHDR"

LET START() BE
$(  
    LET X=342
    WRN(X)
    WRCH('*N')
    FINISH
$)

AND WRN(X) BE $( IF X > 9 THEN WRN(X/10); WRCH('0'+ X REM 10) $)
