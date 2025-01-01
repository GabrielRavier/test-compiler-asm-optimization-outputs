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
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L5
.L6:
	addi	a1,a1,-1
	addi	a5,a5,-1
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a0,a5,.L6
	ret
.L4:
	beq	a0,a1,.L5
	beq	a2,zero,.L5
	add	a2,a0,a2
	mv	a5,a0
.L7:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a2,a5,.L7
.L5:
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
	beq	a3,zero,.L18
.L11:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	sext.w	a5,a5
	beq	a5,a2,.L19
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a3,zero,.L11
	li	a0,0
	ret
.L18:
	li	a0,0
	ret
.L19:
	addi	a0,a0,1
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
	beq	a2,zero,.L26
.L21:
	lbu	a5,0(a0)
	beq	a5,a1,.L27
	addi	a0,a0,1
	addi	a2,a2,-1
	bne	a2,zero,.L21
	li	a0,0
	ret
.L26:
	li	a0,0
	ret
.L27:
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
	beq	a2,zero,.L37
.L29:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L38
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L29
	li	a0,0
	ret
.L37:
	li	a0,0
	ret
.L38:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	subw	a0,a0,a5
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
	beq	a2,zero,.L40
	add	a2,a0,a2
	mv	a5,a0
.L41:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a2,a5,.L41
.L40:
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
	add	a2,a0,a2
	addi	a4,a0,-1
.L44:
	beq	a2,a4,.L47
	mv	a0,a2
	lbu	a5,0(a2)
	addi	a2,a2,-1
	bne	a5,a1,.L44
	ret
.L47:
	li	a0,0
.L43:
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
	beq	a2,zero,.L49
	add	a2,a0,a2
	mv	a5,a0
	andi	a1,a1,0xff
.L50:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a2,a5,.L50
.L49:
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
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L53
.L54:
	addi	a1,a1,1
	addi	a0,a0,1
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L54
.L53:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L62
.L57:
	lbu	a5,0(a0)
	beq	a5,a1,.L56
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L57
.L56:
	ret
.L62:
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
.L65:
	lbu	a5,0(a0)
	sext.w	a4,a5
	beq	a4,a1,.L64
	addi	a0,a0,1
	bne	a5,zero,.L65
	li	a0,0
.L64:
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
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L69
.L68:
	lbu	a5,0(a0)
	beq	a5,zero,.L69
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	beq	a4,a5,.L68
.L69:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L75
	mv	a5,a0
.L74:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L74
.L73:
	sub	a0,a5,a0
	ret
.L75:
	mv	a5,a0
	j	.L73
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	addi	a3,a2,-1
	beq	a2,zero,.L82
	lbu	a5,0(a0)
	beq	a5,zero,.L79
	add	a3,a0,a3
.L80:
	lbu	a5,0(a1)
	beq	a5,zero,.L79
	beq	a3,a0,.L83
	lbu	a4,0(a0)
	bne	a5,a4,.L79
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	bne	a5,zero,.L80
	j	.L79
.L83:
	mv	a0,a3
.L79:
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	subw	a0,a0,a5
	ret
.L82:
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
	li	a5,1
	ble	a2,a5,.L84
	andi	a2,a2,-2
	add	a4,a0,a2
.L86:
	lbu	a5,1(a0)
	sb	a5,0(a1)
	lbu	a5,0(a0)
	sb	a5,1(a1)
	addi	a1,a1,2
	addi	a0,a0,2
	bne	a0,a4,.L86
.L84:
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
	beq	a0,a5,.L92
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L92:
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
	bleu	a0,a5,.L95
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L95:
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
	beq	a0,a5,.L102
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L102:
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
	bleu	a0,a4,.L106
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L105
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a4,a5
	bleu	a4,a0,.L105
	li	a4,-65536
	addiw	a4,a4,7
	addw	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L106:
	li	a0,1
.L105:
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
	bleu	a0,a4,.L117
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L112
	li	a4,-8192
	addiw	a4,a4,-42
	addw	a4,a4,a5
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L112
	li	a3,-57344
	addw	a3,a3,a5
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L112
	li	a4,-65536
	addiw	a4,a4,4
	addw	a4,a4,a5
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L112
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L112:
	ret
.L117:
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
	bleu	a4,a5,.L120
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L120:
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
	beq	a5,zero,.L122
	feq.d	a5,fa1,fa1
	beq	a5,zero,.L126
	fgt.d	a5,fa0,fa1
	beq	a5,zero,.L129
	fsub.d	fa0,fa0,fa1
	ret
.L126:
	fmv.d	fa0,fa1
	ret
.L129:
	fmv.d.x	fa0,zero
.L122:
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
	beq	a5,zero,.L130
	feq.s	a5,fa1,fa1
	beq	a5,zero,.L134
	fgt.s	a5,fa0,fa1
	beq	a5,zero,.L137
	fsub.s	fa0,fa0,fa1
	ret
.L134:
	fmv.s	fa0,fa1
	ret
.L137:
	fmv.s.x	fa0,zero
.L130:
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
	beq	a3,zero,.L143
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L138
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L140
	beq	a3,zero,.L138
	fmv.d	fa0,fa1
	ret
.L140:
	flt.d	a3,fa0,fa1
	beq	a3,zero,.L138
	fmv.d	fa0,fa1
	ret
.L143:
	fmv.d	fa0,fa1
	ret
.L138:
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
	beq	a3,zero,.L151
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L146
	li	a3,-2147483648
	and	a2,a3,a5
	sext.w	a2,a2
	and	a3,a3,a4
	sext.w	a3,a3
	beq	a2,a3,.L148
	beq	a2,zero,.L146
	fmv.s	fa0,fa1
	ret
.L148:
	flt.s	a3,fa0,fa1
	beq	a3,zero,.L146
	fmv.s	fa0,fa1
	ret
.L151:
	fmv.s	fa0,fa1
	ret
.L146:
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
	bne	a0,zero,.L160
	mv	a2,s3
	mv	a3,s2
	mv	a0,s3
	mv	a1,s2
	call	__unordtf2
	bne	a0,zero,.L161
	srli	a5,s0,63
	srli	a4,s2,63
	beq	a5,a4,.L156
	beq	a5,zero,.L162
	mv	a0,s3
	mv	a1,s2
	j	.L154
.L156:
	mv	a2,s3
	mv	a3,s2
	mv	a0,s1
	mv	a1,s0
	call	__lttf2
	bge	a0,zero,.L159
	mv	s1,s3
	mv	s0,s2
