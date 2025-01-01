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
	mv	a5,a0
	mv	a0,a1
	mv	a1,a5
	ret
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	1
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	mv	a5,a0
	mv	a0,a1
	mv	a1,a5
	ret
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	1
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	bleu	a0,a1,.L4
	add	a5,a1,a2
	add	a2,a0,a2
	j	.L5
.L6:
	addi	a5,a5,-1
	addi	a2,a2,-1
	lbu	a4,0(a5)
	sb	a4,0(a2)
.L5:
	bne	a5,a1,.L6
	ret
.L4:
	beq	a0,a1,.L7
	add	a3,a0,a2
	mv	a5,a1
	mv	a2,a0
	j	.L8
.L9:
	addi	a5,a5,1
	addi	a2,a2,1
	lbu	a4,-1(a5)
	sb	a4,-1(a2)
.L8:
	bne	a2,a3,.L9
.L7:
	ret
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	1
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	andi	a2,a2,0xff
	mv	a4,a0
	j	.L11
.L13:
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a4,a4,1
.L11:
	beq	a3,zero,.L12
	lbu	a5,0(a1)
	sb	a5,0(a4)
	sext.w	a5,a5
	bne	a2,a5,.L13
.L12:
	li	a0,0
	beq	a3,zero,.L14
	addi	a0,a4,1
.L14:
	ret
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	1
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	andi	a1,a1,0xff
	j	.L17
.L19:
	addi	a0,a0,1
	addi	a2,a2,-1
.L17:
	beq	a2,zero,.L18
	lbu	a5,0(a0)
	bne	a1,a5,.L19
.L18:
	snez	a2,a2
	neg	a2,a2
	and	a0,a0,a2
	ret
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	1
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	mv	a5,a0
	j	.L23
.L25:
	addi	a2,a2,-1
	addi	a5,a5,1
	addi	a1,a1,1
.L23:
	beq	a2,zero,.L24
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	beq	a3,a4,.L25
.L24:
	li	a0,0
	beq	a2,zero,.L26
	lbu	a0,0(a5)
	lbu	a5,0(a1)
	subw	a0,a0,a5
.L26:
	ret
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	add	a2,a0,a2
	mv	a5,a0
	j	.L29
.L30:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
.L29:
	bne	a5,a2,.L30
	ret
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	1
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	andi	a1,a1,0xff
	addi	a2,a2,-1
	li	a3,-1
.L32:
	beq	a2,a3,.L36
	add	a5,a0,a2
	lbu	a5,0(a5)
	addi	a4,a2,-1
	beq	a1,a5,.L37
	mv	a2,a4
	j	.L32
.L37:
	add	a0,a0,a2
	ret
.L36:
	li	a0,0
	ret
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	1
	.globl	memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	add	a2,a0,a2
	mv	a5,a0
	andi	a1,a1,0xff
	j	.L39
.L40:
	sb	a1,0(a5)
	addi	a5,a5,1
.L39:
	bne	a5,a2,.L40
	ret
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	1
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	j	.L42
.L43:
	addi	a1,a1,1
	addi	a0,a0,1
.L42:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L43
	ret
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	1
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	andi	a1,a1,0xff
	j	.L45
.L47:
	addi	a0,a0,1
.L45:
	lbu	a5,0(a0)
	beq	a5,zero,.L46
	bne	a1,a5,.L47
.L46:
	ret
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	1
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
.L50:
	lbu	a5,0(a0)
	beq	a1,a5,.L49
	addi	a0,a0,1
	lbu	a5,-1(a0)
	bne	a5,zero,.L50
	li	a0,0
.L49:
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	1
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	j	.L54
.L56:
	addi	a0,a0,1
	addi	a1,a1,1
.L54:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L55
	bne	a4,zero,.L56
.L55:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	subw	a0,a0,a5
	ret
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	1
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	mv	a5,a0
	j	.L58
.L59:
	addi	a5,a5,1
.L58:
	lbu	a4,0(a5)
	bne	a4,zero,.L59
	sub	a0,a5,a0
	ret
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	beq	a2,zero,.L65
	addi	a2,a2,-1
	add	a5,a0,a2
.L62:
	lbu	a4,0(a0)
	beq	a4,zero,.L63
	lbu	a4,0(a1)
	beq	a4,zero,.L63
	beq	a0,a5,.L63
	lbu	a3,0(a0)
	bne	a3,a4,.L63
	addi	a0,a0,1
	addi	a1,a1,1
	j	.L62
.L63:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	subw	a0,a0,a5
	ret
.L65:
	li	a0,0
	ret
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	1
	.globl	swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	mv	a5,a0
	add	a2,a0,a2
	li	a3,1
	j	.L67
.L68:
	lbu	a4,1(a5)
	sb	a4,0(a1)
	lbu	a4,0(a5)
	sb	a4,1(a1)
	addi	a1,a1,2
	addi	a5,a5,2
.L67:
	sub	a4,a2,a5
	bgt	a4,a3,.L68
	ret
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	1
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	1
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	sltiu	a0,a0,128
	ret
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	1
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	li	a5,32
	beq	a0,a5,.L73
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L73:
	li	a0,1
	ret
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	1
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	li	a5,31
	bleu	a0,a5,.L76
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L76:
	li	a0,1
	ret
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	1
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	addiw	a0,a0,-48
	sltiu	a0,a0,10
	ret
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	1
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	addiw	a0,a0,-33
	sltiu	a0,a0,94
	ret
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	1
	.globl	islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	addiw	a0,a0,-97
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	1
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	addiw	a0,a0,-32
	sltiu	a0,a0,95
	ret
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	1
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	li	a5,32
	beq	a0,a5,.L83
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L83:
	li	a0,1
	ret
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	1
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	addiw	a0,a0,-65
	sltiu	a0,a0,26
	ret
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	1
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	mv	a5,a0
	li	a4,31
	bleu	a0,a4,.L87
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L86
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a4,a5
	bleu	a4,a0,.L86
	li	a4,-65536
	addiw	a4,a4,7
	addw	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L87:
	li	a0,1
.L86:
	ret
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	1
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	addiw	a0,a0,-48
	sltiu	a0,a0,10
	ret
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	1
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	mv	a5,a0
	li	a4,254
	bleu	a0,a4,.L98
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L93
	li	a4,-8192
	addiw	a4,a4,-42
	addw	a4,a4,a5
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L93
	li	a3,-57344
	addw	a3,a3,a5
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L93
	li	a4,-65536
	addiw	a4,a4,4
	addw	a4,a4,a5
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
	ret
.L98:
	addiw	a5,a0,1
	andi	a5,a5,127
	li	a0,32
	sgtu	a0,a5,a0
	ret
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	1
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	addiw	a4,a0,-48
	li	a5,9
	bleu	a4,a5,.L101
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L101:
	li	a0,1
	ret
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	1
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	andi	a0,a0,127
	ret
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	1
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	feq.d	a5,fa0,fa0
	beq	a5,zero,.L104
	feq.d	a5,fa1,fa1
	beq	a5,zero,.L107
	fgt.d	a5,fa0,fa1
	beq	a5,zero,.L110
	fsub.d	fa0,fa0,fa1
	ret
.L107:
	fmv.d	fa0,fa1
	ret
.L110:
	fmv.d.x	fa0,zero
.L104:
	ret
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	1
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L112
	feq.s	a5,fa1,fa1
	beq	a5,zero,.L115
	fgt.s	a5,fa0,fa1
	beq	a5,zero,.L118
	fsub.s	fa0,fa0,fa1
	ret
.L115:
	fmv.s	fa0,fa1
	ret
.L118:
	fmv.s.x	fa0,zero
