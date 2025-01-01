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
	bne	a5,a2,.L5
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
	andi	a2,a2,0xff
	beq	a3,zero,.L16
.L9:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a2,a5,.L17
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a3,zero,.L9
	li	a0,0
	ret
.L16:
	li	a0,0
	ret
.L17:
	addi	a0,a0,1
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
	beq	a2,zero,.L24
.L19:
	lbu	a5,0(a0)
	beq	a1,a5,.L25
	addi	a0,a0,1
	addi	a2,a2,-1
	bne	a2,zero,.L19
	li	a0,0
	ret
.L24:
	li	a0,0
	ret
.L25:
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
	beq	a2,zero,.L34
.L27:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L35
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L27
	li	a0,0
	ret
.L34:
	li	a0,0
	ret
.L35:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
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
	beq	a2,zero,.L37
	add	a2,a0,a2
	mv	a5,a0
.L38:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a5,a2,.L38
.L37:
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
.L41:
	beq	a2,a4,.L44
	mv	a0,a2
	lbu	a5,0(a2)
	addi	a2,a2,-1
	bne	a1,a5,.L41
	ret
.L44:
	li	a0,0
.L40:
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
	beq	a2,zero,.L46
	add	a2,a0,a2
	mv	a5,a0
	andi	a1,a1,0xff
.L47:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a5,a2,.L47
.L46:
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
	beq	a5,zero,.L50
.L51:
	addi	a1,a1,1
	addi	a0,a0,1
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L51
.L50:
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
	beq	a5,zero,.L59
.L54:
	lbu	a5,0(a0)
	beq	a1,a5,.L53
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L54
.L53:
	ret
.L59:
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
.L62:
	lbu	a5,0(a0)
	beq	a1,a5,.L61
	addi	a0,a0,1
	bne	a5,zero,.L62
	li	a0,0
.L61:
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
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L66
.L65:
	lbu	a5,0(a0)
	beq	a5,zero,.L66
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	beq	a4,a5,.L65
.L66:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L72
	mv	a5,a0
.L71:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L71
.L70:
	sub	a0,a5,a0
	ret
.L72:
	mv	a5,a0
	j	.L70
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	addi	a3,a2,-1
	beq	a2,zero,.L79
	lbu	a5,0(a0)
	beq	a5,zero,.L76
	add	a3,a0,a3
.L77:
	lbu	a5,0(a1)
	beq	a5,zero,.L76
	beq	a0,a3,.L80
	lbu	a4,0(a0)
	bne	a5,a4,.L76
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	bne	a5,zero,.L77
	j	.L76
.L80:
	mv	a0,a3
.L76:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	sub	a0,a0,a5
	ret
.L79:
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
	ble	a2,a5,.L81
	addi	a5,a2,-2
	andi	a5,a5,-2
	addi	a5,a5,2
	add	a5,a0,a5
.L83:
	lbu	a4,1(a0)
	sb	a4,0(a1)
	lbu	a4,0(a0)
	sb	a4,1(a1)
	addi	a1,a1,2
	addi	a0,a0,2
	bne	a0,a5,.L83
.L81:
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
	beq	a0,a5,.L89
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L89:
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
	bleu	a0,a5,.L92
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L92:
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
	beq	a0,a5,.L99
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L99:
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
	bleu	a0,a4,.L103
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L101
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L101
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L103:
	li	a0,1
.L101:
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
	bleu	a0,a4,.L114
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L107
	li	a4,-8192
	addi	a4,a4,-42
	add	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L107
	li	a3,-57344
	add	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L107
	li	a4,-65536
	addi	a4,a4,4
	add	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L107
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L107:
	ret
.L114:
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
	bleu	a4,a5,.L117
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L117:
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
	bne	a0,zero,.L122
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	bne	a0,zero,.L123
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
	ble	a0,zero,.L126
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
.L119:
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
.L122:
	.cfi_restore_state
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L119
.L123:
	mv	a0,s1
	mv	a1,s0
	j	.L119
.L126:
	li	a0,0
	li	a1,0
	j	.L119
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
	bne	a0,zero,.L131
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L132
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L135
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
.L128:
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
.L131:
	.cfi_restore_state
	mv	a0,s0
	j	.L128
.L132:
	mv	a0,s1
	j	.L128
.L135:
	mv	a0,zero
	j	.L128
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
	bne	a0,zero,.L143
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
	bne	a0,zero,.L144
	li	a5,-2147483648
	and	a4,s0,a5
	and	a5,s1,a5
	beq	a4,a5,.L139
	beq	a4,zero,.L145
	lw	a5,0(sp)
	mv	s0,s1
.L137:
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
.L139:
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
	bge	a0,zero,.L141
	lw	a5,0(sp)
	mv	s0,s1
	j	.L137
.L141:
	lw	a5,28(sp)
	j	.L137
.L143:
	lw	a5,0(sp)
	mv	s0,s1
	j	.L137
.L144:
	lw	a5,28(sp)
	j	.L137
.L145:
	lw	a5,28(sp)
	j	.L137
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
	mv	s0,a0
	mv	s1,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L153
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L154
	li	a5,-2147483648
	and	a4,a5,s0
	and	a5,a5,s1
	beq	a4,a5,.L149
	mv	a0,s0
	beq	a4,zero,.L147
	mv	a0,s1
	j	.L147
