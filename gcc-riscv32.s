	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32e2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 4
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	bleu	a0,a1,.L2
	add	a5,a1,a2
	add	a2,a0,a2
	j	.L3
.L4:
	addi	a5,a5,-1
	addi	a2,a2,-1
	lbu	a4,0(a5)
	sb	a4,0(a2)
.L3:
	bne	a5,a1,.L4
	j	.L5
.L2:
	beq	a0,a1,.L5
	add	a3,a0,a2
	mv	a5,a1
	mv	a2,a0
	j	.L6
.L7:
	addi	a5,a5,1
	addi	a2,a2,1
	lbu	a4,-1(a5)
	sb	a4,-1(a2)
.L6:
	bne	a2,a3,.L7
.L5:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	andi	a2,a2,0xff
	mv	a5,a0
	j	.L9
.L11:
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a5,a5,1
.L9:
	beq	a3,zero,.L10
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a2,a4,.L11
.L10:
	li	a0,0
	beq	a3,zero,.L12
	addi	a0,a5,1
.L12:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	andi	a1,a1,0xff
	j	.L15
.L17:
	addi	a0,a0,1
	addi	a2,a2,-1
.L15:
	beq	a2,zero,.L16
	lbu	a5,0(a0)
	bne	a1,a5,.L17
.L16:
	snez	a2,a2
	neg	a2,a2
	and	a0,a0,a2
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	j	.L21
.L23:
	addi	a2,a2,-1
	addi	a5,a5,1
	addi	a1,a1,1
.L21:
	beq	a2,zero,.L22
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	beq	a3,a4,.L23
.L22:
	li	a0,0
	beq	a2,zero,.L24
	lbu	a0,0(a5)
	lbu	a5,0(a1)
	sub	a0,a0,a5
.L24:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	add	a2,a0,a2
	mv	a5,a0
	j	.L27
.L28:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
.L27:
	bne	a5,a2,.L28
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	andi	a1,a1,0xff
	addi	a2,a2,-1
	li	a3,-1
	j	.L30
.L32:
	add	a5,a0,a2
	lbu	a5,0(a5)
	addi	a4,a2,-1
	bne	a1,a5,.L33
	add	a0,a0,a2
	j	.L31
.L33:
	mv	a2,a4
.L30:
	bne	a2,a3,.L32
	li	a0,0
.L31:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	add	a2,a0,a2
	mv	a5,a0
	andi	a1,a1,0xff
	j	.L35
.L36:
	sb	a1,0(a5)
	addi	a5,a5,1
.L35:
	bne	a5,a2,.L36
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	j	.L38
.L39:
	addi	a1,a1,1
	addi	a0,a0,1
.L38:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L39
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	andi	a1,a1,0xff
	j	.L41
.L43:
	addi	a0,a0,1
.L41:
	lbu	a5,0(a0)
	beq	a5,zero,.L42
	bne	a1,a5,.L43
.L42:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
.L46:
	lbu	a5,0(a0)
	beq	a1,a5,.L45
	addi	a0,a0,1
	lbu	a5,-1(a0)
	bne	a5,zero,.L46
	li	a0,0
.L45:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	j	.L50
.L52:
	addi	a0,a0,1
	addi	a1,a1,1
.L50:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L51
	bne	a4,zero,.L52
.L51:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	j	.L54
.L55:
	addi	a5,a5,1
.L54:
	lbu	a4,0(a5)
	bne	a4,zero,.L55
	sub	a0,a5,a0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	beq	a2,zero,.L57
	addi	a2,a2,-1
	add	a4,a5,a2
	mv	a0,a5
	j	.L58
.L60:
	addi	a0,a0,1
	addi	a1,a1,1
.L58:
	lbu	a5,0(a0)
	beq	a5,zero,.L59
	lbu	a5,0(a1)
	beq	a5,zero,.L59
	beq	a0,a4,.L59
	lbu	a3,0(a0)
	beq	a3,a5,.L60
.L59:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
.L57:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	add	a2,a0,a2
	li	a3,1
	j	.L63
.L64:
	lbu	a4,1(a5)
	sb	a4,0(a1)
	lbu	a4,0(a5)
	sb	a4,1(a1)
	addi	a1,a1,2
	addi	a5,a5,2
.L63:
	sub	a4,a2,a5
	bgt	a4,a3,.L64
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,26
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	sltiu	a0,a0,128
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,32
	li	a0,1
	beq	a5,a4,.L68
	addi	a5,a5,-9
	seqz	a0,a5
.L68:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,31
	li	a0,1
	bleu	a5,a4,.L72
	addi	a5,a5,-127
	seqz	a0,a5
.L72:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-48
	sltiu	a0,a0,10
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-33
	sltiu	a0,a0,94
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-97
	sltiu	a0,a0,26
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-32
	sltiu	a0,a0,95
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,32
	li	a0,1
	beq	a5,a4,.L80
	addi	a5,a5,-9
	sltiu	a0,a5,5
.L80:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-65
	sltiu	a0,a0,26
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,31
	li	a0,1
	bleu	a5,a4,.L85
	addi	a4,a5,-127
	li	a3,32
	bleu	a4,a3,.L85
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L85
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
.L85:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a0,a0,-48
	sltiu	a0,a0,10
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,254
	bgtu	a0,a4,.L92
	addi	a0,a0,1
	andi	a0,a0,127
	sltiu	a0,a0,33
	xori	a0,a0,1
	j	.L93
.L92:
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L93
	li	a4,-8192
	addi	a4,a4,-42
	add	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L93
	li	a3,-57344
	add	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L93
	li	a4,-65536
	addi	a4,a4,4
	add	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L93
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L93:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	addi	a3,a0,-48
	li	a4,9
	li	a0,1
	bleu	a3,a4,.L100
	ori	a5,a5,32
	addi	a5,a5,-97
	sltiu	a0,a5,6
.L100:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	andi	a0,a0,127
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a2,-16(s0)
	sw	a3,-12(s0)
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L107
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__unorddf2
	bne	a0,zero,.L108
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gtdf2
	ble	a0,zero,.L111
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__subdf3
	j	.L105
.L107:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L105
.L108:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L105
.L111:
	li	a0,0
	li	a1,0
.L105:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a1
	sw	a0,-16(s0)
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L115
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L116
	mv	a1,s1
	lw	a0,-16(s0)
	call	__gtsf2
	ble	a0,zero,.L119
	mv	a1,s1
	lw	a0,-16(s0)
	call	__subsf3
	j	.L113
.L115:
	lw	a0,-16(s0)
	j	.L113
.L116:
	mv	a0,s1
	j	.L113
.L119:
	mv	a0,zero
.L113:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a2,-16(s0)
	sw	a3,-12(s0)
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L124
	lw	t1,-16(s0)
	lw	t2,-12(s0)
	mv	a2,t1
	mv	a3,t2
	mv	a0,t1
	mv	a1,t2
	call	__unorddf2
	bne	a0,zero,.L125
	li	a5,-2147483648
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	and	a4,a5,a2
	lw	t1,-16(s0)
	lw	t2,-12(s0)
	and	a5,a5,t2
	beq	a4,a5,.L122
	mv	a0,a1
	mv	a1,a2
	bge	a2,zero,.L121
	mv	a0,t1
	mv	a1,t2
	j	.L121
.L122:
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	blt	a5,zero,.L121
	j	.L129
.L124:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L121
.L125:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L121
.L129:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
.L121:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a1
	sw	a0,-16(s0)
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L134
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L135
	li	a5,-2147483648
	lw	a3,-16(s0)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L132
	mv	a0,a3
	bge	a3,zero,.L131
	mv	a0,s1
	j	.L131
.L132:
	mv	a1,s1
	lw	a0,-16(s0)
	call	__ltsf2
	mv	a5,a0
	mv	a0,s1
	blt	a5,zero,.L131
	j	.L139
.L134:
	mv	a0,s1
	j	.L131
.L135:
	lw	a0,-16(s0)
	j	.L131
.L139:
	lw	a0,-16(s0)
