	.file	"icint.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	Load, @function
Load:
.LFB29:
	.cfi_startproc
	lla	a4,.LANCHOR0
	lw	a5,0(a4)
	addiw	a5,a5,1
	sw	a5,0(a4)
	ret
	.cfi_endproc
.LFE29:
	.size	Load, .-Load
	.set	Call,Load
	.set	JumpFalse,Load
	.set	JumpTrue,Load
	.set	Jump,Load
	.set	Add,Load
	.set	Store,Load
	.align	1
	.type	Execute, @function
Execute:
.LFB36:
	.cfi_startproc
	lla	a4,.LANCHOR0
	lw	a5,0(a4)
	addw	a5,a5,a0
	sw	a5,0(a4)
	ret
	.cfi_endproc
.LFE36:
	.size	Execute, .-Execute
	.align	1
	.type	rdn, @function
rdn:
.LFB26:
	.cfi_startproc
	lw	a3,.LANCHOR0+4
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s11,24(sp)
	li	a5,45
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 27, -40
	beq	a3,a5,.L27
	addiw	a4,a3,-48
	li	a2,9
	sd	zero,8(sp)
	lla	s11,.LANCHOR0
	bgtu	a4,a2,.L26
.L12:
	sd	s2,32(sp)
	.cfi_offset 18, -32
	sd	zero,0(sp)
	li	s0,10
.L15:
	ld	a5,0(sp)
	ld	a0,8(s11)
	li	s1,47
	slliw	s2,a5,2
	addw	s2,s2,a5
	slliw	s2,s2,1
	addw	s2,s2,a3
	addiw	a5,s2,-48
	sd	a5,0(sp)
	call	fgetc@plt
	sw	a0,4(s11)
	mv	a3,a0
	bne	a0,s1,.L9
.L10:
	ld	a0,8(s11)
	call	fgetc@plt
	sw	a0,4(s11)
	bne	a0,s0,.L10
	ld	a0,8(s11)
	call	fgetc@plt
	sw	a0,4(s11)
	mv	a3,a0
	beq	a0,s1,.L10
