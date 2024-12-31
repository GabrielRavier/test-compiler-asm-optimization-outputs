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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	bgeu	a4,a5,.L2
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,12(sp)
	lw	a4,16(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,16(sp)
	j	.L3
.L4:
	lw	a5,12(sp)
	addi	a5,a5,-1
	sw	a5,12(sp)
	lw	a5,16(sp)
	addi	a5,a5,-1
	sw	a5,16(sp)
	lw	a5,12(sp)
	lbu	a4,0(a5)
	lw	a5,16(sp)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L3:
	lw	a5,0(sp)
	bne	a5,zero,.L4
	j	.L5
.L2:
	lw	a4,12(sp)
	lw	a5,16(sp)
	beq	a4,a5,.L5
	j	.L6
.L7:
	lw	a4,12(sp)
	addi	a5,a4,1
	sw	a5,12(sp)
	lw	a5,16(sp)
	addi	a3,a5,1
	sw	a3,16(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L6:
	lw	a5,0(sp)
	bne	a5,zero,.L7
.L5:
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	a0,12(sp)
	sw	a1,8(sp)
	sw	a2,4(sp)
	sw	a3,0(sp)
	lw	a5,12(sp)
	sw	a5,20(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	andi	a5,a5,0xff
	sw	a5,4(sp)
	j	.L11
.L13:
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,16(sp)
	addi	a5,a5,1
	sw	a5,16(sp)
	lw	a5,20(sp)
	addi	a5,a5,1
	sw	a5,20(sp)
.L11:
	lw	a5,0(sp)
	beq	a5,zero,.L12
	lw	a5,16(sp)
	lbu	a4,0(a5)
	lw	a5,20(sp)
	sb	a4,0(a5)
	lw	a5,20(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,4(sp)
	bne	a5,a4,.L13
.L12:
	lw	a5,0(sp)
	beq	a5,zero,.L14
	lw	a5,20(sp)
	addi	a5,a5,1
	j	.L15
.L14:
	li	a5,0
.L15:
	mv	a0,a5
	addi	sp,sp,24
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	lw	a5,4(sp)
	andi	a5,a5,0xff
	sw	a5,4(sp)
	j	.L18
.L20:
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L18:
	lw	a5,0(sp)
	beq	a5,zero,.L19
	lw	a5,12(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,4(sp)
	bne	a5,a4,.L20
.L19:
	lw	a5,0(sp)
	beq	a5,zero,.L21
	lw	a5,12(sp)
	j	.L23
.L21:
	li	a5,0
.L23:
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	j	.L26
.L28:
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,16(sp)
	addi	a5,a5,1
	sw	a5,16(sp)
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
.L26:
	lw	a5,0(sp)
	beq	a5,zero,.L27
	lw	a5,16(sp)
	lbu	a4,0(a5)
	lw	a5,12(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L28
.L27:
	lw	a5,0(sp)
	beq	a5,zero,.L29
	lw	a5,16(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,12(sp)
	lbu	a5,0(a5)
	sub	a5,a4,a5
	j	.L31
.L29:
	li	a5,0
.L31:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	j	.L34
.L35:
	lw	a4,12(sp)
	addi	a5,a4,1
	sw	a5,12(sp)
	lw	a5,16(sp)
	addi	a3,a5,1
	sw	a3,16(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L34:
	lw	a5,0(sp)
	bne	a5,zero,.L35
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	lw	a5,4(sp)
	andi	a5,a5,0xff
	sw	a5,4(sp)
	j	.L39
.L41:
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,4(sp)
	bne	a5,a4,.L39
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	j	.L40
.L39:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L41
	li	a5,0
.L40:
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	j	.L44
.L45:
	lw	a5,4(sp)
	andi	a4,a5,0xff
	lw	a5,12(sp)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
.L44:
	lw	a5,0(sp)
	bne	a5,zero,.L45
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,16
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	j	.L49
.L50:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L49:
	lw	a5,0(sp)
	lbu	a4,0(a5)
	lw	a5,4(sp)
	sb	a4,0(a5)
	lw	a5,4(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L50
	lw	a5,4(sp)
	mv	a0,a5
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,0(sp)
	andi	a5,a5,0xff
	sw	a5,0(sp)
	j	.L54
.L56:
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L54:
	lw	a5,4(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L55
	lw	a5,4(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,0(sp)
	bne	a5,a4,.L56
.L55:
	lw	a5,4(sp)
	mv	a0,a5
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	mv	a5,a0
	sw	a1,0(sp)
.L62:
	lbu	a4,0(a5)
	mv	a3,a4
	lw	a4,0(sp)
	bne	a4,a3,.L60
	j	.L61
.L60:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L62
	li	a5,0
.L61:
	mv	a0,a5
	addi	sp,sp,4
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	j	.L65
.L67:
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
.L65:
	lw	a5,4(sp)
	lbu	a4,0(a5)
	lw	a5,0(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L66
	lw	a5,4(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L67
.L66:
	lw	a5,4(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,0(sp)
	lbu	a5,0(a5)
	sub	a5,a4,a5
	mv	a0,a5
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
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	j	.L71
.L72:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
.L71:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L72
	lw	a4,0(sp)
	lw	a5,4(sp)
	sub	a5,a4,a5
	mv	a0,a5
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L78
	li	a5,0
	j	.L77
.L80:
	lw	a5,16(sp)
	addi	a5,a5,1
	sw	a5,16(sp)
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L78:
	lw	a5,16(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L79
	lw	a5,12(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L79
	lw	a5,0(sp)
	beq	a5,zero,.L79
	lw	a5,16(sp)
	lbu	a4,0(a5)
	lw	a5,12(sp)
	lbu	a5,0(a5)
	beq	a4,a5,.L80
.L79:
	lw	a5,16(sp)
	lbu	a5,0(a5)
	mv	a4,a5
	lw	a5,12(sp)
	lbu	a5,0(a5)
	sub	a5,a4,a5
.L77:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	j	.L83
.L84:
	lw	a5,16(sp)
	addi	a5,a5,1
	lbu	a4,0(a5)
	lw	a5,12(sp)
	sb	a4,0(a5)
	lw	a5,12(sp)
	addi	a5,a5,1
	lw	a4,16(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,12(sp)
	addi	a5,a5,2
	sw	a5,12(sp)
	lw	a5,16(sp)
	addi	a5,a5,2
	sw	a5,16(sp)
	lw	a5,0(sp)
	addi	a5,a5,-2
	sw	a5,0(sp)
.L83:
	lw	a4,0(sp)
	li	a5,1
	bgt	a4,a5,.L84
	nop
	nop
	addi	sp,sp,20
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	ori	a5,a5,32
	addi	a5,a5,-97
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	sltiu	a5,a5,128
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a4,0(sp)
	li	a5,32
	beq	a4,a5,.L93
	lw	a4,0(sp)
	li	a5,9
	bne	a4,a5,.L94
.L93:
	li	a5,1
	j	.L96
.L94:
	li	a5,0
.L96:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a4,0(sp)
	li	a5,31
	bleu	a4,a5,.L99
	lw	a4,0(sp)
	li	a5,127
	bne	a4,a5,.L100
.L99:
	li	a5,1
	j	.L102
.L100:
	li	a5,0
.L102:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-48
	sltiu	a5,a5,10
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-33
	sltiu	a5,a5,94
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-97
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-32
	sltiu	a5,a5,95
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a4,0(sp)
	li	a5,32
	beq	a4,a5,.L117
	lw	a5,0(sp)
	addi	a4,a5,-9
	li	a5,4
	bgtu	a4,a5,.L118
.L117:
	li	a5,1
	j	.L120
.L118:
	li	a5,0
.L120:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-65
	sltiu	a5,a5,26
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a4,0(sp)
	li	a5,31
	bleu	a4,a5,.L126
	lw	a5,0(sp)
	addi	a4,a5,-127
	li	a5,32
	bleu	a4,a5,.L126
	lw	a4,0(sp)
	li	a5,-8192
	addi	a5,a5,-40
	add	a4,a4,a5
	li	a5,1
	bleu	a4,a5,.L126
	lw	a4,0(sp)
	li	a5,-65536
	addi	a5,a5,7
	add	a4,a4,a5
	li	a5,2
	bgtu	a4,a5,.L127
.L126:
	li	a5,1
	j	.L129
.L127:
	li	a5,0
.L129:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-48
	sltiu	a5,a5,10
	andi	a5,a5,0xff
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a4,0(sp)
	li	a5,254
	bgtu	a4,a5,.L135
	lw	a5,0(sp)
	addi	a5,a5,1
	andi	a5,a5,127
	sltiu	a5,a5,33
	seqz	a5,a5
	andi	a5,a5,0xff
	j	.L136
.L135:
	lw	a4,0(sp)
	li	a5,8192
	addi	a5,a5,39
	bleu	a4,a5,.L137
	lw	a4,0(sp)
	li	a5,-8192
	addi	a5,a5,-42
	add	a4,a4,a5
	li	a5,45056
	addi	a5,a5,2005
	bleu	a4,a5,.L137
	lw	a4,0(sp)
	li	a5,-57344
	add	a4,a4,a5
	li	a5,8192
	addi	a5,a5,-8
	bgtu	a4,a5,.L138
.L137:
	li	a5,1
	j	.L136
.L138:
	lw	a4,0(sp)
	li	a5,-65536
	addi	a5,a5,4
	add	a4,a4,a5
	li	a5,1048576
	addi	a5,a5,3
	bgtu	a4,a5,.L139
	lw	a4,0(sp)
	li	a5,65536
	addi	a5,a5,-2
	and	a4,a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bne	a4,a5,.L140
.L139:
	li	a5,0
	j	.L136
.L140:
	li	a5,1
.L136:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L143
	lw	a5,0(sp)
	ori	a5,a5,32
	addi	a4,a5,-97
	li	a5,5
	bgtu	a4,a5,.L144
.L143:
	li	a5,1
	j	.L146
.L144:
	li	a5,0
.L146:
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	andi	a5,a5,127
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a0,zero,.L163
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L154
.L163:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L164
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L154
.L164:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L165
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	j	.L154
.L165:
	li	a4,0
	li	a5,0
.L154:
	mv	a0,a4
	mv	a1,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,4(sp)
	lw	a0,4(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a0,zero,.L179
	lw	a5,4(sp)
	j	.L170
.L179:
	lw	a1,0(sp)
	lw	a0,0(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L180
	lw	a5,0(sp)
	j	.L170
.L180:
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L181
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__subsf3
	mv	a5,a0
	j	.L170
.L181:
	mv	a5,zero
.L170:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a0,zero,.L198
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L186
.L198:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L199
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L186
.L199:
	lw	a4,12(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L189
	lw	a4,12(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L190
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L186
.L190:
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L186
.L189:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L200
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L186
.L200:
	lw	a4,8(sp)
	lw	a5,12(sp)
.L186:
	mv	a0,a4
	mv	a1,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,4(sp)
	lw	a0,4(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a0,zero,.L217
	lw	a5,0(sp)
	j	.L205
.L217:
	lw	a1,0(sp)
	lw	a0,0(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L218
	lw	a5,4(sp)
	j	.L205
.L218:
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,0(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L208
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L209
	lw	a5,0(sp)
	j	.L205
.L209:
	lw	a5,4(sp)
	j	.L205
.L208:
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L219
	lw	a5,0(sp)
	j	.L205
.L219:
	lw	a5,4(sp)
.L205:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,64(sp)
	mv	s0,a1
	lw	a5,0(a1)
	sw	a5,48(sp)
	lw	a5,4(a1)
	sw	a5,52(sp)
	lw	a5,8(a1)
	sw	a5,56(sp)
	lw	a5,12(a1)
	sw	a5,60(sp)
	mv	s0,a2
	lw	a5,0(a2)
	sw	a5,32(sp)
	lw	a5,4(a2)
	sw	a5,36(sp)
	lw	a5,8(a2)
	sw	a5,40(sp)
	lw	a5,12(a2)
	sw	a5,44(sp)
	lw	t0,48(sp)
	lw	t1,52(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	addi	t2,sp,16
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,sp
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a0,zero,.L236
	lw	a5,64(sp)
	lw	a4,32(sp)
	sw	a4,0(a5)
	lw	a4,36(sp)
	sw	a4,4(a5)
	lw	a4,40(sp)
	sw	a4,8(a5)
	lw	a4,44(sp)
	sw	a4,12(a5)
	j	.L224
.L236:
	lw	t0,32(sp)
	lw	t1,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	addi	t2,sp,16
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,s0
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L237
	lw	a5,64(sp)
	lw	a4,48(sp)
	sw	a4,0(a5)
	lw	a4,52(sp)
	sw	a4,4(a5)
	lw	a4,56(sp)
	sw	a4,8(a5)
	lw	a4,60(sp)
	sw	a4,12(a5)
	j	.L224
.L237:
	lw	a4,60(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,44(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L227
	lw	a4,60(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L228
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	j	.L229
.L228:
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
.L229:
	lw	a1,64(sp)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	j	.L224
.L227:
	lw	t0,48(sp)
	lw	t1,52(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	addi	t2,sp,16
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,s0
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L238
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	j	.L232
.L238:
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
.L232:
	lw	a1,64(sp)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
.L224:
	lw	a0,64(sp)
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a0,zero,.L255
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L243
.L255:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__unorddf2
	mv	a5,a0
	beq	a5,zero,.L256
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L243
.L256:
	lw	a4,12(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L246
	lw	a4,12(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L247
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L243
.L247:
	lw	a4,0(sp)
	lw	a5,4(sp)
	j	.L243
.L246:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L257
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L243
.L257:
	lw	a4,0(sp)
	lw	a5,4(sp)
.L243:
	mv	a0,a4
	mv	a1,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,4(sp)
	lw	a0,4(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a0,zero,.L274
	lw	a5,0(sp)
	j	.L262
.L274:
	lw	a1,0(sp)
	lw	a0,0(sp)
	call	__unordsf2
	mv	a5,a0
	beq	a5,zero,.L275
	lw	a5,4(sp)
	j	.L262
.L275:
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,0(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L265
	lw	a4,4(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L266
	lw	a5,4(sp)
	j	.L262
.L266:
	lw	a5,0(sp)
	j	.L262
.L265:
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__ltsf2
	mv	a5,a0
	bge	a5,zero,.L276
	lw	a5,4(sp)
	j	.L262
.L276:
	lw	a5,0(sp)
.L262:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,64(sp)
	mv	s0,a1
	lw	a5,0(a1)
	sw	a5,48(sp)
	lw	a5,4(a1)
	sw	a5,52(sp)
	lw	a5,8(a1)
	sw	a5,56(sp)
	lw	a5,12(a1)
	sw	a5,60(sp)
	mv	s0,a2
	lw	a5,0(a2)
	sw	a5,32(sp)
	lw	a5,4(a2)
	sw	a5,36(sp)
	lw	a5,8(a2)
	sw	a5,40(sp)
	lw	a5,12(a2)
	sw	a5,44(sp)
	lw	t0,48(sp)
	lw	t1,52(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	addi	t2,sp,16
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,sp
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a0,zero,.L293
	lw	a5,64(sp)
	lw	a4,32(sp)
	sw	a4,0(a5)
	lw	a4,36(sp)
	sw	a4,4(a5)
	lw	a4,40(sp)
	sw	a4,8(a5)
	lw	a4,44(sp)
	sw	a4,12(a5)
	j	.L281
.L293:
	lw	t0,32(sp)
	lw	t1,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	addi	t2,sp,16
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,s0
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	beq	a5,zero,.L294
	lw	a5,64(sp)
	lw	a4,48(sp)
	sw	a4,0(a5)
	lw	a4,52(sp)
	sw	a4,4(a5)
	lw	a4,56(sp)
	sw	a4,8(a5)
	lw	a4,60(sp)
	sw	a4,12(a5)
	j	.L281
.L294:
	lw	a4,60(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	mv	a3,a5
	lw	a4,44(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a3,a5,.L284
	lw	a4,60(sp)
	li	a5,-2147483648
	and	a5,a4,a5
	beq	a5,zero,.L285
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	j	.L286
.L285:
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
.L286:
	lw	a1,64(sp)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	j	.L281
.L284:
	lw	t0,48(sp)
	lw	t1,52(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	addi	t2,sp,16
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,s0
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	bge	a5,zero,.L295
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	j	.L289
.L295:
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,40(sp)
	lw	a5,44(sp)
.L289:
	lw	a1,64(sp)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
.L281:
	lw	a0,64(sp)
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	sw	a5,8(sp)
	j	.L298
.L299:
	lw	a5,4(sp)
	andi	a5,a5,63
	lui	a4,%hi(digits)
	addi	a4,a4,%lo(digits)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,8(sp)
	sb	a4,0(a5)
	lw	a5,8(sp)
	addi	a5,a5,1
	sw	a5,8(sp)
	lw	a5,4(sp)
	srli	a5,a5,6
	sw	a5,4(sp)
.L298:
	lw	a5,4(sp)
	bne	a5,zero,.L299
	lw	a5,8(sp)
	sb	zero,0(a5)
	lui	a5,%hi(s.0)
	addi	a5,a5,%lo(s.0)
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a3,0(sp)
	addi	a3,a3,-1
	mv	a4,a3
	li	a5,0
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	nop
	addi	sp,sp,4
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
	lui	a5,%hi(seed)
	lw	a4,%lo(seed)(a5)
	lw	a5,%lo(seed+4)(a5)
	lui	a3,%hi(.LC0)
	lw	a2,%lo(.LC0)(a3)
	lw	a3,%lo(.LC0+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	t1,a4
	sltu	t1,t1,a2
	add	a5,a3,a1
	add	a3,t1,a5
	mv	a5,a3
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	lui	a5,%hi(seed)
	lw	a4,%lo(seed)(a5)
	lw	a5,%lo(seed+4)(a5)
	srli	s0,a5,1
	li	s1,0
	mv	a5,s0
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a5,0(sp)
	sw	a5,8(sp)
	lw	a5,8(sp)
	bne	a5,zero,.L308
	lw	a5,12(sp)
	sw	zero,4(a5)
	lw	a5,12(sp)
	lw	a4,4(a5)
	lw	a5,12(sp)
	sw	a4,0(a5)
	j	.L307
.L308:
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,12(sp)
	sw	a4,0(a5)
	lw	a5,12(sp)
	lw	a4,8(sp)
	sw	a4,4(a5)
	lw	a5,8(sp)
	lw	a4,12(sp)
	sw	a4,0(a5)
	lw	a5,12(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L307
	lw	a5,12(sp)
	lw	a5,0(a5)
	lw	a4,12(sp)
	sw	a4,4(a5)
.L307:
	addi	sp,sp,16
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
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	lw	a5,4(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L312
	lw	a5,4(sp)
	lw	a5,0(a5)
	lw	a4,4(sp)
	lw	a4,4(a4)
	sw	a4,4(a5)
.L312:
	lw	a5,4(sp)
	lw	a5,4(a5)
	beq	a5,zero,.L314
	lw	a5,4(sp)
	lw	a5,4(a5)
	lw	a4,4(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L314:
	nop
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,20(sp)
	sw	a1,16(sp)
	sw	a2,12(sp)
	sw	a3,8(sp)
	sw	a4,4(sp)
	lw	a5,8(sp)
	mv	a4,a5
	sw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,32(sp)
	mv	s0,a4
	li	s1,0
	srli	a5,a4,29
	slli	t2,s1,3
	or	t2,a5,t2
	slli	t1,a4,3
	lw	a5,16(sp)
	sw	a5,28(sp)
	lw	a5,12(sp)
	lw	a5,0(a5)
	sw	a5,24(sp)
	sw	zero,36(sp)
	j	.L317
.L320:
	lw	a1,36(sp)
	lw	s0,0(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,28(sp)
	add	a4,a5,a4
	lw	a5,4(sp)
	mv	a1,a4
	lw	a0,20(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L318
	lw	a1,36(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,28(sp)
	add	a5,a5,a4
	j	.L319
.L318:
	lw	a5,36(sp)
	addi	a5,a5,1
	sw	a5,36(sp)
.L317:
	lw	a4,36(sp)
	lw	a5,24(sp)
	bltu	a4,a5,.L320
	lw	a5,24(sp)
	addi	a4,a5,1
	lw	a5,12(sp)
	sw	a4,0(a5)
	lw	a1,24(sp)
	lw	a0,0(sp)
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,28(sp)
	add	a5,a5,a4
	lw	a2,8(sp)
	lw	a1,20(sp)
	mv	a0,a5
	call	memcpy
	mv	a5,a0
.L319:
	mv	a0,a5
	lw	ra,48(sp)
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,20(sp)
	sw	a1,16(sp)
	sw	a2,12(sp)
	sw	a3,8(sp)
	sw	a4,4(sp)
	lw	a5,8(sp)
	mv	a4,a5
	sw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,32(sp)
	mv	s0,a4
	li	s1,0
	srli	a5,a4,29
	slli	t2,s1,3
	or	t2,a5,t2
	slli	t1,a4,3
	lw	a5,16(sp)
	sw	a5,28(sp)
	lw	a5,12(sp)
	lw	a5,0(a5)
	sw	a5,24(sp)
	sw	zero,36(sp)
	j	.L323
.L326:
	lw	a1,36(sp)
	lw	s0,0(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,28(sp)
	add	a4,a5,a4
	lw	a5,4(sp)
	mv	a1,a4
	lw	a0,20(sp)
	jalr	a5
	mv	a5,a0
	bne	a5,zero,.L324
	lw	a1,36(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,28(sp)
	add	a5,a5,a4
	j	.L325
.L324:
	lw	a5,36(sp)
	addi	a5,a5,1
	sw	a5,36(sp)
.L323:
	lw	a4,36(sp)
	lw	a5,24(sp)
	bltu	a4,a5,.L326
	li	a5,0
.L325:
	mv	a0,a5
	lw	ra,48(sp)
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	srai	a4,a5,31
	lw	a5,0(sp)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	zero,8(sp)
	sw	zero,4(sp)
	j	.L332
.L333:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
.L332:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L333
	lw	a5,0(sp)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L334
	li	a4,45
	bne	a5,a4,.L336
	li	a5,1
	sw	a5,4(sp)
.L334:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
	j	.L336
.L337:
	lw	a4,8(sp)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,0(sp)
	addi	a4,a5,1
	sw	a4,0(sp)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sub	a5,a3,a5
	sw	a5,8(sp)
.L336:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L337
	lw	a5,4(sp)
	bne	a5,zero,.L338
	lw	a5,8(sp)
	neg	a5,a5
	j	.L340
.L338:
	lw	a5,8(sp)
.L340:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	zero,8(sp)
	sw	zero,4(sp)
	j	.L343
.L344:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
.L343:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L344
	lw	a5,0(sp)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L345
	li	a4,45
	bne	a5,a4,.L347
	li	a5,1
	sw	a5,4(sp)
.L345:
	lw	a5,0(sp)
	addi	a5,a5,1
	sw	a5,0(sp)
	j	.L347
.L348:
	lw	a4,8(sp)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a3,a5
	lw	a5,0(sp)
	addi	a4,a5,1
	sw	a4,0(sp)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sub	a5,a3,a5
	sw	a5,8(sp)
.L347:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L348
	lw	a5,4(sp)
	bne	a5,zero,.L349
	lw	a5,8(sp)
	neg	a5,a5
	j	.L351
.L349:
	lw	a5,8(sp)
.L351:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,20(sp)
	addi	a5,sp,40
	sw	a5,8(sp)
	lw	a5,8(sp)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	sw	a5,8(sp)
	mv	a3,a5
	li	a4,0
	li	a5,0
	sw	a4,0(a3)
	sw	a5,4(a3)
	sw	zero,36(sp)
	j	.L354
.L355:
	lw	a5,20(sp)
	addi	a5,a5,1
	sw	a5,20(sp)
.L354:
	lw	a5,20(sp)
	lbu	a5,0(a5)
	mv	a0,a5
	call	isspace
	mv	a5,a0
	bne	a5,zero,.L355
	lw	a5,20(sp)
	lbu	a5,0(a5)
	li	a4,43
	beq	a5,a4,.L356
	li	a4,45
	bne	a5,a4,.L358
	li	a5,1
	sw	a5,36(sp)
.L356:
	lw	a5,20(sp)
	addi	a5,a5,1
	sw	a5,20(sp)
	j	.L358
.L359:
	lw	t0,8(sp)
	lw	a2,0(t0)
	lw	a3,4(t0)
	mv	a4,a2
	mv	a5,a3
	srli	a1,a4,30
	slli	s1,a5,2
	or	s1,a1,s1
	slli	s0,a4,2
	mv	a4,s0
	mv	a5,s1
	add	a0,a4,a2
	mv	t1,a0
	sltu	t1,t1,a4
	add	a1,a5,a3
	add	a5,t1,a1
	mv	a1,a5
	mv	a4,a0
	mv	a5,a1
	srli	a3,a4,31
	slli	a2,a5,1
	sw	a2,4(sp)
	lw	a2,4(sp)
	or	a3,a3,a2
	sw	a3,4(sp)
	slli	a5,a4,1
	sw	a5,0(sp)
	lw	a4,0(sp)
	lw	a5,4(sp)
	mv	a2,a4
	mv	a3,a5
	lw	a5,20(sp)
	addi	a4,a5,1
	sw	a4,20(sp)
	lbu	a5,0(a5)
	addi	a5,a5,-48
	sw	a5,12(sp)
	srai	a5,a5,31
	sw	a5,16(sp)
	lw	t1,12(sp)
	lw	t2,16(sp)
	mv	a1,t1
	sub	a4,a2,a1
	mv	a1,a4
	sgtu	a1,a1,a2
	mv	a0,t2
	sub	a5,a3,a0
	sub	a3,a5,a1
	mv	a5,a3
	sw	a4,0(t0)
	sw	a5,4(t0)
.L358:
	lw	a5,20(sp)
	lbu	a5,0(a5)
	addi	a4,a5,-48
	li	a5,9
	bleu	a4,a5,.L359
	lw	a5,36(sp)
	bne	a5,zero,.L360
	li	a4,0
	li	a5,0
	lw	a3,8(sp)
	lw	a0,0(a3)
	lw	a1,4(a3)
	sub	a2,a4,a0
	mv	t1,a2
	sgtu	t1,t1,a4
	sub	a3,a5,a1
	sub	a5,a3,t1
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	j	.L362
.L360:
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(a5)
.L362:
	mv	a0,a4
	mv	a1,a5
	lw	ra,48(sp)
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
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
	.cfi_offset 1, -4
	sw	a0,16(sp)
	sw	a1,12(sp)
	sw	a2,8(sp)
	sw	a3,4(sp)
	sw	a4,0(sp)
	j	.L365
.L370:
	lw	a5,8(sp)
	srli	a5,a5,1
	lw	a1,4(sp)
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,12(sp)
	add	a5,a5,a4
	sw	a5,24(sp)
	lw	a5,0(sp)
	lw	a1,24(sp)
	lw	a0,16(sp)
	jalr	a5
	sw	a0,20(sp)
	lw	a5,20(sp)
	bge	a5,zero,.L366
	lw	a5,8(sp)
	srli	a5,a5,1
	sw	a5,8(sp)
	j	.L365
.L366:
	lw	a5,20(sp)
	ble	a5,zero,.L368
	lw	a4,24(sp)
	lw	a5,4(sp)
	add	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	srli	a5,a5,1
	lw	a4,8(sp)
	sub	a5,a4,a5
	addi	a5,a5,-1
	sw	a5,8(sp)
	j	.L365
.L368:
	lw	a5,24(sp)
	j	.L369
.L365:
	lw	a5,8(sp)
	bne	a5,zero,.L370
	li	a5,0
.L369:
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
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
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	.cfi_offset 1, -4
	sw	a0,20(sp)
	sw	a1,16(sp)
	sw	a2,12(sp)
	sw	a3,8(sp)
	sw	a4,4(sp)
	sw	a5,0(sp)
	lw	a5,16(sp)
	sw	a5,36(sp)
	lw	a5,12(sp)
	sw	a5,32(sp)
	j	.L373
.L377:
	lw	a5,32(sp)
	srai	a5,a5,1
	lw	a1,8(sp)
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,36(sp)
	add	a5,a5,a4
	sw	a5,28(sp)
	lw	a5,4(sp)
	lw	a2,0(sp)
	lw	a1,28(sp)
	lw	a0,20(sp)
	jalr	a5
	sw	a0,24(sp)
	lw	a5,24(sp)
	bne	a5,zero,.L374
	lw	a5,28(sp)
	j	.L375
.L374:
	lw	a5,24(sp)
	ble	a5,zero,.L376
	lw	a4,28(sp)
	lw	a5,8(sp)
	add	a5,a4,a5
	sw	a5,36(sp)
	lw	a5,32(sp)
	addi	a5,a5,-1
	sw	a5,32(sp)
.L376:
	lw	a5,32(sp)
	srai	a5,a5,1
	sw	a5,32(sp)
.L373:
	lw	a5,32(sp)
	bne	a5,zero,.L377
	li	a5,0
.L375:
	mv	a0,a5
	lw	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,44
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,4(sp)
	lw	a1,4(sp)
	lw	a0,8(sp)
	call	__divsi3
	mv	a5,a0
	sw	a5,0(sp)
	lw	a5,8(sp)
	lw	a1,4(sp)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	lw	a4,0(sp)
	sw	a4,20(sp)
	sw	a5,24(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	mv	s0,a4
	mv	s1,a5
	mv	a4,s0
	mv	a5,s1
	mv	a0,a4
	mv	a1,a5
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
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
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a1,4(sp)
	srai	a4,a1,31
	lw	a1,4(sp)
	srai	a5,a1,31
	lw	a1,0(sp)
	xor	a2,a1,a4
	lw	a1,4(sp)
	xor	a3,a1,a5
	sub	a0,a2,a4
	mv	t1,a0
	sgtu	t1,t1,a2
	sub	a1,a3,a5
	sub	a5,a1,t1
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,16(sp)
	sw	a1,8(sp)
	sw	a2,12(sp)
	sw	a3,0(sp)
	sw	a4,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	mv	s0,a4
	mv	s1,a5
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	lw	a3,16(sp)
	sw	s0,0(a3)
	sw	s1,4(a3)
	lw	a3,16(sp)
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a0,16(sp)
	lw	ra,48(sp)
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	srai	a4,a5,31
	lw	a5,0(sp)
	xor	a5,a4,a5
	sub	a5,a5,a4
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,4(sp)
	lw	a1,4(sp)
	lw	a0,8(sp)
	call	__divsi3
	mv	a5,a0
	sw	a5,0(sp)
	lw	a5,8(sp)
	lw	a1,4(sp)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	lw	a4,0(sp)
	sw	a4,20(sp)
	sw	a5,24(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	mv	s0,a4
	mv	s1,a5
	mv	a4,s0
	mv	a5,s1
	mv	a0,a4
	mv	a1,a5
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
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
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a1,4(sp)
	srai	a4,a1,31
	lw	a1,4(sp)
	srai	a5,a1,31
	lw	a1,0(sp)
	xor	a2,a1,a4
	lw	a1,4(sp)
	xor	a3,a1,a5
	sub	a0,a2,a4
	mv	t1,a0
	sgtu	t1,t1,a2
	sub	a1,a3,a5
	sub	a5,a1,t1
	mv	a1,a5
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,16(sp)
	sw	a1,8(sp)
	sw	a2,12(sp)
	sw	a3,0(sp)
	sw	a4,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__divdi3
	mv	a4,a0
	mv	a5,a1
	mv	s0,a4
	mv	s1,a5
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a0,a4
	mv	a1,a5
	call	__moddi3
	mv	a4,a0
	mv	a5,a1
	lw	a3,16(sp)
	sw	s0,0(a3)
	sw	s1,4(a3)
	lw	a3,16(sp)
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a0,16(sp)
	lw	ra,48(sp)
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	j	.L401
.L403:
	lw	a5,4(sp)
	addi	a5,a5,4
	sw	a5,4(sp)
.L401:
	lw	a5,4(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L402
	lw	a5,4(sp)
	lw	a5,0(a5)
	lw	a4,0(sp)
	bne	a4,a5,.L403
.L402:
	lw	a5,4(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L404
	lw	a5,4(sp)
	j	.L406
.L404:
	li	a5,0
.L406:
	mv	a0,a5
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	j	.L409
.L411:
	lw	a5,4(sp)
	addi	a5,a5,4
	sw	a5,4(sp)
	lw	a5,0(sp)
	addi	a5,a5,4
	sw	a5,0(sp)
.L409:
	lw	a5,4(sp)
	lw	a4,0(a5)
	lw	a5,0(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L410
	lw	a5,4(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L410
	lw	a5,0(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L411
.L410:
	lw	a5,4(sp)
	lw	a4,0(a5)
	lw	a5,0(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L412
	lw	a5,4(sp)
	lw	a4,0(a5)
	lw	a5,0(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L414
.L412:
	li	a5,-1
.L414:
	mv	a0,a5
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	sw	a5,8(sp)
	nop
.L417:
	lw	a4,0(sp)
	addi	a5,a4,4
	sw	a5,0(sp)
	lw	a5,4(sp)
	addi	a3,a5,4
	sw	a3,4(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,0(a5)
	bne	a5,zero,.L417
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,12
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
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	j	.L421
.L422:
	lw	a5,0(sp)
	addi	a5,a5,4
	sw	a5,0(sp)
.L421:
	lw	a5,0(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L422
	lw	a4,0(sp)
	lw	a5,4(sp)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a0,a5
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	j	.L426
.L428:
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,8(sp)
	addi	a5,a5,4
	sw	a5,8(sp)
	lw	a5,4(sp)
	addi	a5,a5,4
	sw	a5,4(sp)
.L426:
	lw	a5,0(sp)
	beq	a5,zero,.L427
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	bne	a4,a5,.L427
	lw	a5,8(sp)
	lw	a5,0(a5)
	beq	a5,zero,.L427
	lw	a5,4(sp)
	lw	a5,0(a5)
	bne	a5,zero,.L428
.L427:
	lw	a5,0(sp)
	beq	a5,zero,.L429
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L430
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L433
.L430:
	li	a5,-1
	j	.L433
.L429:
	li	a5,0
.L433:
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	j	.L436
.L438:
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,8(sp)
	addi	a5,a5,4
	sw	a5,8(sp)
.L436:
	lw	a5,0(sp)
	beq	a5,zero,.L437
	lw	a5,8(sp)
	lw	a5,0(a5)
	lw	a4,4(sp)
	bne	a4,a5,.L438
.L437:
	lw	a5,0(sp)
	beq	a5,zero,.L439
	lw	a5,8(sp)
	j	.L441
.L439:
	li	a5,0
.L441:
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	j	.L444
.L446:
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
	lw	a5,8(sp)
	addi	a5,a5,4
	sw	a5,8(sp)
	lw	a5,4(sp)
	addi	a5,a5,4
	sw	a5,4(sp)
.L444:
	lw	a5,0(sp)
	beq	a5,zero,.L445
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	beq	a4,a5,.L446
.L445:
	lw	a5,0(sp)
	beq	a5,zero,.L447
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	blt	a4,a5,.L448
	lw	a5,8(sp)
	lw	a4,0(a5)
	lw	a5,4(sp)
	lw	a5,0(a5)
	sgt	a5,a4,a5
	andi	a5,a5,0xff
	j	.L451
.L448:
	li	a5,-1
	j	.L451
.L447:
	li	a5,0
.L451:
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	j	.L454
.L455:
	lw	a4,4(sp)
	addi	a5,a4,4
	sw	a5,4(sp)
	lw	a5,8(sp)
	addi	a3,a5,4
	sw	a3,8(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L454:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L455
	lw	a5,12(sp)
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	lw	a4,8(sp)
	lw	a5,4(sp)
	bne	a4,a5,.L459
	lw	a5,8(sp)
	j	.L460
.L459:
	lw	a4,8(sp)
	lw	a5,4(sp)
	sub	a4,a4,a5
	lw	a5,0(sp)
	slli	a5,a5,2
	bgeu	a4,a5,.L465
	j	.L462
.L463:
	lw	a5,0(sp)
	slli	a5,a5,2
	lw	a4,4(sp)
	add	a4,a4,a5
	lw	a5,0(sp)
	slli	a5,a5,2
	lw	a3,8(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L462:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L463
	j	.L464
.L466:
	lw	a4,4(sp)
	addi	a5,a4,4
	sw	a5,4(sp)
	lw	a5,8(sp)
	addi	a3,a5,4
	sw	a3,8(sp)
	lw	a4,0(a4)
	sw	a4,0(a5)
.L465:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L466
.L464:
	lw	a5,12(sp)
.L460:
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	j	.L469
.L470:
	lw	a5,8(sp)
	addi	a4,a5,4
	sw	a4,8(sp)
	lw	a4,4(sp)
	sw	a4,0(a5)
.L469:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L470
	lw	a5,12(sp)
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a4,16(sp)
	lw	a5,12(sp)
	bgeu	a4,a5,.L474
	lw	a4,16(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,16(sp)
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,12(sp)
	j	.L475
.L476:
	lw	a5,16(sp)
	addi	a5,a5,-1
	sw	a5,16(sp)
	lw	a5,12(sp)
	addi	a5,a5,-1
	sw	a5,12(sp)
	lw	a5,16(sp)
	lbu	a4,0(a5)
	lw	a5,12(sp)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L475:
	lw	a5,0(sp)
	bne	a5,zero,.L476
	j	.L480
.L474:
	lw	a4,16(sp)
	lw	a5,12(sp)
	beq	a4,a5,.L480
	j	.L478
.L479:
	lw	a4,16(sp)
	addi	a5,a4,1
	sw	a5,16(sp)
	lw	a5,12(sp)
	addi	a3,a5,1
	sw	a3,12(sp)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L478:
	lw	a5,0(sp)
	bne	a5,zero,.L479
.L480:
	nop
	addi	sp,sp,20
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
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,8(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	lw	a3,8(sp)
	addi	a3,a3,-32
	blt	a3,zero,.L483
	sll	s1,a4,a3
	li	s0,0
	j	.L484
.L483:
	srli	a2,a4,1
	li	a1,31
	lw	a3,8(sp)
	sub	a3,a1,a3
	srl	a3,a2,a3
	lw	a2,8(sp)
	sll	s1,a5,a2
	or	s1,a3,s1
	lw	a3,8(sp)
	sll	s0,a4,a3
.L484:
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L485
	srl	t1,a5,a3
	li	t2,0
	j	.L486
.L485:
	slli	a2,a5,1
	li	a1,31
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	sub	a3,a1,a3
	sll	a3,a2,a3
	lw	a2,8(sp)
	neg	a2,a2
	andi	a2,a2,63
	srl	t1,a4,a2
	or	t1,a3,t1
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	srl	t2,a5,a3
.L486:
	or	a5,t1,s0
	sw	a5,0(sp)
	or	a5,t2,s1
	sw	a5,4(sp)
	lw	t1,0(sp)
	lw	t2,4(sp)
	mv	a4,t1
	mv	a5,t2
	mv	a0,a4
	mv	a1,a5
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,28
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
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,8(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	lw	a3,8(sp)
	addi	a3,a3,-32
	blt	a3,zero,.L490
	srl	s0,a5,a3
	li	s1,0
	j	.L491
.L490:
	slli	a2,a5,1
	li	a1,31
	lw	a3,8(sp)
	sub	a3,a1,a3
	sll	a3,a2,a3
	lw	a2,8(sp)
	srl	s0,a4,a2
	or	s0,a3,s0
	lw	a3,8(sp)
	srl	s1,a5,a3
.L491:
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L492
	sll	t2,a4,a3
	li	t1,0
	j	.L493
.L492:
	srli	a2,a4,1
	li	a1,31
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	sub	a3,a1,a3
	srl	a3,a2,a3
	lw	a2,8(sp)
	neg	a2,a2
	andi	a2,a2,63
	sll	t2,a5,a2
	or	t2,a3,t2
	lw	a3,8(sp)
	neg	a3,a3
	andi	a3,a3,63
	sll	t1,a4,a3
.L493:
	or	a5,t1,s0
	sw	a5,0(sp)
	or	a5,t2,s1
	sw	a5,4(sp)
	lw	t1,0(sp)
	lw	t2,4(sp)
	mv	a4,t1
	mv	a5,t2
	mv	a0,a4
	mv	a1,a5
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,28
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a4,0(sp)
	sll	a4,a5,a4
	lw	a3,0(sp)
	neg	a3,a3
	andi	a3,a3,31
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a4,0(sp)
	srl	a4,a5,a4
	lw	a3,0(sp)
	neg	a3,a3
	andi	a3,a3,31
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a4,0(sp)
	sll	a4,a5,a4
	lw	a3,0(sp)
	neg	a3,a3
	andi	a3,a3,31
	srl	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
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
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a4,0(sp)
	srl	a4,a5,a4
	lw	a3,0(sp)
	neg	a3,a3
	andi	a3,a3,31
	sll	a5,a5,a3
	or	a5,a5,a4
	mv	a0,a5
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
	mv	a5,a0
	sw	a1,0(sp)
	sh	a5,6(sp)
	lhu	a4,6(sp)
	lw	a5,0(sp)
	sll	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a3,6(sp)
	li	a2,16
	lw	a5,0(sp)
	sub	a5,a2,a5
	srl	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
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
	mv	a5,a0
	sw	a1,0(sp)
	sh	a5,6(sp)
	lhu	a4,6(sp)
	lw	a5,0(sp)
	srl	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a3,6(sp)
	li	a2,16
	lw	a5,0(sp)
	sub	a5,a2,a5
	sll	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
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
	mv	a5,a0
	sw	a1,0(sp)
	sb	a5,7(sp)
	lbu	a4,7(sp)
	lw	a5,0(sp)
	sll	a5,a4,a5
	andi	a4,a5,0xff
	lbu	a3,7(sp)
	li	a2,8
	lw	a5,0(sp)
	sub	a5,a2,a5
	srl	a5,a3,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
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
	mv	a5,a0
	sw	a1,0(sp)
	sb	a5,7(sp)
	lbu	a4,7(sp)
	lw	a5,0(sp)
	srl	a5,a4,a5
	andi	a4,a5,0xff
	lbu	a3,7(sp)
	li	a2,8
	lw	a5,0(sp)
	sub	a5,a2,a5
	sll	a5,a3,a5
	andi	a5,a5,0xff
	or	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
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
	mv	a5,a0
	sh	a5,2(sp)
	li	a5,255
	sw	a5,4(sp)
	lhu	a4,2(sp)
	lw	a5,4(sp)
	slli	a5,a5,8
	and	a5,a4,a5
	srli	a5,a5,8
	slli	a4,a5,16
	srli	a4,a4,16
	lw	a5,4(sp)
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a3,2(sp)
	and	a5,a5,a3
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
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
	sw	a0,0(sp)
	li	a5,255
	sw	a5,4(sp)
	lw	a5,4(sp)
	slli	a4,a5,24
	lw	a5,0(sp)
	and	a5,a4,a5
	srli	a4,a5,24
	lw	a5,4(sp)
	slli	a3,a5,16
	lw	a5,0(sp)
	and	a5,a3,a5
	srli	a5,a5,8
	or	a4,a4,a5
	lw	a5,4(sp)
	slli	a3,a5,8
	lw	a5,0(sp)
	and	a5,a3,a5
	slli	a5,a5,8
	or	a4,a4,a5
	lw	a3,0(sp)
	lw	a5,4(sp)
	and	a5,a3,a5
	slli	a5,a5,24
	or	a5,a4,a5
	mv	a0,a5
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
	addi	sp,sp,-248
	.cfi_def_cfa_offset 248
	sw	s0,244(sp)
	sw	s1,240(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,220(sp)
	sw	a1,224(sp)
	addi	a5,sp,240
	sw	a5,216(sp)
	lw	a5,216(sp)
	addi	a5,a5,-12
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a1,a5,3
	li	a4,255
	li	a5,0
	sw	a4,0(a1)
	sw	a5,4(a1)
	lw	a5,0(a1)
	slli	a3,a5,24
	li	a2,0
	lw	a5,220(sp)
	and	a5,a5,a2
	sw	a5,48(sp)
	lw	a5,224(sp)
	and	a5,a5,a3
	sw	a5,52(sp)
	lw	a5,52(sp)
	srli	a5,a5,24
	sw	a5,56(sp)
	sw	zero,60(sp)
	lw	a5,0(a1)
	slli	s1,a5,16
	li	s0,0
	lw	a5,220(sp)
	and	a5,a5,s0
	sw	a5,64(sp)
	lw	a5,224(sp)
	and	a5,a5,s1
	sw	a5,68(sp)
	lw	a5,68(sp)
	srli	a5,a5,8
	sw	a5,72(sp)
	sw	zero,76(sp)
	lw	s0,56(sp)
	lw	s1,60(sp)
	mv	a5,s0
	lw	a2,72(sp)
	lw	a3,76(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,80(sp)
	mv	a5,s1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,84(sp)
	lw	a5,0(a1)
	slli	a5,a5,8
	sw	a5,92(sp)
	sw	zero,88(sp)
	lw	a5,220(sp)
	lw	a2,88(sp)
	lw	a3,92(sp)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,96(sp)
	lw	a5,224(sp)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,100(sp)
	lw	a2,96(sp)
	lw	a3,100(sp)
	mv	a5,a3
	slli	a5,a5,8
	mv	a4,a2
	srli	t1,a4,24
	or	t1,a5,t1
	mv	a5,a3
	srli	t2,a5,24
	lw	a3,80(sp)
	lw	a4,84(sp)
	mv	a5,a3
	or	a5,a5,t1
	sw	a5,104(sp)
	mv	a5,a4
	or	a5,a5,t2
	sw	a5,108(sp)
	lw	a5,0(a1)
	slli	a5,a5,0
	sw	a5,116(sp)
	sw	zero,112(sp)
	lw	a5,220(sp)
	lw	a2,112(sp)
	lw	a3,116(sp)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,120(sp)
	lw	a5,224(sp)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,124(sp)
	lw	a2,120(sp)
	lw	a3,124(sp)
	mv	a5,a3
	slli	a5,a5,24
	mv	a4,a2
	srli	a4,a4,8
	sw	a4,0(sp)
	lw	a4,0(sp)
	or	a5,a5,a4
	sw	a5,0(sp)
	mv	a5,a3
	srli	a5,a5,8
	sw	a5,4(sp)
	lw	t1,104(sp)
	lw	t2,108(sp)
	mv	a5,t1
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,128(sp)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,132(sp)
	lw	a5,0(a1)
	srli	a4,a5,8
	lw	a5,4(a1)
	slli	a5,a5,24
	sw	a5,12(sp)
	lw	a5,12(sp)
	or	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,0(a1)
	slli	a5,a5,24
	sw	a5,8(sp)
	lw	a5,220(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,136(sp)
	lw	a5,224(sp)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,140(sp)
	lw	a2,136(sp)
	lw	a3,140(sp)
	mv	a5,a2
	srli	a5,a5,24
	mv	a4,a3
	slli	a4,a4,8
	sw	a4,20(sp)
	lw	a4,20(sp)
	or	a5,a5,a4
	sw	a5,20(sp)
	mv	a5,a2
	slli	a5,a5,8
	sw	a5,16(sp)
	lw	t1,128(sp)
	lw	t2,132(sp)
	mv	a5,t1
	lw	a2,16(sp)
	lw	a3,20(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,144(sp)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,148(sp)
	lw	a5,0(a1)
	srli	a4,a5,16
	lw	a5,4(a1)
	slli	a5,a5,16
	sw	a5,28(sp)
	lw	a5,28(sp)
	or	a5,a4,a5
	sw	a5,28(sp)
	lw	a5,0(a1)
	slli	a5,a5,16
	sw	a5,24(sp)
	lw	a5,220(sp)
	lw	a2,24(sp)
	lw	a3,28(sp)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,152(sp)
	lw	a5,224(sp)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,156(sp)
	lw	a2,152(sp)
	lw	a3,156(sp)
	mv	a5,a2
	srli	a5,a5,8
	mv	a4,a3
	slli	a4,a4,24
	sw	a4,36(sp)
	lw	a4,36(sp)
	or	a5,a5,a4
	sw	a5,36(sp)
	mv	a5,a2
	slli	a5,a5,24
	sw	a5,32(sp)
	lw	t1,144(sp)
	lw	t2,148(sp)
	mv	a5,t1
	lw	a2,32(sp)
	lw	a3,36(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,160(sp)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,164(sp)
	lw	a5,0(a1)
	srli	a4,a5,24
	lw	a5,4(a1)
	slli	a5,a5,8
	sw	a5,44(sp)
	lw	a5,44(sp)
	or	a5,a4,a5
	sw	a5,44(sp)
	lw	a5,0(a1)
	slli	a5,a5,8
	sw	a5,40(sp)
	lw	a5,220(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	a4,a2
	and	a5,a5,a4
	sw	a5,168(sp)
	lw	a5,224(sp)
	mv	a4,a3
	and	a5,a5,a4
	sw	a5,172(sp)
	lw	a5,168(sp)
	slli	a5,a5,8
	sw	a5,180(sp)
	sw	zero,176(sp)
	lw	t1,160(sp)
	lw	t2,164(sp)
	mv	a5,t1
	lw	a2,176(sp)
	lw	a3,180(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,184(sp)
	mv	a5,t2
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,188(sp)
	lw	a4,220(sp)
	lw	a5,0(a1)
	and	a5,a4,a5
	sw	a5,192(sp)
	lw	a4,224(sp)
	lw	a5,4(a1)
	and	a5,a4,a5
	sw	a5,196(sp)
	lw	a5,192(sp)
	slli	a5,a5,24
	sw	a5,204(sp)
	sw	zero,200(sp)
	lw	a0,184(sp)
	lw	a1,188(sp)
	mv	a5,a0
	lw	a2,200(sp)
	lw	a3,204(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,208(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,212(sp)
	lw	a4,208(sp)
	lw	a5,212(sp)
	mv	a0,a4
	mv	a1,a5
	lw	s0,244(sp)
	.cfi_restore 8
	lw	s1,240(sp)
	.cfi_restore 9
	addi	sp,sp,248
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
	sw	a0,0(sp)
	sw	zero,4(sp)
	j	.L530
.L533:
	lw	a4,0(sp)
	lw	a5,4(sp)
	srl	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L531
	lw	a5,4(sp)
	addi	a5,a5,1
	j	.L532
.L531:
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L530:
	lw	a4,4(sp)
	li	a5,31
	bleu	a4,a5,.L533
	li	a5,0
.L532:
	mv	a0,a5
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
	bne	a0,zero,.L536
	li	a5,0
	j	.L541
.L536:
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	mv	a5,a0
	li	s0,1
	j	.L538
.L539:
	srai	a5,a5,1
	addi	s0,s0,1
.L538:
	andi	a4,a5,1
	beq	a4,zero,.L539
	mv	a5,s0
	mv	a0,a5
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L541:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	lw	a0,0(sp)
	call	__ltsf2
	mv	a5,a0
	blt	a0,zero,.L544
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	lw	a0,0(sp)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L549
.L544:
	li	a5,1
	j	.L548
.L549:
	li	a5,0
.L548:
	mv	a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	addi	sp,sp,8
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	a1,4(sp)
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	mv	a5,a0
	blt	a0,zero,.L552
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L557
.L552:
	li	a5,1
	j	.L556
.L557:
	li	a5,0
.L556:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	mv	s0,a0
	lw	a5,0(a0)
	sw	a5,32(sp)
	lw	a5,4(a0)
	sw	a5,36(sp)
	lw	a5,8(a0)
	sw	a5,40(sp)
	lw	a5,12(a0)
	sw	a5,44(sp)
	lw	t0,32(sp)
	lw	t1,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	addi	t2,sp,16
	lui	a5,%hi(.LC5)
	lw	a2,%lo(.LC5)(a5)
	lw	a3,%lo(.LC5+4)(a5)
	lw	a4,%lo(.LC5+8)(a5)
	lw	a5,%lo(.LC5+12)(a5)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,sp
	mv	a0,t2
	call	__lttf2
	mv	a5,a0
	blt	a0,zero,.L560
	lw	t0,32(sp)
	lw	t1,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	addi	t2,sp,16
	lui	a5,%hi(.LC6)
	lw	a2,%lo(.LC6)(a5)
	lw	a3,%lo(.LC6+4)(a5)
	lw	a4,%lo(.LC6+8)(a5)
	lw	a5,%lo(.LC6+12)(a5)
	mv	s0,sp
	sw	t0,16(sp)
	sw	t1,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	mv	a1,s0
	mv	a0,t2
	call	__gttf2
	mv	a5,a0
	ble	a5,zero,.L565
.L560:
	li	a5,1
	j	.L564
.L565:
	li	a5,0
.L564:
	mv	a0,a5
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
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
	.cfi_offset 1, -4
	sw	a0,20(sp)
	sw	a1,16(sp)
	lw	a0,16(sp)
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	mv	a3,sp
	mv	a1,a4
	mv	a2,a5
	mv	a0,a3
	call	__extenddftf2
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a1,20(sp)
	sw	a2,0(a1)
	sw	a3,4(a1)
	sw	a4,8(a1)
	sw	a5,12(a1)
	nop
	lw	ra,24(sp)
	.cfi_restore 1
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,4(sp)
	lw	a0,4(sp)
	call	__unordsf2
	mv	a5,a0
	bne	a0,zero,.L570
	lw	a5,4(sp)
	mv	a1,a5
	mv	a0,a5
	call	__addsf3
	mv	a5,a0
	mv	a1,a5
	lw	a0,4(sp)
	call	__nesf2
	mv	a5,a0
	beq	a5,zero,.L570
	lw	a5,0(sp)
	bge	a5,zero,.L572
	lui	a5,%hi(.LC7)
	lw	a5,%lo(.LC7)(a5)
	j	.L573
.L572:
	lui	a5,%hi(.LC8)
	lw	a5,%lo(.LC8)(a5)
.L573:
	sw	a5,8(sp)
.L576:
	lw	a5,0(sp)
	andi	a5,a5,1
	beq	a5,zero,.L574
	lw	a1,8(sp)
	lw	a0,4(sp)
	call	__mulsf3
	mv	a5,a0
	sw	a5,4(sp)
.L574:
	lw	a5,0(sp)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,0(sp)
	lw	a5,0(sp)
	beq	a5,zero,.L579
	lw	a1,8(sp)
	lw	a0,8(sp)
	call	__mulsf3
	mv	a5,a0
	sw	a5,8(sp)
	j	.L576
.L579:
	nop
.L570:
	lw	a5,4(sp)
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,4(sp)
	addi	a5,sp,28
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-12
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s0,a5,3
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__unorddf2
	mv	a5,a0
	bne	a0,zero,.L582
	lw	a4,8(sp)
	lw	a5,12(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L582
	lw	a5,4(sp)
	bge	a5,zero,.L584
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L585
.L584:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
.L585:
	sw	a4,0(s0)
	sw	a5,4(s0)
.L588:
	lw	a5,4(sp)
	andi	a5,a5,1
	beq	a5,zero,.L586
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(sp)
	sw	a5,12(sp)
.L586:
	lw	a5,4(sp)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	beq	a5,zero,.L591
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,0(s0)
	lw	a1,4(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s0)
	sw	a5,4(s0)
	j	.L588
.L591:
	nop
.L582:
	lw	a4,8(sp)
	lw	a5,12(sp)
	mv	a0,a4
	mv	a1,a5
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,36
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
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,84(sp)
	mv	s0,a1
	lw	a5,0(a1)
	sw	a5,68(sp)
	lw	a5,4(a1)
	sw	a5,72(sp)
	lw	a5,8(a1)
	sw	a5,76(sp)
	lw	a5,12(a1)
	sw	a5,80(sp)
	sw	a2,64(sp)
	addi	a5,sp,116
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-28
	addi	a5,a5,15
	srli	a5,a5,4
	slli	s0,a5,4
	lw	t0,68(sp)
	lw	t1,72(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	addi	t2,sp,48
	lw	a2,68(sp)
	lw	a3,72(sp)
	lw	a4,76(sp)
	lw	a5,80(sp)
	addi	s1,sp,32
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	a0,56(sp)
	sw	a1,60(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	mv	a1,s1
	mv	a0,t2
	call	__unordtf2
	mv	a5,a0
	bne	a0,zero,.L594
	lw	a2,68(sp)
	lw	a3,72(sp)
	lw	a4,76(sp)
	lw	a5,80(sp)
	addi	a0,sp,48
	addi	a1,sp,32
	addi	t1,sp,16
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	mv	a2,t1
	call	__addtf3
	lw	a5,48(sp)
	sw	a5,0(sp)
	lw	a5,52(sp)
	sw	a5,4(sp)
	lw	a5,56(sp)
	sw	a5,8(sp)
	lw	a5,60(sp)
	sw	a5,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	t0,68(sp)
	lw	t1,72(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	addi	t2,sp,48
	addi	s1,sp,32
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	a0,56(sp)
	sw	a1,60(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	mv	a1,s1
	mv	a0,t2
	call	__netf2
	mv	a5,a0
	beq	a5,zero,.L594
	lw	a5,64(sp)
	bge	a5,zero,.L596
	lui	a1,%hi(.LC11)
	lw	a2,%lo(.LC11)(a1)
	lw	a3,%lo(.LC11+4)(a1)
	lw	a4,%lo(.LC11+8)(a1)
	lw	a5,%lo(.LC11+12)(a1)
	j	.L597
.L596:
	lui	a1,%hi(.LC12)
	lw	a2,%lo(.LC12)(a1)
	lw	a3,%lo(.LC12+4)(a1)
	lw	a4,%lo(.LC12+8)(a1)
	lw	a5,%lo(.LC12+12)(a1)
.L597:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
.L600:
	lw	a5,64(sp)
	andi	a5,a5,1
	beq	a5,zero,.L598
	addi	a0,sp,48
	lw	a2,68(sp)
	lw	a3,72(sp)
	lw	a4,76(sp)
	lw	a5,80(sp)
	addi	a1,sp,32
	addi	t1,sp,16
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	lw	a5,0(s0)
	sw	a5,16(sp)
	lw	a5,4(s0)
	sw	a5,20(sp)
	lw	a5,8(s0)
	sw	a5,24(sp)
	lw	a5,12(s0)
	sw	a5,28(sp)
	mv	a2,t1
	call	__multf3
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	sw	a2,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	sw	a5,80(sp)
.L598:
	lw	a5,64(sp)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,64(sp)
	lw	a5,64(sp)
	beq	a5,zero,.L603
	addi	a4,sp,48
	lw	a5,0(s0)
	addi	a3,sp,32
	addi	a2,sp,16
	sw	a5,32(sp)
	lw	a5,4(s0)
	sw	a5,36(sp)
	lw	a5,8(s0)
	sw	a5,40(sp)
	lw	a5,12(s0)
	sw	a5,44(sp)
	lw	a5,0(s0)
	sw	a5,16(sp)
	lw	a5,4(s0)
	sw	a5,20(sp)
	lw	a5,8(s0)
	sw	a5,24(sp)
	lw	a5,12(s0)
	sw	a5,28(sp)
	mv	a1,a3
	mv	a0,a4
	call	__multf3
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	j	.L600
.L603:
	nop
.L594:
	lw	a5,84(sp)
	lw	a4,68(sp)
	sw	a4,0(a5)
	lw	a4,72(sp)
	sw	a4,4(a5)
	lw	a4,76(sp)
	sw	a4,8(a5)
	lw	a4,80(sp)
	sw	a4,12(a5)
	lw	a0,84(sp)
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,4(sp)
	sw	a5,16(sp)
	lw	a5,8(sp)
	sw	a5,12(sp)
	j	.L606
.L607:
	lw	a5,16(sp)
	addi	a4,a5,1
	sw	a4,16(sp)
	lbu	a3,0(a5)
	lw	a5,12(sp)
	addi	a4,a5,1
	sw	a4,12(sp)
	lbu	a4,0(a5)
	xor	a4,a3,a4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L606:
	lw	a5,0(sp)
	bne	a5,zero,.L607
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,20
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
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a0,8(sp)
	call	strlen
	mv	a4,a0
	lw	a5,8(sp)
	add	a5,a5,a0
	sw	a5,12(sp)
	j	.L611
.L613:
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	lw	a5,0(sp)
	addi	a5,a5,-1
	sw	a5,0(sp)
.L611:
	lw	a5,0(sp)
	beq	a5,zero,.L612
	lw	a5,4(sp)
	lbu	a4,0(a5)
	lw	a5,12(sp)
	sb	a4,0(a5)
	lw	a5,12(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L613
.L612:
	lw	a5,0(sp)
	bne	a5,zero,.L614
	lw	a5,12(sp)
	sb	zero,0(a5)
.L614:
	lw	a5,8(sp)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,8(sp)
	j	.L618
.L623:
	nop
	lw	a5,8(sp)
	addi	a5,a5,1
	sw	a5,8(sp)
.L618:
	lw	a4,8(sp)
	lw	a5,0(sp)
	bgeu	a4,a5,.L619
	lw	a4,4(sp)
	lw	a5,8(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L623
.L619:
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	j	.L626
.L630:
	lw	a5,0(sp)
	sw	a5,8(sp)
	j	.L627
.L629:
	lw	a5,8(sp)
	addi	a4,a5,1
	sw	a4,8(sp)
	lbu	a4,0(a5)
	lw	a5,4(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L627
	lw	a5,4(sp)
	j	.L628
.L627:
	lw	a5,8(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L629
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L626:
	lw	a5,4(sp)
	lbu	a5,0(a5)
	bne	a5,zero,.L630
	li	a5,0
.L628:
	mv	a0,a5
	addi	sp,sp,12
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
	mv	a5,a0
	sw	a1,0(sp)
	sw	zero,4(sp)
.L634:
	lbu	a4,0(a5)
	mv	a3,a4
	lw	a4,0(sp)
	bne	a4,a3,.L633
	sw	a5,4(sp)
.L633:
	mv	a4,a5
	addi	a5,a4,1
	lbu	a4,0(a4)
	bne	a4,zero,.L634
	lw	a5,4(sp)
	mv	a0,a5
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a0,0(sp)
	call	strlen
	sw	a0,8(sp)
	lw	a5,8(sp)
	bne	a5,zero,.L640
	lw	a5,4(sp)
	j	.L639
.L642:
	lw	a2,8(sp)
	lw	a1,0(sp)
	lw	a0,12(sp)
	call	strncmp
	mv	a5,a0
	bne	a5,zero,.L641
	lw	a5,12(sp)
	j	.L639
.L641:
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
.L640:
	lw	a5,0(sp)
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,12(sp)
	call	strchr
	sw	a0,12(sp)
	lw	a5,12(sp)
	bne	a5,zero,.L642
	li	a5,0
.L639:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	li	a2,0
	li	a3,0
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a0,zero,.L645
	li	a2,0
	li	a3,0
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	mv	a5,a0
	bgt	a5,zero,.L647
.L645:
	li	a2,0
	li	a3,0
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L648
	li	a2,0
	li	a3,0
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L648
.L647:
	lw	s0,8(sp)
	lw	a4,12(sp)
	li	a5,-2147483648
	xor	s1,a4,a5
	j	.L651
.L648:
	lw	s0,8(sp)
	lw	s1,12(sp)
.L651:
	mv	a4,s0
	mv	a5,s1
	mv	a0,a4
	mv	a1,a5
	lw	ra,24(sp)
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
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
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,8(sp)
	sw	a2,4(sp)
	sw	a3,0(sp)
	lw	a4,8(sp)
	lw	a5,0(sp)
	sub	a5,a4,a5
	lw	a4,12(sp)
	add	a5,a4,a5
	sw	a5,16(sp)
	lw	a5,0(sp)
	bne	a5,zero,.L656
	lw	a5,12(sp)
	j	.L657
.L656:
	lw	a4,8(sp)
	lw	a5,0(sp)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L658
	li	a5,0
	j	.L657
.L658:
	lw	a5,12(sp)
	sw	a5,20(sp)
	j	.L659
.L661:
	lw	a5,20(sp)
	lbu	a4,0(a5)
	lw	a5,4(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L660
	lw	a5,20(sp)
	addi	a4,a5,1
	lw	a5,4(sp)
	addi	a3,a5,1
	lw	a5,0(sp)
	addi	a5,a5,-1
	mv	a2,a5
	mv	a1,a3
	mv	a0,a4
	call	memcmp
	mv	a5,a0
	bne	a5,zero,.L660
	lw	a5,20(sp)
	j	.L657
.L660:
	lw	a5,20(sp)
	addi	a5,a5,1
	sw	a5,20(sp)
.L659:
	lw	a4,20(sp)
	lw	a5,16(sp)
	bleu	a4,a5,.L661
	li	a5,0
.L657:
	mv	a0,a5
	lw	ra,24(sp)
	.cfi_restore 1
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a2,0(sp)
	lw	a1,4(sp)
	lw	a0,8(sp)
	call	memcpy
	mv	a4,a0
	lw	a5,0(sp)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,8(sp)
	sw	zero,20(sp)
	sw	zero,24(sp)
	li	a2,0
	li	a3,0
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a0,zero,.L667
	lw	a5,12(sp)
	sw	a5,0(sp)
	lw	a4,16(sp)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,4(sp)
	lw	a4,0(sp)
	lw	a5,4(sp)
	sw	a4,12(sp)
	sw	a5,16(sp)
	li	a5,1
	sw	a5,24(sp)
.L667:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__gedf2
	mv	a5,a0
	blt	a5,zero,.L684
	j	.L671
.L672:
	lw	a5,20(sp)
	addi	a5,a5,1
	sw	a5,20(sp)
	lui	a5,%hi(.LC10)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,12(sp)
	sw	a5,16(sp)
.L671:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__gedf2
	mv	a5,a0
	bge	a5,zero,.L672
	j	.L673
.L684:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a5,zero,.L673
	li	a2,0
	li	a3,0
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L673
	j	.L676
.L677:
	lw	a5,20(sp)
	addi	a5,a5,-1
	sw	a5,20(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,12(sp)
	sw	a5,16(sp)
.L676:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__ltdf2
	mv	a5,a0
	blt	a5,zero,.L677
.L673:
	lw	a5,8(sp)
	lw	a4,20(sp)
	sw	a4,0(a5)
	lw	a5,24(sp)
	beq	a5,zero,.L678
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,12(sp)
	lw	a4,16(sp)
	li	a5,-2147483648
	xor	s1,a4,a5
	sw	s0,12(sp)
	sw	s1,16(sp)
	lw	s0,32(sp)
	.cfi_restore 8
	lw	s1,28(sp)
	.cfi_restore 9
.L678:
	lw	a4,12(sp)
	lw	a5,16(sp)
	mv	a0,a4
	mv	a1,a5
	lw	ra,36(sp)
	.cfi_restore 1
	addi	sp,sp,40
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
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	addi	a5,sp,52
	sw	a5,8(sp)
	lw	a5,8(sp)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a3,a5,3
	li	a4,0
	li	a5,0
	sw	a4,8(a3)
	sw	a5,12(a3)
	lw	a4,24(sp)
	lw	a5,28(sp)
	sw	a4,0(a3)
	sw	a5,4(a3)
	j	.L687
.L690:
	lw	a5,0(a3)
	andi	a5,a5,1
	sw	a5,0(sp)
	lw	a5,4(a3)
	andi	a5,a5,0
	sw	a5,4(sp)
	lw	a1,0(sp)
	lw	a2,4(sp)
	mv	a5,a1
	mv	a4,a2
	or	a5,a5,a4
	beq	a5,zero,.L688
	lw	a4,8(a3)
	lw	a5,12(a3)
	lw	a1,16(sp)
	lw	a2,20(sp)
	sw	a1,8(sp)
	sw	a2,12(sp)
	lw	a2,8(sp)
	add	a0,a4,a2
	mv	a2,a0
	sltu	a2,a2,a4
	lw	t0,12(sp)
	add	a1,a5,t0
	add	a5,a2,a1
	mv	a1,a5
	sw	a0,8(a3)
	sw	a1,12(a3)
.L688:
	lw	a5,16(sp)
	srli	a5,a5,31
	lw	a4,20(sp)
	slli	t2,a4,1
	or	t2,a5,t2
	lw	a5,16(sp)
	slli	t1,a5,1
	sw	t1,16(sp)
	sw	t2,20(sp)
	lw	a5,4(a3)
	slli	a5,a5,31
	lw	a4,0(a3)
	srli	s0,a4,1
	or	s0,a5,s0
	lw	a5,4(a3)
	srli	s1,a5,1
	sw	s0,0(a3)
	sw	s1,4(a3)
.L687:
	lw	a5,0(a3)
	lw	a4,4(a3)
	or	a5,a5,a4
	bne	a5,zero,.L690
	lw	a4,8(a3)
	lw	a5,12(a3)
	mv	a0,a4
	mv	a1,a5
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,60
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	li	a5,1
	sw	a5,16(sp)
	sw	zero,12(sp)
	j	.L694
.L696:
	lw	a5,4(sp)
	slli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,16(sp)
	slli	a5,a5,1
	sw	a5,16(sp)
.L694:
	lw	a4,4(sp)
	lw	a5,8(sp)
	bgeu	a4,a5,.L697
	lw	a5,16(sp)
	beq	a5,zero,.L697
	lw	a5,4(sp)
	bge	a5,zero,.L696
	j	.L697
.L699:
	lw	a4,8(sp)
	lw	a5,4(sp)
	bltu	a4,a5,.L698
	lw	a4,8(sp)
	lw	a5,4(sp)
	sub	a5,a4,a5
	sw	a5,8(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	or	a5,a4,a5
	sw	a5,12(sp)
.L698:
	lw	a5,16(sp)
	srli	a5,a5,1
	sw	a5,16(sp)
	lw	a5,4(sp)
	srli	a5,a5,1
	sw	a5,4(sp)
.L697:
	lw	a5,16(sp)
	bne	a5,zero,.L699
	lw	a5,0(sp)
	beq	a5,zero,.L700
	lw	a5,8(sp)
	j	.L701
.L700:
	lw	a5,12(sp)
.L701:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	mv	a5,a0
	sb	a0,3(sp)
	lbu	a5,3(sp)
	bne	a5,zero,.L704
	li	a5,7
	j	.L705
.L704:
	lbu	a5,3(sp)
	slli	a5,a5,8
	mv	a0,a5
	call	__clzsi2
	mv	a5,a0
	sw	a5,4(sp)
	lw	a5,4(sp)
	addi	a5,a5,-1
.L705:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a3,4(sp)
	bge	a3,zero,.L708
	lw	a3,0(sp)
	not	a4,a3
	lw	a3,4(sp)
	not	a5,a3
	sw	a4,0(sp)
	sw	a5,4(sp)
.L708:
	lw	a5,0(sp)
	lw	a4,4(sp)
	or	a5,a5,a4
	bne	a5,zero,.L710
	li	a5,63
	j	.L711
.L710:
	lw	a4,0(sp)
	lw	a5,4(sp)
	mv	a0,a4
	mv	a1,a5
	call	__clzdi2
	mv	a5,a0
	sw	a5,8(sp)
	lw	a5,8(sp)
	addi	a5,a5,-1
.L711:
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,8(sp)
	j	.L714
.L716:
	lw	a5,4(sp)
	andi	a5,a5,1
	beq	a5,zero,.L715
	lw	a4,8(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,8(sp)
.L715:
	lw	a5,4(sp)
	srli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,0(sp)
	slli	a5,a5,1
	sw	a5,0(sp)
.L714:
	lw	a5,4(sp)
	bne	a5,zero,.L716
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,0(sp)
	srli	a5,a5,3
	sw	a5,20(sp)
	lw	a5,0(sp)
	andi	a5,a5,-8
	sw	a5,24(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a4,16(sp)
	lw	a5,12(sp)
	bltu	a4,a5,.L720
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	lw	a4,16(sp)
	bleu	a4,a5,.L727
.L720:
	sw	zero,28(sp)
	j	.L722
.L723:
	lw	a5,28(sp)
	slli	a5,a5,3
	lw	a4,4(sp)
	add	a5,a4,a5
	lw	a4,28(sp)
	slli	a4,a4,3
	lw	a3,8(sp)
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L722:
	lw	a4,28(sp)
	lw	a5,20(sp)
	bltu	a4,a5,.L723
	j	.L724
.L725:
	lw	a4,12(sp)
	lw	a5,24(sp)
	add	a4,a4,a5
	lw	a3,16(sp)
	lw	a5,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L724:
	lw	a4,0(sp)
	lw	a5,24(sp)
	bgtu	a4,a5,.L725
	j	.L726
.L728:
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a4,a4,a5
	lw	a3,16(sp)
	lw	a5,0(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L727:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L728
	nop
.L726:
	nop
	addi	sp,sp,32
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
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,0(sp)
	srli	a5,a5,1
	sw	a5,20(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a4,16(sp)
	lw	a5,12(sp)
	bltu	a4,a5,.L731
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	lw	a4,16(sp)
	bleu	a4,a5,.L737
.L731:
	sw	zero,24(sp)
	j	.L733
.L734:
	lw	a5,24(sp)
	slli	a5,a5,1
	lw	a4,4(sp)
	add	a4,a4,a5
	lw	a5,24(sp)
	slli	a5,a5,1
	lw	a3,8(sp)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L733:
	lw	a4,24(sp)
	lw	a5,20(sp)
	bltu	a4,a5,.L734
	lw	a5,0(sp)
	andi	a5,a5,1
	beq	a5,zero,.L736
	lw	a5,0(sp)
	addi	a5,a5,-1
	lw	a4,12(sp)
	add	a4,a4,a5
	lw	a5,0(sp)
	addi	a5,a5,-1
	lw	a3,16(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L736
.L738:
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a4,a4,a5
	lw	a3,16(sp)
	lw	a5,0(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L737:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L738
	nop
.L736:
	nop
	addi	sp,sp,28
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	lw	a5,0(sp)
	srli	a5,a5,2
	sw	a5,20(sp)
	lw	a5,0(sp)
	andi	a5,a5,-4
	sw	a5,24(sp)
	lw	a5,8(sp)
	sw	a5,16(sp)
	lw	a5,4(sp)
	sw	a5,12(sp)
	lw	a4,16(sp)
	lw	a5,12(sp)
	bltu	a4,a5,.L741
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	lw	a4,16(sp)
	bleu	a4,a5,.L748
.L741:
	sw	zero,28(sp)
	j	.L743
.L744:
	lw	a5,28(sp)
	slli	a5,a5,2
	lw	a4,4(sp)
	add	a4,a4,a5
	lw	a5,28(sp)
	slli	a5,a5,2
	lw	a3,8(sp)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,28(sp)
	addi	a5,a5,1
	sw	a5,28(sp)
.L743:
	lw	a4,28(sp)
	lw	a5,20(sp)
	bltu	a4,a5,.L744
	j	.L745
.L746:
	lw	a4,12(sp)
	lw	a5,24(sp)
	add	a4,a4,a5
	lw	a3,16(sp)
	lw	a5,24(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,24(sp)
	addi	a5,a5,1
	sw	a5,24(sp)
.L745:
	lw	a4,0(sp)
	lw	a5,24(sp)
	bgtu	a4,a5,.L746
	j	.L747
.L749:
	lw	a4,12(sp)
	lw	a5,0(sp)
	add	a4,a4,a5
	lw	a3,16(sp)
	lw	a5,0(sp)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L748:
	lw	a5,0(sp)
	addi	a4,a5,-1
	sw	a4,0(sp)
	bne	a5,zero,.L749
	nop
.L747:
	nop
	addi	sp,sp,32
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a1,0(sp)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	.cfi_offset 1, -4
	sw	a0,0(sp)
	lw	a0,0(sp)
	call	__floatunsidf
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,4(sp)
	.cfi_restore 1
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
	.cfi_offset 1, -4
	sw	a0,0(sp)
	lw	a0,0(sp)
	call	__floatunsisf
	mv	a5,a0
	mv	a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__floatundidf
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__floatundisf
	mv	a5,a0
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	lw	a1,0(sp)
	mv	a0,a5
	call	__umodsi3
	mv	a5,a0
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	mv	a5,a0
	sh	a0,2(sp)
	sw	zero,4(sp)
	j	.L770
.L773:
	lhu	a4,2(sp)
	li	a3,15
	lw	a5,4(sp)
	sub	a5,a3,a5
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L775
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L770:
	lw	a4,4(sp)
	li	a5,15
	ble	a4,a5,.L773
	j	.L772
.L775:
	nop
.L772:
	lw	a5,4(sp)
	mv	a0,a5
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
	mv	a5,a0
	sh	a0,2(sp)
	sw	zero,4(sp)
	j	.L778
.L781:
	lhu	a4,2(sp)
	lw	a5,4(sp)
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L783
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L778:
	lw	a4,4(sp)
	li	a5,15
	ble	a4,a5,.L781
	j	.L780
.L783:
	nop
.L780:
	lw	a5,4(sp)
	mv	a0,a5
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	lw	a0,0(sp)
	call	__gesf2
	mv	a5,a0
	blt	a0,zero,.L790
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	lw	a0,0(sp)
	call	__subsf3
	mv	a5,a0
	mv	a0,a5
	call	__fixsfsi
	mv	a4,a0
	li	a5,32768
	add	a5,a4,a5
	j	.L788
.L790:
	lw	a0,0(sp)
	call	__fixsfsi
	mv	a5,a0
.L788:
	mv	a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	addi	sp,sp,8
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	mv	a5,a0
	sh	a0,2(sp)
	sw	zero,4(sp)
	sw	zero,8(sp)
	j	.L793
.L795:
	lhu	a4,2(sp)
	lw	a5,8(sp)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L794
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L794:
	lw	a5,8(sp)
	addi	a5,a5,1
	sw	a5,8(sp)
.L793:
	lw	a4,8(sp)
	li	a5,15
	ble	a4,a5,.L795
	lw	a5,4(sp)
	andi	a5,a5,1
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	mv	a5,a0
	sh	a0,2(sp)
	sw	zero,4(sp)
	sw	zero,8(sp)
	j	.L799
.L801:
	lhu	a4,2(sp)
	lw	a5,8(sp)
	sra	a5,a4,a5
	andi	a5,a5,1
	beq	a5,zero,.L800
	lw	a5,4(sp)
	addi	a5,a5,1
	sw	a5,4(sp)
.L800:
	lw	a5,8(sp)
	addi	a5,a5,1
	sw	a5,8(sp)
.L799:
	lw	a4,8(sp)
	li	a5,15
	ble	a4,a5,.L801
	lw	a5,4(sp)
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,8(sp)
	j	.L805
.L807:
	lw	a5,4(sp)
	andi	a5,a5,1
	beq	a5,zero,.L806
	lw	a4,8(sp)
	lw	a5,0(sp)
	add	a5,a4,a5
	sw	a5,8(sp)
.L806:
	lw	a5,4(sp)
	srli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,0(sp)
	slli	a5,a5,1
	sw	a5,0(sp)
.L805:
	lw	a5,4(sp)
	bne	a5,zero,.L807
	lw	a5,8(sp)
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,8(sp)
	lw	a5,4(sp)
	bne	a5,zero,.L813
	li	a5,0
	j	.L812
.L815:
	lw	a5,0(sp)
	andi	a5,a5,1
	beq	a5,zero,.L814
	lw	a4,8(sp)
	lw	a5,4(sp)
	add	a5,a4,a5
	sw	a5,8(sp)
.L814:
	lw	a5,4(sp)
	slli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,0(sp)
	srli	a5,a5,1
	sw	a5,0(sp)
.L813:
	lw	a5,0(sp)
	bne	a5,zero,.L815
	lw	a5,8(sp)
.L812:
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	li	a5,1
	sw	a5,16(sp)
	sw	zero,12(sp)
	j	.L818
.L820:
	lw	a5,4(sp)
	slli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,16(sp)
	slli	a5,a5,1
	sw	a5,16(sp)
.L818:
	lw	a4,4(sp)
	lw	a5,8(sp)
	bgeu	a4,a5,.L821
	lw	a5,16(sp)
	beq	a5,zero,.L821
	lw	a5,4(sp)
	bge	a5,zero,.L820
	j	.L821
.L823:
	lw	a4,8(sp)
	lw	a5,4(sp)
	bltu	a4,a5,.L822
	lw	a4,8(sp)
	lw	a5,4(sp)
	sub	a5,a4,a5
	sw	a5,8(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	or	a5,a4,a5
	sw	a5,12(sp)
.L822:
	lw	a5,16(sp)
	srli	a5,a5,1
	sw	a5,16(sp)
	lw	a5,4(sp)
	srli	a5,a5,1
	sw	a5,4(sp)
.L821:
	lw	a5,16(sp)
	bne	a5,zero,.L823
	lw	a5,0(sp)
	beq	a5,zero,.L824
	lw	a5,8(sp)
	j	.L825
.L824:
	lw	a5,12(sp)
.L825:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__ltsf2
	mv	a5,a0
	bge	a0,zero,.L835
	li	a5,-1
	j	.L830
.L835:
	lw	a1,0(sp)
	lw	a0,4(sp)
	call	__gtsf2
	mv	a5,a0
	ble	a5,zero,.L836
	li	a5,1
	j	.L830
.L836:
	li	a5,0
.L830:
	mv	a0,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__ltdf2
	mv	a5,a0
	bge	a0,zero,.L846
	li	a5,-1
	j	.L841
.L846:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	mv	a5,a0
	ble	a5,zero,.L847
	li	a5,1
	j	.L841
.L847:
	li	a5,0
.L841:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,4(sp)
	mv	t1,a5
	srai	a5,a5,31
	mv	t2,a5
	lw	a5,0(sp)
	mv	a2,a5
	srai	a5,a5,31
	mv	a3,a5
	mv	a0,t1
	mv	a1,t2
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a1,4(sp)
	mv	a4,a1
	li	a5,0
	lw	a1,0(sp)
	mv	a2,a1
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__muldi3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,12
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,12(sp)
	sw	zero,8(sp)
	lw	a5,0(sp)
	bge	a5,zero,.L856
	lw	a5,0(sp)
	neg	a5,a5
	sw	a5,0(sp)
	li	a5,1
	sw	a5,12(sp)
.L856:
	sb	zero,19(sp)
	j	.L857
.L860:
	lw	a5,0(sp)
	andi	a5,a5,1
	beq	a5,zero,.L858
	lw	a4,8(sp)
	lw	a5,4(sp)
	add	a5,a4,a5
	sw	a5,8(sp)
.L858:
	lw	a5,4(sp)
	slli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,0(sp)
	srai	a5,a5,1
	sw	a5,0(sp)
	lbu	a5,19(sp)
	addi	a5,a5,1
	sb	a5,19(sp)
.L857:
	lw	a5,0(sp)
	beq	a5,zero,.L859
	lbu	a4,19(sp)
	li	a5,31
	bleu	a4,a5,.L860
.L859:
	lw	a5,12(sp)
	beq	a5,zero,.L861
	lw	a5,8(sp)
	neg	a5,a5
	j	.L863
.L861:
	lw	a5,8(sp)
.L863:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,12(sp)
	lw	a5,4(sp)
	bge	a5,zero,.L866
	lw	a5,4(sp)
	neg	a5,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,12(sp)
.L866:
	lw	a5,0(sp)
	bge	a5,zero,.L867
	lw	a5,0(sp)
	neg	a5,a5
	sw	a5,0(sp)
	lw	a5,12(sp)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,12(sp)
.L867:
	lw	a5,4(sp)
	lw	a4,0(sp)
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,8(sp)
	lw	a5,12(sp)
	beq	a5,zero,.L868
	lw	a5,8(sp)
	neg	a5,a5
	sw	a5,8(sp)
.L868:
	lw	a5,8(sp)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	sw	zero,12(sp)
	lw	a5,4(sp)
	bge	a5,zero,.L872
	lw	a5,4(sp)
	neg	a5,a5
	sw	a5,4(sp)
	li	a5,1
	sw	a5,12(sp)
.L872:
	lw	a5,0(sp)
	bge	a5,zero,.L873
	lw	a5,0(sp)
	neg	a5,a5
	sw	a5,0(sp)
.L873:
	lw	a5,4(sp)
	lw	a4,0(sp)
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	__udivmodsi4
	mv	a5,a0
	sw	a5,8(sp)
	lw	a5,12(sp)
	beq	a5,zero,.L874
	lw	a5,8(sp)
	neg	a5,a5
	sw	a5,8(sp)
.L874:
	lw	a5,8(sp)
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	mv	a5,a0
	mv	a4,a1
	sw	a2,0(sp)
	sh	a0,6(sp)
	mv	a5,a1
	sh	a1,4(sp)
	li	a5,1
	sh	a5,10(sp)
	sh	zero,8(sp)
	j	.L878
.L880:
	lhu	a5,4(sp)
	slli	a5,a5,1
	sh	a5,4(sp)
	lhu	a5,10(sp)
	slli	a5,a5,1
	sh	a5,10(sp)
.L878:
	lhu	a4,4(sp)
	lhu	a5,6(sp)
	bgeu	a4,a5,.L881
	lhu	a5,10(sp)
	beq	a5,zero,.L881
	lh	a5,4(sp)
	bge	a5,zero,.L880
	j	.L881
.L883:
	lhu	a4,6(sp)
	lhu	a5,4(sp)
	bltu	a4,a5,.L882
	lhu	a5,6(sp)
	mv	a4,a5
	lhu	a5,4(sp)
	sub	a5,a4,a5
	sh	a5,6(sp)
	lhu	a5,8(sp)
	mv	a4,a5
	lhu	a5,10(sp)
	or	a5,a4,a5
	sh	a5,8(sp)
.L882:
	lhu	a5,10(sp)
	srli	a5,a5,1
	sh	a5,10(sp)
	lhu	a5,4(sp)
	srli	a5,a5,1
	sh	a5,4(sp)
.L881:
	lhu	a5,10(sp)
	bne	a5,zero,.L883
	lw	a5,0(sp)
	beq	a5,zero,.L884
	lhu	a5,6(sp)
	j	.L885
.L884:
	lhu	a5,8(sp)
.L885:
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	a0,8(sp)
	sw	a1,4(sp)
	sw	a2,0(sp)
	li	a5,1
	sw	a5,16(sp)
	sw	zero,12(sp)
	j	.L888
.L890:
	lw	a5,4(sp)
	slli	a5,a5,1
	sw	a5,4(sp)
	lw	a5,16(sp)
	slli	a5,a5,1
	sw	a5,16(sp)
.L888:
	lw	a4,4(sp)
	lw	a5,8(sp)
	bgeu	a4,a5,.L891
	lw	a5,16(sp)
	beq	a5,zero,.L891
	lw	a5,4(sp)
	bge	a5,zero,.L890
	j	.L891
.L893:
	lw	a4,8(sp)
	lw	a5,4(sp)
	bltu	a4,a5,.L892
	lw	a4,8(sp)
	lw	a5,4(sp)
	sub	a5,a4,a5
	sw	a5,8(sp)
	lw	a4,12(sp)
	lw	a5,16(sp)
	or	a5,a4,a5
	sw	a5,12(sp)
.L892:
	lw	a5,16(sp)
	srli	a5,a5,1
	sw	a5,16(sp)
	lw	a5,4(sp)
	srli	a5,a5,1
	sw	a5,4(sp)
.L891:
	lw	a5,16(sp)
	bne	a5,zero,.L893
	lw	a5,0(sp)
	beq	a5,zero,.L894
	lw	a5,8(sp)
	j	.L895
.L894:
	lw	a5,12(sp)
.L895:
	mv	a0,a5
	addi	sp,sp,20
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,4(sp)
	addi	a5,sp,40
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,36(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,4(sp)
	lw	a4,36(sp)
	and	a4,a3,a4
	beq	a4,zero,.L898
	sw	zero,0(a5)
	lw	a3,8(a5)
	lw	a2,4(sp)
	lw	a4,36(sp)
	sub	a4,a2,a4
	sll	a4,a3,a4
	sw	a4,4(a5)
	j	.L899
.L898:
	lw	a4,4(sp)
	bne	a4,zero,.L900
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L902
.L900:
	lw	a3,8(a5)
	lw	a4,4(sp)
	sll	a4,a3,a4
	sw	a4,0(a5)
	lw	a4,12(a5)
	mv	a3,a4
	lw	a4,4(sp)
	sll	a3,a3,a4
	lw	a2,8(a5)
	lw	a1,36(sp)
	lw	a4,4(sp)
	sub	a4,a1,a4
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,4(a5)
.L899:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L902:
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,40
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,4(sp)
	addi	a5,sp,40
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,36(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,4(sp)
	lw	a4,36(sp)
	and	a4,a3,a4
	beq	a4,zero,.L905
	lw	a3,12(a5)
	lw	a4,36(sp)
	addi	a4,a4,-1
	sra	a4,a3,a4
	sw	a4,4(a5)
	lw	a3,12(a5)
	lw	a2,4(sp)
	lw	a4,36(sp)
	sub	a4,a2,a4
	sra	a4,a3,a4
	sw	a4,0(a5)
	j	.L906
.L905:
	lw	a4,4(sp)
	bne	a4,zero,.L907
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L909
.L907:
	lw	a3,12(a5)
	lw	a4,4(sp)
	sra	a4,a3,a4
	sw	a4,4(a5)
	lw	a4,12(a5)
	mv	a2,a4
	lw	a3,36(sp)
	lw	a4,4(sp)
	sub	a4,a3,a4
	sll	a3,a2,a4
	lw	a2,8(a5)
	lw	a4,4(sp)
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,0(a5)
.L906:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L909:
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,40
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
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	s0,156(sp)
	sw	s1,152(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,144(sp)
	sw	a1,148(sp)
	lw	a5,148(sp)
	srli	a5,a5,24
	sw	a5,24(sp)
	sw	zero,28(sp)
	lw	a5,148(sp)
	srli	t1,a5,8
	li	t2,0
	li	a5,65536
	addi	a5,a5,-256
	and	a2,t1,a5
	andi	a3,t2,0
	lw	a0,24(sp)
	lw	a1,28(sp)
	mv	a5,a0
	or	a5,a5,a2
	sw	a5,32(sp)
	mv	a5,a1
	or	a5,a5,a3
	sw	a5,36(sp)
	lw	a5,148(sp)
	slli	a4,a5,8
	lw	a5,144(sp)
	srli	s0,a5,24
	or	s0,a4,s0
	lw	a5,148(sp)
	srli	s1,a5,24
	li	a5,16711680
	and	a5,s0,a5
	sw	a5,40(sp)
	andi	a5,s1,0
	sw	a5,44(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	mv	a5,a0
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,48(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,52(sp)
	lw	a5,148(sp)
	slli	a4,a5,24
	lw	a5,144(sp)
	srli	a5,a5,8
	sw	a5,0(sp)
	lw	a5,0(sp)
	or	a5,a4,a5
	sw	a5,0(sp)
	lw	a5,148(sp)
	srli	a5,a5,8
	sw	a5,4(sp)
	li	a5,-16777216
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a4,a2
	and	a5,a4,a5
	sw	a5,56(sp)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,60(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	mv	a5,a0
	lw	a2,56(sp)
	lw	a3,60(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,64(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,68(sp)
	lw	a5,144(sp)
	srli	a4,a5,24
	lw	a5,148(sp)
	slli	a5,a5,8
	sw	a5,12(sp)
	lw	a5,12(sp)
	or	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,144(sp)
	slli	a5,a5,8
	sw	a5,8(sp)
	lw	a3,8(sp)
	lw	a4,12(sp)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,72(sp)
	mv	a5,a4
	andi	a5,a5,255
	sw	a5,76(sp)
	lw	a0,64(sp)
	lw	a1,68(sp)
	mv	a5,a0
	lw	a2,72(sp)
	lw	a3,76(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,80(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,84(sp)
	lw	a5,144(sp)
	srli	a4,a5,8
	lw	a5,148(sp)
	slli	a5,a5,24
	sw	a5,20(sp)
	lw	a5,20(sp)
	or	a5,a4,a5
	sw	a5,20(sp)
	lw	a5,144(sp)
	slli	a5,a5,24
	sw	a5,16(sp)
	lw	a3,16(sp)
	lw	a4,20(sp)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,88(sp)
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	sw	a5,92(sp)
	lw	a0,80(sp)
	lw	a1,84(sp)
	mv	a5,a0
	lw	a2,88(sp)
	lw	a3,92(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,96(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,100(sp)
	lw	a5,144(sp)
	slli	a5,a5,8
	sw	a5,108(sp)
	sw	zero,104(sp)
	lw	a3,104(sp)
	lw	a4,108(sp)
	mv	a5,a3
	andi	a5,a5,0
	sw	a5,112(sp)
	li	a5,16711680
	and	a5,a4,a5
	sw	a5,116(sp)
	lw	a0,96(sp)
	lw	a1,100(sp)
	mv	a5,a0
	lw	a2,112(sp)
	lw	a3,116(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,120(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,124(sp)
	lw	a5,144(sp)
	slli	a5,a5,24
	sw	a5,132(sp)
	sw	zero,128(sp)
	lw	a0,120(sp)
	lw	a1,124(sp)
	mv	a5,a0
	lw	a2,128(sp)
	lw	a3,132(sp)
	mv	a4,a2
	or	a5,a5,a4
	sw	a5,136(sp)
	mv	a5,a1
	mv	a4,a3
	or	a5,a5,a4
	sw	a5,140(sp)
	lw	a4,136(sp)
	lw	a5,140(sp)
	mv	a0,a4
	mv	a1,a5
	lw	s0,156(sp)
	.cfi_restore 8
	lw	s1,152(sp)
	.cfi_restore 9
	addi	sp,sp,160
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	a0,0(sp)
	lw	a5,0(sp)
	srli	a4,a5,24
	lw	a5,0(sp)
	srli	a3,a5,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a3,a5
	or	a4,a4,a5
	lw	a5,0(sp)
	slli	a3,a5,8
	li	a5,16711680
	and	a5,a3,a5
	or	a4,a4,a5
	lw	a5,0(sp)
	slli	a5,a5,24
	or	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,4
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,12(sp)
	lw	a4,12(sp)
	li	a5,65536
	bgeu	a4,a5,.L918
	li	a5,16
	j	.L919
.L918:
	li	a5,0
.L919:
	sw	a5,8(sp)
	li	a4,16
	lw	a5,8(sp)
	sub	a5,a4,a5
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	sw	a5,4(sp)
	lw	a4,12(sp)
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	bne	a5,zero,.L920
	li	a5,8
	j	.L921
.L920:
	li	a5,0
.L921:
	sw	a5,8(sp)
	li	a4,8
	lw	a5,8(sp)
	sub	a5,a4,a5
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,240
	bne	a5,zero,.L922
	li	a5,4
	j	.L923
.L922:
	li	a5,0
.L923:
	sw	a5,8(sp)
	li	a4,4
	lw	a5,8(sp)
	sub	a5,a4,a5
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,12
	bne	a5,zero,.L924
	li	a5,2
	j	.L925
.L924:
	li	a5,0
.L925:
	sw	a5,8(sp)
	li	a4,2
	lw	a5,8(sp)
	sub	a5,a4,a5
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,2
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a3,a5
	li	a4,2
	lw	a5,12(sp)
	sub	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,4(sp)
	add	a5,a4,a5
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,4(sp)
	sw	a3,8(sp)
	addi	a5,sp,40
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,12(sp)
	lw	a3,16(sp)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a2,4(sp)
	lw	a3,8(sp)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a3,12(a5)
	lw	a4,4(a5)
	bge	a3,a4,.L929
	li	a5,0
	j	.L934
.L929:
	lw	a3,12(a5)
	lw	a4,4(a5)
	ble	a3,a4,.L931
	li	a5,2
	j	.L934
.L931:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L932
	li	a5,0
	j	.L934
.L932:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L933
	li	a5,2
	j	.L934
.L933:
	li	a5,1
.L934:
	mv	a0,a5
	addi	sp,sp,40
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__cmpdi2
	mv	a5,a0
	addi	a5,a5,-1
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,12(sp)
	lw	a5,12(sp)
	slli	a5,a5,16
	srli	a5,a5,16
	bne	a5,zero,.L940
	li	a5,16
	j	.L941
.L940:
	li	a5,0
.L941:
	sw	a5,8(sp)
	lw	a5,8(sp)
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,255
	bne	a5,zero,.L942
	li	a5,8
	j	.L943
.L942:
	li	a5,0
.L943:
	sw	a5,8(sp)
	lw	a5,8(sp)
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,15
	bne	a5,zero,.L944
	li	a5,4
	j	.L945
.L944:
	li	a5,0
.L945:
	sw	a5,8(sp)
	lw	a5,8(sp)
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	andi	a5,a5,3
	bne	a5,zero,.L946
	li	a5,2
	j	.L947
.L946:
	li	a5,0
.L947:
	sw	a5,8(sp)
	lw	a5,8(sp)
	lw	a4,12(sp)
	srl	a5,a4,a5
	sw	a5,12(sp)
	lw	a5,12(sp)
	andi	a5,a5,3
	sw	a5,12(sp)
	lw	a5,8(sp)
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,12(sp)
	not	a5,a5
	andi	a4,a5,1
	lw	a5,12(sp)
	srli	a5,a5,1
	li	a3,2
	sub	a5,a3,a5
	neg	a4,a4
	and	a4,a4,a5
	lw	a5,4(sp)
	add	a5,a4,a5
	mv	a0,a5
	addi	sp,sp,16
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,4(sp)
	addi	a5,sp,40
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	li	a4,32
	sw	a4,36(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a3,4(sp)
	lw	a4,36(sp)
	and	a4,a3,a4
	beq	a4,zero,.L951
	sw	zero,4(a5)
	lw	a3,12(a5)
	lw	a2,4(sp)
	lw	a4,36(sp)
	sub	a4,a2,a4
	srl	a4,a3,a4
	sw	a4,0(a5)
	j	.L952
.L951:
	lw	a4,4(sp)
	bne	a4,zero,.L953
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L955
.L953:
	lw	a3,12(a5)
	lw	a4,4(sp)
	srl	a4,a3,a4
	sw	a4,4(a5)
	lw	a3,12(a5)
	lw	a2,36(sp)
	lw	a4,4(sp)
	sub	a4,a2,a4
	sll	a3,a3,a4
	lw	a2,8(a5)
	lw	a4,4(sp)
	srl	a4,a2,a4
	or	a4,a3,a4
	sw	a4,0(a5)
.L952:
	lw	a4,0(a5)
	lw	a5,4(a5)
.L955:
	mv	a0,a4
	mv	a1,a5
	addi	sp,sp,40
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,4(sp)
	addi	a5,sp,36
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-24
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s0,a5,3
	li	a5,16
	sw	a5,32(sp)
	lw	a5,32(sp)
	li	a4,-1
	srl	a5,a4,a5
	sw	a5,28(sp)
	lw	a4,8(sp)
	lw	a5,28(sp)
	and	a3,a4,a5
	lw	a4,4(sp)
	lw	a5,28(sp)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	sw	a5,0(s0)
	lw	a4,0(s0)
	lw	a5,32(sp)
	srl	a5,a4,a5
	sw	a5,24(sp)
	lw	a4,0(s0)
	lw	a5,28(sp)
	and	a5,a4,a5
	sw	a5,0(s0)
	lw	a5,32(sp)
	lw	a4,8(sp)
	srl	a3,a4,a5
	lw	a4,4(sp)
	lw	a5,28(sp)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,24(sp)
	add	a5,a5,a4
	sw	a5,24(sp)
	lw	a4,0(s0)
	lw	a3,24(sp)
	lw	a5,28(sp)
	and	a3,a3,a5
	lw	a5,32(sp)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,0(s0)
	lw	a5,32(sp)
	lw	a4,24(sp)
	srl	a5,a4,a5
	sw	a5,4(s0)
	lw	a4,0(s0)
	lw	a5,32(sp)
	srl	a5,a4,a5
	sw	a5,24(sp)
	lw	a4,0(s0)
	lw	a5,28(sp)
	and	a5,a4,a5
	sw	a5,0(s0)
	lw	a5,32(sp)
	lw	a4,4(sp)
	srl	a3,a4,a5
	lw	a4,8(sp)
	lw	a5,28(sp)
	and	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	lw	a5,24(sp)
	add	a5,a5,a4
	sw	a5,24(sp)
	lw	a4,0(s0)
	lw	a3,24(sp)
	lw	a5,28(sp)
	and	a3,a3,a5
	lw	a5,32(sp)
	sll	a5,a3,a5
	add	a5,a4,a5
	sw	a5,0(s0)
	lw	a5,4(s0)
	mv	a3,a5
	lw	a5,32(sp)
	lw	a4,24(sp)
	srl	a5,a4,a5
	add	a5,a3,a5
	sw	a5,4(s0)
	lw	a5,4(s0)
	mv	s1,a5
	lw	a5,32(sp)
	lw	a4,8(sp)
	srl	a3,a4,a5
	lw	a5,32(sp)
	lw	a4,4(sp)
	srl	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	add	a5,s1,a5
	sw	a5,4(s0)
	lw	a4,0(s0)
	lw	a5,4(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
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
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,4(sp)
	sw	a3,8(sp)
	addi	a5,sp,48
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-28
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s0,a5,3
	lw	a4,12(sp)
	lw	a5,16(sp)
	sw	a4,16(s0)
	sw	a5,20(s0)
	lw	a4,4(sp)
	lw	a5,8(sp)
	sw	a4,8(s0)
	sw	a5,12(s0)
	lw	a5,16(s0)
	lw	a4,8(s0)
	mv	a1,a4
	mv	a0,a5
	call	__muldsi3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s0)
	sw	a5,4(s0)
	lw	a5,4(s0)
	mv	s1,a5
	lw	a5,20(s0)
	mv	a4,a5
	lw	a5,8(s0)
	mv	a1,a5
	mv	a0,a4
	call	__mulsi3
	mv	a5,a0
	sw	a5,0(sp)
	lw	a5,16(s0)
	lw	a4,12(s0)
	mv	a1,a4
	mv	a0,a5
	call	__mulsi3
	mv	a5,a0
	lw	a4,0(sp)
	add	a5,a4,a5
	add	a5,s1,a5
	sw	a5,4(s0)
	lw	a4,0(s0)
	lw	a5,4(s0)
	mv	a0,a4
	mv	a1,a5
	lw	ra,56(sp)
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
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
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	li	a4,0
	li	a5,0
	sub	a2,a4,a0
	mv	t1,a2
	sgtu	t1,t1,a4
	sub	a3,a5,a1
	sub	a5,a3,t1
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
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
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	a0,4(sp)
	sw	a1,8(sp)
	addi	a5,sp,28
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,4(sp)
	lw	a3,8(sp)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a4,4(a5)
	lw	a5,0(a5)
	xor	a5,a4,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	srli	a5,a5,16
	lw	a4,24(sp)
	xor	a5,a4,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	srli	a5,a5,8
	lw	a4,24(sp)
	xor	a5,a4,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	srli	a5,a5,4
	lw	a4,24(sp)
	xor	a5,a4,a5
	sw	a5,24(sp)
	lw	a5,24(sp)
	andi	a5,a5,15
	li	a4,28672
	addi	a4,a4,-1642
	sra	a5,a4,a5
	andi	a5,a5,1
	mv	a0,a5
	addi	sp,sp,28
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
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a5,a5,16
	lw	a4,4(sp)
	xor	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a5,a5,8
	lw	a4,4(sp)
	xor	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a5,a5,4
	lw	a4,4(sp)
	xor	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	andi	a5,a5,15
	li	a4,28672
	addi	a4,a4,-1642
	sra	a5,a4,a5
	andi	a5,a5,1
	mv	a0,a5
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
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	sw	a0,44(sp)
	sw	a1,48(sp)
	addi	a5,sp,68
	sw	a5,40(sp)
	lw	a5,40(sp)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a0,a5,3
	lw	a4,44(sp)
	lw	a5,48(sp)
	sw	a4,0(a0)
	sw	a5,4(a0)
	lw	a5,4(a0)
	slli	a4,a5,31
	lw	a5,0(a0)
	srli	a2,a5,1
	or	a2,a4,a2
	lw	a5,4(a0)
	srli	a3,a5,1
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a2,a5
	sw	a5,16(sp)
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a3,a5
	sw	a5,20(sp)
	lw	a4,0(a0)
	lw	a5,4(a0)
	lw	a1,16(sp)
	lw	a2,20(sp)
	mv	a3,a1
	sub	t1,a4,a3
	mv	a3,t1
	sgtu	a3,a3,a4
	sub	t2,a5,a2
	sub	a5,t2,a3
	mv	t2,a5
	sw	t1,0(a0)
	sw	t2,4(a0)
	lw	a5,4(a0)
	slli	a4,a5,30
	lw	a5,0(a0)
	srli	a5,a5,2
	sw	a5,0(sp)
	lw	a5,0(sp)
	or	a5,a4,a5
	sw	a5,0(sp)
	lw	a5,4(a0)
	srli	a5,a5,2
	sw	a5,4(sp)
	li	a5,858992640
	addi	a5,a5,819
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a4,a2
	and	a5,a4,a5
	sw	a5,24(sp)
	li	a5,858992640
	addi	a5,a5,819
	mv	a4,a3
	and	a5,a4,a5
	sw	a5,28(sp)
	lw	a4,0(a0)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sw	a5,8(sp)
	lw	a4,4(a0)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a4,a5
	sw	a5,12(sp)
	lw	t1,24(sp)
	lw	t2,28(sp)
	mv	a3,t1
	lw	a2,8(sp)
	add	a4,a3,a2
	mv	a3,a4
	mv	a2,t1
	sltu	a3,a3,a2
	mv	a2,t2
	lw	a1,12(sp)
	add	a5,a2,a1
	add	a3,a3,a5
	mv	a5,a3
	sw	a4,0(a0)
	sw	a5,4(a0)
	lw	a5,4(a0)
	slli	a5,a5,28
	lw	a4,0(a0)
	srli	s0,a4,4
	or	s0,a5,s0
	lw	a5,4(a0)
	srli	s1,a5,4
	lw	a2,0(a0)
	lw	a3,4(a0)
	add	a4,s0,a2
	mv	a1,a4
	sltu	a1,a1,s0
	add	a5,s1,a3
	add	a3,a1,a5
	mv	a5,a3
	li	a3,252645376
	addi	a3,a3,-241
	and	a3,a4,a3
	sw	a3,0(a0)
	li	a3,252645376
	addi	a3,a3,-241
	and	a5,a5,a3
	sw	a5,4(a0)
	lw	a5,0(a0)
	lw	a4,4(a0)
	srli	a4,a4,0
	sw	a4,32(sp)
	sw	zero,36(sp)
	lw	a4,32(sp)
	add	a5,a5,a4
	sw	a5,64(sp)
	lw	a5,64(sp)
	srli	a5,a5,16
	lw	a4,64(sp)
	add	a5,a4,a5
	sw	a5,64(sp)
	lw	a5,64(sp)
	srli	a4,a5,8
	lw	a5,64(sp)
	add	a5,a4,a5
	andi	a5,a5,127
	mv	a0,a5
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,76
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
	sw	a0,0(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a4,a5,1
	li	a5,1431654400
	addi	a5,a5,1365
	and	a5,a4,a5
	lw	a4,4(sp)
	sub	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a4,a5,2
	li	a5,858992640
	addi	a5,a5,819
	and	a4,a4,a5
	lw	a3,4(sp)
	li	a5,858992640
	addi	a5,a5,819
	and	a5,a3,a5
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a4,a5,4
	lw	a5,4(sp)
	add	a4,a4,a5
	li	a5,252645376
	addi	a5,a5,-241
	and	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a5,a5,16
	lw	a4,4(sp)
	add	a5,a4,a5
	sw	a5,4(sp)
	lw	a5,4(sp)
	srli	a4,a5,8
	lw	a5,4(sp)
	add	a5,a4,a5
	andi	a5,a5,63
	mv	a0,a5
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,4(sp)
	addi	a5,sp,32
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-16
	addi	a5,a5,7
	srli	a5,a5,3
	slli	s0,a5,3
	lw	a5,4(sp)
	srli	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,28(sp)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,0(s0)
	sw	a5,4(s0)
.L982:
	lw	a5,4(sp)
	andi	a5,a5,1
	beq	a5,zero,.L979
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(s0)
	lw	a1,4(s0)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,0(s0)
	sw	a5,4(s0)
.L979:
	lw	a5,4(sp)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,4(sp)
	lw	a5,4(sp)
	beq	a5,zero,.L987
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,8(sp)
	sw	a5,12(sp)
	j	.L982
.L987:
	nop
	lw	a5,28(sp)
	beq	a5,zero,.L983
	lui	a5,%hi(.LC13)
	lw	a2,0(s0)
	lw	a3,4(s0)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	j	.L985
.L983:
	lw	a4,0(s0)
	lw	a5,4(s0)
.L985:
	mv	a0,a4
	mv	a1,a5
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	addi	sp,sp,40
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a1,0(sp)
	lw	a5,0(sp)
	srli	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,8(sp)
	lui	a5,%hi(.LC15)
	lw	a5,%lo(.LC15)(a5)
	sw	a5,12(sp)
.L993:
	lw	a5,0(sp)
	andi	a5,a5,1
	beq	a5,zero,.L990
	lw	a1,4(sp)
	lw	a0,12(sp)
	call	__mulsf3
	mv	a5,a0
	sw	a5,12(sp)
.L990:
	lw	a5,0(sp)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,0(sp)
	lw	a5,0(sp)
	beq	a5,zero,.L998
	lw	a1,4(sp)
	lw	a0,4(sp)
	call	__mulsf3
	mv	a5,a0
	sw	a5,4(sp)
	j	.L993
.L998:
	nop
	lw	a5,8(sp)
	beq	a5,zero,.L994
	lui	a5,%hi(.LC15)
	lw	a1,12(sp)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	mv	a5,a0
	j	.L996
.L994:
	lw	a5,12(sp)
.L996:
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	a0,12(sp)
	sw	a1,16(sp)
	sw	a2,4(sp)
	sw	a3,8(sp)
	addi	a5,sp,40
	sw	a5,0(sp)
	lw	a5,0(sp)
	addi	a5,a5,-20
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	lw	a2,12(sp)
	lw	a3,16(sp)
	sw	a2,8(a5)
	sw	a3,12(a5)
	lw	a2,4(sp)
	lw	a3,8(sp)
	sw	a2,0(a5)
	sw	a3,4(a5)
	lw	a3,12(a5)
	lw	a4,4(a5)
	bgeu	a3,a4,.L1001
	li	a5,0
	j	.L1006
.L1001:
	lw	a3,12(a5)
	lw	a4,4(a5)
	bleu	a3,a4,.L1003
	li	a5,2
	j	.L1006
.L1003:
	lw	a3,8(a5)
	lw	a4,0(a5)
	bgeu	a3,a4,.L1004
	li	a5,0
	j	.L1006
.L1004:
	lw	a4,8(a5)
	lw	a5,0(a5)
	bleu	a4,a5,.L1005
	li	a5,2
	j	.L1006
.L1005:
	li	a5,1
.L1006:
	mv	a0,a5
	addi	sp,sp,40
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a0,a4
	mv	a1,a5
	call	__ucmpdi2
	mv	a5,a0
	addi	a5,a5,-1
	mv	a0,a5
	lw	ra,16(sp)
	.cfi_restore 1
	addi	sp,sp,20
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
	.align	2
.LC15:
	.word	1065353216
	.globl	__divsf3
	.globl	__fixsfsi
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__divdf3
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
