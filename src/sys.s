	.global strlen
strlen:	
	/*
	 * Returns
	 *   a0 - string length
	 *
	 * Parameters
	 *   a0 - String to measure
	 *
	 * Clobbers:
	 *   t0, t1
	 */
	mv	t1, a0
1:
	lbu	t0, 0(t1)
	beqz	t0, 2f
	addi	t1, t1, 1
	j	1b
2:
	sub	a0, t1, a0
	ret
# Function to print a character
    .text
    .global wrch
wrch:
    addi sp, sp, -4
    sb a0, 0(sp)
    li a0, 1                 # default to stdout
    mv a1, sp
    li a2, 1                 # length one
    li a7, 64                # ECALL number for write
    ecall                    # Print the character
    addi sp, sp, 4
    ret

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

# Function to print a string
    .text
    .global puts
puts:
    addi sp, sp, -8
    sw a0, 0(sp)
    sw ra, 4(sp)
    call strlen
    mv a2, a0                # length of string
    li a0, 1                 # default to stdout
    lw a1, 0(sp)
    li a7, 64                # ECALL number for write
    ecall                    # Print the string
    li a0, '\n'
    call putchar
    lw ra, 4(sp)
    addi sp, sp, 8
    ret
	
	.global endwrite
endwrite:
	li a0,-1
	ret
	.global findinput
findinput:
	li a0,-1
	ret
	
	.global input
input:
	li a0,-1
	ret	
	
	.global selectinput
selectinput:
	li a0,-1
	ret
	
	.global stop
stop:
	li a0,-1
	ret
	
	.global unrdch
unrdch:
	li a0,-1
	ret
	
	
	.global  endread
endread:
	li a0,-1
	ret
	
	.global  findoutput
findoutput:
	li a0,-1
	ret
	
	.global  output
output:
	li a0,-1
	ret
	
	.global  rewind
rewind:
	li a0,-1
	ret
	
	.global selectoutput
selectoutput:
	li a0,-1
	ret
	
	.global rdch
rdch:
	li a0,-1
	ret
	
	
	
