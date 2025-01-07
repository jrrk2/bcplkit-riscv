GET "LIBHDR"

LET START() = VALOF
$(
    LET ST = "START"
    LET L = ?
    WRCH('H');
    WRCH('e');
    WRCH('l');
    WRCH('l');
    WRCH('o');
    WRCH('*N');
    WRCH(GETBYTE(ST, 1))
    WRCH(GETBYTE(ST, 2))
    WRCH(GETBYTE(ST, 3))
    WRCH('*N');
    L := GETBYTE(ST, 0)
    WRCH('0'+L)
    WRCH('*N');
    FOR I = 1 TO L DO WRCH(GETBYTE(ST, I))
    FINISH
$)
