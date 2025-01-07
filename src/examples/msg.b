GET "LIBHDR"

LET START() = VALOF
$(
    LET ST = "START*N"
    LET L = ?
    WRCH('H');
    WRCH('e');
    WRCH('l');
    WRCH('l');
    WRCH('o');
    WRCH('*N');
    L := GETBYTE(ST, 0)
    WRCH('0'+L)
    WRCH('*N');
    FOR I = 1 TO L DO WRCH(GETBYTE(ST, I))
    FINISH
$)
