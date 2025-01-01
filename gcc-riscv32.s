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
	ret
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
	ret
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	andi	a1,a1,0xff
	addi	a2,a2,-1
	li	a3,-1
.L30:
	beq	a2,a3,.L34
	add	a5,a0,a2
	lbu	a5,0(a5)
	addi	a4,a2,-1
	beq	a1,a5,.L35
	mv	a2,a4
	j	.L30
.L35:
	add	a0,a0,a2
	ret
.L34:
	li	a0,0
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	add	a2,a0,a2
	mv	a5,a0
	andi	a1,a1,0xff
	j	.L37
.L38:
	sb	a1,0(a5)
	addi	a5,a5,1
.L37:
	bne	a5,a2,.L38
	ret
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	j	.L40
.L41:
	addi	a1,a1,1
	addi	a0,a0,1
.L40:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L41
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	andi	a1,a1,0xff
	j	.L43
.L45:
	addi	a0,a0,1
.L43:
	lbu	a5,0(a0)
	beq	a5,zero,.L44
	bne	a1,a5,.L45
.L44:
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
.L48:
	lbu	a5,0(a0)
	beq	a1,a5,.L47
	addi	a0,a0,1
	lbu	a5,-1(a0)
	bne	a5,zero,.L48
	li	a0,0
.L47:
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	j	.L52
.L54:
	addi	a0,a0,1
	addi	a1,a1,1
.L52:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L53
	bne	a4,zero,.L54
.L53:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	mv	a5,a0
	j	.L56
.L57:
	addi	a5,a5,1
.L56:
	lbu	a4,0(a5)
	bne	a4,zero,.L57
	sub	a0,a5,a0
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a2,zero,.L59
	addi	a2,a2,-1
	add	a4,a5,a2
	mv	a0,a5
.L60:
	lbu	a5,0(a0)
	beq	a5,zero,.L61
	lbu	a5,0(a1)
	beq	a5,zero,.L61
	beq	a0,a4,.L61
	lbu	a3,0(a0)
	bne	a3,a5,.L61
	addi	a0,a0,1
	addi	a1,a1,1
	j	.L60
.L61:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
.L59:
	ret
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	mv	a5,a0
	add	a2,a0,a2
	li	a3,1
	j	.L65
.L66:
	lbu	a4,1(a5)
	sb	a4,0(a1)
	lbu	a4,0(a5)
	sb	a4,1(a1)
	addi	a1,a1,2
	addi	a5,a5,2
.L65:
	sub	a4,a2,a5
	bgt	a4,a3,.L66
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	sltiu	a0,a0,128
	ret
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	mv	a5,a0
	li	a4,32
	li	a0,1
	beq	a5,a4,.L70
	addi	a5,a5,-9
	seqz	a0,a5
.L70:
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	mv	a5,a0
	li	a4,31
	li	a0,1
	bleu	a5,a4,.L74
	addi	a5,a5,-127
	seqz	a0,a5
.L74:
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	addi	a0,a0,-48
	sltiu	a0,a0,10
	ret
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	addi	a0,a0,-33
	sltiu	a0,a0,94
	ret
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	addi	a0,a0,-97
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	addi	a0,a0,-32
	sltiu	a0,a0,95
	ret
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	mv	a5,a0
	li	a4,32
	li	a0,1
	beq	a5,a4,.L82
	addi	a5,a5,-9
	sltiu	a0,a5,5
.L82:
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	addi	a0,a0,-65
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	mv	a5,a0
	li	a4,31
	li	a0,1
	bleu	a5,a4,.L87
	addi	a4,a5,-127
	li	a3,32
	bleu	a4,a3,.L87
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L87
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
.L87:
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	addi	a0,a0,-48
	sltiu	a0,a0,10
	ret
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	mv	a5,a0
	li	a4,254
	bleu	a0,a4,.L101
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L95
	li	a4,-8192
	addi	a4,a4,-42
	add	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L95
	li	a3,-57344
	add	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L95
	li	a4,-65536
	addi	a4,a4,4
	add	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L95
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L95:
	ret
.L101:
	addi	a0,a0,1
	andi	a0,a0,127
	sltiu	a0,a0,33
	xori	a0,a0,1
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	mv	a5,a0
	addi	a3,a0,-48
	li	a4,9
	li	a0,1
	bleu	a3,a4,.L103
	ori	a5,a5,32
	addi	a5,a5,-97
	sltiu	a0,a5,6
.L103:
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	andi	a0,a0,127
	ret
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L110
	mv	a2,s0
	mv	a3,s1
	mv	a0,s0
	mv	a1,s1
	call	__unorddf2
	bne	a0,zero,.L111
	mv	a2,s0
	mv	a3,s1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	ble	a0,zero,.L114
	mv	a2,s0
	mv	a3,s1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__subdf3
.L108:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L110:
	.cfi_restore_state
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L108
.L111:
	mv	a0,s0
	mv	a1,s1
	j	.L108
.L114:
	li	a0,0
	li	a1,0
	j	.L108
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
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L118
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L119
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L122
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
.L116:
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L118:
	.cfi_restore_state
	mv	a0,s0
	j	.L116
.L119:
	mv	a0,s1
	j	.L116
.L122:
	mv	a0,zero
	j	.L116
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L127
	mv	a2,s0
	mv	a3,s1
	mv	a0,s0
	mv	a1,s1
	call	__unorddf2
	bne	a0,zero,.L128
	li	a5,-2147483648
	lw	a2,0(sp)
	lw	a3,4(sp)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L125
	mv	a0,a2
	mv	a1,a3
	bge	a3,zero,.L124
	mv	a0,s0
	mv	a1,s1
.L124:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L125:
	.cfi_restore_state
	mv	a2,s0
	mv	a3,s1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	mv	a5,a0
	mv	a0,s0
	mv	a1,s1
	blt	a5,zero,.L124
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L124
.L127:
	mv	a0,s0
	mv	a1,s1
	j	.L124
.L128:
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L124
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
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L137
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L138
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L135
	mv	a0,s1
	bge	s1,zero,.L134
	mv	a0,s0
.L134:
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L135:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,a0
	mv	a0,s0
	blt	a5,zero,.L134
	mv	a0,s1
	j	.L134
.L137:
	mv	a0,s0
	j	.L134
