GET "LIBHDR"

LET START() BE
$(  
    LET X=42
    WRCH('H')
    WRCH('e')
    WRCH('l')
    WRCH('l')
    WRCH('o')
    WRCH('*N')
    WRCH('0'+ X/10)
    WRCH('0'+ X REM 10)
    WRCH('*N')
    FINISH
$)
