	.file	"writec.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"tmp.txt"
	.align	3
.LC1:
	.string	"hello\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	addi	sp,sp,-16
	li	a1,577
	lla	a0,.LC0
	sd	ra,8(sp)
	sd	s0,0(sp)
	call	open@plt
	li	a2,6
	lla	a1,.LC1
	mv	s0,a0
	call	write@plt
	mv	a0,s0
	call	close@plt
	ld	ra,8(sp)
	ld	s0,0(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-8) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
