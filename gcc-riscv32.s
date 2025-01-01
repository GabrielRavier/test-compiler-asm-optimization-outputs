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
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L3
.L4:
	addi	a1,a1,-1
	addi	a5,a5,-1
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a0,a5,.L4
	ret
.L2:
	beq	a0,a1,.L3
	beq	a2,zero,.L3
	add	a2,a0,a2
	mv	a5,a0
.L5:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a2,a5,.L5
.L3:
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
	mv	a5,a0
	andi	a2,a2,0xff
	beq	a3,zero,.L10
.L9:
	lbu	a4,0(a1)
	sb	a4,0(a5)
	beq	a4,a2,.L10
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a5,a5,1
	bne	a3,zero,.L9
.L10:
	li	a0,0
	beq	a3,zero,.L8
	addi	a0,a5,1
.L8:
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
	beq	a2,zero,.L17
.L16:
	lbu	a5,0(a0)
	beq	a5,a1,.L17
	addi	a0,a0,1
	addi	a2,a2,-1
	bne	a2,zero,.L16
.L17:
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
	beq	a2,zero,.L24
.L23:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	bne	a3,a4,.L24
	addi	a2,a2,-1
	addi	a5,a5,1
	addi	a1,a1,1
	bne	a2,zero,.L23
.L24:
	li	a0,0
	beq	a2,zero,.L22
	lbu	a0,0(a5)
	lbu	a5,0(a1)
	sub	a0,a0,a5
.L22:
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
	beq	a2,zero,.L32
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	memcpy
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L32:
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
	add	a2,a0,a2
	addi	a4,a0,-1
.L36:
	beq	a2,a4,.L39
	mv	a0,a2
	addi	a2,a2,-1
	lbu	a5,0(a0)
	bne	a5,a1,.L36
	ret
.L39:
	li	a0,0
.L35:
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
	beq	a2,zero,.L41
	add	a2,a0,a2
	mv	a5,a0
.L42:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a2,a5,.L42
.L41:
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
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L45
.L46:
	addi	a1,a1,1
	addi	a0,a0,1
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L46
.L45:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L54
.L49:
	beq	a5,a1,.L48
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L49
.L48:
	ret
.L54:
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
.L57:
	lbu	a5,0(a0)
	beq	a5,a1,.L56
	addi	a0,a0,1
	bne	a5,zero,.L57
	li	a0,0
.L56:
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
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L61
.L60:
	beq	a5,zero,.L61
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	beq	a5,a4,.L60
.L61:
	sub	a0,a5,a4
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
	lbu	a5,0(a0)
	beq	a5,zero,.L67
	mv	a5,a0
.L66:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L66
.L65:
	sub	a0,a5,a0
	ret
.L67:
	mv	a5,a0
	j	.L65
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	beq	a2,zero,.L74
	lbu	a5,0(a0)
	beq	a5,zero,.L71
	addi	a2,a2,-1
	add	a3,a0,a2
.L72:
	lbu	a4,0(a1)
	beq	a4,zero,.L71
	beq	a0,a3,.L71
	bne	a4,a5,.L71
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	bne	a5,zero,.L72
.L71:
	lbu	a4,0(a1)
	sub	a0,a5,a4
	ret
.L74:
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
	li	a5,1
	ble	a2,a5,.L75
	andi	a2,a2,-2
	add	a4,a0,a2
.L77:
	lbu	a5,1(a0)
	sb	a5,0(a1)
	lbu	a5,0(a0)
	sb	a5,1(a1)
	addi	a1,a1,2
	addi	a0,a0,2
	bne	a0,a4,.L77
.L75:
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
	beq	a0,a5,.L83
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L83:
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
	bleu	a0,a5,.L86
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L86:
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
	beq	a0,a5,.L93
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L93:
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
	bleu	a0,a4,.L97
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L95
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L95
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L97:
	li	a0,1
.L95:
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
	bleu	a0,a4,.L108
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L101
	li	a4,-8192
	addi	a4,a4,-42
	add	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L101
	li	a3,-57344
	add	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L101
	li	a4,-65536
	addi	a4,a4,4
	add	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L101
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L101:
	ret
.L108:
	addi	a0,a0,1
	andi	a0,a0,127
	sltiu	a0,a0,33
	seqz	a0,a0
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
	bleu	a4,a5,.L111
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L111:
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
	bne	a0,zero,.L116
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	bne	a0,zero,.L117
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
	ble	a0,zero,.L120
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
.L113:
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
.L116:
	.cfi_restore_state
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L113
.L117:
	mv	a0,s1
	mv	a1,s0
	j	.L113
.L120:
	li	a0,0
	li	a1,0
	j	.L113
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
	bne	a0,zero,.L125
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L126
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L129
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
.L122:
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
.L125:
	.cfi_restore_state
	mv	a0,s0
	j	.L122
.L126:
	mv	a0,s1
	j	.L122
.L129:
	mv	a0,zero
	j	.L122
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
	mv	s1,a1
	sw	a2,12(sp)
	mv	s0,a3
	mv	a2,a0
	mv	a3,a1
	sw	a0,8(sp)
	call	__unorddf2
	bne	a0,zero,.L137
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
	bne	a0,zero,.L138
	li	a5,-2147483648
	and	a4,s1,a5
	and	a5,s0,a5
	beq	a4,a5,.L133
	bne	a4,zero,.L139
	lw	a5,8(sp)
	mv	s0,s1
.L131:
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
.L133:
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
	bge	a0,zero,.L134
	lw	a5,12(sp)
	j	.L131
.L134:
	lw	a5,8(sp)
	mv	s0,s1
	j	.L131
.L137:
	lw	a5,12(sp)
	j	.L131
.L138:
	lw	a5,8(sp)
	mv	s0,s1
	j	.L131
.L139:
	lw	a5,12(sp)
	j	.L131
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
	bne	a0,zero,.L147
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L148
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L143
	mv	a0,s0
	bne	a4,zero,.L141
	mv	a0,s1
	j	.L141
.L143:
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,s1
	bge	a0,zero,.L145
	mv	a5,s0
.L145:
	mv	a0,a5
.L141:
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
.L147:
	.cfi_restore_state
	mv	a0,s0
	j	.L141
