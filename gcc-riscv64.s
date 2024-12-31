	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	1
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	1
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	bgeu	a4,a5,.L8
	ld	a4,32(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	ld	a4,40(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	j	.L9
.L10:
	ld	a5,32(sp)
	addi	a5,a5,-1
	sd	a5,32(sp)
	ld	a5,40(sp)
	addi	a5,a5,-1
	sd	a5,40(sp)
	ld	a5,32(sp)
	lbu	a4,0(a5)
	ld	a5,40(sp)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L9:
	ld	a5,8(sp)
	bne	a5,zero,.L10
	j	.L11
.L8:
	ld	a4,32(sp)
	ld	a5,40(sp)
	beq	a4,a5,.L11
	j	.L12
.L13:
	ld	a4,32(sp)
	addi	a5,a4,1
	sd	a5,32(sp)
	ld	a5,40(sp)
	addi	a3,a5,1
	sd	a3,40(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L12:
	ld	a5,8(sp)
	bne	a5,zero,.L13
.L11:
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	1
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sd	a3,0(sp)
	sw	a2,12(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	lw	a5,12(sp)
	andi	a5,a5,0xff
	sw	a5,12(sp)
	j	.L17
.L19:
	ld	a5,0(sp)
	addi	a5,a5,-1
	sd	a5,0(sp)
	ld	a5,32(sp)
	addi	a5,a5,1
	sd	a5,32(sp)
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
.L17:
	ld	a5,0(sp)
	beq	a5,zero,.L18
	ld	a5,32(sp)
	lbu	a4,0(a5)
	ld	a5,40(sp)
	sb	a4,0(a5)
	ld	a5,40(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,12(sp)
	sext.w	a4,a4
	bne	a4,a5,.L19
.L18:
	ld	a5,0(sp)
	beq	a5,zero,.L20
	ld	a5,40(sp)
	addi	a5,a5,1
	j	.L21
.L20:
	li	a5,0
.L21:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	1
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	mv	a5,a1
	sd	a2,8(sp)
	sw	a1,20(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	lw	a5,20(sp)
	andi	a5,a5,0xff
	sw	a5,20(sp)
	j	.L24
.L26:
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L24:
	ld	a5,8(sp)
	beq	a5,zero,.L25
	ld	a5,40(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,20(sp)
	sext.w	a4,a4
	bne	a4,a5,.L26
.L25:
	ld	a5,8(sp)
	beq	a5,zero,.L27
	ld	a5,40(sp)
	j	.L29
.L27:
	li	a5,0
.L29:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	1
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	j	.L32
.L34:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
	ld	a5,32(sp)
	addi	a5,a5,1
	sd	a5,32(sp)
.L32:
	ld	a5,8(sp)
	beq	a5,zero,.L33
	ld	a5,40(sp)
	lbu	a4,0(a5)
	ld	a5,32(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L34
.L33:
	ld	a5,8(sp)
	beq	a5,zero,.L35
	ld	a5,40(sp)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,32(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	j	.L36
.L35:
	li	a5,0
.L36:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	j	.L40
.L41:
	ld	a4,32(sp)
	addi	a5,a4,1
	sd	a5,32(sp)
	ld	a5,40(sp)
	addi	a3,a5,1
	sd	a3,40(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L40:
	ld	a5,8(sp)
	bne	a5,zero,.L41
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	1
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	mv	a5,a1
	sd	a2,8(sp)
	sw	a1,20(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	lw	a5,20(sp)
	andi	a5,a5,0xff
	sw	a5,20(sp)
	j	.L45
.L47:
	ld	a4,40(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,20(sp)
	sext.w	a4,a4
	bne	a4,a5,.L45
	ld	a4,40(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	j	.L46
.L45:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L47
	li	a5,0
.L46:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	1
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	mv	a5,a1
	sd	a2,8(sp)
	sw	a1,20(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L50
.L51:
	lw	a5,20(sp)
	andi	a4,a5,0xff
	ld	a5,40(sp)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
.L50:
	ld	a5,8(sp)
	bne	a5,zero,.L51
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	1
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	j	.L55
.L56:
	ld	a5,0(sp)
	addi	a5,a5,1
	sd	a5,0(sp)
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L55:
	ld	a5,0(sp)
	lbu	a4,0(a5)
	ld	a5,8(sp)
	sb	a4,0(a5)
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L56
	ld	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	1
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	lw	a5,4(sp)
	andi	a5,a5,0xff
	sw	a5,4(sp)
	j	.L60
.L62:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L60:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L61
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,4(sp)
	sext.w	a4,a4
	bne	a4,a5,.L62
.L61:
	ld	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	1
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sw	a4,12(sp)
.L68:
	lbu	a4,0(a5)
	sext.w	a4,a4
	lw	a3,12(sp)
	sext.w	a3,a3
	bne	a3,a4,.L66
	j	.L67
.L66:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L68
	li	a5,0
.L67:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	1
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	j	.L71
.L73:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	ld	a5,0(sp)
	addi	a5,a5,1
	sd	a5,0(sp)
.L71:
	ld	a5,8(sp)
	lbu	a4,0(a5)
	ld	a5,0(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L72
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L73
.L72:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,0(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	1
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	j	.L77
.L78:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L77:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L78
	ld	a4,8(sp)
	ld	a5,24(sp)
	sub	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L84
	li	a5,0
	j	.L83
.L86:
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
	ld	a5,32(sp)
	addi	a5,a5,1
	sd	a5,32(sp)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L84:
	ld	a5,40(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L85
	ld	a5,32(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L85
	ld	a5,8(sp)
	beq	a5,zero,.L85
	ld	a5,40(sp)
	lbu	a4,0(a5)
	ld	a5,32(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L86
.L85:
	ld	a5,40(sp)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,32(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
.L83:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	1
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	j	.L89
.L90:
	ld	a5,40(sp)
	addi	a5,a5,1
	lbu	a4,0(a5)
	ld	a5,32(sp)
	sb	a4,0(a5)
	ld	a5,32(sp)
	addi	a5,a5,1
	ld	a4,40(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,32(sp)
	addi	a5,a5,2
	sd	a5,32(sp)
	ld	a5,40(sp)
	addi	a5,a5,2
	sd	a5,40(sp)
	ld	a5,8(sp)
	addi	a5,a5,-2
	sd	a5,8(sp)
.L89:
	ld	a4,8(sp)
	li	a5,1
	bgt	a4,a5,.L90
	nop
	nop
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	1
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	ori	a5,a5,32
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	1
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a4,12(sp)
	li	a5,127
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	1
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,32
	beq	a4,a5,.L99
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,9
	bne	a4,a5,.L100
.L99:
	li	a5,1
	j	.L101
.L100:
	li	a5,0
.L101:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	1
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a4,12(sp)
	li	a5,31
	bleu	a4,a5,.L105
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,127
	bne	a4,a5,.L106
.L105:
	li	a5,1
	j	.L107
.L106:
	li	a5,0
.L107:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	1
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	1
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-33
	sext.w	a4,a5
	li	a5,93
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	1
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	1
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-32
	sext.w	a4,a5
	li	a5,94
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	1
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,32
	beq	a4,a5,.L123
	lw	a5,12(sp)
	addiw	a5,a5,-9
	sext.w	a4,a5
	li	a5,4
	bgtu	a4,a5,.L124
.L123:
	li	a5,1
	j	.L125
.L124:
	li	a5,0
.L125:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	1
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-65
	sext.w	a4,a5
	li	a5,25
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	1
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,31
	bleu	a4,a5,.L132
	lw	a5,12(sp)
	addiw	a5,a5,-127
	sext.w	a4,a5
	li	a5,32
	bleu	a4,a5,.L132
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-40
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1
	bleu	a4,a5,.L132
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,7
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,2
	bgtu	a4,a5,.L133
.L132:
	li	a5,1
	j	.L134
.L133:
	li	a5,0
.L134:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	1
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	sgtu	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	1
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,254
	bgtu	a4,a5,.L141
	lw	a5,12(sp)
	addiw	a5,a5,1
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a4,a5
	li	a5,32
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L142
.L141:
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,39
	bleu	a4,a5,.L143
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-42
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,45056
	addi	a5,a5,2005
	bleu	a4,a5,.L143
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-57344
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,-8
	bgtu	a4,a5,.L144
.L143:
	li	a5,1
	j	.L142
.L144:
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,4
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1048576
	addi	a5,a5,3
	bgtu	a4,a5,.L145
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	and	a5,a4,a5
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bne	a4,a5,.L146
.L145:
	li	a5,0
	j	.L142
.L146:
	li	a5,1
.L142:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	1
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L149
	lw	a5,12(sp)
	ori	a5,a5,32
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,5
	bgtu	a4,a5,.L150
.L149:
	li	a5,1
	j	.L151
.L150:
	li	a5,0
.L151:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	1
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	andi	a5,a5,127
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	1
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fsd	fa1,0(sp)
	fld	fa4,8(sp)
	fld	fa5,8(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L158
	fld	fa5,8(sp)
	j	.L159
.L158:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L160
	fld	fa5,0(sp)
	j	.L159
.L160:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L164
	j	.L165
.L164:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fsub.d	fa5,fa4,fa5
	j	.L159
.L165:
	fmv.d.x	fa5,zero
.L159:
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	1
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	fsw	fa1,8(sp)
	flw	fa4,12(sp)
	flw	fa5,12(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L168
	flw	fa5,12(sp)
	j	.L169
.L168:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L170
	flw	fa5,8(sp)
	j	.L169
.L170:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L174
	j	.L175
.L174:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fsub.s	fa5,fa4,fa5
	j	.L169
.L175:
	fmv.s.x	fa5,zero
.L169:
	fmv.s	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	1
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fsd	fa1,0(sp)
	fld	fa4,8(sp)
	fld	fa5,8(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L178
	fld	fa5,0(sp)
	j	.L179
.L178:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L180
	fld	fa5,8(sp)
	j	.L179
.L180:
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,0(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L181
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L182
	fld	fa5,0(sp)
	j	.L179
.L182:
	fld	fa5,8(sp)
	j	.L179
.L181:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L187
	j	.L188
.L187:
	fld	fa5,0(sp)
	j	.L179
.L188:
	fld	fa5,8(sp)
.L179:
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	1
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	fsw	fa1,8(sp)
	flw	fa4,12(sp)
	flw	fa5,12(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L191
	flw	fa5,8(sp)
	j	.L192
.L191:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L193
	flw	fa5,12(sp)
	j	.L192
.L193:
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,8(sp)
	mv	a3,a5
	li	a5,-2147483648
	and	a5,a3,a5
	sext.w	a5,a5
	beq	a4,a5,.L194
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L195
	flw	fa5,8(sp)
	j	.L192
.L195:
	flw	fa5,12(sp)
	j	.L192
.L194:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L200
	j	.L201
.L200:
	flw	fa5,8(sp)
	j	.L192
.L201:
	flw	fa5,12(sp)
.L192:
	fmv.s	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	1
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,0(sp)
	sd	a3,8(sp)
	ld	a2,16(sp)
	ld	a3,24(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a0,zero,.L218
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L206
.L218:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L219
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L206
.L219:
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L209
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L210
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L206
.L210:
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L206
.L209:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L220
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L206
.L220:
	ld	a4,16(sp)
	ld	a5,24(sp)
.L206:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fsd	fa1,0(sp)
	fld	fa4,8(sp)
	fld	fa5,8(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L223
	fld	fa5,0(sp)
	j	.L224
.L223:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L225
	fld	fa5,8(sp)
	j	.L224
.L225:
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,0(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L226
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L227
	fld	fa5,8(sp)
	j	.L224
.L227:
	fld	fa5,0(sp)
	j	.L224
.L226:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L232
	j	.L233
.L232:
	fld	fa5,8(sp)
	j	.L224
.L233:
	fld	fa5,0(sp)
.L224:
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	1
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	fsw	fa1,8(sp)
	flw	fa4,12(sp)
	flw	fa5,12(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L236
	flw	fa5,8(sp)
	j	.L237
.L236:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L238
	flw	fa5,12(sp)
	j	.L237
.L238:
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,8(sp)
	mv	a3,a5
	li	a5,-2147483648
	and	a5,a3,a5
	sext.w	a5,a5
	beq	a4,a5,.L239
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L240
	flw	fa5,12(sp)
	j	.L237
.L240:
	flw	fa5,8(sp)
	j	.L237
.L239:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L245
	j	.L246
.L245:
	flw	fa5,12(sp)
	j	.L237
.L246:
	flw	fa5,8(sp)
.L237:
	fmv.s	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	1
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,0(sp)
	sd	a3,8(sp)
	ld	a2,16(sp)
	ld	a3,24(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a0,zero,.L263
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L251
.L263:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L264
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L251
.L264:
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L254
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L255
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L251
.L255:
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L251
.L254:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L265
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L251
.L265:
	ld	a4,0(sp)
	ld	a5,8(sp)
.L251:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	1
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sw	a5,20(sp)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	sd	a5,24(sp)
	j	.L268
.L269:
	lw	a5,20(sp)
	andi	a5,a5,63
	sext.w	a3,a5
	lui	a5,%hi(digits)
	addi	a4,a5,%lo(digits)
	slli	a5,a3,32
	srli	a5,a5,32
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a5,24(sp)
	sb	a4,0(a5)
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
	lw	a5,20(sp)
	srliw	a5,a5,6
	sw	a5,20(sp)
.L268:
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L269
	ld	a5,24(sp)
	sb	zero,0(a5)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	1
	.globl	srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a4,a5,32
	srli	a4,a4,32
	lui	a5,%hi(seed)
	sd	a4,%lo(seed)(a5)
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	1
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	lui	a5,%hi(seed)
	ld	a4,%lo(seed)(a5)
	lui	a5,%hi(.LC0)
	ld	a5,%lo(.LC0)(a5)
	mul	a5,a4,a5
	addi	a4,a5,1
	lui	a5,%hi(seed)
	sd	a4,%lo(seed)(a5)
	lui	a5,%hi(seed)
	ld	a5,%lo(seed)(a5)
	srli	a5,a5,33
	sext.w	a5,a5
	mv	a0,a5
	ret
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	1
	.globl	insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a5,16(sp)
	bne	a5,zero,.L277
	ld	a5,24(sp)
	sd	zero,8(a5)
	ld	a5,24(sp)
	ld	a4,8(a5)
	ld	a5,24(sp)
	sd	a4,0(a5)
	j	.L276
.L277:
	ld	a5,16(sp)
	ld	a4,0(a5)
	ld	a5,24(sp)
	sd	a4,0(a5)
	ld	a5,24(sp)
	ld	a4,16(sp)
	sd	a4,8(a5)
	ld	a5,16(sp)
	ld	a4,24(sp)
	sd	a4,0(a5)
	ld	a5,24(sp)
	ld	a5,0(a5)
	beq	a5,zero,.L276
	ld	a5,24(sp)
	ld	a5,0(a5)
	ld	a4,24(sp)
	sd	a4,8(a5)
.L276:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	1
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,24(sp)
	ld	a5,0(a5)
	beq	a5,zero,.L281
	ld	a5,24(sp)
	ld	a5,0(a5)
	ld	a4,24(sp)
	ld	a4,8(a4)
	sd	a4,8(a5)
.L281:
	ld	a5,24(sp)
	ld	a5,8(a5)
	beq	a5,zero,.L283
	ld	a5,24(sp)
	ld	a5,8(a5)
	ld	a4,24(sp)
	ld	a4,0(a4)
	sd	a4,0(a5)
.L283:
	nop
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	1
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	sd	a0,40(sp)
	sd	a1,32(sp)
	sd	a2,24(sp)
	sd	a3,16(sp)
	sd	a4,8(sp)
	ld	s0,16(sp)
	mv	a5,s0
	addi	a5,s0,-1
	sd	a5,64(sp)
	mv	t1,s0
	li	t2,0
	srli	a5,s0,61
	slli	a7,t2,3
	or	a7,a5,a7
	slli	a6,s0,3
	ld	a5,32(sp)
	sd	a5,56(sp)
	ld	a5,24(sp)
	ld	a5,0(a5)
	sd	a5,48(sp)
	sd	zero,72(sp)
	j	.L286
.L289:
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,56(sp)
	add	a4,a4,a5
	ld	a5,8(sp)
	mv	a1,a4
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L287
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,56(sp)
	add	a5,a4,a5
	j	.L288
.L287:
	ld	a5,72(sp)
	addi	a5,a5,1
	sd	a5,72(sp)
.L286:
	ld	a4,72(sp)
	ld	a5,48(sp)
	bltu	a4,a5,.L289
	ld	a5,48(sp)
	addi	a4,a5,1
	ld	a5,24(sp)
	sd	a4,0(a5)
	ld	a5,48(sp)
	mul	a5,s0,a5
	ld	a4,56(sp)
	add	a5,a4,a5
	ld	a2,16(sp)
	ld	a1,40(sp)
	mv	a0,a5
	call	memcpy
	mv	a5,a0
.L288:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	1
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	sd	a0,40(sp)
	sd	a1,32(sp)
	sd	a2,24(sp)
	sd	a3,16(sp)
	sd	a4,8(sp)
	ld	s0,16(sp)
	mv	a5,s0
	addi	a5,s0,-1
	sd	a5,64(sp)
	mv	t1,s0
	li	t2,0
	srli	a5,s0,61
	slli	a7,t2,3
	or	a7,a5,a7
	slli	a6,s0,3
	ld	a5,32(sp)
	sd	a5,56(sp)
	ld	a5,24(sp)
	ld	a5,0(a5)
	sd	a5,48(sp)
	sd	zero,72(sp)
	j	.L292
.L295:
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,56(sp)
	add	a4,a4,a5
	ld	a5,8(sp)
	mv	a1,a4
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L293
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,56(sp)
	add	a5,a4,a5
	j	.L294
.L293:
	ld	a5,72(sp)
	addi	a5,a5,1
	sd	a5,72(sp)
.L292:
	ld	a4,72(sp)
	ld	a5,48(sp)
	bltu	a4,a5,.L295
	li	a5,0
.L294:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	1
	.globl	abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	sraiw	a5,a5,31
	lw	a4,12(sp)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	1
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sw	zero,28(sp)
	sw	zero,24(sp)
	j	.L301
.L302:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L301:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L302
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L303
	li	a4,45
	bne	a5,a4,.L305
	li	a5,1
	sw	a5,24(sp)
.L303:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L305
.L306:
	lw	a5,28(sp)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	ld	a5,8(sp)
	addi	a3,a5,1
	sd	a3,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	subw	a5,a4,a5
	sw	a5,28(sp)
.L305:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L306
	lw	a5,24(sp)
	sext.w	a5,a5
	bne	a5,zero,.L307
	lw	a5,28(sp)
	negw	a5,a5
	sext.w	a5,a5
	j	.L308
.L307:
	lw	a5,28(sp)
.L308:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	zero,24(sp)
	sw	zero,20(sp)
	j	.L312
.L313:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L312:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L313
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L314
	li	a4,45
	bne	a5,a4,.L316
	li	a5,1
	sw	a5,20(sp)
.L314:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L316
.L317:
	ld	a4,24(sp)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	ld	a5,8(sp)
	addi	a4,a5,1
	sd	a4,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	sub	a5,a3,a5
	sd	a5,24(sp)
.L316:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L317
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L318
	ld	a5,24(sp)
	neg	a5,a5
	j	.L320
.L318:
	ld	a5,24(sp)
.L320:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	1
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	zero,24(sp)
	sw	zero,20(sp)
	j	.L323
.L324:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L323:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L324
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L325
	li	a4,45
	bne	a5,a4,.L327
	li	a5,1
	sw	a5,20(sp)
.L325:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L327
.L328:
	ld	a4,24(sp)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	ld	a5,8(sp)
	addi	a4,a5,1
	sd	a4,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	sub	a5,a3,a5
	sd	a5,24(sp)
.L327:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L328
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L329
	ld	a5,24(sp)
	neg	a5,a5
	j	.L331
.L329:
	ld	a5,24(sp)
.L331:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	1
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	.cfi_offset 1, -8
	sd	a0,40(sp)
	sd	a1,32(sp)
	sd	a2,24(sp)
	sd	a3,16(sp)
	sd	a4,8(sp)
	j	.L334
.L339:
	ld	a5,24(sp)
	srli	a4,a5,1
	ld	a5,16(sp)
	mul	a5,a4,a5
	ld	a4,32(sp)
	add	a5,a4,a5
	sd	a5,56(sp)
	ld	a5,8(sp)
	ld	a1,56(sp)
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	sw	a5,52(sp)
	lw	a5,52(sp)
	sext.w	a5,a5
	bge	a5,zero,.L335
	ld	a5,24(sp)
	srli	a5,a5,1
	sd	a5,24(sp)
	j	.L334
.L335:
	lw	a5,52(sp)
	sext.w	a5,a5
	ble	a5,zero,.L337
	ld	a4,56(sp)
	ld	a5,16(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	ld	a5,24(sp)
	srli	a5,a5,1
	ld	a4,24(sp)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sd	a5,24(sp)
	j	.L334
.L337:
	ld	a5,56(sp)
	j	.L338
.L334:
	ld	a5,24(sp)
	bne	a5,zero,.L339
	li	a5,0
.L338:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	1
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	.cfi_offset 1, -8
	sd	a0,40(sp)
	sd	a1,32(sp)
	sd	a2,24(sp)
	sd	a3,16(sp)
	sd	a4,8(sp)
	sd	a5,0(sp)
	ld	a5,32(sp)
	sd	a5,72(sp)
	ld	a5,24(sp)
	sw	a5,68(sp)
	j	.L342
.L346:
	lw	a5,68(sp)
	sraiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,16(sp)
	mul	a5,a4,a5
	ld	a4,72(sp)
	add	a5,a4,a5
	sd	a5,56(sp)
	ld	a5,8(sp)
	ld	a2,0(sp)
	ld	a1,56(sp)
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	sw	a5,52(sp)
	lw	a5,52(sp)
	sext.w	a5,a5
	bne	a5,zero,.L343
	ld	a5,56(sp)
	j	.L344
.L343:
	lw	a5,52(sp)
	sext.w	a5,a5
	ble	a5,zero,.L345
	ld	a4,56(sp)
	ld	a5,16(sp)
	add	a5,a4,a5
	sd	a5,72(sp)
	lw	a5,68(sp)
	addiw	a5,a5,-1
	sw	a5,68(sp)
.L345:
	lw	a5,68(sp)
	sraiw	a5,a5,1
	sw	a5,68(sp)
.L342:
	lw	a5,68(sp)
	sext.w	a5,a5
	bne	a5,zero,.L346
	li	a5,0
.L344:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	1
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	divw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,12(sp)
	mv	a3,a5
	lw	a5,8(sp)
	remw	a5,a3,a5
	sext.w	a5,a5
	sw	a4,24(sp)
	sw	a5,28(sp)
	li	a5,0
	lwu	a4,24(sp)
	slli	a4,a4,32
	srli	a4,a4,32
	li	a3,-1
	slli	a3,a3,32
	and	a5,a5,a3
	or	a5,a5,a4
	lwu	a4,28(sp)
	slli	a4,a4,32
	slli	a5,a5,32
	srli	a5,a5,32
	or	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	1
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	srai	a4,a5,63
	ld	a5,8(sp)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	1
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a4,8(sp)
	ld	a5,0(sp)
	div	a4,a4,a5
	ld	a1,8(sp)
	ld	a5,0(sp)
	rem	a5,a1,a5
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	1
	.globl	labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	srai	a4,a5,63
	ld	a5,8(sp)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	1
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a4,8(sp)
	ld	a5,0(sp)
	div	a4,a4,a5
	ld	a1,8(sp)
	ld	a5,0(sp)
	rem	a5,a1,a5
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	1
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	srai	a4,a5,63
	ld	a5,8(sp)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	1
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a4,8(sp)
	ld	a5,0(sp)
	div	a4,a4,a5
	ld	a1,8(sp)
	ld	a5,0(sp)
	rem	a5,a1,a5
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	1
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	j	.L370
.L372:
	ld	a5,8(sp)
	addi	a5,a5,4
	sd	a5,8(sp)
.L370:
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L371
	ld	a5,8(sp)
	lw	a5,0(a5)
	lw	a4,4(sp)
	sext.w	a4,a4
	bne	a4,a5,.L372
.L371:
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L373
	ld	a5,8(sp)
	j	.L375
.L373:
	li	a5,0
.L375:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	1
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	j	.L378
.L380:
	ld	a5,8(sp)
	addi	a5,a5,4
	sd	a5,8(sp)
	ld	a5,0(sp)
	addi	a5,a5,4
	sd	a5,0(sp)
.L378:
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L379
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L379
	ld	a5,0(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L380
.L379:
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L381
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L382
.L381:
	li	a5,-1
.L382:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	1
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	nop
.L386:
	ld	a4,0(sp)
	addi	a5,a4,4
	sd	a5,0(sp)
	ld	a5,8(sp)
	addi	a3,a5,4
	sd	a3,8(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L386
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	1
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	j	.L390
.L391:
	ld	a5,8(sp)
	addi	a5,a5,4
	sd	a5,8(sp)
.L390:
	ld	a5,8(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L391
	ld	a4,8(sp)
	ld	a5,24(sp)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	j	.L395
.L397:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,4
	sd	a5,16(sp)
.L395:
	ld	a5,8(sp)
	beq	a5,zero,.L396
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L396
	ld	a5,24(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L396
	ld	a5,16(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L397
.L396:
	ld	a5,8(sp)
	beq	a5,zero,.L398
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L399
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L401
.L399:
	li	a5,-1
	j	.L401
.L398:
	li	a5,0
.L401:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	1
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,24(sp)
	mv	a5,a1
	sd	a2,8(sp)
	sw	a1,20(sp)
	j	.L405
.L407:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
.L405:
	ld	a5,8(sp)
	beq	a5,zero,.L406
	ld	a5,24(sp)
	lw	a5,0(a5)
	lw	a4,20(sp)
	sext.w	a4,a4
	bne	a4,a5,.L407
.L406:
	ld	a5,8(sp)
	beq	a5,zero,.L408
	ld	a5,24(sp)
	j	.L410
.L408:
	li	a5,0
.L410:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	1
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	j	.L413
.L415:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,4
	sd	a5,16(sp)
.L413:
	ld	a5,8(sp)
	beq	a5,zero,.L414
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	beq	a4,a5,.L415
.L414:
	ld	a5,8(sp)
	beq	a5,zero,.L416
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L417
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L419
.L417:
	li	a5,-1
	j	.L419
.L416:
	li	a5,0
.L419:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	1
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L423
.L424:
	ld	a4,16(sp)
	addi	a5,a4,4
	sd	a5,16(sp)
	ld	a5,24(sp)
	addi	a3,a5,4
	sd	a3,24(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L423:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L424
	ld	a5,40(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	1
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,16(sp)
	bne	a4,a5,.L428
	ld	a5,24(sp)
	j	.L429
.L428:
	ld	a4,24(sp)
	ld	a5,16(sp)
	sub	a4,a4,a5
	ld	a5,8(sp)
	slli	a5,a5,2
	bgeu	a4,a5,.L434
	j	.L431
.L432:
	ld	a5,8(sp)
	slli	a5,a5,2
	ld	a4,16(sp)
	add	a4,a4,a5
	ld	a5,8(sp)
	slli	a5,a5,2
	ld	a3,24(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L431:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L432
	j	.L433
.L435:
	ld	a4,16(sp)
	addi	a5,a4,4
	sd	a5,16(sp)
	ld	a5,24(sp)
	addi	a3,a5,4
	sd	a3,24(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L434:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L435
.L433:
	ld	a5,40(sp)
.L429:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	mv	a5,a1
	sd	a2,8(sp)
	sw	a1,20(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L438
.L439:
	ld	a5,24(sp)
	addi	a4,a5,4
	sd	a4,24(sp)
	lw	a4,20(sp)
	sw	a4,0(a5)
.L438:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L439
	ld	a5,40(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	ld	a4,40(sp)
	ld	a5,32(sp)
	bgeu	a4,a5,.L443
	ld	a4,40(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,32(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	j	.L444
.L445:
	ld	a5,40(sp)
	addi	a5,a5,-1
	sd	a5,40(sp)
	ld	a5,32(sp)
	addi	a5,a5,-1
	sd	a5,32(sp)
	ld	a5,40(sp)
	lbu	a4,0(a5)
	ld	a5,32(sp)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L444:
	ld	a5,8(sp)
	bne	a5,zero,.L445
	j	.L449
.L443:
	ld	a4,40(sp)
	ld	a5,32(sp)
	beq	a4,a5,.L449
	j	.L447
.L448:
	ld	a4,40(sp)
	addi	a5,a4,1
	sd	a5,40(sp)
	ld	a5,32(sp)
	addi	a3,a5,1
	sd	a3,32(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L447:
	ld	a5,8(sp)
	bne	a5,zero,.L448
.L449:
	nop
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	1
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a5,4(sp)
	ld	a5,8(sp)
	lw	a4,4(sp)
	sll	a4,a5,a4
	lw	a3,4(sp)
	negw	a3,a3
	andi	a3,a3,63
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	1
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a5,4(sp)
	ld	a5,8(sp)
	lw	a4,4(sp)
	srl	a4,a5,a4
	lw	a3,4(sp)
	negw	a3,a3
	andi	a3,a3,63
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	1
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	sllw	a4,a5,a4
	lw	a3,8(sp)
	negw	a3,a3
	andi	a3,a3,31
	srlw	a5,a5,a3
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	1
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	srlw	a4,a5,a4
	lw	a3,8(sp)
	negw	a3,a3
	andi	a3,a3,31
	sllw	a5,a5,a3
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	1
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a5,4(sp)
	lw	a5,4(sp)
	mv	a4,a5
	ld	a5,8(sp)
	sll	a4,a5,a4
	lw	a5,4(sp)
	li	a3,64
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,8(sp)
	srl	a5,a5,a3
	or	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	1
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	mv	a5,a1
	sw	a5,4(sp)
	lw	a5,4(sp)
	mv	a4,a5
	ld	a5,8(sp)
	srl	a4,a5,a4
	lw	a5,4(sp)
	li	a3,64
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,8(sp)
	sll	a5,a5,a3
	or	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	1
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sh	a5,14(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,8(sp)
	sllw	a5,a5,a4
	sext.w	a5,a5
	slli	a4,a5,48
	srli	a4,a4,48
	lhu	a5,14(sp)
	sext.w	a5,a5
	li	a3,16
	lw	a2,8(sp)
	subw	a3,a3,a2
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	1
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sh	a5,14(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,8(sp)
	srlw	a5,a5,a4
	sext.w	a5,a5
	slli	a4,a5,48
	srli	a4,a4,48
	lhu	a5,14(sp)
	sext.w	a5,a5
	li	a3,16
	lw	a2,8(sp)
	subw	a3,a3,a2
	sext.w	a3,a3
	sllw	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	1
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sb	a5,15(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lbu	a5,15(sp)
	sext.w	a5,a5
	lw	a4,8(sp)
	sllw	a5,a5,a4
	sext.w	a5,a5
	andi	a4,a5,0xff
	lbu	a5,15(sp)
	sext.w	a5,a5
	li	a3,8
	lw	a2,8(sp)
	subw	a3,a3,a2
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	1
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sb	a5,15(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lbu	a5,15(sp)
	sext.w	a5,a5
	lw	a4,8(sp)
	srlw	a5,a5,a4
	sext.w	a5,a5
	andi	a4,a5,0xff
	lbu	a5,15(sp)
	sext.w	a5,a5
	li	a3,8
	lw	a2,8(sp)
	subw	a3,a3,a2
	sext.w	a3,a3
	sllw	a5,a5,a3
	sext.w	a5,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	1
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sh	a5,14(sp)
	li	a5,255
	sd	a5,24(sp)
	lhu	a4,14(sp)
	ld	a5,24(sp)
	slli	a5,a5,8
	and	a5,a4,a5
	srli	a5,a5,8
	slli	a4,a5,48
	srli	a4,a4,48
	ld	a5,24(sp)
	slli	a5,a5,48
	srli	a5,a5,48
	lhu	a3,14(sp)
	and	a5,a5,a3
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a5,a5,8
	slli	a5,a5,48
	srli	a5,a5,48
	or	a5,a4,a5
	slli	a5,a5,48
	srli	a5,a5,48
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	1
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a5,12(sp)
	li	a5,255
	sd	a5,24(sp)
	lwu	a4,12(sp)
	ld	a5,24(sp)
	slli	a5,a5,24
	and	a5,a4,a5
	srli	a5,a5,24
	sext.w	a3,a5
	lwu	a4,12(sp)
	ld	a5,24(sp)
	slli	a5,a5,16
	and	a5,a4,a5
	srli	a5,a5,8
	sext.w	a5,a5
	mv	a4,a3
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,24(sp)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	lw	a3,12(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	ld	a5,24(sp)
	sext.w	a5,a5
	lw	a3,12(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	slliw	a5,a5,24
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	1
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	li	a5,255
	sd	a5,24(sp)
	ld	a5,24(sp)
	slli	a4,a5,56
	ld	a5,8(sp)
	and	a5,a4,a5
	srli	a4,a5,56
	ld	a5,24(sp)
	slli	a3,a5,48
	ld	a5,8(sp)
	and	a5,a3,a5
	srli	a5,a5,40
	or	a4,a4,a5
	ld	a5,24(sp)
	slli	a3,a5,40
	ld	a5,8(sp)
	and	a5,a3,a5
	srli	a5,a5,24
	or	a4,a4,a5
	ld	a5,24(sp)
	slli	a3,a5,32
	ld	a5,8(sp)
	and	a5,a3,a5
	srli	a5,a5,8
	or	a4,a4,a5
	ld	a5,24(sp)
	slli	a3,a5,24
	ld	a5,8(sp)
	and	a5,a3,a5
	slli	a5,a5,8
	or	a4,a4,a5
	ld	a5,24(sp)
	slli	a3,a5,16
	ld	a5,8(sp)
	and	a5,a3,a5
	slli	a5,a5,24
	or	a4,a4,a5
	ld	a5,24(sp)
	slli	a3,a5,8
	ld	a5,8(sp)
	and	a5,a3,a5
	slli	a5,a5,40
	or	a4,a4,a5
	ld	a3,8(sp)
	ld	a5,24(sp)
	and	a5,a3,a5
	slli	a5,a5,56
	or	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	1
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a0,12(sp)
	sw	zero,28(sp)
	j	.L491
.L494:
	lw	a5,12(sp)
	lw	a4,28(sp)
	srlw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L492
	lw	a5,28(sp)
	addiw	a5,a5,1
	sext.w	a5,a5
	j	.L493
.L492:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L491:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,31
	bleu	a4,a5,.L494
	li	a5,0
.L493:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	1
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	bne	a0,zero,.L497
	li	a5,0
	j	.L502
.L497:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	mv	a5,a0
	li	s0,1
	j	.L499
.L500:
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a4,s0,1
	sext.w	s0,a4
.L499:
	andi	a4,a5,1
	sext.w	a4,a4
	beq	a4,zero,.L500
	mv	a5,s0
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L502:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	1
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	flw	fa4,12(sp)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L505
	flw	fa4,12(sp)
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L505
	j	.L510
.L505:
	li	a5,1
	j	.L508
.L510:
	li	a5,0
.L508:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	1
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fld	fa4,8(sp)
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L515
	fld	fa4,8(sp)
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L515
	j	.L520
.L515:
	li	a5,1
	j	.L518
.L520:
	li	a5,0
.L518:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	1
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sd	a0,0(sp)
	sd	a1,8(sp)
	lui	a5,%hi(.LC5)
	ld	a2,%lo(.LC5)(a5)
	ld	a3,%lo(.LC5+8)(a5)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__lttf2
	mv	a5,a0
	blt	a0,zero,.L525
	lui	a5,%hi(.LC6)
	ld	a2,%lo(.LC6)(a5)
	ld	a3,%lo(.LC6+8)(a5)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__gttf2
	mv	a5,a0
	ble	a5,zero,.L530
.L525:
	li	a5,1
	j	.L528
.L530:
	li	a5,0
.L528:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	1
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	mv	a5,a1
	sw	a5,4(sp)
	lw	a5,4(sp)
	fcvt.d.w	fa5,a5
	fmv.d	fa0,fa5
	call	__extenddftf2
	mv	a4,a0
	mv	a5,a1
	ld	a3,8(sp)
	sd	a4,0(a3)
	sd	a5,8(a3)
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	1
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsw	fa0,12(sp)
	mv	a5,a0
	sw	a0,8(sp)
	flw	fa4,12(sp)
	flw	fa5,12(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	beq	a5,zero,.L535
	flw	fa5,12(sp)
	fadd.s	fa5,fa5,fa5
	flw	fa4,12(sp)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L535
	lw	a5,8(sp)
	sext.w	a5,a5
	bge	a5,zero,.L536
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L537
.L536:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
.L537:
	fsw	fa5,28(sp)
.L540:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L538
	flw	fa4,12(sp)
	flw	fa5,28(sp)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,12(sp)
.L538:
	lw	a5,8(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L542
	flw	fa5,28(sp)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,28(sp)
	j	.L540
.L542:
	nop
.L535:
	flw	fa5,12(sp)
	fmv.s	fa0,fa5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	1
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,8(sp)
	mv	a5,a0
	sw	a0,4(sp)
	fld	fa4,8(sp)
	fld	fa5,8(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	beq	a5,zero,.L546
	fld	fa5,8(sp)
	fadd.d	fa5,fa5,fa5
	fld	fa4,8(sp)
	feq.d	a5,fa4,fa5
	bne	a5,zero,.L546
	lw	a5,4(sp)
	sext.w	a5,a5
	bge	a5,zero,.L547
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L548
.L547:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
.L548:
	fsd	fa5,24(sp)
.L551:
	lw	a5,4(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L549
	fld	fa4,8(sp)
	fld	fa5,24(sp)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,8(sp)
.L549:
	lw	a5,4(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L553
	fld	fa5,24(sp)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,24(sp)
	j	.L551
.L553:
	nop
.L546:
	fld	fa5,8(sp)
	fmv.d	fa0,fa5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	1
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,16(sp)
	sd	a1,24(sp)
	mv	a5,a2
	sw	a2,12(sp)
	ld	a2,16(sp)
	ld	a3,24(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__unordtf2
	mv	a5,a0
	bne	a0,zero,.L557
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__addtf3
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__netf2
	mv	a5,a0
	beq	a5,zero,.L557
	lw	a5,12(sp)
	sext.w	a5,a5
	bge	a5,zero,.L559
	lui	a3,%hi(.LC11)
	ld	a4,%lo(.LC11)(a3)
	ld	a5,%lo(.LC11+8)(a3)
	j	.L560
.L559:
	lui	a3,%hi(.LC12)
	ld	a4,%lo(.LC12)(a3)
	ld	a5,%lo(.LC12+8)(a3)
.L560:
	sd	a4,32(sp)
	sd	a5,40(sp)
.L563:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L561
	ld	a2,32(sp)
	ld	a3,40(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,16(sp)
	sd	a5,24(sp)
.L561:
	lw	a5,12(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,12(sp)
	sext.w	a5,a5
	beq	a5,zero,.L566
	ld	a2,32(sp)
	ld	a3,40(sp)
	ld	a0,32(sp)
	ld	a1,40(sp)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,32(sp)
	sd	a5,40(sp)
	j	.L563
.L566:
	nop
.L557:
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a5,16(sp)
	sd	a5,40(sp)
	ld	a5,24(sp)
	sd	a5,32(sp)
	j	.L569
.L570:
	ld	a5,40(sp)
	addi	a4,a5,1
	sd	a4,40(sp)
	lbu	a3,0(a5)
	ld	a5,32(sp)
	addi	a4,a5,1
	sd	a4,32(sp)
	lbu	a4,0(a5)
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L569:
	ld	a5,8(sp)
	bne	a5,zero,.L570
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	1
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a0,24(sp)
	call	strlen
	mv	a4,a0
	ld	a5,24(sp)
	add	a5,a5,a0
	sd	a5,40(sp)
	j	.L574
.L576:
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,16(sp)
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L574:
	ld	a5,8(sp)
	beq	a5,zero,.L575
	ld	a5,16(sp)
	lbu	a4,0(a5)
	ld	a5,40(sp)
	sb	a4,0(a5)
	ld	a5,40(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L576
.L575:
	ld	a5,8(sp)
	bne	a5,zero,.L577
	ld	a5,40(sp)
	sb	zero,0(a5)
.L577:
	ld	a5,24(sp)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	1
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	sd	zero,24(sp)
	j	.L581
.L586:
	nop
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L581:
	ld	a4,24(sp)
	ld	a5,0(sp)
	bgeu	a4,a5,.L582
	ld	a4,8(sp)
	ld	a5,24(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L586
.L582:
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	1
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	j	.L589
.L593:
	ld	a5,0(sp)
	sd	a5,24(sp)
	j	.L590
.L592:
	ld	a5,24(sp)
	addi	a4,a5,1
	sd	a4,24(sp)
	lbu	a4,0(a5)
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L590
	ld	a5,8(sp)
	j	.L591
.L590:
	ld	a5,24(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L592
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L589:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L593
	li	a5,0
.L591:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	1
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a4,12(sp)
	sd	zero,24(sp)
.L597:
	lbu	a4,0(a5)
	sext.w	a4,a4
	lw	a3,12(sp)
	sext.w	a3,a3
	bne	a3,a4,.L596
	sd	a5,24(sp)
.L596:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L597
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	1
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a0,0(sp)
	call	strlen
	sd	a0,16(sp)
	ld	a5,16(sp)
	bne	a5,zero,.L603
	ld	a5,8(sp)
	j	.L602
.L605:
	ld	a2,16(sp)
	ld	a1,0(sp)
	ld	a0,24(sp)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L604
	ld	a5,24(sp)
	j	.L602
.L604:
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L603:
	ld	a5,0(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,24(sp)
	call	strchr
	sd	a0,24(sp)
	ld	a5,24(sp)
	bne	a5,zero,.L605
	li	a5,0
.L602:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	1
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fsd	fa1,0(sp)
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L615
	j	.L608
.L615:
	fld	fa5,0(sp)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L610
.L608:
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L616
	j	.L611
.L616:
	fld	fa5,0(sp)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L610
	j	.L611
.L610:
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	j	.L614
.L611:
	fld	fa5,8(sp)
.L614:
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	1
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	sd	a3,0(sp)
	ld	a4,16(sp)
	ld	a5,0(sp)
	sub	a5,a4,a5
	ld	a4,24(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	ld	a5,0(sp)
	bne	a5,zero,.L621
	ld	a5,24(sp)
	j	.L622
.L621:
	ld	a4,16(sp)
	ld	a5,0(sp)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L623
	li	a5,0
	j	.L622
.L623:
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L624
.L626:
	ld	a5,40(sp)
	lbu	a4,0(a5)
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L625
	ld	a5,40(sp)
	addi	a4,a5,1
	ld	a5,8(sp)
	addi	a3,a5,1
	ld	a5,0(sp)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L625
	ld	a5,40(sp)
	j	.L622
.L625:
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
.L624:
	ld	a4,40(sp)
	ld	a5,32(sp)
	bleu	a4,a5,.L626
	li	a5,0
.L622:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	1
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a2,8(sp)
	ld	a1,16(sp)
	ld	a0,24(sp)
	call	memcpy
	mv	a4,a0
	ld	a5,8(sp)
	add	a5,a4,a5
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	1
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,8(sp)
	sd	a0,0(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L644
	j	.L632
.L644:
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	fsd	fa5,8(sp)
	li	a5,1
	sw	a5,28(sp)
.L632:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L636
	j	.L647
.L637:
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
	fld	fa4,8(sp)
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,8(sp)
.L636:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L637
	j	.L638
.L647:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L646
	j	.L638
.L646:
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L638
	j	.L640
.L641:
	lw	a5,24(sp)
	addiw	a5,a5,-1
	sw	a5,24(sp)
	fld	fa5,8(sp)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,8(sp)
.L640:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L641
.L638:
	ld	a5,0(sp)
	lw	a4,24(sp)
	sw	a4,0(a5)
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L642
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	fsd	fa5,8(sp)
.L642:
	fld	fa5,8(sp)
	fmv.d	fa0,fa5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	sd	zero,24(sp)
	ld	a5,8(sp)
	sd	a5,16(sp)
	j	.L651
.L653:
	ld	a5,16(sp)
	andi	a5,a5,1
	beq	a5,zero,.L652
	ld	a4,24(sp)
	ld	a5,0(sp)
	add	a5,a4,a5
	sd	a5,24(sp)
.L652:
	ld	a5,0(sp)
	slli	a5,a5,1
	sd	a5,0(sp)
	ld	a5,16(sp)
	srli	a5,a5,1
	sd	a5,16(sp)
.L651:
	ld	a5,16(sp)
	bne	a5,zero,.L653
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	1
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sd	a2,0(sp)
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	li	a5,1
	sw	a5,28(sp)
	sw	zero,24(sp)
	j	.L657
.L659:
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,28(sp)
	slliw	a5,a5,1
	sw	a5,28(sp)
.L657:
	lw	a5,8(sp)
	mv	a4,a5
	lw	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L660
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L660
	lw	a5,8(sp)
	bge	a5,zero,.L659
	j	.L660
.L662:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L661
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	subw	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,24(sp)
	mv	a4,a5
	lw	a5,28(sp)
	or	a5,a4,a5
	sw	a5,24(sp)
.L661:
	lw	a5,28(sp)
	srliw	a5,a5,1
	sw	a5,28(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L660:
	lw	a5,28(sp)
	sext.w	a5,a5
	bne	a5,zero,.L662
	ld	a5,0(sp)
	beq	a5,zero,.L663
	lw	a5,12(sp)
	j	.L664
.L663:
	lw	a5,24(sp)
.L664:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	mv	a5,a0
	sb	a0,15(sp)
	lbu	a5,15(sp)
	andi	a5,a5,0xff
	bne	a5,zero,.L667
	li	a5,7
	j	.L668
.L667:
	lbu	a5,15(sp)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	addi	a5,a5,-32
	sw	a5,28(sp)
	lw	a5,28(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
.L668:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	1
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	ld	a5,8(sp)
	bge	a5,zero,.L671
	ld	a5,8(sp)
	not	a5,a5
	sd	a5,8(sp)
.L671:
	ld	a5,8(sp)
	bne	a5,zero,.L672
	li	a5,63
	j	.L673
.L672:
	ld	a5,8(sp)
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,28(sp)
	lw	a5,28(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
.L673:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	1
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	sw	zero,28(sp)
	j	.L676
.L678:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L677
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,8(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L677:
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
.L676:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L678
	lw	a5,28(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	1
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,3
	sw	a5,52(sp)
	lw	a5,12(sp)
	andi	a5,a5,-8
	sw	a5,56(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	ld	a4,40(sp)
	ld	a5,32(sp)
	bltu	a4,a5,.L682
	lwu	a5,12(sp)
	ld	a4,32(sp)
	add	a5,a4,a5
	ld	a4,40(sp)
	bleu	a4,a5,.L689
.L682:
	sw	zero,60(sp)
	j	.L684
.L685:
	lwu	a5,60(sp)
	slli	a5,a5,3
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,60(sp)
	slli	a5,a5,3
	ld	a3,24(sp)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,60(sp)
	addiw	a5,a5,1
	sw	a5,60(sp)
.L684:
	lw	a5,60(sp)
	mv	a4,a5
	lw	a5,52(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L685
	j	.L686
.L687:
	lwu	a5,56(sp)
	ld	a4,32(sp)
	add	a4,a4,a5
	lwu	a5,56(sp)
	ld	a3,40(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,56(sp)
	addiw	a5,a5,1
	sw	a5,56(sp)
.L686:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,56(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L687
	j	.L688
.L690:
	lwu	a5,12(sp)
	ld	a4,32(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,40(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L689:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L690
	nop
.L688:
	nop
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	1
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,56(sp)
	ld	a5,24(sp)
	sd	a5,48(sp)
	ld	a5,16(sp)
	sd	a5,40(sp)
	ld	a4,48(sp)
	ld	a5,40(sp)
	bltu	a4,a5,.L693
	lwu	a5,12(sp)
	ld	a4,40(sp)
	add	a5,a4,a5
	ld	a4,48(sp)
	bleu	a4,a5,.L699
.L693:
	sw	zero,60(sp)
	j	.L695
.L696:
	lwu	a5,60(sp)
	slli	a5,a5,1
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,60(sp)
	slli	a5,a5,1
	ld	a3,24(sp)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,60(sp)
	addiw	a5,a5,1
	sw	a5,60(sp)
.L695:
	lw	a5,60(sp)
	mv	a4,a5
	lw	a5,56(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L696
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L698
	lw	a5,12(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,40(sp)
	add	a4,a4,a5
	lw	a5,12(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,48(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L698
.L700:
	lwu	a5,12(sp)
	ld	a4,40(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,48(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L699:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L700
	nop
.L698:
	nop
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,2
	sw	a5,52(sp)
	lw	a5,12(sp)
	andi	a5,a5,-4
	sw	a5,56(sp)
	ld	a5,24(sp)
	sd	a5,40(sp)
	ld	a5,16(sp)
	sd	a5,32(sp)
	ld	a4,40(sp)
	ld	a5,32(sp)
	bltu	a4,a5,.L703
	lwu	a5,12(sp)
	ld	a4,32(sp)
	add	a5,a4,a5
	ld	a4,40(sp)
	bleu	a4,a5,.L710
.L703:
	sw	zero,60(sp)
	j	.L705
.L706:
	lwu	a5,60(sp)
	slli	a5,a5,2
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,60(sp)
	slli	a5,a5,2
	ld	a3,24(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,60(sp)
	addiw	a5,a5,1
	sw	a5,60(sp)
.L705:
	lw	a5,60(sp)
	mv	a4,a5
	lw	a5,52(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L706
	j	.L707
.L708:
	lwu	a5,56(sp)
	ld	a4,32(sp)
	add	a4,a4,a5
	lwu	a5,56(sp)
	ld	a3,40(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,56(sp)
	addiw	a5,a5,1
	sw	a5,56(sp)
.L707:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,56(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L708
	j	.L709
.L711:
	lwu	a5,12(sp)
	ld	a4,32(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,40(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L710:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L711
	nop
.L709:
	nop
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	1
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	remw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	1
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	fcvt.d.wu	fa5,a5
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	1
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	fcvt.s.wu	fa5,a5
	fmv.s	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	1
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	fcvt.d.lu	fa5,a5
	fmv.d	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	1
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	fcvt.s.lu	fa5,a5
	fmv.s	fa0,fa5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	1
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	remuw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	1
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sh	a0,14(sp)
	sw	zero,28(sp)
	j	.L732
.L735:
	lhu	a5,14(sp)
	sext.w	a4,a5
	li	a5,15
	lw	a3,28(sp)
	subw	a5,a5,a3
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L737
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L732:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L735
	j	.L734
.L737:
	nop
.L734:
	lw	a5,28(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	1
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sh	a0,14(sp)
	sw	zero,28(sp)
	j	.L740
.L743:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L745
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L740:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L743
	j	.L742
.L745:
	nop
.L742:
	lw	a5,28(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	1
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	flw	fa4,12(sp)
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fge.s	a5,fa4,fa5
	bne	a5,zero,.L751
	j	.L752
.L751:
	flw	fa4,12(sp)
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fsub.s	fa5,fa4,fa5
	fcvt.l.s a4,fa5,rtz
	li	a5,32768
	add	a5,a4,a5
	j	.L750
.L752:
	flw	fa5,12(sp)
	fcvt.l.s a5,fa5,rtz
.L750:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	1
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sh	a0,14(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	j	.L755
.L757:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L756
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
.L756:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L755:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L757
	lw	a5,24(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sh	a0,14(sp)
	sw	zero,24(sp)
	sw	zero,28(sp)
	j	.L761
.L763:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L762
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
.L762:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L761:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L763
	lw	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	sw	zero,28(sp)
	j	.L767
.L769:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L768
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,8(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L768:
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
.L767:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L769
	lw	a5,28(sp)
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	sw	zero,28(sp)
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L775
	li	a5,0
	j	.L774
.L777:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L776
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,12(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L776:
	lw	a5,12(sp)
	slliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L775:
	lw	a5,8(sp)
	sext.w	a5,a5
	bne	a5,zero,.L777
	lw	a5,28(sp)
.L774:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	1
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	mv	a5,a2
	sw	a2,4(sp)
	li	a5,1
	sw	a5,28(sp)
	sw	zero,24(sp)
	j	.L780
.L782:
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,28(sp)
	slliw	a5,a5,1
	sw	a5,28(sp)
.L780:
	lw	a5,8(sp)
	mv	a4,a5
	lw	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L783
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L783
	lw	a5,8(sp)
	bge	a5,zero,.L782
	j	.L783
.L785:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L784
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	subw	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,24(sp)
	mv	a4,a5
	lw	a5,28(sp)
	or	a5,a4,a5
	sw	a5,24(sp)
.L784:
	lw	a5,28(sp)
	srliw	a5,a5,1
	sw	a5,28(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L783:
	lw	a5,28(sp)
	sext.w	a5,a5
	bne	a5,zero,.L785
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L786
	lw	a5,12(sp)
	j	.L787
.L786:
	lw	a5,24(sp)
.L787:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	1
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsw	fa0,12(sp)
	fsw	fa1,8(sp)
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L795
	j	.L797
.L795:
	li	a5,-1
	j	.L792
.L797:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L796
	j	.L798
.L796:
	li	a5,1
	j	.L792
.L798:
	li	a5,0
.L792:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	1
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,8(sp)
	fsd	fa1,0(sp)
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L806
	j	.L808
.L806:
	li	a5,-1
	j	.L803
.L808:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L807
	j	.L809
.L807:
	li	a5,1
	j	.L803
.L809:
	li	a5,0
.L803:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	1
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a4,8(sp)
	ld	a5,0(sp)
	mul	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	1
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a4,8(sp)
	ld	a5,0(sp)
	mul	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	1
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a4,a1
	sw	a0,12(sp)
	mv	a5,a1
	sw	a1,8(sp)
	sw	zero,24(sp)
	sw	zero,20(sp)
	lw	a5,8(sp)
	sext.w	a5,a5
	bge	a5,zero,.L818
	lw	a5,8(sp)
	negw	a5,a5
	sw	a5,8(sp)
	li	a5,1
	sw	a5,24(sp)
.L818:
	sb	zero,31(sp)
	j	.L819
.L822:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L820
	lw	a5,20(sp)
	mv	a4,a5
	lw	a5,12(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
.L820:
	lw	a5,12(sp)
	slliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lbu	a5,31(sp)
	addiw	a5,a5,1
	sb	a5,31(sp)
.L819:
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L821
	lbu	a5,31(sp)
	andi	a4,a5,0xff
	li	a5,31
	bleu	a4,a5,.L822
.L821:
	lw	a5,24(sp)
	sext.w	a5,a5
	beq	a5,zero,.L823
	lw	a5,20(sp)
	negw	a5,a5
	sext.w	a5,a5
	j	.L824
.L823:
	lw	a5,20(sp)
.L824:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	sw	zero,28(sp)
	ld	a5,8(sp)
	bge	a5,zero,.L828
	ld	a5,8(sp)
	neg	a5,a5
	sd	a5,8(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,28(sp)
.L828:
	ld	a5,0(sp)
	bge	a5,zero,.L829
	ld	a5,0(sp)
	neg	a5,a5
	sd	a5,0(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,28(sp)
.L829:
	ld	a5,8(sp)
	sext.w	a5,a5
	ld	a4,0(sp)
	sext.w	a4,a4
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,16(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L830
	ld	a5,16(sp)
	neg	a5,a5
	sd	a5,16(sp)
.L830:
	ld	a5,16(sp)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	sw	zero,28(sp)
	ld	a5,8(sp)
	bge	a5,zero,.L834
	ld	a5,8(sp)
	neg	a5,a5
	sd	a5,8(sp)
	li	a5,1
	sw	a5,28(sp)
.L834:
	ld	a5,0(sp)
	bge	a5,zero,.L835
	ld	a5,0(sp)
	neg	a5,a5
	sd	a5,0(sp)
.L835:
	ld	a5,8(sp)
	sext.w	a5,a5
	ld	a4,0(sp)
	sext.w	a4,a4
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,16(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L836
	ld	a5,16(sp)
	neg	a5,a5
	sd	a5,16(sp)
.L836:
	ld	a5,16(sp)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sh	a0,14(sp)
	mv	a5,a1
	sh	a1,12(sp)
	mv	a5,a2
	sw	a2,8(sp)
	li	a5,1
	sh	a5,30(sp)
	sh	zero,28(sp)
	j	.L840
.L842:
	lhu	a5,12(sp)
	slliw	a5,a5,1
	sh	a5,12(sp)
	lhu	a5,30(sp)
	slliw	a5,a5,1
	sh	a5,30(sp)
.L840:
	lhu	a4,12(sp)
	lhu	a5,14(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L843
	lhu	a5,30(sp)
	sext.w	a5,a5
	beq	a5,zero,.L843
	lh	a5,12(sp)
	bge	a5,zero,.L842
	j	.L843
.L845:
	lhu	a4,14(sp)
	lhu	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L844
	lhu	a5,14(sp)
	mv	a4,a5
	lhu	a5,12(sp)
	subw	a5,a4,a5
	sh	a5,14(sp)
	lhu	a5,28(sp)
	mv	a4,a5
	lhu	a5,30(sp)
	or	a5,a4,a5
	sh	a5,28(sp)
.L844:
	lhu	a5,30(sp)
	srliw	a5,a5,1
	sh	a5,30(sp)
	lhu	a5,12(sp)
	srliw	a5,a5,1
	sh	a5,12(sp)
.L843:
	lhu	a5,30(sp)
	sext.w	a5,a5
	bne	a5,zero,.L845
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L846
	lhu	a5,14(sp)
	j	.L847
.L846:
	lhu	a5,28(sp)
.L847:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	li	a5,1
	sd	a5,40(sp)
	sd	zero,32(sp)
	j	.L850
.L852:
	ld	a5,16(sp)
	slli	a5,a5,1
	sd	a5,16(sp)
	ld	a5,40(sp)
	slli	a5,a5,1
	sd	a5,40(sp)
.L850:
	ld	a4,16(sp)
	ld	a5,24(sp)
	bgeu	a4,a5,.L853
	ld	a5,40(sp)
	beq	a5,zero,.L853
	ld	a4,16(sp)
	li	a5,1
	slli	a5,a5,31
	and	a5,a4,a5
	beq	a5,zero,.L852
	j	.L853
.L855:
	ld	a4,24(sp)
	ld	a5,16(sp)
	bltu	a4,a5,.L854
	ld	a4,24(sp)
	ld	a5,16(sp)
	sub	a5,a4,a5
	sd	a5,24(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	or	a5,a4,a5
	sd	a5,32(sp)
.L854:
	ld	a5,40(sp)
	srli	a5,a5,1
	sd	a5,40(sp)
	ld	a5,16(sp)
	srli	a5,a5,1
	sd	a5,16(sp)
.L853:
	ld	a5,40(sp)
	bne	a5,zero,.L855
	lw	a5,12(sp)
	sext.w	a5,a5
	beq	a5,zero,.L856
	ld	a5,24(sp)
	j	.L857
.L856:
	ld	a5,32(sp)
.L857:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	li	a5,32
	sw	a5,44(sp)
	ld	a5,8(sp)
	sd	a5,32(sp)
	lw	a5,4(sp)
	mv	a4,a5
	lw	a5,44(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L860
	sw	zero,24(sp)
	lw	a5,32(sp)
	lw	a4,4(sp)
	mv	a3,a4
	lw	a4,44(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,28(sp)
	j	.L861
.L860:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L862
	ld	a5,8(sp)
	j	.L864
.L862:
	lw	a5,32(sp)
	lw	a4,4(sp)
	sllw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,36(sp)
	mv	a4,a5
	lw	a5,4(sp)
	sllw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,32(sp)
	lw	a3,44(sp)
	mv	a2,a3
	lw	a3,4(sp)
	subw	a3,a2,a3
	sext.w	a3,a3
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,28(sp)
.L861:
	ld	a5,24(sp)
.L864:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	1
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	a0,16(sp)
	sd	a1,24(sp)
	mv	a5,a2
	sw	a2,12(sp)
	li	a5,64
	sw	a5,76(sp)
	ld	a5,16(sp)
	sd	a5,48(sp)
	ld	a5,24(sp)
	sd	a5,56(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,76(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L867
	sd	zero,32(sp)
	ld	a5,48(sp)
	lw	a4,12(sp)
	mv	a3,a4
	lw	a4,76(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	sll	a5,a5,a4
	sd	a5,40(sp)
	j	.L868
.L867:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L869
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L871
.L869:
	ld	a5,48(sp)
	lw	a4,12(sp)
	sll	a5,a5,a4
	sd	a5,32(sp)
	ld	a5,56(sp)
	mv	a4,a5
	lw	a5,12(sp)
	sll	a4,a4,a5
	ld	a5,48(sp)
	lw	a3,76(sp)
	mv	a2,a3
	lw	a3,12(sp)
	subw	a3,a2,a3
	sext.w	a3,a3
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,40(sp)
.L868:
	ld	a4,32(sp)
	ld	a5,40(sp)
.L871:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	1
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	li	a5,32
	sw	a5,44(sp)
	ld	a5,8(sp)
	sd	a5,32(sp)
	lw	a5,4(sp)
	mv	a4,a5
	lw	a5,44(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L874
	lw	a4,36(sp)
	lw	a5,44(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,28(sp)
	lw	a4,36(sp)
	lw	a5,4(sp)
	mv	a3,a5
	lw	a5,44(sp)
	subw	a5,a3,a5
	sext.w	a5,a5
	sraw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	j	.L875
.L874:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L876
	ld	a5,8(sp)
	j	.L878
.L876:
	lw	a5,36(sp)
	lw	a4,4(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,28(sp)
	lw	a5,36(sp)
	mv	a4,a5
	lw	a5,44(sp)
	mv	a3,a5
	lw	a5,4(sp)
	subw	a5,a3,a5
	sext.w	a5,a5
	sllw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,32(sp)
	lw	a3,4(sp)
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
.L875:
	ld	a5,24(sp)
.L878:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	1
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	a0,16(sp)
	sd	a1,24(sp)
	mv	a5,a2
	sw	a2,12(sp)
	li	a5,64
	sw	a5,76(sp)
	ld	a5,16(sp)
	sd	a5,48(sp)
	ld	a5,24(sp)
	sd	a5,56(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,76(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L881
	ld	a4,56(sp)
	lw	a5,76(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	sra	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,56(sp)
	lw	a5,12(sp)
	mv	a3,a5
	lw	a5,76(sp)
	subw	a5,a3,a5
	sext.w	a5,a5
	sra	a5,a4,a5
	sd	a5,32(sp)
	j	.L882
.L881:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L883
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L885
.L883:
	ld	a5,56(sp)
	lw	a4,12(sp)
	sra	a5,a5,a4
	sd	a5,40(sp)
	ld	a5,56(sp)
	mv	a4,a5
	lw	a5,76(sp)
	mv	a3,a5
	lw	a5,12(sp)
	subw	a5,a3,a5
	sext.w	a5,a5
	sll	a4,a4,a5
	ld	a5,48(sp)
	lw	a3,12(sp)
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,32(sp)
.L882:
	ld	a4,32(sp)
	ld	a5,40(sp)
.L885:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	srli	a4,a5,56
	ld	a5,8(sp)
	srli	a3,a5,40
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	srli	a3,a5,24
	li	a5,16711680
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	srli	a3,a5,8
	li	a5,255
	slli	a5,a5,24
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	slli	a3,a5,8
	li	a5,255
	slli	a5,a5,32
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	slli	a3,a5,24
	li	a5,255
	slli	a5,a5,40
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	slli	a3,a5,40
	li	a5,255
	slli	a5,a5,48
	and	a5,a3,a5
	or	a4,a4,a5
	ld	a5,8(sp)
	slli	a5,a5,56
	or	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	1
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,24
	sext.w	a4,a5
	lw	a5,12(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	mv	a3,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,12(sp)
	slliw	a5,a5,8
	sext.w	a5,a5
	mv	a3,a5
	li	a5,16711680
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lw	a5,12(sp)
	slliw	a5,a5,24
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	1
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sw	a5,28(sp)
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,65536
	bgeu	a4,a5,.L894
	li	a5,16
	j	.L895
.L894:
	li	a5,0
.L895:
	sw	a5,24(sp)
	li	a5,16
	lw	a4,24(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	sw	a5,20(sp)
	lw	a5,28(sp)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L896
	li	a5,8
	j	.L897
.L896:
	li	a5,0
.L897:
	sw	a5,24(sp)
	li	a5,8
	lw	a4,24(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,240
	sext.w	a5,a5
	bne	a5,zero,.L898
	li	a5,4
	j	.L899
.L898:
	li	a5,0
.L899:
	sw	a5,24(sp)
	li	a5,4
	lw	a4,24(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,12
	sext.w	a5,a5
	bne	a5,zero,.L900
	li	a5,2
	j	.L901
.L900:
	li	a5,0
.L901:
	sw	a5,24(sp)
	li	a5,2
	lw	a4,24(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,2
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	lw	a3,28(sp)
	subw	a5,a5,a3
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	1
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,24(sp)
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	negw	a5,a5
	sext.w	a5,a5
	sd	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,40(sp)
	not	a5,a5
	and	a5,a4,a5
	mv	a3,a5
	ld	a4,16(sp)
	ld	a5,40(sp)
	and	a5,a4,a5
	or	a5,a3,a5
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	sext.w	a4,a5
	ld	a5,40(sp)
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	1
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	lw	a4,28(sp)
	lw	a5,20(sp)
	bge	a4,a5,.L908
	li	a5,0
	j	.L913
.L908:
	lw	a4,28(sp)
	lw	a5,20(sp)
	ble	a4,a5,.L910
	li	a5,2
	j	.L913
.L910:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bgeu	a4,a5,.L911
	li	a5,0
	j	.L913
.L911:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bleu	a4,a5,.L912
	li	a5,2
	j	.L913
.L912:
	li	a5,1
.L913:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	1
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a1,0(sp)
	ld	a0,8(sp)
	call	__cmpdi2
	mv	a5,a0
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	1
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,0(sp)
	sd	a3,8(sp)
	ld	a5,16(sp)
	sd	a5,48(sp)
	ld	a5,24(sp)
	sd	a5,56(sp)
	ld	a5,0(sp)
	sd	a5,32(sp)
	ld	a5,8(sp)
	sd	a5,40(sp)
	ld	a4,56(sp)
	ld	a5,40(sp)
	bge	a4,a5,.L919
	li	a5,0
	j	.L924
.L919:
	ld	a4,56(sp)
	ld	a5,40(sp)
	ble	a4,a5,.L921
	li	a5,2
	j	.L924
.L921:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bgeu	a4,a5,.L922
	li	a5,0
	j	.L924
.L922:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bleu	a4,a5,.L923
	li	a5,2
	j	.L924
.L923:
	li	a5,1
.L924:
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	1
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sw	a5,28(sp)
	lw	a5,28(sp)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a5,a5
	bne	a5,zero,.L927
	li	a5,16
	j	.L928
.L927:
	li	a5,0
.L928:
	sw	a5,24(sp)
	lw	a5,24(sp)
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,255
	sext.w	a5,a5
	bne	a5,zero,.L929
	li	a5,8
	j	.L930
.L929:
	li	a5,0
.L930:
	sw	a5,24(sp)
	lw	a5,24(sp)
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	bne	a5,zero,.L931
	li	a5,4
	j	.L932
.L931:
	li	a5,0
.L932:
	sw	a5,24(sp)
	lw	a5,24(sp)
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	andi	a5,a5,3
	sext.w	a5,a5
	bne	a5,zero,.L933
	li	a5,2
	j	.L934
.L933:
	li	a5,0
.L934:
	sw	a5,24(sp)
	lw	a5,24(sp)
	lw	a4,28(sp)
	srlw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	andi	a5,a5,3
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,28(sp)
	not	a5,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a4,a5
	lw	a5,28(sp)
	srliw	a5,a5,1
	sext.w	a5,a5
	li	a3,2
	subw	a5,a3,a5
	sext.w	a5,a5
	negw	a4,a4
	and	a5,a5,a4
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	1
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,16(sp)
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	negw	a5,a5
	sext.w	a5,a5
	sd	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,40(sp)
	and	a5,a4,a5
	mv	a3,a5
	ld	a4,16(sp)
	ld	a5,40(sp)
	not	a5,a5
	and	a5,a4,a5
	or	a5,a3,a5
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a4,a5
	ld	a5,40(sp)
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	1
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,16(sp)
	bne	a5,zero,.L941
	ld	a5,24(sp)
	bne	a5,zero,.L942
	li	a5,0
	j	.L944
.L942:
	ld	a5,24(sp)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,65
	sext.w	a5,a5
	j	.L944
.L941:
	ld	a5,16(sp)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
.L944:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	1
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	li	a5,32
	sw	a5,44(sp)
	ld	a5,8(sp)
	sd	a5,32(sp)
	lw	a5,4(sp)
	mv	a4,a5
	lw	a5,44(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L947
	sw	zero,28(sp)
	lw	a5,36(sp)
	lw	a4,4(sp)
	mv	a3,a4
	lw	a4,44(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	srlw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,24(sp)
	j	.L948
.L947:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L949
	ld	a5,8(sp)
	j	.L951
.L949:
	lw	a5,36(sp)
	lw	a4,4(sp)
	srlw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,28(sp)
	lw	a5,36(sp)
	lw	a4,44(sp)
	mv	a3,a4
	lw	a4,4(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	sllw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,32(sp)
	lw	a3,4(sp)
	srlw	a5,a5,a3
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
.L948:
	ld	a5,24(sp)
.L951:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	1
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	a0,16(sp)
	sd	a1,24(sp)
	mv	a5,a2
	sw	a2,12(sp)
	li	a5,64
	sw	a5,76(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	sd	a4,48(sp)
	sd	a5,56(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,76(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L954
	sd	zero,40(sp)
	ld	a5,56(sp)
	lw	a4,12(sp)
	mv	a3,a4
	lw	a4,76(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	srl	a5,a5,a4
	sd	a5,32(sp)
	j	.L955
.L954:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L956
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L958
.L956:
	ld	a5,56(sp)
	lw	a4,12(sp)
	srl	a5,a5,a4
	sd	a5,40(sp)
	ld	a5,56(sp)
	lw	a4,76(sp)
	mv	a3,a4
	lw	a4,12(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	sll	a4,a5,a4
	ld	a5,48(sp)
	lw	a3,12(sp)
	srl	a5,a5,a3
	or	a5,a4,a5
	sd	a5,32(sp)
.L955:
	ld	a2,32(sp)
	ld	a3,40(sp)
	mv	a4,a2
	mv	a5,a3
.L958:
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	1
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	mv	a5,a0
	mv	a4,a1
	sw	a5,12(sp)
	mv	a5,a4
	sw	a5,8(sp)
	li	a5,16
	sw	a5,44(sp)
	lw	a5,44(sp)
	mv	a4,a5
	li	a5,-1
	srlw	a5,a5,a4
	sw	a5,40(sp)
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,40(sp)
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,8(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	lw	a4,44(sp)
	srlw	a5,a5,a4
	sw	a5,36(sp)
	lw	a5,24(sp)
	lw	a4,40(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,44(sp)
	lw	a4,12(sp)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,8(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,36(sp)
	addw	a5,a4,a5
	sw	a5,36(sp)
	lw	a4,24(sp)
	lw	a5,36(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,44(sp)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,44(sp)
	lw	a4,36(sp)
	srlw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,28(sp)
	lw	a5,24(sp)
	lw	a4,44(sp)
	srlw	a5,a5,a4
	sw	a5,36(sp)
	lw	a5,24(sp)
	lw	a4,40(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,44(sp)
	lw	a4,8(sp)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,12(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,36(sp)
	addw	a5,a4,a5
	sw	a5,36(sp)
	lw	a4,24(sp)
	lw	a5,36(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,44(sp)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,24(sp)
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,44(sp)
	lw	a3,36(sp)
	srlw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	mv	a3,a5
	lw	a5,44(sp)
	lw	a4,12(sp)
	srlw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,44(sp)
	lw	a2,8(sp)
	srlw	a5,a2,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a5,a5
	sw	a5,28(sp)
	ld	a5,24(sp)
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	1
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,40(sp)
	ld	a5,0(sp)
	sd	a5,32(sp)
	lw	a5,40(sp)
	lw	a4,32(sp)
	mv	a1,a4
	mv	a0,a5
	call	__muldsi3
	mv	a5,a0
	sd	a5,24(sp)
	lw	a5,28(sp)
	mv	a3,a5
	lw	a5,44(sp)
	mv	a4,a5
	lw	a5,32(sp)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,40(sp)
	lw	a2,36(sp)
	mulw	a5,a5,a2
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a5,a5
	sw	a5,28(sp)
	ld	a5,24(sp)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	1
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,8(sp)
	sd	a1,0(sp)
	li	a5,32
	sw	a5,60(sp)
	lw	a5,60(sp)
	mv	a4,a5
	li	a5,-1
	srl	a5,a5,a4
	sd	a5,48(sp)
	ld	a4,8(sp)
	ld	a5,48(sp)
	and	a4,a4,a5
	ld	a3,0(sp)
	ld	a5,48(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	sd	a5,16(sp)
	ld	a5,16(sp)
	lw	a4,60(sp)
	srl	a5,a5,a4
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a5,48(sp)
	and	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,60(sp)
	mv	a4,a5
	ld	a5,8(sp)
	srl	a4,a5,a4
	ld	a3,0(sp)
	ld	a5,48(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,40(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a3,40(sp)
	ld	a5,48(sp)
	and	a5,a3,a5
	lw	a3,60(sp)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,60(sp)
	mv	a4,a5
	ld	a5,40(sp)
	srl	a5,a5,a4
	sd	a5,24(sp)
	ld	a5,16(sp)
	lw	a4,60(sp)
	srl	a5,a5,a4
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a5,48(sp)
	and	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,60(sp)
	mv	a4,a5
	ld	a5,0(sp)
	srl	a4,a5,a4
	ld	a3,8(sp)
	ld	a5,48(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,40(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a3,40(sp)
	ld	a5,48(sp)
	and	a5,a3,a5
	lw	a3,60(sp)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,16(sp)
	ld	a5,24(sp)
	mv	a4,a5
	lw	a5,60(sp)
	mv	a3,a5
	ld	a5,40(sp)
	srl	a5,a5,a3
	add	a5,a4,a5
	sd	a5,24(sp)
	ld	a5,24(sp)
	mv	a3,a5
	lw	a5,60(sp)
	mv	a4,a5
	ld	a5,8(sp)
	srl	a4,a5,a4
	lw	a5,60(sp)
	mv	a2,a5
	ld	a5,0(sp)
	srl	a5,a5,a2
	mul	a5,a4,a5
	add	a5,a3,a5
	sd	a5,24(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	1
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	.cfi_offset 1, -8
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,0(sp)
	sd	a3,8(sp)
	ld	a5,16(sp)
	sd	a5,64(sp)
	ld	a5,24(sp)
	sd	a5,72(sp)
	ld	a5,0(sp)
	sd	a5,48(sp)
	ld	a5,8(sp)
	sd	a5,56(sp)
	ld	a5,64(sp)
	ld	a4,48(sp)
	mv	a1,a4
	mv	a0,a5
	call	__mulddi3
	mv	a4,a0
	mv	a5,a1
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a5,40(sp)
	mv	a3,a5
	ld	a5,72(sp)
	mv	a4,a5
	ld	a5,48(sp)
	mul	a4,a4,a5
	ld	a5,64(sp)
	ld	a2,56(sp)
	mul	a5,a5,a2
	add	a5,a4,a5
	add	a5,a3,a5
	sd	a5,40(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,88(sp)
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	1
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	neg	a5,a5
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	1
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a2,0(sp)
	ld	a3,8(sp)
	li	a0,0
	li	a1,0
	sub	a4,a0,a2
	mv	a6,a4
	sgtu	a6,a6,a0
	slli	a6,a6,32
	srli	a6,a6,32
	sub	a5,a1,a3
	sub	a3,a5,a6
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	1
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,16(sp)
	lw	a5,20(sp)
	mv	a4,a5
	lw	a5,16(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	1
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a5,0(sp)
	sd	a5,32(sp)
	ld	a5,8(sp)
	sd	a5,40(sp)
	ld	a5,40(sp)
	mv	a4,a5
	ld	a5,32(sp)
	xor	a5,a4,a5
	sd	a5,24(sp)
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,24(sp)
	xor	a5,a4,a5
	sw	a5,60(sp)
	lw	a5,60(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,60(sp)
	xor	a5,a4,a5
	sw	a5,60(sp)
	lw	a5,60(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,60(sp)
	xor	a5,a4,a5
	sw	a5,60(sp)
	lw	a5,60(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,60(sp)
	xor	a5,a4,a5
	sw	a5,60(sp)
	lw	a5,60(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	1
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,28(sp)
	xor	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	1
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,24(sp)
	srli	a4,a5,1
	lui	a5,%hi(.LC15)
	ld	a5,%lo(.LC15)(a5)
	and	a5,a4,a5
	ld	a4,24(sp)
	sub	a5,a4,a5
	sd	a5,24(sp)
	ld	a5,24(sp)
	srli	a4,a5,2
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a4,a4,a5
	ld	a3,24(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a5,a3,a5
	add	a5,a4,a5
	sd	a5,24(sp)
	ld	a5,24(sp)
	srli	a4,a5,4
	ld	a5,24(sp)
	add	a4,a4,a5
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a4,a5
	sd	a5,24(sp)
	ld	a5,24(sp)
	sext.w	a4,a5
	ld	a5,24(sp)
	srli	a5,a5,32
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	1
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	sext.w	a5,a5
	lw	a4,28(sp)
	subw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,28(sp)
	mv	a3,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,28(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,252645376
	addi	a5,a5,-241
	and	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,28(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,28(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,63
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	1
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	sd	s1,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -16
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a1,0(sp)
	sd	a1,32(sp)
	ld	a1,8(sp)
	sd	a1,40(sp)
	ld	a1,40(sp)
	slli	a1,a1,63
	ld	a0,32(sp)
	srli	a4,a0,1
	or	a4,a1,a4
	ld	a1,40(sp)
	srli	a5,a1,1
	lui	a1,%hi(.LC15)
	ld	a1,%lo(.LC15)(a1)
	and	t5,a4,a1
	lui	a1,%hi(.LC15)
	ld	a1,%lo(.LC15)(a1)
	and	t6,a5,a1
	ld	a0,32(sp)
	ld	a1,40(sp)
	sub	a4,a0,t5
	mv	t0,a4
	sgtu	t0,t0,a0
	slli	t0,t0,32
	srli	t0,t0,32
	sub	a5,a1,t6
	sub	a1,a5,t0
	mv	a5,a1
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a5,40(sp)
	slli	a5,a5,62
	ld	a4,32(sp)
	srli	a6,a4,2
	or	a6,a5,a6
	ld	a5,40(sp)
	srli	a7,a5,2
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t1,a6,a5
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t2,a7,a5
	ld	a4,32(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t3,a4,a5
	ld	a4,40(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	t4,a4,a5
	add	a4,t1,t3
	mv	a1,a4
	sltu	a1,a1,t1
	slli	a1,a1,32
	srli	a1,a1,32
	add	a5,t2,t4
	add	a1,a1,a5
	mv	a5,a1
	sd	a4,32(sp)
	sd	a5,40(sp)
	ld	a5,40(sp)
	slli	a5,a5,60
	ld	a4,32(sp)
	srli	a2,a4,4
	or	a2,a5,a2
	ld	a5,40(sp)
	srli	a3,a5,4
	ld	a0,32(sp)
	ld	a1,40(sp)
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	slli	a6,a6,32
	srli	a6,a6,32
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a2,a5
	sd	a5,32(sp)
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a3,a5
	sd	a5,40(sp)
	ld	a5,32(sp)
	ld	a4,40(sp)
	srli	s0,a4,0
	li	s1,0
	mv	a4,s0
	add	a5,a5,a4
	sd	a5,24(sp)
	ld	a5,24(sp)
	sext.w	a4,a5
	ld	a5,24(sp)
	srli	a5,a5,32
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,20(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	ld	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	1
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,8(sp)
	mv	a5,a0
	sw	a5,4(sp)
	lw	a5,4(sp)
	srliw	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,20(sp)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fsd	fa5,24(sp)
.L1000:
	lw	a5,4(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L997
	fld	fa4,24(sp)
	fld	fa5,8(sp)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,24(sp)
.L997:
	lw	a5,4(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1005
	fld	fa5,8(sp)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,8(sp)
	j	.L1000
.L1005:
	nop
	lw	a5,20(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1001
	lui	a5,%hi(.LC13)
	fld	fa4,%lo(.LC13)(a5)
	fld	fa5,24(sp)
	fdiv.d	fa5,fa4,fa5
	j	.L1003
.L1001:
	fld	fa5,24(sp)
.L1003:
	fmv.d	fa0,fa5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	1
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsw	fa0,12(sp)
	mv	a5,a0
	sw	a5,8(sp)
	lw	a5,8(sp)
	srliw	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,24(sp)
	lui	a5,%hi(.LC18)
	flw	fa5,%lo(.LC18)(a5)
	fsw	fa5,28(sp)
.L1011:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L1008
	flw	fa4,28(sp)
	flw	fa5,12(sp)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,28(sp)
.L1008:
	lw	a5,8(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1016
	flw	fa5,12(sp)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,12(sp)
	j	.L1011
.L1016:
	nop
	lw	a5,24(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1012
	lui	a5,%hi(.LC18)
	flw	fa4,%lo(.LC18)(a5)
	flw	fa5,28(sp)
	fdiv.s	fa5,fa4,fa5
	j	.L1014
.L1012:
	flw	fa5,28(sp)
.L1014:
	fmv.s	fa0,fa5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	1
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	ld	a5,0(sp)
	sd	a5,16(sp)
	lw	a4,28(sp)
	lw	a5,20(sp)
	bgeu	a4,a5,.L1019
	li	a5,0
	j	.L1024
.L1019:
	lw	a4,28(sp)
	lw	a5,20(sp)
	bleu	a4,a5,.L1021
	li	a5,2
	j	.L1024
.L1021:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bgeu	a4,a5,.L1022
	li	a5,0
	j	.L1024
.L1022:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bleu	a4,a5,.L1023
	li	a5,2
	j	.L1024
.L1023:
	li	a5,1
.L1024:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	1
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,8(sp)
	ld	a4,0(sp)
	mv	a1,a4
	mv	a0,a5
	call	__ucmpdi2
	mv	a5,a0
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	1
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,16(sp)
	sd	a1,24(sp)
	sd	a2,0(sp)
	sd	a3,8(sp)
	ld	a5,16(sp)
	sd	a5,48(sp)
	ld	a5,24(sp)
	sd	a5,56(sp)
	ld	a5,0(sp)
	sd	a5,32(sp)
	ld	a5,8(sp)
	sd	a5,40(sp)
	ld	a4,56(sp)
	ld	a5,40(sp)
	bgeu	a4,a5,.L1030
	li	a5,0
	j	.L1035
.L1030:
	ld	a4,56(sp)
	ld	a5,40(sp)
	bleu	a4,a5,.L1032
	li	a5,2
	j	.L1035
.L1032:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bgeu	a4,a5,.L1033
	li	a5,0
	j	.L1035
.L1033:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bleu	a4,a5,.L1034
	li	a5,2
	j	.L1035
.L1034:
	li	a5,1
.L1035:
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.dword	6364136223846793005
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.section	.srodata.cst8
	.align	3
.LC3:
	.word	-1
	.word	-1048577
	.align	3
.LC4:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC5:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC6:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.section	.srodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.align	2
.LC8:
	.word	1073741824
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.align	3
.LC10:
	.word	0
	.word	1073741824
	.section	.rodata.cst16
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC12:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.section	.srodata.cst8
	.align	3
.LC13:
	.word	0
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC14:
	.word	1191182336
	.section	.srodata.cst8
	.align	3
.LC15:
	.dword	6148914691236517205
	.align	3
.LC16:
	.dword	3689348814741910323
	.align	3
.LC17:
	.dword	1085102592571150095
	.section	.srodata.cst4
	.align	2
.LC18:
	.word	1065353216
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