.L138:
	mv	a0,s1
	j	.L134
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	ra,68(sp)
	sw	s0,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lw	a5,0(a1)
	sw	a5,0(sp)
	lw	a5,4(a1)
	sw	a5,4(sp)
	lw	a5,8(a1)
	sw	a5,8(sp)
	lw	a5,12(a1)
	sw	a5,12(sp)
	lw	a5,0(a2)
	sw	a5,16(sp)
	lw	a5,4(a2)
	sw	a5,20(sp)
	lw	a5,8(a2)
	sw	a5,24(sp)
	lw	a5,12(a2)
	sw	a5,28(sp)
	lw	a5,0(sp)
	sw	a5,48(sp)
	lw	a5,4(sp)
	sw	a5,52(sp)
	lw	a5,8(sp)
	sw	a5,56(sp)
	lw	a5,12(sp)
	sw	a5,60(sp)
	lw	a5,0(sp)
	sw	a5,32(sp)
	lw	a5,4(sp)
	sw	a5,36(sp)
	lw	a5,8(sp)
	sw	a5,40(sp)
	lw	a5,12(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__unordtf2
	bne	a0,zero,.L161
	lw	a5,16(sp)
	sw	a5,48(sp)
	lw	a5,20(sp)
	sw	a5,52(sp)
	lw	a5,24(sp)
	sw	a5,56(sp)
	lw	a5,28(sp)
	sw	a5,60(sp)
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a5,24(sp)
	sw	a5,40(sp)
	lw	a5,28(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__unordtf2
	bne	a0,zero,.L162
	li	a5,-2147483648
	lw	a4,12(sp)
	and	a4,a5,a4
	lw	a3,28(sp)
	and	a5,a5,a3
	beq	a4,a5,.L149
	lw	a5,12(sp)
	bge	a5,zero,.L153
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a4,24(sp)
	lw	a5,28(sp)
.L150:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
.L143:
	mv	a0,s0
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L161:
	.cfi_restore_state
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	lw	a5,28(sp)
	sw	a5,12(s0)
	j	.L143
.L162:
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	lw	a5,12(sp)
	sw	a5,12(s0)
	j	.L143
.L153:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L150
.L149:
	lw	a5,0(sp)
	sw	a5,48(sp)
	lw	a5,4(sp)
	sw	a5,52(sp)
	lw	a5,8(sp)
	sw	a5,56(sp)
	lw	a5,12(sp)
	sw	a5,60(sp)
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a5,24(sp)
	sw	a5,40(sp)
	lw	a5,28(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__lttf2
	bge	a0,zero,.L160
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a4,24(sp)
	lw	a5,28(sp)
.L151:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	j	.L143
.L160:
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	j	.L151
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L167
	mv	a2,s0
	mv	a3,s1
	mv	a0,s0
	mv	a1,s1
	call	__unorddf2
	bne	a0,zero,.L168
	li	a5,-2147483648
	lw	a2,0(sp)
	lw	a3,4(sp)
	and	a4,a5,a3
	and	a5,a5,s1
	beq	a4,a5,.L165
	mv	a0,s0
	mv	a1,s1
	bge	a3,zero,.L164
	mv	a0,a2
	mv	a1,a3
.L164:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L165:
	.cfi_restore_state
	mv	a2,s0
	mv	a3,s1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	mv	a5,a0
	lw	a0,0(sp)
	lw	a1,4(sp)
	blt	a5,zero,.L164
	mv	a0,s0
	mv	a1,s1
	j	.L164
.L167:
	mv	a0,s0
	mv	a1,s1
	j	.L164
.L168:
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L164
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
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L177
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L178
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L175
	mv	a0,s0
	bge	s1,zero,.L174
	mv	a0,s1
.L174:
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L175:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,a0
	mv	a0,s1
	blt	a5,zero,.L174
	mv	a0,s0
	j	.L174
.L177:
	mv	a0,s0
	j	.L174
.L178:
	mv	a0,s1
	j	.L174
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	ra,68(sp)
	sw	s0,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lw	a5,0(a1)
	sw	a5,0(sp)
	lw	a5,4(a1)
	sw	a5,4(sp)
	lw	a5,8(a1)
	sw	a5,8(sp)
	lw	a5,12(a1)
	sw	a5,12(sp)
	lw	a5,0(a2)
	sw	a5,16(sp)
	lw	a5,4(a2)
	sw	a5,20(sp)
	lw	a5,8(a2)
	sw	a5,24(sp)
	lw	a5,12(a2)
	sw	a5,28(sp)
	lw	a5,0(sp)
	sw	a5,48(sp)
	lw	a5,4(sp)
	sw	a5,52(sp)
	lw	a5,8(sp)
	sw	a5,56(sp)
	lw	a5,12(sp)
	sw	a5,60(sp)
	lw	a5,0(sp)
	sw	a5,32(sp)
	lw	a5,4(sp)
	sw	a5,36(sp)
	lw	a5,8(sp)
	sw	a5,40(sp)
	lw	a5,12(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__unordtf2
	bne	a0,zero,.L201
	lw	a5,16(sp)
	sw	a5,48(sp)
	lw	a5,20(sp)
	sw	a5,52(sp)
	lw	a5,24(sp)
	sw	a5,56(sp)
	lw	a5,28(sp)
	sw	a5,60(sp)
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a5,24(sp)
	sw	a5,40(sp)
	lw	a5,28(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__unordtf2
	bne	a0,zero,.L202
	li	a5,-2147483648
	lw	a4,12(sp)
	and	a4,a5,a4
	lw	a3,28(sp)
	and	a5,a5,a3
	beq	a4,a5,.L189
	lw	a5,12(sp)
	bge	a5,zero,.L193
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
.L190:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
.L183:
	mv	a0,s0
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L201:
	.cfi_restore_state
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	lw	a5,28(sp)
	sw	a5,12(s0)
	j	.L183
.L202:
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	lw	a5,12(sp)
	sw	a5,12(s0)
	j	.L183
.L193:
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a4,24(sp)
	lw	a5,28(sp)
	j	.L190
.L189:
	lw	a5,0(sp)
	sw	a5,48(sp)
	lw	a5,4(sp)
	sw	a5,52(sp)
	lw	a5,8(sp)
	sw	a5,56(sp)
	lw	a5,12(sp)
	sw	a5,60(sp)
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a5,24(sp)
	sw	a5,40(sp)
	lw	a5,28(sp)
	sw	a5,44(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	call	__lttf2
	bge	a0,zero,.L200
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
.L191:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	j	.L183
.L200:
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a4,24(sp)
	lw	a5,28(sp)
	j	.L191
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
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(digits)
	j	.L204
.L205:
	andi	a3,a0,63
	addi	a5,a2,%lo(digits)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
.L204:
	bne	a0,zero,.L205
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	ret
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
	addi	a4,a0,-1
	li	a5,0
	lui	a3,%hi(seed)
	sw	a4,%lo(seed)(a3)
	sw	a5,%lo(seed+4)(a3)
	ret
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	lui	s0,%hi(seed)
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	lw	a0,%lo(seed)(s0)
	lw	a1,%lo(seed+4)(s0)
	call	__muldi3
	addi	a4,a0,1
	sltu	a3,a4,a0
	add	a5,a3,a1
	sw	a4,%lo(seed)(s0)
	sw	a5,%lo(seed+4)(s0)
	srli	a0,a5,1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	beq	a1,zero,.L211
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L208
	sw	a0,4(a5)
.L208:
	ret
.L211:
	sw	zero,4(a0)
	sw	zero,0(a0)
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	lw	a5,0(a0)
	beq	a5,zero,.L213
	lw	a4,4(a0)
	sw	a4,4(a5)
.L213:
	lw	a5,4(a0)
	beq	a5,zero,.L212
	lw	a4,0(a0)
	sw	a4,0(a5)
.L212:
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,16(sp)
	sw	a2,20(sp)
	sw	a3,4(sp)
	sw	a4,12(sp)
	lw	a5,0(a2)
	sw	a5,0(sp)
	mv	s1,a1
	li	s0,0
	j	.L216
.L217:
	addi	s0,s0,1
.L216:
	lw	a5,0(sp)
	beq	s0,a5,.L220
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	lw	a5,4(sp)
	add	s1,s1,a5
	bne	a0,zero,.L217
	mv	a1,a5
	mv	a0,s0
	call	__mulsi3
	lw	a5,16(sp)
	add	a0,a5,a0
	j	.L218
.L220:
	mv	a1,a5
	addi	a5,a5,1
	lw	a4,20(sp)
	sw	a5,0(a4)
	lw	s0,4(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a2,s0
	lw	a1,8(sp)
	lw	a5,16(sp)
	add	a0,a5,a0
	call	memcpy
.L218:
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a1,16(sp)
	sw	a3,4(sp)
	sw	a4,12(sp)
	lw	a5,0(a2)
	sw	a5,0(sp)
	mv	s1,a1
	li	s0,0
	j	.L222
.L223:
	addi	s0,s0,1
.L222:
	lw	a5,0(sp)
	beq	s0,a5,.L226
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	lw	a5,4(sp)
	add	s1,s1,a5
	bne	a0,zero,.L223
	mv	a1,a5
	mv	a0,s0
	call	__mulsi3
	lw	a5,16(sp)
	add	a0,a5,a0
	j	.L224
.L226:
	li	a0,0
.L224:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
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
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	j	.L229
.L230:
	addi	s0,s0,1
.L229:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L230
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L236
	li	a4,45
	li	a2,0
	bne	a5,a4,.L232
	li	a2,1
.L231:
	addi	s0,s0,1
.L232:
	li	a5,0
	li	a3,9
	j	.L233
.L236:
	li	a2,0
	j	.L231
.L234:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addi	a5,a5,-48
	sub	a5,a4,a5
.L233:
	lbu	a4,0(s0)
	addi	a4,a4,-48
	bleu	a4,a3,.L234
	mv	a0,a5
	bne	a2,zero,.L235
	neg	a0,a5
.L235:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	j	.L240
.L241:
	addi	s0,s0,1
.L240:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L241
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L247
	li	a4,45
	li	a2,0
	bne	a5,a4,.L243
	li	a2,1
.L242:
	addi	s0,s0,1
.L243:
	li	a5,0
	li	a3,9
	j	.L244
.L247:
	li	a2,0
	j	.L242
.L245:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addi	a5,a5,-48
	sub	a5,a4,a5
.L244:
	lbu	a4,0(s0)
	addi	a4,a4,-48
	bleu	a4,a3,.L245
	mv	a0,a5
	bne	a2,zero,.L246
	neg	a0,a5
.L246:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	mv	s0,a0
	j	.L251
.L252:
	addi	s0,s0,1
.L251:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L252
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L258
	li	a4,45
	li	t1,0
	bne	a5,a4,.L254
	li	t1,1
.L253:
	addi	s0,s0,1
.L254:
	li	a2,0
	li	a3,0
	li	a1,9
	sw	t1,8(sp)
	mv	a0,s0
	j	.L255
.L258:
	li	t1,0
	j	.L253
.L256:
	srli	t0,a2,30
	slli	a5,a3,2
	or	a5,t0,a5
	slli	a4,a2,2
	add	s0,a4,a2
	sltu	t0,s0,a4
	add	s1,a5,a3
	add	s1,t0,s1
	srli	a3,s0,31
	slli	t2,s1,1
	or	t2,a3,t2
	slli	t1,s0,1
	addi	a0,a0,1
	lbu	a3,-1(a0)
	addi	a3,a3,-48
	sw	a3,0(sp)
	srai	a3,a3,31
	sw	a3,4(sp)
	lw	s0,0(sp)
	lw	s1,4(sp)
	sub	a2,t1,s0
	sgtu	t0,a2,t1
	sub	a3,t2,s1
	sub	a3,a3,t0
.L255:
	lbu	t0,0(a0)
	addi	t0,t0,-48
	bleu	t0,a1,.L256
	lw	t1,8(sp)
	mv	a0,a2
	mv	a1,a3
	bne	t1,zero,.L257
	neg	a0,a2
	snez	a5,a0
	neg	a1,a3
	sub	a1,a1,a5
.L257:
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
.LFE47:
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
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
	sw	a1,0(sp)
	mv	s0,a2
	sw	a3,4(sp)
	sw	a4,12(sp)
	j	.L262
.L269:
	srli	s0,s0,1
.L262:
	beq	s0,zero,.L268
	lw	a1,4(sp)
	srli	a0,s0,1
	call	__mulsi3
	lw	a5,0(sp)
	add	s1,a5,a0
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	blt	a0,zero,.L269
	ble	a0,zero,.L267
	lw	a5,4(sp)
	add	a5,s1,a5
	sw	a5,0(sp)
	srli	a5,s0,1
	addi	s0,s0,-1
	sub	s0,s0,a5
	j	.L262
.L268:
	li	a0,0
.L265:
	lw	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,20(sp)
	.cfi_restore 8
	lw	s1,16(sp)
	.cfi_restore 9
	addi	sp,sp,28
	.cfi_def_cfa_offset 0
	jr	ra
.L267:
	.cfi_restore_state
	mv	a0,s1
	j	.L265
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,8(sp)
	sw	a3,4(sp)
	sw	a4,12(sp)
	sw	a5,16(sp)
	mv	s0,a2
	sw	a1,0(sp)
	j	.L271
.L273:
	srai	s0,s0,1
.L271:
	beq	s0,zero,.L276
	lw	a1,4(sp)
	srai	a0,s0,1
	call	__mulsi3
	lw	a4,0(sp)
	add	s1,a4,a0
	lw	a2,16(sp)
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	beq	a0,zero,.L275
	ble	a0,zero,.L273
	lw	a5,4(sp)
	add	a5,s1,a5
	sw	a5,0(sp)
	addi	s0,s0,-1
	j	.L273
.L276:
	li	a0,0
.L272:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L275:
	.cfi_restore_state
	mv	a0,s1
	j	.L272
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__divsi3
	sw	a0,0(sp)
	mv	a1,s1
	mv	a0,s0
	call	__modsi3
	lw	a4,0(sp)
	mv	a5,a0
	mv	a0,a4
	mv	a1,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	srai	t1,a1,31
	xor	a2,t1,a0
	xor	a3,t1,a1
	sub	a0,a2,t1
	sgtu	a4,a0,a2
	sub	a1,a3,t1
	sub	a1,a1,a4
	ret
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	mv	a1,a2
	sw	a3,8(sp)
	sw	a4,12(sp)
	mv	a2,a3
	mv	a3,a4
	sw	a0,0(sp)
	sw	a1,4(sp)
	call	__divdi3
	sw	a0,16(sp)
	sw	a1,20(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__moddi3
	lw	a4,16(sp)
	lw	a5,20(sp)
	sw	a4,0(s0)
	sw	a5,4(s0)
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
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
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__divsi3
	sw	a0,0(sp)
	mv	a1,s1
	mv	a0,s0
	call	__modsi3
	lw	a4,0(sp)
	mv	a5,a0
	mv	a0,a4
	mv	a1,a5
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	srai	t1,a1,31
	xor	a2,t1,a0
	xor	a3,t1,a1
	sub	a0,a2,t1
	sgtu	a4,a0,a2
	sub	a1,a3,t1
	sub	a1,a1,a4
	ret
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	mv	a1,a2
	sw	a3,8(sp)
	sw	a4,12(sp)
	mv	a2,a3
	mv	a3,a4
	sw	a0,0(sp)
	sw	a1,4(sp)
	call	__divdi3
	sw	a0,16(sp)
	sw	a1,20(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__moddi3
	lw	a4,16(sp)
	lw	a5,20(sp)
	sw	a4,0(s0)
	sw	a5,4(s0)
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
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
	j	.L285
.L287:
	addi	a0,a0,4
.L285:
	lw	a5,0(a0)
	beq	a5,zero,.L286
	bne	a1,a5,.L287
.L286:
	lw	a5,0(a0)
	snez	a5,a5
	neg	a5,a5
	and	a0,a0,a5
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	mv	a5,a0
	j	.L291
.L293:
	addi	a5,a5,4
	addi	a1,a1,4
.L291:
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L292
	beq	a3,zero,.L292
	lw	a4,0(a1)
	bne	a4,zero,.L293
.L292:
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L294
	sgt	a0,a3,a4
.L294:
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	mv	a5,a0
.L297:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L297
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	mv	a5,a0
	j	.L300
.L301:
	addi	a5,a5,4
.L300:
	lw	a4,0(a5)
	bne	a4,zero,.L301
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	mv	a5,a0
.L303:
	beq	a2,zero,.L304
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L304
	beq	a3,zero,.L304
	lw	a4,0(a1)
	beq	a4,zero,.L304
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
	j	.L303
.L304:
	li	a0,0
	beq	a2,zero,.L306
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L306
	sgt	a0,a3,a4
.L306:
	ret
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	j	.L310
.L312:
	addi	a2,a2,-1
	addi	a0,a0,4
.L310:
	beq	a2,zero,.L311
	lw	a5,0(a0)
	bne	a1,a5,.L312
.L311:
	snez	a2,a2
	neg	a2,a2
	and	a0,a0,a2
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	mv	a5,a0
	j	.L316
.L318:
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
.L316:
	beq	a2,zero,.L317
	lw	a3,0(a5)
	lw	a4,0(a1)
	beq	a3,a4,.L318
.L317:
	li	a0,0
	beq	a2,zero,.L319
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L319
	sgt	a0,a3,a4
.L319:
	ret
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	mv	a5,a0
	li	a3,-1
	j	.L323
.L324:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L323:
	addi	a2,a2,-1
	bne	a2,a3,.L324
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	beq	a0,a1,.L326
	sub	a5,a0,a1
	slli	a4,a2,2
	bgeu	a5,a4,.L331
	add	a1,a1,a4
	add	a5,a0,a4
	addi	a3,a0,-4
	j	.L328
.L329:
	lw	a4,0(a1)
	sw	a4,0(a5)
.L328:
	addi	a1,a1,-4
	addi	a5,a5,-4
	bne	a5,a3,.L329
	ret
.L330:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L327:
	addi	a2,a2,-1
	bne	a2,a3,.L330
.L326:
	ret
.L331:
	mv	a5,a0
	li	a3,-1
	j	.L327
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	j	.L333
.L334:
	addi	a5,a5,4
	sw	a1,-4(a5)
.L333:
	addi	a2,a2,-1
	bne	a2,a4,.L334
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	bgeu	a0,a1,.L336
	add	a5,a0,a2
	add	a1,a1,a2
	j	.L337
.L338:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
.L337:
	bne	a5,a0,.L338
	ret
.L336:
	beq	a0,a1,.L335
	add	a2,a1,a2
	mv	a5,a0
	j	.L340
.L341:
	addi	a5,a5,1
	addi	a1,a1,1
	lbu	a4,-1(a5)
	sb	a4,-1(a1)
.L340:
	bne	a1,a2,.L341
.L335:
	ret
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	addi	a3,a2,-32
	blt	a3,zero,.L343
	li	a4,0
	sll	a5,a0,a3
.L344:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L345
	srl	t1,a1,a3
	li	t2,0
.L346:
	or	a0,t1,a4
	or	a1,t2,a5
	ret
.L343:
	srli	a3,a0,1
	li	a5,31
	sub	a5,a5,a2
	srl	a3,a3,a5
	sll	a5,a1,a2
	or	a5,a3,a5
	sll	a4,a0,a2
	j	.L344
.L345:
	slli	a3,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a3,a3,t1
	srl	t1,a0,a2
	or	t1,a3,t1
	srl	t2,a1,a2
	j	.L346
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	a3,a2,-32
	blt	a3,zero,.L348
	srl	a4,a1,a3
	li	a5,0
.L349:
	neg	a3,a2
	andi	a3,a3,63
	addi	a3,a3,-32
	blt	a3,zero,.L350
	li	t1,0
	sll	t2,a0,a3
.L351:
	or	a0,t1,a4
	or	a1,t2,a5
	ret
.L348:
	slli	a3,a1,1
	li	a5,31
	sub	a5,a5,a2
	sll	a3,a3,a5
	srl	a4,a0,a2
	or	a4,a3,a4
	srl	a5,a1,a2
	j	.L349
.L350:
	srli	a3,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a3,a3,t1
	sll	t2,a1,a2
	or	t2,a3,t2
	sll	t1,a0,a2
	j	.L351
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	sll	a4,a0,a1
	li	a5,16
	sub	a5,a5,a1
	srl	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,16
	srli	a0,a0,16
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	srl	a4,a0,a1
	li	a5,16
	sub	a5,a5,a1
	sll	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,16
	srli	a0,a0,16
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	sll	a4,a0,a1
	li	a5,8
	sub	a5,a5,a1
	srl	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	srl	a4,a0,a1
	li	a5,8
	sub	a5,a5,a1
	sll	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	srli	a5,a0,8
	andi	a0,a0,255
	slli	a0,a0,8
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	li	t0,-16777216
	and	a3,a1,t0
	srli	a4,a3,24
	li	s0,16711680
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a3,4(sp)
	and	t2,a3,s0
	srli	a2,t2,8
	or	a0,a2,a4
	li	a2,0
	li	a5,65536
	addi	s1,a5,-256
	lw	a5,4(sp)
	and	a3,a5,s1
	slli	t2,a3,8
	srli	a4,a2,24
	or	a4,t2,a4
	srli	a5,a3,24
	or	a2,a0,a4
	mv	a3,a5
	li	t1,0
	lw	a5,4(sp)
	andi	t2,a5,255
	slli	a1,t2,24
	srli	a4,t1,8
	or	a4,a1,a4
	srli	a5,t2,8
	or	t1,a2,a4
	or	t2,a3,a5
	lw	a0,0(sp)
	and	a4,a0,t0
	srli	a3,a4,24
	slli	a2,a4,8
	or	a4,t1,a2
	or	a5,t2,a3
	lw	a1,0(sp)
	and	a2,a1,s0
	srli	t2,a2,8
	slli	t1,a2,24
	or	a2,a4,t1
	or	a3,a5,t2
	and	a4,a1,s1
	slli	t2,a4,8
	or	a5,a3,t2
	andi	t1,a1,255
	slli	a3,t1,24
	mv	a0,a2
	or	a1,a5,a3
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,16
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
	li	a5,0
	li	a3,32
.L364:
	beq	a5,a3,.L368
	srl	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L369
	addi	a5,a5,1
	j	.L364
.L369:
	addi	a0,a5,1
	ret
.L368:
	li	a0,0
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L371
	li	a0,1
	j	.L372
.L373:
	srai	a5,a5,1
	addi	a0,a0,1
.L372:
	andi	a4,a5,1
	beq	a4,zero,.L373
.L371:
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
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	call	__ltsf2
	li	a5,1
	blt	a0,zero,.L376
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a5,a0,zero
.L376:
	mv	a0,a5
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
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
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__ltdf2
	mv	a5,a0
	li	a0,1
	blt	a5,zero,.L382
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	mv	a0,s0
	mv	a1,s1
	call	__gtdf2
	sgt	a0,a0,zero
.L382:
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
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	.cfi_offset 1, -4
	lw	a5,0(a0)
	sw	a5,0(sp)
	lw	a5,4(a0)
	sw	a5,4(sp)
	lw	a5,8(a0)
	sw	a5,8(sp)
	lw	a5,12(a0)
	sw	a5,12(sp)
	lui	a1,%hi(.LC5)
	li	a2,-1
	lw	a3,%lo(.LC5+4)(a1)
	lw	a4,%lo(.LC5+8)(a1)
	lw	a5,%lo(.LC5+12)(a1)
	lw	a1,0(sp)
	sw	a1,32(sp)
	lw	a1,4(sp)
	sw	a1,36(sp)
	lw	a1,8(sp)
	sw	a1,40(sp)
	lw	a1,12(sp)
	sw	a1,44(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	addi	a1,sp,16
	addi	a0,sp,32
	call	__lttf2
	mv	a5,a0
	li	a0,1
	blt	a5,zero,.L388
	lui	a1,%hi(.LC6)
	lw	a3,%lo(.LC6+4)(a1)
	lw	a4,%lo(.LC6+8)(a1)
	lw	a5,%lo(.LC6+12)(a1)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	addi	a1,sp,16
	addi	a0,sp,32
	call	__gttf2
	sgt	a0,a0,zero
.L388:
	lw	ra,48(sp)
	.cfi_restore 1
	addi	sp,sp,52
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	call	__floatsidf
	mv	a2,a1
	mv	a1,a0
	mv	a0,sp
	call	__extenddftf2
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	addi	sp,sp,24
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
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	sw	a0,0(sp)
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L395
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,a0
	mv	a0,s1
	call	__nesf2
	beq	a0,zero,.L395
	blt	s0,zero,.L402
	lui	a5,%hi(.LC8)
	lw	s1,%lo(.LC8)(a5)
	j	.L399
.L402:
	lui	a5,%hi(.LC7)
	lw	s1,%lo(.LC7)(a5)
	j	.L399
.L398:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L395
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L399:
	andi	a5,s0,1
	beq	a5,zero,.L398
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L398
.L395:
	lw	a0,0(sp)
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a2
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L404
	lw	a4,0(sp)
	lw	a5,4(sp)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a4
	mv	a1,a5
	call	__adddf3
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__nedf2
	beq	a0,zero,.L404
	blt	s0,zero,.L411
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,8(sp)
	sw	a5,12(sp)
	j	.L408
.L411:
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,8(sp)
	sw	a5,12(sp)
	j	.L408
.L407:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L404
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,8(sp)
	sw	a1,12(sp)
.L408:
	andi	a5,s0,1
	beq	a5,zero,.L407
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__muldf3
	sw	a0,0(sp)
	sw	a1,4(sp)
	j	.L407
.L404:
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	addi	sp,sp,24
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
	addi	sp,sp,-92
	.cfi_def_cfa_offset 92
	sw	ra,88(sp)
	sw	s0,84(sp)
	sw	s1,80(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lw	a5,0(a1)
	sw	a5,16(sp)
	lw	a5,4(a1)
	sw	a5,20(sp)
	lw	a5,8(a1)
	sw	a5,24(sp)
	lw	a5,12(a1)
	sw	a5,28(sp)
	mv	s1,a2
	lw	a5,16(sp)
	sw	a5,64(sp)
	lw	a5,20(sp)
	sw	a5,68(sp)
	lw	a5,24(sp)
	sw	a5,72(sp)
	lw	a5,28(sp)
	sw	a5,76(sp)
	lw	a5,16(sp)
	sw	a5,48(sp)
	lw	a5,20(sp)
	sw	a5,52(sp)
	lw	a5,24(sp)
	sw	a5,56(sp)
	lw	a5,28(sp)
	sw	a5,60(sp)
	addi	a1,sp,48
	addi	a0,sp,64
	call	__unordtf2
	bne	a0,zero,.L413
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a5,24(sp)
	sw	a5,40(sp)
	lw	a5,28(sp)
	sw	a5,44(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__addtf3
	lw	a2,64(sp)
	lw	a3,68(sp)
	lw	a4,72(sp)
	lw	a5,76(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	lw	a1,16(sp)
	sw	a1,64(sp)
	lw	a1,20(sp)
	sw	a1,68(sp)
	lw	a1,24(sp)
	sw	a1,72(sp)
	lw	a1,28(sp)
	sw	a1,76(sp)
	sw	a2,48(sp)
	sw	a3,52(sp)
	sw	a4,56(sp)
	sw	a5,60(sp)
	addi	a1,sp,48
	addi	a0,sp,64
	call	__netf2
	beq	a0,zero,.L413
	blt	s1,zero,.L421
	lui	a5,%hi(.LC12)
	sw	zero,0(sp)
	lw	a4,%lo(.LC12+4)(a5)
	sw	a4,4(sp)
	lw	a4,%lo(.LC12+8)(a5)
	sw	a4,8(sp)
	lw	a5,%lo(.LC12+12)(a5)
	sw	a5,12(sp)
	j	.L417
.L421:
	lui	a5,%hi(.LC11)
	sw	zero,0(sp)
	lw	a4,%lo(.LC11+4)(a5)
	sw	a4,4(sp)
	lw	a4,%lo(.LC11+8)(a5)
	sw	a4,8(sp)
	lw	a5,%lo(.LC11+12)(a5)
	sw	a5,12(sp)
	j	.L417
.L416:
	srli	a5,s1,31
	add	a5,a5,s1
	srai	s1,a5,1
	beq	s1,zero,.L413
	lw	a5,0(sp)
	sw	a5,48(sp)
	lw	a5,4(sp)
	sw	a5,52(sp)
	lw	a5,8(sp)
	sw	a5,56(sp)
	lw	a5,12(sp)
	sw	a5,60(sp)
	lw	a5,0(sp)
	sw	a5,32(sp)
	lw	a5,4(sp)
	sw	a5,36(sp)
	lw	a5,8(sp)
	sw	a5,40(sp)
	lw	a5,12(sp)
	sw	a5,44(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	a2,64(sp)
	lw	a3,68(sp)
	lw	a4,72(sp)
	lw	a5,76(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
.L417:
	andi	a5,s1,1
	beq	a5,zero,.L416
	lw	a5,16(sp)
	sw	a5,48(sp)
	lw	a5,20(sp)
	sw	a5,52(sp)
	lw	a5,24(sp)
	sw	a5,56(sp)
	lw	a5,28(sp)
	sw	a5,60(sp)
	lw	a5,0(sp)
	sw	a5,32(sp)
	lw	a5,4(sp)
	sw	a5,36(sp)
	lw	a5,8(sp)
	sw	a5,40(sp)
	lw	a5,12(sp)
	sw	a5,44(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	a2,64(sp)
	lw	a3,68(sp)
	lw	a4,72(sp)
	lw	a5,76(sp)
	sw	a2,16(sp)
	sw	a3,20(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	j	.L416
.L413:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	lw	a5,28(sp)
	sw	a5,12(s0)
	mv	a0,s0
	lw	ra,88(sp)
	.cfi_restore 1
	lw	s0,84(sp)
	.cfi_restore 8
	lw	s1,80(sp)
	.cfi_restore 9
	addi	sp,sp,92
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
	add	a2,a0,a2
	mv	a5,a0
	j	.L423
.L424:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
.L423:
	bne	a5,a2,.L424
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,0(sp)
	mv	s1,a1
	mv	s0,a2
	call	strlen
	lw	a5,0(sp)
	add	a0,a5,a0
	j	.L426
.L428:
	addi	s1,s1,1
	addi	a0,a0,1
	addi	s0,s0,-1
.L426:
	beq	s0,zero,.L427
	lbu	a5,0(s1)
	sb	a5,0(a0)
	bne	a5,zero,.L428
.L427:
	bne	s0,zero,.L429
	sb	zero,0(a0)
.L429:
	lw	a0,0(sp)
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
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
	mv	a5,a0
	li	a0,0
.L431:
	beq	a0,a1,.L432
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L433
.L432:
	ret
.L433:
	addi	a0,a0,1
	j	.L431
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L435:
	lbu	a5,0(a0)
	beq	a5,zero,.L441
	mv	a5,a1
.L438:
	lbu	a4,0(a5)
	beq	a4,zero,.L442
	addi	a5,a5,1
	lbu	a3,-1(a5)
	lbu	a4,0(a0)
	bne	a3,a4,.L438
	ret
.L442:
	addi	a0,a0,1
	j	.L435
.L441:
	li	a0,0
	ret
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	j	.L445
.L444:
	addi	a5,a5,1
	lbu	a4,-1(a5)
	beq	a4,zero,.L448
.L445:
	lbu	a4,0(a5)
	bne	a1,a4,.L444
	mv	a0,a5
	j	.L444
.L448:
	ret
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a0,a1
	call	strlen
	mv	a5,a0
	sw	a0,4(sp)
	mv	a0,s0
	beq	a5,zero,.L450
	lbu	a5,0(s1)
	sw	a5,0(sp)
.L451:
	lw	a1,0(sp)
	mv	a0,s0
	call	strchr
	mv	s0,a0
	beq	a0,zero,.L455
	lw	a2,4(sp)
	mv	a1,s1
	mv	a0,s0
	call	strncmp
	beq	a0,zero,.L454
	addi	s0,s0,1
	j	.L451
.L455:
	li	a0,0
.L450:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L454:
	.cfi_restore_state
	mv	a0,s0
	j	.L450
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	sw	a2,0(sp)
	sw	a3,4(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L469
.L457:
	li	a2,0
	li	a3,0
	mv	a0,s0
	mv	a1,s1
	call	__gtdf2
	ble	a0,zero,.L467
	li	a2,0
	li	a3,0
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	blt	a0,zero,.L459
	mv	a0,s0
	mv	a1,s1
.L460:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L469:
	.cfi_restore_state
	li	a2,0
	li	a3,0
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	ble	a0,zero,.L457
.L459:
	mv	a0,s0
	li	a5,-2147483648
	xor	a1,s1,a5
	j	.L460
.L467:
	mv	a0,s0
	mv	a1,s1
	j	.L460
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
	sw	a2,0(sp)
	sub	s1,a1,a3
	add	s1,a0,s1
	beq	a3,zero,.L471
	bltu	a1,a3,.L476
	mv	s0,a0
	addi	a5,a2,1
	sw	a5,4(sp)
	addi	a5,a3,-1
	sw	a5,8(sp)
	j	.L472
.L473:
	addi	s0,s0,1
.L472:
	bgtu	s0,s1,.L478
	lbu	a4,0(s0)
	lw	a5,0(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L473
	lw	a2,8(sp)
	lw	a1,4(sp)
	addi	a0,s0,1
	call	memcmp
	bne	a0,zero,.L473
	mv	a0,s0
	j	.L471
.L478:
	li	a0,0
.L471:
	lw	ra,20(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
.L476:
	.cfi_restore_state
	li	a0,0
	j	.L471
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a2
	call	memcpy
	add	a0,a0,s0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	sw	a0,0(sp)
	sw	a1,4(sp)
	sw	a2,24(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L501
	li	s1,0
.L481:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gedf2
	li	s0,0
	blt	a0,zero,.L499
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,8(sp)
	sw	a5,12(sp)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,16(sp)
	sw	a5,20(sp)
	j	.L483
.L501:
	li	a3,-2147483648
	xor	a5,s1,a3
	sw	s0,0(sp)
	sw	a5,4(sp)
	li	s1,1
	j	.L481
.L485:
	addi	s0,s0,1
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__muldf3
	sw	a0,0(sp)
	sw	a1,4(sp)
.L483:
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gedf2
	bge	a0,zero,.L485
.L486:
	lw	a5,24(sp)
	sw	s0,0(a5)
	beq	s1,zero,.L490
	lw	a1,0(sp)
	lw	a2,4(sp)
	li	a3,-2147483648
	xor	a5,a2,a3
	sw	a1,0(sp)
	sw	a5,4(sp)
.L490:
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,36(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L499:
	.cfi_restore_state
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	li	s0,0
	bge	a0,zero,.L486
	li	a2,0
	li	a3,0
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__nedf2
	li	s0,0
	beq	a0,zero,.L486
	li	s0,0
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,8(sp)
	sw	a5,12(sp)
	j	.L488
.L489:
	addi	s0,s0,-1
	lw	a0,0(sp)
	lw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__adddf3
	sw	a0,0(sp)
	sw	a1,4(sp)
.L488:
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
	blt	a0,zero,.L489
	j	.L486
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	li	t1,0
	li	t2,0
	sw	t1,8(sp)
	sw	t2,12(sp)
	j	.L503
.L504:
	srli	t1,a2,31
	slli	s1,a3,1
	or	s1,t1,s1
	slli	s0,a2,1
	mv	a2,s0
	mv	a3,s1
	slli	t1,a1,31
	srli	a4,a0,1
	or	a4,t1,a4
	srli	a5,a1,1
	mv	a0,a4
	mv	a1,a5
.L503:
	or	t1,a0,a1
	beq	t1,zero,.L507
	andi	t1,a0,1
	sw	t1,0(sp)
	sw	zero,4(sp)
	beq	t1,zero,.L504
	lw	t0,8(sp)
	add	t1,t0,a2
	sltu	t0,t1,t0
	sw	t0,16(sp)
	lw	t0,12(sp)
	add	t2,t0,a3
	lw	t0,16(sp)
	add	t2,t0,t2
	sw	t1,8(sp)
	sw	t2,12(sp)
	j	.L504
.L507:
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,28
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
	li	a4,33
	li	a5,1
	j	.L509
.L513:
	slli	a1,a1,1
	slli	a5,a5,1
.L509:
	bgeu	a1,a0,.L519
	addi	a4,a4,-1
	beq	a4,zero,.L517
	bge	a1,zero,.L513
	li	a4,0
	j	.L511
.L519:
	li	a4,0
	j	.L511
.L517:
	li	a4,0
	j	.L511
.L514:
	srli	a5,a5,1
	srli	a1,a1,1
.L511:
	beq	a5,zero,.L520
	bltu	a0,a1,.L514
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L514
.L520:
	bne	a2,zero,.L516
	mv	a0,a4
.L516:
	ret
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	mv	a5,a0
	li	a0,7
	beq	a5,zero,.L522
	slli	a0,a5,8
	call	__clzsi2
	addi	a0,a0,-1
.L522:
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	blt	a1,zero,.L530
.L525:
	or	a4,a0,a1
	li	a5,63
	beq	a4,zero,.L527
	call	__clzdi2
	addi	a5,a0,-1
.L527:
	mv	a0,a5
	lw	ra,0(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L530:
	.cfi_restore_state
	not	a4,a0
	not	a5,a1
	mv	a0,a4
	mv	a1,a5
	j	.L525
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	j	.L532
.L533:
	srli	a5,a5,1
	slli	a1,a1,1
.L532:
	beq	a5,zero,.L535
	andi	a4,a5,1
	beq	a4,zero,.L533
	add	a0,a0,a1
	j	.L533
.L535:
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	srli	t0,a2,3
	andi	a5,a2,-8
	bltu	a0,a1,.L537
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L538
.L537:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,3
	add	t0,t0,a1
	j	.L539
.L540:
	lw	t1,0(a4)
	lw	t2,4(a4)
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a4,a4,8
	addi	a3,a3,8
.L539:
	bne	a4,t0,.L540
	j	.L541
.L542:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L541:
	bgtu	a2,a5,.L542
	ret
.L544:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L538:
	addi	a2,a2,-1
	bne	a2,a3,.L544
	ret
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	srli	t1,a2,1
	bltu	a0,a1,.L547
	add	a5,a1,a2
	li	a3,-1
	bgeu	a5,a0,.L548
.L547:
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
	j	.L549
.L550:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
.L549:
	bne	a5,t1,.L550
	andi	a5,a2,1
	beq	a5,zero,.L546
	addi	a2,a2,-1
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	ret
.L552:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L548:
	addi	a2,a2,-1
	bne	a2,a3,.L552
.L546:
	ret
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	srli	t0,a2,2
	andi	a5,a2,-4
	bltu	a0,a1,.L555
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L556
.L555:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,2
	add	t0,t0,a1
	j	.L557
.L558:
	lw	t1,0(a4)
	sw	t1,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
.L557:
	bne	a4,t0,.L558
	j	.L559
.L560:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L559:
	bgtu	a2,a5,.L560
	ret
.L562:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L556:
	addi	a2,a2,-1
	bne	a2,a3,.L562
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__modsi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatunsidf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatunsisf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatundidf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatundisf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__umodsi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	mv	a4,a0
	li	a0,0
	li	a3,16
	li	a2,15
.L571:
	beq	a0,a3,.L572
	sub	a5,a2,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L572
	addi	a0,a0,1
	j	.L571
.L572:
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	li	a3,16
.L575:
	beq	a0,a3,.L576
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L576
	addi	a0,a0,1
	j	.L575
.L576:
	ret
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
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	call	__gesf2
	bge	a0,zero,.L584
	mv	a0,s0
	call	__fixsfsi
.L581:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L584:
	.cfi_restore_state
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L581
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	li	a3,0
	li	a5,0
	li	a2,16
	j	.L586
.L588:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
.L586:
	bne	a5,a2,.L588
	andi	a0,a3,1
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	mv	a3,a0
	li	a0,0
	li	a5,0
	li	a2,16
	j	.L590
.L592:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
.L590:
	bne	a5,a2,.L592
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	j	.L594
.L595:
	srli	a5,a5,1
	slli	a1,a1,1
.L594:
	beq	a5,zero,.L597
	andi	a4,a5,1
	beq	a4,zero,.L595
	add	a0,a0,a1
	j	.L595
.L597:
	ret
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	bne	a5,zero,.L600
.L599:
	ret
.L601:
	slli	a5,a5,1
	srli	a1,a1,1
.L600:
	beq	a1,zero,.L599
	andi	a4,a1,1
	beq	a4,zero,.L601
	add	a0,a0,a5
	j	.L601
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	li	a4,33
	li	a5,1
	j	.L605
.L609:
	slli	a1,a1,1
	slli	a5,a5,1
.L605:
	bgeu	a1,a0,.L615
	addi	a4,a4,-1
	beq	a4,zero,.L613
	bge	a1,zero,.L609
	li	a4,0
	j	.L607
.L615:
	li	a4,0
	j	.L607
.L613:
	li	a4,0
	j	.L607
.L610:
	srli	a5,a5,1
	srli	a1,a1,1
.L607:
	beq	a5,zero,.L616
	bltu	a0,a1,.L610
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L610
.L616:
	bne	a2,zero,.L612
	mv	a0,a4
.L612:
	ret
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
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__ltsf2
	mv	a5,a0
	li	a0,-1
	blt	a5,zero,.L618
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L618:
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	s0,a2
	mv	s1,a3
	call	__ltdf2
	mv	a5,a0
	li	a0,-1
	blt	a5,zero,.L622
	mv	a2,s0
	mv	a3,s1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	sgt	a0,a0,zero
.L622:
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	srai	t2,a0,31
	mv	a2,a1
	srai	a3,a1,31
	mv	a1,t2
	call	__muldi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	li	a5,0
	mv	a2,a1
	li	a3,0
	mv	a1,a5
	call	__muldi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	li	a2,0
	blt	a1,zero,.L636
.L628:
	li	a5,33
	li	a3,0
	j	.L629
.L636:
	neg	a1,a1
	li	a2,1
	j	.L628
.L630:
	slli	a0,a0,1
	srai	a1,a1,1
.L629:
	beq	a1,zero,.L631
	addi	a5,a5,-1
	andi	a5,a5,0xff
	beq	a5,zero,.L631
	andi	a4,a1,1
	beq	a4,zero,.L630
	add	a3,a3,a0
	j	.L630
.L631:
	mv	a0,a3
	beq	a2,zero,.L633
	neg	a0,a3
.L633:
	ret
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	li	s0,0
	blt	a0,zero,.L642
.L638:
	blt	a1,zero,.L643
.L639:
	li	a2,0
	call	__udivmodsi4
	beq	s0,zero,.L640
	neg	a0,a0
.L640:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L642:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L638
.L643:
	neg	a1,a1
	xori	s0,s0,1
	j	.L639
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	li	s0,0
	blt	a0,zero,.L649
.L645:
	srai	a5,a1,31
	xor	a1,a1,a5
	li	a2,1
	sub	a1,a1,a5
	call	__udivmodsi4
	beq	s0,zero,.L647
	neg	a0,a0
.L647:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L649:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L645
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	li	a4,17
	li	a5,1
.L651:
	bgeu	a1,a0,.L661
	addi	a4,a4,-1
	beq	a4,zero,.L659
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L662
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L651
.L661:
	li	a4,0
	j	.L653
.L659:
	li	a4,0
	j	.L653
.L662:
	li	a4,0
	j	.L653
.L656:
	srli	a5,a5,1
	srli	a1,a1,1
.L653:
	beq	a5,zero,.L663
	bltu	a0,a1,.L656
	sub	a0,a0,a1
	slli	a0,a0,16
	srli	a0,a0,16
	or	a4,a4,a5
	j	.L656
.L663:
	bne	a2,zero,.L658
	mv	a0,a4
.L658:
	ret
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	li	a4,33
	li	a5,1
	j	.L665
.L669:
	slli	a1,a1,1
	slli	a5,a5,1
.L665:
	bgeu	a1,a0,.L675
	addi	a4,a4,-1
	beq	a4,zero,.L673
	bge	a1,zero,.L669
	li	a4,0
	j	.L667
.L675:
	li	a4,0
	j	.L667
.L673:
	li	a4,0
	j	.L667
.L670:
	srli	a5,a5,1
	srli	a1,a1,1
.L667:
	beq	a5,zero,.L676
	bltu	a0,a1,.L670
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L670
.L676:
	bne	a2,zero,.L672
	mv	a0,a4
.L672:
	ret
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	mv	t1,a0
	andi	a3,a2,32
	beq	a3,zero,.L678
	li	a0,0
	addi	a2,a2,-32
	sll	a1,t1,a2
	ret
.L678:
	beq	a2,zero,.L680
	sll	a0,a0,a2
	sll	a3,a1,a2
	li	a5,32
	sub	a5,a5,a2
	srl	a4,t1,a5
	or	a1,a4,a3
.L680:
	ret
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	mv	t2,a1
	andi	a3,a2,32
	beq	a3,zero,.L683
	srai	a1,a1,31
	addi	a2,a2,-32
	sra	a0,t2,a2
	ret
.L683:
	beq	a2,zero,.L685
	sra	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a4,a0,a2
	or	a0,a5,a4
.L685:
	ret
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	srli	a5,a1,24
	sw	a5,8(sp)
	sw	zero,12(sp)
	srli	a4,a1,8
	li	t1,65536
	addi	t1,t1,-256
	and	a5,a4,t1
	sw	a5,16(sp)
	sw	zero,20(sp)
	slli	s0,a1,8
	srli	a4,a0,24
	or	a4,s0,a4
	li	t0,16711680
	and	a5,a4,t0
	sw	a5,24(sp)
	sw	zero,28(sp)
	slli	t2,a1,24
	srli	a2,a0,8
	or	a2,t2,a2
	li	a5,-16777216
	and	a5,a2,a5
	sw	a5,32(sp)
	sw	zero,36(sp)
	srli	a5,a0,24
	or	a5,a5,s0
	sw	a5,4(sp)
	slli	a5,a0,8
	sw	a5,0(sp)
	li	a4,0
	sw	a4,40(sp)
	lw	a5,4(sp)
	andi	a5,a5,255
	sw	a5,44(sp)
	slli	a4,a0,24
	li	s0,0
	and	s1,a2,t1
	lw	a1,0(sp)
	li	a2,0
	and	a3,a1,t0
	mv	t2,a4
	lw	a0,8(sp)
	lw	t1,16(sp)
	or	a4,a0,t1
	lw	t1,24(sp)
	or	a0,a4,t1
	lw	t1,32(sp)
	or	a4,a0,t1
	lw	t1,40(sp)
	or	a0,a4,t1
	lw	t1,44(sp)
	or	a1,t2,t1
	or	a4,a0,s0
	or	a5,a1,s1
	or	a0,a4,a2
	or	a1,a5,a3
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,56
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
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	li	s0,65536
	sltu	s0,a0,s0
	slli	s0,s0,4
	li	a5,16
	sub	a5,a5,s0
	srl	a0,a0,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a0,a5
	seqz	a5,a5
	slli	a5,a5,3
	li	a4,8
	sub	a4,a4,a5
	srl	a0,a0,a4
	add	s0,s0,a5
	andi	a5,a0,240
	seqz	a5,a5
	slli	a5,a5,2
	li	a4,4
	sub	a4,a4,a5
	srl	a0,a0,a4
	add	s0,s0,a5
	andi	a5,a0,12
	seqz	a5,a5
	slli	a5,a5,1
	li	a1,2
	sub	a4,a1,a5
	srl	a0,a0,a4
	add	s0,s0,a5
	and	a5,a0,a1
	sub	a1,a1,a0
	seqz	a0,a5
	call	__mulsi3
	add	a0,s0,a0
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	mv	a4,a0
	li	a0,0
	bgt	a3,a1,.L699
	li	a0,2
	blt	a3,a1,.L699
	li	a0,0
	bgtu	a2,a4,.L699
	sltu	a0,a2,a4
	addi	a0,a0,1
.L699:
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__cmpdi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	mv	t2,a1
	andi	a3,a2,32
	beq	a3,zero,.L715
	li	a1,0
	addi	a2,a2,-32
	srl	a0,t2,a2
	ret
.L715:
	beq	a2,zero,.L717
	srl	a1,a1,a2
	li	a3,32
	sub	a3,a3,a2
	sll	a5,t2,a3
	srl	a4,a0,a2
	or	a0,a5,a4
.L717:
	ret
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,16(sp)
	lhu	s1,16(sp)
	sw	a1,20(sp)
	lhu	a5,20(sp)
	sw	a5,8(sp)
	mv	a1,a5
	mv	a0,s1
	call	__mulsi3
	li	a5,0
	sw	a5,4(sp)
	srli	s0,a0,16
	slli	a4,a0,16
	srli	a4,a4,16
	sw	a4,12(sp)
	sw	a4,0(sp)
	lw	a3,16(sp)
	srli	a3,a3,16
	lw	a1,8(sp)
	sw	a3,8(sp)
	mv	a0,a3
	call	__mulsi3
	add	s0,s0,a0
	slli	a5,s0,16
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,0(sp)
	srli	a5,s0,16
	sw	a5,4(sp)
	lw	t1,0(sp)
	srli	s0,t1,16
	slli	a5,t1,16
	srli	a5,a5,16
	sw	a5,12(sp)
	sw	a5,0(sp)
	lw	a2,20(sp)
	srli	a2,a2,16
	sw	a2,16(sp)
	mv	a1,a2
	mv	a0,s1
	call	__mulsi3
	add	s0,s0,a0
	slli	a5,s0,16
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,0(sp)
	srli	s0,s0,16
	lw	a5,4(sp)
	add	s0,s0,a5
	sw	s0,4(sp)
	lw	a1,16(sp)
	lw	a0,8(sp)
	call	__mulsi3
	add	a5,a0,s0
	sw	a5,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	s1,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	a5,a1
	sw	a2,8(sp)
	sw	a3,12(sp)
	lw	a1,8(sp)
	sw	a0,0(sp)
	sw	a5,4(sp)
	lw	a0,0(sp)
	call	__muldsi3
	sw	a0,16(sp)
	sw	a1,20(sp)
	mv	s0,a0
	lw	a1,8(sp)
	lw	a0,4(sp)
	call	__mulsi3
	sw	a0,24(sp)
	lw	a1,0(sp)
	lw	a0,12(sp)
	call	__mulsi3
	lw	a5,24(sp)
	add	a0,a5,a0
	lw	a5,20(sp)
	add	s1,a0,a5
	mv	a0,s0
	mv	a1,s1
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
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	mv	a2,a0
	mv	a3,a1
	neg	a0,a2
	snez	a4,a0
	neg	a1,a3
	sub	a1,a1,a4
	ret
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
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
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	slli	a3,a1,31
	srli	a4,a0,1
	or	a4,a3,a4
	srli	a5,a1,1
	li	t1,1431654400
	addi	t1,t1,1365
	and	s0,a4,t1
	and	s1,a5,t1
	sub	a4,a0,s0
	sgtu	a2,a4,a0
	sub	a5,a1,s1
	sub	a5,a5,a2
	slli	a3,a5,30
	srli	a0,a4,2
	or	a0,a3,a0
	srli	a1,a5,2
	li	t1,858992640
	addi	t1,t1,819
	and	a3,a0,t1
	sw	a3,0(sp)
	and	a3,a1,t1
	sw	a3,4(sp)
	and	a0,a4,t1
	and	a1,a5,t1
	lw	a3,0(sp)
	lw	a4,4(sp)
	add	s0,a3,a0
	sltu	a2,s0,a3
	add	s1,a4,a1
	add	s1,a2,s1
	slli	a3,s1,28
	srli	t1,s0,4
	or	t1,a3,t1
	srli	t2,s1,4
	add	a2,t1,s0
	sltu	a4,a2,t1
	add	a3,t2,s1
	add	a3,a4,a3
	li	a5,252645376
	addi	a5,a5,-241
	and	a0,a2,a5
	and	a1,a3,a5
	add	a4,a1,a0
	srli	a5,a4,16
	add	a4,a4,a5
	srli	a0,a4,8
	add	a0,a0,a4
	andi	a0,a0,127
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,16
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
	ret
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	s0,a2
	srli	s1,a2,31
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,8(sp)
	sw	a5,12(sp)
	j	.L729
.L727:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L728
	lw	a0,0(sp)
	lw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__muldf3
	sw	a0,0(sp)
	sw	a1,4(sp)
.L729:
	andi	a5,s0,1
	beq	a5,zero,.L727
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	sw	a0,8(sp)
	sw	a1,12(sp)
	j	.L727
.L728:
	lw	a2,8(sp)
	lw	a3,12(sp)
	mv	a0,a2
	mv	a1,a3
	beq	s1,zero,.L730
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
.L730:
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
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	srli	a5,a1,31
	sw	a5,4(sp)
	lui	a5,%hi(.LC15)
	lw	a5,%lo(.LC15)(a5)
	sw	a5,0(sp)
	j	.L735
.L733:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L734
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L735:
	andi	a5,s0,1
	beq	a5,zero,.L733
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L733
.L734:
	lw	a1,0(sp)
	mv	a0,a1
	lw	a5,4(sp)
	beq	a5,zero,.L736
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
.L736:
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
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
	mv	a4,a0
	li	a0,0
	bgtu	a3,a1,.L739
	li	a0,2
	bltu	a3,a1,.L739
	li	a0,0
	bgtu	a2,a4,.L739
	sltu	a0,a2,a4
	addi	a0,a0,1
.L739:
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__ucmpdi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