.L148:
	mv	a0,s1
	j	.L141
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
	sw	a0,20(sp)
	lw	s1,0(a1)
	lw	s0,4(a1)
	lw	a0,8(a1)
	sw	a0,16(sp)
	lw	a4,12(a1)
	lw	a5,0(a2)
	sw	a5,4(sp)
	lw	a3,4(a2)
	sw	a3,8(sp)
	lw	a1,8(a2)
	sw	a1,12(sp)
	lw	a1,12(a2)
	sw	a1,0(sp)
	sw	s1,44(sp)
	sw	s0,48(sp)
	sw	a0,52(sp)
	sw	a4,56(sp)
	sw	s1,28(sp)
	sw	s0,32(sp)
	sw	a0,36(sp)
	sw	a4,40(sp)
	sw	a4,24(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	lw	a5,20(sp)
	bne	a0,zero,.L158
	lw	a5,4(sp)
	sw	a5,44(sp)
	lw	a4,8(sp)
	sw	a4,48(sp)
	lw	a3,12(sp)
	sw	a3,52(sp)
	lw	a1,0(sp)
	sw	a1,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	a1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	lw	a5,20(sp)
	lw	a4,24(sp)
	bne	a0,zero,.L152
	li	a3,-2147483648
	and	a2,a4,a3
	lw	a1,0(sp)
	and	a3,a1,a3
	beq	a2,a3,.L153
	beq	a2,zero,.L152
	lw	s1,4(sp)
	lw	s0,8(sp)
	lw	a3,12(sp)
	sw	a3,16(sp)
	mv	a4,a1
	j	.L152
.L153:
	sw	a5,24(sp)
	sw	s1,44(sp)
	sw	s0,48(sp)
	lw	a5,16(sp)
	sw	a5,52(sp)
	sw	a4,56(sp)
	sw	a4,20(sp)
	lw	a5,4(sp)
	sw	a5,28(sp)
	lw	a4,8(sp)
	sw	a4,32(sp)
	lw	a3,12(sp)
	sw	a3,36(sp)
	lw	a2,0(sp)
	sw	a2,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	lw	a4,20(sp)
	lw	a5,24(sp)
	bge	a0,zero,.L155
	lw	s1,4(sp)
	lw	s0,8(sp)
	lw	a3,12(sp)
	lw	a4,0(sp)
.L156:
	sw	a3,16(sp)
.L152:
	sw	s1,0(a5)
	sw	s0,4(a5)
	lw	a3,16(sp)
	sw	a3,8(a5)
	sw	a4,12(a5)
	mv	a0,a5
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
.L155:
	.cfi_restore_state
	lw	a3,16(sp)
	j	.L156
.L158:
	lw	s1,4(sp)
	lw	s0,8(sp)
	lw	a4,12(sp)
	sw	a4,16(sp)
	lw	a4,0(sp)
	j	.L152
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
	sw	a0,28(sp)
	mv	s0,a1
	sw	a2,0(sp)
	mv	s1,a3
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L166
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
	bne	a0,zero,.L167
	li	a5,-2147483648
	and	a4,s0,a5
	and	a5,s1,a5
	beq	a4,a5,.L162
	bne	a4,zero,.L168
	lw	a5,0(sp)
	mv	s0,s1
.L160:
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
.L162:
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
	bge	a0,zero,.L163
	lw	a5,28(sp)
	j	.L160
.L163:
	lw	a5,0(sp)
	mv	s0,s1
	j	.L160
.L166:
	lw	a5,0(sp)
	mv	s0,s1
	j	.L160
.L167:
	lw	a5,28(sp)
	j	.L160
.L168:
	lw	a5,28(sp)
	j	.L160
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
	bne	a0,zero,.L176
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L177
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L172
	mv	a0,s1
	bne	a4,zero,.L170
	mv	a0,s0
	j	.L170
.L172:
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	mv	a5,s0
	bge	a0,zero,.L174
	mv	a5,s1
.L174:
	mv	a0,a5
.L170:
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
.L176:
	.cfi_restore_state
	mv	a0,s0
	j	.L170
.L177:
	mv	a0,s1
	j	.L170
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
	sw	a0,24(sp)
	lw	a5,0(a1)
	lw	a3,4(a1)
	lw	a0,8(a1)
	lw	a1,12(a1)
	lw	s1,0(a2)
	lw	s0,4(a2)
	lw	a4,8(a2)
	sw	a4,0(sp)
	lw	a4,12(a2)
	sw	a4,20(sp)
	sw	a5,44(sp)
	sw	a3,48(sp)
	sw	a0,52(sp)
	sw	a1,56(sp)
	sw	a5,8(sp)
	sw	a5,28(sp)
	sw	a3,12(sp)
	sw	a3,32(sp)
	sw	a0,16(sp)
	sw	a0,36(sp)
	sw	a1,4(sp)
	sw	a1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	lw	a4,20(sp)
	lw	a5,24(sp)
	bne	a0,zero,.L181
	sw	a5,20(sp)
	sw	s1,44(sp)
	sw	s0,48(sp)
	lw	a2,0(sp)
	sw	a2,52(sp)
	sw	a4,56(sp)
	sw	s1,28(sp)
	sw	s0,32(sp)
	sw	a2,36(sp)
	sw	a4,40(sp)
	sw	a4,24(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	lw	a5,20(sp)
	bne	a0,zero,.L187
	li	a3,-2147483648
	lw	a1,4(sp)
	and	a2,a1,a3
	lw	a4,24(sp)
	and	a3,a4,a3
	beq	a2,a3,.L182
	beq	a2,zero,.L181
	lw	s1,8(sp)
	lw	s0,12(sp)
	lw	a0,16(sp)
	sw	a0,0(sp)
	mv	a4,a1
	j	.L181
.L182:
	sw	a5,24(sp)
	lw	a5,8(sp)
	sw	a5,44(sp)
	lw	a3,12(sp)
	sw	a3,48(sp)
	lw	a2,16(sp)
	sw	a2,52(sp)
	lw	a1,4(sp)
	sw	a1,56(sp)
	sw	s1,28(sp)
	sw	s0,32(sp)
	lw	a0,0(sp)
	sw	a0,36(sp)
	sw	a4,40(sp)
	sw	a4,20(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	lw	a4,20(sp)
	lw	a5,24(sp)
	bge	a0,zero,.L184
	lw	s1,8(sp)
	lw	s0,12(sp)
	lw	a3,16(sp)
	lw	a4,4(sp)
.L185:
	sw	a3,0(sp)
.L181:
	sw	s1,0(a5)
	sw	s0,4(a5)
	lw	a3,0(sp)
	sw	a3,8(a5)
	sw	a4,12(a5)
	mv	a0,a5
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
.L184:
	.cfi_restore_state
	lw	a3,0(sp)
	j	.L185
.L187:
	lw	s1,8(sp)
	lw	s0,12(sp)
	lw	a4,16(sp)
	sw	a4,0(sp)
	lw	a4,4(sp)
	j	.L181
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	beq	a0,zero,.L192
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(.LANCHOR0)
.L191:
	addi	a5,a2,%lo(.LANCHOR0)
	andi	a3,a0,63
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
	bne	a0,zero,.L191
.L190:
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	ret
.L192:
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	j	.L190
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.align	2
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	lui	a5,%hi(seed)
	addi	a0,a0,-1
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
	beq	a1,zero,.L200
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L197
	sw	a0,4(a5)
.L197:
	ret
.L200:
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
	beq	a5,zero,.L202
	lw	a4,4(a0)
	sw	a4,4(a5)
.L202:
	lw	a5,4(a0)
	beq	a5,zero,.L201
	lw	a4,0(a0)
	sw	a4,0(a5)
.L201:
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,4(sp)
	sw	a1,20(sp)
	sw	a2,24(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	lw	a5,0(a2)
	sw	a5,8(sp)
	beq	a5,zero,.L205
	sw	s1,28(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	li	s0,0
.L207:
	sw	s1,0(sp)
	mv	a1,s1
	lw	a0,4(sp)
	lw	a5,16(sp)
	jalr	a5
	beq	a0,zero,.L210
	addi	s0,s0,1
	lw	a5,12(sp)
	add	s1,s1,a5
	lw	a5,8(sp)
	bne	a5,s0,.L207
	lw	s1,28(sp)
	.cfi_restore 9
.L205:
	lw	a1,8(sp)
	addi	a5,a1,1
	lw	a4,24(sp)
	sw	a5,0(a4)
	lw	s0,12(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a2,s0
	lw	a1,4(sp)
	lw	a5,20(sp)
	add	a0,a5,a0
	call	memcpy
	sw	a0,0(sp)
.L204:
	lw	a0,0(sp)
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L210:
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
	j	.L204
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
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a3,16(sp)
	sw	a4,8(sp)
	lw	a5,0(a2)
	sw	a5,12(sp)
	beq	a5,zero,.L212
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a1
	li	s0,0
.L214:
	sw	s1,0(sp)
	mv	a1,s1
	lw	a0,4(sp)
	lw	a5,8(sp)
	jalr	a5
	beq	a0,zero,.L217
	addi	s0,s0,1
	lw	a5,16(sp)
	add	s1,s1,a5
	lw	a5,12(sp)
	bne	a5,s0,.L214
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L212:
	sw	zero,0(sp)
	j	.L211
.L217:
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L211:
	lw	a0,0(sp)
	lw	ra,28(sp)
	.cfi_restore 1
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	j	.L220
.L221:
	addi	s1,s1,1
.L220:
	lbu	s0,0(s1)
	mv	a0,s0
	call	isspace
	bne	a0,zero,.L221
	li	a5,43
	beq	s0,a5,.L227
	li	a5,45
	mv	a2,a0
	bne	s0,a5,.L223
	li	a2,1
.L222:
	addi	s1,s1,1
.L223:
	lbu	a4,0(s1)
	addi	a1,a4,-48
	li	a5,9
	mv	a3,a5
	bgtu	a1,a5,.L225
.L224:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s1,s1,1
	addi	a4,a4,-48
	sub	a0,a5,a4
	lbu	a4,0(s1)
	addi	a5,a4,-48
	bleu	a5,a3,.L224
.L225:
	bne	a2,zero,.L219
	neg	a0,a0
.L219:
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
.L227:
	.cfi_restore_state
	mv	a2,a0
	j	.L222
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
	mv	s1,a0
	j	.L233
.L234:
	addi	s1,s1,1
.L233:
	lbu	s0,0(s1)
	mv	a0,s0
	call	isspace
	bne	a0,zero,.L234
	li	a5,43
	beq	s0,a5,.L240
	li	a5,45
	mv	a2,a0
	bne	s0,a5,.L236
	li	a2,1
.L235:
	addi	s1,s1,1
.L236:
	lbu	a4,0(s1)
	addi	a1,a4,-48
	li	a5,9
	mv	a3,a5
	bgtu	a1,a5,.L238
.L237:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s1,s1,1
	addi	a4,a4,-48
	sub	a0,a5,a4
	lbu	a4,0(s1)
	addi	a5,a4,-48
	bleu	a5,a3,.L237
.L238:
	bne	a2,zero,.L232
	neg	a0,a0
.L232:
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
.L240:
	.cfi_restore_state
	mv	a2,a0
	j	.L235
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
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
	j	.L246
.L247:
	addi	s0,s0,1
.L246:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L247
	li	a5,43
	beq	s1,a5,.L248
	li	a5,45
	bne	s1,a5,.L249
	li	a0,1
.L248:
	addi	s0,s0,1
.L249:
	lbu	t1,0(s0)
	addi	a3,t1,-48
	li	a5,9
	li	a4,0
	li	a1,0
	mv	a2,a5
	bgtu	a3,a5,.L251
.L250:
	srli	a5,a4,30
	slli	t0,a1,2
	or	t0,a5,t0
	slli	a5,a4,2
	add	a3,a5,a4
	sltu	a5,a3,a5
	add	t0,t0,a1
	add	a5,a5,t0
	srli	a4,a3,31
	slli	a5,a5,1
	or	a5,a4,a5
	slli	a3,a3,1
	addi	s0,s0,1
	addi	a4,t1,-48
	srai	a1,a4,31
	sub	a4,a3,a4
	sgtu	a3,a4,a3
	sub	a5,a5,a1
	sub	a1,a5,a3
	lbu	t1,0(s0)
	addi	a5,t1,-48
	bleu	a5,a2,.L250
.L251:
	bne	a0,zero,.L245
	snez	a5,a4
	neg	a1,a1
	sub	a1,a1,a5
	neg	a4,a4
.L245:
	mv	a0,a4
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	beq	a2,zero,.L258
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L261
.L262:
	mv	s1,a5
.L259:
	beq	s1,zero,.L266
.L261:
	srli	a5,s1,1
	lw	a1,8(sp)
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a5,4(sp)
	add	s0,a5,a0
	mv	a1,s0
	lw	a0,12(sp)
	lw	a5,16(sp)
	jalr	a5
	lw	a5,0(sp)
	blt	a0,zero,.L262
	ble	a0,zero,.L265
	lw	a4,8(sp)
	add	a4,s0,a4
	sw	a4,4(sp)
	addi	a2,s1,-1
	sub	s1,a2,a5
	j	.L259
.L266:
	lw	s1,20(sp)
	.cfi_restore 9
.L258:
	li	s0,0
	j	.L257
.L265:
	.cfi_offset 9, -12
	lw	s1,20(sp)
	.cfi_restore 9
.L257:
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,8(sp)
	sw	a1,0(sp)
	sw	a3,4(sp)
	sw	a4,12(sp)
	sw	a5,16(sp)
	beq	a2,zero,.L268
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L271
.L270:
	srai	s1,s1,1
	beq	s1,zero,.L275
.L271:
	lw	a1,4(sp)
	srai	a0,s1,1
	call	__mulsi3
	lw	a4,0(sp)
	add	s0,a4,a0
	lw	a2,16(sp)
	mv	a1,s0
	lw	a0,8(sp)
	lw	a5,12(sp)
	jalr	a5
	beq	a0,zero,.L274
	ble	a0,zero,.L270
	lw	a5,4(sp)
	add	a5,s0,a5
	sw	a5,0(sp)
	addi	s1,s1,-1
	j	.L270
.L275:
	lw	s1,20(sp)
	.cfi_restore 9
.L268:
	li	s0,0
	j	.L267
.L274:
	.cfi_offset 9, -12
	lw	s1,20(sp)
	.cfi_restore 9
.L267:
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
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
	mv	a5,a2
	mv	a2,a3
	mv	a3,a4
	sw	a2,8(sp)
	sw	a4,4(sp)
	mv	a0,a1
	sw	a5,0(sp)
	mv	a1,a5
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	lw	a2,8(sp)
	lw	a3,4(sp)
	mv	a0,s1
	lw	a1,0(sp)
	call	__moddi3
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
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
	mv	a5,a2
	mv	a2,a3
	mv	a3,a4
	sw	a2,8(sp)
	sw	a4,4(sp)
	mv	a0,a1
	sw	a5,0(sp)
	mv	a1,a5
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	lw	a2,8(sp)
	lw	a3,4(sp)
	mv	a0,s1
	lw	a1,0(sp)
	call	__moddi3
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
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
.LFE56:
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	lw	a5,0(a0)
	beq	a5,zero,.L289
.L288:
	beq	a1,a5,.L289
	addi	a0,a0,4
	lw	a5,0(a0)
	bne	a5,zero,.L288
.L289:
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
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L296
.L295:
	beq	a5,zero,.L296
	beq	a4,zero,.L296
	addi	a0,a0,4
	addi	a1,a1,4
	lw	a5,0(a0)
	lw	a4,0(a1)
	beq	a5,a4,.L295
.L296:
	li	a0,-1
	blt	a5,a4,.L294
	sgt	a0,a5,a4
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
.L302:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L302
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
	lw	a5,0(a0)
	beq	a5,zero,.L307
	mv	a5,a0
.L306:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L306
.L305:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L307:
	mv	a5,a0
	j	.L305
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
	beq	a2,zero,.L311
.L310:
	lw	a4,0(a5)
	lw	a3,0(a1)
	bne	a4,a3,.L311
	beq	a4,zero,.L311
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
	bne	a2,zero,.L310
.L311:
	li	a0,0
	beq	a2,zero,.L309
	lw	a4,0(a5)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L309
	sgt	a0,a4,a5
.L309:
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
	beq	a2,zero,.L319
.L318:
	lw	a5,0(a0)
	beq	a5,a1,.L319
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a2,zero,.L318
.L319:
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
	beq	a2,zero,.L326
.L325:
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L326
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
	bne	a2,zero,.L325
.L326:
	li	a0,0
	beq	a2,zero,.L324
	lw	a4,0(a5)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L324
	sgt	a0,a4,a5
.L324:
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
	beq	a2,zero,.L335
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	slli	a2,a2,2
	call	memcpy
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L335:
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
	beq	a0,a1,.L339
	sub	a5,a0,a1
	slli	a4,a2,2
	bltu	a5,a4,.L340
	addi	a4,a2,-1
	mv	a5,a0
	li	t1,-1
	beq	a2,zero,.L347
.L341:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a3,-4(a1)
	sw	a3,-4(a5)
	addi	a4,a4,-1
	bne	a4,t1,.L341
.L339:
	ret
.L347:
	ret
.L340:
	addi	a5,a2,-1
	beq	a2,zero,.L339
	slli	a5,a5,2
	li	a2,-4
.L342:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L342
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	addi	a5,a2,-1
	beq	a2,zero,.L349
	mv	a4,a0
	li	a3,-1
.L350:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L350
.L349:
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
	bgeu	a0,a1,.L353
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L352
.L355:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L355
	ret
.L353:
	beq	a0,a1,.L352
	beq	a2,zero,.L352
	add	a2,a0,a2
.L356:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a2,a0,.L356
.L352:
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
	blt	a4,zero,.L360
	sll	a4,a0,a4
	li	a3,0
.L361:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L362
	srl	a0,a1,a5
	li	a1,0
.L363:
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L360:
	srli	a5,a0,1
	li	a4,31
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a4,a1,a2
	or	a4,a5,a4
	sll	a3,a0,a2
	j	.L361
.L362:
	slli	a5,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a5,a5,t1
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
	j	.L363
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
	blt	a4,zero,.L365
	srl	a4,a1,a4
	li	a3,0
.L366:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L367
	sll	a1,a0,a5
	li	a0,0
.L368:
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L365:
	slli	a5,a1,1
	li	a4,31
	sub	a4,a4,a2
	sll	a5,a5,a4
	srl	a4,a0,a2
	or	a4,a5,a4
	srl	a3,a1,a2
	j	.L366
.L367:
	srli	a5,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a5,a5,t1
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
	j	.L368
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
	andi	a1,a1,15
	sll	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,15
	srl	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,15
	srl	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,15
	sll	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,7
	sll	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,7
	srl	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,7
	srl	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,7
	sll	a0,a0,a1
	or	a0,a5,a0
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
	slli	a0,a0,8
	or	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
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
	slli	a5,a0,24
	srli	a4,a0,24
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,8
	li	a4,16711680
	and	a0,a0,a4
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
	slli	a4,a0,24
	srli	a0,a1,24
	srli	a3,a1,8
	li	t0,65536
	addi	t0,t0,-256
	and	a3,a3,t0
	or	a0,a0,a3
	slli	a2,a1,8
	srli	a3,a5,24
	or	a3,a2,a3
	li	a2,16711680
	and	a3,a3,a2
	or	a0,a0,a3
	slli	a1,a1,24
	srli	a3,a5,8
	or	a3,a1,a3
	li	t1,-16777216
	and	a3,a3,t1
	slli	t1,a5,8
	srli	t2,a5,24
	or	a4,a4,t2
	srli	a5,a5,8
	or	a5,a5,a1
	and	a5,a5,t0
	or	a5,a4,a5
	and	a1,t1,a2
	or	a0,a0,a3
	or	a1,a5,a1
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
.L383:
	srl	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L385
	addi	a5,a5,1
	bne	a5,a3,.L383
	li	a0,0
	ret
.L385:
	addi	a0,a5,1
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
	beq	a0,zero,.L386
	andi	a0,a0,1
	bne	a0,zero,.L386
	li	a0,1
.L388:
	srai	a5,a5,1
	addi	a0,a0,1
	andi	a4,a5,1
	beq	a4,zero,.L388
	ret
.L386:
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
	blt	a0,zero,.L394
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L391:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L394:
	.cfi_restore_state
	li	a0,1
	j	.L391
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
	blt	a0,zero,.L399
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
.L396:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L399:
	.cfi_restore_state
	li	a0,1
	j	.L396
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
	lw	a3,0(a0)
	lw	a4,4(a0)
	lw	s1,8(a0)
	lw	s0,12(a0)
	lui	a5,%hi(.LC5)
	lw	a1,%lo(.LC5+4)(a5)
	lw	a2,%lo(.LC5+8)(a5)
	lw	a5,%lo(.LC5+12)(a5)
	sw	a3,24(sp)
	sw	a3,4(sp)
	sw	a4,28(sp)
	sw	a4,0(sp)
	sw	s1,32(sp)
	sw	s0,36(sp)
	li	a0,-1
	sw	a0,8(sp)
	sw	a1,12(sp)
	sw	a2,16(sp)
	sw	a5,20(sp)
	addi	a1,sp,8
	addi	a0,sp,24
	call	__lttf2
	blt	a0,zero,.L404
	lui	a5,%hi(.LC6)
	lw	a1,%lo(.LC6+4)(a5)
	lw	a2,%lo(.LC6+8)(a5)
	lw	a5,%lo(.LC6+12)(a5)
	sw	a1,12(sp)
	sw	a2,16(sp)
	sw	a5,20(sp)
	addi	a1,sp,8
	addi	a0,sp,24
	call	__gttf2
	sgt	a0,a0,zero
.L401:
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
.L404:
	.cfi_restore_state
	li	a0,1
	j	.L401
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
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L409
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L409
	blt	s0,zero,.L417
	lui	a5,%hi(.LC7)
	lw	a1,%lo(.LC7)(a5)
	j	.L413
.L417:
	lui	a5,%hi(.LC8)
	lw	a1,%lo(.LC8)(a5)
	j	.L413
.L412:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L409
	mv	a0,a1
	call	__mulsf3
	mv	a1,a0
.L413:
	andi	a5,s0,1
	beq	a5,zero,.L412
	sw	a1,0(sp)
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
	lw	a1,0(sp)
	j	.L412
.L409:
	mv	a0,s1
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
	mv	s0,a2
	sw	a1,16(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L419
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
	sw	s1,64(sp)
	lw	a5,16(sp)
	sw	a5,68(sp)
	lw	a2,64(sp)
	lw	a3,68(sp)
	call	__nedf2
	beq	a0,zero,.L419
	blt	s0,zero,.L427
	lui	a4,%hi(.LC9)
	lw	s1,%lo(.LC9)(a4)
	lw	a5,%lo(.LC9+4)(a4)
	sw	a5,20(sp)
	j	.L423
.L427:
	lui	a4,%hi(.LC10)
	lw	s1,%lo(.LC10)(a4)
	lw	a5,%lo(.LC10+4)(a4)
	sw	a5,20(sp)
	j	.L423
.L422:
	srli	a4,s0,31
	add	a5,a4,s0
	srai	s0,a5,1
	beq	s0,zero,.L419
	sw	s1,0(sp)
	lw	a5,20(sp)
	sw	a5,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	s1,8(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	s1,a0
	sw	a1,20(sp)
.L423:
	andi	a4,s0,1
	beq	a4,zero,.L422
	sw	s1,28(sp)
	lw	a5,20(sp)
	sw	a5,32(sp)
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
	j	.L422
.L419:
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
	addi	sp,sp,-108
	.cfi_def_cfa_offset 108
	sw	ra,104(sp)
	sw	s0,100(sp)
	sw	s1,96(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,28(sp)
	lw	s1,0(a1)
	lw	a5,4(a1)
	lw	a4,8(a1)
	lw	a3,12(a1)
	mv	s0,a2
	sw	s1,80(sp)
	sw	a5,84(sp)
	sw	a4,88(sp)
	sw	a3,92(sp)
	sw	s1,64(sp)
	sw	a5,0(sp)
	sw	a5,68(sp)
	sw	a4,4(sp)
	sw	a4,72(sp)
	sw	a3,8(sp)
	sw	a3,76(sp)
	addi	a1,sp,64
	addi	a0,sp,80
	call	__unordtf2
	bne	a0,zero,.L429
	addi	a4,sp,64
	addi	a2,sp,48
	lw	a5,0(sp)
	lw	a3,4(sp)
	lw	a1,8(sp)
	sw	s1,48(sp)
	sw	a5,52(sp)
	sw	a3,56(sp)
	sw	a1,60(sp)
	mv	a1,a4
	addi	a0,sp,80
	call	__addtf3
	lw	a3,80(sp)
	sw	a3,64(sp)
	lw	a3,84(sp)
	sw	a3,68(sp)
	lw	a3,88(sp)
	sw	a3,72(sp)
	lw	a3,92(sp)
	sw	a3,76(sp)
	sw	s1,48(sp)
	lw	a5,0(sp)
	sw	a5,52(sp)
	lw	a3,4(sp)
	sw	a3,56(sp)
	lw	a1,8(sp)
	sw	a1,60(sp)
	addi	a2,sp,48
	mv	a1,a2
	addi	a4,sp,64
	mv	a0,a4
	call	__netf2
	beq	a0,zero,.L429
	blt	s0,zero,.L437
	lui	a4,%hi(.LC11)
	li	t0,0
	lw	t1,%lo(.LC11+4)(a4)
	lw	a3,%lo(.LC11+8)(a4)
	lw	a4,%lo(.LC11+12)(a4)
	j	.L433
.L437:
	lui	a4,%hi(.LC12)
	li	t0,0
	lw	t1,%lo(.LC12+4)(a4)
	lw	a3,%lo(.LC12+8)(a4)
	lw	a4,%lo(.LC12+12)(a4)
	j	.L433
.L432:
	srli	a2,s0,31
	add	a5,a2,s0
	srai	s0,a5,1
	beq	s0,zero,.L429
	sw	t0,64(sp)
	sw	t1,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	addi	a2,sp,48
	addi	a1,sp,64
	addi	a0,sp,80
	call	__multf3
	lw	t0,80(sp)
	lw	t1,84(sp)
	lw	a3,88(sp)
	lw	a4,92(sp)
.L433:
	andi	a2,s0,1
	beq	a2,zero,.L432
	sw	s1,48(sp)
	lw	a5,0(sp)
	sw	a5,52(sp)
	lw	a5,4(sp)
	sw	a5,56(sp)
	lw	a5,8(sp)
	sw	a5,60(sp)
	sw	t0,32(sp)
	sw	t0,24(sp)
	sw	t1,36(sp)
	sw	t1,20(sp)
	sw	a3,40(sp)
	sw	a3,16(sp)
	sw	a4,44(sp)
	sw	a4,12(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	s1,64(sp)
	lw	a5,68(sp)
	sw	a5,0(sp)
	lw	a5,72(sp)
	sw	a5,4(sp)
	lw	a5,76(sp)
	sw	a5,8(sp)
	lw	t0,24(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	lw	a4,12(sp)
	j	.L432
.L429:
	lw	a5,28(sp)
	sw	s1,0(a5)
	lw	a4,0(sp)
	sw	a4,4(a5)
	lw	a4,4(sp)
	sw	a4,8(a5)
	lw	a4,8(sp)
	sw	a4,12(a5)
	mv	a0,a5
	lw	ra,104(sp)
	.cfi_restore 1
	lw	s0,100(sp)
	.cfi_restore 8
	lw	s1,96(sp)
	.cfi_restore 9
	addi	sp,sp,108
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
	beq	a2,zero,.L439
	add	a2,a1,a2
	mv	a5,a0
.L440:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a5)
	lbu	a3,-1(a1)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L440
.L439:
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
	mv	s1,a0
	sw	a1,0(sp)
	mv	s0,a2
	call	strlen
	add	a0,s1,a0
	lw	a1,0(sp)
	beq	s0,zero,.L444
.L443:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L444
	addi	a1,a1,1
	addi	a0,a0,1
	addi	s0,s0,-1
	bne	s0,zero,.L443
.L444:
	bne	s0,zero,.L446
	sb	zero,0(a0)
.L446:
	mv	a0,s1
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
	beq	a1,zero,.L456
.L450:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L457
.L449:
	ret
.L456:
	mv	a0,a1
	ret
.L457:
	addi	a0,a0,1
	bne	a1,a0,.L450
	mv	a0,a1
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	lbu	a3,0(a0)
	beq	a3,zero,.L465
.L459:
	mv	a5,a1
.L462:
	lbu	a4,0(a5)
	beq	a4,zero,.L466
	addi	a5,a5,1
	bne	a4,a3,.L462
.L460:
	ret
.L465:
	li	a0,0
	ret
.L466:
	addi	a0,a0,1
	lbu	a3,0(a0)
	bne	a3,zero,.L459
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
	j	.L469
.L468:
	addi	a5,a5,1
	beq	a4,zero,.L472
.L469:
	lbu	a4,0(a5)
	bne	a4,a1,.L468
	mv	a0,a5
	j	.L468
.L472:
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
	mv	s1,a0
	mv	s0,a1
	mv	a0,a1
	call	strlen
	sw	a0,4(sp)
	beq	a0,zero,.L473
	lbu	a5,0(s0)
	sw	a5,0(sp)
.L475:
	lw	a1,0(sp)
	mv	a0,s1
	call	strchr
	mv	s1,a0
	beq	a0,zero,.L473
	lw	a2,4(sp)
	mv	a1,s0
	mv	a0,s1
	call	strncmp
	beq	a0,zero,.L473
	addi	s1,s1,1
	j	.L475
.L473:
	mv	a0,s1
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
	blt	a0,zero,.L489
.L480:
	li	a2,0
	li	a3,0
	sw	s1,8(sp)
	sw	s0,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	ble	a0,zero,.L483
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,24(sp)
	lw	a5,20(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__ltdf2
	blt	a0,zero,.L482
.L483:
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
.L489:
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
	ble	a0,zero,.L480
.L482:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L483
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	beq	a3,zero,.L490
	bltu	a1,a3,.L495
	sub	a1,a1,a3
	add	t1,a0,a1
	bgtu	a0,t1,.L496
	sw	s1,12(sp)
	.cfi_offset 9, -12
	lbu	s1,0(a2)
	addi	a5,a3,-1
	sw	a5,4(sp)
	addi	a5,a2,1
	sw	a5,8(sp)
	j	.L493
.L492:
	addi	s0,s0,1
	bltu	t1,s0,.L500
.L493:
	lbu	a4,0(s0)
	bne	a4,s1,.L492
	sw	t1,0(sp)
	lw	a2,4(sp)
	lw	a1,8(sp)
	addi	a0,s0,1
	call	memcmp
	lw	t1,0(sp)
	bne	a0,zero,.L492
	mv	a0,s0
	lw	s1,12(sp)
	.cfi_remember_state
	.cfi_restore 9
	j	.L490
.L500:
	.cfi_restore_state
	li	a0,0
	lw	s1,12(sp)
	.cfi_restore 9
.L490:
	lw	ra,20(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
.L495:
	.cfi_restore_state
	li	a0,0
	j	.L490
.L496:
	li	a0,0
	j	.L490
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
	blt	a0,zero,.L529
	sw	zero,60(sp)
.L504:
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
	blt	a0,zero,.L525
	lui	a4,%hi(.LC10)
	lw	a5,%lo(.LC10+4)(a4)
	lw	a4,%lo(.LC10)(a4)
	sw	a4,28(sp)
	sw	a5,32(sp)
	lui	a4,%hi(.LC13)
	lw	a5,%lo(.LC13+4)(a4)
	lw	a4,%lo(.LC13)(a4)
	sw	a4,20(sp)
	sw	a5,24(sp)
.L508:
	addi	s1,s1,1
	lw	a2,28(sp)
	lw	a3,32(sp)
	lw	a4,0(sp)
	sw	a4,4(sp)
	sw	s0,8(sp)
	lw	a0,4(sp)
	lw	a1,8(sp)
	call	__muldf3
	sw	a0,0(sp)
	mv	s0,a1
	lw	a2,20(sp)
	lw	a3,24(sp)
	sw	a0,12(sp)
	sw	a1,16(sp)
	lw	a0,12(sp)
	lw	a1,16(sp)
	call	__gedf2
	bge	a0,zero,.L508
.L509:
	lw	a5,64(sp)
	sw	s1,0(a5)
	lw	a5,60(sp)
	beq	a5,zero,.L513
	li	a5,-2147483648
	xor	s0,s0,a5
.L513:
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
.L529:
	.cfi_restore_state
	li	a5,-2147483648
	xor	s0,s0,a5
	li	a5,1
	sw	a5,60(sp)
	j	.L504
.L525:
	lui	a5,%hi(.LC10)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	lw	s1,0(sp)
	sw	s1,68(sp)
	sw	s0,72(sp)
	lw	a0,68(sp)
	lw	a1,72(sp)
	call	__ltdf2
	bge	a0,zero,.L526
	li	a2,0
	li	a3,0
	sw	s1,76(sp)
	sw	s0,80(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	call	__nedf2
	li	s1,0
	beq	a0,zero,.L509
	li	s1,0
	lui	a4,%hi(.LC10)
	lw	a5,%lo(.LC10+4)(a4)
	lw	a4,%lo(.LC10)(a4)
	sw	a4,4(sp)
	sw	a5,8(sp)
.L512:
	addi	s1,s1,-1
	lw	a5,0(sp)
	sw	a5,28(sp)
	sw	s0,32(sp)
	lw	a2,28(sp)
	lw	a3,32(sp)
	sw	a5,44(sp)
	sw	s0,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
	call	__adddf3
	sw	a0,0(sp)
	mv	s0,a1
	lw	a2,4(sp)
	lw	a3,8(sp)
	sw	a0,52(sp)
	sw	a1,56(sp)
	lw	a0,52(sp)
	lw	a1,56(sp)
	call	__ltdf2
	blt	a0,zero,.L512
	j	.L509
.L526:
	li	s1,0
	j	.L509
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mv	a4,a0
	mv	t1,a1
	or	a1,a1,a0
	beq	a1,zero,.L534
	li	a0,0
	li	a1,0
.L533:
	andi	a5,a4,1
	neg	t0,a5
	mv	a5,t0
	and	t0,t0,a2
	and	a5,a5,a3
	add	t0,a0,t0
	sltu	t2,t0,a0
	add	a5,a1,a5
	mv	a0,t0
	add	a1,t2,a5
	srli	a5,a2,31
	slli	a3,a3,1
	or	a3,a5,a3
	slli	a2,a2,1
	slli	t0,t1,31
	srli	a5,a4,1
	or	a5,t0,a5
	srli	t0,t1,1
	mv	a4,a5
	mv	t1,t0
	or	a5,a5,t0
	bne	a5,zero,.L533
	ret
.L534:
	li	a0,0
	li	a1,0
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
	mv	a4,a0
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L538
.L537:
	blt	a1,zero,.L538
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L538
	addi	a3,a3,-1
	bne	a3,zero,.L537
	mv	a5,a3
.L538:
	beq	a5,zero,.L546
	li	a0,0
	j	.L542
.L541:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L540
.L542:
	bltu	a4,a1,.L541
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L541
.L546:
	mv	a0,a5
.L540:
	bne	a2,zero,.L550
.L536:
	ret
.L550:
	mv	a0,a4
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
	beq	a0,zero,.L553
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
.L553:
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
	mv	a4,a0
	mv	a5,a1
	srai	a3,a1,31
	xor	a0,a0,a3
	xor	a1,a1,a3
	beq	a4,a3,.L567
.L562:
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__clzdi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L567:
	bne	a5,a3,.L562
	li	a0,63
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
	mv	a4,a0
	beq	a0,zero,.L571
	li	a0,0
.L570:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L570
	ret
.L571:
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
	srli	a3,a2,3
	andi	t0,a2,-8
	bltu	a0,a1,.L574
	add	a5,a1,a2
	bgtu	a0,a5,.L574
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L584
.L575:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L575
.L573:
	ret
.L584:
	ret
.L574:
	beq	a3,zero,.L577
	mv	a5,a1
	mv	a4,a0
	slli	a3,a3,3
	add	a3,a3,a1
.L578:
	lw	t1,0(a5)
	lw	t2,4(a5)
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a5,a5,8
	addi	a4,a4,8
	bne	a5,a3,.L578
.L577:
	bleu	a2,t0,.L573
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L579:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L579
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
	bltu	a0,a1,.L586
	add	a5,a1,a2
	bgtu	a0,a5,.L586
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L594
.L587:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L587
.L585:
	ret
.L594:
	ret
.L586:
	beq	t1,zero,.L589
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
.L590:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,t1,.L590
.L589:
	andi	a5,a2,1
	beq	a5,zero,.L585
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
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
	srli	t1,a2,2
	andi	t0,a2,-4
	bltu	a0,a1,.L596
	add	a5,a1,a2
	bgtu	a0,a5,.L596
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L606
.L597:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L597
.L595:
	ret
.L606:
	ret
.L596:
	beq	t1,zero,.L599
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,2
	add	t1,t1,a1
.L600:
	lw	a3,0(a5)
	sw	a3,0(a4)
	addi	a5,a5,4
	addi	a4,a4,4
	bne	a5,t1,.L600
.L599:
	bleu	a2,t0,.L595
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L601:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L601
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
	li	a3,15
	li	a2,16
.L621:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L619
	addi	a0,a0,1
	bne	a0,a2,.L621
.L619:
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
.L625:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L623
	addi	a0,a0,1
	bne	a0,a3,.L625
.L623:
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
	bge	a0,zero,.L634
	mv	a0,s0
	call	__fixsfsi
.L627:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L634:
	.cfi_restore_state
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L627
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
.L636:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
	bne	a5,a2,.L636
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
.L639:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
	bne	a5,a2,.L639
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
	mv	a4,a0
	beq	a0,zero,.L644
	li	a0,0
.L643:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L643
	ret
.L644:
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
	mv	a4,a0
	beq	a0,zero,.L649
	beq	a1,zero,.L650
	li	a0,0
.L648:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	add	a0,a0,a5
	slli	a4,a4,1
	srli	a1,a1,1
	bne	a1,zero,.L648
	ret
.L649:
	ret
.L650:
	mv	a0,a1
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
	mv	a4,a0
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L654
.L653:
	blt	a1,zero,.L654
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L654
	addi	a3,a3,-1
	bne	a3,zero,.L653
	mv	a5,a3
.L654:
	beq	a5,zero,.L662
	li	a0,0
	j	.L658
.L657:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L656
.L658:
	bltu	a4,a1,.L657
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L657
.L662:
	mv	a0,a5
.L656:
	bne	a2,zero,.L666
.L652:
	ret
.L666:
	mv	a0,a4
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
	blt	a0,zero,.L670
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L667:
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
.L670:
	.cfi_restore_state
	li	a0,-1
	j	.L667
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
	blt	a0,zero,.L675
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
.L672:
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
.L675:
	.cfi_restore_state
	li	a0,-1
	j	.L672
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
	mv	a3,a0
	li	a2,0
	blt	a1,zero,.L689
.L682:
	beq	a1,zero,.L687
	li	a4,32
	li	a0,0
.L684:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	add	a0,a0,a5
	slli	a3,a3,1
	srai	a1,a1,1
	beq	a1,zero,.L683
	addi	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L684
.L683:
	beq	a2,zero,.L681
	neg	a0,a0
.L681:
	ret
.L689:
	neg	a1,a1
	li	a2,1
	j	.L682
.L687:
	mv	a0,a1
	j	.L683
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
.L691:
	blt	a1,zero,.L698
.L692:
	li	a2,0
	call	__udivmodsi4
	beq	s0,zero,.L690
	neg	a0,a0
.L690:
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
	j	.L691
.L698:
	neg	a1,a1
	xori	s0,s0,1
	j	.L692
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
	xor	a1,a5,a1
	li	a2,1
	sub	a1,a1,a5
	call	__udivmodsi4
	beq	s0,zero,.L699
	neg	a0,a0
.L699:
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
	mv	t1,a0
	li	a4,16
	li	a5,1
	bgeu	a1,a0,.L708
.L707:
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L708
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	t1,a1,.L708
	addi	a4,a4,-1
	bne	a4,zero,.L707
	li	a5,0
.L708:
	beq	a5,zero,.L716
	li	a0,0
	j	.L712
.L711:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L710
.L712:
	bltu	t1,a1,.L711
	sub	t1,t1,a1
	slli	t1,t1,16
	srli	t1,t1,16
	or	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
	j	.L711
.L716:
	mv	a0,a5
.L710:
	bne	a2,zero,.L720
.L713:
	ret
.L720:
	mv	a0,t1
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
	mv	a4,a0
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L723
.L722:
	blt	a1,zero,.L723
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L723
	addi	a3,a3,-1
	bne	a3,zero,.L722
	mv	a5,a3
.L723:
	beq	a5,zero,.L731
	li	a0,0
	j	.L727
.L726:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L725
.L727:
	bltu	a4,a1,.L726
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L726
.L731:
	mv	a0,a5
.L725:
	bne	a2,zero,.L735
.L721:
	ret
.L735:
	mv	a0,a4
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
	beq	a4,zero,.L737
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L737:
	beq	a2,zero,.L740
	sll	a0,a0,a2
	li	a4,32
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a1,a1,a2
	or	a1,a5,a1
	ret
.L740:
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
	beq	a5,zero,.L742
	srai	a4,a1,31
	addi	a2,a2,-32
	sra	a0,a1,a2
.L743:
	mv	a1,a4
.L744:
	ret
.L742:
	beq	a2,zero,.L744
	sra	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L743
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mv	a5,a0
	srli	a0,a1,24
	slli	a4,a5,24
	srli	a3,a1,8
	li	t0,65536
	addi	t0,t0,-256
	and	a3,a3,t0
	or	a0,a0,a3
	slli	a2,a1,8
	srli	a3,a5,24
	or	a3,a2,a3
	li	a2,16711680
	and	a3,a3,a2
	or	a0,a0,a3
	slli	a1,a1,24
	srli	a3,a5,8
	or	a3,a1,a3
	li	t1,-16777216
	and	a3,a3,t1
	slli	t1,a5,8
	srli	t2,a5,24
	or	a4,a4,t2
	srli	a5,a5,8
	or	a5,a5,a1
	and	a5,a5,t0
	or	a5,a4,a5
	and	a1,t1,a2
	or	a0,a0,a3
	or	a1,a5,a1
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	srli	a5,a0,24
	slli	a4,a0,24
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,8
	li	a4,16711680
	and	a0,a0,a4
	or	a0,a5,a0
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
	li	a3,65536
	sltu	a3,a0,a3
	slli	a3,a3,4
	li	a5,16
	sub	a5,a5,a3
	srl	a5,a0,a5
	li	a4,65536
	addi	a4,a4,-256
	and	a4,a5,a4
	seqz	a4,a4
	slli	a4,a4,3
	li	a2,8
	sub	a2,a2,a4
	srl	a5,a5,a2
	add	a4,a4,a3
	andi	a3,a5,240
	seqz	a3,a3
	slli	a3,a3,2
	li	a2,4
	sub	a2,a2,a3
	srl	a5,a5,a2
	add	a3,a3,a4
	andi	a4,a5,12
	seqz	a4,a4
	slli	a4,a4,1
	li	a2,2
	sub	a2,a2,a4
	srl	a5,a5,a2
	srli	a2,a5,1
	andi	a2,a2,1
	li	a0,0
	bne	a2,zero,.L750
	li	a0,2
	sub	a0,a0,a5
.L750:
	add	a4,a4,a3
	add	a0,a0,a4
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	mv	a5,a0
	blt	a1,a3,.L753
	li	a0,2
	bgt	a1,a3,.L751
	li	a0,0
	bltu	a5,a2,.L751
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L753:
	li	a0,0
.L751:
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
	slli	a3,a0,16
	srli	a3,a3,16
	seqz	a3,a3
	slli	a3,a3,4
	srl	a5,a0,a3
	andi	a4,a5,255
	seqz	a4,a4
	slli	a4,a4,3
	srl	a5,a5,a4
	add	a4,a4,a3
	andi	a0,a5,15
	seqz	a0,a0
	slli	a0,a0,2
	srl	a5,a5,a0
	add	a3,a0,a4
	andi	a4,a5,3
	seqz	a4,a4
	slli	a4,a4,1
	srl	a5,a5,a4
	andi	a5,a5,3
	not	a0,a5
	andi	a0,a0,1
	srli	a5,a5,1
	li	a2,2
	sub	a2,a2,a5
	neg	a5,a0
	and	a5,a5,a2
	add	a0,a4,a3
	add	a0,a5,a0
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
	beq	a5,zero,.L761
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a4,0
.L762:
	mv	a1,a4
.L763:
	ret
.L761:
	beq	a2,zero,.L763
	srl	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L762
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
	sw	a0,0(sp)
	lhu	a3,0(sp)
	sw	a1,4(sp)
	lhu	s0,4(sp)
	mv	a1,s0
	mv	a0,a3
	sw	a3,16(sp)
	call	__mulsi3
	sw	a0,8(sp)
	srli	s1,a0,16
	lw	a4,0(sp)
	srli	a4,a4,16
	mv	a1,a4
	sw	a4,12(sp)
	mv	a0,s0
	call	__mulsi3
	add	s1,a0,s1
	lhu	s0,8(sp)
	slli	a5,s1,16
	add	a4,s0,a5
	sw	a4,0(sp)
	srli	s0,a5,16
	lw	a5,4(sp)
	srli	a1,a5,16
	sw	a1,4(sp)
	lw	a3,16(sp)
	mv	a0,a3
	call	__mulsi3
	add	a5,a0,s0
	lhu	s0,0(sp)
	slli	a3,a5,16
	sw	a5,0(sp)
	add	s0,s0,a3
	srli	s1,s1,16
	lw	a1,4(sp)
	lw	a4,12(sp)
	mv	a0,a4
	call	__mulsi3
	add	s1,s1,a0
	lw	a5,0(sp)
	srli	a1,a5,16
	mv	a0,s0
	add	a1,s1,a1
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
	sw	a0,4(sp)
	sw	a1,8(sp)
	mv	s0,a2
	sw	a3,12(sp)
	mv	a1,a2
	call	__muldsi3
	sw	a0,0(sp)
	mv	s1,a1
	lw	a1,8(sp)
	mv	a0,s0
	call	__mulsi3
	mv	s0,a0
	lw	a1,12(sp)
	lw	a0,4(sp)
	call	__mulsi3
	add	a1,s0,a0
	lw	a0,0(sp)
	add	a1,a1,s1
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
	xor	a5,a5,a1
	srli	a4,a5,8
	xor	a4,a4,a5
	srli	a5,a4,4
	xor	a5,a5,a4
	andi	a5,a5,15
	li	a0,28672
	addi	a0,a0,-1642
	sra	a0,a0,a5
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
	xor	a5,a5,a0
	srli	a0,a5,8
	xor	a0,a0,a5
	srli	a5,a0,4
	xor	a5,a5,a0
	andi	a5,a5,15
	li	a0,28672
	addi	a0,a0,-1642
	sra	a0,a0,a5
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
	slli	a4,a1,31
	srli	a5,a0,1
	or	a5,a4,a5
	srli	a3,a1,1
	li	a4,1431654400
	addi	a4,a4,1365
	and	a5,a5,a4
	and	a4,a3,a4
	sub	a5,a0,a5
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	sub	a1,a1,a0
	slli	a4,a1,30
	srli	a3,a5,2
	or	a3,a4,a3
	srli	a2,a1,2
	li	a4,858992640
	addi	a4,a4,819
	and	a3,a3,a4
	and	a2,a2,a4
	and	a5,a5,a4
	and	a1,a1,a4
	add	a5,a3,a5
	sltu	a3,a5,a3
	add	a4,a2,a1
	add	a3,a3,a4
	slli	a2,a3,28
	srli	a4,a5,4
	or	a4,a2,a4
	srli	a2,a3,4
	add	a5,a4,a5
	sltu	a4,a5,a4
	add	a3,a2,a3
	add	a4,a4,a3
	li	a3,252645376
	addi	a3,a3,-241
	and	a5,a5,a3
	and	a4,a4,a3
	add	a4,a4,a5
	srli	a5,a4,16
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
	add	a4,a4,a0
	srli	a5,a4,4
	add	a5,a5,a4
	li	a4,252645376
	addi	a4,a4,-241
	and	a5,a5,a4
	srli	a4,a5,16
	add	a5,a4,a5
	srli	a0,a5,8
	add	a0,a0,a5
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
	mv	s1,a0
	sw	a1,16(sp)
	sw	a2,52(sp)
	mv	s0,a2
	lui	a4,%hi(.LC13)
	lw	a5,%lo(.LC13)(a4)
	sw	a5,36(sp)
	lw	a5,%lo(.LC13+4)(a4)
	sw	a5,40(sp)
	j	.L777
.L775:
	srli	a4,s0,31
	add	a5,a4,s0
	srai	s0,a5,1
	beq	s0,zero,.L776
	sw	s1,0(sp)
	lw	a5,16(sp)
	sw	a5,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	s1,8(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	s1,a0
	sw	a1,16(sp)
.L777:
	andi	a4,s0,1
	beq	a4,zero,.L775
	sw	s1,20(sp)
	lw	a5,16(sp)
	sw	a5,24(sp)
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
	j	.L775
.L776:
	lw	a5,52(sp)
	blt	a5,zero,.L780
.L774:
	lw	a5,36(sp)
	sw	a5,44(sp)
	lw	a5,40(sp)
	sw	a5,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
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
.L780:
	.cfi_restore_state
	lw	a5,36(sp)
	sw	a5,56(sp)
	lw	a5,40(sp)
	sw	a5,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	sw	a0,36(sp)
	sw	a1,40(sp)
	j	.L774
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
	mv	s0,a0
	sw	a1,4(sp)
	mv	s1,a1
	lui	a3,%hi(.LC15)
	lw	a5,%lo(.LC15)(a3)
	sw	a5,0(sp)
	j	.L784
.L782:
	srli	a3,s1,31
	add	a5,a3,s1
	srai	s1,a5,1
	beq	s1,zero,.L783
	mv	a1,s0
	mv	a0,s0
	call	__mulsf3
	mv	s0,a0
.L784:
	andi	a3,s1,1
	beq	a3,zero,.L782
	mv	a1,s0
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L782
.L783:
	lw	a5,4(sp)
	blt	a5,zero,.L787
.L781:
	lw	a0,0(sp)
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
.L787:
	.cfi_restore_state
	lw	a1,0(sp)
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	sw	a0,0(sp)
	j	.L781
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	mv	a5,a0
	bltu	a1,a3,.L790
	li	a0,2
	bgtu	a1,a3,.L788
	li	a0,0
	bltu	a5,a2,.L788
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L790:
	li	a0,0
.L788:
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
	.set	.LC7,.LC11+12
	.section	.srodata.cst4
	.align	2
.LC8:
	.word	1056964608
	.set	.LC9,.LC11+8
	.section	.srodata.cst8
	.align	3
.LC10:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC12:
	.word	0
	.word	0
	.word	0
	.word	1073610752
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
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.sbss,"aw",@nobits
	.align	3
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.zero	1
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
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
