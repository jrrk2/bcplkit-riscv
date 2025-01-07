GET "LIBHDR"

LET WRN(N) = VALOF 
  $(
  IF N > 9 THEN WRN(N / 10);
  WRCH(N REM 10 + '0')
  $)

LET START() = VALOF
$(
    LET MSG = "START"
    LET LEN = GETBYTE(MSG,0)
    WRN(42);
    WRCH('*N');
    WRN(LEN);
    WRCH('*N');
    FOR I = 1 TO LEN DO WRCH(GETBYTE(MSG, I))
    FINISH
$)
