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
	j	.L9
.L11:
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
.L9:
	beq	a3,zero,.L10
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a2,a5,.L11
.L10:
	beq	a3,zero,.L13
	addi	a0,a0,1
	j	.L12
.L13:
	li	a0,0
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
	bne	a2,zero,.L18
	li	a0,0
.L18:
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
	j	.L21
.L23:
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
.L21:
	beq	a2,zero,.L22
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	beq	a4,a5,.L23
.L22:
	beq	a2,zero,.L25
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	j	.L24
.L25:
	li	a0,0
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
	li	a5,-1
	bne	a2,a5,.L32
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
	j	.L49
.L51:
	addi	a0,a0,1
	addi	a1,a1,1
.L49:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L50
	bne	a4,zero,.L51
.L50:
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
	j	.L53
.L54:
	addi	a5,a5,1
.L53:
	lbu	a4,0(a5)
	bne	a4,zero,.L54
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
	beq	a2,zero,.L60
	addi	a2,a2,-1
	add	a5,a0,a2
	j	.L57
.L59:
	addi	a0,a0,1
	addi	a1,a1,1
.L57:
	lbu	a4,0(a0)
	beq	a4,zero,.L58
	lbu	a4,0(a1)
	beq	a4,zero,.L58
	beq	a0,a5,.L58
	lbu	a3,0(a0)
	beq	a3,a4,.L59
.L58:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	j	.L56
.L60:
	li	a0,0
.L56:
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
	j	.L62
.L63:
	lbu	a4,1(a5)
	sb	a4,0(a1)
	lbu	a4,0(a5)
	sb	a4,1(a1)
	addi	a1,a1,2
	addi	a5,a5,2
.L62:
	add	a4,a0,a2
	sub	a4,a4,a5
	li	a3,1
	bgt	a4,a3,.L63
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
	li	a5,32
	beq	a0,a5,.L68
	li	a5,9
	bne	a0,a5,.L69
	li	a0,1
	j	.L67
.L68:
	li	a0,1
	j	.L67
.L69:
	li	a0,0
.L67:
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
	li	a5,31
	bleu	a0,a5,.L72
	li	a5,127
	bne	a0,a5,.L73
	li	a0,1
	j	.L71
.L72:
	li	a0,1
	j	.L71
.L73:
	li	a0,0
.L71:
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
	li	a5,32
	beq	a0,a5,.L80
	addi	a0,a0,-9
	li	a5,4
	bgtu	a0,a5,.L81
	li	a0,1
	j	.L79
.L80:
	li	a0,1
	j	.L79
.L81:
	li	a0,0
.L79:
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
	li	a5,31
	bleu	a0,a5,.L85
	addi	a5,a0,-127
	li	a4,32
	bleu	a5,a4,.L86
	li	a5,-8192
	addi	a5,a5,-40
	add	a5,a0,a5
	li	a4,1
	bleu	a5,a4,.L87
	li	a5,-65536
	addi	a5,a5,7
	add	a0,a0,a5
	li	a5,2
	bgtu	a0,a5,.L88
	mv	a0,a4
	j	.L84
.L85:
	li	a0,1
	j	.L84
.L86:
	li	a0,1
	j	.L84
.L87:
	li	a0,1
	j	.L84
.L88:
	li	a0,0
.L84:
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
	li	a5,254
	bgtu	a0,a5,.L91
	addi	a0,a0,1
	andi	a0,a0,127
	sltiu	a0,a0,33
	xori	a0,a0,1
	j	.L92
.L91:
	li	a5,8192
	addi	a5,a5,39
	bleu	a0,a5,.L93
	li	a5,-8192
	addi	a5,a5,-42
	add	a5,a0,a5
	li	a4,45056
	addi	a4,a4,2005
	bleu	a5,a4,.L94
	li	a4,-57344
	add	a4,a0,a4
	li	a5,8192
	addi	a5,a5,-8
	bleu	a4,a5,.L95
	li	a5,-65536
	addi	a5,a5,4
	add	a5,a0,a5
	li	a4,1048576
	addi	a4,a4,3
	bgtu	a5,a4,.L96
	li	a5,65536
	addi	a5,a5,-2
	and	a0,a0,a5
	beq	a0,a5,.L97
	li	a0,1
	j	.L92
.L93:
	li	a0,1
	j	.L92
.L94:
	li	a0,1
	j	.L92
.L95:
	li	a0,1
	j	.L92
.L96:
	li	a0,0
	j	.L92
.L97:
	li	a0,0
.L92:
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
	addi	a4,a0,-48
	li	a5,9
	bleu	a4,a5,.L100
	ori	a0,a0,32
	addi	a0,a0,-97
	li	a5,5
	bgtu	a0,a5,.L101
	li	a0,1
	j	.L99
.L100:
	li	a0,1
	j	.L99
.L101:
	li	a0,0
.L99:
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
	bne	a0,zero,.L106
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__unorddf2
	bne	a0,zero,.L107
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__gtdf2
	ble	a0,zero,.L110
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__subdf3
	j	.L104
.L106:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L104
.L107:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L104
.L110:
	li	a0,0
	li	a1,0
.L104:
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
	bne	a0,zero,.L114
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L115
	mv	a1,s1
	lw	a0,-16(s0)
	call	__gtsf2
	ble	a0,zero,.L118
	mv	a1,s1
	lw	a0,-16(s0)
	call	__subsf3
	j	.L112
