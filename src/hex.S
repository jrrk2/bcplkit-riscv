# Function to print a number in hexadecimal
.data
tmpbuf:
    .byte 0
.text
    .global hex
hex:
    # Handle zero case
    beqz t1, print_zero      # If t1 is 0, jump to print_zero

    # Print each hexadecimal digit
print_hex:
    andi t2, t1, 15          # Mask to get last 4 bits
    addi t2, t2, '0'         # Convert to ASCII for digits 0-9
    li t3, 'A'               # limit value
    blt t2, t3, store        # If less than 'A', store as is
    addi t2, t2, 7           # Adjust for letters A-F

store:
    la a1,tmpbuf
    sb t2, 0(a1)
    li a0, 1                 # default to stdout
    li a2, 1                 # default to stdout
    li a7, 64                # ECALL number for write
    ecall                    # Print the character

    srl t1, t1, 4            # Shift right by 4 (divide by 16)
    bnez t1, print_hex       # If not zero, continue printing

    ret                      # Return from hex function

print_zero:
    la a1,tmpbuf
    li t2, '0'
    sb t2, 0(a1)
    li a0, 1                 # default to stdout
    li a2, 1                 # default to stdout
    li a7, 64                # ECALL number for write
    ecall                    # Print the character
    ret
