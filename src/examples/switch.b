GET "LIBHDR"

LET START() BE
$(
    LET X = 2
    SWITCHON X INTO
    $( DEFAULT: WRITES("Default*N")
    ENDCASE
    CASE 1: WRITES("ONE*N")
    ENDCASE
    CASE 2: WRITES("TWO*N")
    ENDCASE
    $)
FINISH
$)