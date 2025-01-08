GET "LIBHDR"

LET START() BE
$(  
    LET V = VEC 10
    LET X,TOT = 1, 0
    FOR I = 1 TO 10 DO V!I := I
    FOR I = 1 TO 10 DO TOT := TOT + V!I
    WRITEN(TOT)
    FINISH
$)
