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
	mv	a0,a4
	mv	a1,a5
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
	mv	a0,a4
	mv	a1,a5
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	bgeu	a4,a5,.L8
	ld	a4,16(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,56(sp)
	j	.L9
.L10:
	ld	a5,40(sp)
	addi	a5,a5,-1
	sd	a5,40(sp)
	ld	a5,56(sp)
	addi	a5,a5,-1
	sd	a5,56(sp)
	ld	a5,40(sp)
	lbu	a4,0(a5)
	ld	a5,56(sp)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L9:
	ld	a5,8(sp)
	bne	a5,zero,.L10
	j	.L11
.L8:
	ld	a4,16(sp)
	ld	a5,24(sp)
	beq	a4,a5,.L11
	ld	a5,24(sp)
	sd	a5,48(sp)
	j	.L12
.L13:
	ld	a4,16(sp)
	addi	a5,a4,1
	sd	a5,16(sp)
	ld	a5,48(sp)
	addi	a3,a5,1
	sd	a3,48(sp)
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
	addi	sp,sp,64
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
	lw	a5,12(sp)
	andi	a5,a5,0xff
	sw	a5,44(sp)
	j	.L17
.L19:
	ld	a5,0(sp)
	addi	a5,a5,-1
	sd	a5,0(sp)
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,16(sp)
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L17:
	ld	a5,0(sp)
	beq	a5,zero,.L18
	ld	a5,16(sp)
	lbu	a4,0(a5)
	ld	a5,24(sp)
	sb	a4,0(a5)
	ld	a5,24(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,44(sp)
	sext.w	a4,a4
	bne	a4,a5,.L19
.L18:
	ld	a5,0(sp)
	beq	a5,zero,.L20
	ld	a5,24(sp)
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
	lw	a5,20(sp)
	andi	a5,a5,0xff
	sw	a5,44(sp)
	j	.L24
.L26:
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L24:
	ld	a5,8(sp)
	beq	a5,zero,.L25
	ld	a5,24(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,44(sp)
	sext.w	a4,a4
	bne	a4,a5,.L26
.L25:
	ld	a5,8(sp)
	beq	a5,zero,.L27
	ld	a5,24(sp)
	j	.L29
.L27:
	li	a5,0
.L29:
	nop
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	j	.L32
.L34:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,16(sp)
.L32:
	ld	a5,8(sp)
	beq	a5,zero,.L33
	ld	a5,24(sp)
	lbu	a4,0(a5)
	ld	a5,16(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L34
.L33:
	ld	a5,8(sp)
	beq	a5,zero,.L35
	ld	a5,24(sp)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,16(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	j	.L36
.L35:
	li	a5,0
.L36:
	mv	a0,a5
	addi	sp,sp,32
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
	j	.L40
.L41:
	ld	a4,16(sp)
	addi	a5,a4,1
	sd	a5,16(sp)
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
	lw	a5,20(sp)
	andi	a5,a5,0xff
	sw	a5,44(sp)
	j	.L45
.L47:
	ld	a4,24(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,44(sp)
	sext.w	a4,a4
	bne	a4,a5,.L45
	ld	a4,24(sp)
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	mv	a5,a1
	sw	a1,4(sp)
	lw	a5,4(sp)
	andi	a5,a5,0xff
	sw	a5,28(sp)
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
	lw	a4,28(sp)
	sext.w	a4,a4
	bne	a4,a5,.L62
.L61:
	ld	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,32
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
	beq	a3,a4,.L69
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L68
	li	a5,0
	j	.L67
.L69:
	nop
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
	j	.L72
.L74:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	ld	a5,0(sp)
	addi	a5,a5,1
	sd	a5,0(sp)
.L72:
	ld	a5,8(sp)
	lbu	a4,0(a5)
	ld	a5,0(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L73
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L74
.L73:
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
	j	.L78
.L79:
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L78:
	ld	a5,24(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L79
	ld	a4,24(sp)
	ld	a5,8(sp)
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
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,40(sp)
	bne	a5,zero,.L85
	li	a5,0
	j	.L84
.L87:
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,16(sp)
	ld	a5,40(sp)
	addi	a5,a5,-1
	sd	a5,40(sp)
.L85:
	ld	a5,24(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L86
	ld	a5,16(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L86
	ld	a5,40(sp)
	beq	a5,zero,.L86
	ld	a5,24(sp)
	lbu	a4,0(a5)
	ld	a5,16(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L87
.L86:
	ld	a5,24(sp)
	lbu	a5,0(a5)
	sext.w	a4,a5
	ld	a5,16(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
.L84:
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,24(sp)
	sd	a1,16(sp)
	sd	a2,8(sp)
	j	.L90
.L91:
	ld	a5,24(sp)
	addi	a5,a5,1
	lbu	a4,0(a5)
	ld	a5,16(sp)
	sb	a4,0(a5)
	ld	a5,16(sp)
	addi	a5,a5,1
	ld	a4,24(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,16(sp)
	addi	a5,a5,2
	sd	a5,16(sp)
	ld	a5,24(sp)
	addi	a5,a5,2
	sd	a5,24(sp)
	ld	a5,8(sp)
	addi	a5,a5,-2
	sd	a5,8(sp)
.L90:
	ld	a4,8(sp)
	li	a5,1
	bgt	a4,a5,.L91
	nop
	nop
	addi	sp,sp,32
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
	beq	a4,a5,.L100
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,9
	bne	a4,a5,.L101
.L100:
	li	a5,1
	j	.L102
.L101:
	li	a5,0
.L102:
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
	bleu	a4,a5,.L106
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,127
	bne	a4,a5,.L107
.L106:
	li	a5,1
	j	.L108
.L107:
	li	a5,0
.L108:
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
	beq	a4,a5,.L124
	lw	a5,12(sp)
	addiw	a5,a5,-9
	sext.w	a4,a5
	li	a5,4
	bgtu	a4,a5,.L125
.L124:
	li	a5,1
	j	.L126
.L125:
	li	a5,0
.L126:
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
	bleu	a4,a5,.L133
	lw	a5,12(sp)
	addiw	a5,a5,-127
	sext.w	a4,a5
	li	a5,32
	bleu	a4,a5,.L133
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-40
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1
	bleu	a4,a5,.L133
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,7
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,2
	bgtu	a4,a5,.L134
.L133:
	li	a5,1
	j	.L135
.L134:
	li	a5,0
.L135:
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
	bgtu	a4,a5,.L142
	lw	a5,12(sp)
	addiw	a5,a5,1
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a4,a5
	li	a5,32
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L143
.L142:
	lw	a5,12(sp)
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,39
	bleu	a4,a5,.L144
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-8192
	addiw	a5,a5,-42
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,45056
	addi	a5,a5,2005
	bleu	a4,a5,.L144
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-57344
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,-8
	bgtu	a4,a5,.L145
.L144:
	li	a5,1
	j	.L143
.L145:
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-65536
	addiw	a5,a5,4
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,1048576
	addi	a5,a5,3
	bgtu	a4,a5,.L146
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	and	a5,a4,a5
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bne	a4,a5,.L147
.L146:
	li	a5,0
	j	.L143
.L147:
	li	a5,1
.L143:
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
	bleu	a4,a5,.L150
	lw	a5,12(sp)
	ori	a5,a5,32
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a4,a5
	li	a5,5
	bgtu	a4,a5,.L151
.L150:
	li	a5,1
	j	.L152
.L151:
	li	a5,0
.L152:
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
	bne	a5,zero,.L159
	fld	fa5,8(sp)
	j	.L160
.L159:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L161
	fld	fa5,0(sp)
	j	.L160
.L161:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L165
	j	.L166
.L165:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fsub.d	fa5,fa4,fa5
	j	.L160
.L166:
	fmv.d.x	fa5,zero
.L160:
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
	bne	a5,zero,.L169
	flw	fa5,12(sp)
	j	.L170
.L169:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L171
	flw	fa5,8(sp)
	j	.L170
.L171:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L175
	j	.L176
.L175:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fsub.s	fa5,fa4,fa5
	j	.L170
.L176:
	fmv.s.x	fa5,zero
.L170:
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
	bne	a5,zero,.L179
	fld	fa5,0(sp)
	j	.L180
.L179:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L181
	fld	fa5,8(sp)
	j	.L180
.L181:
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,0(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L182
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L183
	fld	fa5,0(sp)
	j	.L180
.L183:
	fld	fa5,8(sp)
	j	.L180
.L182:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L188
	j	.L189
.L188:
	fld	fa5,0(sp)
	j	.L180
.L189:
	fld	fa5,8(sp)
.L180:
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
	bne	a5,zero,.L192
	flw	fa5,8(sp)
	j	.L193
.L192:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L194
	flw	fa5,12(sp)
	j	.L193
.L194:
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
	beq	a4,a5,.L195
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L196
	flw	fa5,8(sp)
	j	.L193
.L196:
	flw	fa5,12(sp)
	j	.L193
.L195:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L201
	j	.L202
.L201:
	flw	fa5,8(sp)
	j	.L193
.L202:
	flw	fa5,12(sp)
.L193:
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
	beq	a0,zero,.L219
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L207
.L219:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L220
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L207
.L220:
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L210
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L211
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L207
.L211:
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L207
.L210:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L221
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L207
.L221:
	ld	a4,16(sp)
	ld	a5,24(sp)
.L207:
	mv	a0,a4
	mv	a1,a5
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
	bne	a5,zero,.L224
	fld	fa5,0(sp)
	j	.L225
.L224:
	fld	fa4,0(sp)
	fld	fa5,0(sp)
	feq.d	a4,fa4,fa4
	feq.d	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L226
	fld	fa5,8(sp)
	j	.L225
.L226:
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,0(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L227
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L228
	fld	fa5,8(sp)
	j	.L225
.L228:
	fld	fa5,0(sp)
	j	.L225
.L227:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L233
	j	.L234
.L233:
	fld	fa5,8(sp)
	j	.L225
.L234:
	fld	fa5,0(sp)
.L225:
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
	bne	a5,zero,.L237
	flw	fa5,8(sp)
	j	.L238
.L237:
	flw	fa4,8(sp)
	flw	fa5,8(sp)
	feq.s	a4,fa4,fa4
	feq.s	a5,fa5,fa5
	and	a5,a4,a5
	bne	a5,zero,.L239
	flw	fa5,12(sp)
	j	.L238
.L239:
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
	beq	a4,a5,.L240
	lw	a5,12(sp)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L241
	flw	fa5,12(sp)
	j	.L238
.L241:
	flw	fa5,8(sp)
	j	.L238
.L240:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L246
	j	.L247
.L246:
	flw	fa5,12(sp)
	j	.L238
.L247:
	flw	fa5,8(sp)
.L238:
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
	beq	a0,zero,.L264
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L252
.L264:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L265
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L252
.L265:
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a4,a5
	ld	a5,8(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a4,a5,.L255
	ld	a5,24(sp)
	srli	a5,a5,63
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L256
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L252
.L256:
	ld	a4,0(sp)
	ld	a5,8(sp)
	j	.L252
.L255:
	ld	a2,0(sp)
	ld	a3,8(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L266
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L252
.L266:
	ld	a4,0(sp)
	ld	a5,8(sp)
.L252:
	mv	a0,a4
	mv	a1,a5
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
	j	.L269
.L270:
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
.L269:
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L270
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	sd	a1,0(sp)
	ld	a5,0(sp)
	bne	a5,zero,.L278
	ld	a5,8(sp)
	sd	zero,8(a5)
	ld	a5,8(sp)
	ld	a4,8(a5)
	ld	a5,8(sp)
	sd	a4,0(a5)
	j	.L277
.L278:
	ld	a5,0(sp)
	ld	a4,0(a5)
	ld	a5,8(sp)
	sd	a4,0(a5)
	ld	a5,8(sp)
	ld	a4,0(sp)
	sd	a4,8(a5)
	ld	a5,0(sp)
	ld	a4,8(sp)
	sd	a4,0(a5)
	ld	a5,8(sp)
	ld	a5,0(a5)
	beq	a5,zero,.L277
	ld	a5,8(sp)
	ld	a5,0(a5)
	ld	a4,8(sp)
	sd	a4,8(a5)
.L277:
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	a0,8(sp)
	ld	a5,8(sp)
	ld	a5,0(a5)
	beq	a5,zero,.L282
	ld	a5,8(sp)
	ld	a5,0(a5)
	ld	a4,8(sp)
	ld	a4,8(a4)
	sd	a4,8(a5)
.L282:
	ld	a5,8(sp)
	ld	a5,8(a5)
	beq	a5,zero,.L284
	ld	a5,8(sp)
	ld	a5,8(a5)
	ld	a4,8(sp)
	ld	a4,0(a4)
	sd	a4,0(a5)
.L284:
	nop
	addi	sp,sp,16
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
	ld	a5,24(sp)
	ld	a5,0(a5)
	sd	a5,56(sp)
	sd	zero,72(sp)
	j	.L287
.L290:
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,32(sp)
	add	a4,a4,a5
	ld	a5,8(sp)
	mv	a1,a4
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L288
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,32(sp)
	add	a5,a4,a5
	j	.L289
.L288:
	ld	a5,72(sp)
	addi	a5,a5,1
	sd	a5,72(sp)
.L287:
	ld	a4,72(sp)
	ld	a5,56(sp)
	bltu	a4,a5,.L290
	ld	a5,56(sp)
	addi	a4,a5,1
	ld	a5,24(sp)
	sd	a4,0(a5)
	ld	a5,56(sp)
	mul	a5,s0,a5
	ld	a4,32(sp)
	add	a5,a4,a5
	ld	a2,16(sp)
	ld	a1,40(sp)
	mv	a0,a5
	call	memcpy
	mv	a5,a0
.L289:
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
	ld	a5,24(sp)
	ld	a5,0(a5)
	sd	a5,56(sp)
	sd	zero,72(sp)
	j	.L293
.L296:
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,32(sp)
	add	a4,a4,a5
	ld	a5,8(sp)
	mv	a1,a4
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L294
	ld	a5,72(sp)
	mul	a5,s0,a5
	ld	a4,32(sp)
	add	a5,a4,a5
	j	.L295
.L294:
	ld	a5,72(sp)
	addi	a5,a5,1
	sd	a5,72(sp)
.L293:
	ld	a4,72(sp)
	ld	a5,56(sp)
	bltu	a4,a5,.L296
	li	a5,0
.L295:
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
	j	.L302
.L303:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L302:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L303
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L304
	li	a4,45
	bne	a5,a4,.L306
	li	a5,1
	sw	a5,24(sp)
.L304:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L306
.L307:
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
.L306:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L307
	lw	a5,24(sp)
	sext.w	a5,a5
	bne	a5,zero,.L308
	lw	a5,28(sp)
	negw	a5,a5
	sext.w	a5,a5
	j	.L309
.L308:
	lw	a5,28(sp)
.L309:
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
	j	.L313
.L314:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L313:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L314
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L315
	li	a4,45
	bne	a5,a4,.L317
	li	a5,1
	sw	a5,20(sp)
.L315:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L317
.L318:
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
.L317:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L318
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L319
	ld	a5,24(sp)
	neg	a5,a5
	j	.L321
.L319:
	ld	a5,24(sp)
.L321:
	nop
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
	j	.L324
.L325:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L324:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L325
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	li	a4,43
	beq	a5,a4,.L326
	li	a4,45
	bne	a5,a4,.L328
	li	a5,1
	sw	a5,20(sp)
.L326:
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
	j	.L328
.L329:
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
.L328:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L329
	lw	a5,20(sp)
	sext.w	a5,a5
	bne	a5,zero,.L330
	ld	a5,24(sp)
	neg	a5,a5
	j	.L332
.L330:
	ld	a5,24(sp)
.L332:
	nop
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
	j	.L335
.L340:
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
	bge	a5,zero,.L336
	ld	a5,24(sp)
	srli	a5,a5,1
	sd	a5,24(sp)
	j	.L335
.L336:
	lw	a5,52(sp)
	sext.w	a5,a5
	ble	a5,zero,.L338
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
	j	.L335
.L338:
	ld	a5,56(sp)
	j	.L339
.L335:
	ld	a5,24(sp)
	bne	a5,zero,.L340
	li	a5,0
.L339:
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
	ld	a5,24(sp)
	sw	a5,76(sp)
	j	.L343
.L347:
	lw	a5,76(sp)
	sraiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,16(sp)
	mul	a5,a4,a5
	ld	a4,32(sp)
	add	a5,a4,a5
	sd	a5,64(sp)
	ld	a5,8(sp)
	ld	a2,0(sp)
	ld	a1,64(sp)
	ld	a0,40(sp)
	jalr	a5
	mv	a5,a0
	sw	a5,60(sp)
	lw	a5,60(sp)
	sext.w	a5,a5
	bne	a5,zero,.L344
	ld	a5,64(sp)
	j	.L345
.L344:
	lw	a5,60(sp)
	sext.w	a5,a5
	ble	a5,zero,.L346
	ld	a4,64(sp)
	ld	a5,16(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	lw	a5,76(sp)
	addiw	a5,a5,-1
	sw	a5,76(sp)
.L346:
	lw	a5,76(sp)
	sraiw	a5,a5,1
	sw	a5,76(sp)
.L343:
	lw	a5,76(sp)
	sext.w	a5,a5
	bne	a5,zero,.L347
	li	a5,0
.L345:
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
	ld	a3,8(sp)
	ld	a5,0(sp)
	rem	a5,a3,a5
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
	ld	a3,8(sp)
	ld	a5,0(sp)
	rem	a5,a3,a5
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
	ld	a3,8(sp)
	ld	a5,0(sp)
	rem	a5,a3,a5
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
	j	.L371
.L373:
	ld	a5,8(sp)
	addi	a5,a5,4
	sd	a5,8(sp)
.L371:
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L372
	ld	a5,8(sp)
	lw	a5,0(a5)
	lw	a4,4(sp)
	sext.w	a4,a4
	bne	a4,a5,.L373
.L372:
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L374
	ld	a5,8(sp)
	j	.L376
.L374:
	li	a5,0
.L376:
	nop
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
	j	.L379
.L381:
	ld	a5,8(sp)
	addi	a5,a5,4
	sd	a5,8(sp)
	ld	a5,0(sp)
	addi	a5,a5,4
	sd	a5,0(sp)
.L379:
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L380
	ld	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L380
	ld	a5,0(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L381
.L380:
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L382
	ld	a5,8(sp)
	lw	a4,0(a5)
	ld	a5,0(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L383
.L382:
	li	a5,-1
.L383:
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
.L387:
	ld	a4,0(sp)
	addi	a5,a4,4
	sd	a5,0(sp)
	ld	a5,24(sp)
	addi	a3,a5,4
	sd	a3,24(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L387
	ld	a5,8(sp)
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
	j	.L391
.L392:
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
.L391:
	ld	a5,24(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L392
	ld	a4,24(sp)
	ld	a5,8(sp)
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
	j	.L396
.L398:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,4
	sd	a5,16(sp)
.L396:
	ld	a5,8(sp)
	beq	a5,zero,.L397
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L397
	ld	a5,24(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L397
	ld	a5,16(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L398
.L397:
	ld	a5,8(sp)
	beq	a5,zero,.L399
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L400
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L402
.L400:
	li	a5,-1
	j	.L402
.L399:
	li	a5,0
.L402:
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
	j	.L406
.L408:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
.L406:
	ld	a5,8(sp)
	beq	a5,zero,.L407
	ld	a5,24(sp)
	lw	a5,0(a5)
	lw	a4,20(sp)
	sext.w	a4,a4
	bne	a4,a5,.L408
.L407:
	ld	a5,8(sp)
	beq	a5,zero,.L409
	ld	a5,24(sp)
	j	.L411
.L409:
	li	a5,0
.L411:
	nop
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
	j	.L414
.L416:
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
	ld	a5,24(sp)
	addi	a5,a5,4
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a5,a5,4
	sd	a5,16(sp)
.L414:
	ld	a5,8(sp)
	beq	a5,zero,.L415
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	beq	a4,a5,.L416
.L415:
	ld	a5,8(sp)
	beq	a5,zero,.L417
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L418
	ld	a5,24(sp)
	lw	a4,0(a5)
	ld	a5,16(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L420
.L418:
	li	a5,-1
	j	.L420
.L417:
	li	a5,0
.L420:
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
	j	.L424
.L425:
	ld	a4,16(sp)
	addi	a5,a4,4
	sd	a5,16(sp)
	ld	a5,40(sp)
	addi	a3,a5,4
	sd	a3,40(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L424:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L425
	ld	a5,24(sp)
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
	ld	a4,24(sp)
	ld	a5,16(sp)
	bne	a4,a5,.L429
	ld	a5,24(sp)
	j	.L430
.L429:
	ld	a4,24(sp)
	ld	a5,16(sp)
	sub	a4,a4,a5
	ld	a5,8(sp)
	slli	a5,a5,2
	bgeu	a4,a5,.L431
	j	.L432
.L433:
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
.L432:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L433
	j	.L434
.L431:
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L435
.L436:
	ld	a4,16(sp)
	addi	a5,a4,4
	sd	a5,16(sp)
	ld	a5,40(sp)
	addi	a3,a5,4
	sd	a3,40(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L435:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L436
.L434:
	ld	a5,24(sp)
.L430:
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
	j	.L439
.L440:
	ld	a5,40(sp)
	addi	a4,a5,4
	sd	a4,40(sp)
	lw	a4,20(sp)
	sw	a4,0(a5)
.L439:
	ld	a5,8(sp)
	addi	a4,a5,-1
	sd	a4,8(sp)
	bne	a5,zero,.L440
	ld	a5,24(sp)
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
	ld	a4,24(sp)
	ld	a5,16(sp)
	bgeu	a4,a5,.L444
	ld	a4,24(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a5,8(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	j	.L445
.L446:
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
.L445:
	ld	a5,8(sp)
	bne	a5,zero,.L446
	j	.L450
.L444:
	ld	a4,24(sp)
	ld	a5,16(sp)
	beq	a4,a5,.L450
	j	.L448
.L449:
	ld	a4,24(sp)
	addi	a5,a4,1
	sd	a5,24(sp)
	ld	a5,16(sp)
	addi	a3,a5,1
	sd	a3,16(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L448:
	ld	a5,8(sp)
	bne	a5,zero,.L449
.L450:
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
	j	.L492
.L495:
	lw	a5,12(sp)
	lw	a4,28(sp)
	srlw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L493
	lw	a5,28(sp)
	addiw	a5,a5,1
	sext.w	a5,a5
	j	.L494
.L493:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L492:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,31
	bleu	a4,a5,.L495
	li	a5,0
.L494:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	bne	a0,zero,.L498
	li	s0,0
	j	.L499
.L498:
	mv	a5,a0
	li	s0,1
	j	.L500
.L501:
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a4,s0,1
	sext.w	s0,a4
.L500:
	andi	a4,a5,1
	sext.w	a4,a4
	beq	a4,zero,.L501
	nop
.L499:
	mv	a0,s0
	ld	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
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
	bne	a5,zero,.L504
	flw	fa4,12(sp)
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L504
	j	.L509
.L504:
	li	a5,1
	j	.L507
.L509:
	li	a5,0
.L507:
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
	bne	a5,zero,.L514
	fld	fa4,8(sp)
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L514
	j	.L519
.L514:
	li	a5,1
	j	.L517
.L519:
	li	a5,0
.L517:
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
	blt	a0,zero,.L524
	lui	a5,%hi(.LC6)
	ld	a2,%lo(.LC6)(a5)
	ld	a3,%lo(.LC6+8)(a5)
	ld	a0,0(sp)
	ld	a1,8(sp)
	call	__gttf2
	mv	a5,a0
	ble	a5,zero,.L529
.L524:
	li	a5,1
	j	.L527
.L529:
	li	a5,0
.L527:
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
	mv	a3,a0
	mv	a4,a1
	ld	a5,8(sp)
	sd	a3,0(a5)
	sd	a4,8(a5)
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
	beq	a5,zero,.L534
	flw	fa5,12(sp)
	fadd.s	fa5,fa5,fa5
	flw	fa4,12(sp)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L534
	lw	a5,8(sp)
	sext.w	a5,a5
	bge	a5,zero,.L535
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L536
.L535:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
.L536:
	fsw	fa5,28(sp)
.L539:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L537
	flw	fa4,12(sp)
	flw	fa5,28(sp)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,12(sp)
.L537:
	lw	a5,8(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L541
	flw	fa5,28(sp)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,28(sp)
	j	.L539
.L541:
	nop
.L534:
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
	beq	a5,zero,.L545
	fld	fa5,8(sp)
	fadd.d	fa5,fa5,fa5
	fld	fa4,8(sp)
	feq.d	a5,fa4,fa5
	bne	a5,zero,.L545
	lw	a5,4(sp)
	sext.w	a5,a5
	bge	a5,zero,.L546
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L547
.L546:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
.L547:
	fsd	fa5,24(sp)
.L550:
	lw	a5,4(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L548
	fld	fa4,8(sp)
	fld	fa5,24(sp)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,8(sp)
.L548:
	lw	a5,4(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L552
	fld	fa5,24(sp)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,24(sp)
	j	.L550
.L552:
	nop
.L545:
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
	bne	a0,zero,.L556
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
	beq	a5,zero,.L556
	lw	a5,12(sp)
	sext.w	a5,a5
	bge	a5,zero,.L558
	lui	a3,%hi(.LC11)
	ld	a4,%lo(.LC11)(a3)
	ld	a5,%lo(.LC11+8)(a3)
	j	.L559
.L558:
	lui	a3,%hi(.LC12)
	ld	a4,%lo(.LC12)(a3)
	ld	a5,%lo(.LC12+8)(a3)
.L559:
	sd	a4,32(sp)
	sd	a5,40(sp)
.L562:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L560
	ld	a2,32(sp)
	ld	a3,40(sp)
	ld	a0,16(sp)
	ld	a1,24(sp)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,16(sp)
	sd	a5,24(sp)
.L560:
	lw	a5,12(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,12(sp)
	sext.w	a5,a5
	beq	a5,zero,.L565
	ld	a2,32(sp)
	ld	a3,40(sp)
	ld	a0,32(sp)
	ld	a1,40(sp)
	call	__multf3
	mv	a4,a0
	mv	a5,a1
	sd	a4,32(sp)
	sd	a5,40(sp)
	j	.L562
.L565:
	nop
.L556:
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a0,a4
	mv	a1,a5
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
	ld	a5,24(sp)
	sd	a5,40(sp)
	j	.L568
.L569:
	ld	a5,16(sp)
	addi	a4,a5,1
	sd	a4,16(sp)
	lbu	a3,0(a5)
	ld	a5,40(sp)
	addi	a4,a5,1
	sd	a4,40(sp)
	lbu	a4,0(a5)
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L568:
	ld	a5,8(sp)
	bne	a5,zero,.L569
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
	j	.L573
.L575:
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,16(sp)
	ld	a5,40(sp)
	addi	a5,a5,1
	sd	a5,40(sp)
	ld	a5,8(sp)
	addi	a5,a5,-1
	sd	a5,8(sp)
.L573:
	ld	a5,8(sp)
	beq	a5,zero,.L574
	ld	a5,16(sp)
	lbu	a4,0(a5)
	ld	a5,40(sp)
	sb	a4,0(a5)
	ld	a5,40(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L575
.L574:
	ld	a5,8(sp)
	bne	a5,zero,.L576
	ld	a5,40(sp)
	sb	zero,0(a5)
.L576:
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
	j	.L580
.L585:
	nop
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L580:
	ld	a4,24(sp)
	ld	a5,0(sp)
	bgeu	a4,a5,.L581
	ld	a4,8(sp)
	ld	a5,24(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L585
.L581:
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
	j	.L588
.L592:
	ld	a5,0(sp)
	sd	a5,24(sp)
	j	.L589
.L591:
	ld	a5,24(sp)
	addi	a4,a5,1
	sd	a4,24(sp)
	lbu	a4,0(a5)
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L589
	ld	a5,8(sp)
	j	.L590
.L589:
	ld	a5,24(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L591
	ld	a5,8(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L588:
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L592
	li	a5,0
.L590:
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
.L596:
	lbu	a4,0(a5)
	sext.w	a4,a4
	lw	a3,12(sp)
	sext.w	a3,a3
	bne	a3,a4,.L595
	sd	a5,24(sp)
.L595:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L596
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
	ld	a0,0(sp)
	call	strlen
	sd	a0,24(sp)
	ld	a5,24(sp)
	bne	a5,zero,.L602
	ld	a5,8(sp)
	j	.L601
.L604:
	ld	a2,24(sp)
	ld	a1,0(sp)
	ld	a0,16(sp)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L603
	ld	a5,16(sp)
	j	.L601
.L603:
	ld	a5,16(sp)
	addi	a5,a5,1
	sd	a5,8(sp)
.L602:
	ld	a5,0(sp)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,8(sp)
	call	strchr
	sd	a0,16(sp)
	ld	a5,16(sp)
	bne	a5,zero,.L604
	li	a5,0
.L601:
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
	bne	a5,zero,.L614
	j	.L607
.L614:
	fld	fa5,0(sp)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L609
.L607:
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	bne	a5,zero,.L615
	j	.L610
.L615:
	fld	fa5,0(sp)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L609
	j	.L610
.L609:
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	j	.L613
.L610:
	fld	fa5,8(sp)
.L613:
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
	sd	a5,40(sp)
	ld	a5,0(sp)
	bne	a5,zero,.L620
	ld	a5,24(sp)
	j	.L621
.L620:
	ld	a4,16(sp)
	ld	a5,0(sp)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L623
	li	a5,0
	j	.L621
.L625:
	ld	a5,24(sp)
	lbu	a4,0(a5)
	ld	a5,8(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L624
	ld	a5,24(sp)
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
	bne	a5,zero,.L624
	ld	a5,24(sp)
	j	.L621
.L624:
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L623:
	ld	a4,24(sp)
	ld	a5,40(sp)
	bleu	a4,a5,.L625
	li	a5,0
.L621:
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
	bne	a5,zero,.L643
	j	.L631
.L643:
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	fsd	fa5,8(sp)
	li	a5,1
	sw	a5,28(sp)
.L631:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L635
	j	.L646
.L636:
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
	fld	fa4,8(sp)
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,8(sp)
.L635:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L636
	j	.L637
.L646:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L645
	j	.L637
.L645:
	fld	fa5,8(sp)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L637
	j	.L639
.L640:
	lw	a5,24(sp)
	addiw	a5,a5,-1
	sw	a5,24(sp)
	fld	fa5,8(sp)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,8(sp)
.L639:
	fld	fa4,8(sp)
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L640
.L637:
	ld	a5,0(sp)
	lw	a4,24(sp)
	sw	a4,0(a5)
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L641
	fld	fa5,8(sp)
	fneg.d	fa5,fa5
	fsd	fa5,8(sp)
.L641:
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
	j	.L650
.L652:
	ld	a5,16(sp)
	andi	a5,a5,1
	beq	a5,zero,.L651
	ld	a4,24(sp)
	ld	a5,0(sp)
	add	a5,a4,a5
	sd	a5,24(sp)
.L651:
	ld	a5,0(sp)
	slli	a5,a5,1
	sd	a5,0(sp)
	ld	a5,16(sp)
	srli	a5,a5,1
	sd	a5,16(sp)
.L650:
	ld	a5,16(sp)
	bne	a5,zero,.L652
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
	j	.L656
.L658:
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,28(sp)
	slliw	a5,a5,1
	sw	a5,28(sp)
.L656:
	lw	a5,8(sp)
	mv	a4,a5
	lw	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L659
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L659
	lw	a5,8(sp)
	bge	a5,zero,.L658
	j	.L659
.L661:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L660
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
.L660:
	lw	a5,28(sp)
	srliw	a5,a5,1
	sw	a5,28(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L659:
	lw	a5,28(sp)
	sext.w	a5,a5
	bne	a5,zero,.L661
	ld	a5,0(sp)
	beq	a5,zero,.L662
	lw	a5,12(sp)
	j	.L663
.L662:
	lw	a5,24(sp)
.L663:
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
	bne	a5,zero,.L666
	li	a5,7
	j	.L667
.L666:
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
.L667:
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
	bge	a5,zero,.L670
	ld	a5,8(sp)
	not	a5,a5
	sd	a5,8(sp)
.L670:
	ld	a5,8(sp)
	bne	a5,zero,.L671
	li	a5,63
	j	.L672
.L671:
	ld	a5,8(sp)
	mv	a0,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,28(sp)
	lw	a5,28(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
.L672:
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
	j	.L675
.L677:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L676
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,8(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L676:
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
.L675:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L677
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,3
	sw	a5,36(sp)
	lw	a5,12(sp)
	andi	a5,a5,-8
	sw	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,16(sp)
	bltu	a4,a5,.L681
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a5,a4,a5
	ld	a4,24(sp)
	bleu	a4,a5,.L688
.L681:
	sw	zero,44(sp)
	j	.L683
.L684:
	lwu	a5,44(sp)
	slli	a5,a5,3
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,44(sp)
	slli	a5,a5,3
	ld	a3,24(sp)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,44(sp)
	addiw	a5,a5,1
	sw	a5,44(sp)
.L683:
	lw	a5,44(sp)
	mv	a4,a5
	lw	a5,36(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L684
	j	.L685
.L686:
	lwu	a5,40(sp)
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,40(sp)
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,40(sp)
	addiw	a5,a5,1
	sw	a5,40(sp)
.L685:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,40(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L686
	j	.L687
.L689:
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L688:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L689
	nop
.L687:
	nop
	addi	sp,sp,48
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,16(sp)
	bltu	a4,a5,.L692
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a5,a4,a5
	ld	a4,24(sp)
	bleu	a4,a5,.L698
.L692:
	sw	zero,44(sp)
	j	.L694
.L695:
	lwu	a5,44(sp)
	slli	a5,a5,1
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,44(sp)
	slli	a5,a5,1
	ld	a3,24(sp)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,44(sp)
	addiw	a5,a5,1
	sw	a5,44(sp)
.L694:
	lw	a5,44(sp)
	mv	a4,a5
	lw	a5,40(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L695
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L697
	lw	a5,12(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,16(sp)
	add	a4,a4,a5
	lw	a5,12(sp)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L697
.L699:
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L698:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L699
	nop
.L697:
	nop
	addi	sp,sp,48
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,24(sp)
	sd	a1,16(sp)
	mv	a5,a2
	sw	a2,12(sp)
	lw	a5,12(sp)
	srliw	a5,a5,2
	sw	a5,36(sp)
	lw	a5,12(sp)
	andi	a5,a5,-4
	sw	a5,40(sp)
	ld	a4,24(sp)
	ld	a5,16(sp)
	bltu	a4,a5,.L702
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a5,a4,a5
	ld	a4,24(sp)
	bleu	a4,a5,.L709
.L702:
	sw	zero,44(sp)
	j	.L704
.L705:
	lwu	a5,44(sp)
	slli	a5,a5,2
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,44(sp)
	slli	a5,a5,2
	ld	a3,24(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,44(sp)
	addiw	a5,a5,1
	sw	a5,44(sp)
.L704:
	lw	a5,44(sp)
	mv	a4,a5
	lw	a5,36(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L705
	j	.L706
.L707:
	lwu	a5,40(sp)
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,40(sp)
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,40(sp)
	addiw	a5,a5,1
	sw	a5,40(sp)
.L706:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,40(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgtu	a4,a5,.L707
	j	.L708
.L710:
	lwu	a5,12(sp)
	ld	a4,16(sp)
	add	a4,a4,a5
	lwu	a5,12(sp)
	ld	a3,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L709:
	lw	a5,12(sp)
	addiw	a4,a5,-1
	sw	a4,12(sp)
	bne	a5,zero,.L710
	nop
.L708:
	nop
	addi	sp,sp,48
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
	j	.L731
.L734:
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
	bne	a5,zero,.L736
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L731:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L734
	j	.L733
.L736:
	nop
.L733:
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
	j	.L739
.L742:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L744
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L739:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L742
	j	.L741
.L744:
	nop
.L741:
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
	bne	a5,zero,.L750
	j	.L751
.L750:
	flw	fa4,12(sp)
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fsub.s	fa5,fa4,fa5
	fcvt.l.s a4,fa5,rtz
	li	a5,32768
	add	a5,a4,a5
	j	.L749
.L751:
	flw	fa5,12(sp)
	fcvt.l.s a5,fa5,rtz
.L749:
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
	j	.L754
.L756:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L755
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
.L755:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L754:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L756
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
	j	.L760
.L762:
	lhu	a5,14(sp)
	sext.w	a5,a5
	lw	a4,28(sp)
	sraw	a5,a5,a4
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L761
	lw	a5,24(sp)
	addiw	a5,a5,1
	sw	a5,24(sp)
.L761:
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L760:
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L762
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
	j	.L766
.L768:
	lw	a5,12(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L767
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,8(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L767:
	lw	a5,12(sp)
	srliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
.L766:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L768
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
	bne	a5,zero,.L774
	li	a5,0
	j	.L773
.L776:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L775
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,12(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
.L775:
	lw	a5,12(sp)
	slliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L774:
	lw	a5,8(sp)
	sext.w	a5,a5
	bne	a5,zero,.L776
	lw	a5,28(sp)
.L773:
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
	j	.L779
.L781:
	lw	a5,8(sp)
	slliw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,28(sp)
	slliw	a5,a5,1
	sw	a5,28(sp)
.L779:
	lw	a5,8(sp)
	mv	a4,a5
	lw	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L782
	lw	a5,28(sp)
	sext.w	a5,a5
	beq	a5,zero,.L782
	lw	a5,8(sp)
	bge	a5,zero,.L781
	j	.L782
.L784:
	lw	a5,12(sp)
	mv	a4,a5
	lw	a5,8(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L783
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
.L783:
	lw	a5,28(sp)
	srliw	a5,a5,1
	sw	a5,28(sp)
	lw	a5,8(sp)
	srliw	a5,a5,1
	sw	a5,8(sp)
.L782:
	lw	a5,28(sp)
	sext.w	a5,a5
	bne	a5,zero,.L784
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L785
	lw	a5,12(sp)
	j	.L786
.L785:
	lw	a5,24(sp)
.L786:
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
	bne	a5,zero,.L794
	j	.L796
.L794:
	li	a5,-1
	j	.L791
.L796:
	flw	fa4,12(sp)
	flw	fa5,8(sp)
	fgt.s	a5,fa4,fa5
	bne	a5,zero,.L795
	j	.L797
.L795:
	li	a5,1
	j	.L791
.L797:
	li	a5,0
.L791:
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
	bne	a5,zero,.L805
	j	.L807
.L805:
	li	a5,-1
	j	.L802
.L807:
	fld	fa4,8(sp)
	fld	fa5,0(sp)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L806
	j	.L808
.L806:
	li	a5,1
	j	.L802
.L808:
	li	a5,0
.L802:
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
	bge	a5,zero,.L817
	lw	a5,8(sp)
	negw	a5,a5
	sw	a5,8(sp)
	li	a5,1
	sw	a5,24(sp)
.L817:
	sb	zero,31(sp)
	j	.L818
.L821:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L819
	lw	a5,20(sp)
	mv	a4,a5
	lw	a5,12(sp)
	addw	a5,a4,a5
	sw	a5,20(sp)
.L819:
	lw	a5,12(sp)
	slliw	a5,a5,1
	sw	a5,12(sp)
	lw	a5,8(sp)
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lbu	a5,31(sp)
	addiw	a5,a5,1
	sb	a5,31(sp)
.L818:
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L820
	lbu	a5,31(sp)
	andi	a4,a5,0xff
	li	a5,31
	bleu	a4,a5,.L821
.L820:
	lw	a5,24(sp)
	sext.w	a5,a5
	beq	a5,zero,.L822
	lw	a5,20(sp)
	negw	a5,a5
	sext.w	a5,a5
	j	.L823
.L822:
	lw	a5,20(sp)
.L823:
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
	bge	a5,zero,.L827
	ld	a5,8(sp)
	neg	a5,a5
	sd	a5,8(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,28(sp)
.L827:
	ld	a5,0(sp)
	bge	a5,zero,.L828
	ld	a5,0(sp)
	neg	a5,a5
	sd	a5,0(sp)
	lw	a5,28(sp)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,28(sp)
.L828:
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
	beq	a5,zero,.L829
	ld	a5,16(sp)
	neg	a5,a5
	sd	a5,16(sp)
.L829:
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
	bge	a5,zero,.L833
	ld	a5,8(sp)
	neg	a5,a5
	sd	a5,8(sp)
	li	a5,1
	sw	a5,28(sp)
.L833:
	ld	a5,0(sp)
	bge	a5,zero,.L834
	ld	a5,0(sp)
	neg	a5,a5
	sd	a5,0(sp)
.L834:
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
	beq	a5,zero,.L835
	ld	a5,16(sp)
	neg	a5,a5
	sd	a5,16(sp)
.L835:
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
	j	.L839
.L841:
	lhu	a5,12(sp)
	slliw	a5,a5,1
	sh	a5,12(sp)
	lhu	a5,30(sp)
	slliw	a5,a5,1
	sh	a5,30(sp)
.L839:
	lhu	a4,12(sp)
	lhu	a5,14(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bgeu	a4,a5,.L842
	lhu	a5,30(sp)
	sext.w	a5,a5
	beq	a5,zero,.L842
	lh	a5,12(sp)
	bge	a5,zero,.L841
	j	.L842
.L844:
	lhu	a4,14(sp)
	lhu	a5,12(sp)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L843
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
.L843:
	lhu	a5,30(sp)
	srliw	a5,a5,1
	sh	a5,30(sp)
	lhu	a5,12(sp)
	srliw	a5,a5,1
	sh	a5,12(sp)
.L842:
	lhu	a5,30(sp)
	sext.w	a5,a5
	bne	a5,zero,.L844
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L845
	lhu	a5,14(sp)
	j	.L846
.L845:
	lhu	a5,28(sp)
.L846:
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
	j	.L849
.L851:
	ld	a5,16(sp)
	slli	a5,a5,1
	sd	a5,16(sp)
	ld	a5,40(sp)
	slli	a5,a5,1
	sd	a5,40(sp)
.L849:
	ld	a4,16(sp)
	ld	a5,24(sp)
	bgeu	a4,a5,.L852
	ld	a5,40(sp)
	beq	a5,zero,.L852
	ld	a4,16(sp)
	li	a5,1
	slli	a5,a5,31
	and	a5,a4,a5
	beq	a5,zero,.L851
	j	.L852
.L854:
	ld	a4,24(sp)
	ld	a5,16(sp)
	bltu	a4,a5,.L853
	ld	a4,24(sp)
	ld	a5,16(sp)
	sub	a5,a4,a5
	sd	a5,24(sp)
	ld	a4,32(sp)
	ld	a5,40(sp)
	or	a5,a4,a5
	sd	a5,32(sp)
.L853:
	ld	a5,40(sp)
	srli	a5,a5,1
	sd	a5,40(sp)
	ld	a5,16(sp)
	srli	a5,a5,1
	sd	a5,16(sp)
.L852:
	ld	a5,40(sp)
	bne	a5,zero,.L854
	lw	a5,12(sp)
	sext.w	a5,a5
	beq	a5,zero,.L855
	ld	a5,24(sp)
	j	.L856
.L855:
	ld	a5,32(sp)
.L856:
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
	beq	a5,zero,.L859
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
	j	.L860
.L859:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L861
	ld	a5,8(sp)
	j	.L863
.L861:
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
.L860:
	ld	a5,24(sp)
.L863:
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
	beq	a5,zero,.L866
	sd	zero,32(sp)
	ld	a5,48(sp)
	lw	a4,12(sp)
	mv	a3,a4
	lw	a4,76(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	sll	a5,a5,a4
	sd	a5,40(sp)
	j	.L867
.L866:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L868
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L870
.L868:
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
.L867:
	ld	a4,32(sp)
	ld	a5,40(sp)
.L870:
	mv	a0,a4
	mv	a1,a5
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
	beq	a5,zero,.L873
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
	j	.L874
.L873:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L875
	ld	a5,8(sp)
	j	.L877
.L875:
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
.L874:
	ld	a5,24(sp)
.L877:
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
	beq	a5,zero,.L880
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
	j	.L881
.L880:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L882
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L884
.L882:
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
.L881:
	ld	a4,32(sp)
	ld	a5,40(sp)
.L884:
	mv	a0,a4
	mv	a1,a5
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sw	a5,76(sp)
	lw	a5,76(sp)
	sext.w	a4,a5
	li	a5,65536
	bgeu	a4,a5,.L893
	li	a5,16
	j	.L894
.L893:
	li	a5,0
.L894:
	sw	a5,72(sp)
	li	a5,16
	lw	a4,72(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,76(sp)
	srlw	a5,a4,a5
	sw	a5,68(sp)
	lw	a5,72(sp)
	sw	a5,64(sp)
	lw	a5,68(sp)
	mv	a4,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L895
	li	a5,8
	j	.L896
.L895:
	li	a5,0
.L896:
	sw	a5,60(sp)
	li	a5,8
	lw	a4,60(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,68(sp)
	srlw	a5,a4,a5
	sw	a5,56(sp)
	lw	a5,60(sp)
	lw	a4,64(sp)
	addw	a5,a4,a5
	sw	a5,52(sp)
	lw	a5,56(sp)
	andi	a5,a5,240
	sext.w	a5,a5
	bne	a5,zero,.L897
	li	a5,4
	j	.L898
.L897:
	li	a5,0
.L898:
	sw	a5,48(sp)
	li	a5,4
	lw	a4,48(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,56(sp)
	srlw	a5,a4,a5
	sw	a5,44(sp)
	lw	a5,48(sp)
	lw	a4,52(sp)
	addw	a5,a4,a5
	sw	a5,40(sp)
	lw	a5,44(sp)
	andi	a5,a5,12
	sext.w	a5,a5
	bne	a5,zero,.L899
	li	a5,2
	j	.L900
.L899:
	li	a5,0
.L900:
	sw	a5,36(sp)
	li	a5,2
	lw	a4,36(sp)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,44(sp)
	srlw	a5,a4,a5
	sw	a5,32(sp)
	lw	a5,36(sp)
	lw	a4,40(sp)
	addw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,32(sp)
	andi	a5,a5,2
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	lw	a3,32(sp)
	subw	a5,a5,a3
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,28(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,80
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
	bge	a4,a5,.L907
	li	a5,0
	j	.L912
.L907:
	lw	a4,28(sp)
	lw	a5,20(sp)
	ble	a4,a5,.L909
	li	a5,2
	j	.L912
.L909:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bgeu	a4,a5,.L910
	li	a5,0
	j	.L912
.L910:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bleu	a4,a5,.L911
	li	a5,2
	j	.L912
.L911:
	li	a5,1
.L912:
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
	bge	a4,a5,.L918
	li	a5,0
	j	.L923
.L918:
	ld	a4,56(sp)
	ld	a5,40(sp)
	ble	a4,a5,.L920
	li	a5,2
	j	.L923
.L920:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bgeu	a4,a5,.L921
	li	a5,0
	j	.L923
.L921:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bleu	a4,a5,.L922
	li	a5,2
	j	.L923
.L922:
	li	a5,1
.L923:
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	mv	a5,a0
	sw	a0,12(sp)
	lw	a5,12(sp)
	sw	a5,76(sp)
	lw	a5,76(sp)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a5,a5
	bne	a5,zero,.L926
	li	a5,16
	j	.L927
.L926:
	li	a5,0
.L927:
	sw	a5,72(sp)
	lw	a5,72(sp)
	lw	a4,76(sp)
	srlw	a5,a4,a5
	sw	a5,68(sp)
	lw	a5,72(sp)
	sw	a5,64(sp)
	lw	a5,68(sp)
	andi	a5,a5,255
	sext.w	a5,a5
	bne	a5,zero,.L928
	li	a5,8
	j	.L929
.L928:
	li	a5,0
.L929:
	sw	a5,60(sp)
	lw	a5,60(sp)
	lw	a4,68(sp)
	srlw	a5,a4,a5
	sw	a5,56(sp)
	lw	a5,60(sp)
	lw	a4,64(sp)
	addw	a5,a4,a5
	sw	a5,52(sp)
	lw	a5,56(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	bne	a5,zero,.L930
	li	a5,4
	j	.L931
.L930:
	li	a5,0
.L931:
	sw	a5,48(sp)
	lw	a5,48(sp)
	lw	a4,56(sp)
	srlw	a5,a4,a5
	sw	a5,44(sp)
	lw	a5,48(sp)
	lw	a4,52(sp)
	addw	a5,a4,a5
	sw	a5,40(sp)
	lw	a5,44(sp)
	andi	a5,a5,3
	sext.w	a5,a5
	bne	a5,zero,.L932
	li	a5,2
	j	.L933
.L932:
	li	a5,0
.L933:
	sw	a5,36(sp)
	lw	a5,36(sp)
	lw	a4,44(sp)
	srlw	a5,a4,a5
	sw	a5,32(sp)
	lw	a5,32(sp)
	andi	a5,a5,3
	sw	a5,28(sp)
	lw	a5,36(sp)
	lw	a4,40(sp)
	addw	a5,a4,a5
	sw	a5,24(sp)
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
	lw	a4,24(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,80
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
	bne	a5,zero,.L940
	ld	a5,24(sp)
	bne	a5,zero,.L941
	li	a5,0
	j	.L943
.L941:
	ld	a5,24(sp)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,65
	sext.w	a5,a5
	j	.L943
.L940:
	ld	a5,16(sp)
	mv	a0,a5
	call	__ctzdi2
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
.L943:
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
	beq	a5,zero,.L946
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
	j	.L947
.L946:
	lw	a5,4(sp)
	sext.w	a5,a5
	bne	a5,zero,.L948
	ld	a5,8(sp)
	j	.L950
.L948:
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
.L947:
	ld	a5,24(sp)
.L950:
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
	beq	a5,zero,.L953
	sd	zero,40(sp)
	ld	a5,56(sp)
	lw	a4,12(sp)
	mv	a3,a4
	lw	a4,76(sp)
	subw	a4,a3,a4
	sext.w	a4,a4
	srl	a5,a5,a4
	sd	a5,32(sp)
	j	.L954
.L953:
	lw	a5,12(sp)
	sext.w	a5,a5
	bne	a5,zero,.L955
	ld	a4,16(sp)
	ld	a5,24(sp)
	j	.L957
.L955:
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
.L954:
	ld	a2,32(sp)
	ld	a3,40(sp)
	mv	a4,a2
	mv	a5,a3
.L957:
	mv	a0,a4
	mv	a1,a5
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
	sw	a5,16(sp)
	lw	a5,16(sp)
	lw	a4,44(sp)
	srlw	a5,a5,a4
	sw	a5,36(sp)
	lw	a5,16(sp)
	lw	a4,40(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,16(sp)
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
	sw	a5,32(sp)
	lw	a4,16(sp)
	lw	a5,32(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,44(sp)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,16(sp)
	lw	a5,44(sp)
	lw	a4,32(sp)
	srlw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,20(sp)
	lw	a5,16(sp)
	lw	a4,44(sp)
	srlw	a5,a5,a4
	sw	a5,28(sp)
	lw	a5,16(sp)
	lw	a4,40(sp)
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,16(sp)
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
	lw	a4,28(sp)
	addw	a5,a4,a5
	sw	a5,24(sp)
	lw	a4,16(sp)
	lw	a5,24(sp)
	mv	a3,a5
	lw	a5,40(sp)
	and	a5,a3,a5
	sext.w	a5,a5
	lw	a3,44(sp)
	sllw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,16(sp)
	lw	a5,20(sp)
	mv	a4,a5
	lw	a5,44(sp)
	lw	a3,24(sp)
	srlw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
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
	sw	a5,20(sp)
	ld	a5,16(sp)
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	a0,8(sp)
	sd	a1,0(sp)
	li	a5,32
	sw	a5,76(sp)
	lw	a5,76(sp)
	mv	a4,a5
	li	a5,-1
	srl	a5,a5,a4
	sd	a5,64(sp)
	ld	a4,8(sp)
	ld	a5,64(sp)
	and	a4,a4,a5
	ld	a3,0(sp)
	ld	a5,64(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	sd	a5,16(sp)
	ld	a5,16(sp)
	lw	a4,76(sp)
	srl	a5,a5,a4
	sd	a5,56(sp)
	ld	a4,16(sp)
	ld	a5,64(sp)
	and	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,76(sp)
	mv	a4,a5
	ld	a5,8(sp)
	srl	a4,a5,a4
	ld	a3,0(sp)
	ld	a5,64(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,56(sp)
	add	a5,a4,a5
	sd	a5,48(sp)
	ld	a4,16(sp)
	ld	a3,48(sp)
	ld	a5,64(sp)
	and	a5,a3,a5
	lw	a3,76(sp)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,76(sp)
	mv	a4,a5
	ld	a5,48(sp)
	srl	a5,a5,a4
	sd	a5,24(sp)
	ld	a5,16(sp)
	lw	a4,76(sp)
	srl	a5,a5,a4
	sd	a5,40(sp)
	ld	a4,16(sp)
	ld	a5,64(sp)
	and	a5,a4,a5
	sd	a5,16(sp)
	lw	a5,76(sp)
	mv	a4,a5
	ld	a5,0(sp)
	srl	a4,a5,a4
	ld	a3,8(sp)
	ld	a5,64(sp)
	and	a5,a3,a5
	mul	a5,a4,a5
	ld	a4,40(sp)
	add	a5,a4,a5
	sd	a5,32(sp)
	ld	a4,16(sp)
	ld	a3,32(sp)
	ld	a5,64(sp)
	and	a5,a3,a5
	lw	a3,76(sp)
	sll	a5,a5,a3
	add	a5,a4,a5
	sd	a5,16(sp)
	ld	a5,24(sp)
	mv	a4,a5
	lw	a5,76(sp)
	mv	a3,a5
	ld	a5,32(sp)
	srl	a5,a5,a3
	add	a5,a4,a5
	sd	a5,24(sp)
	ld	a5,24(sp)
	mv	a3,a5
	lw	a5,76(sp)
	mv	a4,a5
	ld	a5,8(sp)
	srl	a4,a5,a4
	lw	a5,76(sp)
	mv	a2,a5
	ld	a5,0(sp)
	srl	a5,a5,a2
	mul	a5,a4,a5
	add	a5,a3,a5
	sd	a5,24(sp)
	ld	a4,16(sp)
	ld	a5,24(sp)
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,80
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
	mv	a0,a4
	mv	a1,a5
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
	ld	a1,0(sp)
	ld	a2,8(sp)
	li	a4,0
	li	a0,0
	sub	a3,a4,a1
	mv	a5,a3
	sgtu	a5,a5,a4
	slli	a4,a5,32
	srli	a4,a4,32
	sub	a5,a0,a2
	sub	a5,a5,a4
	mv	a1,a3
	mv	a2,a5
	mv	a4,a1
	mv	a5,a2
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,24(sp)
	lw	a5,28(sp)
	mv	a4,a5
	lw	a5,24(sp)
	xor	a5,a4,a5
	sw	a5,44(sp)
	lw	a5,44(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,44(sp)
	xor	a5,a4,a5
	sw	a5,40(sp)
	lw	a5,40(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,40(sp)
	xor	a5,a4,a5
	sw	a5,36(sp)
	lw	a5,36(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,36(sp)
	xor	a5,a4,a5
	sw	a5,32(sp)
	lw	a5,32(sp)
	andi	a5,a5,15
	sext.w	a5,a5
	li	a4,28672
	addiw	a4,a4,-1642
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,48
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
	sw	a5,56(sp)
	lw	a5,56(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,56(sp)
	xor	a5,a4,a5
	sw	a5,52(sp)
	lw	a5,52(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,52(sp)
	xor	a5,a4,a5
	sw	a5,48(sp)
	lw	a5,48(sp)
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
	sw	a5,24(sp)
	lw	a5,24(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,24(sp)
	xor	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,20(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,20(sp)
	xor	a5,a4,a5
	sw	a5,16(sp)
	lw	a5,16(sp)
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	a0,8(sp)
	ld	a5,8(sp)
	sd	a5,56(sp)
	ld	a5,56(sp)
	srli	a4,a5,1
	lui	a5,%hi(.LC15)
	ld	a5,%lo(.LC15)(a5)
	and	a5,a4,a5
	ld	a4,56(sp)
	sub	a5,a4,a5
	sd	a5,48(sp)
	ld	a5,48(sp)
	srli	a4,a5,2
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a4,a4,a5
	ld	a3,48(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a5,a3,a5
	add	a5,a4,a5
	sd	a5,40(sp)
	ld	a5,40(sp)
	srli	a4,a5,4
	ld	a5,40(sp)
	add	a4,a4,a5
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a4,a5
	sd	a5,32(sp)
	ld	a5,32(sp)
	sext.w	a4,a5
	ld	a5,32(sp)
	srli	a5,a5,32
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,28(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,28(sp)
	addw	a5,a4,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,24(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,127
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,64
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	mv	a5,a0
	sw	a5,12(sp)
	lw	a5,12(sp)
	sw	a5,44(sp)
	lw	a5,44(sp)
	srliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	sext.w	a5,a5
	lw	a4,44(sp)
	subw	a5,a4,a5
	sw	a5,40(sp)
	lw	a5,40(sp)
	srliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sext.w	a4,a5
	lw	a5,40(sp)
	mv	a3,a5
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,36(sp)
	lw	a5,36(sp)
	srliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,36(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,252645376
	addi	a5,a5,-241
	and	a5,a4,a5
	sw	a5,32(sp)
	lw	a5,32(sp)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,32(sp)
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
	addi	sp,sp,48
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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	a0,0(sp)
	sd	a1,8(sp)
	ld	a5,0(sp)
	sd	a5,80(sp)
	ld	a5,8(sp)
	sd	a5,88(sp)
	ld	a5,88(sp)
	slli	a4,a5,63
	ld	a5,80(sp)
	srli	a5,a5,1
	or	a5,a4,a5
	ld	a4,88(sp)
	srli	a4,a4,1
	lui	a3,%hi(.LC15)
	ld	a3,%lo(.LC15)(a3)
	and	a0,a5,a3
	lui	a5,%hi(.LC15)
	ld	a5,%lo(.LC15)(a5)
	and	a2,a4,a5
	ld	a4,80(sp)
	ld	a1,88(sp)
	sub	a3,a4,a0
	mv	a5,a3
	sgtu	a5,a5,a4
	slli	a4,a5,32
	srli	a4,a4,32
	sub	a5,a1,a2
	sub	a5,a5,a4
	sd	a3,64(sp)
	sd	a5,72(sp)
	ld	a5,72(sp)
	slli	a4,a5,62
	ld	a5,64(sp)
	srli	a5,a5,2
	or	a5,a4,a5
	ld	a4,72(sp)
	srli	a4,a4,2
	lui	a3,%hi(.LC16)
	ld	a3,%lo(.LC16)(a3)
	and	a3,a5,a3
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a1,a4,a5
	ld	a4,64(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a0,a4,a5
	ld	a4,72(sp)
	lui	a5,%hi(.LC16)
	ld	a5,%lo(.LC16)(a5)
	and	a2,a4,a5
	add	a4,a3,a0
	mv	a5,a4
	sltu	a5,a5,a3
	slli	a3,a5,32
	srli	a3,a3,32
	add	a5,a1,a2
	add	a5,a3,a5
	sd	a4,48(sp)
	sd	a5,56(sp)
	ld	a5,56(sp)
	slli	a4,a5,60
	ld	a5,48(sp)
	srli	a5,a5,4
	or	a5,a4,a5
	ld	a4,56(sp)
	srli	a1,a4,4
	ld	a0,48(sp)
	ld	a2,56(sp)
	add	a3,a5,a0
	mv	a4,a3
	sltu	a5,a4,a5
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a2
	add	a5,a5,a4
	mv	a4,a5
	mv	a1,a3
	mv	a2,a4
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a1,a5
	sd	a5,32(sp)
	lui	a5,%hi(.LC17)
	ld	a5,%lo(.LC17)(a5)
	and	a5,a2,a5
	sd	a5,40(sp)
	ld	a5,32(sp)
	ld	a4,40(sp)
	srli	a4,a4,0
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
	sw	a5,16(sp)
	lw	a5,16(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,16(sp)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	mv	a0,a5
	addi	sp,sp,96
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
.L999:
	lw	a5,4(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L996
	fld	fa4,24(sp)
	fld	fa5,8(sp)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,24(sp)
.L996:
	lw	a5,4(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1004
	fld	fa5,8(sp)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,8(sp)
	j	.L999
.L1004:
	nop
	lw	a5,20(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1000
	lui	a5,%hi(.LC13)
	fld	fa4,%lo(.LC13)(a5)
	fld	fa5,24(sp)
	fdiv.d	fa5,fa4,fa5
	j	.L1002
.L1000:
	fld	fa5,24(sp)
.L1002:
	nop
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
.L1010:
	lw	a5,8(sp)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L1007
	flw	fa4,28(sp)
	flw	fa5,12(sp)
	fmul.s	fa5,fa4,fa5
	fsw	fa5,28(sp)
.L1007:
	lw	a5,8(sp)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,8(sp)
	lw	a5,8(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1015
	flw	fa5,12(sp)
	fmul.s	fa5,fa5,fa5
	fsw	fa5,12(sp)
	j	.L1010
.L1015:
	nop
	lw	a5,24(sp)
	sext.w	a5,a5
	beq	a5,zero,.L1011
	lui	a5,%hi(.LC18)
	flw	fa4,%lo(.LC18)(a5)
	flw	fa5,28(sp)
	fdiv.s	fa5,fa4,fa5
	j	.L1013
.L1011:
	flw	fa5,28(sp)
.L1013:
	nop
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
	bgeu	a4,a5,.L1018
	li	a5,0
	j	.L1023
.L1018:
	lw	a4,28(sp)
	lw	a5,20(sp)
	bleu	a4,a5,.L1020
	li	a5,2
	j	.L1023
.L1020:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bgeu	a4,a5,.L1021
	li	a5,0
	j	.L1023
.L1021:
	lw	a4,24(sp)
	lw	a5,16(sp)
	bleu	a4,a5,.L1022
	li	a5,2
	j	.L1023
.L1022:
	li	a5,1
.L1023:
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
	bgeu	a4,a5,.L1029
	li	a5,0
	j	.L1034
.L1029:
	ld	a4,56(sp)
	ld	a5,40(sp)
	bleu	a4,a5,.L1031
	li	a5,2
	j	.L1034
.L1031:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bgeu	a4,a5,.L1032
	li	a5,0
	j	.L1034
.L1032:
	ld	a4,48(sp)
	ld	a5,32(sp)
	bleu	a4,a5,.L1033
	li	a5,2
	j	.L1034
.L1033:
	li	a5,1
.L1034:
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
