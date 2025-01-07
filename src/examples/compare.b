GET "LIBHDR"

LET START() BE
$(  
    LET X=342
    WRCH('H')
    WRCH('e')
    WRCH('l')
    WRCH('l')
    WRCH('o')
    WRCH('*N')
    IF X > 99 THEN WRCH('0'+ X/100)
    IF X > 9 THEN WRCH('0'+ X/10 REM 10)
    WRCH('0'+ X REM 10)
    WRCH('*N')
    FINISH
$)