.L112:
	ret
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	1
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	fmv.x.d	a5,fa0
	fmv.x.d	a4,fa1
	feq.d	a3,fa0,fa0
	beq	a3,zero,.L124
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L120
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L121
	bge	a5,zero,.L120
	fmv.d	fa0,fa1
	ret
.L121:
	flt.d	a3,fa0,fa1
	beq	a3,zero,.L120
	fmv.d	fa0,fa1
	ret
.L124:
	fmv.d	fa0,fa1
	ret
.L120:
	ret
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	1
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	feq.s	a3,fa0,fa0
	beq	a3,zero,.L132
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L128
	li	a3,-2147483648
	and	a2,a3,a5
	sext.w	a2,a2
	and	a3,a3,a4
	sext.w	a3,a3
	beq	a2,a3,.L129
	li	a3,-2147483648
	and	a3,a3,a5
	sext.w	a3,a3
	beq	a3,zero,.L128
	fmv.s	fa0,fa1
	ret
.L129:
	flt.s	a3,fa0,fa1
	beq	a3,zero,.L128
	fmv.s	fa0,fa1
	ret
.L132:
	fmv.s	fa0,fa1
	ret
.L128:
	ret
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s1,a0
	mv	s0,a1
	mv	s3,a2
	mv	s2,a3
	mv	a2,a0
	mv	a3,a1
	call	__unordtf2
	bne	a0,zero,.L141
	mv	a2,s3
	mv	a3,s2
	mv	a0,s3
	mv	a1,s2
	call	__unordtf2
	bne	a0,zero,.L142
	srli	a5,s0,63
	srli	a4,s2,63
	beq	a5,a4,.L137
	bge	s0,zero,.L143
	mv	a0,s3
	mv	a1,s2
	j	.L136
.L137:
	mv	a2,s3
	mv	a3,s2
	mv	a0,s1
	mv	a1,s0
	call	__lttf2
	bge	a0,zero,.L140
	mv	s1,s3
	mv	s0,s2
.L140:
	mv	a0,s1
	mv	a1,s0
.L136:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L141:
	.cfi_restore_state
	mv	a0,s3
	mv	a1,s2
	j	.L136
.L142:
	mv	a0,s1
	mv	a1,s0
	j	.L136
.L143:
	mv	a0,s1
	mv	a1,s0
	j	.L136
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fmv.x.d	a4,fa0
	fmv.x.d	a5,fa1
	feq.d	a3,fa0,fa0
	beq	a3,zero,.L150
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L146
	srli	a3,a4,63
	srli	a2,a5,63
	beq	a3,a2,.L147
	fmv.d	fa0,fa1
	bge	a4,zero,.L146
	fmv.d.x	fa0,a4
	ret
.L147:
	flt.d	a3,fa0,fa1
	fmv.d	fa0,fa1
	beq	a3,zero,.L146
	fmv.d.x	fa0,a4
	ret
.L150:
	fmv.d	fa0,fa1
	ret
.L146:
	ret
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	1
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	fmv.x.s	a4,fa0
	fmv.x.s	a5,fa1
	feq.s	a3,fa0,fa0
	beq	a3,zero,.L158
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L154
	li	a3,-2147483648
	and	a2,a3,a4
	sext.w	a2,a2
	and	a3,a3,a5
	sext.w	a3,a3
	beq	a2,a3,.L155
	li	a3,-2147483648
	and	a3,a3,a4
	sext.w	a3,a3
	fmv.s	fa0,fa1
	beq	a3,zero,.L154
	fmv.s.x	fa0,a4
	ret
.L155:
	flt.s	a3,fa0,fa1
	fmv.s	fa0,fa1
	beq	a3,zero,.L154
	fmv.s.x	fa0,a4
	ret
.L158:
	fmv.s	fa0,fa1
	ret
.L154:
	ret
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s3,a0
	mv	s2,a1
	mv	s1,a2
	mv	s0,a3
	mv	a2,a0
	mv	a3,a1
	call	__unordtf2
	bne	a0,zero,.L167
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L168
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L163
	bge	s2,zero,.L169
	mv	a0,s3
	mv	a1,s2
	j	.L162
.L163:
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	bge	a0,zero,.L166
	mv	s1,s3
	mv	s0,s2
.L166:
	mv	a0,s1
	mv	a1,s0
.L162:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L167:
	.cfi_restore_state
	mv	a0,s1
	mv	a1,s0
	j	.L162
.L168:
	mv	a0,s3
	mv	a1,s2
	j	.L162
.L169:
	mv	a0,s1
	mv	a1,s0
	j	.L162
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
	sext.w	a0,a0
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(digits)
	j	.L172