.L149:
	mv	a1,s1
	mv	a0,s0
	call	__ltsf2
	bge	a0,zero,.L152
	mv	s0,s1
.L152:
	mv	a0,s0
.L147:
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
.L153:
	.cfi_restore_state
	mv	a0,s1
	j	.L147
.L154:
	mv	a0,s0
	j	.L147
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
	bne	a0,zero,.L173
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
	bne	a0,zero,.L174
	li	a5,-2147483648
	and	a4,s1,a5
	lw	a3,0(sp)
	and	a5,a3,a5
	beq	a4,a5,.L163
	beq	a4,zero,.L164
	lw	a5,4(sp)
	sw	a5,16(sp)
	lw	a5,8(sp)
	sw	a5,20(sp)
	lw	a5,12(sp)
	sw	a5,24(sp)
	mv	s1,a3
.L164:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L157
.L173:
	lw	a5,4(sp)
	sw	a5,0(s0)
	lw	a5,8(sp)
	sw	a5,4(s0)
	lw	a5,12(sp)
	sw	a5,8(s0)
	lw	a5,0(sp)
	sw	a5,12(s0)
	j	.L157
.L174:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L157
.L163:
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
	bge	a0,zero,.L166
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	s1,0(sp)
.L167:
	sw	a3,0(s0)
	sw	a4,4(s0)
	sw	a5,8(s0)
	sw	s1,12(s0)
