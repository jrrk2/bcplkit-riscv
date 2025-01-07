GET "LIBHDR"

LET START() BE
$(  
    LET V = VEC 10
    LET X,Y = 1, ?
    V!X := 42
    Y := V!X
    FINISH
$)