.L114:
	lw	a0,-16(s0)
	j	.L112
.L115:
	mv	a0,s1
	j	.L112
.L118:
	mv	a0,zero
.L112:
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
	bne	a0,zero,.L123
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L124
	li	a5,-2147483648
	lw	t2,-20(s0)
	and	a4,a5,t2
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	and	a5,a5,a1
	beq	a4,a5,.L121
	bge	t2,zero,.L125
	j	.L120
.L121:
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	bge	a0,zero,.L128
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L120
.L123:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L120
.L124:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L120
.L125:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L120
.L128:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
.L120:
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
	bne	a0,zero,.L133
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L134
	li	a5,-2147483648
	lw	a3,-16(s0)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L131
	bge	a3,zero,.L135
	mv	a0,s1
	j	.L130
.L131:
	mv	a1,s1
	lw	a0,-16(s0)
	call	__ltsf2
	bge	a0,zero,.L138
	mv	a0,s1
	j	.L130
.L133:
	mv	a0,s1
	j	.L130
.L134:
	lw	a0,-16(s0)
	j	.L130
.L135:
	lw	a0,-16(s0)
	j	.L130
.L138:
	lw	a0,-16(s0)
.L130:
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
	beq	a0,zero,.L154
	lw	a5,-76(s0)
	sw	a5,0(s1)
	lw	a5,-72(s0)
	sw	a5,4(s1)
	lw	a5,-68(s0)
	sw	a5,8(s1)
	lw	a5,-64(s0)
	sw	a5,12(s1)
	j	.L139
.L154:
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
	beq	a0,zero,.L155
	lw	a5,-60(s0)
	sw	a5,0(s1)
	lw	a5,-56(s0)
	sw	a5,4(s1)
	lw	a5,-52(s0)
	sw	a5,8(s1)
	lw	a5,-48(s0)
	sw	a5,12(s1)
	j	.L139
.L155:
	li	a5,-2147483648
	lw	a4,-48(s0)
	and	a4,a5,a4
	lw	a3,-64(s0)
	and	a5,a5,a3
	beq	a4,a5,.L145
	lw	a5,-48(s0)
	bge	a5,zero,.L149
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	j	.L146
.L149:
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
.L146:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	j	.L139
.L145:
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
	bge	a0,zero,.L156
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
	j	.L147
