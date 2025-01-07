GET "LIBHDR"

LET START() = VALOF
$(  
    LET V = VEC 10
    LET X,Y = 1, 2
    LET Z = ADD(X, Y)
    RESULTIS V!Z
$)

AND ADD(A,B) = A+B