.L173:
	addi	a5,a2,%lo(digits)
	andi	a3,a0,63
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srliw	a0,a0,6
.L172:
	bne	a0,zero,.L173
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	ret
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
	addiw	a0,a0,-1
	slli	a0,a0,32
	srli	a0,a0,32
	lui	a5,%hi(seed)
	sd	a0,%lo(seed)(a5)
	ret
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	1
	.globl	rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	lui	a3,%hi(seed)
	ld	a0,%lo(seed)(a3)
	li	a4,1284866048
	addi	a4,a4,-211
	li	a5,1481764864
	addi	a5,a5,1069
	slli	a5,a5,32
	add	a5,a5,a4
	mul	a0,a0,a5
	addi	a0,a0,1
	sd	a0,%lo(seed)(a3)
	srli	a0,a0,33
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
	beq	a1,zero,.L179
	ld	a5,0(a1)
	sd	a5,0(a0)
	sd	a1,8(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L176
	sd	a0,8(a5)
.L176:
	ret
.L179:
	sd	zero,8(a0)
	sd	zero,0(a0)
	ret
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	1
	.globl	remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ld	a5,0(a0)
	beq	a5,zero,.L181
	ld	a4,8(a0)
	sd	a4,8(a5)
.L181:
	ld	a5,8(a0)
	beq	a5,zero,.L180
	ld	a4,0(a0)
	sd	a4,0(a5)
.L180:
	ret
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	1
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	mv	s4,a0
	mv	s6,a1
	mv	s7,a2
	mv	s2,a3
	mv	s5,a4
	ld	s3,0(a2)
	mv	s1,a1
	li	s0,0
	j	.L184
.L185:
	addi	s0,s0,1
.L184:
	beq	s0,s3,.L189
	mv	a1,s1
	mv	a0,s4
	jalr	s5
	add	s1,s1,s2
	bne	a0,zero,.L185
	mul	s0,s0,s2
	add	a0,s6,s0
	j	.L186
.L189:
	addi	a5,s3,1
	sd	a5,0(s7)
	mul	s3,s2,s3
	mv	a2,s2
	mv	a1,s4
	add	a0,s6,s3
	call	memcpy
.L186:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s6,16(sp)
	.cfi_restore 22
	ld	s7,8(sp)
	.cfi_restore 23
	addi	sp,sp,80
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s4,a0
	mv	s6,a1
	mv	s2,a3
	mv	s3,a4
	ld	s5,0(a2)
	mv	s1,a1
	li	s0,0
	j	.L191
.L192:
	addi	s0,s0,1
.L191:
	beq	s0,s5,.L196
	mv	a1,s1
	mv	a0,s4
	jalr	s3
	add	s1,s1,s2
	bne	a0,zero,.L192
	mul	s0,s0,s2
	add	a0,s6,s0
	j	.L193
.L196:
	li	a0,0
.L193:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
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
	sraiw	a5,a0,31
	xor	a0,a0,a5
	subw	a0,a0,a5
	ret
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	1
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	j	.L199
.L200:
	addi	s0,s0,1
.L199:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L200
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L206
	li	a4,45
	li	a2,0
	bne	a5,a4,.L202
	li	a2,1
.L201:
	addi	s0,s0,1
.L202:
	li	a5,0
	li	a3,9
	j	.L203
.L206:
	li	a2,0
	j	.L201
.L204:
	slliw	a4,a5,2
	addw	a4,a4,a5
	slliw	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addiw	a5,a5,-48
	subw	a5,a4,a5
.L203:
	lbu	a4,0(s0)
	addiw	a4,a4,-48
	bleu	a4,a3,.L204
	mv	a0,a5
	bne	a2,zero,.L205
	negw	a0,a5
.L205:
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	j	.L211
.L212:
	addi	s0,s0,1
.L211:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L212
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L218
	li	a4,45
	li	a2,0
	bne	a5,a4,.L214
	li	a2,1
.L213:
	addi	s0,s0,1
.L214:
	li	a5,0
	li	a3,9
	j	.L215
.L218:
	li	a2,0
	j	.L213
.L216:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addiw	a5,a5,-48
	sub	a5,a4,a5
.L215:
	lbu	a4,0(s0)
	addiw	a4,a4,-48
	bleu	a4,a3,.L216
	mv	a0,a5
	bne	a2,zero,.L217
	neg	a0,a5
.L217:
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	j	.L223
.L224:
	addi	s0,s0,1
.L223:
	lbu	a0,0(s0)
	call	isspace
	bne	a0,zero,.L224
	lbu	a5,0(s0)
	li	a4,43
	beq	a5,a4,.L230
	li	a4,45
	li	a2,0
	bne	a5,a4,.L226
	li	a2,1
.L225:
	addi	s0,s0,1
.L226:
	li	a5,0
	li	a3,9
	j	.L227
.L230:
	li	a2,0
	j	.L225
.L228:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addiw	a5,a5,-48
	sub	a5,a4,a5
.L227:
	lbu	a4,0(s0)
	addiw	a4,a4,-48
	bleu	a4,a3,.L228
	mv	a0,a5
	bne	a2,zero,.L229
	neg	a0,a5
.L229:
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	mv	s5,a0
	mv	s3,a1
	mv	s1,a2
	mv	s2,a3
	mv	s4,a4
	j	.L235
.L243:
	srli	s1,s1,1
.L235:
	beq	s1,zero,.L242
	srli	s0,s1,1
	mul	s0,s0,s2
	add	s0,s3,s0
	mv	a1,s0
	mv	a0,s5
	jalr	s4
	blt	a0,zero,.L243
	ble	a0,zero,.L240
	add	s3,s0,s2
	srli	a5,s1,1
	addi	s1,s1,-1
	sub	s1,s1,a5
	j	.L235
.L242:
	li	a0,0
.L238:
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L240:
	.cfi_restore_state
	mv	a0,s0
	j	.L238
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	1
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s6,a0
	mv	s3,a3
	mv	s5,a4
	mv	s4,a5
	sext.w	s1,a2
	mv	s2,a1
	j	.L245
.L247:
	sraiw	s1,s1,1
.L245:
	beq	s1,zero,.L251
	sraiw	s0,s1,1
	mul	s0,s0,s3
	add	s0,s2,s0
	mv	a2,s4
	mv	a1,s0
	mv	a0,s6
	jalr	s5
	beq	a0,zero,.L249
	ble	a0,zero,.L247
	add	s2,s0,s3
	addiw	s1,s1,-1
	j	.L247
.L251:
	li	a0,0
.L246:
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L249:
	.cfi_restore_state
	mv	a0,s0
	j	.L246
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	1
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	divw	a5,a0,a1
	remw	a0,a0,a1
	slli	a1,a0,32
	slli	a0,a5,32
	srli	a0,a0,32
	or	a0,a0,a1
	addi	sp,sp,16
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
	srai	a5,a0,63
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	1
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	addi	sp,sp,16
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
	srai	a5,a0,63
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	1
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	addi	sp,sp,16
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
	srai	a5,a0,63
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	1
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	addi	sp,sp,16
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
	j	.L264
.L266:
	addi	a0,a0,4
.L264:
	lw	a5,0(a0)
	beq	a5,zero,.L265
	bne	a1,a5,.L266
.L265:
	lw	a5,0(a0)
	snez	a5,a5
	neg	a5,a5
	and	a0,a0,a5
	ret
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	1
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	mv	a5,a0
	j	.L270
.L272:
	addi	a5,a5,4
	addi	a1,a1,4
.L270:
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L271
	beq	a3,zero,.L271
	lw	a4,0(a1)
	bne	a4,zero,.L272
.L271:
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L273
	sgt	a0,a3,a4
.L273:
	ret
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	1
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	mv	a5,a0
.L276:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L276
	ret
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	1
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	mv	a5,a0
	j	.L279
.L280:
	addi	a5,a5,4
.L279:
	lw	a4,0(a5)
	bne	a4,zero,.L280
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	mv	a5,a0
.L282:
	beq	a2,zero,.L283
	lw	a3,0(a5)
	lw	a4,0(a1)
	bne	a3,a4,.L283
	beq	a3,zero,.L283
	lw	a4,0(a1)
	beq	a4,zero,.L283
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
	j	.L282
.L283:
	li	a0,0
	beq	a2,zero,.L285
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L285
	sgt	a0,a3,a4
.L285:
	ret
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	1
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	j	.L289
.L291:
	addi	a2,a2,-1
	addi	a0,a0,4
.L289:
	beq	a2,zero,.L290
	lw	a5,0(a0)
	bne	a1,a5,.L291
.L290:
	snez	a2,a2
	neg	a2,a2
	and	a0,a0,a2
	ret
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	1
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	mv	a5,a0
	j	.L295
.L297:
	addi	a2,a2,-1
	addi	a5,a5,4
	addi	a1,a1,4
.L295:
	beq	a2,zero,.L296
	lw	a3,0(a5)
	lw	a4,0(a1)
	beq	a3,a4,.L297
.L296:
	li	a0,0
	beq	a2,zero,.L298
	lw	a3,0(a5)
	lw	a4,0(a1)
	li	a0,-1
	blt	a3,a4,.L298
	sgt	a0,a3,a4
.L298:
	ret
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	1
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	mv	a5,a0
	li	a3,-1
	j	.L302
.L303:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L302:
	addi	a2,a2,-1
	bne	a2,a3,.L303
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	1
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	beq	a0,a1,.L305
	sub	a5,a0,a1
	slli	a4,a2,2
	bgeu	a5,a4,.L310
	add	a1,a1,a4
	add	a5,a0,a4
	addi	a3,a0,-4
	j	.L307
.L308:
	lw	a4,0(a1)
	sw	a4,0(a5)
.L307:
	addi	a1,a1,-4
	addi	a5,a5,-4
	bne	a5,a3,.L308
	ret
.L309:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
.L306:
	addi	a2,a2,-1
	bne	a2,a3,.L309
.L305:
	ret
.L310:
	mv	a5,a0
	li	a3,-1
	j	.L306
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	j	.L312
.L313:
	addi	a5,a5,4
	sw	a1,-4(a5)
.L312:
	addi	a2,a2,-1
	bne	a2,a4,.L313
	ret
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	bgeu	a0,a1,.L315
	add	a5,a0,a2
	add	a1,a1,a2
	j	.L316
.L317:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
.L316:
	bne	a5,a0,.L317
	ret
.L315:
	beq	a0,a1,.L314
	add	a2,a1,a2
	mv	a5,a0
	j	.L319
.L320:
	addi	a5,a5,1
	addi	a1,a1,1
	lbu	a4,-1(a5)
	sb	a4,-1(a1)
.L319:
	bne	a1,a2,.L320
.L314:
	ret
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	1
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	sll	a5,a0,a1
	negw	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	1
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	srl	a5,a0,a1
	negw	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	1
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	sllw	a5,a0,a1
	negw	a1,a1
	srlw	a0,a0,a1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	1
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	srlw	a5,a0,a1
	negw	a1,a1
	sllw	a0,a0,a1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	1
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	sll	a4,a0,a1
	li	a5,64
	subw	a5,a5,a1
	srl	a0,a0,a5
	or	a0,a0,a4
	ret
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	1
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	srl	a4,a0,a1
	li	a5,64
	subw	a5,a5,a1
	sll	a0,a0,a5
	or	a0,a0,a4
	ret
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	1
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	sllw	a4,a0,a1
	li	a5,16
	subw	a5,a5,a1
	srlw	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	1
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	srlw	a4,a0,a1
	li	a5,16
	subw	a5,a5,a1
	sllw	a0,a0,a5
	or	a0,a0,a4
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	1
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	sllw	a4,a0,a1
	li	a5,8
	subw	a5,a5,a1
	srlw	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	1
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	srlw	a4,a0,a1
	li	a5,8
	subw	a5,a5,a1
	sllw	a0,a0,a5
	or	a0,a0,a4
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	1
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	srli	a5,a0,8
	andi	a0,a0,255
	slli	a0,a0,8
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	1
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	srliw	a3,a0,24
	li	a4,16711680
	and	a4,a0,a4
	srli	a4,a4,8
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a0,a5
	slliw	a5,a5,8
	slliw	a0,a0,24
	or	a0,a0,a5
	or	a0,a0,a3
	or	a0,a0,a4
	ret
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	1
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	srli	a4,a0,56
	li	a5,255
	slli	a5,a5,48
	and	a5,a0,a5
	srli	a5,a5,40
	or	a5,a5,a4
	li	a4,255
	slli	a4,a4,40
	and	a4,a0,a4
	srli	a4,a4,24
	or	a5,a5,a4
	li	a4,255
	slli	a4,a4,32
	and	a4,a0,a4
	srli	a4,a4,8
	or	a5,a5,a4
	li	a4,255
	slli	a4,a4,24
	and	a4,a0,a4
	slli	a4,a4,8
	or	a5,a5,a4
	li	a4,16711680
	and	a4,a0,a4
	slli	a4,a4,24
	or	a5,a5,a4
	li	a4,65536
	addi	a4,a4,-256
	and	a4,a0,a4
	slli	a4,a4,40
	or	a5,a5,a4
	slli	a0,a0,56
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	1
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	li	a5,0
	li	a3,32
.L335:
	beq	a5,a3,.L339
	srlw	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L340
	addiw	a5,a5,1
	j	.L335
.L340:
	addiw	a0,a5,1
	ret
.L339:
	li	a0,0
	ret
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	1
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	li	a5,1
	bne	a0,zero,.L343
	li	a0,0
	ret
.L344:
	sraiw	a0,a0,1
	addiw	a5,a5,1
.L343:
	andi	a4,a0,1
	beq	a4,zero,.L344
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
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	li	a0,1
	flt.s	a5,fa0,fa5
	bne	a5,zero,.L347
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a0,fa0,fa5
.L347:
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	1
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	li	a0,1
	flt.d	a5,fa0,fa5
	bne	a5,zero,.L351
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a0,fa0,fa5
.L351:
	ret
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
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s1,a0
	mv	s0,a1
	li	a2,-1
	lui	a5,%hi(.LC5)
	ld	a3,%lo(.LC5+8)(a5)
	call	__lttf2
	blt	a0,zero,.L357
	li	a2,-1
	lui	a5,%hi(.LC6)
	ld	a3,%lo(.LC6+8)(a5)
	mv	a0,s1
	mv	a1,s0
	call	__gttf2
	sgt	a0,a0,zero
.L355:
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L357:
	.cfi_restore_state
	li	a0,1
	j	.L355
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	1
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	fcvt.d.w	fa0,a1
	call	__extenddftf2
	sd	a0,0(s0)
	sd	a1,8(s0)
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L362
	fadd.s	fa5,fa0,fa0
	feq.s	a5,fa0,fa5
	bne	a5,zero,.L362
	blt	a0,zero,.L368
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
	j	.L365
.L368:
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L365
.L364:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L362
	fmul.s	fa5,fa5,fa5
.L365:
	andi	a5,a0,1
	beq	a5,zero,.L364
	fmul.s	fa0,fa0,fa5
	j	.L364
.L362:
	ret
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	1
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	feq.d	a5,fa0,fa0
	beq	a5,zero,.L370
	fadd.d	fa5,fa0,fa0
	feq.d	a5,fa0,fa5
	bne	a5,zero,.L370
	blt	a0,zero,.L376
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	j	.L373
.L376:
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L373
.L372:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L370
	fmul.d	fa5,fa5,fa5
.L373:
	andi	a5,a0,1
	beq	a5,zero,.L372
	fmul.d	fa0,fa0,fa5
	j	.L372
.L370:
	ret
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	1
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s4,a0
	mv	s3,a1
	mv	s0,a2
	mv	a2,a0
	mv	a3,a1
	call	__unordtf2
	bne	a0,zero,.L378
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,a0
	mv	a3,a1
	mv	a0,s4
	mv	a1,s3
	call	__netf2
	beq	a0,zero,.L378
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	blt	s0,zero,.L387
	li	s2,0
	lui	a5,%hi(.LC12)
	ld	s1,%lo(.LC12+8)(a5)
	j	.L382
.L387:
	li	s2,0
	lui	a5,%hi(.LC11)
	ld	s1,%lo(.LC11+8)(a5)
	j	.L382
.L381:
	srliw	a5,s0,31
	addw	a5,a5,s0
	sraiw	s0,a5,1
	beq	s0,zero,.L386
	mv	a2,s2
	mv	a3,s1
	mv	a0,s2
	mv	a1,s1
	call	__multf3
	mv	s2,a0
	mv	s1,a1
.L382:
	andi	a5,s0,1
	beq	a5,zero,.L381
	mv	a2,s2
	mv	a3,s1
	mv	a0,s4
	mv	a1,s3
	call	__multf3
	mv	s4,a0
	mv	s3,a1
	j	.L381
.L386:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L378:
	mv	a0,s4
	mv	a1,s3
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	addi	sp,sp,48
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
	add	a2,a0,a2
	mv	a5,a0
	j	.L389
.L390:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
.L389:
	bne	a5,a2,.L390
	ret
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	1
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s2,a0
	mv	s1,a1
	mv	s0,a2
	call	strlen
	add	a5,s2,a0
	j	.L392
.L394:
	addi	s1,s1,1
	addi	a5,a5,1
	addi	s0,s0,-1
.L392:
	beq	s0,zero,.L393
	lbu	a4,0(s1)
	sb	a4,0(a5)
	bne	a4,zero,.L394
.L393:
	bne	s0,zero,.L395
	sb	zero,0(a5)
.L395:
	mv	a0,s2
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	ld	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,32
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
	mv	a5,a0
	li	a0,0
.L398:
	beq	a0,a1,.L399
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L400
.L399:
	ret
.L400:
	addi	a0,a0,1
	j	.L398
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	1
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
.L402:
	lbu	a5,0(a0)
	beq	a5,zero,.L408
	mv	a5,a1
.L405:
	lbu	a4,0(a5)
	beq	a4,zero,.L409
	addi	a5,a5,1
	lbu	a3,-1(a5)
	lbu	a4,0(a0)
	bne	a3,a4,.L405
	ret
.L409:
	addi	a0,a0,1
	j	.L402
.L408:
	li	a0,0
	ret
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	1
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	j	.L412
.L411:
	addi	a5,a5,1
	lbu	a4,-1(a5)
	beq	a4,zero,.L415
.L412:
	lbu	a4,0(a5)
	bne	a1,a4,.L411
	mv	a0,a5
	j	.L411
.L415:
	ret
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	mv	s1,a1
	mv	a0,a1
	call	strlen
	beq	a0,zero,.L420
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	lbu	s3,0(s1)
.L418:
	mv	a1,s3
	mv	a0,s0
	call	strchr
	mv	s0,a0
	beq	a0,zero,.L423
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	strncmp
	beq	a0,zero,.L421
	addi	s0,s0,1
	j	.L418
.L423:
	li	a0,0
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	j	.L417
.L420:
	mv	a0,s0
.L417:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L421:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	a0,s0
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	j	.L417
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	1
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	fmv.d.x	fa5,zero
	flt.d	a5,fa0,fa5
	bne	a5,zero,.L439
.L425:
	fmv.d.x	fa5,zero
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L428
	fmv.d.x	fa5,zero
	flt.d	a5,fa1,fa5
	bne	a5,zero,.L427
.L428:
	ret
.L439:
	fmv.d.x	fa5,zero
	fgt.d	a5,fa1,fa5
	beq	a5,zero,.L425
.L427:
	fneg.d	fa0,fa0
	ret
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	1
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s2,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	sub	s2,a1,a3
	add	s2,a0,s2
	beq	a3,zero,.L441
	sd	s1,24(sp)
	.cfi_offset 9, -24
	mv	s1,a2
	bltu	a1,a3,.L446
	sd	s0,32(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s0,a0
	addi	s4,a2,1
	addi	s3,a3,-1
	j	.L442
.L443:
	addi	s0,s0,1
.L442:
	bgtu	s0,s2,.L449
	lbu	a4,0(s0)
	lbu	a5,0(s1)
	bne	a4,a5,.L443
	mv	a2,s3
	mv	a1,s4
	addi	a0,s0,1
	call	memcmp
	bne	a0,zero,.L443
	mv	a0,s0
	ld	s0,32(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	j	.L441
.L449:
	.cfi_restore_state
	li	a0,0
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
.L441:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L446:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	li	a0,0
	ld	s1,24(sp)
	.cfi_restore 9
	j	.L441
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	1
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a2
	call	memcpy
	add	a0,a0,s0
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	fmv.d.x	fa5,zero
	flt.d	a5,fa0,fa5
	li	a3,0
	bne	a5,zero,.L473
.L453:
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	li	a5,0
	fge.d	a4,fa0,fa5
	beq	a4,zero,.L471
	lui	a4,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a4)
	lui	a4,%hi(.LC9)
	fld	fa4,%lo(.LC9)(a4)
	j	.L455
.L473:
	fneg.d	fa0,fa0
	li	a3,1
	j	.L453
.L457:
	addiw	a5,a5,1
	fmul.d	fa0,fa0,fa4
.L455:
	fge.d	a4,fa0,fa5
	bne	a4,zero,.L457
.L458:
	sw	a5,0(a0)
	beq	a3,zero,.L462
	fneg.d	fa0,fa0
.L462:
	ret
.L471:
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	flt.d	a5,fa0,fa5
	beq	a5,zero,.L472
	fmv.d.x	fa5,zero
	feq.d	a5,fa0,fa5
	beq	a5,zero,.L466
	li	a5,0
	j	.L458
.L461:
	addiw	a5,a5,-1
	fadd.d	fa0,fa0,fa0
.L460:
	flt.d	a4,fa0,fa5
	bne	a4,zero,.L461
	j	.L458
.L466:
	li	a5,0
	lui	a4,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a4)
	j	.L460
.L472:
	li	a5,0
	j	.L458
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	j	.L475
.L476:
	andi	a4,a5,1
	mul	a4,a1,a4
	srli	a5,a5,1
	add	a0,a0,a4
	slli	a1,a1,1
.L475:
	bne	a5,zero,.L476
	ret
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	1
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	li	a4,33
	li	a5,1
	j	.L478
.L482:
	slliw	a1,a1,1
	slliw	a5,a5,1
.L478:
	bgeu	a1,a0,.L488
	addiw	a4,a4,-1
	beq	a4,zero,.L486
	bge	a1,zero,.L482
	li	a4,0
	j	.L480
.L488:
	li	a4,0
	j	.L480
.L486:
	li	a4,0
	j	.L480
.L483:
	srliw	a5,a5,1
	srliw	a1,a1,1
.L480:
	beq	a5,zero,.L489
	bltu	a0,a1,.L483
	subw	a0,a0,a1
	or	a4,a4,a5
	j	.L483
.L489:
	bne	a2,zero,.L485
	mv	a0,a4
.L485:
	ret
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	beq	a0,zero,.L492
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	slli	a0,a0,8
	call	__clzdi2
	addiw	a0,a0,-33
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L492:
	li	a0,7
	ret
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	1
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	srai	a5,a0,63
	xor	a4,a5,a0
	beq	a5,a0,.L499
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	mv	a0,a4
	call	__clzdi2
	addiw	a0,a0,-1
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L499:
	li	a0,63
	ret
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	1
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	j	.L505
.L506:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
.L505:
	bne	a4,zero,.L506
	ret
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	1
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	srliw	a7,a2,3
	andi	a3,a2,-8
	bltu	a0,a1,.L508
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bltu	a5,a0,.L508
	li	a3,-1
	j	.L509
.L508:
	mv	a5,a1
	mv	a4,a0
	slli	a7,a7,3
	add	a7,a7,a1
	j	.L510
.L511:
	ld	a6,0(a5)
	sd	a6,0(a4)
	addi	a5,a5,8
	addi	a4,a4,8
.L510:
	bne	a5,a7,.L511
	slli	a5,a3,32
	srli	a5,a5,32
	j	.L512
.L513:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L512:
	sext.w	a3,a5
	bgtu	a2,a3,.L513
	ret
.L515:
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a5
	add	a5,a0,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L509:
	addiw	a5,a2,-1
	mv	a2,a5
	bne	a5,a3,.L515
	ret
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	1
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	srliw	a6,a2,1
	bltu	a0,a1,.L518
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	li	a3,-1
	bgeu	a5,a0,.L519
.L518:
	mv	a5,a1
	mv	a4,a0
	slli	a6,a6,1
	add	a6,a6,a1
	j	.L520
.L521:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
.L520:
	bne	a5,a6,.L521
	andi	a5,a2,1
	beq	a5,zero,.L517
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	add	a0,a0,a2
	lbu	a5,0(a1)
	sb	a5,0(a0)
	ret
.L523:
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a5
	add	a5,a0,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L519:
	addiw	a5,a2,-1
	mv	a2,a5
	bne	a5,a3,.L523
.L517:
	ret
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	srliw	a7,a2,2
	andi	a3,a2,-4
	bltu	a0,a1,.L526
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bltu	a5,a0,.L526
	li	a3,-1
	j	.L527
.L526:
	mv	a5,a1
	mv	a4,a0
	slli	a7,a7,2
	add	a7,a7,a1
	j	.L528
.L529:
	lw	a6,0(a5)
	sw	a6,0(a4)
	addi	a5,a5,4
	addi	a4,a4,4
.L528:
	bne	a5,a7,.L529
	slli	a5,a3,32
	srli	a5,a5,32
	j	.L530
.L531:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
.L530:
	sext.w	a3,a5
	bgtu	a2,a3,.L531
	ret
.L533:
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a5
	add	a5,a0,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L527:
	addiw	a5,a2,-1
	mv	a2,a5
	bne	a5,a3,.L533
	ret
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	1
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	remw	a0,a0,a1
	ret
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	1
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	fcvt.d.wu	fa0,a0
	ret
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	1
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	fcvt.s.wu	fa0,a0
	ret
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	1
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	fcvt.d.lu	fa0,a0
	ret
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	1
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	fcvt.s.lu	fa0,a0
	ret
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	1
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	remuw	a0,a0,a1
	ret
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	1
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	li	a4,0
	li	a3,16
	li	a2,15
.L542:
	beq	a4,a3,.L543
	subw	a5,a2,a4
	sraw	a5,a0,a5
	andi	a5,a5,1
	bne	a5,zero,.L543
	addiw	a4,a4,1
	j	.L542
.L543:
	mv	a0,a4
	ret
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	1
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	li	a5,0
	li	a3,16
.L546:
	beq	a5,a3,.L547
	sraw	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L547
	addiw	a5,a5,1
	j	.L546
.L547:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	1
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fge.s	a5,fa0,fa5
	bne	a5,zero,.L555
	fcvt.l.s a0,fa0,rtz
	ret
.L555:
	lui	a5,%hi(.LC14)
	flw	fa5,%lo(.LC14)(a5)
	fsub.s	fa0,fa0,fa5
	fcvt.l.s a0,fa0,rtz
	li	a5,32768
	add	a0,a0,a5
	ret
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	1
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	li	a3,0
	li	a5,0
	li	a2,16
	j	.L557
.L558:
	sraw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	addw	a3,a4,a3
.L557:
	bne	a5,a2,.L558
	andi	a0,a3,1
	ret
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	li	a3,0
	li	a5,0
	li	a2,16
	j	.L560
.L561:
	sraw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	addw	a3,a4,a3
.L560:
	bne	a5,a2,.L561
	mv	a0,a3
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	j	.L563
.L564:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
.L563:
	bne	a4,zero,.L564
	ret
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	li	a4,0
	bne	a0,zero,.L567
	li	a0,0
	ret
.L568:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a0,a5
	srliw	a1,a1,1
	addw	a4,a5,a4
	slliw	a0,a0,1
.L567:
	bne	a1,zero,.L568
	mv	a0,a4
	ret
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	1
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	li	a4,33
	li	a5,1
	j	.L571
.L575:
	slliw	a1,a1,1
	slliw	a5,a5,1
.L571:
	bgeu	a1,a0,.L581
	addiw	a4,a4,-1
	beq	a4,zero,.L579
	bge	a1,zero,.L575
	li	a4,0
	j	.L573
.L581:
	li	a4,0
	j	.L573
.L579:
	li	a4,0
	j	.L573
.L576:
	srliw	a5,a5,1
	srliw	a1,a1,1
.L573:
	beq	a5,zero,.L582
	bltu	a0,a1,.L576
	subw	a0,a0,a1
	or	a4,a4,a5
	j	.L576
.L582:
	bne	a2,zero,.L578
	mv	a0,a4
.L578:
	ret
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	1
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	li	a0,-1
	flt.s	a5,fa0,fa1
	bne	a5,zero,.L584
	fgt.s	a0,fa0,fa1
.L584:
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	1
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	li	a0,-1
	flt.d	a5,fa0,fa1
	bne	a5,zero,.L588
	fgt.d	a0,fa0,fa1
.L588:
	ret
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	1
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	mul	a0,a0,a1
	ret
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	1
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	mul	a0,a0,a1
	ret
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	1
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	li	a2,0
	blt	a1,zero,.L601
.L594:
	li	a4,33
	li	a3,0
	j	.L595
.L601:
	negw	a1,a1
	li	a2,1
	j	.L594
.L597:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a0,a5
	sraiw	a1,a1,1
	addw	a3,a3,a5
	slliw	a0,a0,1
.L595:
	beq	a1,zero,.L596
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L597
.L596:
	mv	a0,a3
	beq	a2,zero,.L598
	negw	a0,a3
.L598:
	ret
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	li	s0,0
	blt	a0,zero,.L608
.L603:
	blt	a1,zero,.L609
.L604:
	li	a2,0
	sext.w	a1,a1
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	beq	s0,zero,.L605
	neg	a0,a0
.L605:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L608:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L603
.L609:
	neg	a1,a1
	xori	s0,s0,1
	j	.L604
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	li	s0,0
	blt	a0,zero,.L615
.L611:
	srai	a5,a1,63
	xor	a1,a5,a1
	li	a2,1
	subw	a1,a1,a5
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	beq	s0,zero,.L612
	neg	a0,a0
.L612:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L615:
	.cfi_restore_state
	neg	a0,a0
	li	s0,1
	j	.L611
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	li	a4,17
	li	a5,1
	sext.w	a6,a0
.L617:
	sext.w	a3,a1
	bgeu	a3,a6,.L627
	addiw	a4,a4,-1
	beq	a4,zero,.L625
	slliw	a3,a1,16
	sraiw	a3,a3,16
	blt	a3,zero,.L628
	slliw	a1,a1,1
	slli	a1,a1,48
	srli	a1,a1,48
	slliw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	j	.L617
.L627:
	li	a3,0
	j	.L619
.L625:
	li	a3,0
	j	.L619
.L628:
	li	a3,0
	j	.L619
.L622:
	srli	a5,a5,1
	srli	a1,a1,1
.L619:
	beq	a5,zero,.L629
	sext.w	a4,a0
	bltu	a4,a1,.L622
	subw	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	or	a3,a3,a5
	j	.L622
.L629:
	bne	a2,zero,.L624
	mv	a0,a3
.L624:
	ret
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	li	a4,65
	li	a5,1
	j	.L631
.L635:
	slli	a1,a1,1
	slli	a5,a5,1
.L631:
	bgeu	a1,a0,.L641
	addiw	a4,a4,-1
	beq	a4,zero,.L639
	slli	a3,a1,32
	bge	a3,zero,.L635
	li	a4,0
	j	.L633
.L641:
	li	a4,0
	j	.L633
.L639:
	li	a4,0
	j	.L633
.L636:
	srli	a5,a5,1
	srli	a1,a1,1
.L633:
	beq	a5,zero,.L642
	bltu	a0,a1,.L636
	sub	a0,a0,a1
	or	a4,a4,a5
	j	.L636
.L642:
	bne	a2,zero,.L638
	mv	a0,a4
.L638:
	ret
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	mv	a5,a0
	andi	a4,a1,32
	beq	a4,zero,.L644
	addiw	a1,a1,-32
	sllw	a0,a0,a1
	slli	a0,a0,32
	ret
.L644:
	beq	a1,zero,.L646
	sllw	a0,a0,a1
	srai	a4,a5,32
	sllw	a4,a4,a1
	li	a3,32
	subw	a3,a3,a1
	srlw	a5,a5,a3
	or	a5,a5,a4
	slli	a5,a5,32
	slli	a0,a0,32
	srli	a0,a0,32
	or	a0,a0,a5
.L646:
	ret
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	1
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	andi	a5,a2,64
	beq	a5,zero,.L649
	li	a4,0
	addiw	a2,a2,-64
	sll	a1,a0,a2
.L650:
	mv	a0,a4
.L651:
	ret
.L649:
	beq	a2,zero,.L651
	sll	a4,a0,a2
	sll	a1,a1,a2
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	or	a1,a5,a1
	j	.L650
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	1
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	mv	a5,a0
	andi	a4,a1,32
	beq	a4,zero,.L654
	srai	a5,a0,32
	sraiw	a0,a5,31
	addiw	a1,a1,-32
	sraw	a5,a5,a1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
	ret
.L654:
	beq	a1,zero,.L656
	srai	a4,a0,32
	sraw	a0,a4,a1
	li	a3,32
	subw	a3,a3,a1
	sllw	a4,a4,a3
	srlw	a1,a5,a1
	or	a4,a4,a1
	slli	a4,a4,32
	srli	a4,a4,32
	slli	a0,a0,32
	or	a0,a0,a4
.L656:
	ret
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	1
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	andi	a5,a2,64
	beq	a5,zero,.L659
	srai	a4,a1,63
	addiw	a2,a2,-64
	sra	a0,a1,a2
.L660:
	mv	a1,a4
.L661:
	ret
.L659:
	beq	a2,zero,.L661
	sra	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L660
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	srli	t1,a0,56
	srli	a7,a0,40
	li	a5,65536
	addi	a5,a5,-256
	and	a7,a7,a5
	srli	a6,a0,24
	li	a5,16711680
	and	a6,a6,a5
	srli	a1,a0,8
	li	a5,255
	slli	a5,a5,24
	and	a1,a1,a5
	slli	a2,a0,8
	li	a5,255
	slli	a5,a5,32
	and	a2,a2,a5
	slli	a3,a0,24
	li	a5,255
	slli	a5,a5,40
	and	a3,a3,a5
	slli	a4,a0,40
	li	a5,255
	slli	a5,a5,48
	and	a4,a4,a5
	slli	a5,a0,56
	or	a5,a5,t1
	or	a5,a5,a7
	or	a5,a5,a6
	or	a5,a5,a1
	or	a5,a5,a2
	or	a5,a5,a3
	or	a0,a5,a4
	ret
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	1
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	srliw	a3,a0,24
	srliw	a4,a0,8
	li	a5,65536
	addi	a5,a5,-256
	and	a4,a4,a5
	slliw	a5,a0,8
	li	a2,16711680
	and	a5,a5,a2
	slliw	a0,a0,24
	or	a0,a0,a3
	or	a0,a0,a4
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	1
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	li	a3,65536
	addi	a3,a3,-1
	sgtu	a3,a0,a3
	xori	a3,a3,1
	slliw	a3,a3,4
	li	a5,16
	subw	a5,a5,a3
	srlw	a4,a0,a5
	li	a5,65536
	addi	a5,a5,-256
	and	a5,a4,a5
	seqz	a5,a5
	slliw	a5,a5,3
	li	a2,8
	subw	a2,a2,a5
	srlw	a4,a4,a2
	addw	a5,a5,a3
	andi	a3,a4,240
	seqz	a3,a3
	slliw	a3,a3,2
	li	a2,4
	subw	a2,a2,a3
	srlw	a4,a4,a2
	addw	a5,a5,a3
	andi	a3,a4,12
	seqz	a3,a3
	slliw	a3,a3,1
	li	a2,2
	subw	a1,a2,a3
	srlw	a4,a4,a1
	addw	a5,a5,a3
	andi	a0,a4,2
	seqz	a0,a0
	subw	a2,a2,a4
	mulw	a0,a0,a2
	addw	a0,a5,a0
	ret
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	1
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	seqz	s0,a1
	negw	s0,s0
	not	a5,s0
	and	a5,a5,a1
	and	a0,s0,a0
	or	a0,a5,a0
	call	__clzdi2
	andi	s0,s0,64
	addw	a0,a0,s0
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	mv	a5,a0
	srai	a3,a0,32
	srai	a4,a1,32
	blt	a3,a4,.L670
	li	a0,2
	bgt	a3,a4,.L669
	sext.w	a3,a5
	sext.w	a4,a1
	li	a0,0
	bltu	a3,a4,.L669
	sgtu	a0,a3,a4
	addi	a0,a0,1
	ret
.L670:
	li	a0,0
.L669:
	ret
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	1
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__cmpdi2
	addiw	a0,a0,-1
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	mv	a5,a0
	blt	a1,a3,.L678
	li	a0,2
	bgt	a1,a3,.L677
	li	a0,0
	bltu	a5,a2,.L677
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L678:
	li	a0,0
.L677:
	ret
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	1
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	slli	a4,a0,48
	srli	a4,a4,48
	seqz	a4,a4
	slliw	a4,a4,4
	srlw	a5,a0,a4
	andi	a0,a5,0xff
	seqz	a0,a0
	slliw	a0,a0,3
	srlw	a5,a5,a0
	addw	a4,a0,a4
	andi	a3,a5,15
	seqz	a3,a3
	slliw	a3,a3,2
	srlw	a5,a5,a3
	addw	a4,a4,a3
	andi	a3,a5,3
	seqz	a3,a3
	slliw	a3,a3,1
	srlw	a5,a5,a3
	andi	a5,a5,3
	addw	a4,a4,a3
	not	a3,a5
	andi	a3,a3,1
	srliw	a5,a5,1
	li	a0,2
	subw	a0,a0,a5
	negw	a5,a3
	and	a0,a0,a5
	addw	a0,a4,a0
	ret
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	1
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	seqz	s0,a0
	negw	s0,s0
	and	a1,s0,a1
	not	a5,s0
	and	a0,a5,a0
	or	a0,a0,a1
	call	__ctzdi2
	andi	s0,s0,64
	addw	a0,a0,s0
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	bne	a0,zero,.L686
	beq	a1,zero,.L687
	mv	a0,a1
	call	__ctzdi2
	addiw	a0,a0,65
	j	.L687
.L686:
	call	__ctzdi2
	addiw	a0,a0,1
.L687:
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	mv	a5,a0
	andi	a4,a1,32
	beq	a4,zero,.L691
	srai	a0,a0,32
	addiw	a1,a1,-32
	srlw	a0,a0,a1
	slli	a0,a0,32
	srli	a0,a0,32
	ret
.L691:
	beq	a1,zero,.L693
	srai	a4,a0,32
	srlw	a0,a4,a1
	li	a3,32
	subw	a3,a3,a1
	sllw	a4,a4,a3
	srlw	a1,a5,a1
	or	a4,a4,a1
	slli	a4,a4,32
	srli	a4,a4,32
	slli	a0,a0,32
	or	a0,a0,a4
.L693:
	ret
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	1
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	andi	a5,a2,64
	beq	a5,zero,.L696
	li	a4,0
	addiw	a2,a2,-64
	srl	a0,a1,a2
.L697:
	mv	a1,a4
.L698:
	ret
.L696:
	beq	a2,zero,.L698
	srl	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L697
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	1
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	slli	a4,a0,48
	srli	a4,a4,48
	slli	a3,a1,48
	srli	a3,a3,48
	li	a6,-1
	slli	a6,a6,32
	mulw	a5,a4,a3
	srliw	a2,a5,16
	slli	a5,a5,48
	srli	a5,a5,48
	srliw	a0,a0,16
	mulw	a3,a0,a3
	addw	a3,a3,a2
	slliw	a2,a3,16
	addw	a2,a2,a5
	srliw	a3,a3,16
	slli	a3,a3,32
	slli	a2,a2,32
	srli	a2,a2,32
	or	a5,a2,a3
	srli	a3,a2,16
	slli	a2,a2,48
	srli	a2,a2,48
	and	a5,a5,a6
	or	a5,a5,a2
	srliw	a1,a1,16
	mulw	a4,a4,a1
	addw	a4,a4,a3
	slliw	a3,a4,16
	addw	a3,a3,a2
	slli	a3,a3,32
	srli	a3,a3,32
	and	a6,a5,a6
	or	a5,a6,a3
	srai	a3,a5,32
	srliw	a4,a4,16
	addw	a4,a4,a3
	slli	a4,a4,32
	slli	a5,a5,32
	srli	a5,a5,32
	or	a5,a5,a4
	srai	a4,a5,32
	mulw	a0,a0,a1
	addw	a0,a0,a4
	slli	a0,a0,32
	slli	a5,a5,32
	srli	a5,a5,32
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	1
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s0,a0
	mv	s1,a1
	sext.w	s2,a0
	sext.w	s3,a1
	mv	a1,s3
	mv	a0,s2
	call	__muldsi3
	srai	a4,a0,32
	srai	a5,s0,32
	mulw	a5,a5,s3
	srai	s1,s1,32
	mulw	s1,s1,s2
	addw	a5,a5,s1
	addw	a5,a5,a4
	slli	a5,a5,32
	slli	a0,a0,32
	srli	a0,a0,32
	or	a0,a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
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
	slli	a2,a0,32
	srli	a2,a2,32
	slli	a6,a1,32
	srli	a6,a6,32
	mul	a3,a2,a6
	srli	a5,a3,32
	srli	a4,a0,32
	mul	a6,a4,a6
	add	a5,a5,a6
	srli	a6,a5,32
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a3,a3,32
	srli	a3,a3,32
	srli	a1,a1,32
	mul	a2,a2,a1
	add	a5,a5,a2
	slli	a0,a5,32
	srli	a5,a5,32
	add	a5,a5,a6
	mul	a1,a4,a1
	add	a0,a0,a3
	add	a1,a1,a5
	ret
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	1
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s3,a0
	mv	s0,a1
	mv	s2,a2
	mv	s1,a3
	mv	a1,a2
	call	__mulddi3
	mul	s0,s0,s2
	mul	s1,s1,s3
	add	s0,s0,s1
	add	a1,s0,a1
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
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
	neg	a0,a0
	ret
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	1
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	snez	a5,a0
	neg	a1,a1
	neg	a0,a0
	sub	a1,a1,a5
	ret
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	1
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	srai	a5,a0,32
	sext.w	a0,a0
	xor	a5,a5,a0
	srliw	a4,a5,16
	xor	a5,a4,a5
	srliw	a4,a5,8
	xor	a5,a4,a5
	srliw	a4,a5,4
	xor	a5,a4,a5
	andi	a5,a5,15
	li	a0,28672
	addiw	a0,a0,-1642
	sraw	a0,a0,a5
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	1
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	xor	a1,a1,a0
	srai	a5,a1,32
	sext.w	a1,a1
	xor	a5,a5,a1
	srliw	a4,a5,16
	xor	a5,a4,a5
	srliw	a4,a5,8
	xor	a5,a4,a5
	srliw	a4,a5,4
	xor	a5,a4,a5
	andi	a5,a5,15
	li	a0,28672
	addiw	a0,a0,-1642
	sraw	a0,a0,a5
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	1
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	srliw	a5,a0,16
	xor	a0,a5,a0
	srliw	a5,a0,8
	xor	a0,a5,a0
	srliw	a5,a0,4
	xor	a0,a5,a0
	andi	a0,a0,15
	li	a5,28672
	addiw	a5,a5,-1642
	sraw	a0,a5,a0
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	1
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	srli	a4,a0,1
	li	a5,1431654400
	addi	a5,a5,1365
	slli	a3,a5,32
	add	a5,a3,a5
	and	a5,a4,a5
	sub	a0,a0,a5
	srli	a3,a0,2
	li	a4,858992640
	addi	a4,a4,819
	slli	a5,a4,32
	add	a5,a5,a4
	and	a4,a3,a5
	and	a0,a0,a5
	add	a0,a4,a0
	srli	a5,a0,4
	add	a0,a5,a0
	li	a5,252645376
	addi	a5,a5,-241
	slli	a4,a5,32
	add	a5,a4,a5
	and	a0,a0,a5
	srli	a4,a0,32
	addw	a4,a4,a0
	srliw	a5,a4,16
	addw	a5,a5,a4
	srliw	a0,a5,8
	addw	a0,a0,a5
	andi	a0,a0,127
	ret
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	1
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	srliw	a5,a0,1
	li	a4,1431654400
	addi	a4,a4,1365
	and	a5,a5,a4
	subw	a0,a0,a5
	srliw	a4,a0,2
	li	a5,858992640
	addi	a5,a5,819
	and	a4,a4,a5
	and	a0,a0,a5
	addw	a4,a4,a0
	srliw	a5,a4,4
	addw	a5,a5,a4
	li	a4,252645376
	addi	a4,a4,-241
	and	a5,a5,a4
	srliw	a4,a5,16
	addw	a5,a4,a5
	srliw	a0,a5,8
	addw	a0,a0,a5
	andi	a0,a0,63
	ret
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	1
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	slli	a4,a1,63
	srli	a5,a0,1
	or	a5,a4,a5
	srli	a2,a1,1
	li	a3,1431654400
	addi	a3,a3,1365
	slli	a4,a3,32
	add	a4,a4,a3
	and	a5,a5,a4
	and	a4,a2,a4
	sub	a5,a0,a5
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	sub	a1,a1,a0
	slli	a4,a1,62
	srli	a3,a5,2
	or	a3,a4,a3
	srli	a2,a1,2
	li	a0,858992640
	addi	a0,a0,819
	slli	a4,a0,32
	add	a4,a4,a0
	and	a3,a3,a4
	and	a2,a2,a4
	and	a5,a5,a4
	and	a1,a1,a4
	add	a5,a3,a5
	sltu	a3,a5,a3
	add	a4,a2,a1
	add	a3,a3,a4
	slli	a2,a3,60
	srli	a4,a5,4
	or	a4,a2,a4
	srli	a2,a3,4
	add	a5,a4,a5
	sltu	a4,a5,a4
	add	a3,a2,a3
	add	a4,a4,a3
	li	a2,252645376
	addi	a2,a2,-241
	slli	a3,a2,32
	add	a3,a3,a2
	and	a5,a5,a3
	and	a4,a4,a3
	add	a4,a4,a5
	srli	a5,a4,32
	addw	a4,a5,a4
	srliw	a5,a4,16
	addw	a5,a5,a4
	srliw	a0,a5,8
	addw	a0,a0,a5
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	1
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	srliw	a4,a0,31
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	j	.L717
.L715:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L716
	fmul.d	fa0,fa0,fa0
.L717:
	andi	a5,a0,1
	beq	a5,zero,.L715
	fmul.d	fa5,fa5,fa0
	j	.L715
.L716:
	fmv.d	fa0,fa5
	beq	a4,zero,.L718
	lui	a5,%hi(.LC13)
	fld	fa0,%lo(.LC13)(a5)
	fdiv.d	fa0,fa0,fa5
.L718:
	ret
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	1
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	srliw	a4,a0,31
	lui	a5,%hi(.LC18)
	flw	fa5,%lo(.LC18)(a5)
	j	.L723
.L721:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L722
	fmul.s	fa0,fa0,fa0
.L723:
	andi	a5,a0,1
	beq	a5,zero,.L721
	fmul.s	fa5,fa5,fa0
	j	.L721
.L722:
	fmv.s	fa0,fa5
	beq	a4,zero,.L724
	lui	a5,%hi(.LC18)
	flw	fa0,%lo(.LC18)(a5)
	fdiv.s	fa0,fa0,fa5
.L724:
	ret
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	1
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	mv	a5,a0
	srai	a3,a0,32
	srai	a4,a1,32
	bltu	a3,a4,.L728
	li	a0,2
	bgtu	a3,a4,.L727
	sext.w	a3,a5
	sext.w	a4,a1
	li	a0,0
	bltu	a3,a4,.L727
	sgtu	a0,a3,a4
	addi	a0,a0,1
	ret
.L728:
	li	a0,0
.L727:
	ret
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	1
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__ucmpdi2
	addiw	a0,a0,-1
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	mv	a5,a0
	bltu	a1,a3,.L736
	li	a0,2
	bgtu	a1,a3,.L735
	li	a0,0
	bltu	a5,a2,.L735
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L736:
	li	a0,0
.L735:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.section	.srodata.cst8,"aM",@progbits,8
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
