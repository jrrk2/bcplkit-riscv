	.text
	.globl	putn
putu:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	li	a5,9
	mv	s0,a0
	bleu	a0,a5,.L2
	li	a0,10
	divuw	a0,s0,a0
	call	putu
.L2:
	li	a5,10
	remuw	a0,s0,a5
	ld	s0,0(sp)
	ld	ra,8(sp)
	addi	sp,sp,16
	addi	a0,a0,48
	tail	putchar
putn:	bgez	a0,putu
	sub	t0,zero,a0
	li	a0,'-'
    sb a0, -4(sp)
    li a0, 1                 # default to stdout
    addi a1, sp, -4
    li a2, 1                 # length one
    li a7, 64                # ECALL number for write
    ecall                    # Print the character
	mv	a0,t0
	j	putu
