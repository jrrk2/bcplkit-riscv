	.file	"icint.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	M
	.bss
	.align	3
	.type	M, @object
	.size	M, 8
M:
	.zero	8
	.globl	fp
	.align	3
	.type	fp, @object
	.size	fp, 8
fp:
	.zero	8
	.local	G
	.comm	G,4,4
	.local	P
	.comm	P,4,4
	.local	Ch
	.comm	Ch,4,4
	.local	Cyclecount
	.comm	Cyclecount,4,4
	.local	Labv
	.comm	Labv,8,8
	.local	Cp
	.comm	Cp,4,4
	.local	A
	.comm	A,4,4
	.local	B
	.comm	B,4,4
	.local	C
	.comm	C,4,4
	.local	D
	.comm	D,4,4
	.local	W
	.comm	W,4,4
	.section	.rodata
	.align	3
.LC0:
	.string	"\nBAD CH %c AT P = %d\n"
	.align	3
.LC1:
	.string	"\nBAD CODE AT P = %d\n"
	.align	3
.LC2:
	.string	"L%d UNSET\n"
	.text
	.align	1
	.type	assemble, @function
assemble:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-2032
	.cfi_def_cfa_offset 2032
	sd	ra,2024(sp)
	sd	s0,2016(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,2032
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	lla	a5,Labv
	addi	a4,s0,-2032
	sd	a4,0(a5)
.L2:
	sw	zero,-24(s0)
	j	.L3
.L4:
	lla	a5,Labv
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,500
	ble	a4,a5,.L4
	lla	a5,Cp
	sw	zero,0(a5)
.L5:
	call	rch
.L6:
	lla	a5,Ch
	lw	a5,0(a5)
	addiw	a5,a5,-10
	mv	a3,a5
	sext.w	a4,a3
	li	a5,80
	bgtu	a4,a5,.L7
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L9
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L9
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L9:
	.word	.L5-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L5-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L5-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L21-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L20-.L9
	.word	.L7-.L9
	.word	.L19-.L9
	.word	.L18-.L9
	.word	.L7-.L9
	.word	.L17-.L9
	.word	.L16-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L15-.L9
	.word	.L14-.L9
	.word	.L13-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L12-.L9
	.word	.L11-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L7-.L9
	.word	.L10-.L9
	.word	.L7-.L9
	.word	.L8-.L9
	.text
.L7:
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,-1
	beq	a4,a5,.L41
	lla	a5,Ch
	lw	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC0
	call	printf@plt
	j	.L5
.L21:
	call	rdn
	mv	a5,a0
	mv	a0,a5
	call	setlab
	lla	a5,Cp
	sw	zero,0(a5)
	j	.L6
.L13:
	sw	zero,-20(s0)
	j	.L25
.L12:
	li	a5,1
	sw	a5,-20(s0)
	j	.L25
.L20:
	li	a5,2
	sw	a5,-20(s0)
	j	.L25
.L15:
	li	a5,3
	sw	a5,-20(s0)
	j	.L25
.L11:
	li	a5,4
	sw	a5,-20(s0)
	j	.L25
.L17:
	li	a5,5
	sw	a5,-20(s0)
	j	.L25
.L14:
	li	a5,6
	sw	a5,-20(s0)
	j	.L25
.L10:
	li	a5,7
	sw	a5,-20(s0)
	j	.L25
.L19:
	call	rch
	call	rdn
	mv	a5,a0
	mv	a0,a5
	call	stc
	j	.L6
.L18:
	call	rch
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,76
	bne	a4,a5,.L26
	call	rch
	li	a0,0
	call	stw
	call	rdn
	mv	a5,a0
	mv	a4,a5
	lla	a5,P
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a1,a5
	mv	a0,a4
	call	labref
	j	.L6
.L26:
	call	rdn
	mv	a5,a0
	mv	a0,a5
	call	stw
	j	.L6
.L16:
	call	rch
	call	rdn
	mv	a5,a0
	mv	a4,a5
	lla	a5,G
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,76
	bne	a4,a5,.L28
	call	rch
	j	.L29
.L28:
	lla	a5,P
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC1
	call	printf@plt
.L29:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	call	rdn
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	labref
	j	.L6
.L8:
	sw	zero,-24(s0)
	j	.L30
.L32:
	lla	a5,Labv
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L31
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC2
	call	printf@plt
.L31:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L30:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,500
	ble	a4,a5,.L32
	j	.L2
.L25:
	lw	a5,-20(s0)
	slliw	a5,a5,13
	sext.w	a4,a5
	lla	a5,W
	sw	a4,0(a5)
	call	rch
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,73
	bne	a4,a5,.L33
	lla	a5,W
	lw	a4,0(a5)
	li	a5,4096
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,W
	sw	a4,0(a5)
	call	rch
.L33:
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,80
	bne	a4,a5,.L34
	lla	a5,W
	lw	a4,0(a5)
	li	a5,4096
	addiw	a5,a5,-2048
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,W
	sw	a4,0(a5)
	call	rch
.L34:
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,71
	bne	a4,a5,.L35
	lla	a5,W
	lw	a5,0(a5)
	addiw	a5,a5,1024
	sext.w	a4,a5
	lla	a5,W
	sw	a4,0(a5)
	call	rch
.L35:
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,76
	bne	a4,a5,.L36
	call	rch
	lla	a5,W
	lw	a5,0(a5)
	addiw	a5,a5,512
	sext.w	a5,a5
	mv	a0,a5
	call	stw
	li	a0,0
	call	stw
	call	rdn
	mv	a5,a0
	mv	a4,a5
	lla	a5,P
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a1,a5
	mv	a0,a4
	call	labref
	j	.L6
.L36:
	call	rdn
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a4,-28(s0)
	li	a5,511
	bgtu	a4,a5,.L38
	lla	a5,W
	lw	a5,0(a5)
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	call	stw
	j	.L6
.L38:
	lla	a5,W
	lw	a5,0(a5)
	addiw	a5,a5,512
	sext.w	a5,a5
	mv	a0,a5
	call	stw
	lw	a5,-28(s0)
	mv	a0,a5
	call	stw
	j	.L6
.L41:
	nop
	ld	ra,2024(sp)
	.cfi_restore 1
	ld	s0,2016(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 2032
	addi	sp,sp,2032
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	assemble, .-assemble
	.align	1
	.type	stw, @function
stw:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,P
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lla	a5,Cp
	sw	zero,0(a5)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	stw, .-stw
	.align	1
	.type	stc, @function
stc:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lla	a5,Cp
	lw	a5,0(a5)
	bne	a5,zero,.L44
	li	a0,0
	call	stw
	lla	a5,Cp
	li	a4,32
	sw	a4,0(a5)
.L44:
	lla	a5,Cp
	lw	a5,0(a5)
	addiw	a5,a5,-8
	sext.w	a4,a5
	lla	a5,Cp
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-4
	add	a5,a4,a5
	lw	a3,0(a5)
	lla	a5,Cp
	lw	a5,0(a5)
	lw	a4,-20(s0)
	sllw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,M
	ld	a2,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-4
	add	a5,a2,a5
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	stc, .-stc
	.align	1
	.type	rch, @function
rch:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.L48:
	lla	a5,fp
	ld	a5,0(a5)
	mv	a0,a5
	call	fgetc@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,Ch
	sw	a4,0(a5)
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,47
	bne	a4,a5,.L50
.L46:
	lla	a5,fp
	ld	a5,0(a5)
	mv	a0,a5
	call	fgetc@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,Ch
	sw	a4,0(a5)
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,10
	bne	a4,a5,.L46
	j	.L48
.L50:
	nop
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	rch, .-rch
	.align	1
	.type	rdn, @function
rdn:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,45
	bne	a4,a5,.L53
	li	a5,1
	sw	a5,-24(s0)
	call	rch
	j	.L53
.L55:
	lw	a5,-20(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lla	a5,Ch
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-48
	sw	a5,-20(s0)
	call	rch
.L53:
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,47
	ble	a4,a5,.L54
	lla	a5,Ch
	lw	a4,0(a5)
	li	a5,57
	ble	a4,a5,.L55
.L54:
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L56
	lw	a5,-20(s0)
	negw	a5,a5
	sw	a5,-20(s0)
.L56:
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	rdn, .-rdn
	.section	.rodata
	.align	3
.LC3:
	.string	"L%d ALREADY SET TO %d AT P = %d\n"
	.text
	.align	1
	.type	setlab, @function
setlab:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lla	a5,Labv
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,zero,.L60
	lw	a5,-20(s0)
	negw	a5,a5
	sext.w	a4,a5
	lla	a5,P
	lw	a3,0(a5)
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC3
	call	printf@plt
	j	.L60
.L61:
	lla	a5,M
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lla	a5,M
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,P
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	sw	a5,-20(s0)
.L60:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L61
	lla	a5,P
	lw	a4,0(a5)
	lla	a5,Labv
	ld	a3,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	negw	a4,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	setlab, .-setlab
	.align	1
	.type	labref, @function
labref:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lla	a5,Labv
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,zero,.L63
	lw	a5,-20(s0)
	negw	a5,a5
	sw	a5,-20(s0)
	j	.L64
.L63:
	lla	a5,Labv
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
.L64:
	lla	a5,M
	ld	a4,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,M
	ld	a3,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,-20(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	labref, .-labref
	.section	.rodata
	.align	3
.LC4:
	.string	"\nINTCODE ERROR AT C = %d\n"
	.text
	.align	1
	.type	interpret, @function
interpret:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.L66:
	lla	a5,Cyclecount
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,Cyclecount
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,C
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,W
	sw	a4,0(a5)
	lla	a5,W
	lw	a5,0(a5)
	andi	a5,a5,512
	sext.w	a5,a5
	bne	a5,zero,.L67
	lla	a5,W
	lw	a5,0(a5)
	andi	a5,a5,511
	sext.w	a4,a5
	lla	a5,D
	sw	a4,0(a5)
	j	.L68
.L67:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,C
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,D
	sw	a4,0(a5)
.L68:
	lla	a5,W
	lw	a4,0(a5)
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L69
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,D
	sw	a4,0(a5)
.L69:
	lla	a5,W
	lw	a5,0(a5)
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L70
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,G
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,D
	sw	a4,0(a5)
.L70:
	lla	a5,W
	lw	a4,0(a5)
	li	a5,4096
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L71
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,D
	sw	a4,0(a5)
.L71:
	lla	a5,W
	lw	a5,0(a5)
	sraiw	a5,a5,13
	sext.w	a5,a5
	li	a4,7
	bgtu	a5,a4,.L72
	slli	a4,a5,2
	lla	a5,.L74
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L74
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L74:
	.word	.L81-.L74
	.word	.L80-.L74
	.word	.L79-.L74
	.word	.L78-.L74
	.word	.L77-.L74
	.word	.L76-.L74
	.word	.L75-.L74
	.word	.L73-.L74
	.text
.L82:
.L141:
	nop
.L72:
	lla	a5,C
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC4
	call	printf@plt
	li	a5,-1
	j	.L83
.L81:
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,B
	sw	a4,0(a5)
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L80:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,A
	lw	a4,0(a4)
	sw	a4,0(a5)
	j	.L66
.L79:
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L78:
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L77:
	lla	a5,A
	lw	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
.L76:
	lla	a5,A
	lw	a5,0(a5)
	bne	a5,zero,.L66
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L75:
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,D
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,P
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,C
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,P
	sw	a4,0(a5)
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L73:
	lla	a5,D
	lw	a5,0(a5)
	li	a4,39
	bgtu	a5,a4,.L141
	slli	a4,a5,2
	lla	a5,.L87
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L87
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L87:
	.word	.L141-.L87
	.word	.L125-.L87
	.word	.L124-.L87
	.word	.L123-.L87
	.word	.L122-.L87
	.word	.L121-.L87
	.word	.L120-.L87
	.word	.L119-.L87
	.word	.L118-.L87
	.word	.L117-.L87
	.word	.L116-.L87
	.word	.L115-.L87
	.word	.L114-.L87
	.word	.L113-.L87
	.word	.L112-.L87
	.word	.L111-.L87
	.word	.L110-.L87
	.word	.L109-.L87
	.word	.L108-.L87
	.word	.L107-.L87
	.word	.L106-.L87
	.word	.L105-.L87
	.word	.L104-.L87
	.word	.L103-.L87
	.word	.L102-.L87
	.word	.L101-.L87
	.word	.L100-.L87
	.word	.L99-.L87
	.word	.L98-.L87
	.word	.L97-.L87
	.word	.L96-.L87
	.word	.L95-.L87
	.word	.L94-.L87
	.word	.L93-.L87
	.word	.L92-.L87
	.word	.L91-.L87
	.word	.L90-.L87
	.word	.L89-.L87
	.word	.L88-.L87
	.word	.L86-.L87
	.text
.L125:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L124:
	lla	a5,A
	lw	a5,0(a5)
	negw	a5,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L123:
	lla	a5,A
	lw	a5,0(a5)
	not	a5,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L122:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,P
	sw	a4,0(a5)
	j	.L66
.L121:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L120:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L119:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	remw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L118:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L117:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	subw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L116:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	bne	a4,a5,.L126
	li	a5,-1
	j	.L127
.L126:
	li	a5,0
.L127:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L115:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	beq	a4,a5,.L128
	li	a5,-1
	j	.L129
.L128:
	li	a5,0
.L129:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L114:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	bge	a4,a5,.L130
	li	a5,-1
	j	.L131
.L130:
	li	a5,0
.L131:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L113:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	blt	a4,a5,.L132
	li	a5,-1
	j	.L133
.L132:
	li	a5,0
.L133:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L112:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	ble	a4,a5,.L134
	li	a5,-1
	j	.L135
.L134:
	li	a5,0
.L135:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L111:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	bgt	a4,a5,.L136
	li	a5,-1
	j	.L137
.L136:
	li	a5,0
.L137:
	lla	a4,A
	sw	a5,0(a4)
	j	.L66
.L110:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	sllw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L109:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	sraw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L108:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	and	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L107:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	or	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L106:
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	xor	a5,a4,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L105:
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,B
	lw	a5,0(a5)
	xor	a5,a4,a5
	sext.w	a5,a5
	not	a5,a5
	sext.w	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L104:
	li	a5,0
	j	.L83
.L103:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,B
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,D
	sw	a4,0(a5)
	j	.L138
.L140:
	lla	a5,B
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a5,B
	sw	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	addiw	a5,a5,2
	sext.w	a4,a5
	lla	a5,C
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	bne	a4,a5,.L138
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,C
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,D
	sw	a4,0(a5)
	j	.L139
.L138:
	lla	a5,B
	lw	a5,0(a5)
	bne	a5,zero,.L140
.L139:
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L102:
	lla	a5,A
	lw	a5,0(a5)
	mv	a0,a5
	call	selectinput@plt
	j	.L66
.L101:
	lla	a5,A
	lw	a5,0(a5)
	mv	a0,a5
	call	selectoutput@plt
	j	.L66
.L100:
	call	rdch@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L99:
	lla	a5,A
	lw	a5,0(a5)
	mv	a0,a5
	call	wrch@plt
	j	.L66
.L98:
	lla	a5,A
	lw	a5,0(a5)
	mv	a0,a5
	call	findinput@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L97:
	lla	a5,A
	lw	a5,0(a5)
	mv	a0,a5
	call	findoutput@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L96:
	lla	a5,A
	lw	a5,0(a5)
	j	.L83
.L95:
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L94:
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,P
	sw	a4,0(a5)
	lla	a5,B
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L93:
	call	endread@plt
	j	.L66
.L92:
	call	endwrite@plt
	j	.L66
.L91:
	lla	a5,P
	lw	a4,0(a5)
	lla	a5,B
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,D
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a4,a4,a5
	lla	a5,M
	ld	a3,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a4,a4,a5
	lla	a5,M
	ld	a3,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	addi	a5,a5,2
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,P
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,D
	lw	a5,0(a5)
	addi	a5,a5,3
	slli	a5,a5,2
	add	a5,a4,a5
	lla	a4,B
	lw	a4,0(a4)
	sw	a4,0(a5)
	lla	a5,D
	lw	a4,0(a5)
	lla	a5,P
	sw	a4,0(a5)
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,C
	sw	a4,0(a5)
	j	.L66
.L90:
	lla	a5,A
	lw	a4,0(a5)
	lla	a5,B
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	getbyte@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L89:
	lla	a5,A
	lw	a3,0(a5)
	lla	a5,B
	lw	a1,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a2,a5
	mv	a0,a3
	call	putbyte@plt
	j	.L66
.L88:
	call	input@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L86:
	call	output@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	j	.L66
.L83:
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	interpret, .-interpret
	.section	.rodata
	.align	3
.LC5:
	.string	"usage: icint file\n"
	.align	3
.LC6:
	.string	"r"
	.align	3
.LC7:
	.string	"%s: Can't open\n"
	.align	3
.LC8:
	.string	"INTCODE SYSTEM ENTERED"
	.align	3
.LC9:
	.string	"\nPROGRAM SIZE = %d\n"
	.align	3
.LC10:
	.string	"\nEXECUTION CYCLES = %d, CODE = %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-1056
	.cfi_def_cfa_offset 1056
	sd	ra,1048(sp)
	sd	s0,1040(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1056
	.cfi_def_cfa 8, 0
	li	t0,-126976
	add	sp,sp,t0
	mv	a4,a0
	li	a5,-126976
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a1,-1040(a5)
	li	a5,-126976
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-1028(a5)
	li	a5,-126976
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1028(a5)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L143
	la	a5,stderr
	ld	a5,0(a5)
	mv	a3,a5
	li	a2,18
	li	a1,1
	lla	a0,.LC5
	call	fwrite@plt
	li	a5,1
	j	.L147
.L143:
	li	a5,-126976
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-1040(a5)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC6
	mv	a0,a5
	call	fopen@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,fp
	sd	a4,0(a5)
	lla	a5,fp
	ld	a5,0(a5)
	bne	a5,zero,.L145
	la	a5,stderr
	ld	a4,0(a5)
	li	a5,-126976
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-1040(a5)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a2,a5
	lla	a1,.LC7
	mv	a0,a4
	call	fprintf@plt
	li	a5,0
	j	.L147
.L145:
	lla	a5,M
	li	a4,-126976
	addi	a4,a4,-1024
	addi	a4,a4,-16
	add	a4,a4,s0
	sd	a4,0(a5)
	lla	a5,G
	li	a4,1
	sw	a4,0(a5)
	lla	a5,P
	li	a4,402
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,P
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,4096
	addi	a4,a4,1025
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,P
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,49152
	addi	a4,a4,2
	sw	a4,0(a5)
	lla	a5,M
	ld	a4,0(a5)
	lla	a5,P
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	lla	a3,P
	sw	a2,0(a3)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,57344
	addi	a4,a4,22
	sw	a4,0(a5)
	call	initio@plt
	lla	a0,.LC8
	call	puts@plt
	call	assemble
	lla	a5,fp
	ld	a5,0(a5)
	mv	a0,a5
	call	fclose@plt
	lla	a5,P
	lw	a5,0(a5)
	addiw	a5,a5,-402
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC9
	call	printf@plt
	lla	a5,C
	li	a4,402
	sw	a4,0(a5)
	lla	a5,Cyclecount
	sw	zero,0(a5)
	call	interpret
	mv	a5,a0
	mv	a4,a5
	lla	a5,A
	sw	a4,0(a5)
	lla	a5,Cyclecount
	lw	a4,0(a5)
	lla	a5,A
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC10
	call	printf@plt
	lla	a5,A
	lw	a5,0(a5)
	bge	a5,zero,.L146
	call	mapstore@plt
.L146:
	lla	a5,A
	lw	a5,0(a5)
.L147:
	mv	a0,a5
	li	t0,126976
	add	sp,sp,t0
	.cfi_def_cfa 2, 1056
	ld	ra,1048(sp)
	.cfi_restore 1
	ld	s0,1040(sp)
	.cfi_restore 8
	addi	sp,sp,1056
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-3) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