.L9:
	addiw	a4,a0,-48
	li	a2,9
	bleu	a4,a2,.L15
	ld	a5,8(sp)
	beq	a5,zero,.L25
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	li	s11,48
	subw	a5,s11,s2
	sd	a5,0(sp)
	ld	a0,0(sp)
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s11,24(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L25:
	.cfi_restore_state
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	a0,0(sp)
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s11,24(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L27:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 27, -40
	lla	s11,.LANCHOR0
	ld	a0,8(s11)
	li	s1,47
	li	s0,10
	call	fgetc@plt
	sw	a0,4(s11)
	mv	a3,a0
	bne	a0,s1,.L6
.L7:
	ld	a0,8(s11)
	call	fgetc@plt
	sw	a0,4(s11)
	bne	a0,s0,.L7
	ld	a0,8(s11)
	call	fgetc@plt
	sw	a0,4(s11)
	mv	a3,a0
	beq	a0,s1,.L7
.L6:
	li	a5,1
	addiw	a4,a0,-48
	li	a2,9
	sd	a5,8(sp)
	bleu	a4,a2,.L12
.L26:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	sd	zero,0(sp)
	ld	a0,0(sp)
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s11,24(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	rdn, .-rdn
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"usage: icint file\n"
	.align	3
.LC1:
	.string	"r"
	.align	3
.LC2:
	.string	"%s: Can't open\n"
	.align	3
.LC3:
	.string	"INTCODE SYSTEM ENTERED"
	.align	3
.LC4:
	.string	"\nPROGRAM SIZE = %d\n"
	.align	3
.LC5:
	.string	"\nBAD CH %c AT P = %d\n"
	.align	3
.LC6:
	.string	"L%d ALREADY SET TO %d AT P = %d\n"
	.align	3
.LC7:
	.string	"\nBAD CODE AT P = %d\n"
	.align	3
.LC8:
	.string	"L%d UNSET\n"
	.align	3
.LC9:
	.string	"\nINTCODE ERROR AT C = %d\n"
	.align	3
.LC10:
	.string	"\nEXECUTION CYCLES = %d, CODE = %d\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	li	t0,-131072
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s11,8(sp)
	addi	t0,t0,1040
	li	a5,2
	add	sp,sp,t0
	.cfi_def_cfa_offset 130080
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 27, -40
	beq	a0,a5,.L29
	la	a5,stderr
	ld	a3,0(a5)
	li	a2,18
	li	a1,1
	lla	a0,.LC0
	call	fwrite@plt
	li	a0,1
.L230:
	li	t0,131072
	addi	t0,t0,-1040
	add	sp,sp,t0
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s11,8(sp)
	.cfi_restore 27
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L29:
	.cfi_restore_state
	ld	a0,8(a1)
	mv	s1,a1
	lla	a1,.LC1
	call	fopen@plt
	lla	s0,.LANCHOR0
	sd	a0,8(s0)
	beq	a0,zero,.L235
	li	a3,4096
	li	a4,49152
	li	a5,57344
	addi	s3,sp,2032
	addi	a3,a3,1025
	addi	a4,a4,2
	addi	a5,a5,22
	sw	a3,1608(s3)
	sw	a4,1612(s3)
	sw	a5,1616(s3)
	li	s4,1
	li	s5,405
	call	initio@plt
	lla	a0,.LC3
	call	puts@plt
	addi	a0,sp,24
	sd	a0,16(s0)
	li	s2,10
.L32:
	li	a2,2004
	li	a1,0
	call	memset@plt
	sw	zero,.LANCHOR0+24,a5
.L33:
	ld	a0,8(s0)
	li	s11,47
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L34
.L35:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L35
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	beq	a0,s11,.L35
.L34:
	addiw	a5,s1,-10
	li	a4,80
	bgtu	a5,a4,.L37
	slli	a4,a5,32
	srli	a5,a4,30
	lla	a4,.L39
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L39:
	.word	.L33-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L33-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L33-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L51-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L50-.L39
	.word	.L37-.L39
	.word	.L202-.L39
	.word	.L203-.L39
	.word	.L37-.L39
	.word	.L47-.L39
	.word	.L204-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L45-.L39
	.word	.L44-.L39
	.word	.L43-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L187-.L39
	.word	.L41-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L37-.L39
	.word	.L40-.L39
	.word	.L37-.L39
	.word	.L38-.L39
	.section	.text.startup
.L37:
	li	a5,-1
	beq	s1,a5,.L236
	mv	a1,s1
	sext.w	a2,s5
	lla	a0,.LC5
	call	printf@plt
	j	.L33
.L51:
	call	rdn
	ld	a5,16(s0)
	slli	s1,a0,2
	mv	a1,a0
	add	a5,a5,s1
	lw	a2,0(a5)
	blt	a2,zero,.L237
	mv	a1,s3
	sext.w	a3,s5
	beq	a2,zero,.L56
.L57:
	slli	a2,a2,2
	add	a4,a1,a2
	lw	a2,0(a4)
	sw	a3,0(a4)
	bgt	a2,zero,.L57
.L56:
	negw	a4,s5
	sw	zero,.LANCHOR0+24,a3
	sw	a4,0(a5)
	lw	s1,.LANCHOR0+4
	j	.L34
.L38:
	ld	a0,16(s0)
	li	s11,0
	li	s1,501
.L82:
	slli	a5,s11,2
	add	a5,a0,a5
	lw	a5,0(a5)
	ble	a5,zero,.L81
	sext.w	a1,s11
	lla	a0,.LC8
	call	printf@plt
	ld	a0,16(s0)
.L81:
	addi	s11,s11,1
	bne	s11,s1,.L82
	j	.L32
.L40:
	li	a5,57344
.L42:
	ld	a0,8(s0)
	mv	s10,a5
	li	s11,47
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L83
.L84:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L84
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	beq	a0,s11,.L84
.L83:
	li	a4,73
	beq	a0,a4,.L238
.L86:
	li	a5,80
	beq	s1,a5,.L239
.L89:
	li	a5,71
	beq	s1,a5,.L240
.L92:
	li	a5,76
	beq	s1,a5,.L241
	li	a5,45
	beq	s1,a5,.L242
	addiw	a5,s1,-48
	li	a4,9
	sd	zero,0(sp)
	bgtu	a5,a4,.L234
.L119:
	li	s11,0
.L121:
	slliw	a4,s11,2
	addw	a5,a4,s11
	ld	a0,8(s0)
	slliw	a5,a5,1
	addw	a5,a5,s1
	sd	a5,8(sp)
	addiw	s11,a5,-48
	call	fgetc@plt
	sw	a0,4(s0)
	li	a5,47
	mv	s1,a0
	bne	a0,a5,.L116
.L117:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L117
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	li	a5,47
	mv	s1,a0
	beq	a0,a5,.L117
.L116:
	addiw	a4,a0,-48
	li	a3,9
	bleu	a4,a3,.L121
	ld	a5,0(sp)
	beq	a5,zero,.L122
	ld	a4,8(sp)
	li	a5,48
	subw	s11,a5,a4
.L122:
	li	a3,511
	sext.w	a4,s5
	bleu	s11,a3,.L120
	addiw	a3,a4,1
	slli	a4,a4,2
	add	a2,s3,a4
	addiw	a1,s10,512
	slli	a4,a3,2
	sw	a1,0(a2)
	add	a4,s3,a4
	sw	zero,.LANCHOR0+24,a2
	sw	s11,0(a4)
	addiw	s5,a3,1
	j	.L34
.L41:
	li	a5,32768
	j	.L42
.L43:
	li	a5,0
	j	.L42
.L44:
	li	a5,49152
	j	.L42
.L45:
	li	a5,24576
	j	.L42
.L47:
	li	a5,40960
	j	.L42
.L187:
	li	a5,8192
	j	.L42
.L204:
	ld	a0,8(s0)
	li	s1,47
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s1,.L73
.L74:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L74
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	beq	a0,s1,.L74
.L73:
	call	rdn
	lw	a4,.LANCHOR0+4
	li	a5,76
	addw	s6,s4,a0
	beq	a4,a5,.L243
	sext.w	a1,s5
	lla	a0,.LC7
	call	printf@plt
.L76:
	sext.w	a5,s6
	slli	a5,a5,2
	add	a5,s3,a5
	sw	zero,0(a5)
	call	rdn
	ld	a3,16(s0)
	slli	a4,a0,2
	sext.w	a5,s6
	add	a3,a3,a4
	lw	a4,0(a3)
	blt	a4,zero,.L233
.L79:
	sw	a5,0(a3)
.L80:
	slli	a5,a5,2
	add	a5,s3,a5
	lw	a3,0(a5)
	lw	s1,.LANCHOR0+4
	addw	a4,a3,a4
	sw	a4,0(a5)
	j	.L34
.L203:
	ld	a0,8(s0)
	li	s1,47
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s1,.L65
.L66:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L66
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	beq	a0,s1,.L66
.L65:
	li	a5,76
	beq	a0,a5,.L244
	call	rdn
	sext.w	a5,s5
	slli	a5,a5,2
	add	a5,s3,a5
	lw	s1,.LANCHOR0+4
	sw	zero,.LANCHOR0+24,a4
	sw	a0,0(a5)
	addiw	s5,s5,1
	j	.L34
.L50:
	li	a5,16384
	j	.L42
.L202:
	ld	a0,8(s0)
	li	s1,47
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s1,.L61
.L62:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L62
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	beq	a0,s1,.L62
.L61:
	call	rdn
	lw	a4,.LANCHOR0+24
	mv	a3,a0
	sext.w	a2,s5
	beq	a4,zero,.L63
	addiw	a4,a4,-8
.L64:
	sext.w	a5,s5
	slli	a5,a5,2
	add	a5,s3,a5
	lw	a2,-4(a5)
	sllw	a3,a3,a4
	sw	a4,24(s0)
	addw	a4,a2,a3
	sw	a4,-4(a5)
	lw	s1,.LANCHOR0+4
	j	.L34
.L113:
	li	a3,1
	addiw	a5,a0,-48
	li	a4,9
	sd	a3,0(sp)
	bleu	a5,a4,.L119
.L234:
	li	s11,0
.L120:
	sext.w	a4,s5
	slli	a4,a4,2
	addw	a5,s10,s11
	add	a4,s3,a4
	sw	zero,.LANCHOR0+24,a3
	sw	a5,0(a4)
	addiw	s5,s5,1
	j	.L34
.L241:
	ld	a0,8(s0)
	li	s11,47
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L96
.L97:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L97
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	beq	a0,s11,.L97
.L96:
	sext.w	a5,s5
	addiw	a4,s5,1
	slli	a5,a5,2
	add	a5,s3,a5
	slli	a3,a4,2
	addiw	a2,s10,512
	sw	a2,0(a5)
	add	a5,s3,a3
	sw	zero,0(a5)
	sw	zero,.LANCHOR0+24,a3
	li	a5,45
	addiw	s5,a4,1
	beq	a0,a5,.L245
	addiw	a5,a0,-48
	li	a4,9
	sd	zero,0(sp)
	bgtu	a5,a4,.L246
.L106:
	li	s11,0
.L109:
	slliw	a4,s11,2
	addw	a5,a4,s11
	ld	a0,8(s0)
	slliw	a5,a5,1
	addw	a5,a5,s1
	addiw	s11,a5,-48
	call	fgetc@plt
	sw	a0,4(s0)
	li	a5,47
	mv	s1,a0
	bne	a0,a5,.L103
.L104:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L104
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	li	a5,47
	mv	s1,a0
	beq	a0,a5,.L104
.L103:
	addiw	a4,a0,-48
	li	a3,9
	bleu	a4,a3,.L109
	ld	a5,0(sp)
	beq	a5,zero,.L247
.L108:
	ld	a3,16(s0)
	negw	a5,s11
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	addiw	a4,s5,-1
	bge	a3,zero,.L110
.L248:
	negw	a3,a3
	j	.L111
.L246:
	li	a5,0
.L107:
	ld	a3,16(s0)
	addiw	a4,s5,-1
	add	a5,a3,a5
	lw	a3,0(a5)
	blt	a3,zero,.L248
.L110:
	sw	a4,0(a5)
.L111:
	slli	a5,a4,2
	add	a5,s3,a5
	lw	a4,0(a5)
	addw	a4,a4,a3
	sw	a4,0(a5)
	j	.L34
.L240:
	addiw	s10,s10,1024
	li	s11,47
.L94:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L92
.L93:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L93
	j	.L94
.L239:
	li	a5,4096
	addiw	a5,a5,-2048
	addw	s10,s10,a5
	li	s11,47
.L91:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L89
.L90:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L90
	j	.L91
.L238:
	li	a5,4096
	addw	s10,s10,a5
	li	s11,47
.L88:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L86
.L87:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L87
	j	.L88
.L247:
	slli	a5,s11,2
	j	.L107
.L242:
	li	s11,47
.L115:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L113
.L114:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L114
	j	.L115
.L68:
	sext.w	a5,s5
	slli	a5,a5,2
	add	a5,s3,a5
	sw	zero,0(a5)
	addiw	s5,s5,1
	sw	zero,.LANCHOR0+24,a5
	call	rdn
	ld	a3,16(s0)
	slli	a4,a0,2
	addiw	a5,s5,-1
	add	a3,a3,a4
	lw	a4,0(a3)
	bge	a4,zero,.L79
.L233:
	negw	a4,a4
	j	.L80
.L245:
	ld	a0,8(s0)
	li	s11,47
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	bne	a0,s11,.L100
.L101:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L101
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	mv	s1,a0
	beq	a0,s11,.L101
.L100:
	li	a3,1
	addiw	a5,a0,-48
	li	a4,9
	sd	a3,0(sp)
	li	s11,0
	bleu	a5,a4,.L106
	j	.L108
.L63:
	slli	a5,a2,2
	add	a5,s3,a5
	sw	zero,0(a5)
	addiw	s5,a2,1
	li	a4,24
	j	.L64
.L243:
	li	s1,47
.L78:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s1,.L76
.L77:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L77
	j	.L78
.L237:
	sext.w	a3,s5
	negw	a2,a2
	lla	a0,.LC6
	call	printf@plt
	ld	a5,16(s0)
	negw	a4,s5
	sw	zero,.LANCHOR0+24,a3
	add	a5,a5,s1
	sw	a4,0(a5)
	lw	s1,.LANCHOR0+4
	j	.L34
.L244:
	li	s1,47
.L70:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s1,.L68
.L69:
	ld	a0,8(s0)
	call	fgetc@plt
	sw	a0,4(s0)
	bne	a0,s2,.L69
	j	.L70
.L236:
	ld	a0,8(s0)
	li	s11,4096
	addi	s11,s11,-2048
	call	fclose@plt
	addiw	a1,s5,-402
	lla	a0,.LC4
	call	printf@plt
	li	s8,402
	li	s2,0
.L53:
	sext.w	a5,s8
	slli	a5,a5,2
	add	a5,s3,a5
	lw	a5,0(a5)
	addiw	s2,s2,1
	addiw	a3,s8,1
	sw	s2,28(s0)
	andi	a4,a5,512
	mv	s10,a5
	mv	s8,a3
	bne	a4,zero,.L124
	andi	a4,a5,511
.L125:
	and	a3,a5,s11
	mv	s9,a4
	beq	a3,zero,.L126
	addw	s9,s5,a4
.L126:
	andi	a4,a5,1024
	beq	a4,zero,.L127
	addw	s9,s4,s9
.L127:
	li	a4,4096
	and	a4,a5,a4
	beq	a4,zero,.L128
	sext.w	a4,s9
	slli	a4,a4,2
	add	a4,s3,a4
	lw	s9,0(a4)
.L128:
	sraiw	a5,a5,13
	li	a4,7
	bgtu	a5,a4,.L129
	slli	a4,a5,32
	srli	a5,a4,30
	lla	a4,.L131
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L131:
	.word	.L138-.L131
	.word	.L137-.L131
	.word	.L136-.L131
	.word	.L135-.L131
	.word	.L134-.L131
	.word	.L133-.L131
	.word	.L132-.L131
	.word	.L130-.L131
	.section	.text.startup
.L124:
	slli	a4,a3,2
	add	a4,s3,a4
	lw	a4,0(a4)
	addiw	s8,a3,1
	j	.L125
.L132:
	addw	a5,s5,s9
	slli	a3,a5,2
	addi	a4,a5,1
	add	a3,s3,a3
	slli	a4,a4,2
	sw	s5,0(a3)
	add	a4,s3,a4
	sw	s8,0(a4)
	mv	s9,a5
	mv	s5,a5
	mv	s8,s6
	call	Call
	j	.L53
.L134:
	sext.w	s6,s6
	seqz	s6,s6
	call	JumpTrue
.L133:
	sext.w	a5,s6
	bne	a5,zero,.L141
	mv	s8,s9
.L141:
	call	JumpFalse
	j	.L53
.L135:
	mv	s8,s9
	call	Jump
	j	.L53
.L136:
	addw	s6,s9,s6
	call	Add
	j	.L53
.L137:
	sext.w	a5,s9
	slli	a5,a5,2
	add	a5,s3,a5
	sw	s6,0(a5)
	call	Store
	j	.L53
.L138:
	mv	s7,s6
	mv	s6,s9
	call	Load
	j	.L53
.L130:
	addiw	a5,s9,-1
	li	a4,38
	bgtu	a5,a4,.L129
	slli	a4,a5,32
	srli	a5,a4,30
	lla	a4,.L143
	add	a5,a5,a4
	lw	a5,0(a5)
	add	a5,a5,a4
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L143:
	.word	.L181-.L143
	.word	.L180-.L143
	.word	.L179-.L143
	.word	.L178-.L143
	.word	.L177-.L143
	.word	.L176-.L143
	.word	.L175-.L143
	.word	.L174-.L143
	.word	.L173-.L143
	.word	.L172-.L143
	.word	.L171-.L143
	.word	.L170-.L143
	.word	.L169-.L143
	.word	.L168-.L143
	.word	.L167-.L143
	.word	.L166-.L143
	.word	.L165-.L143
	.word	.L164-.L143
	.word	.L163-.L143
	.word	.L162-.L143
	.word	.L161-.L143
	.word	.L160-.L143
	.word	.L159-.L143
	.word	.L158-.L143
	.word	.L157-.L143
	.word	.L156-.L143
	.word	.L155-.L143
	.word	.L154-.L143
	.word	.L153-.L143
	.word	.L152-.L143
	.word	.L151-.L143
	.word	.L150-.L143
	.word	.L149-.L143
	.word	.L148-.L143
	.word	.L147-.L143
	.word	.L146-.L143
	.word	.L145-.L143
	.word	.L144-.L143
	.word	.L142-.L143
	.section	.text.startup
.L129:
	addiw	a1,s8,-1
	lla	a0,.LC9
	call	printf@plt
.L139:
	lw	a1,.LANCHOR0+28
	mv	a2,s1
	lla	a0,.LC10
	mv	s6,s1
	call	printf@plt
	slli	a5,s6,32
	blt	a5,zero,.L249
	sext.w	a0,s6
	j	.L230
.L249:
	call	mapstore@plt
	sext.w	a0,s6
	j	.L230
.L235:
	la	a5,stderr
	ld	a2,8(s1)
	ld	a0,0(a5)
	lla	a1,.LC2
	call	fprintf@plt
	li	a0,0
	j	.L230
.L142:
	li	a0,39
	call	Execute
	call	output@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
.L181:
	li	a0,1
	call	Execute
	sext.w	a5,s6
	slli	a5,a5,2
	add	a5,s3,a5
	lw	s6,0(a5)
	j	.L53
.L180:
	li	a0,2
	call	Execute
	negw	s6,s6
	j	.L53
.L179:
	li	a0,3
	call	Execute
	sext.w	s6,s6
	not	s6,s6
	j	.L53
.L178:
	li	a0,4
	call	Execute
	sext.w	s5,s5
	addi	a5,s5,1
	slli	a5,a5,2
	slli	s5,s5,2
	add	a5,s3,a5
	add	a4,s3,s5
	lw	s8,0(a5)
	lw	s5,0(a4)
	j	.L53
.L177:
	li	a0,5
	call	Execute
	mulw	s6,s6,s7
	j	.L53
.L176:
	li	a0,6
	call	Execute
	divw	s6,s7,s6
	j	.L53
.L175:
	li	a0,7
	call	Execute
	remw	s6,s7,s6
	j	.L53
.L174:
	li	a0,8
	call	Execute
	addw	s6,s6,s7
	j	.L53
.L173:
	li	a0,9
	call	Execute
	subw	s6,s7,s6
	j	.L53
.L172:
	li	a0,10
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	sub	a5,a5,s6
	seqz	s6,a5
	neg	s6,s6
	j	.L53
.L171:
	li	a0,11
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	sub	a5,a5,s6
	snez	s6,a5
	neg	s6,s6
	j	.L53
.L170:
	li	a0,12
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	slt	a5,a5,s6
	negw	s6,a5
	j	.L53
.L169:
	li	a0,13
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	slt	s6,a5,s6
	addi	s6,s6,-1
	j	.L53
.L168:
	li	a0,14
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	sgt	a5,a5,s6
	negw	s6,a5
	j	.L53
.L167:
	li	a0,15
	call	Execute
	sext.w	s6,s6
	sext.w	a5,s7
	sgt	s6,a5,s6
	addi	s6,s6,-1
	j	.L53
.L166:
	li	a0,16
	call	Execute
	sllw	s6,s7,s6
	j	.L53
.L165:
	li	a0,17
	call	Execute
	sraw	s6,s7,s6
	j	.L53
.L164:
	li	a0,18
	call	Execute
	and	s6,s6,s7
	j	.L53
.L163:
	li	a0,19
	call	Execute
	or	s6,s6,s7
	j	.L53
.L162:
	li	a0,20
	call	Execute
	xor	s6,s6,s7
	j	.L53
.L161:
	li	a0,21
	call	Execute
	xor	s6,s7,s6
	sext.w	s6,s6
	not	s6,s6
	j	.L53
.L160:
	li	a0,22
	call	Execute
	li	s1,0
	j	.L139
.L159:
	li	a0,23
	call	Execute
	sext.w	a5,s8
	addi	a4,a5,1
	slli	a4,a4,2
	slli	a5,a5,2
	add	a4,s3,a4
	add	a5,s3,a5
	lw	s9,0(a4)
	lw	s7,0(a5)
	mv	a3,s3
	sext.w	a2,s6
	j	.L182
.L184:
	addiw	s8,s8,2
	slli	a5,s8,2
	add	a5,a3,a5
	lw	a1,0(a5)
	addiw	s7,a4,-1
	beq	a1,a2,.L250
.L182:
	sext.w	a4,s7
	bne	a4,zero,.L184
	mv	s8,s9
	j	.L53
.L158:
	li	a0,24
	call	Execute
	sext.w	a0,s6
	call	selectinput@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L250:
	lw	s9,4(a5)
	mv	s8,s9
	j	.L53
.L157:
	li	a0,25
	call	Execute
	sext.w	a0,s6
	call	selectoutput@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L156:
	li	a0,26
	call	Execute
	call	rdch@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
.L155:
	li	a0,27
	call	Execute
	sext.w	a0,s6
	call	wrch@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L154:
	li	a0,28
	call	Execute
	sext.w	a0,s6
	call	findinput@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
.L153:
	li	a0,29
	call	Execute
	sext.w	a0,s6
	call	findoutput@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
.L152:
	li	a0,30
	call	Execute
	sext.w	s1,s6
	j	.L139
.L151:
	li	a0,31
	call	Execute
	sext.w	a5,s5
	slli	a5,a5,2
	add	a5,s3,a5
	lw	s6,0(a5)
	j	.L53
.L150:
	li	a0,32
	call	Execute
	mv	s5,s6
	mv	s8,s7
	j	.L53
.L149:
	li	a0,33
	call	Execute
	call	endread@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L148:
	li	a0,34
	call	Execute
	call	endwrite@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L147:
	li	a0,35
	call	Execute
	sext.w	a3,s5
	slli	a5,a3,2
	add	a5,s3,a5
	addw	s5,s7,s5
	lw	a2,0(a5)
	addiw	s5,s5,1
	slli	a4,s5,2
	addi	a5,a3,1
	add	a4,s3,a4
	slli	a5,a5,2
	sw	a2,0(a4)
	add	a5,s3,a5
	lw	a2,0(a5)
	addi	a4,s5,1
	slli	a4,a4,2
	add	a4,s3,a4
	addi	a5,s5,2
	sw	a2,0(a4)
	slli	a5,a5,2
	addi	a4,s5,3
	add	a5,s3,a5
	slli	a4,a4,2
	sw	a3,0(a5)
	add	a5,s3,a4
	sw	s7,0(a5)
	mv	s9,s5
	mv	s8,s6
	j	.L53
.L146:
	li	a0,36
	call	Execute
	sext.w	a1,s7
	sext.w	a0,s6
	call	getbyte@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
.L145:
	li	a0,37
	call	Execute
	sext.w	a5,s5
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,s3,a5
	lw	a2,0(a5)
	sext.w	a1,s7
	sext.w	a0,s6
	call	putbyte@plt
	lw	s2,.LANCHOR0+28
	j	.L53
.L144:
	li	a0,38
	call	Execute
	call	input@plt
	mv	s6,a0
	lw	s2,.LANCHOR0+28
	j	.L53
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.globl	fp
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	cnt, @object
	.size	cnt, 4
cnt:
	.zero	4
	.type	Ch, @object
	.size	Ch, 4
Ch:
	.zero	4
	.type	fp, @object
	.size	fp, 8
fp:
	.zero	8
	.type	Labv, @object
	.size	Labv, 8
Labv:
	.zero	8
	.type	Cp, @object
	.size	Cp, 4
Cp:
	.zero	4
	.type	Cyclecount, @object
	.size	Cyclecount, 4
Cyclecount:
	.zero	4
	.ident	"GCC: (Debian 14.2.0-8) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