.L156:
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
.L147:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L139:
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
	bne	a0,zero,.L161
	lw	a4,-16(s0)
	lw	a5,-12(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__unorddf2
	bne	a0,zero,.L162
	li	a5,-2147483648
	lw	a1,-24(s0)
	lw	a2,-20(s0)
	and	a4,a5,a2
	lw	a3,-12(s0)
	and	a5,a5,a3
	beq	a4,a5,.L159
	bge	a2,zero,.L163
	mv	a0,a1
	mv	a1,a2
	j	.L158
.L159:
	lw	a2,-16(s0)
	lw	a3,-12(s0)
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	call	__ltdf2
	bge	a0,zero,.L166
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L158
.L161:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L158
.L162:
	lw	a0,-24(s0)
	lw	a1,-20(s0)
	j	.L158
.L163:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	j	.L158
.L166:
	lw	a0,-16(s0)
	lw	a1,-12(s0)
.L158:
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
	bne	a0,zero,.L171
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L172
	li	a5,-2147483648
	lw	a3,-16(s0)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L169
	bge	a3,zero,.L173
	mv	a0,a3
	j	.L168
.L169:
	mv	a1,s1
	lw	a0,-16(s0)
	call	__ltsf2
	bge	a0,zero,.L176
	lw	a0,-16(s0)
	j	.L168
.L171:
	mv	a0,s1
	j	.L168
.L172:
	lw	a0,-16(s0)
	j	.L168
.L173:
	mv	a0,s1
	j	.L168
.L176:
	mv	a0,s1
.L168:
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
	beq	a0,zero,.L192
	lw	a5,-76(s0)
	sw	a5,0(s1)
	lw	a5,-72(s0)
	sw	a5,4(s1)
	lw	a5,-68(s0)
	sw	a5,8(s1)
	lw	a5,-64(s0)
	sw	a5,12(s1)
	j	.L177
.L192:
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
	beq	a0,zero,.L193
	lw	a5,-60(s0)
	sw	a5,0(s1)
	lw	a5,-56(s0)
	sw	a5,4(s1)
	lw	a5,-52(s0)
	sw	a5,8(s1)
	lw	a5,-48(s0)
	sw	a5,12(s1)
	j	.L177
.L193:
	li	a5,-2147483648
	lw	a4,-48(s0)
	and	a4,a5,a4
	lw	a3,-64(s0)
	and	a5,a5,a3
	beq	a4,a5,.L183
	lw	a5,-48(s0)
	bge	a5,zero,.L187
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	j	.L184
.L187:
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
.L184:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
	j	.L177
.L183:
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
	bge	a0,zero,.L194
	lw	a2,-60(s0)
	lw	a3,-56(s0)
	lw	a4,-52(s0)
	lw	a5,-48(s0)
	j	.L185
.L194:
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	lw	a4,-68(s0)
	lw	a5,-64(s0)
.L185:
	sw	a2,0(s1)
	sw	a3,4(s1)
	sw	a4,8(s1)
	sw	a5,12(s1)
.L177:
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
	j	.L196
.L197:
	andi	a3,a0,63
	lui	a5,%hi(digits)
	addi	a5,a5,%lo(digits)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
.L196:
	bne	a0,zero,.L197
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
	bne	a1,zero,.L201
	sw	zero,4(a0)
	sw	zero,0(a0)
	j	.L200
.L201:
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L200
	sw	a0,4(a5)
.L200:
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
	beq	a5,zero,.L204
	lw	a4,4(a0)
	sw	a4,4(a5)
.L204:
	lw	a5,4(a0)
	beq	a5,zero,.L203
	lw	a4,0(a0)
	sw	a4,0(a5)
.L203:
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
	j	.L207
.L210:
	lw	a1,-16(s0)
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	bne	a0,zero,.L208
	mv	a1,a4
	mv	a0,s1
	call	__mulsi3
	lw	a5,-36(s0)
	add	a0,a5,a0
	j	.L209
.L208:
	addi	s1,s1,1
.L207:
	lw	a5,-20(s0)
	bne	s1,a5,.L210
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
.L209:
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
	j	.L212
.L215:
	lw	a1,-16(s0)
	lw	a0,-28(s0)
	lw	a5,-32(s0)
	jalr	a5
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	bne	a0,zero,.L213
	mv	a1,a4
	mv	a0,s1
	call	__mulsi3
	lw	a5,-36(s0)
	add	a0,a5,a0
	j	.L214
.L213:
	addi	s1,s1,1
.L212:
	lw	a5,-20(s0)
	bne	s1,a5,.L215
	li	a0,0
.L214:
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
	j	.L218
.L219:
	addi	s1,s1,1
.L218:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L219
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L225
	li	a4,45
	bne	a5,a4,.L226
	li	a4,1
	j	.L220
.L225:
	li	a4,0
.L220:
	addi	s1,s1,1
	j	.L221
.L226:
	li	a4,0
.L221:
	li	a0,0
	j	.L222
.L223:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s1,s1,1
	lbu	a0,-1(s1)
	addi	a0,a0,-48
	sub	a0,a5,a0
.L222:
	lbu	a5,0(s1)
	addi	a5,a5,-48
	li	a3,9
	bleu	a5,a3,.L223
	bne	a4,zero,.L224
	neg	a0,a0
.L224:
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
	j	.L229
.L230:
	addi	s1,s1,1
.L229:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L230
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L236
	li	a4,45
	bne	a5,a4,.L237
	li	a4,1
	j	.L231
.L236:
	li	a4,0
.L231:
	addi	s1,s1,1
	j	.L232
.L237:
	li	a4,0
.L232:
	li	a0,0
	j	.L233
.L234:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s1,s1,1
	lbu	a0,-1(s1)
	addi	a0,a0,-48
	sub	a0,a5,a0
.L233:
	lbu	a5,0(s1)
	addi	a5,a5,-48
	li	a3,9
	bleu	a5,a3,.L234
	bne	a4,zero,.L235
	neg	a0,a0
.L235:
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
	mv	s1,a0
	j	.L240
.L241:
	addi	s1,s1,1
.L240:
	lbu	a0,0(s1)
	call	isspace
	bne	a0,zero,.L241
	lbu	a5,0(s1)
	li	a4,43
	beq	a5,a4,.L247
	li	a4,45
	bne	a5,a4,.L248
	li	a5,1
	j	.L242
.L247:
	li	a5,0
.L242:
	addi	s1,s1,1
	j	.L243
.L248:
	li	a5,0
.L243:
	li	a0,0
	li	a1,0
	sw	a5,-24(s0)
	j	.L244
.L245:
	srli	a5,a0,30
	slli	t2,a1,2
	or	t2,a5,t2
	slli	t1,a0,2
	add	a4,t1,a0
	sltu	t0,a4,t1
	add	a5,t2,a1
	add	a5,t0,a5
	srli	a1,a4,31
	slli	a3,a5,1
	or	a3,a1,a3
	slli	a2,a4,1
	addi	s1,s1,1
	lbu	a5,-1(s1)
	addi	a5,a5,-48
	sw	a5,-20(s0)
	srai	a5,a5,31
	sw	a5,-16(s0)
	lw	a5,-20(s0)
	sub	a0,a2,a5
	sgtu	a5,a0,a2
	lw	a4,-16(s0)
	sub	a1,a3,a4
	sub	a1,a1,a5
.L244:
	lbu	a5,0(s1)
	addi	a5,a5,-48
	li	a4,9
	bleu	a5,a4,.L245
	lw	a5,-24(s0)
	bne	a5,zero,.L246
	neg	a4,a0
	snez	a3,a4
	neg	a5,a1
	sub	a5,a5,a3
	mv	a0,a4
	mv	a1,a5
.L246:
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
	j	.L251
.L255:
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
	bge	a0,zero,.L252
	srli	s1,s1,1
	j	.L251
.L252:
	ble	a0,zero,.L256
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	add	a5,a5,a4
	sw	a5,-16(s0)
	srli	a5,s1,1
	addi	s1,s1,-1
	sub	s1,s1,a5
.L251:
	bne	s1,zero,.L255
	li	a0,0
	j	.L254
.L256:
	lw	a0,-24(s0)
.L254:
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
	j	.L258
.L261:
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
	beq	a0,zero,.L262
	ble	a0,zero,.L260
	lw	a5,-16(s0)
	lw	a4,-24(s0)
	add	a5,a5,a4
	sw	a5,-20(s0)
	addi	s1,s1,-1
.L260:
	srai	s1,s1,1
.L258:
	bne	s1,zero,.L261
	li	a0,0
	j	.L259
.L262:
	lw	a0,-16(s0)
.L259:
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
	j	.L271
.L273:
	addi	a0,a0,4
.L271:
	lw	a5,0(a0)
	beq	a5,zero,.L272
	bne	a1,a5,.L273
.L272:
	lw	a5,0(a0)
	bne	a5,zero,.L274
	li	a0,0
.L274:
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
	j	.L277
.L279:
	addi	a0,a0,4
	addi	a1,a1,4
.L277:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L278
	beq	a4,zero,.L278
	lw	a5,0(a1)
	bne	a5,zero,.L279
.L278:
	lw	a4,0(a0)
	lw	a5,0(a1)
	blt	a4,a5,.L281
	sgt	a0,a4,a5
	j	.L280
.L281:
	li	a0,-1
.L280:
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
.L283:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L283
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
	j	.L285
.L286:
	addi	a5,a5,4
.L285:
	lw	a4,0(a5)
	bne	a4,zero,.L286
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
	j	.L288
.L290:
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
.L288:
	beq	a2,zero,.L289
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L289
	beq	a4,zero,.L289
	lw	a5,0(a1)
	bne	a5,zero,.L290
.L289:
	beq	a2,zero,.L292
	lw	a4,0(a0)
	lw	a5,0(a1)
	blt	a4,a5,.L293
	sgt	a0,a4,a5
	j	.L291
.L292:
	li	a0,0
	j	.L291
.L293:
	li	a0,-1
.L291:
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
	j	.L295
.L297:
	addi	a2,a2,-1
	addi	a0,a0,4
.L295:
	beq	a2,zero,.L296
	lw	a5,0(a0)
	bne	a1,a5,.L297
.L296:
	bne	a2,zero,.L298
	li	a0,0
.L298:
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
	j	.L301
.L303:
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
.L301:
	beq	a2,zero,.L302
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L303
.L302:
	beq	a2,zero,.L305
	lw	a4,0(a0)
	lw	a5,0(a1)
	blt	a4,a5,.L306
	sgt	a0,a4,a5
	j	.L304
.L305:
	li	a0,0
	j	.L304
.L306:
	li	a0,-1
.L304:
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
	j	.L308
.L309:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L308:
	addi	a2,a2,-1
	li	a4,-1
	bne	a2,a4,.L309
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
	beq	a0,a1,.L311
	sub	a5,a0,a1
	slli	a4,a2,2
	bgeu	a5,a4,.L316
	add	a1,a1,a4
	add	a5,a0,a4
	addi	a3,a0,-4
	j	.L313
.L314:
	lw	a4,0(a1)
	sw	a4,0(a5)
.L313:
	addi	a1,a1,-4
	addi	a5,a5,-4
	bne	a5,a3,.L314
	j	.L311
.L315:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	j	.L312
.L316:
	mv	a5,a0
.L312:
	addi	a2,a2,-1
	li	a4,-1
	bne	a2,a4,.L315
.L311:
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
	j	.L318
.L319:
	addi	a5,a5,4
	sw	a1,-4(a5)
.L318:
	addi	a2,a2,-1
	li	a4,-1
	bne	a2,a4,.L319
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
	bgeu	a0,a1,.L321
	add	a5,a0,a2
	add	a1,a1,a2
	j	.L322
.L323:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
.L322:
	bne	a5,a0,.L323
	j	.L320
.L321:
	beq	a0,a1,.L320
	add	a2,a1,a2
	mv	a5,a0
	j	.L325
.L326:
	addi	a5,a5,1
	addi	a1,a1,1
	lbu	a4,-1(a5)
	sb	a4,-1(a1)
.L325:
	bne	a1,a2,.L326
.L320:
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
	blt	a3,zero,.L328
	li	a4,0
	sll	a5,a0,a3
	j	.L329
.L328:
	srli	a3,a0,1
	li	a5,31
	sub	a5,a5,a2
	srl	a3,a3,a5
	sll	a5,a1,a2
	or	a5,a3,a5
	sll	a4,a0,a2
.L329:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L330
	srl	t1,a1,a3
	li	t2,0
	j	.L331
.L330:
	slli	a3,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a3,a3,t1
	srl	t1,a0,a2
	or	t1,a3,t1
	srl	t2,a1,a2
.L331:
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
	blt	a3,zero,.L333
	srl	a4,a1,a3
	li	a5,0
	j	.L334
.L333:
	slli	a3,a1,1
	li	a5,31
	sub	a5,a5,a2
	sll	a3,a3,a5
	srl	a4,a0,a2
	or	a4,a3,a4
	srl	a5,a1,a2
.L334:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L335
	li	t1,0
	sll	t2,a0,a3
	j	.L336
.L335:
	srli	a3,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a3,a3,t1
	sll	t2,a1,a2
	or	t2,a3,t2
	sll	t1,a0,a2
.L336:
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
	j	.L349
.L352:
	srl	a4,a0,a5
	andi	a4,a4,1
	beq	a4,zero,.L350
	addi	a0,a5,1
	j	.L351
.L350:
	addi	a5,a5,1
.L349:
	li	a4,32
	bne	a5,a4,.L352
	li	a0,0
.L351:
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
	beq	a0,zero,.L357
	li	a5,1
	j	.L355
.L356:
	srai	a0,a0,1
	addi	a5,a5,1
.L355:
	andi	a4,a0,1
	beq	a4,zero,.L356
	mv	a0,a5
	j	.L354
.L357:
	li	a0,0
.L354:
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
	blt	a0,zero,.L361
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s1
	call	__gtsf2
	ble	a0,zero,.L364
	li	a0,1
	j	.L359
.L361:
	li	a0,1
	j	.L359
.L364:
	li	a0,0
.L359:
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
	blt	a0,zero,.L368
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	ble	a0,zero,.L371
	li	a0,1
	j	.L366
.L368:
	li	a0,1
	j	.L366
.L371:
	li	a0,0
.L366:
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
	blt	a0,zero,.L375
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
	ble	a0,zero,.L378
	li	a0,1
	j	.L373
.L375:
	li	a0,1
	j	.L373
.L378:
	li	a0,0
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
	bne	a0,zero,.L381
	lw	a1,-16(s0)
	mv	a0,a1
	call	__addsf3
	mv	a1,a0
	lw	a0,-16(s0)
	call	__nesf2
	beq	a0,zero,.L381
	bge	s1,zero,.L386
	lui	a5,%hi(.LC7)
	lw	a5,%lo(.LC7)(a5)
	sw	a5,-20(s0)
	j	.L385
.L386:
	lui	a5,%hi(.LC8)
	lw	a5,%lo(.LC8)(a5)
	sw	a5,-20(s0)
.L385:
	andi	a5,s1,1
	beq	a5,zero,.L384
	lw	a1,-20(s0)
	lw	a0,-16(s0)
	call	__mulsf3
	sw	a0,-16(s0)
.L384:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L381
	lw	a1,-20(s0)
	mv	a0,a1
	call	__mulsf3
	sw	a0,-20(s0)
	j	.L385
.L381:
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
	bne	a0,zero,.L389
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
	beq	a0,zero,.L389
	bge	s1,zero,.L394
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	j	.L393
.L394:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
.L393:
	andi	a5,s1,1
	beq	a5,zero,.L392
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
.L392:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L389
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,-28(s0)
	sw	a1,-24(s0)
	j	.L393
.L389:
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
	bne	a0,zero,.L397
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
	beq	a0,zero,.L397
	bge	s1,zero,.L402
	lui	a5,%hi(.LC11)
	sw	zero,-76(s0)
	lw	a4,%lo(.LC11+4)(a5)
	sw	a4,-72(s0)
	lw	a4,%lo(.LC11+8)(a5)
	sw	a4,-68(s0)
	lw	a5,%lo(.LC11+12)(a5)
	sw	a5,-64(s0)
	j	.L401
.L402:
	lui	a5,%hi(.LC12)
	sw	zero,-76(s0)
	lw	a4,%lo(.LC12+4)(a5)
	sw	a4,-72(s0)
	lw	a4,%lo(.LC12+8)(a5)
	sw	a4,-68(s0)
	lw	a5,%lo(.LC12+12)(a5)
	sw	a5,-64(s0)
.L401:
	andi	a5,s1,1
	beq	a5,zero,.L400
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
.L400:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L397
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
	j	.L401
.L397:
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
	j	.L405
.L406:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
.L405:
	bne	a5,a2,.L406
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
	j	.L408
.L410:
	lw	a5,-16(s0)
	addi	a5,a5,1
	sw	a5,-16(s0)
	addi	a0,a0,1
	addi	s1,s1,-1
.L408:
	beq	s1,zero,.L409
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	sb	a5,0(a0)
	bne	a5,zero,.L410
.L409:
	bne	s1,zero,.L411
	sb	zero,0(a0)
.L411:
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
	j	.L413
.L415:
	addi	a0,a0,1
.L413:
	beq	a0,a1,.L414
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L415
.L414:
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
	j	.L417
.L419:
	addi	a5,a5,1
	lbu	a3,-1(a5)
	lbu	a4,0(a0)
	bne	a3,a4,.L420
	j	.L418
.L422:
	mv	a5,a1
.L420:
	lbu	a4,0(a5)
	bne	a4,zero,.L419
	addi	a0,a0,1
.L417:
	lbu	a5,0(a0)
	bne	a5,zero,.L422
	li	a0,0
.L418:
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
.L425:
	lbu	a4,0(a5)
	bne	a1,a4,.L424
	mv	a0,a5
.L424:
	addi	a5,a5,1
	lbu	a4,-1(a5)
	bne	a4,zero,.L425
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
	sw	a0,-24(s0)
	beq	a0,zero,.L431
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
.L431:
	mv	a0,s1
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
	sw	a2,-16(s0)
	sw	a3,-24(s0)
	sub	a5,a1,a3
	add	a5,a0,a5
	sw	a5,-20(s0)
	beq	a3,zero,.L447
	bltu	a1,a3,.L452
	mv	s1,a0
	j	.L448
.L450:
	lbu	a4,0(s1)
	lw	a5,-16(s0)
	lbu	a5,0(a5)
	bne	a4,a5,.L449
	lw	a5,-24(s0)
	addi	a2,a5,-1
	lw	a5,-16(s0)
	addi	a1,a5,1
	addi	a0,s1,1
	call	memcmp
	beq	a0,zero,.L453
.L449:
	addi	s1,s1,1
.L448:
	lw	a5,-20(s0)
	bleu	s1,a5,.L450
	li	a0,0
	j	.L447
.L452:
	li	a0,0
	j	.L447
.L453:
	mv	a0,s1
.L447:
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
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	sw	a2,-28(s0)
	li	a2,0
	li	a3,0
	call	__ltdf2
	bge	a0,zero,.L472
	lw	a1,-20(s0)
	lw	a2,-16(s0)
	li	a3,-2147483648
	xor	a5,a2,a3
	sw	a1,-20(s0)
	sw	a5,-16(s0)
	li	a5,1
	sw	a5,-24(s0)
	j	.L456
.L472:
	sw	zero,-24(s0)
.L456:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__gedf2
	bge	a0,zero,.L467
	j	.L473
.L460:
	addi	s1,s1,1
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	j	.L458
.L467:
	li	s1,0
.L458:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__gedf2
	bge	a0,zero,.L460
	j	.L461
.L473:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__ltdf2
	bge	a0,zero,.L474
	li	a2,0
	li	a3,0
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__nedf2
	bne	a0,zero,.L469
	li	s1,0
	j	.L461
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
.L463:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	call	__ltdf2
	blt	a0,zero,.L464
	j	.L461
.L474:
	li	s1,0
.L461:
	lw	a5,-28(s0)
	sw	s1,0(a5)
	lw	a5,-24(s0)
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
	j	.L476
.L479:
	andi	a5,a0,1
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	beq	a5,zero,.L477
	lw	t0,-36(s0)
	add	a4,t0,a2
	sltu	t0,a4,t0
	lw	s1,-32(s0)
	add	a5,s1,a3
	add	a5,t0,a5
	sw	a4,-36(s0)
	sw	a5,-32(s0)
.L477:
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
.L476:
	or	a5,a0,a1
	bne	a5,zero,.L479
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
	j	.L481
.L483:
	slli	a1,a1,1
	slli	a5,a5,1
.L481:
	bgeu	a1,a0,.L488
	addi	a4,a4,-1
	beq	a4,zero,.L489
	bge	a1,zero,.L483
	li	a4,0
	j	.L485
.L486:
	bltu	a0,a1,.L484
	sub	a0,a0,a1
	or	a4,a4,a5
.L484:
	srli	a5,a5,1
	srli	a1,a1,1
	j	.L485
.L488:
	li	a4,0
	j	.L485
.L489:
	li	a4,0
.L485:
	bne	a5,zero,.L486
	bne	a2,zero,.L487
	mv	a0,a4
.L487:
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
	beq	a0,zero,.L493
	slli	a0,a0,8
	call	__clzsi2
	addi	a0,a0,-1
	j	.L492
.L493:
	li	a0,7
.L492:
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
	bge	a1,zero,.L495
	not	a4,a0
	not	a5,a1
	mv	a0,a4
	mv	a1,a5
.L495:
	or	a5,a0,a1
	beq	a5,zero,.L499
	call	__clzdi2
	addi	a0,a0,-1
	j	.L497
.L499:
	li	a0,63
.L497:
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
	j	.L501
.L503:
	andi	a4,a5,1
	beq	a4,zero,.L502
	add	a0,a0,a1
.L502:
	srli	a5,a5,1
	slli	a1,a1,1
.L501:
	bne	a5,zero,.L503
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
	bltu	a0,a1,.L505
	add	a4,a1,a2
	bgeu	a4,a0,.L506
.L505:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,3
	add	t0,t0,a1
	j	.L507
.L508:
	lw	t1,0(a4)
	lw	t2,4(a4)
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a4,a4,8
	addi	a3,a3,8
.L507:
	bne	a4,t0,.L508
	j	.L509
.L510:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L509:
	bgtu	a2,a5,.L510
	j	.L504
.L512:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L506:
	addi	a2,a2,-1
	li	a5,-1
	bne	a2,a5,.L512
.L504:
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
	bltu	a0,a1,.L514
	add	a5,a1,a2
	bgeu	a5,a0,.L515
.L514:
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
	j	.L516
.L517:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
.L516:
	bne	a5,t1,.L517
	andi	a5,a2,1
	beq	a5,zero,.L513
	addi	a2,a2,-1
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	j	.L513
.L519:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L515:
	addi	a2,a2,-1
	li	a5,-1
	bne	a2,a5,.L519
.L513:
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
	bltu	a0,a1,.L521
	add	a4,a1,a2
	bgeu	a4,a0,.L522
.L521:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,2
	add	t0,t0,a1
	j	.L523
.L524:
	lw	t1,0(a4)
	sw	t1,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
.L523:
	bne	a4,t0,.L524
	j	.L525
.L526:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L525:
	bgtu	a2,a5,.L526
	j	.L520
.L528:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L522:
	addi	a2,a2,-1
	li	a5,-1
	bne	a2,a5,.L528
.L520:
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
	j	.L536
.L538:
	li	a5,15
	sub	a5,a5,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L537
	addi	a0,a0,1
.L536:
	li	a5,16
	bne	a0,a5,.L538
.L537:
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
	j	.L540
.L542:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L541
	addi	a0,a0,1
.L540:
	li	a5,16
	bne	a0,a5,.L542
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
	blt	a0,zero,.L548
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s1
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L546
.L548:
	mv	a0,s1
	call	__fixsfsi
.L546:
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
	j	.L550
.L552:
	sra	a4,a0,a5
	andi	a4,a4,1
	beq	a4,zero,.L551
	addi	a3,a3,1
.L551:
	addi	a5,a5,1
.L550:
	li	a4,16
	bne	a5,a4,.L552
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
	j	.L554
.L556:
	sra	a4,a3,a5
	andi	a4,a4,1
	beq	a4,zero,.L555
	addi	a0,a0,1
.L555:
	addi	a5,a5,1
.L554:
	li	a4,16
	bne	a5,a4,.L556
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
	j	.L558
.L560:
	andi	a4,a5,1
	beq	a4,zero,.L559
	add	a0,a0,a1
.L559:
	srli	a5,a5,1
	slli	a1,a1,1
.L558:
	bne	a5,zero,.L560
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
	beq	a0,zero,.L566
	li	a4,0
	j	.L563
.L565:
	andi	a5,a1,1
	beq	a5,zero,.L564
	add	a4,a4,a0
.L564:
	slli	a0,a0,1
	srli	a1,a1,1
.L563:
	bne	a1,zero,.L565
	mv	a0,a4
	j	.L562
.L566:
	li	a0,0
.L562:
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
	j	.L568
.L570:
	slli	a1,a1,1
	slli	a5,a5,1
.L568:
	bgeu	a1,a0,.L575
	addi	a4,a4,-1
	beq	a4,zero,.L576
	bge	a1,zero,.L570
	li	a4,0
	j	.L572
.L573:
	bltu	a0,a1,.L571
	sub	a0,a0,a1
	or	a4,a4,a5
.L571:
	srli	a5,a5,1
	srli	a1,a1,1
	j	.L572
.L575:
	li	a4,0
	j	.L572
.L576:
	li	a4,0
.L572:
	bne	a5,zero,.L573
	bne	a2,zero,.L574
	mv	a0,a4
.L574:
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
	blt	a0,zero,.L580
	mv	a1,s1
	lw	a0,-16(s0)
	call	__gtsf2
	bgt	a0,zero,.L581
	li	a0,0
	j	.L579
.L580:
	li	a0,-1
	j	.L579
.L581:
	li	a0,1
.L579:
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
	blt	a0,zero,.L584
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	lw	a0,-16(s0)
	lw	a1,-12(s0)
	call	__gtdf2
	bgt	a0,zero,.L585
	li	a0,0
	j	.L583
.L584:
	li	a0,-1
	j	.L583
.L585:
	li	a0,1
.L583:
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
	bge	a1,zero,.L595
	neg	a1,a1
	li	a2,1
	j	.L589
.L595:
	li	a2,0
.L589:
	li	a5,33
	li	a3,0
	j	.L590
.L593:
	andi	a4,a1,1
	beq	a4,zero,.L591
	add	a3,a3,a0
.L591:
	slli	a0,a0,1
	srai	a1,a1,1
.L590:
	beq	a1,zero,.L592
	addi	a5,a5,-1
	andi	a5,a5,0xff
	bne	a5,zero,.L593
.L592:
	beq	a2,zero,.L596
	neg	a0,a3
	j	.L594
.L596:
	mv	a0,a3
.L594:
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
	bge	a0,zero,.L601
	neg	a0,a0
	li	s1,1
	j	.L598
.L601:
	li	s1,0
.L598:
	bge	a1,zero,.L599
	neg	a1,a1
	xori	s1,s1,1
.L599:
	li	a2,0
	call	__udivmodsi4
	beq	s1,zero,.L600
	neg	a0,a0
.L600:
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
	bge	a0,zero,.L606
	neg	a0,a0
	li	s1,1
	j	.L603
.L606:
	li	s1,0
.L603:
	bge	a1,zero,.L604
	neg	a1,a1
.L604:
	li	a2,1
	call	__udivmodsi4
	beq	s1,zero,.L605
	neg	a0,a0
.L605:
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
	j	.L608
.L610:
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
.L608:
	bgeu	a1,a0,.L615
	addi	a4,a4,-1
	beq	a4,zero,.L616
	slli	a3,a1,16
	srai	a3,a3,16
	bge	a3,zero,.L610
	li	a4,0
	j	.L612
.L613:
	bltu	a0,a1,.L611
	sub	a0,a0,a1
	slli	a0,a0,16
	srli	a0,a0,16
	or	a4,a4,a5
.L611:
	srli	a5,a5,1
	srli	a1,a1,1
	j	.L612
.L615:
	li	a4,0
	j	.L612
.L616:
	li	a4,0
.L612:
	bne	a5,zero,.L613
	bne	a2,zero,.L614
	mv	a0,a4
.L614:
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
	j	.L619
.L621:
	slli	a1,a1,1
	slli	a5,a5,1
.L619:
	bgeu	a1,a0,.L626
	addi	a4,a4,-1
	beq	a4,zero,.L627
	bge	a1,zero,.L621
	li	a4,0
	j	.L623
.L624:
	bltu	a0,a1,.L622
	sub	a0,a0,a1
	or	a4,a4,a5
.L622:
	srli	a5,a5,1
	srli	a1,a1,1
	j	.L623
.L626:
	li	a4,0
	j	.L623
.L627:
	li	a4,0
.L623:
	bne	a5,zero,.L624
	bne	a2,zero,.L625
	mv	a0,a4
.L625:
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
	beq	a3,zero,.L630
	li	a0,0
	addi	a2,a2,-32
	sll	a1,t1,a2
	j	.L632
.L630:
	beq	a2,zero,.L633
	sll	a0,a0,a2
	sll	a3,a1,a2
	li	a5,32
	sub	a5,a5,a2
	srl	a5,t1,a5
	or	a1,a5,a3
	j	.L632
.L633:
.L632:
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
	beq	a3,zero,.L635
	srai	a1,a1,31
	addi	a2,a2,-32
	sra	a0,t2,a2
	j	.L637
.L635:
	beq	a2,zero,.L638
	sra	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L637
.L638:
.L637:
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
	li	a5,65536
	bgeu	a0,a5,.L646
	li	s1,16
	j	.L642
.L646:
	li	s1,0
.L642:
	li	a5,16
	sub	a5,a5,s1
	srl	a0,a0,a5
	srli	a5,a0,8
	andi	a5,a5,255
	bne	a5,zero,.L647
	li	a4,8
	j	.L643
.L647:
	li	a4,0
.L643:
	li	a5,8
	sub	a5,a5,a4
	srl	a0,a0,a5
	add	s1,s1,a4
	andi	a5,a0,240
	bne	a5,zero,.L648
	li	a4,4
	j	.L644
.L648:
	li	a4,0
.L644:
	li	a5,4
	sub	a5,a5,a4
	srl	a0,a0,a5
	add	s1,s1,a4
	andi	a5,a0,12
	bne	a5,zero,.L649
	li	a5,2
	j	.L645
.L649:
	li	a5,0
.L645:
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
	bgt	a3,a1,.L652
	blt	a3,a1,.L653
	bgtu	a2,a0,.L654
	bltu	a2,a0,.L655
	li	a0,1
	j	.L651
.L652:
	li	a0,0
	j	.L651
.L653:
	li	a0,2
	j	.L651
.L654:
	li	a0,0
	j	.L651
.L655:
	li	a0,2
.L651:
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
	slli	a5,a0,16
	srli	a5,a5,16
	bne	a5,zero,.L662
	li	a4,16
	j	.L658
.L662:
	li	a4,0
.L658:
	srl	a0,a0,a4
	andi	a5,a0,255
	bne	a5,zero,.L663
	li	a5,8
	j	.L659
.L663:
	li	a5,0
.L659:
	srl	a0,a0,a5
	add	a4,a4,a5
	andi	a5,a0,15
	bne	a5,zero,.L664
	li	a5,4
	j	.L660
.L664:
	li	a5,0
.L660:
	srl	a0,a0,a5
	add	a4,a4,a5
	andi	a5,a0,3
	bne	a5,zero,.L665
	li	a5,2
	j	.L661
.L665:
	li	a5,0
.L661:
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
	beq	a3,zero,.L667
	li	a1,0
	addi	a2,a2,-32
	srl	a0,t2,a2
	j	.L669
.L667:
	beq	a2,zero,.L670
	srl	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L669
.L670:
.L669:
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
.L681:
	andi	a5,s1,1
	beq	a5,zero,.L679
	lw	a2,-20(s0)
	lw	a3,-16(s0)
	lw	a0,-28(s0)
	lw	a1,-24(s0)
	call	__muldf3
	sw	a0,-28(s0)
	sw	a1,-24(s0)
.L679:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L680
	lw	a0,-20(s0)
	lw	a1,-16(s0)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,-20(s0)
	sw	a1,-16(s0)
	j	.L681
.L680:
	lw	a5,-32(s0)
	beq	a5,zero,.L683
	lw	a2,-28(s0)
	lw	a3,-24(s0)
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	j	.L682
.L683:
	lw	a0,-28(s0)
	lw	a1,-24(s0)
.L682:
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
.L687:
	andi	a5,s1,1
	beq	a5,zero,.L685
	lw	a1,-16(s0)
	lw	a0,-20(s0)
	call	__mulsf3
	sw	a0,-20(s0)
.L685:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L686
	lw	a1,-16(s0)
	mv	a0,a1
	call	__mulsf3
	sw	a0,-16(s0)
	j	.L687
.L686:
	lw	a5,-24(s0)
	beq	a5,zero,.L689
	lw	a1,-20(s0)
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	j	.L688
.L689:
	lw	a0,-20(s0)
.L688:
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
	bgtu	a3,a1,.L692
	bltu	a3,a1,.L693
	bgtu	a2,a0,.L694
	bltu	a2,a0,.L695
	li	a0,1
	j	.L691
.L692:
	li	a0,0
	j	.L691
.L693:
	li	a0,2
	j	.L691
.L694:
	li	a0,0
	j	.L691
.L695:
	li	a0,2
.L691:
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
	.section	.rodata
	.align	3
.LC0:
	.word	1284865837
	.word	1481765933
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.align	3
.LC3:
	.word	-1
	.word	-1048577
	.align	3
.LC4:
	.word	-1
	.word	2146435071
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
	.align	2
.LC7:
	.word	1056964608
	.set	.LC8,.LC12+12
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.set	.LC10,.LC12+8
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
	.align	3
.LC13:
	.word	0
	.word	1072693248
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
