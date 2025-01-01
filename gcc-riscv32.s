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
	beq	a2,zero,.L63
	addi	a2,a2,-1
	add	a5,a0,a2
.L60:
	lbu	a4,0(a0)
	beq	a4,zero,.L61
	lbu	a4,0(a1)
	beq	a4,zero,.L61
	beq	a0,a5,.L61
	lbu	a3,0(a0)
	bne	a3,a4,.L61
	addi	a0,a0,1
	addi	a1,a1,1
	j	.L60
.L61:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	ret
.L63:
	li	a0,0
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
	li	a5,32
	beq	a0,a5,.L71
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L71:
	li	a0,1
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
	li	a5,31
	bleu	a0,a5,.L75
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L75:
	li	a0,1
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
	li	a5,32
	beq	a0,a5,.L83
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L83:
	li	a0,1
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
	bleu	a0,a4,.L88
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L87
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L87
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L88:
	li	a0,1
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
	addi	a4,a0,-48
	li	a5,9
	bleu	a4,a5,.L104
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L104:
	li	a0,1
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
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a2
	mv	s0,a3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L110
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	bne	a0,zero,.L111
	sw	s1,32(sp)
	sw	s0,36(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a5,0(sp)
	sw	a5,40(sp)
	lw	a4,4(sp)
	sw	a4,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	call	__gtdf2
	ble	a0,zero,.L114
	sw	s1,48(sp)
	sw	s0,52(sp)
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a5,0(sp)
	sw	a5,56(sp)
	lw	a4,4(sp)
	sw	a4,60(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	call	__subdf3
.L108:
	sw	a0,8(sp)
	sw	a1,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L110:
	.cfi_restore_state
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L108
.L111:
	mv	a0,s1
	mv	a1,s0
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
	bne	a0,zero,.L119
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L120
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L123
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
.L117:
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
.L119:
	.cfi_restore_state
	mv	a0,s0
	j	.L117
.L120:
	mv	a0,s1
	j	.L117
.L123:
	mv	a0,zero
	j	.L117
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,28(sp)
	mv	s0,a1
	sw	a2,0(sp)
	mv	s1,a3
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L129
	lw	a1,0(sp)
	sw	a1,12(sp)
	sw	s1,16(sp)
	lw	a2,12(sp)
	lw	a3,16(sp)
	sw	a1,20(sp)
	sw	s1,24(sp)
	lw	a0,20(sp)
	lw	a1,24(sp)
	call	__unorddf2
	bne	a0,zero,.L130
	li	a5,-2147483648
	and	a4,s0,a5
	and	a5,s1,a5
	beq	a4,a5,.L127
	bge	s0,zero,.L131
	lw	a5,0(sp)
	mv	s0,s1
.L126:
	sw	a5,4(sp)
	sw	s0,8(sp)
	lw	a0,4(sp)
	lw	a1,8(sp)
	lw	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
.L127:
	.cfi_restore_state
	lw	a4,0(sp)
	sw	a4,32(sp)
	sw	s1,36(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,28(sp)
	sw	a4,40(sp)
	sw	s0,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	call	__ltdf2
	bge	a0,zero,.L134
	lw	a5,0(sp)
	mv	s0,s1
	j	.L126
.L129:
	lw	a5,0(sp)
	mv	s0,s1
	j	.L126
.L130:
	lw	a5,28(sp)
	j	.L126
.L131:
	lw	a5,28(sp)
	j	.L126
.L134:
	lw	a5,28(sp)
	j	.L126
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
	bne	a0,zero,.L140
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L141
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L138
	mv	a0,s1
	bge	s1,zero,.L137
	mv	a0,s0
.L137:
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
.L138:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,a0
	mv	a0,s0
	blt	a5,zero,.L137
	mv	a0,s1
	j	.L137
.L140:
	mv	a0,s0
	j	.L137
.L141:
	mv	a0,s1
	j	.L137
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
	sw	s1,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lw	a5,0(a1)
	sw	a5,16(sp)
	lw	a4,4(a1)
	sw	a4,20(sp)
	lw	a3,8(a1)
	sw	a3,24(sp)
	lw	s1,12(a1)
	lw	a1,0(a2)
	sw	a1,4(sp)
	lw	a1,4(a2)
	sw	a1,8(sp)
	lw	a1,8(a2)
	sw	a1,12(sp)
	lw	a2,12(a2)
	sw	a2,0(sp)
	sw	a5,44(sp)
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	s1,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L166
	lw	a5,4(sp)
	sw	a5,44(sp)
	lw	a4,8(sp)
	sw	a4,48(sp)
	lw	a3,12(sp)
	sw	a3,52(sp)
	lw	a2,0(sp)
	sw	a2,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	a2,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L167
	li	a5,-2147483648
	and	a4,s1,a5
	lw	a2,0(sp)
	and	a5,a2,a5
	beq	a4,a5,.L153
	bge	s1,zero,.L157
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	mv	s1,a2
.L154:
	sw	a3,0(s0)
	sw	a4,4(s0)
	sw	a5,8(s0)
	sw	s1,12(s0)
.L147:
	mv	a0,s0
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L166:
	.cfi_restore_state
	lw	a5,4(sp)
	sw	a5,0(s0)
	lw	a5,8(sp)
	sw	a5,4(s0)
	lw	a5,12(sp)
	sw	a5,8(s0)
	lw	a5,0(sp)
	sw	a5,12(s0)
	j	.L147
.L167:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L147
.L157:
	lw	a3,16(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	j	.L154
.L153:
	lw	a5,16(sp)
	sw	a5,44(sp)
	lw	a5,20(sp)
	sw	a5,48(sp)
	lw	a5,24(sp)
	sw	a5,52(sp)
	sw	s1,56(sp)
	lw	a5,4(sp)
	sw	a5,28(sp)
	lw	a4,8(sp)
	sw	a4,32(sp)
	lw	a2,12(sp)
	sw	a2,36(sp)
	lw	a1,0(sp)
	sw	a1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	bge	a0,zero,.L164
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	s1,0(sp)
.L155:
	sw	a3,0(s0)
	sw	a4,4(s0)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L147
.L164:
	lw	a3,16(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	j	.L155
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a1
	sw	a2,12(sp)
	mv	s0,a3
	mv	a2,a0
	mv	a3,a1
	sw	a0,8(sp)
	call	__unorddf2
	bne	a0,zero,.L172
	lw	a1,12(sp)
	sw	a1,16(sp)
	sw	s0,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	a1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	bne	a0,zero,.L173
	li	a5,-2147483648
	and	a4,s1,a5
	and	a5,s0,a5
	beq	a4,a5,.L170
	bge	s1,zero,.L174
	lw	a5,8(sp)
	mv	s0,s1
.L169:
	sw	a5,0(sp)
	sw	s0,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
.L170:
	.cfi_restore_state
	lw	a4,12(sp)
	sw	a4,32(sp)
	sw	s0,36(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,8(sp)
	sw	a4,40(sp)
	sw	s1,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	call	__ltdf2
	bge	a0,zero,.L177
	lw	a5,8(sp)
	mv	s0,s1
	j	.L169
.L172:
	lw	a5,12(sp)
	j	.L169
.L173:
	lw	a5,8(sp)
	mv	s0,s1
	j	.L169
.L174:
	lw	a5,12(sp)
	j	.L169
.L177:
	lw	a5,12(sp)
	j	.L169
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
	bne	a0,zero,.L183
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L184
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L181
	mv	a0,s0
	bge	s1,zero,.L180
	mv	a0,s1
.L180:
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
.L181:
	.cfi_restore_state
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,a0
	mv	a0,s1
	blt	a5,zero,.L180
	mv	a0,s0
	j	.L180
.L183:
	mv	a0,s0
	j	.L180
.L184:
	mv	a0,s1
	j	.L180
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
	sw	s1,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lw	a5,0(a1)
	sw	a5,16(sp)
	lw	a4,4(a1)
	sw	a4,20(sp)
	lw	a3,8(a1)
	sw	a3,24(sp)
	lw	s1,12(a1)
	lw	a1,0(a2)
	sw	a1,4(sp)
	lw	a1,4(a2)
	sw	a1,8(sp)
	lw	a1,8(a2)
	sw	a1,12(sp)
	lw	a2,12(a2)
	sw	a2,0(sp)
	sw	a5,44(sp)
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	s1,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L209
	lw	a5,4(sp)
	sw	a5,44(sp)
	lw	a4,8(sp)
	sw	a4,48(sp)
	lw	a3,12(sp)
	sw	a3,52(sp)
	lw	a2,0(sp)
	sw	a2,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	a2,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L210
	li	a5,-2147483648
	and	a4,s1,a5
	lw	a3,0(sp)
	and	a5,a3,a5
	beq	a4,a5,.L196
	bge	s1,zero,.L200
	lw	a3,16(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
.L197:
	sw	a3,0(s0)
	sw	a4,4(s0)
	sw	a5,8(s0)
	sw	s1,12(s0)
.L190:
	mv	a0,s0
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L209:
	.cfi_restore_state
	lw	a5,4(sp)
	sw	a5,0(s0)
	lw	a5,8(sp)
	sw	a5,4(s0)
	lw	a5,12(sp)
	sw	a5,8(s0)
	lw	a5,0(sp)
	sw	a5,12(s0)
	j	.L190
.L210:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L190
.L200:
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	s1,0(sp)
	j	.L197
.L196:
	lw	a5,16(sp)
	sw	a5,44(sp)
	lw	a4,20(sp)
	sw	a4,48(sp)
	lw	a1,24(sp)
	sw	a1,52(sp)
	sw	s1,56(sp)
	lw	a0,4(sp)
	sw	a0,28(sp)
	lw	a0,8(sp)
	sw	a0,32(sp)
	lw	a0,12(sp)
	sw	a0,36(sp)
	lw	a0,0(sp)
	sw	a0,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	bge	a0,zero,.L207
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a4,24(sp)
	mv	a5,s1
.L198:
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	j	.L190
.L207:
	lw	a2,4(sp)
	lw	a3,8(sp)
	lw	a4,12(sp)
	lw	a5,0(sp)
	j	.L198
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
	j	.L212
.L213:
	andi	a3,a0,63
	addi	a5,a2,%lo(digits)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
.L212:
	bne	a0,zero,.L213
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
	addi	a0,a0,-1
	lui	a5,%hi(seed)
	sw	a0,%lo(seed)(a5)
	sw	zero,%lo(seed+4)(a5)
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
	addi	a5,a0,1
	sltu	a0,a5,a0
	add	a0,a0,a1
	sw	a5,%lo(seed)(s0)
	sw	a0,%lo(seed+4)(s0)
	srli	a0,a0,1
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
	beq	a1,zero,.L220
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L217
	sw	a0,4(a5)
.L217:
	ret
.L220:
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
	beq	a5,zero,.L222
	lw	a4,4(a0)
	sw	a4,4(a5)
.L222:
	lw	a5,4(a0)
	beq	a5,zero,.L221
	lw	a4,0(a0)
	sw	a4,0(a5)
.L221:
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
	j	.L225
.L226:
	addi	s0,s0,1
.L225:
	lw	a5,0(sp)
	beq	s0,a5,.L230
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	lw	a5,4(sp)
	add	s1,s1,a5
	bne	a0,zero,.L226
	mv	a1,a5
	mv	a0,s0
	call	__mulsi3
	lw	a5,16(sp)
	add	a0,a5,a0
	j	.L227
.L230:
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
.L227:
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
	j	.L232
.L233:
	addi	s0,s0,1
.L232:
	lw	a5,0(sp)
	beq	s0,a5,.L237
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	lw	a5,4(sp)
	add	s1,s1,a5
	bne	a0,zero,.L233
	mv	a1,a5
	mv	a0,s0
	call	__mulsi3
	lw	a5,16(sp)
	add	a0,a5,a0
	j	.L234
.L237:
	li	a0,0
.L234:
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
	j	.L252
.L253:
	addi	s0,s0,1
.L252:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L253
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L259
	li	a4,45
	li	a2,0
	bne	a5,a4,.L255
	li	a2,1
.L254:
	addi	s0,s0,1
.L255:
	li	a5,0
	li	a3,9
	j	.L256
.L259:
	li	a2,0
	j	.L254
.L257:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addi	a5,a5,-48
	sub	a5,a4,a5
.L256:
	lbu	a4,0(s0)
	addi	a4,a4,-48
	bleu	a4,a3,.L257
	mv	a0,a5
	bne	a2,zero,.L258
	neg	a0,a5
.L258:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	j	.L264
.L265:
	addi	s0,s0,1
.L264:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L265
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L271
	li	a4,45
	li	a2,0
	bne	a5,a4,.L267
	li	a2,1
.L266:
	addi	s0,s0,1
.L267:
	li	a0,0
	li	a1,0
	li	a3,9
	j	.L268
.L271:
	li	a2,0
	j	.L266
.L269:
	srli	a5,a0,30
	slli	t1,a1,2
	or	t1,a5,t1
	slli	a5,a0,2
	add	a4,a5,a0
	sltu	a5,a4,a5
	add	t1,t1,a1
	add	a5,a5,t1
	srli	a1,a4,31
	slli	a5,a5,1
	or	a5,a1,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a0,-1(s0)
	addi	a0,a0,-48
	srai	a1,a0,31
	sub	a0,a4,a0
	sgtu	a4,a0,a4
	sub	a5,a5,a1
	sub	a1,a5,a4
.L268:
	lbu	a5,0(s0)
	addi	a5,a5,-48
	bleu	a5,a3,.L269
	bne	a2,zero,.L270
	snez	a5,a0
	neg	a1,a1
	neg	a0,a0
	sub	a1,a1,a5
.L270:
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	j	.L276
.L284:
	srli	s0,s0,1
.L276:
	beq	s0,zero,.L283
	lw	a1,4(sp)
	srli	a0,s0,1
	call	__mulsi3
	lw	a5,0(sp)
	add	s1,a5,a0
	mv	a1,s1
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	blt	a0,zero,.L284
	ble	a0,zero,.L281
	lw	a5,4(sp)
	add	a5,s1,a5
	sw	a5,0(sp)
	srli	a5,s0,1
	addi	s0,s0,-1
	sub	s0,s0,a5
	j	.L276
.L283:
	li	a0,0
.L279:
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
.L281:
	.cfi_restore_state
	mv	a0,s1
	j	.L279
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
	j	.L286
.L288:
	srai	s0,s0,1
.L286:
	beq	s0,zero,.L292
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
	beq	a0,zero,.L290
	ble	a0,zero,.L288
	lw	a5,4(sp)
	add	a5,s1,a5
	sw	a5,0(sp)
	addi	s0,s0,-1
	j	.L288
.L292:
	li	a0,0
.L287:
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
.L290:
	.cfi_restore_state
	mv	a0,s1
	j	.L287
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
	mv	a1,a0
	lw	a0,0(sp)
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
	srai	a4,a1,31
	xor	a5,a4,a0
	xor	a1,a4,a1
	sub	a0,a5,a4
	sgtu	a5,a0,a5
	sub	a1,a1,a4
	sub	a1,a1,a5
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
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a5,a2
	sw	a3,4(sp)
	mv	a2,a3
	sw	a4,8(sp)
	mv	a3,a4
	mv	a0,a1
	sw	a5,0(sp)
	mv	a1,a5
	call	__divdi3
	sw	a0,12(sp)
	sw	a1,16(sp)
	lw	a2,4(sp)
	lw	a3,8(sp)
	mv	a0,s1
	lw	a1,0(sp)
	call	__moddi3
	lw	a5,12(sp)
	sw	a5,0(s0)
	lw	a5,16(sp)
	sw	a5,4(s0)
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
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
	mv	a1,a0
	lw	a0,0(sp)
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
	srai	a4,a1,31
	xor	a5,a4,a0
	xor	a1,a4,a1
	sub	a0,a5,a4
	sgtu	a5,a0,a5
	sub	a1,a1,a4
	sub	a1,a1,a5
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
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a5,a2
	sw	a3,4(sp)
	mv	a2,a3
	sw	a4,8(sp)
	mv	a3,a4
	mv	a0,a1
	sw	a5,0(sp)
	mv	a1,a5
	call	__divdi3
	sw	a0,12(sp)
	sw	a1,16(sp)
	lw	a2,4(sp)
	lw	a3,8(sp)
	mv	a0,s1
	lw	a1,0(sp)
	call	__moddi3
	lw	a5,12(sp)
	sw	a5,0(s0)
	lw	a5,16(sp)
	sw	a5,4(s0)
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
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
.LFE56:
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L305
.L307:
	addi	a0,a0,4
.L305:
	lw	a5,0(a0)
	beq	a5,zero,.L306
	bne	a1,a5,.L307
.L306:
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
	j	.L311
.L313:
	addi	a5,a5,4
	addi	a1,a1,4
.L311:
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L312
	beq	a3,zero,.L312
	lw	a4,0(a1)
	bne	a4,zero,.L313
.L312:
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L314
	sgt	a0,a3,a4
.L314:
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
.L317:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L317
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
	j	.L320
.L321:
	addi	a5,a5,4
.L320:
	lw	a4,0(a5)
	bne	a4,zero,.L321
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
.L323:
	beq	a2,zero,.L324
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L324
	beq	a3,zero,.L324
	lw	a4,0(a1)
	beq	a4,zero,.L324
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
	j	.L323
.L324:
	li	a0,0
	beq	a2,zero,.L326
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L326
	sgt	a0,a3,a4
.L326:
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
	j	.L330
.L332:
	addi	a2,a2,-1
	addi	a0,a0,4
.L330:
	beq	a2,zero,.L331
	lw	a5,0(a0)
	bne	a1,a5,.L332
.L331:
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
	j	.L336
.L338:
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
.L336:
	beq	a2,zero,.L337
	lw	a3,0(a5)
	lw	a4,0(a1)
	beq	a3,a4,.L338
.L337:
	li	a0,0
	beq	a2,zero,.L339
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L339
	sgt	a0,a3,a4
.L339:
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
	j	.L343
.L344:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L343:
	addi	a2,a2,-1
	bne	a2,a3,.L344
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
	beq	a0,a1,.L346
	sub	a5,a0,a1
	slli	a4,a2,2
	bgeu	a5,a4,.L351
	add	a1,a1,a4
	add	a5,a0,a4
	addi	a3,a0,-4
	j	.L348
.L349:
	lw	a4,0(a1)
	sw	a4,0(a5)
.L348:
	addi	a1,a1,-4
	addi	a5,a5,-4
	bne	a5,a3,.L349
	ret
.L350:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L347:
	addi	a2,a2,-1
	bne	a2,a3,.L350
.L346:
	ret
.L351:
	mv	a5,a0
	li	a3,-1
	j	.L347
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
	j	.L353
.L354:
	addi	a5,a5,4
	sw	a1,-4(a5)
.L353:
	addi	a2,a2,-1
	bne	a2,a4,.L354
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
	bgeu	a0,a1,.L356
	add	a5,a0,a2
	add	a1,a1,a2
	j	.L357
.L358:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
.L357:
	bne	a5,a0,.L358
	ret
.L356:
	beq	a0,a1,.L355
	add	a2,a1,a2
	mv	a5,a0
	j	.L360
.L361:
	addi	a5,a5,1
	addi	a1,a1,1
	lbu	a4,-1(a5)
	sb	a4,-1(a1)
.L360:
	bne	a1,a2,.L361
.L355:
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
	addi	a4,a2,-32
	blt	a4,zero,.L363
	sll	a4,a0,a4
	li	a3,0
.L364:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L365
	srl	a0,a1,a5
	li	a1,0
.L366:
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L363:
	srli	a5,a0,1
	li	a4,31
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a4,a1,a2
	or	a4,a5,a4
	sll	a3,a0,a2
	j	.L364
.L365:
	slli	a5,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a5,a5,t1
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
	j	.L366
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	a4,a2,-32
	blt	a4,zero,.L368
	srl	a4,a1,a4
	li	a3,0
.L369:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L370
	sll	a1,a0,a5
	li	a0,0
.L371:
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L368:
	slli	a5,a1,1
	li	a4,31
	sub	a4,a4,a2
	sll	a5,a5,a4
	srl	a4,a0,a2
	or	a4,a5,a4
	srl	a3,a1,a2
	j	.L369
.L370:
	srli	a5,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a5,a5,t1
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
	j	.L371
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
	mv	a5,a0
	srli	a4,a1,24
	li	a3,16711680
	and	a0,a1,a3
	srli	a0,a0,8
	or	a0,a0,a4
	li	a4,65536
	addi	a4,a4,-256
	and	a2,a1,a4
	slli	a2,a2,8
	or	a0,a0,a2
	slli	a2,a1,24
	srli	a1,a5,24
	and	a3,a5,a3
	srli	a3,a3,8
	or	a1,a1,a3
	and	a4,a5,a4
	slli	a4,a4,8
	or	a1,a1,a4
	slli	a5,a5,24
	or	a0,a0,a2
	or	a1,a1,a5
	ret
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
.L384:
	beq	a5,a3,.L388
	srl	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L389
	addi	a5,a5,1
	j	.L384
.L389:
	addi	a0,a5,1
	ret
.L388:
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
	li	a5,1
	bne	a0,zero,.L392
	li	a0,0
	ret
.L393:
	srai	a0,a0,1
	addi	a5,a5,1
.L392:
	andi	a4,a0,1
	beq	a4,zero,.L393
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
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	call	__ltsf2
	blt	a0,zero,.L398
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L396:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L398:
	.cfi_restore_state
	li	a0,1
	j	.L396
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	.cfi_offset 1, -4
	sw	a0,0(sp)
	sw	a1,4(sp)
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__ltdf2
	blt	a0,zero,.L405
	sw	s0,12(sp)
	sw	s1,8(sp)
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,0(sp)
	lw	s1,4(sp)
	mv	a0,s0
	mv	a1,s1
	call	__gtdf2
	sgt	a0,a0,zero
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
.L403:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L405:
	.cfi_restore_state
	li	a0,1
	j	.L403
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
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,0(a0)
	lw	s0,4(a0)
	lw	a2,8(a0)
	lw	a1,12(a0)
	lui	a5,%hi(.LC5)
	lw	a3,%lo(.LC5+4)(a5)
	lw	a4,%lo(.LC5+8)(a5)
	lw	a5,%lo(.LC5+12)(a5)
	sw	s1,24(sp)
	sw	s0,28(sp)
	sw	a2,0(sp)
	sw	a2,32(sp)
	sw	a1,4(sp)
	sw	a1,36(sp)
	li	a2,-1
	sw	a2,8(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	addi	a1,sp,8
	addi	a0,sp,24
	call	__lttf2
	blt	a0,zero,.L412
	lui	a5,%hi(.LC6)
	lw	a3,%lo(.LC6+4)(a5)
	lw	a4,%lo(.LC6+8)(a5)
	lw	a5,%lo(.LC6+12)(a5)
	sw	a3,12(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	addi	a1,sp,8
	addi	a0,sp,24
	call	__gttf2
	sgt	a0,a0,zero
.L410:
	lw	ra,48(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
	.cfi_def_cfa_offset 0
	jr	ra
.L412:
	.cfi_restore_state
	li	a0,1
	j	.L410
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
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	lw	a5,12(sp)
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
	bne	a0,zero,.L419
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,a0
	mv	a0,s1
	call	__nesf2
	beq	a0,zero,.L419
	blt	s0,zero,.L427
	lui	a5,%hi(.LC8)
	lw	s1,%lo(.LC8)(a5)
	j	.L423
.L427:
	lui	a5,%hi(.LC7)
	lw	s1,%lo(.LC7)(a5)
	j	.L423
.L422:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L419
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L423:
	andi	a5,s0,1
	beq	a5,zero,.L422
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L422
.L419:
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
	addi	sp,sp,-84
	.cfi_def_cfa_offset 84
	sw	ra,80(sp)
	sw	s0,76(sp)
	sw	s1,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	sw	a0,44(sp)
	mv	a3,a1
	mv	s0,a2
	sw	a1,16(sp)
	mv	a2,a0
	call	__unorddf2
	bne	a0,zero,.L429
	sw	s1,20(sp)
	lw	a5,16(sp)
	sw	a5,24(sp)
	lw	a2,20(sp)
	lw	a3,24(sp)
	sw	s1,56(sp)
	sw	a5,60(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	call	__adddf3
	mv	a2,a0
	mv	a3,a1
	sw	s1,64(sp)
	lw	a5,16(sp)
	sw	a5,68(sp)
	lw	a0,64(sp)
	lw	a1,68(sp)
	call	__nedf2
	beq	a0,zero,.L429
	blt	s0,zero,.L437
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	sw	a4,20(sp)
	lw	s1,%lo(.LC10+4)(a5)
	j	.L433
.L437:
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	sw	a4,20(sp)
	lw	s1,%lo(.LC9+4)(a5)
	j	.L433
.L432:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L429
	lw	a5,20(sp)
	sw	a5,0(sp)
	sw	s1,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	a5,8(sp)
	sw	s1,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	sw	a0,20(sp)
	mv	s1,a1
.L433:
	andi	a5,s0,1
	beq	a5,zero,.L432
	lw	a5,20(sp)
	sw	a5,28(sp)
	sw	s1,32(sp)
	lw	a2,28(sp)
	lw	a3,32(sp)
	lw	a5,44(sp)
	sw	a5,36(sp)
	lw	a5,16(sp)
	sw	a5,40(sp)
	lw	a0,36(sp)
	lw	a1,40(sp)
	call	__muldf3
	sw	a0,44(sp)
	sw	a1,16(sp)
	j	.L432
.L429:
	lw	a5,44(sp)
	sw	a5,48(sp)
	lw	a5,16(sp)
	sw	a5,52(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	lw	ra,80(sp)
	.cfi_restore 1
	lw	s0,76(sp)
	.cfi_restore 8
	lw	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,84
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,28(sp)
	lw	a5,0(a1)
	lw	a4,4(a1)
	lw	a3,8(a1)
	lw	a1,12(a1)
	mv	s0,a2
	sw	a5,64(sp)
	sw	a4,68(sp)
	sw	a3,72(sp)
	sw	a1,76(sp)
	sw	a5,0(sp)
	sw	a5,48(sp)
	sw	a4,4(sp)
	sw	a4,52(sp)
	sw	a3,8(sp)
	sw	a3,56(sp)
	sw	a1,12(sp)
	sw	a1,60(sp)
	addi	a1,sp,48
	addi	a0,sp,64
	call	__unordtf2
	bne	a0,zero,.L439
	sw	s1,80(sp)
	.cfi_offset 9, -12
	addi	s1,sp,48
	lw	a5,0(sp)
	lw	a4,4(sp)
	lw	a3,8(sp)
	lw	a2,12(sp)
	sw	a5,32(sp)
	sw	a4,36(sp)
	sw	a3,40(sp)
	sw	a2,44(sp)
	addi	a2,sp,32
	mv	a1,s1
	addi	a0,sp,64
	call	__addtf3
	lw	a2,64(sp)
	lw	a3,68(sp)
	lw	a4,72(sp)
	lw	a5,76(sp)
	lw	a1,0(sp)
	sw	a1,64(sp)
	lw	a1,4(sp)
	sw	a1,68(sp)
	lw	a1,8(sp)
	sw	a1,72(sp)
	lw	a1,12(sp)
	sw	a1,76(sp)
	sw	a2,48(sp)
	sw	a3,52(sp)
	sw	a4,56(sp)
	sw	a5,60(sp)
	mv	a1,s1
	addi	a0,sp,64
	call	__netf2
	beq	a0,zero,.L447
	blt	s0,zero,.L449
	lui	a5,%hi(.LC12)
	sw	zero,16(sp)
	lw	s1,%lo(.LC12+4)(a5)
	lw	a4,%lo(.LC12+8)(a5)
	sw	a4,20(sp)
	lw	a5,%lo(.LC12+12)(a5)
	sw	a5,24(sp)
	j	.L443
.L449:
	lui	a5,%hi(.LC11)
	sw	zero,16(sp)
	lw	s1,%lo(.LC11+4)(a5)
	lw	a4,%lo(.LC11+8)(a5)
	sw	a4,20(sp)
	lw	a5,%lo(.LC11+12)(a5)
	sw	a5,24(sp)
	j	.L443
.L442:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L448
	lw	a5,16(sp)
	sw	a5,48(sp)
	sw	s1,52(sp)
	lw	a4,20(sp)
	sw	a4,56(sp)
	lw	a3,24(sp)
	sw	a3,60(sp)
	sw	a5,32(sp)
	sw	s1,36(sp)
	sw	a4,40(sp)
	sw	a3,44(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	a5,64(sp)
	sw	a5,16(sp)
	lw	s1,68(sp)
	lw	a5,72(sp)
	sw	a5,20(sp)
	lw	a5,76(sp)
	sw	a5,24(sp)
.L443:
	andi	a5,s0,1
	beq	a5,zero,.L442
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
	sw	s1,36(sp)
	lw	a5,20(sp)
	sw	a5,40(sp)
	lw	a5,24(sp)
	sw	a5,44(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	a5,64(sp)
	sw	a5,0(sp)
	lw	a5,68(sp)
	sw	a5,4(sp)
	lw	a5,72(sp)
	sw	a5,8(sp)
	lw	a5,76(sp)
	sw	a5,12(sp)
	j	.L442
.L447:
	lw	s1,80(sp)
	.cfi_restore 9
.L439:
	lw	a5,28(sp)
	lw	a4,0(sp)
	sw	a4,0(a5)
	lw	a4,4(sp)
	sw	a4,4(a5)
	lw	a4,8(sp)
	sw	a4,8(a5)
	lw	a4,12(sp)
	sw	a4,12(a5)
	mv	a0,a5
	lw	ra,88(sp)
	.cfi_restore 1
	lw	s0,84(sp)
	.cfi_restore 8
	addi	sp,sp,92
	.cfi_def_cfa_offset 0
	jr	ra
.L448:
	.cfi_def_cfa_offset 92
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,80(sp)
	.cfi_restore 9
	j	.L439
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
	j	.L451
.L452:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
.L451:
	bne	a5,a2,.L452
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
	j	.L454
.L456:
	addi	s1,s1,1
	addi	a0,a0,1
	addi	s0,s0,-1
.L454:
	beq	s0,zero,.L455
	lbu	a5,0(s1)
	sb	a5,0(a0)
	bne	a5,zero,.L456
.L455:
	bne	s0,zero,.L457
	sb	zero,0(a0)
.L457:
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
.L460:
	beq	a0,a1,.L461
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L462
.L461:
	ret
.L462:
	addi	a0,a0,1
	j	.L460
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L464:
	lbu	a5,0(a0)
	beq	a5,zero,.L470
	mv	a5,a1
.L467:
	lbu	a4,0(a5)
	beq	a4,zero,.L471
	addi	a5,a5,1
	lbu	a3,-1(a5)
	lbu	a4,0(a0)
	bne	a3,a4,.L467
	ret
.L471:
	addi	a0,a0,1
	j	.L464
.L470:
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
	j	.L474
.L473:
	addi	a5,a5,1
	lbu	a4,-1(a5)
	beq	a4,zero,.L477
.L474:
	lbu	a4,0(a5)
	bne	a1,a4,.L473
	mv	a0,a5
	j	.L473
.L477:
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
	sw	a0,4(sp)
	beq	a0,zero,.L482
	lbu	a5,0(s1)
	sw	a5,0(sp)
.L480:
	lw	a1,0(sp)
	mv	a0,s0
	call	strchr
	mv	s0,a0
	beq	a0,zero,.L485
	lw	a2,4(sp)
	mv	a1,s1
	mv	a0,s0
	call	strncmp
	beq	a0,zero,.L483
	addi	s0,s0,1
	j	.L480
.L485:
	li	a0,0
	j	.L479
.L482:
	mv	a0,s0
.L479:
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
.L483:
	.cfi_restore_state
	mv	a0,s0
	j	.L479
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	sw	a2,16(sp)
	sw	a3,20(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L500
.L487:
	li	a2,0
	li	a3,0
	sw	s1,8(sp)
	sw	s0,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	ble	a0,zero,.L490
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,24(sp)
	lw	a5,20(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__ltdf2
	blt	a0,zero,.L489
.L490:
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,48(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
	.cfi_def_cfa_offset 0
	jr	ra
.L500:
	.cfi_restore_state
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	call	__gtdf2
	ble	a0,zero,.L487
.L489:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L490
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
	mv	s0,a0
	sw	a2,0(sp)
	sub	s1,a1,a3
	add	s1,a0,s1
	beq	a3,zero,.L502
	bltu	a1,a3,.L507
	addi	a5,a2,1
	sw	a5,4(sp)
	addi	a5,a3,-1
	sw	a5,8(sp)
	j	.L503
.L504:
	addi	s0,s0,1
.L503:
	bgtu	s0,s1,.L510
	lbu	a4,0(s0)
	lw	a5,0(sp)
	lbu	a5,0(a5)
	bne	a4,a5,.L504
	lw	a2,8(sp)
	lw	a1,4(sp)
	addi	a0,s0,1
	call	memcmp
	bne	a0,zero,.L504
	mv	a0,s0
	j	.L502
.L510:
	li	a0,0
.L502:
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
.L507:
	.cfi_restore_state
	li	a0,0
	j	.L502
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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,0(sp)
	mv	s0,a1
	sw	a2,64(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L535
	sw	zero,60(sp)
.L514:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	lw	a4,0(sp)
	sw	a4,20(sp)
	sw	s0,24(sp)
	lw	a0,20(sp)
	lw	a1,24(sp)
	call	__gedf2
	li	s1,0
	blt	a0,zero,.L532
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,20(sp)
	sw	a5,24(sp)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,28(sp)
	sw	a5,32(sp)
	j	.L516
.L535:
	li	a5,-2147483648
	xor	s0,s0,a5
	li	a5,1
	sw	a5,60(sp)
	j	.L514
.L518:
	addi	s1,s1,1
	lw	a2,28(sp)
	lw	a3,32(sp)
	lw	a5,0(sp)
	sw	a5,12(sp)
	sw	s0,16(sp)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__muldf3
	sw	a0,0(sp)
	mv	s0,a1
.L516:
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a4,0(sp)
	sw	a4,4(sp)
	sw	s0,8(sp)
	lw	a0,4(sp)
	lw	a1,8(sp)
	call	__gedf2
	bge	a0,zero,.L518
.L519:
	lw	a5,64(sp)
	sw	s1,0(a5)
	lw	a5,60(sp)
	beq	a5,zero,.L523
	li	a5,-2147483648
	xor	s0,s0,a5
.L523:
	lw	a4,0(sp)
	sw	a4,36(sp)
	sw	s0,40(sp)
	lw	a0,36(sp)
	lw	a1,40(sp)
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L532:
	.cfi_restore_state
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	lw	s1,0(sp)
	sw	s1,68(sp)
	sw	s0,72(sp)
	lw	a0,68(sp)
	lw	a1,72(sp)
	call	__ltdf2
	bge	a0,zero,.L533
	li	a2,0
	li	a3,0
	sw	s1,76(sp)
	sw	s0,80(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	call	__nedf2
	li	s1,0
	beq	a0,zero,.L519
	li	s1,0
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,4(sp)
	sw	a5,8(sp)
	j	.L521
.L522:
	addi	s1,s1,-1
	lw	a1,0(sp)
	sw	a1,44(sp)
	sw	s0,48(sp)
	lw	a2,44(sp)
	lw	a3,48(sp)
	sw	a1,52(sp)
	sw	s0,56(sp)
	lw	a0,52(sp)
	lw	a1,56(sp)
	call	__adddf3
	sw	a0,0(sp)
	mv	s0,a1
.L521:
	lw	a2,4(sp)
	lw	a3,8(sp)
	lw	a4,0(sp)
	sw	a4,28(sp)
	sw	s0,32(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	call	__ltdf2
	blt	a0,zero,.L522
	j	.L519
.L533:
	li	s1,0
	j	.L519
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mv	a5,a0
	mv	t1,a1
	li	a0,0
	li	a1,0
	j	.L537
.L538:
	srli	a4,a2,31
	slli	a3,a3,1
	or	a3,a4,a3
	slli	a2,a2,1
	slli	a4,t1,31
	srli	a5,a5,1
	or	a5,a4,a5
	srli	t1,t1,1
.L537:
	or	a4,a5,t1
	beq	a4,zero,.L541
	andi	a4,a5,1
	beq	a4,zero,.L538
	add	a4,a0,a2
	sltu	t0,a4,a0
	add	a1,a1,a3
	mv	a0,a4
	add	a1,t0,a1
	j	.L538
.L541:
	ret
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
	j	.L543
.L547:
	slli	a1,a1,1
	slli	a5,a5,1
.L543:
	bgeu	a1,a0,.L553
	addi	a4,a4,-1
	beq	a4,zero,.L551
	bge	a1,zero,.L547
	li	a4,0
	j	.L545
.L553:
	li	a4,0
	j	.L545
.L551:
	li	a4,0
	j	.L545
.L548:
	srli	a5,a5,1
	srli	a1,a1,1
.L545:
	beq	a5,zero,.L554
	bltu	a0,a1,.L548
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L548
.L554:
	bne	a2,zero,.L550
	mv	a0,a4
.L550:
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
	beq	a0,zero,.L557
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	slli	a0,a0,8
	call	__clzsi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L557:
	li	a0,7
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	blt	a1,zero,.L572
.L563:
	or	a4,a0,a1
	li	a5,63
	beq	a4,zero,.L569
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__clzdi2
	addi	a5,a0,-1
	mv	a0,a5
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L572:
	not	a0,a0
	not	a1,a1
	j	.L563
.L569:
	mv	a0,a5
	ret
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
	j	.L574
.L575:
	srli	a5,a5,1
	slli	a1,a1,1
.L574:
	beq	a5,zero,.L577
	andi	a4,a5,1
	beq	a4,zero,.L575
	add	a0,a0,a1
	j	.L575
.L577:
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
	bltu	a0,a1,.L579
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L580
.L579:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,3
	add	t0,t0,a1
	j	.L581
.L582:
	lw	t1,0(a4)
	lw	t2,4(a4)
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a4,a4,8
	addi	a3,a3,8
.L581:
	bne	a4,t0,.L582
	j	.L583
.L584:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L583:
	bgtu	a2,a5,.L584
	ret
.L586:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L580:
	addi	a2,a2,-1
	bne	a2,a3,.L586
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
	bltu	a0,a1,.L589
	add	a5,a1,a2
	li	a3,-1
	bgeu	a5,a0,.L590
.L589:
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
	j	.L591
.L592:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
.L591:
	bne	a5,t1,.L592
	andi	a5,a2,1
	beq	a5,zero,.L588
	addi	a2,a2,-1
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	ret
.L594:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L590:
	addi	a2,a2,-1
	bne	a2,a3,.L594
.L588:
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
	bltu	a0,a1,.L597
	add	a4,a1,a2
	li	a3,-1
	bgeu	a4,a0,.L598
.L597:
	mv	a4,a1
	mv	a3,a0
	slli	t0,t0,2
	add	t0,t0,a1
	j	.L599
.L600:
	lw	t1,0(a4)
	sw	t1,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
.L599:
	bne	a4,t0,.L600
	j	.L601
.L602:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L601:
	bgtu	a2,a5,.L602
	ret
.L604:
	add	a5,a1,a2
	lbu	a4,0(a5)
	add	a5,a0,a2
	sb	a4,0(a5)
.L598:
	addi	a2,a2,-1
	bne	a2,a3,.L604
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
.L619:
	beq	a0,a3,.L620
	sub	a5,a2,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L620
	addi	a0,a0,1
	j	.L619
.L620:
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
.L623:
	beq	a0,a3,.L624
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L624
	addi	a0,a0,1
	j	.L623
.L624:
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
	bge	a0,zero,.L633
	mv	a0,s0
	call	__fixsfsi
.L629:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L633:
	.cfi_restore_state
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L629
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
	j	.L635
.L637:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
.L635:
	bne	a5,a2,.L637
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
	j	.L639
.L641:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
.L639:
	bne	a5,a2,.L641
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
	j	.L643
.L644:
	srli	a5,a5,1
	slli	a1,a1,1
.L643:
	beq	a5,zero,.L646
	andi	a4,a5,1
	beq	a4,zero,.L644
	add	a0,a0,a1
	j	.L644
.L646:
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
	li	a4,0
	bne	a0,zero,.L649
	li	a0,0
	ret
.L650:
	slli	a0,a0,1
	srli	a1,a1,1
.L649:
	beq	a1,zero,.L653
	andi	a5,a1,1
	beq	a5,zero,.L650
	add	a4,a4,a0
	j	.L650
.L653:
	mv	a0,a4
	ret
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
	j	.L655
.L659:
	slli	a1,a1,1
	slli	a5,a5,1
.L655:
	bgeu	a1,a0,.L665
	addi	a4,a4,-1
	beq	a4,zero,.L663
	bge	a1,zero,.L659
	li	a4,0
	j	.L657
.L665:
	li	a4,0
	j	.L657
.L663:
	li	a4,0
	j	.L657
.L660:
	srli	a5,a5,1
	srli	a1,a1,1
.L657:
	beq	a5,zero,.L666
	bltu	a0,a1,.L660
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L660
.L666:
	bne	a2,zero,.L662
	mv	a0,a4
.L662:
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
	blt	a0,zero,.L669
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L668:
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
.L669:
	.cfi_restore_state
	li	a0,-1
	j	.L668
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
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
	sw	a1,20(sp)
	mv	s1,a2
	mv	s0,a3
	call	__ltdf2
	blt	a0,zero,.L674
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a5,16(sp)
	sw	a5,8(sp)
	lw	a5,20(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	sgt	a0,a0,zero
.L673:
	lw	ra,32(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L674:
	.cfi_restore_state
	li	a0,-1
	j	.L673
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
	mv	a2,a1
	srai	a3,a1,31
	srai	a1,a0,31
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
	mv	a2,a1
	li	a3,0
	li	a1,0
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
	blt	a1,zero,.L690
.L682:
	li	a5,33
	li	a3,0
	j	.L683
.L690:
	neg	a1,a1
	li	a2,1
	j	.L682
.L684:
	slli	a0,a0,1
	srai	a1,a1,1
.L683:
	beq	a1,zero,.L685
	addi	a5,a5,-1
	andi	a5,a5,0xff
	beq	a5,zero,.L685
	andi	a4,a1,1
	beq	a4,zero,.L684
	add	a3,a3,a0
	j	.L684
.L685:
	mv	a0,a3
	beq	a2,zero,.L687
	neg	a0,a3
.L687:
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
	blt	a0,zero,.L697
.L692:
	blt	a1,zero,.L698
.L693:
	li	a2,0
	call	__udivmodsi4
	beq	s0,zero,.L694
	neg	a0,a0
.L694:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L697:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L692
.L698:
	neg	a1,a1
	xori	s0,s0,1
	j	.L693
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
	blt	a0,zero,.L705
.L700:
	srai	a5,a1,31
	xor	a1,a1,a5
	li	a2,1
	sub	a1,a1,a5
	call	__udivmodsi4
	beq	s0,zero,.L702
	neg	a0,a0
.L702:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L705:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L700
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
.L707:
	bgeu	a1,a0,.L717
	addi	a4,a4,-1
	beq	a4,zero,.L715
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L718
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L707
.L717:
	li	a4,0
	j	.L709
.L715:
	li	a4,0
	j	.L709
.L718:
	li	a4,0
	j	.L709
.L712:
	srli	a5,a5,1
	srli	a1,a1,1
.L709:
	beq	a5,zero,.L719
	bltu	a0,a1,.L712
	sub	a0,a0,a1
	slli	a0,a0,16
	srli	a0,a0,16
	or	a4,a4,a5
	j	.L712
.L719:
	bne	a2,zero,.L714
	mv	a0,a4
.L714:
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
	j	.L721
.L725:
	slli	a1,a1,1
	slli	a5,a5,1
.L721:
	bgeu	a1,a0,.L731
	addi	a4,a4,-1
	beq	a4,zero,.L729
	bge	a1,zero,.L725
	li	a4,0
	j	.L723
.L731:
	li	a4,0
	j	.L723
.L729:
	li	a4,0
	j	.L723
.L726:
	srli	a5,a5,1
	srli	a1,a1,1
.L723:
	beq	a5,zero,.L732
	bltu	a0,a1,.L726
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L726
.L732:
	bne	a2,zero,.L728
	mv	a0,a4
.L728:
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
	mv	a5,a0
	andi	a4,a2,32
	beq	a4,zero,.L734
	li	a0,0
	addi	a2,a2,-32
	sll	a1,a5,a2
	ret
.L734:
	beq	a2,zero,.L737
	sll	a0,a0,a2
	sll	a1,a1,a2
	li	a4,32
	sub	a4,a4,a2
	srl	a5,a5,a4
	or	a1,a5,a1
	ret
.L737:
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
	andi	a5,a2,32
	beq	a5,zero,.L739
	srai	a4,a1,31
	addi	a2,a2,-32
	sra	a0,a1,a2
.L740:
	mv	a1,a4
.L741:
	ret
.L739:
	beq	a2,zero,.L741
	sra	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L740
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	srli	a3,a1,24
	srli	t2,a1,8
	li	t1,65536
	addi	t1,t1,-256
	and	t2,t2,t1
	slli	a5,a1,8
	srli	a2,a0,24
	or	a2,a5,a2
	li	s0,16711680
	and	a2,a2,s0
	slli	a1,a1,24
	srli	a4,a0,8
	or	a4,a1,a4
	li	a5,-16777216
	and	a4,a4,a5
	slli	t0,a0,8
	srli	s1,a0,24
	srli	a5,a0,8
	or	a1,a5,a1
	slli	a5,a0,24
	and	t1,a1,t1
	and	a1,t0,s0
	or	a0,a3,t2
	or	a0,a0,a2
	or	a5,a5,s1
	or	a5,a5,t1
	or	a0,a0,a4
	or	a1,a5,a1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
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
	li	a5,0
	blt	a1,a3,.L757
	li	a5,2
	bgt	a1,a3,.L757
	li	a5,0
	bltu	a0,a2,.L757
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L757:
	mv	a0,a5
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
	andi	a5,a2,32
	beq	a5,zero,.L774
	li	a4,0
	addi	a2,a2,-32
	srl	a0,a1,a2
.L775:
	mv	a1,a4
.L776:
	ret
.L774:
	beq	a2,zero,.L776
	srl	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L775
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,4(sp)
	lhu	s1,4(sp)
	sw	a1,8(sp)
	lhu	a5,8(sp)
	sw	a5,0(sp)
	mv	a1,a5
	mv	a0,s1
	call	__mulsi3
	srli	s0,a0,16
	slli	a3,a0,16
	srli	a3,a3,16
	sw	a3,12(sp)
	lw	a4,4(sp)
	srli	a4,a4,16
	lw	a1,0(sp)
	sw	a4,0(sp)
	mv	a0,a4
	call	__mulsi3
	add	s0,s0,a0
	srli	a2,s0,16
	sw	a2,16(sp)
	slli	s0,s0,16
	srli	s0,s0,16
	lw	a5,8(sp)
	srli	a5,a5,16
	sw	a5,4(sp)
	mv	a1,a5
	mv	a0,s1
	call	__mulsi3
	add	s0,s0,a0
	slli	a5,s0,16
	lw	a3,12(sp)
	add	s1,a5,a3
	srli	s0,s0,16
	lw	a2,16(sp)
	add	s0,s0,a2
	lw	a1,4(sp)
	lw	a0,0(sp)
	call	__mulsi3
	mv	a1,a0
	mv	a0,s1
	add	a1,a1,s0
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
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	addi	sp,sp,-28
	.cfi_def_cfa_offset 28
	sw	ra,24(sp)
	sw	s0,20(sp)
	sw	s1,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	a1,8(sp)
	mv	s1,a2
	sw	a3,12(sp)
	mv	a1,a2
	call	__muldsi3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a1,s1
	lw	a0,8(sp)
	call	__mulsi3
	mv	s1,a0
	mv	a1,s0
	lw	a0,12(sp)
	call	__mulsi3
	add	a1,s1,a0
	lw	a0,0(sp)
	lw	a5,4(sp)
	add	a1,a1,a5
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
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	snez	a5,a0
	neg	a1,a1
	neg	a0,a0
	sub	a1,a1,a5
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
	xor	a1,a1,a0
	srli	a5,a1,16
	xor	a1,a1,a5
	srli	a5,a1,8
	xor	a1,a1,a5
	srli	a5,a1,4
	xor	a1,a1,a5
	andi	a1,a1,15
	li	a0,28672
	addi	a0,a0,-1642
	sra	a0,a0,a1
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
	slli	a5,a1,31
	srli	a4,a0,1
	or	a4,a5,a4
	srli	a3,a1,1
	li	a5,1431654400
	addi	a5,a5,1365
	and	a4,a4,a5
	and	a5,a3,a5
	sub	a4,a0,a4
	sgtu	a0,a4,a0
	sub	a1,a1,a5
	sub	a1,a1,a0
	slli	a5,a1,30
	srli	a3,a4,2
	or	a3,a5,a3
	srli	a2,a1,2
	li	a5,858992640
	addi	a5,a5,819
	and	a3,a3,a5
	and	a2,a2,a5
	and	a4,a4,a5
	and	a1,a1,a5
	add	a4,a3,a4
	sltu	a3,a4,a3
	add	a5,a2,a1
	add	a3,a3,a5
	slli	a2,a3,28
	srli	a5,a4,4
	or	a5,a2,a5
	srli	a2,a3,4
	add	a4,a5,a4
	sltu	a5,a4,a5
	add	a3,a2,a3
	add	a5,a5,a3
	li	a3,252645376
	addi	a3,a3,-241
	and	a4,a4,a3
	and	a5,a5,a3
	add	a5,a5,a4
	srli	a4,a5,16
	add	a5,a5,a4
	srli	a0,a5,8
	add	a0,a0,a5
	andi	a0,a0,127
	ret
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
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,16(sp)
	mv	s1,a1
	mv	s0,a2
	srli	a4,a2,31
	lui	a5,%hi(.LC13)
	lw	a3,%lo(.LC13)(a5)
	sw	a3,36(sp)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a5,40(sp)
	sw	a4,52(sp)
	j	.L790
.L788:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L789
	lw	a5,16(sp)
	sw	a5,0(sp)
	sw	s1,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	a5,8(sp)
	sw	s1,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	sw	a0,16(sp)
	mv	s1,a1
.L790:
	andi	a5,s0,1
	beq	a5,zero,.L788
	lw	a5,16(sp)
	sw	a5,20(sp)
	sw	s1,24(sp)
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a5,36(sp)
	sw	a5,28(sp)
	lw	a5,40(sp)
	sw	a5,32(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	call	__muldf3
	sw	a0,36(sp)
	sw	a1,40(sp)
	j	.L788
.L789:
	lw	a4,52(sp)
	lw	a5,36(sp)
	mv	a0,a5
	lw	a3,40(sp)
	mv	a1,a3
	beq	a4,zero,.L791
	sw	a5,56(sp)
	sw	a3,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
.L791:
	sw	a0,44(sp)
	sw	a1,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
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
	j	.L797
.L795:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L796
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L797:
	andi	a5,s0,1
	beq	a5,zero,.L795
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L795
.L796:
	lw	a1,0(sp)
	mv	a0,a1
	lw	a5,4(sp)
	beq	a5,zero,.L798
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
.L798:
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
	li	a5,0
	bltu	a1,a3,.L802
	li	a5,2
	bgtu	a1,a3,.L802
	li	a5,0
	bltu	a0,a2,.L802
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L802:
	mv	a0,a5
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