.L131:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,76
	.cfi_def_cfa 8, 0
	mv	s1,a0
	lw	a5,0(a1)
	sw	a5,-60(s0)
	lw	a5,4(a1)
	sw	a5,-56(s0)
	lw	a5,8(a1)
	sw	a5,-52(s0)
	lw	a5,12(a1)
	sw	a5,-48(s0)
	lw	a5,0(a2)
	sw	a5,-76(s0)
	lw	a5,4(a2)
	sw	a5,-72(s0)
	lw	a5,8(a2)
	sw	a5,-68(s0)
	lw	a5,12(a2)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	sw	a5,-16(s0)
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a5,-48(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__unordtf2
	beq	a0,zero,.L155
	lw	a5,-76(s0)
	sw	a5,0(s1)
	lw	a5,-72(s0)
	sw	a5,4(s1)
	lw	a5,-68(s0)
	sw	a5,8(s1)
	lw	a5,-64(s0)
	sw	a5,12(s1)
	j	.L140
.L155:
	lw	a5,-76(s0)
	sw	a5,-28(s0)
	lw	a5,-72(s0)
	sw	a5,-24(s0)
	lw	a5,-68(s0)
	sw	a5,-20(s0)
	lw	a5,-64(s0)
	sw	a5,-16(s0)
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__unordtf2
	beq	a0,zero,.L156
	lw	a5,-60(s0)
	sw	a5,0(s1)
	lw	a5,-56(s0)
	sw	a5,4(s1)
	lw	a5,-52(s0)
	sw	a5,8(s1)
	lw	a5,-48(s0)
	sw	a5,12(s1)
	j	.L140
.L156:
	li	a5,-2147483648
	lw	a4,-48(s0)
	and	a4,a5,a4
	lw	a3,-64(s0)
	and	a5,a5,a3
	beq	a4,a5,.L146
	lw	a5,-48(s0)
	bge	a5,zero,.L150
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	j	.L147
.L150:
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
.L147:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	j	.L140
.L146:
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	sw	a5,-16(s0)
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__lttf2
	bge	a0,zero,.L157
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	j	.L148
.L157:
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
.L148:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L140:
	mv	a0,s1
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 76
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a2,-16(s0)
	sw	a3,-12(s0)
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L162
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L163
	li	a5,-2147483648
	lw	t1,-24(s0)
	lw	t2,-20(s0)
	and	a4,a5,t2
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	and	a5,a5,a1
	beq	a4,a5,.L160
	bge	t2,zero,.L159
	mv	a0,t1
	mv	a1,t2
	j	.L159
.L160:
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	mv	a5,a0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	blt	a5,zero,.L159
	j	.L167
.L162:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L159
.L163:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L159
.L167:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
.L159:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a1
	sw	a0,-16(s0)
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L172
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L173
	li	a5,-2147483648
	lw	a3,-16(s0)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L170
	mv	a0,s1
	bge	a3,zero,.L169
	mv	a0,a3
	j	.L169
.L170:
	mv	a1,s1
	lw	a0,-16(s0)
	call	__ltsf2
	mv	a5,a0
	lw	a0,-16(s0)
	blt	a5,zero,.L169
	j	.L177
.L172:
	mv	a0,s1
	j	.L169
.L173:
	lw	a0,-16(s0)
	j	.L169
.L177:
	mv	a0,s1
.L169:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,76
	.cfi_def_cfa 8, 0
	mv	s1,a0
	lw	a5,0(a1)
	sw	a5,-60(s0)
	lw	a5,4(a1)
	sw	a5,-56(s0)
	lw	a5,8(a1)
	sw	a5,-52(s0)
	lw	a5,12(a1)
	sw	a5,-48(s0)
	lw	a5,0(a2)
	sw	a5,-76(s0)
	lw	a5,4(a2)
	sw	a5,-72(s0)
	lw	a5,8(a2)
	sw	a5,-68(s0)
	lw	a5,12(a2)
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	sw	a5,-16(s0)
	lw	a5,-60(s0)
	sw	a5,-44(s0)
	lw	a5,-56(s0)
	sw	a5,-40(s0)
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	lw	a5,-48(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__unordtf2
	beq	a0,zero,.L193
	lw	a5,-76(s0)
	sw	a5,0(s1)
	lw	a5,-72(s0)
	sw	a5,4(s1)
	lw	a5,-68(s0)
	sw	a5,8(s1)
	lw	a5,-64(s0)
	sw	a5,12(s1)
	j	.L178
.L193:
	lw	a5,-76(s0)
	sw	a5,-28(s0)
	lw	a5,-72(s0)
	sw	a5,-24(s0)
	lw	a5,-68(s0)
	sw	a5,-20(s0)
	lw	a5,-64(s0)
	sw	a5,-16(s0)
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__unordtf2
	beq	a0,zero,.L194
	lw	a5,-60(s0)
	sw	a5,0(s1)
	lw	a5,-56(s0)
	sw	a5,4(s1)
	lw	a5,-52(s0)
	sw	a5,8(s1)
	lw	a5,-48(s0)
	sw	a5,12(s1)
	j	.L178
.L194:
	li	a5,-2147483648
	lw	a4,-48(s0)
	and	a4,a5,a4
	lw	a3,-64(s0)
	and	a5,a5,a3
	beq	a4,a5,.L184
	lw	a5,-48(s0)
	bge	a5,zero,.L188
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	j	.L185
.L188:
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
.L185:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	j	.L178
.L184:
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	sw	a5,-16(s0)
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__lttf2
	bge	a0,zero,.L195
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	j	.L186
.L195:
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
.L186:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L178:
	mv	a0,s1
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 76
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(digits)
	j	.L197
.L198:
	andi	a3,a0,63
	addi	a5,a2,%lo(digits)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
.L197:
	bne	a0,zero,.L198
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a4,a0,-1
	li	a5,0
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	lui	s1,%hi(seed)
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	lw	a0,%lo(seed)(s1)
	lw	a1,%lo(seed+4)(s1)
	call	__muldi3
	addi	a4,a0,1
	sltu	a3,a4,a0
	add	a5,a3,a1
	sw	a4,%lo(seed)(s1)
	sw	a5,%lo(seed+4)(s1)
	srli	a0,a5,1
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	bne	a1,zero,.L202
	sw	zero,4(a0)
	sw	zero,0(a0)
	j	.L201
.L202:
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L201
	sw	a0,4(a5)
.L201:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	lw	a5,0(a0)
	beq	a5,zero,.L205
	lw	a4,4(a0)
	sw	a4,4(a5)
.L205:
	lw	a5,4(a0)
	beq	a5,zero,.L204
	lw	a4,0(a0)
	sw	a4,0(a5)
.L204:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,40
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-36(s0)
	sw	a2,-40(s0)
	sw	a3,-24(s0)
	sw	a4,-32(s0)
	lw	a4,0(a2)
	sw	a4,-20(s0)
	sw	a1,-16(s0)
	li	s1,0
	j	.L208
.L211:
	lw	a1,-16(s0)
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	bne	a0,zero,.L209
	mv	a1,a4
	mv	a0,s1
	call	__mulsi3
	lw	a5,-36(s0)
	add	a0,a5,a0
	j	.L210
.L209:
	addi	s1,s1,1
.L208:
	lw	a5,-20(s0)
	bne	s1,a5,.L211
	mv	a1,a5
	addi	a5,a5,1
	lw	a4,-40(s0)
	sw	a5,0(a4)
	lw	s1,-24(s0)
	mv	a0,s1
	call	__mulsi3
	mv	a2,s1
	lw	a1,-28(s0)
	lw	a5,-36(s0)
	add	a0,a5,a0
	call	memcpy
.L210:
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 40
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-36(s0)
	sw	a3,-24(s0)
	sw	a4,-32(s0)
	lw	a4,0(a2)
	sw	a4,-20(s0)
	sw	a1,-16(s0)
	li	s1,0
	j	.L213
.L216:
	lw	a1,-16(s0)
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	bne	a0,zero,.L214
	mv	a1,a4
	mv	a0,s1
	call	__mulsi3
	lw	a5,-36(s0)
	add	a0,a5,a0
	j	.L215
.L214:
	addi	s1,s1,1
.L213:
	lw	a5,-20(s0)
	bne	s1,a5,.L216
	li	a0,0
.L215:
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	s1,a0
	j	.L219
.L220:
	addi	s1,s1,1
.L219:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L220
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L226
	li	a4,45
	li	a2,0
	bne	a5,a4,.L222
	li	a2,1
	j	.L221
.L226:
	li	a2,0
.L221:
	addi	s1,s1,1
.L222:
	li	a5,0
	li	a3,9
	j	.L223
.L224:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s1,s1,1
	lbu	a5,-1(s1)
	addi	a5,a5,-48
	sub	a5,a4,a5
.L223:
	lbu	a4,0(s1)
	addi	a4,a4,-48
	bleu	a4,a3,.L224
	mv	a0,a5
	bne	a2,zero,.L225
	neg	a0,a5
.L225:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	s1,a0
	j	.L230
.L231:
	addi	s1,s1,1
.L230:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L231
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L237
	li	a4,45
	li	a2,0
	bne	a5,a4,.L233
	li	a2,1
	j	.L232
.L237:
	li	a2,0
.L232:
	addi	s1,s1,1
.L233:
	li	a5,0
	li	a3,9
	j	.L234
.L235:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s1,s1,1
	lbu	a5,-1(s1)
	addi	a5,a5,-48
	sub	a5,a4,a5
.L234:
	lbu	a4,0(s1)
	addi	a4,a4,-48
	bleu	a4,a3,.L235
	mv	a0,a5
	bne	a2,zero,.L236
	neg	a0,a5
.L236:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	mv	s1,a0
	j	.L241
.L242:
	addi	s1,s1,1
.L241:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L242
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L248
	li	a4,45
	li	t1,0
	bne	a5,a4,.L244
	li	t1,1
	j	.L243
.L248:
	li	t1,0
.L243:
	addi	s1,s1,1
.L244:
	li	a2,0
	li	a3,0
	li	a1,9
	mv	t0,t1
	j	.L245
.L246:
	srli	a0,a2,30
	slli	t1,a3,2
	or	a0,a0,t1
	sw	a0,-24(s0)
	slli	a0,a2,2
	sw	a0,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	add	t1,a4,a2
	sltu	a0,t1,a4
	add	t2,a5,a3
	add	t2,a0,t2
	srli	a3,t1,31
	slli	a5,t2,1
	or	a5,a3,a5
	sw	a5,-16(s0)
	slli	a5,t1,1
	sw	a5,-20(s0)
	addi	s1,s1,1
	lbu	a3,-1(s1)
	addi	a3,a3,-48
	sw	a3,-36(s0)
	srai	a5,a3,31
	sw	a5,-32(s0)
	lw	t1,-36(s0)
	lw	t2,-32(s0)
	lw	a4,-20(s0)
	sub	a2,a4,t1
	sgtu	a0,a2,a4
	lw	a4,-16(s0)
	sub	a3,a4,t2
	sub	a3,a3,a0
.L245:
	lbu	a0,0(s1)
	addi	a0,a0,-48
	bleu	a0,a1,.L246
	mv	a0,a2
	mv	a1,a3
	bne	t0,zero,.L247
	neg	a0,a2
	snez	a5,a0
	neg	a1,a3
	sub	a1,a1,a5
.L247:
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a1,-16(s0)
	mv	s1,a2
	sw	a3,-20(s0)
	sw	a4,-32(s0)
	j	.L252
.L256:
	lw	a1,-20(s0)
	srli	a0,s1,1
	call	__mulsi3
	lw	a5,-16(s0)
	add	a5,a5,a0
	sw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	bge	a0,zero,.L253
	srli	s1,s1,1
	j	.L252
.L253:
	ble	a0,zero,.L257
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	srli	a5,s1,1
	addi	s1,s1,-1
	sub	s1,s1,a5
.L252:
	bne	s1,zero,.L256
	li	a0,0
	j	.L255
.L257:
	lw	a0,-24(s0)
.L255:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	sw	a0,-28(s0)
	sw	a3,-24(s0)
	sw	a4,-32(s0)
	sw	a5,-36(s0)
	mv	s1,a2
	sw	a1,-20(s0)
	j	.L259
.L262:
	lw	a1,-24(s0)
	srai	a0,s1,1
	call	__mulsi3
	lw	a5,-20(s0)
	add	a5,a5,a0
	lw	a2,-36(s0)
	sw	a5,-16(s0)
	mv	a1,a5
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	beq	a0,zero,.L263
	ble	a0,zero,.L261
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	addi	s1,s1,-1
.L261:
	srai	s1,s1,1
.L259:
	bne	s1,zero,.L262
	li	a0,0
	j	.L260
.L263:
	lw	a0,-16(s0)
.L260:
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	mv	s1,a1
	call	__divsi3
	sw	a0,-28(s0)
	mv	a1,s1
	lw	a0,-24(s0)
	call	__modsi3
	lw	a4,-28(s0)
	mv	a5,a0
	mv	a0,a4
	mv	a1,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srai	t1,a1,31
	xor	a2,t1,a0
	xor	a3,t1,a1
	sub	a0,a2,t1
	sgtu	a4,a0,a2
	sub	a1,a3,t1
	sub	a1,a1,a4
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	a0,a1
	mv	a1,a2
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	mv	a2,a3
	mv	a3,a4
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	call	__divdi3
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__moddi3
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sw	a4,0(s1)
	sw	a5,4(s1)
	sw	a0,8(s1)
	sw	a1,12(s1)
	mv	a0,s1
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a0,-24(s0)
	mv	s1,a1
	call	__divsi3
	sw	a0,-28(s0)
	mv	a1,s1
	lw	a0,-24(s0)
	call	__modsi3
	lw	a4,-28(s0)
	mv	a5,a0
	mv	a0,a4
	mv	a1,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srai	t1,a1,31
	xor	a2,t1,a0
	xor	a3,t1,a1
	sub	a0,a2,t1
	sgtu	a4,a0,a2
	sub	a1,a3,t1
	sub	a1,a1,a4
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	a0,a1
	mv	a1,a2
	sw	a3,-28(s0)
	sw	a4,-24(s0)
	mv	a2,a3
	mv	a3,a4
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	call	__divdi3
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__moddi3
	lw	a4,-36(s0)
	lw	a5,-32(s0)
	sw	a4,0(s1)
	sw	a5,4(s1)
	sw	a0,8(s1)
	sw	a1,12(s1)
	mv	a0,s1
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	j	.L272
.L274:
	addi	a0,a0,4
.L272:
	lw	a5,0(a0)
	beq	a5,zero,.L273
	bne	a1,a5,.L274
.L273:
	lw	a5,0(a0)
	snez	a5,a5
	neg	a5,a5
	and	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	j	.L278
.L280:
	addi	a5,a5,4
	addi	a1,a1,4
.L278:
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L279
	beq	a3,zero,.L279
	lw	a4,0(a1)
	bne	a4,zero,.L280
.L279:
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L281
	sgt	a0,a3,a4
.L281:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
.L284:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L284
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	j	.L287
.L288:
	addi	a5,a5,4
.L287:
	lw	a4,0(a5)
	bne	a4,zero,.L288
	sub	a0,a5,a0
	srai	a0,a0,2
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	j	.L290
.L292:
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
.L290:
	beq	a2,zero,.L291
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L291
	beq	a3,zero,.L291
	lw	a4,0(a1)
	bne	a4,zero,.L292
.L291:
	li	a0,0
	beq	a2,zero,.L293
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L293
	sgt	a0,a3,a4
.L293:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	j	.L297
.L299:
	addi	a2,a2,-1
	addi	a0,a0,4
.L297:
	beq	a2,zero,.L298
	lw	a5,0(a0)
	bne	a1,a5,.L299
.L298:
	snez	a2,a2
	neg	a2,a2
	and	a0,a0,a2
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a3,a0
	j	.L303
.L305:
	addi	a2,a2,-1
	addi	a3,a3,4
	addi	a1,a1,4
.L303:
	beq	a2,zero,.L304
	lw	a4,0(a3)
	lw	a5,0(a1)
	beq	a4,a5,.L305
.L304:
	li	a0,0
	beq	a2,zero,.L306
	lw	a4,0(a3)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L306
	sgt	a0,a4,a5
.L306:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a3,-1
	j	.L310
.L311:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L310:
	addi	a2,a2,-1
	bne	a2,a3,.L311
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	beq	a0,a1,.L313
	sub	a5,a0,a1
	slli	a4,a2,2
	bgeu	a5,a4,.L318
	add	a1,a1,a4
	add	a5,a0,a4
	addi	a3,a0,-4
	j	.L315
.L316:
	lw	a4,0(a1)
	sw	a4,0(a5)
.L315:
	addi	a1,a1,-4
	addi	a5,a5,-4
	bne	a5,a3,.L316
	j	.L313
.L317:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	j	.L314
.L318:
	mv	a5,a0
	li	a3,-1
.L314:
	addi	a2,a2,-1
	bne	a2,a3,.L317
.L313:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a4,-1
	j	.L320
.L321:
	addi	a5,a5,4
	sw	a1,-4(a5)
.L320:
	addi	a2,a2,-1
	bne	a2,a4,.L321
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	bgeu	a0,a1,.L323
	add	a5,a0,a2
	add	a1,a1,a2
	j	.L324
.L325:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
.L324:
	bne	a5,a0,.L325
	j	.L322
.L323:
	beq	a0,a1,.L322
	add	a2,a1,a2
	mv	a5,a0
	j	.L327
.L328:
	addi	a5,a5,1
	addi	a1,a1,1
	lbu	a4,-1(a5)
	sb	a4,-1(a1)
.L327:
	bne	a1,a2,.L328
.L322:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a3,a2,-32
	blt	a3,zero,.L330
	li	a4,0
	sll	a5,a0,a3
	j	.L331
.L330:
	srli	a3,a0,1
	li	a5,31
	sub	a5,a5,a2
	srl	a3,a3,a5
	sll	a5,a1,a2
	or	a5,a3,a5
	sll	a4,a0,a2
.L331:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L332
	srl	t1,a1,a3
	li	t2,0
	j	.L333
.L332:
	slli	a3,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a3,a3,t1
	srl	t1,a0,a2
	or	t1,a3,t1
	srl	t2,a1,a2
.L333:
	or	a0,t1,a4
	or	a1,t2,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	addi	a3,a2,-32
	blt	a3,zero,.L335
	srl	a4,a1,a3
	li	a5,0
	j	.L336
.L335:
	slli	a3,a1,1
	li	a5,31
	sub	a5,a5,a2
	sll	a3,a3,a5
	srl	a4,a0,a2
	or	a4,a3,a4
	srl	a5,a1,a2
.L336:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L337
	li	t1,0
	sll	t2,a0,a3
	j	.L338
.L337:
	srli	a3,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a3,a3,t1
	sll	t2,a1,a2
	or	t2,a3,t2
	sll	t1,a0,a2
.L338:
	or	a0,t1,a4
	or	a1,t2,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	sll	a4,a0,a1
	li	a5,16
	sub	a5,a5,a1
	srl	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,16
	srli	a0,a0,16
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srl	a4,a0,a1
	li	a5,16
	sub	a5,a5,a1
	sll	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,16
	srli	a0,a0,16
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	sll	a4,a0,a1
	li	a5,8
	sub	a5,a5,a1
	srl	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srl	a4,a0,a1
	li	a5,8
	sub	a5,a5,a1
	sll	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	a5,a0,8
	andi	a0,a0,255
	slli	a0,a0,8
	or	a0,a5,a0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	a4,a0,24
	li	a5,16711680
	and	a5,a0,a5
	srli	a5,a5,8
	or	a5,a5,a4
	li	a4,65536
	addi	a4,a4,-256
	and	a4,a0,a4
	slli	a4,a4,8
	or	a5,a5,a4
	slli	a0,a0,24
	or	a0,a5,a0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	li	t0,-16777216
	and	a3,a1,t0
	srli	a4,a3,24
	li	s1,16711680
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	lw	a1,-16(s0)
	and	a3,a1,s1
	srli	a0,a3,8
	or	a5,a0,a4
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	li	a0,0
	li	a5,65536
	addi	t1,a5,-256
	lw	a5,-16(s0)
	and	a1,a5,t1
	slli	a3,a1,8
	srli	a4,a0,24
	or	a4,a3,a4
	srli	a5,a1,24
	lw	a3,-28(s0)
	or	a0,a3,a4
	mv	a1,a5
	li	a2,0
	lw	a5,-16(s0)
	andi	a3,a5,255
	slli	t2,a3,24
	srli	a4,a2,8
	or	a4,t2,a4
	srli	a5,a3,8
	or	a2,a0,a4
	or	a3,a1,a5
	lw	a5,-20(s0)
	and	a0,a5,t0
	srli	a5,a0,24
	slli	a4,a0,8
	or	a0,a2,a4
	or	a1,a3,a5
	lw	a3,-20(s0)
	and	a4,a3,s1
	srli	a3,a4,8
	slli	a2,a4,24
	or	a4,a0,a2
	or	a5,a1,a3
	lw	a1,-20(s0)
	and	a2,a1,t1
	slli	a1,a2,8
	or	a3,a5,a1
	lw	a5,-20(s0)
	andi	a0,a5,255
	slli	a5,a0,24
	mv	a0,a4
	or	a1,a3,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a5,0
	li	a3,32
	j	.L351
.L354:
	srl	a4,a0,a5
	andi	a4,a4,1
	beq	a4,zero,.L352
	addi	a0,a5,1
	j	.L353
.L352:
	addi	a5,a5,1
.L351:
	bne	a5,a3,.L354
	li	a0,0
.L353:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L356
	li	a0,1
	j	.L357
.L358:
	srai	a5,a5,1
	addi	a0,a0,1
.L357:
	andi	a4,a5,1
	beq	a4,zero,.L358
.L356:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	s1,a0
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	call	__ltsf2
	mv	a5,a0
	li	a0,1
	blt	a5,zero,.L361
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s1
	call	__gtsf2
	sgt	a0,a0,zero
.L361:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__ltdf2
	mv	a5,a0
	li	a0,1
	blt	a5,zero,.L367
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	sgt	a0,a0,zero
.L367:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	ra,52(sp)
	sw	s0,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,56
	.cfi_def_cfa 8, 0
	lw	a5,0(a0)
	sw	a5,-56(s0)
	lw	a5,4(a0)
	sw	a5,-52(s0)
	lw	a5,8(a0)
	sw	a5,-48(s0)
	lw	a5,12(a0)
	sw	a5,-44(s0)
	lui	a1,%hi(.LC5)
	li	a2,-1
	lw	a3,%lo(.LC5+4)(a1)
	lw	a4,%lo(.LC5+8)(a1)
	lw	a5,%lo(.LC5+12)(a1)
	lw	a1,-56(s0)
	sw	a1,-24(s0)
	lw	a1,-52(s0)
	sw	a1,-20(s0)
	lw	a1,-48(s0)
	sw	a1,-16(s0)
	lw	a1,-44(s0)
	sw	a1,-12(s0)
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	addi	a1,s0,-40
	addi	a0,s0,-24
	call	__lttf2
	mv	a5,a0
	li	a0,1
	blt	a5,zero,.L373
	lui	a1,%hi(.LC6)
	lw	a3,%lo(.LC6+4)(a1)
	lw	a4,%lo(.LC6+8)(a1)
	lw	a5,%lo(.LC6+12)(a1)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	addi	a1,s0,-40
	addi	a0,s0,-24
	call	__gttf2
	sgt	a0,a0,zero
.L373:
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 56
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	a0,a1
	call	__floatsidf
	mv	a2,a1
	mv	a1,a0
	addi	a0,s0,-28
	call	__extenddftf2
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	mv	s1,a1
	sw	a0,-16(s0)
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L380
	lw	a1,-16(s0)
	mv	a0,a1
	call	__addsf3
	mv	a1,a0
	lw	a0,-16(s0)
	call	__nesf2
	beq	a0,zero,.L380
	bge	s1,zero,.L385
	lui	a5,%hi(.LC7)
	lw	a5,%lo(.LC7)(a5)
	sw	a5,-20(s0)
	j	.L384
.L385:
	lui	a5,%hi(.LC8)
	lw	a5,%lo(.LC8)(a5)
	sw	a5,-20(s0)
.L384:
	andi	a5,s1,1
	beq	a5,zero,.L383
	lw	a1,-20(s0)
	lw	a0,-16(s0)
	call	__mulsf3
	sw	a0,-16(s0)
.L383:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L380
	lw	a1,-20(s0)
	mv	a0,a1
	call	__mulsf3
	sw	a0,-20(s0)
	j	.L384
.L380:
	lw	a0,-16(s0)
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	mv	s1,a2
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L388
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__nedf2
	beq	a0,zero,.L388
	bge	s1,zero,.L393
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L392
.L393:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
.L392:
	andi	a5,s1,1
	beq	a5,zero,.L391
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
.L391:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L388
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,-28(s0)
	sw	a1,-24(s0)
	j	.L392
.L388:
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-96(s0)
	lw	a5,0(a1)
	sw	a5,-92(s0)
	lw	a5,4(a1)
	sw	a5,-88(s0)
	lw	a5,8(a1)
	sw	a5,-84(s0)
	lw	a5,12(a1)
	sw	a5,-80(s0)
	mv	s1,a2
	lw	a5,-92(s0)
	sw	a5,-28(s0)
	lw	a5,-88(s0)
	sw	a5,-24(s0)
	lw	a5,-84(s0)
	sw	a5,-20(s0)
	lw	a5,-80(s0)
	sw	a5,-16(s0)
	lw	a5,-92(s0)
	sw	a5,-44(s0)
	lw	a5,-88(s0)
	sw	a5,-40(s0)
	lw	a5,-84(s0)
	sw	a5,-36(s0)
	lw	a5,-80(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__unordtf2
	bne	a0,zero,.L396
	lw	a5,-92(s0)
	sw	a5,-60(s0)
	lw	a5,-88(s0)
	sw	a5,-56(s0)
	lw	a5,-84(s0)
	sw	a5,-52(s0)
	lw	a5,-80(s0)
	sw	a5,-48(s0)
	addi	a2,s0,-60
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__addtf3
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a2,-76(s0)
	sw	a3,-72(s0)
	sw	a4,-68(s0)
	sw	a5,-64(s0)
	lw	a1,-92(s0)
	sw	a1,-28(s0)
	lw	a1,-88(s0)
	sw	a1,-24(s0)
	lw	a1,-84(s0)
	sw	a1,-20(s0)
	lw	a1,-80(s0)
	sw	a1,-16(s0)
	sw	a2,-44(s0)
	sw	a3,-40(s0)
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__netf2
	beq	a0,zero,.L396
	bge	s1,zero,.L401
	lui	a5,%hi(.LC11)
	sw	zero,-76(s0)
	lw	a4,%lo(.LC11+4)(a5)
	sw	a4,-72(s0)
	lw	a4,%lo(.LC11+8)(a5)
	sw	a4,-68(s0)
	lw	a5,%lo(.LC11+12)(a5)
	sw	a5,-64(s0)
	j	.L400
.L401:
	lui	a5,%hi(.LC12)
	sw	zero,-76(s0)
	lw	a4,%lo(.LC12+4)(a5)
	sw	a4,-72(s0)
	lw	a4,%lo(.LC12+8)(a5)
	sw	a4,-68(s0)
	lw	a5,%lo(.LC12+12)(a5)
	sw	a5,-64(s0)
.L400:
	andi	a5,s1,1
	beq	a5,zero,.L399
	lw	a5,-92(s0)
	sw	a5,-44(s0)
	lw	a5,-88(s0)
	sw	a5,-40(s0)
	lw	a5,-84(s0)
	sw	a5,-36(s0)
	lw	a5,-80(s0)
	sw	a5,-32(s0)
	lw	a5,-76(s0)
	sw	a5,-60(s0)
	lw	a5,-72(s0)
	sw	a5,-56(s0)
	lw	a5,-68(s0)
	sw	a5,-52(s0)
	lw	a5,-64(s0)
	sw	a5,-48(s0)
	addi	a2,s0,-60
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__multf3
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a2,-92(s0)
	sw	a3,-88(s0)
	sw	a4,-84(s0)
	sw	a5,-80(s0)
.L399:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L396
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	lw	a5,-76(s0)
	sw	a5,-60(s0)
	lw	a5,-72(s0)
	sw	a5,-56(s0)
	lw	a5,-68(s0)
	sw	a5,-52(s0)
	lw	a5,-64(s0)
	sw	a5,-48(s0)
	addi	a2,s0,-60
	addi	a1,s0,-44
	addi	a0,s0,-28
	call	__multf3
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-16(s0)
	sw	a2,-76(s0)
	sw	a3,-72(s0)
	sw	a4,-68(s0)
	sw	a5,-64(s0)
	j	.L400
.L396:
	lw	a5,-96(s0)
	lw	a4,-92(s0)
	sw	a4,0(a5)
	lw	a4,-88(s0)
	sw	a4,4(a5)
	lw	a4,-84(s0)
	sw	a4,8(a5)
	lw	a4,-80(s0)
	sw	a4,12(a5)
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	add	a2,a0,a2
	mv	a5,a0
	j	.L404
.L405:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
.L404:
	bne	a5,a2,.L405
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,20
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	mv	s1,a2
	call	strlen
	lw	a5,-20(s0)
	add	a0,a5,a0
	j	.L407
.L409:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	addi	a0,a0,1
	addi	s1,s1,-1
.L407:
	beq	s1,zero,.L408
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sb	a5,0(a0)
	bne	a5,zero,.L409
.L408:
	bne	s1,zero,.L410
	sb	zero,0(a0)
.L410:
	lw	a0,-20(s0)
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 20
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	j	.L412
.L414:
	addi	a0,a0,1
.L412:
	beq	a0,a1,.L413
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L414
.L413:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	j	.L416
.L418:
	addi	a5,a5,1
	lbu	a3,-1(a5)
	lbu	a4,0(a0)
	bne	a3,a4,.L419
	j	.L417
.L421:
	mv	a5,a1
.L419:
	lbu	a4,0(a5)
	bne	a4,zero,.L418
	addi	a0,a0,1
.L416:
	lbu	a5,0(a0)
	bne	a5,zero,.L421
	li	a0,0
.L417:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
.L424:
	lbu	a4,0(a5)
	bne	a1,a4,.L423
	mv	a0,a5
.L423:
	addi	a5,a5,1
	lbu	a4,-1(a5)
	bne	a4,zero,.L424
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	mv	s1,a0
	sw	a1,-16(s0)
	mv	a0,a1
	call	strlen
	mv	a4,a0
	sw	a0,-24(s0)
	mv	a0,s1
	beq	a4,zero,.L428
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sw	a5,-20(s0)
	j	.L429
.L430:
	lw	a2,-24(s0)
	lw	a1,-16(s0)
	mv	a0,s1
	call	strncmp
	beq	a0,zero,.L432
	addi	s1,s1,1
.L429:
	lw	a1,-20(s0)
	mv	a0,s1
	call	strchr
	mv	s1,a0
	bne	a0,zero,.L430
	li	a0,0
	j	.L428
.L432:
	mv	a0,s1
.L428:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	li	a2,0
	li	a3,0
	call	__ltdf2
	bge	a0,zero,.L434
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gtdf2
	bgt	a0,zero,.L436
.L434:
	li	a2,0
	li	a3,0
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	ble	a0,zero,.L444
	li	a2,0
	li	a3,0
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	bge	a0,zero,.L445
.L436:
	lw	a3,-16(s0)
	lw	a4,-12(s0)
	mv	a0,a3
	li	a5,-2147483648
	xor	a1,a4,a5
	j	.L437
.L444:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L437
.L445:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
.L437:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,28
	.cfi_def_cfa 8, 0
	sw	a2,-20(s0)
	sub	a4,a1,a3
	add	a4,a0,a4
	sw	a4,-16(s0)
	beq	a3,zero,.L447
	bltu	a1,a3,.L452
	mv	s1,a0
	addi	a5,a2,1
	sw	a5,-24(s0)
	addi	a5,a3,-1
	sw	a5,-28(s0)
	j	.L448
.L450:
	lbu	a4,0(s1)
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L449
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	addi	a0,s1,1
	call	memcmp
	beq	a0,zero,.L453
.L449:
	addi	s1,s1,1
.L448:
	lw	a5,-16(s0)
	bleu	s1,a5,.L450
	li	a0,0
	j	.L447
.L452:
	li	a0,0
	j	.L447
.L453:
	mv	a0,s1
.L447:
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 28
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	s1,a2
	call	memcpy
	add	a0,a0,s1
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	sw	a2,-44(s0)
	li	a2,0
	li	a3,0
	call	__ltdf2
	bge	a0,zero,.L473
	lw	a1,-20(s0)
	lw	a2,-16(s0)
	li	a3,-2147483648
	xor	a5,a2,a3
	sw	a1,-20(s0)
	sw	a5,-16(s0)
	li	a5,1
	sw	a5,-40(s0)
	j	.L456
.L473:
	sw	zero,-40(s0)
.L456:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__gedf2
	li	s1,0
	blt	a0,zero,.L474
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L458
.L460:
	addi	s1,s1,1
	lw	a2,-36(s0)
	lw	a3,-32(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
.L458:
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__gedf2
	bge	a0,zero,.L460
	j	.L461
.L474:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__ltdf2
	li	s1,0
	bge	a0,zero,.L461
	li	a2,0
	li	a3,0
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__nedf2
	li	s1,0
	beq	a0,zero,.L461
	j	.L469
.L464:
	addi	s1,s1,-1
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	mv	a2,a0
	mv	a3,a1
	call	__adddf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	j	.L463
.L469:
	li	s1,0
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
.L463:
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__ltdf2
	blt	a0,zero,.L464
	j	.L461
.L461:
	lw	a5,-44(s0)
	sw	s1,0(a5)
	lw	a5,-40(s0)
	beq	a5,zero,.L465
	lw	a1,-20(s0)
	lw	a2,-16(s0)
	li	a3,-2147483648
	xor	a5,a2,a3
	sw	a1,-20(s0)
	sw	a5,-16(s0)
.L465:
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,36
	.cfi_def_cfa 8, 0
	li	a4,0
	li	a5,0
	sw	a4,-36(s0)
	sw	a5,-32(s0)
	j	.L477
.L480:
	andi	a5,a0,1
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	beq	a5,zero,.L478
	lw	t0,-36(s0)
	add	a4,t0,a2
	sltu	t0,a4,t0
	lw	s1,-32(s0)
	add	a5,s1,a3
	add	a5,t0,a5
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L478:
	srli	a5,a2,31
	slli	a4,a3,1
	or	a5,a5,a4
	sw	a5,-16(s0)
	slli	a5,a2,1
	sw	a5,-20(s0)
	lw	a2,-20(s0)
	lw	a3,-16(s0)
	slli	a5,a1,31
	srli	t1,a0,1
	or	t1,a5,t1
	srli	t2,a1,1
	mv	a0,t1
	mv	a1,t2
.L477:
	or	a5,a0,a1
	bne	a5,zero,.L480
	lw	a0,-36(s0)
	lw	a1,-32(s0)
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 36
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a4,33
	li	a5,1
	j	.L482
.L486:
	slli	a1,a1,1
	slli	a5,a5,1
.L482:
	bltu	a1,a0,.L483
	li	a4,0
	j	.L484
.L490:
	li	a4,0
	j	.L484
.L483:
	addi	a4,a4,-1
	beq	a4,zero,.L490
	bge	a1,zero,.L486
	li	a4,0
	j	.L484
.L488:
	bltu	a0,a1,.L487
	sub	a0,a0,a1
	or	a4,a4,a5
.L487:
	srli	a5,a5,1
	srli	a1,a1,1
.L484:
	bne	a5,zero,.L488
	bne	a2,zero,.L489
	mv	a0,a4
.L489:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,7
	beq	a5,zero,.L493
	slli	a0,a5,8
	call	__clzsi2
	addi	a0,a0,-1
.L493:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a4,a0
	mv	a5,a1
	bge	a1,zero,.L496
	not	a2,a0
	not	a3,a1
	mv	a4,a2
	mv	a5,a3
.L496:
	or	a3,a4,a5
	li	a0,63
	beq	a3,zero,.L498
	mv	a0,a4
	mv	a1,a5
	call	__clzdi2
	addi	a0,a0,-1
.L498:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	j	.L502
.L504:
	andi	a4,a5,1
	beq	a4,zero,.L503
	add	a0,a0,a1
.L503:
	srli	a5,a5,1
	slli	a1,a1,1
.L502:
	bne	a5,zero,.L504
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	t0,a2,3
	andi	a5,a2,-8
	bltu	a0,a1,.L506
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L507
.L506:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,3
	add	t0,t0,a1
	j	.L508
.L509:
	lw	t1,0(a4)
	lw	t2,4(a4)
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a4,a4,8
	addi	a3,a3,8
.L508:
	bne	a4,t0,.L509
	j	.L510
.L511:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L510:
	bgtu	a2,a5,.L511
	j	.L505
.L513:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L507:
	addi	a2,a2,-1
	bne	a2,a3,.L513
.L505:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	t1,a2,1
	bltu	a0,a1,.L516
	add	a5,a1,a2
	li	a3,-1
	bgeu	a5,a0,.L517
.L516:
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
	j	.L518
.L519:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
.L518:
	bne	a5,t1,.L519
	andi	a5,a2,1
	beq	a5,zero,.L515
	addi	a2,a2,-1
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	j	.L515
.L521:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L517:
	addi	a2,a2,-1
	bne	a2,a3,.L521
.L515:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	t0,a2,2
	andi	a5,a2,-4
	bltu	a0,a1,.L524
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L525
.L524:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,2
	add	t0,t0,a1
	j	.L526
.L527:
	lw	t1,0(a4)
	sw	t1,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
.L526:
	bne	a4,t0,.L527
	j	.L528
.L529:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L528:
	bgtu	a2,a5,.L529
	j	.L523
.L531:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L525:
	addi	a2,a2,-1
	bne	a2,a3,.L531
.L523:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__modsi3
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__floatunsidf
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__floatunsisf
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__floatundidf
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__floatundisf
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__umodsi3
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a4,a0
	li	a0,0
	li	a3,16
	li	a2,15
	j	.L540
.L542:
	sub	a5,a2,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L541
	addi	a0,a0,1
.L540:
	bne	a0,a3,.L542
.L541:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a4,a0
	li	a0,0
	li	a3,16
	j	.L544
.L546:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L545
	addi	a0,a0,1
.L544:
	bne	a0,a3,.L546
.L545:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	mv	s1,a0
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	call	__gesf2
	blt	a0,zero,.L552
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s1
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L550
.L552:
	mv	a0,s1
	call	__fixsfsi
.L550:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a3,0
	li	a5,0
	li	a2,16
	j	.L554
.L556:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
.L554:
	bne	a5,a2,.L556
	andi	a0,a3,1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a3,a0
	li	a0,0
	li	a5,0
	li	a2,16
	j	.L558
.L560:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
.L558:
	bne	a5,a2,.L560
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	j	.L562
.L564:
	andi	a4,a5,1
	beq	a4,zero,.L563
	add	a0,a0,a1
.L563:
	srli	a5,a5,1
	slli	a1,a1,1
.L562:
	bne	a5,zero,.L564
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L566
	j	.L567
.L569:
	andi	a4,a1,1
	beq	a4,zero,.L568
	add	a0,a0,a5
.L568:
	slli	a5,a5,1
	srli	a1,a1,1
.L567:
	bne	a1,zero,.L569
.L566:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a4,33
	li	a5,1
	j	.L572
.L576:
	slli	a1,a1,1
	slli	a5,a5,1
.L572:
	bltu	a1,a0,.L573
	li	a4,0
	j	.L574
.L580:
	li	a4,0
	j	.L574
.L573:
	addi	a4,a4,-1
	beq	a4,zero,.L580
	bge	a1,zero,.L576
	li	a4,0
	j	.L574
.L578:
	bltu	a0,a1,.L577
	sub	a0,a0,a1
	or	a4,a4,a5
.L577:
	srli	a5,a5,1
	srli	a1,a1,1
.L574:
	bne	a5,zero,.L578
	bne	a2,zero,.L579
	mv	a0,a4
.L579:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	mv	s1,a1
	call	__ltsf2
	mv	a5,a0
	li	a0,-1
	blt	a5,zero,.L583
	mv	a1,s1
	lw	a0,-16(s0)
	call	__gtsf2
	sgt	a0,a0,zero
.L583:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	sw	a1,-12(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	call	__ltdf2
	mv	a5,a0
	li	a0,-1
	blt	a5,zero,.L587
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	sgt	a0,a0,zero
.L587:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srai	t2,a0,31
	mv	a2,a1
	srai	a3,a1,31
	mv	a1,t2
	call	__muldi3
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a5,0
	mv	a2,a1
	li	a3,0
	mv	a1,a5
	call	__muldi3
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a2,0
	bge	a1,zero,.L593
	neg	a1,a1
	li	a2,1
.L593:
	li	a5,33
	li	a3,0
	j	.L594
.L597:
	andi	a4,a1,1
	beq	a4,zero,.L595
	add	a3,a3,a0
.L595:
	slli	a0,a0,1
	srai	a1,a1,1
.L594:
	beq	a1,zero,.L596
	addi	a5,a5,-1
	andi	a5,a5,0xff
	bne	a5,zero,.L597
.L596:
	mv	a0,a3
	beq	a2,zero,.L598
	neg	a0,a3
.L598:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	li	s1,0
	bge	a0,zero,.L602
	neg	a0,a0
	li	s1,1
.L602:
	bge	a1,zero,.L603
	neg	a1,a1
	xori	s1,s1,1
.L603:
	li	a2,0
	call	__udivmodsi4
	beq	s1,zero,.L604
	neg	a0,a0
.L604:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	li	s1,0
	bge	a0,zero,.L607
	neg	a0,a0
	li	s1,1
.L607:
	srai	a5,a1,31
	xor	a1,a1,a5
	li	a2,1
	sub	a1,a1,a5
	call	__udivmodsi4
	beq	s1,zero,.L609
	neg	a0,a0
.L609:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a4,17
	li	a5,1
	j	.L612
.L616:
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
.L612:
	bltu	a1,a0,.L613
	li	a4,0
	j	.L614
.L620:
	li	a4,0
	j	.L614
.L613:
	addi	a4,a4,-1
	beq	a4,zero,.L620
	slli	a3,a1,16
	srai	a3,a3,16
	bge	a3,zero,.L616
	li	a4,0
	j	.L614
.L618:
	bltu	a0,a1,.L617
	sub	a0,a0,a1
	slli	a0,a0,16
	srli	a0,a0,16
	or	a4,a4,a5
.L617:
	srli	a5,a5,1
	srli	a1,a1,1
.L614:
	bne	a5,zero,.L618
	bne	a2,zero,.L619
	mv	a0,a4
.L619:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	li	a4,33
	li	a5,1
	j	.L623
.L627:
	slli	a1,a1,1
	slli	a5,a5,1
.L623:
	bltu	a1,a0,.L624
	li	a4,0
	j	.L625
.L631:
	li	a4,0
	j	.L625
.L624:
	addi	a4,a4,-1
	beq	a4,zero,.L631
	bge	a1,zero,.L627
	li	a4,0
	j	.L625
.L629:
	bltu	a0,a1,.L628
	sub	a0,a0,a1
	or	a4,a4,a5
.L628:
	srli	a5,a5,1
	srli	a1,a1,1
.L625:
	bne	a5,zero,.L629
	bne	a2,zero,.L630
	mv	a0,a4
.L630:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	t1,a0
	andi	a3,a2,32
	beq	a3,zero,.L634
	li	a0,0
	addi	a2,a2,-32
	sll	a1,t1,a2
	j	.L636
.L634:
	beq	a2,zero,.L636
	sll	a0,a0,a2
	sll	a3,a1,a2
	li	a5,32
	sub	a5,a5,a2
	srl	a4,t1,a5
	or	a1,a4,a3
.L636:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	t2,a1
	andi	a3,a2,32
	beq	a3,zero,.L639
	srai	a1,a1,31
	addi	a2,a2,-32
	sra	a0,t2,a2
	j	.L641
.L639:
	beq	a2,zero,.L641
	sra	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a4,a0,a2
	or	a0,a5,a4
.L641:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,60
	.cfi_def_cfa 8, 0
	mv	t1,a0
	srli	a5,a1,24
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	srli	a4,a1,8
	li	a3,65536
	addi	a3,a3,-256
	and	a5,a4,a3
	sw	a5,-36(s0)
	sw	zero,-32(s0)
	slli	a2,a1,8
	srli	a4,a0,24
	or	a4,a2,a4
	li	s1,16711680
	and	a5,a4,s1
	sw	a5,-44(s0)
	sw	zero,-40(s0)
	slli	t0,a1,24
	srli	a0,a0,8
	or	a0,t0,a0
	li	a5,-16777216
	and	a5,a0,a5
	sw	a5,-52(s0)
	sw	zero,-48(s0)
	srli	a1,t1,24
	or	a5,a1,a2
	sw	a5,-16(s0)
	slli	a5,t1,8
	sw	a5,-20(s0)
	li	a4,0
	sw	a4,-60(s0)
	lw	a5,-16(s0)
	andi	a5,a5,255
	sw	a5,-56(s0)
	srli	a5,t1,8
	or	a1,a5,t0
	slli	a0,t1,24
	li	t1,0
	and	t2,a1,a3
	lw	a3,-20(s0)
	li	a4,0
	and	a5,a3,s1
	mv	a3,a0
	lw	a0,-28(s0)
	lw	t0,-36(s0)
	or	a2,a0,t0
	lw	t0,-44(s0)
	or	a0,a2,t0
	lw	t0,-52(s0)
	or	a2,a0,t0
	lw	t0,-60(s0)
	or	a0,a2,t0
	lw	t0,-56(s0)
	or	a1,a3,t0
	or	a2,a0,t1
	or	a3,a1,t2
	or	a0,a2,a4
	or	a1,a3,a5
	lw	ra,56(sp)
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 60
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	a3,a0,24
	srli	a4,a0,8
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	slli	a5,a0,8
	li	a2,16711680
	and	a5,a5,a2
	slli	a0,a0,24
	or	a0,a0,a3
	or	a0,a0,a4
	or	a0,a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,12
	.cfi_def_cfa 8, 0
	li	s1,65536
	sltu	s1,a0,s1
	slli	s1,s1,4
	li	a5,16
	sub	a5,a5,s1
	srl	a0,a0,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a0,a5
	seqz	a5,a5
	slli	a5,a5,3
	li	a4,8
	sub	a4,a4,a5
	srl	a0,a0,a4
	add	s1,s1,a5
	andi	a5,a0,240
	seqz	a5,a5
	slli	a5,a5,2
	li	a4,4
	sub	a4,a4,a5
	srl	a0,a0,a4
	add	s1,s1,a5
	andi	a5,a0,12
	seqz	a5,a5
	slli	a5,a5,1
	li	a1,2
	sub	a4,a1,a5
	srl	a0,a0,a4
	add	s1,s1,a5
	and	a5,a0,a1
	sub	a1,a1,a0
	seqz	a0,a5
	call	__mulsi3
	add	a0,s1,a0
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 12
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a4,a0
	li	a0,0
	bgt	a3,a1,.L655
	li	a0,2
	blt	a3,a1,.L655
	li	a0,0
	bgtu	a2,a4,.L655
	sltu	a0,a2,a4
	addi	a0,a0,1
.L655:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__cmpdi2
	addi	a0,a0,-1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	slli	a4,a0,16
	srli	a4,a4,16
	seqz	a4,a4
	slli	a4,a4,4
	srl	a0,a0,a4
	andi	a5,a0,255
	seqz	a5,a5
	slli	a5,a5,3
	srl	a0,a0,a5
	add	a4,a4,a5
	andi	a5,a0,15
	seqz	a5,a5
	slli	a5,a5,2
	srl	a0,a0,a5
	add	a4,a4,a5
	andi	a5,a0,3
	seqz	a5,a5
	slli	a5,a5,1
	srl	a0,a0,a5
	andi	a0,a0,3
	add	a4,a4,a5
	not	a5,a0
	andi	a3,a5,1
	srli	a5,a0,1
	li	a0,2
	sub	a0,a0,a5
	neg	a5,a3
	and	a0,a0,a5
	add	a0,a4,a0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	t2,a1
	andi	a3,a2,32
	beq	a3,zero,.L671
	li	a1,0
	addi	a2,a2,-32
	srl	a0,t2,a2
	j	.L673
.L671:
	beq	a2,zero,.L673
	srl	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a4,a0,a2
	or	a0,a5,a4
.L673:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,40
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	lhu	a5,-36(s0)
	sw	a1,-40(s0)
	lhu	a4,-40(s0)
	sw	a4,-28(s0)
	mv	a1,a4
	sw	a5,-24(s0)
	mv	a0,a5
	call	__mulsi3
	li	a5,0
	sw	a5,-16(s0)
	srli	s1,a0,16
	slli	a3,a0,16
	srli	a3,a3,16
	sw	a3,-32(s0)
	sw	a3,-20(s0)
	lw	a2,-36(s0)
	srli	a2,a2,16
	lw	a1,-28(s0)
	sw	a2,-28(s0)
	mv	a0,a2
	call	__mulsi3
	add	s1,s1,a0
	slli	a5,s1,16
	lw	a3,-32(s0)
	add	a4,a5,a3
	sw	a4,-20(s0)
	srli	a4,s1,16
	sw	a4,-16(s0)
	lw	t1,-20(s0)
	srli	s1,t1,16
	slli	a4,t1,16
	srli	a4,a4,16
	sw	a4,-32(s0)
	sw	a4,-20(s0)
	lw	a3,-40(s0)
	srli	a3,a3,16
	sw	a3,-36(s0)
	mv	a1,a3
	lw	a0,-24(s0)
	call	__mulsi3
	add	s1,s1,a0
	slli	a5,s1,16
	lw	a4,-32(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	srli	s1,s1,16
	lw	a5,-16(s0)
	add	s1,s1,a5
	sw	s1,-16(s0)
	lw	a1,-36(s0)
	lw	a0,-28(s0)
	call	__mulsi3
	add	a5,a0,s1
	sw	a5,-16(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 40
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,44
	.cfi_def_cfa 8, 0
	mv	a5,a1
	sw	a2,-28(s0)
	sw	a3,-24(s0)
	lw	a1,-28(s0)
	sw	a0,-20(s0)
	sw	a5,-16(s0)
	lw	a0,-20(s0)
	call	__muldsi3
	sw	a0,-36(s0)
	sw	a1,-32(s0)
	sw	a0,-44(s0)
	sw	a1,-40(s0)
	lw	a1,-28(s0)
	lw	a0,-16(s0)
	call	__mulsi3
	mv	s1,a0
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	__mulsi3
	add	s1,s1,a0
	lw	a5,-32(s0)
	add	a5,s1,a5
	sw	a5,-40(s0)
	lw	a0,-44(s0)
	lw	a1,-40(s0)
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 44
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a2,a0
	mv	a3,a1
	neg	a0,a2
	snez	a4,a0
	neg	a1,a3
	sub	a1,a1,a4
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	xor	a0,a0,a1
	srli	a5,a0,16
	xor	a0,a0,a5
	srli	a5,a0,8
	xor	a0,a0,a5
	srli	a5,a0,4
	xor	a0,a0,a5
	andi	a0,a0,15
	li	a5,28672
	addi	a5,a5,-1642
	sra	a0,a5,a0
	andi	a0,a0,1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	a5,a0,16
	xor	a0,a5,a0
	srli	a5,a0,8
	xor	a0,a0,a5
	srli	a5,a0,4
	xor	a0,a0,a5
	andi	a0,a0,15
	li	a5,28672
	addi	a5,a5,-1642
	sra	a0,a5,a0
	andi	a0,a0,1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	slli	a3,a1,31
	srli	a4,a0,1
	or	a4,a3,a4
	srli	a5,a1,1
	li	t1,1431654400
	addi	t1,t1,1365
	and	a3,a4,t1
	sw	a3,-16(s0)
	and	a5,a5,t1
	sw	a5,-12(s0)
	lw	t1,-16(s0)
	lw	t2,-12(s0)
	sub	a4,a0,t1
	sgtu	a2,a4,a0
	sub	a5,a1,t2
	sub	a5,a5,a2
	slli	a3,a5,30
	srli	a0,a4,2
	or	a0,a3,a0
	srli	a1,a5,2
	li	t1,858992640
	addi	t1,t1,819
	and	a3,a0,t1
	sw	a3,-24(s0)
	and	a3,a1,t1
	sw	a3,-20(s0)
	and	a0,a4,t1
	and	a1,a5,t1
	lw	t1,-24(s0)
	lw	t2,-20(s0)
	add	a5,t1,a0
	sw	a5,-16(s0)
	sltu	a2,a5,t1
	add	a5,t2,a1
	add	a5,a2,a5
	sw	a5,-12(s0)
	lw	a5,-12(s0)
	slli	a3,a5,28
	lw	a5,-16(s0)
	srli	a0,a5,4
	or	a0,a3,a0
	lw	a5,-12(s0)
	srli	a1,a5,4
	lw	a5,-16(s0)
	add	a2,a0,a5
	sltu	a4,a2,a0
	lw	a5,-12(s0)
	add	a3,a1,a5
	add	a3,a4,a3
	li	a5,252645376
	addi	a5,a5,-241
	and	t1,a2,a5
	and	t2,a3,a5
	add	a4,t2,t1
	srli	a5,a4,16
	add	a4,a4,a5
	srli	a0,a4,8
	add	a0,a0,a4
	andi	a0,a0,127
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	srli	a5,a0,1
	li	a4,1431654400
	addi	a4,a4,1365
	and	a5,a5,a4
	sub	a0,a0,a5
	srli	a4,a0,2
	li	a5,858992640
	addi	a5,a5,819
	and	a4,a4,a5
	and	a0,a0,a5
	add	a0,a4,a0
	srli	a5,a0,4
	add	a0,a5,a0
	li	a5,252645376
	addi	a5,a5,-241
	and	a0,a0,a5
	srli	a5,a0,16
	add	a0,a0,a5
	srli	a5,a0,8
	add	a0,a5,a0
	andi	a0,a0,63
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	mv	s1,a2
	srli	a5,a2,31
	sw	a5,-32(s0)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
.L685:
	andi	a5,s1,1
	beq	a5,zero,.L683
	lw	a2,-20(s0)
	lw	a3,-16(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	__muldf3
	sw	a0,-28(s0)
	sw	a1,-24(s0)
.L683:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L684
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	j	.L685
.L684:
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	mv	a0,a2
	mv	a1,a3
	lw	a5,-32(s0)
	beq	a5,zero,.L686
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
.L686:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,24
	.cfi_def_cfa 8, 0
	sw	a0,-16(s0)
	mv	s1,a1
	srli	a5,a1,31
	sw	a5,-24(s0)
	lui	a5,%hi(.LC15)
	lw	a5,%lo(.LC15)(a5)
	sw	a5,-20(s0)
.L691:
	andi	a5,s1,1
	beq	a5,zero,.L689
	lw	a1,-16(s0)
	lw	a0,-20(s0)
	call	__mulsf3
	sw	a0,-20(s0)
.L689:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L690
	lw	a1,-16(s0)
	mv	a0,a1
	call	__mulsf3
	sw	a0,-16(s0)
	j	.L691
.L690:
	lw	a1,-20(s0)
	mv	a0,a1
	lw	a5,-24(s0)
	beq	a5,zero,.L692
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
.L692:
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 24
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	mv	a4,a0
	li	a0,0
	bgtu	a3,a1,.L695
	li	a0,2
	bltu	a3,a1,.L695
	li	a0,0
	bgtu	a2,a4,.L695
	sltu	a0,a2,a4
	addi	a0,a0,1
.L695:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,8
	.cfi_def_cfa 8, 0
	call	__ucmpdi2
	addi	a0,a0,-1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	1284865837
	.word	1481765933
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
	.set	.LC8,.LC12+12
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.set	.LC10,.LC12+8
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
	.align	2
.LC15:
	.word	1065353216
	.globl	__divsf3
	.globl	__divdf3
	.globl	__fixsfsi
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__gedf2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__muldf3
	.globl	__nedf2
	.globl	__adddf3
	.globl	__mulsf3
	.globl	__nesf2
	.globl	__addsf3
	.globl	__extenddftf2
	.globl	__floatsidf
	.globl	__gttf2
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__lttf2
	.globl	__unordtf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__unordsf2
	.globl	__subdf3
	.globl	__gtdf2
	.globl	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