.L159:
	mv	a0,s1
	mv	a1,s0
.L154:
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
.L160:
	.cfi_restore_state
	mv	a0,s3
	mv	a1,s2
	j	.L154
.L161:
	mv	a0,s1
	mv	a1,s0
	j	.L154
.L162:
	mv	a0,s1
	mv	a1,s0
	j	.L154
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
	beq	a3,zero,.L169
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L164
	srli	a3,a4,63
	srli	a2,a5,63
	beq	a3,a2,.L166
	fmv.d	fa0,fa1
	beq	a3,zero,.L164
	fmv.d.x	fa0,a4
	ret
.L166:
	flt.d	a3,fa0,fa1
	fmv.d	fa0,fa1
	beq	a3,zero,.L164
	fmv.d.x	fa0,a4
	ret
.L169:
	fmv.d	fa0,fa1
	ret
.L164:
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
	beq	a3,zero,.L177
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L172
	li	a3,-2147483648
	and	a2,a3,a4
	sext.w	a2,a2
	and	a3,a3,a5
	sext.w	a3,a3
	beq	a2,a3,.L174
	fmv.s	fa0,fa1
	beq	a2,zero,.L172
	fmv.s.x	fa0,a4
	ret
.L174:
	flt.s	a3,fa0,fa1
	fmv.s	fa0,fa1
	beq	a3,zero,.L172
	fmv.s.x	fa0,a4
	ret
.L177:
	fmv.s	fa0,fa1
	ret
.L172:
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
	bne	a0,zero,.L186
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L187
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L182
	beq	a5,zero,.L188
	mv	a0,s3
	mv	a1,s2
	j	.L180
.L182:
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	bge	a0,zero,.L185
	mv	s1,s3
	mv	s0,s2
.L185:
	mv	a0,s1
	mv	a1,s0
.L180:
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
.L186:
	.cfi_restore_state
	mv	a0,s1
	mv	a1,s0
	j	.L180
.L187:
	mv	a0,s3
	mv	a1,s2
	j	.L180
.L188:
	mv	a0,s1
	mv	a1,s0
	j	.L180
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
	beq	a0,zero,.L193
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	lui	a2,%hi(digits)
.L192:
	addi	a5,a2,%lo(digits)
	andi	a3,a0,63
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srliw	a0,a0,6
	bne	a0,zero,.L192
.L191:
	sb	zero,0(a4)
	lui	a0,%hi(s.0)
	addi	a0,a0,%lo(s.0)
	ret
