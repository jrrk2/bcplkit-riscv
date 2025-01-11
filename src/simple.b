GET "LIBHDR"

LET START() = VALOF
$(  
    LET x = 5
    LET y = 3
    LET z = x + y
    writef("Sum of %n and %n is %n*n", x, y, z)
    RESULTIS 0
$)

