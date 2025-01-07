# Function to print a number in hexadecimal
    .text
    .global putchar
putchar:
    addi sp, sp, -4
    sb a0, 0(sp)
    li a0, 1                 # default to stdout
    mv a1, sp
    li a2, 1                 # length one
    li a7, 64                # ECALL number for write
    ecall                    # Print the character
    addi sp, sp, 4
    ret