.L157:
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
	lw	a3,16(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	j	.L167
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
	bne	a0,zero,.L181
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
	bne	a0,zero,.L182
	li	a5,-2147483648
	and	a4,s1,a5
	and	a5,s0,a5
	beq	a4,a5,.L177
	beq	a4,zero,.L183
	lw	a5,8(sp)
	mv	s0,s1
.L175:
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
.L177:
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
	bge	a0,zero,.L179
	lw	a5,8(sp)
	mv	s0,s1
	j	.L175
.L179:
	lw	a5,12(sp)
	j	.L175
.L181:
	lw	a5,12(sp)
	j	.L175
.L182:
	lw	a5,8(sp)
	mv	s0,s1
	j	.L175
.L183:
	lw	a5,12(sp)
	j	.L175
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
	bne	a0,zero,.L191
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L192
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L187
	mv	a0,s0
	beq	a4,zero,.L185
	mv	a0,s1
	j	.L185
.L187:
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	bge	a0,zero,.L190
	mv	s0,s1
.L190:
	mv	a0,s0
.L185:
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
.L191:
	.cfi_restore_state
	mv	a0,s0
	j	.L185
.L192:
	mv	a0,s1
	j	.L185
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
	lw	a1,12(a1)
	sw	a1,12(sp)
	lw	a0,0(a2)
	sw	a0,0(sp)
	lw	a0,4(a2)
	sw	a0,4(sp)
	lw	a0,8(a2)
	sw	a0,8(sp)
	lw	s1,12(a2)
	sw	a5,44(sp)
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	a1,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	a1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L211
	lw	a5,0(sp)
	sw	a5,44(sp)
	lw	a4,4(sp)
	sw	a4,48(sp)
	lw	a3,8(sp)
	sw	a3,52(sp)
	sw	s1,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	bne	a0,zero,.L212
	li	a5,-2147483648
	lw	a3,12(sp)
	and	a4,a3,a5
	and	a5,s1,a5
	beq	a4,a5,.L201
	beq	a4,zero,.L202
	lw	a5,16(sp)
	sw	a5,0(sp)
	lw	a5,20(sp)
	sw	a5,4(sp)
	lw	a5,24(sp)
	sw	a5,8(sp)
	mv	s1,a3
.L202:
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L195
.L211:
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	sw	s1,12(s0)
	j	.L195
.L212:
	lw	a5,16(sp)
	sw	a5,0(s0)
	lw	a5,20(sp)
	sw	a5,4(s0)
	lw	a5,24(sp)
	sw	a5,8(s0)
	lw	a5,12(sp)
	sw	a5,12(s0)
	j	.L195
.L201:
	lw	a5,16(sp)
	sw	a5,44(sp)
	lw	a4,20(sp)
	sw	a4,48(sp)
	lw	a2,24(sp)
	sw	a2,52(sp)
	lw	a1,12(sp)
	sw	a1,56(sp)
	lw	a0,0(sp)
	sw	a0,28(sp)
	lw	a0,4(sp)
	sw	a0,32(sp)
	lw	a0,8(sp)
	sw	a0,36(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	bge	a0,zero,.L204
	lw	a3,16(sp)
	lw	a4,20(sp)
	lw	a5,24(sp)
	lw	s1,12(sp)
.L205:
	sw	a3,0(s0)
	sw	a4,4(s0)
	sw	a5,8(s0)
	sw	s1,12(s0)
.L195:
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
.L204:
	.cfi_restore_state
	lw	a3,0(sp)
	lw	a4,4(sp)
	lw	a5,8(sp)
	j	.L205
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
	beq	a0,zero,.L216
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(digits)
.L215:
	andi	a3,a0,63
	addi	a5,a2,%lo(digits)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
	bne	a0,zero,.L215
.L214:
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	ret
.L216:
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	j	.L214
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
	beq	a1,zero,.L224
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L221
	sw	a0,4(a5)
.L221:
	ret
.L224:
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
	beq	a5,zero,.L226
	lw	a4,4(a0)
	sw	a4,4(a5)
.L226:
	lw	a5,4(a0)
	beq	a5,zero,.L225
	lw	a4,0(a0)
	sw	a4,0(a5)
.L225:
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
	beq	a5,zero,.L229
	sw	s1,28(sp)
	mv	s0,a1
	.cfi_offset 9, -12
	li	s1,0
.L231:
	sw	s0,0(sp)
	mv	a1,s0
	lw	a0,4(sp)
	lw	a5,16(sp)
	jalr	a5
	beq	a0,zero,.L234
	addi	s1,s1,1
	lw	a5,12(sp)
	add	s0,s0,a5
	lw	a5,8(sp)
	bne	s1,a5,.L231
	lw	s1,28(sp)
	.cfi_restore 9
.L229:
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
.L228:
	lw	a0,0(sp)
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L234:
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
	j	.L228
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
	beq	a5,zero,.L238
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	li	s1,0
.L237:
	sw	s0,0(sp)
	mv	a1,s0
	lw	a0,4(sp)
	lw	a5,8(sp)
	jalr	a5
	beq	a0,zero,.L241
	addi	s1,s1,1
	lw	a5,16(sp)
	add	s0,s0,a5
	lw	a5,12(sp)
	bne	s1,a5,.L237
	sw	zero,0(sp)
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	j	.L235
.L238:
	sw	zero,0(sp)
	j	.L235
.L241:
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L235:
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
	mv	s0,a0
	j	.L244
.L245:
	addi	s0,s0,1
.L244:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L245
	li	a5,43
	beq	s1,a5,.L251
	li	a5,45
	mv	a4,a0
	bne	s1,a5,.L247
	li	a4,1
.L246:
	addi	s0,s0,1
.L247:
	lbu	a5,0(s0)
	addi	a5,a5,-48
	li	a3,9
	bgtu	a5,a3,.L248
.L249:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s0,s0,1
	lbu	a0,-1(s0)
	addi	a0,a0,-48
	sub	a0,a5,a0
	lbu	a5,0(s0)
	addi	a5,a5,-48
	bleu	a5,a3,.L249
.L248:
	bne	a4,zero,.L243
	neg	a0,a0
.L243:
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
.L251:
	.cfi_restore_state
	mv	a4,a0
	j	.L246
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
	mv	s0,a0
	j	.L256
.L257:
	addi	s0,s0,1
.L256:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L257
	li	a5,43
	beq	s1,a5,.L263
	li	a5,45
	mv	a4,a0
	bne	s1,a5,.L259
	li	a4,1
.L258:
	addi	s0,s0,1
.L259:
	lbu	a5,0(s0)
	addi	a5,a5,-48
	li	a3,9
	bgtu	a5,a3,.L260
.L261:
	slli	a5,a0,2
	add	a5,a5,a0
	slli	a5,a5,1
	addi	s0,s0,1
	lbu	a0,-1(s0)
	addi	a0,a0,-48
	sub	a0,a5,a0
	lbu	a5,0(s0)
	addi	a5,a5,-48
	bleu	a5,a3,.L261
.L260:
	bne	a4,zero,.L255
	neg	a0,a0
.L255:
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
.L263:
	.cfi_restore_state
	mv	a4,a0
	j	.L258
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
	j	.L268
.L269:
	addi	s0,s0,1
.L268:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L269
	li	a5,43
	beq	s1,a5,.L270
	li	a5,45
	bne	s1,a5,.L271
	li	a0,1
.L270:
	addi	s0,s0,1
.L271:
	lbu	a5,0(s0)
	addi	a5,a5,-48
	li	a4,9
	bgtu	a5,a4,.L275
	li	a4,0
	li	a1,0
	li	a2,9
.L273:
	srli	a5,a4,30
	slli	t1,a1,2
	or	t1,a5,t1
	slli	a5,a4,2
	add	a3,a5,a4
	sltu	a5,a3,a5
	add	t1,t1,a1
	add	a5,a5,t1
	srli	a4,a3,31
	slli	a5,a5,1
	or	a5,a4,a5
	slli	a3,a3,1
	addi	s0,s0,1
	lbu	a4,-1(s0)
	addi	a4,a4,-48
	srai	a1,a4,31
	sub	a4,a3,a4
	sgtu	a3,a4,a3
	sub	a5,a5,a1
	sub	a1,a5,a3
	lbu	a5,0(s0)
	addi	a5,a5,-48
	bleu	a5,a2,.L273
.L272:
	bne	a0,zero,.L267
	snez	a5,a4
	neg	a1,a1
	sub	a1,a1,a5
	neg	a4,a4
.L267:
	mv	a0,a4
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
.L275:
	.cfi_restore_state
	li	a4,0
	li	a1,0
	j	.L272
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
	mv	s0,a2
	sw	a3,8(sp)
	sw	a4,16(sp)
	beq	a2,zero,.L282
	sw	s1,20(sp)
	.cfi_offset 9, -12
	j	.L281
.L283:
	mv	s0,s1
.L280:
	beq	s0,zero,.L287
.L281:
	srli	s1,s0,1
	lw	a1,8(sp)
	mv	a0,s1
	call	__mulsi3
	lw	a5,4(sp)
	add	a5,a5,a0
	sw	a5,0(sp)
	mv	a1,a5
	lw	a0,12(sp)
	lw	a5,16(sp)
	jalr	a5
	blt	a0,zero,.L283
	ble	a0,zero,.L286
	lw	a5,0(sp)
	lw	a4,8(sp)
	add	a5,a5,a4
	sw	a5,4(sp)
	addi	s0,s0,-1
	sub	s0,s0,s1
	j	.L280
.L287:
	sw	zero,0(sp)
	lw	s1,20(sp)
	.cfi_restore 9
.L278:
	lw	a0,0(sp)
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L282:
	.cfi_restore_state
	sw	zero,0(sp)
	j	.L278
.L286:
	.cfi_offset 9, -12
	lw	s1,20(sp)
	.cfi_restore 9
	j	.L278
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
	sw	a1,0(sp)
	sw	a3,4(sp)
	sw	a4,12(sp)
	sw	a5,16(sp)
	mv	s0,a2
	bne	a2,zero,.L291
	li	s1,0
	j	.L288
.L290:
	srai	s0,s0,1
	beq	s0,zero,.L295
.L291:
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
	beq	a0,zero,.L288
	ble	a0,zero,.L290
	lw	a5,4(sp)
	add	a5,s1,a5
	sw	a5,0(sp)
	addi	s0,s0,-1
	j	.L290
.L295:
	li	s1,0
.L288:
	mv	a0,s1
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
	lw	a5,0(a0)
	beq	a5,zero,.L314
.L308:
	lw	a5,0(a0)
	beq	a1,a5,.L310
	addi	a0,a0,4
	lw	a5,0(a0)
	bne	a5,zero,.L308
.L310:
	lw	a5,0(a0)
	snez	a5,a5
	neg	a5,a5
	and	a0,a0,a5
	ret
.L314:
	li	a0,0
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
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L317
.L316:
	lw	a5,0(a0)
	beq	a5,zero,.L317
	lw	a5,0(a1)
	beq	a5,zero,.L317
	addi	a0,a0,4
	addi	a1,a1,4
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L316
.L317:
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L315
	sgt	a0,a4,a5
.L315:
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
.L323:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L323
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
	beq	a5,zero,.L328
	mv	a5,a0
.L327:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L327
.L326:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L328:
	mv	a5,a0
	j	.L326
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	beq	a2,zero,.L338
.L331:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L333
	beq	a5,zero,.L333
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L331
	li	a0,0
	ret
.L338:
	li	a0,0
	ret
.L333:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	bge	a4,a5,.L330
	li	a0,-1
.L330:
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
	beq	a2,zero,.L345
.L340:
	lw	a5,0(a0)
	beq	a1,a5,.L346
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a2,zero,.L340
	li	a0,0
	ret
.L345:
	li	a0,0
	ret
.L346:
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
	beq	a2,zero,.L356
.L348:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L357
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L348
	li	a0,0
	ret
.L356:
	li	a0,0
	ret
.L357:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	bge	a4,a5,.L347
	li	a0,-1
.L347:
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
	addi	a5,a2,-1
	beq	a2,zero,.L359
	mv	a4,a0
	li	a2,-1
.L360:
	addi	a1,a1,4
	addi	a4,a4,4
	lw	a3,-4(a1)
	sw	a3,-4(a4)
	addi	a5,a5,-1
	bne	a5,a2,.L360
.L359:
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
	beq	a0,a1,.L363
	sub	a5,a0,a1
	slli	a4,a2,2
	bltu	a5,a4,.L364
	addi	a4,a2,-1
	mv	a5,a0
	li	t1,-1
	beq	a2,zero,.L371
.L365:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a3,-4(a1)
	sw	a3,-4(a5)
	addi	a4,a4,-1
	bne	a4,t1,.L365
.L363:
	ret
.L371:
	ret
.L364:
	addi	a5,a2,-1
	beq	a2,zero,.L363
	slli	a5,a5,2
	li	a2,-4
.L366:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L366
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
	beq	a2,zero,.L373
	mv	a4,a0
	li	a3,-1
.L374:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L374
.L373:
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
	bgeu	a0,a1,.L377
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L376
.L379:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L379
	ret
.L377:
	beq	a0,a1,.L376
	beq	a2,zero,.L376
	add	a2,a0,a2
.L380:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a0,a2,.L380
.L376:
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
	blt	a4,zero,.L384
	sll	a4,a0,a4
	li	a3,0
.L385:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L386
	srl	a0,a1,a5
	li	a1,0
.L387:
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L384:
	srli	a5,a0,1
	li	a4,31
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a4,a1,a2
	or	a4,a5,a4
	sll	a3,a0,a2
	j	.L385
.L386:
	slli	a5,a1,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	sll	a5,a5,t1
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
	j	.L387
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
	blt	a4,zero,.L389
	srl	a4,a1,a4
	li	a3,0
.L390:
	neg	a5,a2
	andi	a5,a5,63
	addi	a5,a5,-32
	blt	a5,zero,.L391
	sll	a1,a0,a5
	li	a0,0
.L392:
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L389:
	slli	a5,a1,1
	li	a4,31
	sub	a4,a4,a2
	sll	a5,a5,a4
	srl	a4,a0,a2
	or	a4,a5,a4
	srl	a3,a1,a2
	j	.L390
.L391:
	srli	a5,a0,1
	neg	a2,a2
	andi	a2,a2,63
	li	t1,31
	sub	t1,t1,a2
	srl	a5,a5,t1
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
	j	.L392
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
.L407:
	srl	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L409
	addi	a5,a5,1
	bne	a5,a3,.L407
	li	a0,0
	ret
.L409:
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
	beq	a0,zero,.L410
	andi	a0,a0,1
	bne	a0,zero,.L410
	li	a0,1
.L412:
	srai	a5,a5,1
	addi	a0,a0,1
	andi	a4,a5,1
	beq	a4,zero,.L412
	ret
.L410:
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
	blt	a0,zero,.L418
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L415:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L418:
	.cfi_restore_state
	li	a0,1
	j	.L415
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
	blt	a0,zero,.L423
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
.L420:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L423:
	.cfi_restore_state
	li	a0,1
	j	.L420
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
	blt	a0,zero,.L428
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
.L425:
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
.L428:
	.cfi_restore_state
	li	a0,1
	j	.L425
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
	bne	a0,zero,.L433
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,a0
	mv	a0,s1
	call	__nesf2
	beq	a0,zero,.L433
	blt	s0,zero,.L441
	lui	a5,%hi(.LC7)
	lw	s1,%lo(.LC7)(a5)
	j	.L437
.L441:
	lui	a5,%hi(.LC8)
	lw	s1,%lo(.LC8)(a5)
	j	.L437
.L436:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L433
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L437:
	andi	a5,s0,1
	beq	a5,zero,.L436
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L436
.L433:
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
	bne	a0,zero,.L443
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
	beq	a0,zero,.L443
	blt	s0,zero,.L451
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	sw	a4,20(sp)
	lw	s1,%lo(.LC9+4)(a5)
	j	.L447
.L451:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	sw	a4,20(sp)
	lw	s1,%lo(.LC10+4)(a5)
	j	.L447
.L446:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L443
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
.L447:
	andi	a5,s0,1
	beq	a5,zero,.L446
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
	j	.L446
.L443:
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
	bne	a0,zero,.L453
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
	beq	a0,zero,.L461
	blt	s0,zero,.L463
	lui	a5,%hi(.LC11)
	sw	zero,16(sp)
	lw	s1,%lo(.LC11+4)(a5)
	lw	a4,%lo(.LC11+8)(a5)
	sw	a4,20(sp)
	lw	a5,%lo(.LC11+12)(a5)
	sw	a5,24(sp)
	j	.L457
.L463:
	lui	a5,%hi(.LC12)
	sw	zero,16(sp)
	lw	s1,%lo(.LC12+4)(a5)
	lw	a4,%lo(.LC12+8)(a5)
	sw	a4,20(sp)
	lw	a5,%lo(.LC12+12)(a5)
	sw	a5,24(sp)
	j	.L457
.L456:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L462
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
.L457:
	andi	a5,s0,1
	beq	a5,zero,.L456
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
	j	.L456
.L461:
	lw	s1,80(sp)
	.cfi_restore 9
.L453:
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
.L462:
	.cfi_def_cfa_offset 92
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,80(sp)
	.cfi_restore 9
	j	.L453
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L465
	add	a2,a1,a2
	mv	a5,a0
.L466:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a1,a2,.L466
.L465:
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
	beq	s0,zero,.L470
.L469:
	lbu	a5,0(s1)
	sb	a5,0(a0)
	beq	a5,zero,.L472
	addi	s1,s1,1
	addi	a0,a0,1
	addi	s0,s0,-1
	bne	s0,zero,.L469
.L470:
	sb	zero,0(a0)
.L472:
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
	beq	a1,zero,.L482
.L476:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L483
.L475:
	ret
.L482:
	mv	a0,a1
	ret
.L483:
	addi	a0,a0,1
	bne	a0,a1,.L476
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
	lbu	a5,0(a0)
	beq	a5,zero,.L491
.L485:
	mv	a5,a1
.L488:
	lbu	a4,0(a5)
	beq	a4,zero,.L492
	addi	a5,a5,1
	lbu	a3,0(a0)
	bne	a3,a4,.L488
.L486:
	ret
.L491:
	li	a0,0
	ret
.L492:
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L485
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
	j	.L495
.L494:
	addi	a5,a5,1
	beq	a4,zero,.L498
.L495:
	lbu	a4,0(a5)
	bne	a1,a4,.L494
	mv	a0,a5
	j	.L494
.L498:
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
	beq	a0,zero,.L499
	lbu	a5,0(s1)
	sw	a5,0(sp)
.L501:
	lw	a1,0(sp)
	mv	a0,s0
	call	strchr
	mv	s0,a0
	beq	a0,zero,.L499
	lw	a2,4(sp)
	mv	a1,s1
	mv	a0,s0
	call	strncmp
	beq	a0,zero,.L499
	addi	s0,s0,1
	j	.L501
.L499:
	mv	a0,s0
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
	sw	a2,8(sp)
	sw	a3,12(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L516
	li	a2,0
	li	a3,0
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__gtdf2
	ble	a0,zero,.L509
	li	a2,0
	li	a3,0
	lw	a5,8(sp)
	sw	a5,24(sp)
	lw	a5,12(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__ltdf2
	blt	a0,zero,.L508
.L509:
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
.L516:
	.cfi_restore_state
	li	a2,0
	li	a3,0
	lw	a5,8(sp)
	sw	a5,32(sp)
	lw	a5,12(sp)
	sw	a5,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	call	__gtdf2
	ble	a0,zero,.L509
.L508:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L509
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
	sub	s1,a1,a3
	add	s1,a0,s1
	beq	a3,zero,.L517
	bltu	a1,a3,.L522
	bgtu	a0,s1,.L523
	lbu	a5,0(a2)
	sw	a5,0(sp)
	addi	a5,a2,1
	sw	a5,4(sp)
	addi	a5,a3,-1
	sw	a5,8(sp)
	j	.L520
.L519:
	addi	s0,s0,1
	bltu	s1,s0,.L527
.L520:
	lbu	a5,0(s0)
	lw	a4,0(sp)
	bne	a5,a4,.L519
	lw	a2,8(sp)
	lw	a1,4(sp)
	addi	a0,s0,1
	call	memcmp
	bne	a0,zero,.L519
	mv	a0,s0
	j	.L517
.L527:
	li	a0,0
.L517:
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
.L522:
	.cfi_restore_state
	li	a0,0
	j	.L517
.L523:
	li	a0,0
	j	.L517
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
	blt	a0,zero,.L556
	sw	zero,60(sp)
.L531:
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
	blt	a0,zero,.L552
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,28(sp)
	sw	a5,32(sp)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,20(sp)
	sw	a5,24(sp)
.L535:
	addi	s1,s1,1
	lw	a2,28(sp)
	lw	a3,32(sp)
	lw	a5,0(sp)
	sw	a5,4(sp)
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
	bge	a0,zero,.L535
.L536:
	lw	a5,64(sp)
	sw	s1,0(a5)
	lw	a5,60(sp)
	beq	a5,zero,.L540
	li	a5,-2147483648
	xor	s0,s0,a5
.L540:
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
.L556:
	.cfi_restore_state
	li	a5,-2147483648
	xor	s0,s0,a5
	li	a5,1
	sw	a5,60(sp)
	j	.L531
.L552:
	lui	a5,%hi(.LC10)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	lw	s1,0(sp)
	sw	s1,68(sp)
	sw	s0,72(sp)
	lw	a0,68(sp)
	lw	a1,72(sp)
	call	__ltdf2
	bge	a0,zero,.L553
	li	a2,0
	li	a3,0
	sw	s1,76(sp)
	sw	s0,80(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	call	__nedf2
	li	s1,0
	beq	a0,zero,.L536
	li	s1,0
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,4(sp)
	sw	a5,8(sp)
.L539:
	addi	s1,s1,-1
	lw	a1,0(sp)
	sw	a1,28(sp)
	sw	s0,32(sp)
	lw	a2,28(sp)
	lw	a3,32(sp)
	sw	a1,44(sp)
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
	blt	a0,zero,.L539
	j	.L536
.L553:
	li	s1,0
	j	.L536
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
	beq	a1,zero,.L561
	li	a0,0
	li	a1,0
.L560:
	andi	a5,a4,1
	neg	t0,a5
	mv	a5,t0
	and	t0,a2,t0
	and	a5,a3,a5
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
	bne	a5,zero,.L560
	ret
.L561:
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
	li	a0,32
	li	a5,1
	bgeu	a1,a4,.L568
.L564:
	blt	a1,zero,.L568
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L566
	addi	a0,a0,-1
	bne	a0,zero,.L564
.L567:
	bne	a2,zero,.L578
.L563:
	ret
.L566:
	mv	a0,a5
	beq	a5,zero,.L567
.L568:
	li	a0,0
	j	.L571
.L570:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L567
.L571:
	bltu	a4,a1,.L570
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L570
.L578:
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
	beq	a0,zero,.L581
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
.L581:
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
	srai	a5,a1,31
	xor	a0,a5,a0
	xor	a1,a5,a1
	or	a5,a0,a1
	beq	a5,zero,.L589
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
.L589:
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
	beq	a0,zero,.L597
	li	a0,0
.L596:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L596
	ret
.L597:
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
	bgeu	a0,a1,.L600
.L603:
	beq	a3,zero,.L602
	mv	a5,a1
	mv	a4,a0
	slli	a3,a3,3
	add	a3,a1,a3
.L606:
	lw	t1,0(a5)
	lw	t2,4(a5)
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a5,a5,8
	addi	a4,a4,8
	bne	a5,a3,.L606
.L602:
	bleu	a2,t0,.L599
	add	a5,a1,t0
	add	a0,a0,t0
	add	a2,a2,a1
.L607:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a2,.L607
	ret
.L600:
	add	a5,a1,a2
	bltu	a5,a0,.L603
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L612
.L604:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L604
.L599:
	ret
.L612:
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
	bgeu	a0,a1,.L614
.L617:
	beq	t1,zero,.L616
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,a1,t1
.L620:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,t1,.L620
.L616:
	andi	a5,a2,1
	beq	a5,zero,.L613
	addi	a2,a2,-1
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	ret
.L614:
	add	a5,a1,a2
	bltu	a5,a0,.L617
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L624
.L618:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L618
.L613:
	ret
.L624:
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
	bgeu	a0,a1,.L626
.L629:
	beq	t1,zero,.L628
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,2
	add	t1,a1,t1
.L632:
	lw	a3,0(a5)
	sw	a3,0(a4)
	addi	a5,a5,4
	addi	a4,a4,4
	bne	a5,t1,.L632
.L628:
	bleu	a2,t0,.L625
	add	a5,a1,t0
	add	a0,a0,t0
	add	a2,a2,a1
.L633:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a2,.L633
	ret
.L626:
	add	a5,a1,a2
	bltu	a5,a0,.L629
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L638
.L630:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L630
.L625:
	ret
.L638:
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
.L653:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L651
	addi	a0,a0,1
	bne	a0,a2,.L653
.L651:
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
.L657:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L655
	addi	a0,a0,1
	bne	a0,a3,.L657
.L655:
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
	bge	a0,zero,.L666
	mv	a0,s0
	call	__fixsfsi
.L659:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L666:
	.cfi_restore_state
	lui	a5,%hi(.LC14)
	lw	a1,%lo(.LC14)(a5)
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L659
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
.L668:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
	bne	a5,a2,.L668
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
.L671:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
	bne	a5,a2,.L671
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
	beq	a0,zero,.L676
	li	a0,0
.L675:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L675
	ret
.L676:
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
	beq	a0,zero,.L681
	beq	a1,zero,.L682
	li	a0,0
.L680:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	add	a0,a0,a5
	slli	a4,a4,1
	srli	a1,a1,1
	bne	a1,zero,.L680
	ret
.L681:
	ret
.L682:
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
	li	a0,32
	li	a5,1
	bgeu	a1,a4,.L689
.L685:
	blt	a1,zero,.L689
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L687
	addi	a0,a0,-1
	bne	a0,zero,.L685
.L688:
	bne	a2,zero,.L699
.L684:
	ret
.L687:
	mv	a0,a5
	beq	a5,zero,.L688
.L689:
	li	a0,0
	j	.L692
.L691:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L688
.L692:
	bltu	a4,a1,.L691
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L691
.L699:
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
	blt	a0,zero,.L703
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L700:
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
.L703:
	.cfi_restore_state
	li	a0,-1
	j	.L700
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
	blt	a0,zero,.L708
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
.L705:
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
.L708:
	.cfi_restore_state
	li	a0,-1
	j	.L705
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
	blt	a1,zero,.L722
	li	a2,0
	beq	a1,zero,.L723
.L719:
	li	a4,32
	li	a0,0
.L717:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	add	a0,a0,a5
	slli	a3,a3,1
	srai	a1,a1,1
	beq	a1,zero,.L716
	addi	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L717
.L716:
	beq	a2,zero,.L714
	neg	a0,a0
	ret
.L722:
	neg	a1,a1
	li	a2,1
	j	.L719
.L723:
	mv	a0,a1
.L714:
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	blt	a0,zero,.L733
	blt	a1,zero,.L734
	li	a2,0
	call	__udivmodsi4
	j	.L724
.L733:
	neg	a0,a0
	blt	a1,zero,.L735
	li	a2,0
	call	__udivmodsi4
.L728:
	neg	a0,a0
.L724:
	lw	ra,0(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L734:
	.cfi_restore_state
	li	a2,0
	neg	a1,a1
	call	__udivmodsi4
	j	.L728
.L735:
	li	a2,0
	neg	a1,a1
	call	__udivmodsi4
	j	.L724
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	blt	a0,zero,.L740
	srai	a5,a1,31
	xor	a1,a5,a1
	li	a2,1
	sub	a1,a1,a5
	call	__udivmodsi4
	j	.L736
.L740:
	srai	a5,a1,31
	xor	a1,a5,a1
	li	a2,1
	sub	a1,a1,a5
	neg	a0,a0
	call	__udivmodsi4
	neg	a0,a0
.L736:
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	mv	t1,a0
	li	a4,16
	li	a5,1
	bgeu	a1,a0,.L746
.L742:
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L746
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	t1,a1,.L744
	addi	a4,a4,-1
	bne	a4,zero,.L742
	li	a0,0
.L745:
	bne	a2,zero,.L756
.L750:
	ret
.L744:
	mv	a0,a5
	beq	a5,zero,.L745
.L746:
	li	a0,0
	j	.L749
.L748:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L745
.L749:
	bltu	t1,a1,.L748
	sub	t1,t1,a1
	slli	t1,t1,16
	srli	t1,t1,16
	or	a0,a0,a5
	slli	a0,a0,16
	srli	a0,a0,16
	j	.L748
.L756:
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
	li	a0,32
	li	a5,1
	bgeu	a1,a4,.L762
.L758:
	blt	a1,zero,.L762
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L760
	addi	a0,a0,-1
	bne	a0,zero,.L758
.L761:
	bne	a2,zero,.L772
.L757:
	ret
.L760:
	mv	a0,a5
	beq	a5,zero,.L761
.L762:
	li	a0,0
	j	.L765
.L764:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L761
.L765:
	bltu	a4,a1,.L764
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L764
.L772:
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
	beq	a4,zero,.L774
	li	a0,0
	addi	a2,a2,-32
	sll	a1,a5,a2
	ret
.L774:
	beq	a2,zero,.L777
	sll	a0,a0,a2
	sll	a1,a1,a2
	li	a4,32
	sub	a4,a4,a2
	srl	a5,a5,a4
	or	a1,a5,a1
	ret
.L777:
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
	beq	a5,zero,.L779
	srai	a4,a1,31
	addi	a2,a2,-32
	sra	a0,a1,a2
.L780:
	mv	a1,a4
.L781:
	ret
.L779:
	beq	a2,zero,.L781
	sra	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L780
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
	li	a3,65536
	sltu	a3,a0,a3
	slli	a3,a3,4
	li	a5,16
	sub	a5,a5,a3
	srl	a4,a0,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	seqz	a5,a5
	slli	a5,a5,3
	li	a2,8
	sub	a2,a2,a5
	srl	a4,a4,a2
	add	a5,a5,a3
	andi	a3,a4,240
	seqz	a3,a3
	slli	a3,a3,2
	li	a2,4
	sub	a2,a2,a3
	srl	a4,a4,a2
	add	a5,a5,a3
	andi	a3,a4,12
	seqz	a3,a3
	slli	a3,a3,1
	li	a2,2
	sub	a1,a2,a3
	srl	a4,a4,a1
	add	a5,a5,a3
	and	a0,a4,a2
	seqz	a0,a0
	sub	a2,a2,a4
	neg	a0,a0
	and	a0,a0,a2
	add	a0,a5,a0
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
	blt	a1,a3,.L789
	li	a0,2
	bgt	a1,a3,.L788
	li	a0,0
	bltu	a5,a2,.L788
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L789:
	li	a0,0
.L788:
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
	srl	a5,a0,a4
	andi	a0,a5,255
	seqz	a0,a0
	slli	a0,a0,3
	srl	a5,a5,a0
	add	a4,a0,a4
	andi	a3,a5,15
	seqz	a3,a3
	slli	a3,a3,2
	srl	a5,a5,a3
	add	a4,a4,a3
	andi	a3,a5,3
	seqz	a3,a3
	slli	a3,a3,1
	srl	a5,a5,a3
	andi	a5,a5,3
	add	a4,a4,a3
	not	a3,a5
	andi	a3,a3,1
	srli	a5,a5,1
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
	beq	a5,zero,.L797
	li	a4,0
	addi	a2,a2,-32
	srl	a0,a1,a2
.L798:
	mv	a1,a4
.L799:
	ret
.L797:
	beq	a2,zero,.L799
	srl	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L798
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
	mv	s0,a0
	slli	s1,a0,16
	srli	s1,s1,16
	sw	a1,4(sp)
	lhu	a5,4(sp)
	sw	a5,0(sp)
	mv	a1,a5
	mv	a0,s1
	call	__mulsi3
	srli	a4,a0,16
	sw	a4,12(sp)
	slli	a3,a0,16
	srli	a3,a3,16
	sw	a3,8(sp)
	srli	s0,s0,16
	lw	a1,0(sp)
	mv	a0,s0
	call	__mulsi3
	lw	a4,12(sp)
	add	a0,a4,a0
	srli	a4,a0,16
	sw	a4,12(sp)
	slli	a2,a0,16
	srli	a2,a2,16
	sw	a2,16(sp)
	lw	a5,4(sp)
	srli	a5,a5,16
	sw	a5,0(sp)
	mv	a1,a5
	mv	a0,s1
	call	__mulsi3
	lw	a2,16(sp)
	add	a0,a2,a0
	slli	s1,a0,16
	lw	a3,8(sp)
	add	a3,s1,a3
	sw	a3,4(sp)
	srli	a0,a0,16
	lw	a4,12(sp)
	add	s1,a0,a4
	lw	a1,0(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a1,a0
	lw	a0,4(sp)
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
	j	.L813
.L811:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L812
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
.L813:
	andi	a5,s0,1
	beq	a5,zero,.L811
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
	j	.L811
.L812:
	lw	a4,52(sp)
	beq	a4,zero,.L810
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
.L810:
	lw	a5,36(sp)
	sw	a5,44(sp)
	lw	a5,40(sp)
	sw	a5,48(sp)
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
	j	.L819
.L817:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L818
	mv	a1,s1
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
.L819:
	andi	a5,s0,1
	beq	a5,zero,.L817
	mv	a1,s1
	lw	a0,0(sp)
	call	__mulsf3
	sw	a0,0(sp)
	j	.L817
.L818:
	lw	a5,4(sp)
	beq	a5,zero,.L816
	lw	a1,0(sp)
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	sw	a0,0(sp)
.L816:
	lw	a0,0(sp)
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
	mv	a5,a0
	bltu	a1,a3,.L824
	li	a0,2
	bgtu	a1,a3,.L823
	li	a0,0
	bltu	a5,a2,.L823
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L824:
	li	a0,0
.L823:
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