.L193:
	lui	a4,%hi(s.0)
	addi	a4,a4,%lo(s.0)
	j	.L191
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
	beq	a1,zero,.L200
	ld	a5,0(a1)
	sd	a5,0(a0)
	sd	a1,8(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L197
	sd	a0,8(a5)
.L197:
	ret
.L200:
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
	beq	a5,zero,.L202
	ld	a4,8(a0)
	sd	a4,8(a5)
.L202:
	ld	a5,8(a0)
	beq	a5,zero,.L201
	ld	a4,0(a0)
	sd	a4,0(a5)
.L201:
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
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	mv	s6,a0
	mv	s7,a1
	mv	s8,a2
	mv	s3,a3
	ld	s2,0(a2)
	beq	s2,zero,.L205
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s4,a4
	mv	s0,a1
	li	s1,0
.L207:
	mv	s5,s0
	mv	a1,s0
	mv	a0,s6
	jalr	s4
	beq	a0,zero,.L210
	addi	s1,s1,1
	add	s0,s0,s3
	bne	s2,s1,.L207
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s4,32(sp)
	.cfi_restore 20
.L205:
	addi	a5,s2,1
	sd	a5,0(s8)
	mul	s2,s3,s2
	mv	a2,s3
	mv	a1,s6
	add	a0,s7,s2
	call	memcpy
	mv	s5,a0
.L204:
	mv	a0,s5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s6,16(sp)
	.cfi_restore 22
	ld	s7,8(sp)
	.cfi_restore 23
	ld	s8,0(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L210:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s4,32(sp)
	.cfi_restore 20
	j	.L204
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
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	ld	s5,0(a2)
	beq	s5,zero,.L214
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s2,a0
	mv	s4,a3
	mv	s3,a4
	mv	s0,a1
	li	s1,0
.L213:
	mv	s6,s0
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	beq	a0,zero,.L217
	addi	s1,s1,1
	add	s0,s0,s4
	bne	s5,s1,.L213
	li	s6,0
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
	j	.L211
.L214:
	li	s6,0
	j	.L211
.L217:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
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
.L211:
	mv	a0,s6
	ld	ra,56(sp)
	.cfi_restore 1
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	j	.L220
.L221:
	addi	s0,s0,1
.L220:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L221
	li	a5,43
	beq	s1,a5,.L227
	li	a5,45
	mv	a3,a0
	bne	s1,a5,.L223
	li	a3,1
.L222:
	addi	s0,s0,1
.L223:
	lbu	a5,0(s0)
	addiw	a5,a5,-48
	li	a4,9
	bgtu	a5,a4,.L224
.L225:
	slliw	a5,a0,2
	addw	a5,a5,a0
	slliw	a5,a5,1
	addi	s0,s0,1
	lbu	a0,-1(s0)
	addiw	a0,a0,-48
	subw	a0,a5,a0
	lbu	a5,0(s0)
	addiw	a5,a5,-48
	bleu	a5,a4,.L225
.L224:
	bne	a3,zero,.L226
	negw	a0,a0
.L226:
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
.L227:
	.cfi_restore_state
	mv	a3,a0
	j	.L222
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	j	.L232
.L233:
	addi	s0,s0,1
.L232:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L233
	li	a5,43
	beq	s1,a5,.L234
	li	a5,45
	bne	s1,a5,.L235
	li	a0,1
.L234:
	addi	s0,s0,1
.L235:
	lbu	a5,0(s0)
	addiw	a5,a5,-48
	li	a4,9
	bgtu	a5,a4,.L239
	li	a5,0
	mv	a3,a4
.L237:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addiw	a5,a5,-48
	sub	a5,a4,a5
	lbu	a4,0(s0)
	addiw	a4,a4,-48
	bleu	a4,a3,.L237
.L236:
	bne	a0,zero,.L231
	neg	a5,a5
.L231:
	mv	a0,a5
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
.L239:
	.cfi_restore_state
	li	a5,0
	j	.L236
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	1
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	j	.L243
.L244:
	addi	s0,s0,1
.L243:
	lbu	s1,0(s0)
	mv	a0,s1
	call	isspace
	bne	a0,zero,.L244
	li	a5,43
	beq	s1,a5,.L245
	li	a5,45
	bne	s1,a5,.L246
	li	a0,1
.L245:
	addi	s0,s0,1
.L246:
	lbu	a5,0(s0)
	addiw	a5,a5,-48
	li	a4,9
	bgtu	a5,a4,.L250
	li	a5,0
	mv	a3,a4
.L248:
	slli	a4,a5,2
	add	a4,a4,a5
	slli	a4,a4,1
	addi	s0,s0,1
	lbu	a5,-1(s0)
	addiw	a5,a5,-48
	sub	a5,a4,a5
	lbu	a4,0(s0)
	addiw	a4,a4,-48
	bleu	a4,a3,.L248
.L247:
	bne	a0,zero,.L242
	neg	a5,a5
.L242:
	mv	a0,a5
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
.L250:
	.cfi_restore_state
	li	a5,0
	j	.L247
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
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s5,a0
	mv	s4,a1
	mv	s0,a2
	mv	s3,a3
	mv	s6,a4
	beq	a2,zero,.L257
	sd	s2,32(sp)
	.cfi_offset 18, -32
	j	.L256
.L258:
	mv	s0,s2
.L255:
	beq	s0,zero,.L262
.L256:
	srli	s2,s0,1
	mul	s1,s2,s3
	add	s1,s4,s1
	mv	a1,s1
	mv	a0,s5
	jalr	s6
	blt	a0,zero,.L258
	ble	a0,zero,.L261
	add	s4,s1,s3
	addi	s0,s0,-1
	sub	s0,s0,s2
	j	.L255
.L262:
	li	s1,0
	ld	s2,32(sp)
	.cfi_restore 18
.L253:
	mv	a0,s1
	ld	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
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
.L257:
	.cfi_restore_state
	li	s1,0
	j	.L253
.L261:
	.cfi_offset 18, -32
	ld	s2,32(sp)
	.cfi_restore 18
	j	.L253
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
	mv	s3,a1
	mv	s2,a3
	mv	s5,a4
	mv	s4,a5
	sext.w	s1,a2
	bne	s1,zero,.L266
	li	s0,0
	j	.L263
.L265:
	sraiw	s1,s1,1
	beq	s1,zero,.L270
.L266:
	sraiw	s0,s1,1
	mul	s0,s0,s2
	add	s0,s3,s0
	mv	a2,s4
	mv	a1,s0
	mv	a0,s6
	jalr	s5
	beq	a0,zero,.L263
	ble	a0,zero,.L265
	add	s3,s0,s2
	addiw	s1,s1,-1
	j	.L265
.L270:
	li	s0,0
.L263:
	mv	a0,s0
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
	lw	a5,0(a0)
	beq	a5,zero,.L289
.L283:
	lw	a5,0(a0)
	beq	a5,a1,.L285
	addi	a0,a0,4
	lw	a5,0(a0)
	bne	a5,zero,.L283
.L285:
	lw	a5,0(a0)
	beq	a5,zero,.L290
.L282:
	ret
.L289:
	li	a0,0
	ret
.L290:
	li	a0,0
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
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L293
.L292:
	lw	a5,0(a0)
	beq	a5,zero,.L293
	lw	a5,0(a1)
	beq	a5,zero,.L293
	addi	a0,a0,4
	addi	a1,a1,4
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L292
.L293:
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L295
	sgt	a0,a4,a5
.L295:
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
.L299:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L299
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
	lw	a5,0(a0)
	beq	a5,zero,.L304
	mv	a5,a0
.L303:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L303
.L302:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L304:
	mv	a5,a0
	j	.L302
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	beq	a2,zero,.L315
.L307:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L309
	beq	a5,zero,.L309
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L307
	li	a0,0
	ret
.L315:
	li	a0,0
	ret
.L309:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	bge	a4,a5,.L314
	li	a0,-1
.L314:
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
	beq	a2,zero,.L322
.L317:
	lw	a5,0(a0)
	beq	a5,a1,.L323
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a2,zero,.L317
	li	a0,0
	ret
.L322:
	li	a0,0
	ret
.L323:
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
	beq	a2,zero,.L334
.L325:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L335
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L325
	li	a0,0
	ret
.L334:
	li	a0,0
	ret
.L335:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	bge	a4,a5,.L332
	li	a0,-1
.L332:
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
	addi	a5,a2,-1
	beq	a2,zero,.L337
	mv	a4,a0
	li	a2,-1
.L338:
	addi	a1,a1,4
	addi	a4,a4,4
	lw	a3,-4(a1)
	sw	a3,-4(a4)
	addi	a5,a5,-1
	bne	a5,a2,.L338
.L337:
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
	beq	a0,a1,.L341
	sub	a5,a0,a1
	slli	a4,a2,2
	bltu	a5,a4,.L342
	addi	a4,a2,-1
	mv	a5,a0
	li	a6,-1
	beq	a2,zero,.L349
.L343:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a3,-4(a1)
	sw	a3,-4(a5)
	addi	a4,a4,-1
	bne	a4,a6,.L343
.L341:
	ret
.L349:
	ret
.L342:
	addi	a5,a2,-1
	beq	a2,zero,.L341
	slli	a5,a5,2
	li	a2,-4
.L344:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L344
	ret
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	addi	a5,a2,-1
	beq	a2,zero,.L351
	mv	a4,a0
	li	a3,-1
.L352:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L352
.L351:
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
	bgeu	a0,a1,.L355
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L354
.L357:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L357
	ret
.L355:
	beq	a0,a1,.L354
	beq	a2,zero,.L354
	add	a2,a0,a2
.L358:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a2,a0,.L358
.L354:
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
	sll	a5,a0,a1
	negw	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
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
	srl	a5,a0,a1
	negw	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
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
	andi	a1,a1,15
	sllw	a5,a0,a1
	negw	a1,a1
	andi	a1,a1,15
	srlw	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,15
	srlw	a5,a0,a1
	negw	a1,a1
	andi	a1,a1,15
	sllw	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,7
	sllw	a5,a0,a1
	negw	a1,a1
	andi	a1,a1,7
	srlw	a0,a0,a1
	or	a0,a5,a0
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
	andi	a1,a1,7
	srlw	a5,a0,a1
	negw	a1,a1
	andi	a1,a1,7
	sllw	a0,a0,a1
	or	a0,a5,a0
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
	slliw	a0,a0,8
	slli	a0,a0,48
	srli	a0,a0,48
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
	srliw	a4,a0,24
	li	a2,16711680
	and	a3,a0,a2
	srli	a3,a3,8
	slliw	a5,a0,8
	and	a5,a5,a2
	slliw	a0,a0,24
	or	a5,a5,a0
	or	a5,a4,a5
	or	a0,a3,a5
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
	srli	t1,a0,56
	srli	a5,a0,40
	li	a4,65536
	addi	a4,a4,-256
	and	a6,a5,a4
	srli	a5,a0,24
	li	a4,16711680
	and	a1,a5,a4
	srli	a5,a0,8
	li	a4,255
	slli	a4,a4,24
	and	a2,a5,a4
	slli	a5,a0,8
	li	a4,255
	slli	a4,a4,32
	and	a3,a5,a4
	slli	a5,a0,24
	li	a4,255
	slli	a4,a4,40
	and	a4,a5,a4
	slli	a7,a0,40
	li	a5,255
	slli	a5,a5,48
	and	a7,a7,a5
	slli	a5,a0,56
	or	a5,a5,t1
	or	a5,a6,a5
	or	a5,a1,a5
	or	a5,a2,a5
	or	a5,a3,a5
	or	a5,a4,a5
	or	a0,a7,a5
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
.L377:
	srlw	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L379
	addiw	a5,a5,1
	bne	a5,a3,.L377
	li	a0,0
	ret
.L379:
	addiw	a0,a5,1
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
	mv	a4,a0
	beq	a0,zero,.L381
	andi	a0,a0,1
	bne	a0,zero,.L381
	li	a0,1
.L382:
	sraiw	a5,a4,1
	mv	a4,a5
	addiw	a0,a0,1
	andi	a5,a5,1
	beq	a5,zero,.L382
	ret
.L381:
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
	bne	a5,zero,.L386
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a0,fa0,fa5
.L386:
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
	bne	a5,zero,.L390
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a0,fa0,fa5
.L390:
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
	blt	a0,zero,.L396
	li	a2,-1
	lui	a5,%hi(.LC6)
	ld	a3,%lo(.LC6+8)(a5)
	mv	a0,s1
	mv	a1,s0
	call	__gttf2
	sgt	a0,a0,zero
.L394:
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
.L396:
	.cfi_restore_state
	li	a0,1
	j	.L394
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
	beq	a5,zero,.L401
	fadd.s	fa5,fa0,fa0
	feq.s	a5,fa5,fa0
	bne	a5,zero,.L401
	blt	a0,zero,.L407
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L404
.L407:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
	j	.L404
.L403:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L401
	fmul.s	fa5,fa5,fa5
.L404:
	andi	a5,a0,1
	beq	a5,zero,.L403
	fmul.s	fa0,fa0,fa5
	j	.L403
.L401:
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
	beq	a5,zero,.L409
	fadd.d	fa5,fa0,fa0
	feq.d	a5,fa5,fa0
	bne	a5,zero,.L409
	blt	a0,zero,.L415
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L412
.L415:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	j	.L412
.L411:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L409
	fmul.d	fa5,fa5,fa5
.L412:
	andi	a5,a0,1
	beq	a5,zero,.L411
	fmul.d	fa0,fa0,fa5
	j	.L411
.L409:
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
	bne	a0,zero,.L417
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L417
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	blt	s0,zero,.L426
	li	s2,0
	lui	a5,%hi(.LC11)
	ld	s1,%lo(.LC11+8)(a5)
	j	.L421
.L426:
	li	s2,0
	lui	a5,%hi(.LC12)
	ld	s1,%lo(.LC12+8)(a5)
	j	.L421
.L420:
	srliw	a5,s0,31
	addw	a5,a5,s0
	sraiw	s0,a5,1
	beq	s0,zero,.L425
	mv	a2,s2
	mv	a3,s1
	mv	a0,s2
	mv	a1,s1
	call	__multf3
	mv	s2,a0
	mv	s1,a1
.L421:
	andi	a5,s0,1
	beq	a5,zero,.L420
	mv	a2,s2
	mv	a3,s1
	mv	a0,s4
	mv	a1,s3
	call	__multf3
	mv	s4,a0
	mv	s3,a1
	j	.L420
.L425:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L417:
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
	beq	a2,zero,.L428
	add	a2,a1,a2
	mv	a5,a0
.L429:
	addi	a1,a1,1
	lbu	a3,-1(a1)
	addi	a5,a5,1
	lbu	a4,-1(a5)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L429
.L428:
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
	beq	s0,zero,.L433
.L432:
	lbu	a4,0(s1)
	sb	a4,0(a5)
	beq	a4,zero,.L435
	addi	s1,s1,1
	addi	a5,a5,1
	addi	s0,s0,-1
	bne	s0,zero,.L432
.L433:
	sb	zero,0(a5)
.L435:
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
	beq	a1,zero,.L445
.L439:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L446
.L438:
	ret
.L445:
	mv	a0,a1
	ret
.L446:
	addi	a0,a0,1
	bne	a1,a0,.L439
	mv	a0,a1
	ret
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	1
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	lbu	a5,0(a0)
	beq	a5,zero,.L454
.L448:
	mv	a5,a1
.L451:
	lbu	a4,0(a5)
	beq	a4,zero,.L455
	addi	a5,a5,1
	lbu	a3,0(a0)
	bne	a3,a4,.L451
.L449:
	ret
.L454:
	li	a0,0
	ret
.L455:
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L448
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
	j	.L458
.L457:
	addi	a5,a5,1
	beq	a4,zero,.L461
.L458:
	lbu	a4,0(a5)
	sext.w	a3,a4
	bne	a3,a1,.L457
	mv	a0,a5
	j	.L457
.L461:
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
	beq	a0,zero,.L462
	sd	s2,16(sp)
	sd	s3,8(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	mv	s2,a0
	lbu	s3,0(s1)
.L464:
	mv	a1,s3
	mv	a0,s0
	call	strchr
	mv	s0,a0
	beq	a0,zero,.L469
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	strncmp
	beq	a0,zero,.L468
	addi	s0,s0,1
	j	.L464
.L469:
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
.L462:
	mv	a0,s0
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L468:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	j	.L462
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
	bne	a5,zero,.L482
	fmv.d.x	fa5,zero
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L474
	fmv.d.x	fa5,zero
	flt.d	a5,fa1,fa5
	bne	a5,zero,.L473
.L474:
	ret
.L482:
	fmv.d.x	fa5,zero
	fgt.d	a5,fa1,fa5
	bne	a5,zero,.L473
	ret
.L473:
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a0
	sub	s1,a1,a3
	add	s1,a0,s1
	beq	a3,zero,.L483
	bltu	a1,a3,.L488
	bgtu	a0,s1,.L489
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	lbu	s3,0(a2)
	addi	s4,a2,1
	addi	s2,a3,-1
	j	.L486
.L485:
	addi	s0,s0,1
	bltu	s1,s0,.L493
.L486:
	lbu	a5,0(s0)
	bne	a5,s3,.L485
	mv	a2,s2
	mv	a1,s4
	addi	a0,s0,1
	call	memcmp
	bne	a0,zero,.L485
	mv	a0,s0
	ld	s2,16(sp)
	.cfi_remember_state
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	j	.L483
.L493:
	.cfi_restore_state
	li	a0,0
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
.L483:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L488:
	.cfi_restore_state
	li	a0,0
	j	.L483
.L489:
	li	a0,0
	j	.L483
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
	bne	a5,zero,.L521
.L497:
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	li	a5,0
	fge.d	a4,fa0,fa5
	beq	a4,zero,.L516
	lui	a4,%hi(.LC10)
	fld	fa4,%lo(.LC10)(a4)
	lui	a4,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a4)
.L501:
	addiw	a5,a5,1
	fmul.d	fa0,fa0,fa4
	fge.d	a4,fa0,fa5
	bne	a4,zero,.L501
.L502:
	sw	a5,0(a0)
	beq	a3,zero,.L505
	fneg.d	fa0,fa0
.L505:
	ret
.L521:
	fneg.d	fa0,fa0
	li	a3,1
	j	.L497
.L516:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	flt.d	a5,fa0,fa5
	beq	a5,zero,.L517
	fmv.d.x	fa5,zero
	li	a5,0
	feq.d	a4,fa0,fa5
	bne	a4,zero,.L502
	lui	a4,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a4)
.L504:
	addiw	a5,a5,-1
	fadd.d	fa0,fa0,fa0
	flt.d	a4,fa0,fa5
	bne	a4,zero,.L504
	j	.L502
.L517:
	li	a5,0
	j	.L502
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mv	a4,a0
	beq	a0,zero,.L525
	li	a0,0
.L524:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	slli	a1,a1,1
	srli	a4,a4,1
	bne	a4,zero,.L524
	ret
.L525:
	li	a0,0
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
	mv	a4,a0
	li	a0,32
	li	a5,1
	bgeu	a1,a4,.L535
.L528:
	blt	a1,zero,.L535
	slliw	a1,a1,1
	slliw	a3,a5,1
	mv	a5,a3
	bleu	a4,a1,.L530
	addiw	a0,a0,-1
	bne	a0,zero,.L528
.L531:
	bne	a2,zero,.L541
.L536:
	ret
.L533:
	srliw	a5,a5,1
	srliw	a1,a1,1
	beq	a5,zero,.L531
.L534:
	bltu	a4,a1,.L533
	subw	a4,a4,a1
	or	a0,a5,a0
	sext.w	a0,a0
	j	.L533
.L530:
	beq	a3,zero,.L542
.L535:
	li	a0,0
	j	.L534
.L542:
	mv	a0,a3
	j	.L531
.L541:
	mv	a0,a4
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
	beq	a0,zero,.L545
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
.L545:
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
	mv	a5,a0
	srai	a4,a0,63
	xor	a0,a0,a4
	beq	a5,a4,.L552
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__clzdi2
	addiw	a0,a0,-1
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L552:
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
	beq	a0,zero,.L560
	li	a0,0
.L559:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	addw	a0,a5,a0
	srliw	a4,a4,1
	slliw	a1,a1,1
	bne	a4,zero,.L559
	ret
.L560:
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
	srliw	a3,a2,3
	andi	a5,a2,-8
	bgeu	a0,a1,.L563
.L566:
	beq	a3,zero,.L565
	mv	a4,a1
	mv	a3,a0
	srliw	a7,a2,3
	slli	a7,a7,3
	add	a7,a1,a7
.L569:
	ld	a6,0(a4)
	sd	a6,0(a3)
	addi	a4,a4,8
	addi	a3,a3,8
	bne	a7,a4,.L569
.L565:
	bleu	a2,a5,.L562
	slli	a5,a5,32
	srli	a5,a5,32
.L570:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
	sext.w	a4,a5
	bltu	a4,a2,.L570
	ret
.L563:
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bltu	a4,a0,.L566
	addiw	a4,a2,-1
	beq	a2,zero,.L575
	slli	a4,a4,32
	srli	a4,a4,32
	add	a5,a1,a4
	add	a0,a0,a4
.L571:
	mv	a4,a5
	lbu	a3,0(a5)
	sb	a3,0(a0)
	addi	a5,a5,-1
	addi	a0,a0,-1
	bne	a4,a1,.L571
.L562:
	ret
.L575:
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
	srliw	a4,a2,1
	bgeu	a0,a1,.L577
.L580:
	beq	a4,zero,.L579
	mv	a5,a1
	mv	a4,a0
	srliw	a6,a2,1
	slli	a6,a6,1
	add	a6,a1,a6
.L583:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,a6,.L583
.L579:
	andi	a5,a2,1
	beq	a5,zero,.L576
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	add	a5,a0,a2
	lbu	a4,0(a1)
	sb	a4,0(a5)
	ret
.L577:
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bltu	a5,a0,.L580
	addiw	a5,a2,-1
	beq	a2,zero,.L587
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a5
	add	a5,a0,a5
.L584:
	mv	a3,a4
	lbu	a2,0(a4)
	sb	a2,0(a5)
	addi	a4,a4,-1
	addi	a5,a5,-1
	bne	a3,a1,.L584
.L576:
	ret
.L587:
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
	srliw	a3,a2,2
	andi	a5,a2,-4
	bgeu	a0,a1,.L589
.L592:
	beq	a3,zero,.L591
	mv	a4,a1
	mv	a3,a0
	srliw	a7,a2,2
	slli	a7,a7,2
	add	a7,a1,a7
.L595:
	lw	a6,0(a4)
	sw	a6,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a7,a4,.L595
.L591:
	bleu	a2,a5,.L588
	slli	a5,a5,32
	srli	a5,a5,32
.L596:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
	sext.w	a4,a5
	bltu	a4,a2,.L596
	ret
.L589:
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bltu	a4,a0,.L592
	addiw	a4,a2,-1
	beq	a2,zero,.L601
	slli	a4,a4,32
	srli	a4,a4,32
	add	a5,a1,a4
	add	a0,a0,a4
.L597:
	mv	a4,a5
	lbu	a3,0(a5)
	sb	a3,0(a0)
	addi	a5,a5,-1
	addi	a0,a0,-1
	bne	a4,a1,.L597
.L588:
	ret
.L601:
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
	li	a3,15
	li	a2,16
.L610:
	subw	a5,a3,a4
	sraw	a5,a0,a5
	andi	a5,a5,1
	bne	a5,zero,.L609
	addiw	a4,a4,1
	bne	a4,a2,.L610
.L609:
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
.L614:
	sraw	a4,a0,a5
	andi	a4,a4,1
	bne	a4,zero,.L613
	addiw	a5,a5,1
	bne	a5,a3,.L614
.L613:
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
	bne	a5,zero,.L622
	fcvt.l.s a0,fa0,rtz
	ret
.L622:
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
	li	a4,0
	li	a2,16
.L624:
	sraw	a5,a0,a4
	andi	a5,a5,1
	addw	a5,a5,a3
	mv	a3,a5
	addiw	a4,a4,1
	bne	a4,a2,.L624
	andi	a0,a5,1
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
	li	a4,0
	li	a5,0
	mv	a3,a0
	li	a2,16
.L627:
	sraw	a0,a3,a5
	andi	a0,a0,1
	addw	a0,a0,a4
	mv	a4,a0
	addiw	a5,a5,1
	bne	a5,a2,.L627
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
	beq	a0,zero,.L632
	li	a0,0
.L631:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	addw	a0,a5,a0
	srliw	a4,a4,1
	slliw	a1,a1,1
	bne	a4,zero,.L631
	ret
.L632:
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
	mv	a4,a0
	beq	a0,zero,.L637
	beq	a1,zero,.L638
	li	a0,0
.L636:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	addw	a0,a5,a0
	slliw	a4,a4,1
	srliw	a1,a1,1
	bne	a1,zero,.L636
	ret
.L637:
	ret
.L638:
	mv	a0,a1
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
	mv	a4,a0
	li	a0,32
	li	a5,1
	bgeu	a1,a4,.L648
.L641:
	blt	a1,zero,.L648
	slliw	a1,a1,1
	slliw	a3,a5,1
	mv	a5,a3
	bleu	a4,a1,.L643
	addiw	a0,a0,-1
	bne	a0,zero,.L641
.L644:
	bne	a2,zero,.L654
.L649:
	ret
.L646:
	srliw	a5,a5,1
	srliw	a1,a1,1
	beq	a5,zero,.L644
.L647:
	bltu	a4,a1,.L646
	subw	a4,a4,a1
	or	a0,a5,a0
	sext.w	a0,a0
	j	.L646
.L643:
	beq	a3,zero,.L655
.L648:
	li	a0,0
	j	.L647
.L655:
	mv	a0,a3
	j	.L644
.L654:
	mv	a0,a4
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
	bne	a5,zero,.L657
	fgt.s	a0,fa0,fa1
.L657:
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
	bne	a5,zero,.L661
	fgt.d	a0,fa0,fa1
.L661:
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
	mv	a3,a0
	blt	a1,zero,.L675
	li	a2,0
	beq	a1,zero,.L676
.L671:
	li	a4,32
	li	a0,0
.L669:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	addw	a5,a5,a0
	mv	a0,a5
	slliw	a3,a3,1
	sraiw	a1,a1,1
	beq	a1,zero,.L668
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L669
.L668:
	beq	a2,zero,.L673
	negw	a0,a5
	ret
.L675:
	negw	a1,a1
	li	a2,1
	j	.L671
.L676:
	mv	a0,a1
.L673:
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
	.cfi_offset 1, -8
	blt	a0,zero,.L686
	blt	a1,zero,.L687
	li	a2,0
	sext.w	a1,a1
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	j	.L677
.L686:
	neg	a0,a0
	blt	a1,zero,.L688
	li	a2,0
	sext.w	a1,a1
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
.L681:
	neg	a0,a0
.L677:
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L687:
	.cfi_restore_state
	li	a2,0
	negw	a1,a1
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	j	.L681
.L688:
	li	a2,0
	negw	a1,a1
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	j	.L677
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
	.cfi_offset 1, -8
	blt	a0,zero,.L693
	srai	a5,a1,63
	xor	a1,a5,a1
	li	a2,1
	subw	a1,a1,a5
	sext.w	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	j	.L689
.L693:
	srai	a5,a1,63
	xor	a1,a5,a1
	li	a2,1
	subw	a1,a1,a5
	negw	a0,a0
	call	__udivmodsi4
	slli	a0,a0,32
	srli	a0,a0,32
	neg	a0,a0
.L689:
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	mv	a5,a1
	mv	a3,a0
	li	a6,16
	li	a4,1
	sext.w	a7,a0
	bleu	a0,a1,.L702
.L695:
	slliw	a1,a5,16
	sraiw	a1,a1,16
	blt	a1,zero,.L702
	slliw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a4,1
	slli	a4,a4,48
	srli	a4,a4,48
	sext.w	a1,a5
	bleu	a7,a1,.L697
	addiw	a6,a6,-1
	bne	a6,zero,.L695
	li	a0,0
.L698:
	bne	a2,zero,.L709
.L703:
	ret
.L700:
	srli	a4,a4,1
	srli	a5,a5,1
	beq	a4,zero,.L698
.L701:
	sext.w	a1,a3
	bltu	a1,a5,.L700
	subw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	or	a0,a4,a0
	slli	a0,a0,48
	srli	a0,a0,48
	j	.L700
.L697:
	mv	a0,a4
	beq	a4,zero,.L698
.L702:
	li	a0,0
	j	.L701
.L709:
	mv	a0,a3
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
	mv	a3,a0
	li	a4,64
	li	a5,1
	slli	a6,a5,31
	bgeu	a1,a0,.L718
.L711:
	and	a0,a1,a6
	bne	a0,zero,.L718
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L713
	addiw	a4,a4,-1
	bne	a4,zero,.L711
.L714:
	bne	a2,zero,.L724
.L710:
	ret
.L716:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L714
.L717:
	bltu	a3,a1,.L716
	sub	a3,a3,a1
	or	a0,a0,a5
	j	.L716
.L713:
	beq	a5,zero,.L725
.L718:
	li	a0,0
	j	.L717
.L725:
	mv	a0,a5
	j	.L714
.L724:
	mv	a0,a3
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
	beq	a4,zero,.L727
	addiw	a1,a1,-32
	sllw	a0,a0,a1
	slli	a0,a0,32
	ret
.L727:
	beq	a1,zero,.L726
	sllw	a0,a0,a1
	srai	a4,a5,32
	sllw	a4,a4,a1
	li	a3,32
	subw	a3,a3,a1
	srlw	a5,a5,a3
	or	a5,a4,a5
	slli	a5,a5,32
	slli	a0,a0,32
	srli	a0,a0,32
	or	a0,a0,a5
.L726:
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
	beq	a5,zero,.L732
	li	a4,0
	addiw	a2,a2,-64
	sll	a1,a0,a2
.L733:
	mv	a0,a4
.L734:
	ret
.L732:
	beq	a2,zero,.L734
	sll	a4,a0,a2
	sll	a1,a1,a2
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	or	a1,a1,a5
	j	.L733
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
	beq	a4,zero,.L737
	srai	a5,a0,32
	sraiw	a0,a5,31
	addiw	a1,a1,-32
	sraw	a5,a5,a1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
	ret
.L737:
	beq	a1,zero,.L736
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
.L736:
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
	beq	a5,zero,.L742
	srai	a4,a1,63
	addiw	a2,a2,-64
	sra	a0,a1,a2
.L743:
	mv	a1,a4
.L744:
	ret
.L742:
	beq	a2,zero,.L744
	sra	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L743
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	srli	a7,a0,56
	srli	a1,a0,40
	li	a5,65536
	addi	a5,a5,-256
	and	a1,a1,a5
	srli	a2,a0,24
	li	a5,16711680
	and	a2,a2,a5
	srli	a3,a0,8
	li	a5,255
	slli	a5,a5,24
	and	a3,a3,a5
	slli	a4,a0,8
	li	a5,255
	slli	a5,a5,32
	and	a4,a4,a5
	slli	a5,a0,24
	li	a6,255
	slli	a6,a6,40
	and	a5,a5,a6
	slli	a6,a0,40
	li	t1,255
	slli	t1,t1,48
	and	a6,a6,t1
	slli	a0,a0,56
	or	a0,a7,a0
	or	a1,a1,a0
	or	a2,a2,a1
	or	a3,a3,a2
	or	a4,a4,a3
	or	a5,a5,a4
	or	a0,a6,a5
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
	srliw	a5,a0,8
	li	a4,65536
	addi	a4,a4,-256
	and	a5,a5,a4
	slliw	a4,a0,8
	li	a2,16711680
	and	a4,a4,a2
	slliw	a0,a0,24
	or	a3,a3,a0
	or	a5,a5,a3
	or	a0,a4,a5
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
	srlw	a5,a0,a5
	li	a4,65536
	addi	a4,a4,-256
	and	a4,a5,a4
	seqz	a4,a4
	slliw	a4,a4,3
	li	a2,8
	subw	a2,a2,a4
	srlw	a5,a5,a2
	addw	a4,a4,a3
	andi	a3,a5,240
	seqz	a3,a3
	slliw	a3,a3,2
	li	a2,4
	subw	a2,a2,a3
	srlw	a5,a5,a2
	addw	a3,a3,a4
	andi	a0,a5,12
	seqz	a0,a0
	slliw	a0,a0,1
	li	a4,2
	subw	a2,a4,a0
	srlw	a5,a5,a2
	addw	a0,a0,a3
	andi	a3,a5,2
	subw	a4,a4,a5
	beq	a3,zero,.L750
	li	a4,0
.L750:
	addw	a0,a4,a0
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
	addiw	a5,s0,-1
	and	a5,a1,a5
	neg	a1,s0
	and	a0,a0,a1
	or	a0,a5,a0
	call	__clzdi2
	slli	s0,s0,6
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
	blt	a3,a4,.L757
	li	a0,2
	bgt	a3,a4,.L756
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L756
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L757:
	li	a0,0
.L756:
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
	blt	a1,a3,.L765
	li	a0,2
	bgt	a1,a3,.L764
	li	a0,0
	bltu	a5,a2,.L764
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L765:
	li	a0,0
.L764:
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
	slli	a3,a0,48
	srli	a3,a3,48
	seqz	a3,a3
	slliw	a3,a3,4
	srlw	a5,a0,a3
	andi	a4,a5,0xff
	seqz	a4,a4
	slliw	a4,a4,3
	srlw	a5,a5,a4
	addw	a3,a4,a3
	andi	a4,a5,15
	seqz	a4,a4
	slliw	a4,a4,2
	srlw	a5,a5,a4
	addw	a4,a4,a3
	andi	a0,a5,3
	seqz	a0,a0
	slliw	a0,a0,1
	srlw	a5,a5,a0
	andi	a5,a5,3
	addw	a0,a0,a4
	not	a4,a5
	andi	a3,a4,1
	srliw	a5,a5,1
	li	a4,2
	subw	a5,a4,a5
	negw	a4,a3
	and	a5,a5,a4
	addw	a0,a5,a0
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
	neg	a4,s0
	and	a1,a1,a4
	addiw	a5,s0,-1
	and	a0,a0,a5
	or	a0,a1,a0
	call	__ctzdi2
	slli	s0,s0,6
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
	bne	a0,zero,.L775
	beq	a1,zero,.L776
	mv	a0,a1
	call	__ctzdi2
	addiw	a0,a0,65
	j	.L776
.L775:
	call	__ctzdi2
	addiw	a0,a0,1
.L776:
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
	beq	a4,zero,.L780
	srai	a0,a0,32
	addiw	a1,a1,-32
	srlw	a0,a0,a1
	slli	a0,a0,32
	srli	a0,a0,32
	ret
.L780:
	beq	a1,zero,.L779
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
.L779:
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
	beq	a5,zero,.L785
	li	a4,0
	addiw	a2,a2,-64
	srl	a0,a1,a2
.L786:
	mv	a1,a4
.L787:
	ret
.L785:
	beq	a2,zero,.L787
	srl	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L786
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	1
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	slli	a5,a0,48
	srli	a5,a5,48
	slli	a4,a1,48
	srli	a4,a4,48
	mulw	a3,a5,a4
	srliw	a2,a3,16
	srliw	a0,a0,16
	mulw	a4,a4,a0
	addw	a4,a4,a2
	srliw	a2,a4,16
	slli	a4,a4,48
	srli	a4,a4,48
	slli	a3,a3,48
	srli	a3,a3,48
	srliw	a1,a1,16
	mulw	a5,a5,a1
	addw	a5,a5,a4
	slliw	a4,a5,16
	addw	a3,a3,a4
	srliw	a5,a5,16
	mulw	a0,a0,a1
	addw	a4,a2,a0
	addw	a5,a5,a4
	slli	a5,a5,32
	slli	a0,a3,32
	srli	a0,a0,32
	or	a0,a0,a5
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
	mv	s2,a0
	mv	s1,a1
	sext.w	s3,a0
	sext.w	s0,a1
	mv	a1,s0
	mv	a0,s3
	call	__muldsi3
	srai	a5,a0,32
	srai	s2,s2,32
	mulw	s0,s0,s2
	srai	s1,s1,32
	mulw	s3,s3,s1
	addw	s0,s0,s3
	addw	a5,a5,s0
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
	slli	a5,a0,32
	srli	a5,a5,32
	slli	a3,a1,32
	srli	a3,a3,32
	mul	a2,a5,a3
	srli	a6,a2,32
	srli	a4,a0,32
	mul	a3,a3,a4
	add	a3,a3,a6
	srli	a6,a3,32
	slli	a3,a3,32
	srli	a3,a3,32
	slli	a2,a2,32
	srli	a2,a2,32
	srli	a1,a1,32
	mul	a5,a5,a1
	add	a5,a5,a3
	slli	a0,a5,32
	srli	a5,a5,32
	mul	a4,a4,a1
	add	a1,a6,a4
	add	a0,a2,a0
	add	a1,a5,a1
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
	mv	s1,a0
	mv	s3,a1
	mv	s0,a2
	mv	s2,a3
	mv	a1,a2
	call	__mulddi3
	mul	s0,s0,s3
	mul	s1,s1,s2
	add	s0,s0,s1
	add	a1,a1,s0
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
	srai	a4,a0,32
	sext.w	a0,a0
	xor	a4,a4,a0
	srliw	a5,a4,16
	xor	a5,a5,a4
	srliw	a4,a5,8
	xor	a4,a4,a5
	srliw	a5,a4,4
	xor	a5,a5,a4
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
	srai	a4,a1,32
	sext.w	a1,a1
	xor	a4,a4,a1
	srliw	a5,a4,16
	xor	a5,a5,a4
	srliw	a4,a5,8
	xor	a4,a4,a5
	srliw	a5,a4,4
	xor	a5,a5,a4
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
	xor	a5,a5,a0
	srliw	a0,a5,8
	xor	a0,a0,a5
	srliw	a5,a0,4
	xor	a5,a5,a0
	andi	a5,a5,15
	li	a0,28672
	addiw	a0,a0,-1642
	sraw	a0,a0,a5
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
	srli	a4,a0,2
	li	a3,858992640
	addi	a3,a3,819
	slli	a5,a3,32
	add	a5,a5,a3
	and	a4,a4,a5
	and	a0,a0,a5
	add	a4,a4,a0
	srli	a5,a4,4
	add	a5,a5,a4
	li	a4,252645376
	addi	a4,a4,-241
	slli	a3,a4,32
	add	a4,a3,a4
	and	a5,a5,a4
	sext.w	a4,a5
	srli	a5,a5,32
	addw	a4,a4,a5
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
	slli	a3,a1,62
	srli	a4,a5,2
	or	a4,a3,a4
	srli	a2,a1,2
	li	a0,858992640
	addi	a0,a0,819
	slli	a3,a0,32
	add	a3,a3,a0
	and	a4,a4,a3
	and	a2,a2,a3
	and	a5,a5,a3
	and	a1,a1,a3
	add	a5,a4,a5
	sltu	a4,a5,a4
	add	a3,a2,a1
	add	a4,a4,a3
	slli	a2,a4,60
	srli	a3,a5,4
	or	a3,a2,a3
	srli	a2,a4,4
	add	a5,a3,a5
	sltu	a3,a5,a3
	add	a4,a2,a4
	add	a3,a3,a4
	li	a2,252645376
	addi	a2,a2,-241
	slli	a4,a2,32
	add	a4,a4,a2
	and	a5,a5,a4
	and	a3,a3,a4
	add	a5,a5,a3
	srli	a4,a5,32
	addw	a5,a5,a4
	srliw	a4,a5,16
	addw	a5,a4,a5
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
	fmv.d	fa5,fa0
	mv	a5,a0
	lui	a4,%hi(.LC13)
	fld	fa0,%lo(.LC13)(a4)
	j	.L806
.L804:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L805
	fmul.d	fa5,fa5,fa5
.L806:
	andi	a4,a5,1
	beq	a4,zero,.L804
	fmul.d	fa0,fa0,fa5
	j	.L804
.L805:
	blt	a0,zero,.L808
.L803:
	ret
.L808:
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fdiv.d	fa0,fa5,fa0
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
	fmv.s	fa5,fa0
	mv	a5,a0
	lui	a4,%hi(.LC18)
	flw	fa0,%lo(.LC18)(a4)
	j	.L812
.L810:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L811
	fmul.s	fa5,fa5,fa5
.L812:
	andi	a4,a5,1
	beq	a4,zero,.L810
	fmul.s	fa0,fa0,fa5
	j	.L810
.L811:
	blt	a0,zero,.L814
.L809:
	ret
.L814:
	lui	a5,%hi(.LC18)
	flw	fa5,%lo(.LC18)(a5)
	fdiv.s	fa0,fa5,fa0
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
	bltu	a3,a4,.L817
	li	a0,2
	bgtu	a3,a4,.L816
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L816
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L817:
	li	a0,0
.L816:
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
	bltu	a1,a3,.L825
	li	a0,2
	bgtu	a1,a3,.L824
	li	a0,0
	bltu	a5,a2,.L824
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L825:
	li	a0,0
.L824:
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
