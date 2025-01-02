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
	bleu	a0,a1,.L5
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L6
.L7:
	lbu	a4,-1(a1)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a5)
	bne	a0,a5,.L7
	ret
.L5:
	bne	a0,a1,.L31
.L6:
	ret
.L31:
	beq	a2,zero,.L6
	addi	a5,a2,-1
	li	a4,7
	bleu	a5,a4,.L32
	or	a5,a1,a0
	andi	a5,a5,7
	addi	a4,a1,1
	bne	a5,zero,.L8
	sub	a5,a0,a4
	sltiu	a5,a5,7
	bne	a5,zero,.L8
	andi	a6,a2,-8
	add	a3,a1,a6
	mv	a5,a0
.L9:
	ld	a4,0(a1)
	addi	a1,a1,8
	addi	a5,a5,8
	sd	a4,-8(a5)
	bne	a3,a1,.L9
	add	a5,a0,a6
	sub	a4,a2,a6
	beq	a2,a6,.L6
	lbu	a1,0(a3)
	li	a2,1
	sb	a1,0(a5)
	beq	a4,a2,.L6
	lbu	a1,1(a3)
	li	a2,2
	sb	a1,1(a5)
	beq	a4,a2,.L6
	lbu	a1,2(a3)
	li	a2,3
	sb	a1,2(a5)
	beq	a4,a2,.L6
	lbu	a1,3(a3)
	li	a2,4
	sb	a1,3(a5)
	beq	a4,a2,.L6
	lbu	a1,4(a3)
	li	a2,5
	sb	a1,4(a5)
	beq	a4,a2,.L6
	lbu	a1,5(a3)
	li	a2,6
	sb	a1,5(a5)
	beq	a4,a2,.L6
	lbu	a4,6(a3)
	sb	a4,6(a5)
	ret
.L32:
	addi	a4,a1,1
.L8:
	add	a2,a0,a2
	mv	a5,a0
.L12:
	lbu	a3,-1(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a5)
	bne	a5,a2,.L12
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
.L43:
	beq	a3,zero,.L44
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L43
	ret
.L44:
	li	a0,0
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
	bne	a2,zero,.L46
	j	.L49
.L48:
	addi	a0,a0,1
	beq	a2,zero,.L49
.L46:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L48
	ret
.L49:
	li	a0,0
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
	beq	a2,zero,.L56
.L63:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	addi	a2,a2,-1
	bne	a4,a5,.L62
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L63
.L56:
	li	a0,0
	ret
.L62:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	beq	a2,zero,.L65
	call	memcpy
.L65:
	ld	ra,8(sp)
	.cfi_restore 1
	mv	a0,s0
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	addi	a2,a2,-1
	add	a2,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L71
.L73:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L70
.L71:
	mv	a0,a2
	bne	a2,a4,.L73
	li	a0,0
.L70:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	beq	a2,zero,.L77
	andi	a1,a1,0xff
	call	memset
.L77:
	ld	ra,8(sp)
	.cfi_restore 1
	mv	a0,s0
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L80
.L81:
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L81
.L80:
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
	lbu	a5,0(a0)
	andi	a1,a1,0xff
	beq	a5,zero,.L93
.L87:
	beq	a5,a1,.L86
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L87
.L86:
	ret
.L93:
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
.L96:
	lbu	a5,0(a0)
	beq	a5,a1,.L95
	addi	a0,a0,1
	bne	a5,zero,.L96
	li	a0,0
.L95:
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
.L101:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L106
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L101
	li	a0,0
.L100:
	subw	a0,a0,a4
	ret
.L106:
	sext.w	a0,a5
	j	.L100
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
	beq	a5,zero,.L110
	mv	a5,a0
.L109:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L109
	sub	a0,a5,a0
	ret
.L110:
	li	a0,0
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
	beq	a2,zero,.L120
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L116
	j	.L124
.L117:
	beq	a0,a3,.L123
	addi	a0,a0,1
	bne	a4,a5,.L123
	lbu	a5,0(a0)
	beq	a5,zero,.L125
	mv	a1,a2
.L116:
	lbu	a4,0(a1)
	addi	a2,a1,1
	bne	a4,zero,.L117
.L123:
	sext.w	a0,a5
.L115:
	subw	a0,a0,a4
	ret
.L120:
	li	a0,0
	ret
.L125:
	lbu	a4,1(a1)
	li	a0,0
	subw	a0,a0,a4
	ret
.L124:
	lbu	a4,0(a1)
	li	a0,0
	j	.L115
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
	ble	a2,a5,.L126
	andi	a2,a2,-2
	add	a3,a0,a2
.L128:
	lbu	a4,1(a0)
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L128
.L126:
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
	beq	a0,a5,.L134
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L134:
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
	bleu	a0,a5,.L137
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L137:
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
	beq	a0,a5,.L144
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L144:
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
	li	a4,31
	mv	a5,a0
	bleu	a0,a4,.L148
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L151
.L147:
	ret
.L148:
	li	a0,1
	ret
.L151:
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a5,a4
	bleu	a4,a0,.L147
	li	a4,-65536
	addiw	a4,a4,7
	addw	a5,a5,a4
	sltiu	a0,a5,3
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
	li	a4,254
	mv	a5,a0
	bleu	a0,a4,.L160
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L155
	li	a4,-8192
	addiw	a4,a4,-42
	li	a3,45056
	addw	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L155
	li	a3,-57344
	li	a4,8192
	addw	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L155
	li	a4,-65536
	addiw	a4,a4,4
	li	a3,1048576
	addw	a4,a5,a4
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L155
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L155:
	ret
.L160:
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
	bleu	a4,a5,.L163
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L163:
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
	fle.d	a5,fa0,fa1
	bne	a5,zero,.L170
	fsub.d	fa0,fa0,fa1
	ret
.L170:
	fmv.d.x	fa0,zero
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
	fle.s	a5,fa0,fa1
	bne	a5,zero,.L176
	fsub.s	fa0,fa0,fa1
	ret
.L176:
	fmv.s.x	fa0,zero
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
	fmv.d.x	fa4,zero
	fmv.d	fa5,fa0
	flt.d	a4,fa0,fa4
	flt.d	a5,fa1,fa4
	beq	a4,a5,.L178
	fge.d	a5,fa5,fa4
	fmv.d	fa0,fa1
	beq	a5,zero,.L184
	fmv.d	fa0,fa5
	ret
.L178:
	fmax.d	fa0,fa0,fa1
	ret
.L184:
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
	fmv.s.x	fa4,zero
	fmv.s	fa5,fa0
	flt.s	a4,fa0,fa4
	flt.s	a5,fa1,fa4
	beq	a4,a5,.L186
	fge.s	a5,fa5,fa4
	fmv.s	fa0,fa1
	beq	a5,zero,.L192
	fmv.s	fa0,fa5
	ret
.L186:
	fmax.s	fa0,fa0,fa1
	ret
.L192:
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
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a3
	mv	s4,a2
	li	a3,0
	li	a2,0
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s0,a1
	mv	s1,a0
	call	__lttf2
	mv	s2,a0
	mv	a1,s3
	mv	a0,s4
	li	a2,0
	li	a3,0
	srli	s2,s2,63
	call	__lttf2
	andi	s2,s2,0xff
	srli	a0,a0,63
	beq	s2,a0,.L194
	li	a2,0
	li	a3,0
	mv	a0,s1
	mv	a1,s0
	call	__lttf2
	blt	a0,zero,.L204
.L193:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a1,s0
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	mv	a0,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L194:
	.cfi_restore_state
	mv	a0,s1
	mv	a1,s0
	mv	a2,s4
	mv	a3,s3
	call	__getf2
	bge	a0,zero,.L193
.L204:
	mv	s1,s4
	mv	s0,s3
	j	.L193
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fmv.d.x	fa5,zero
	flt.d	a4,fa0,fa5
	flt.d	a5,fa1,fa5
	beq	a4,a5,.L206
	fge.d	a5,fa0,fa5
	beq	a5,zero,.L212
	fmv.d	fa0,fa1
	ret
.L206:
	fmin.d	fa0,fa0,fa1
	ret
.L212:
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
	fmv.s.x	fa5,zero
	flt.s	a4,fa0,fa5
	flt.s	a5,fa1,fa5
	beq	a4,a5,.L214
	fge.s	a5,fa0,fa5
	beq	a5,zero,.L220
	fmv.s	fa0,fa1
	ret
.L214:
	fmin.s	fa0,fa0,fa1
	ret
.L220:
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
	sd	s3,8(sp)
	sd	s4,0(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	mv	s3,a3
	mv	s4,a2
	li	a3,0
	li	a2,0
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	mv	s0,a1
	mv	s1,a0
	call	__lttf2
	mv	s2,a0
	mv	a1,s3
	mv	a0,s4
	li	a2,0
	li	a3,0
	srli	s2,s2,63
	call	__lttf2
	andi	s2,s2,0xff
	srli	a0,a0,63
	beq	s2,a0,.L222
	li	a2,0
	li	a3,0
	mv	a0,s1
	mv	a1,s0
	call	__lttf2
	blt	a0,zero,.L221
.L230:
	mv	s1,s4
	mv	s0,s3
.L221:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a1,s0
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s2,16(sp)
	.cfi_restore 18
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s4,0(sp)
	.cfi_restore 20
	mv	a0,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L222:
	.cfi_restore_state
	mv	a0,s1
	mv	a1,s0
	mv	a2,s4
	mv	a3,s3
	call	__letf2
	bgt	a0,zero,.L230
	j	.L221
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	1
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	sext.w	a5,a0
	lui	a0,%hi(s.0)
	beq	a5,zero,.L235
	lui	a2,%hi(.LANCHOR0)
	addi	a3,a0,%lo(s.0)
	addi	a2,a2,%lo(.LANCHOR0)
.L234:
	andi	a4,a5,63
	add	a4,a2,a4
	lbu	a4,0(a4)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	a4,-1(a3)
	bne	a5,zero,.L234
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
.L235:
	addi	a3,a0,%lo(s.0)
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
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
	li	a5,1481764864
	ld	a0,%lo(seed)(a3)
	addi	a5,a5,1069
	li	a4,1284866048
	addi	a4,a4,-211
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
	beq	a1,zero,.L245
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L239
	sd	a0,8(a5)
.L239:
	ret
.L245:
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
	beq	a5,zero,.L247
	ld	a4,8(a0)
	sd	a4,8(a5)
.L247:
	ld	a4,8(a0)
	beq	a4,zero,.L246
	sd	a5,0(a4)
.L246:
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
	sd	s3,40(sp)
	.cfi_offset 19, -40
	ld	s3,0(a2)
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s5,24(sp)
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 21, -56
	mv	s7,a2
	mv	s4,a0
	mv	s8,a1
	mv	s2,a3
	beq	s3,zero,.L256
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 22, -64
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L258
.L273:
	add	s0,s0,s2
	beq	s3,s1,.L272
.L258:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L273
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s6,16(sp)
	.cfi_restore 22
.L255:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s4,32(sp)
	.cfi_restore 20
	ld	s7,8(sp)
	.cfi_restore 23
	ld	s8,0(sp)
	.cfi_restore 24
	mv	a0,s5
	ld	s5,24(sp)
	.cfi_restore 21
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L272:
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
	ld	s6,16(sp)
	.cfi_restore 22
.L256:
	mul	s5,s2,s3
	addi	s3,s3,1
	sd	s3,0(s7)
	add	s5,s8,s5
	beq	s2,zero,.L255
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L255
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
	sd	s5,8(sp)
	.cfi_offset 21, -56
	ld	s5,0(a2)
	sd	ra,56(sp)
	sd	s6,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 22, -64
	beq	s5,zero,.L275
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
	j	.L277
.L288:
	add	s0,s0,s4
	beq	s5,s1,.L287
.L277:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L288
	ld	s0,48(sp)
	.cfi_remember_state
	.cfi_restore 8
	ld	ra,56(sp)
	.cfi_restore 1
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
	mv	a0,s6
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L287:
	.cfi_restore_state
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
.L275:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s6,0
	ld	s5,8(sp)
	.cfi_restore 21
	mv	a0,s6
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
	li	a4,32
	li	a3,4
.L297:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L291
	sext.w	a1,a2
	bleu	a5,a3,.L291
	li	a5,43
	beq	a2,a5,.L292
	li	a5,45
	bne	a2,a5,.L307
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bgtu	a3,a5,.L302
	li	a7,1
.L295:
	li	a0,0
	li	a1,9
.L299:
	slliw	a5,a0,2
	lbu	a2,1(a4)
	addw	a5,a5,a0
	slliw	a5,a5,1
	subw	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L299
	bne	a7,zero,.L298
	subw	a0,a6,a5
	ret
.L291:
	addi	a0,a0,1
	j	.L297
.L307:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L302
	mv	a4,a0
	addiw	a3,a2,-48
	li	a7,0
	j	.L295
.L292:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,0
	bleu	a3,a5,.L295
.L302:
	li	a0,0
.L298:
	ret
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	li	a4,32
	li	a3,4
.L315:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L309
	sext.w	a1,a2
	bleu	a5,a3,.L309
	li	a5,43
	beq	a2,a5,.L310
	li	a5,45
	bne	a2,a5,.L325
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bgtu	a3,a5,.L320
	li	a7,1
.L313:
	li	a0,0
	li	a1,9
.L317:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L317
	bne	a7,zero,.L308
	sub	a0,a6,a5
	ret
.L309:
	addi	a0,a0,1
	j	.L315
.L325:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L320
	mv	a4,a0
	addiw	a3,a2,-48
	li	a7,0
	j	.L313
.L310:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,0
	bleu	a3,a5,.L313
.L320:
	li	a0,0
.L308:
	ret
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	1
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	li	a4,32
	li	a3,4
.L331:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L327
	sext.w	a1,a2
	bleu	a5,a3,.L327
	li	a5,43
	beq	a2,a5,.L328
	li	a5,45
	bne	a2,a5,.L344
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,1
	bgtu	a3,a5,.L338
.L332:
	li	a0,0
	li	a1,9
.L335:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L335
	bne	a7,zero,.L326
	sub	a0,a6,a5
	ret
.L327:
	addi	a0,a0,1
	j	.L331
.L344:
	addiw	a1,a1,-48
	li	a5,9
	mv	a4,a0
	addiw	a3,a2,-48
	bgtu	a1,a5,.L338
.L343:
	li	a7,0
	j	.L332
.L328:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bleu	a3,a5,.L343
.L338:
	li	a0,0
.L326:
	ret
	.cfi_endproc
.LFE171:
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
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	beq	a2,zero,.L346
	sd	s0,48(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	s2,32(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 18, -32
	mv	s0,a2
	mv	s6,a0
	mv	s4,a1
	mv	s3,a3
	mv	s5,a4
.L349:
	srli	s2,s0,1
	mul	s1,s2,s3
	mv	a0,s6
	addi	s0,s0,-1
	add	s1,s4,s1
	mv	a1,s1
	jalr	s5
	blt	a0,zero,.L350
	beq	a0,zero,.L359
	sub	s0,s0,s2
	add	s4,s1,s3
	bne	s0,zero,.L349
.L360:
	ld	s0,48(sp)
	.cfi_restore 8
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
.L346:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L350:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s0,s2
	bne	s0,zero,.L349
	j	.L360
.L359:
	ld	s0,48(sp)
	.cfi_restore 8
	ld	ra,56(sp)
	.cfi_restore 1
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
	mv	a0,s1
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	ra,72(sp)
	sd	s1,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	sext.w	s0,a2
	mv	s7,a0
	mv	s4,a1
	mv	s3,a3
	mv	s6,a4
	mv	s5,a5
	beq	s0,zero,.L366
	sd	s2,48(sp)
	.cfi_offset 18, -32
.L362:
	sraiw	s2,s0,1
	mul	s1,s2,s3
	mv	a2,s5
	mv	a0,s7
	addiw	s0,s0,-1
	sraiw	s0,s0,1
	add	s1,s4,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L376
	ble	a0,zero,.L364
	add	s4,s1,s3
	bne	s0,zero,.L362
.L377:
	ld	s2,48(sp)
	.cfi_restore 18
.L366:
	li	s1,0
.L361:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
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
	mv	a0,s1
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L364:
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
	beq	s2,zero,.L377
	mv	s0,s2
	j	.L362
.L376:
	ld	s2,48(sp)
	.cfi_restore 18
	j	.L361
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	1
	.globl	div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	divw	a5,a0,a1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	remw	a0,a0,a1
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a5,a0
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	rem	a1,a5,a1
	jr	ra
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	1
	.globl	labs
	.type	labs, @function
labs:
.LFB167:
	.cfi_startproc
	srai	a5,a0,63
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE167:
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	rem	a1,a5,a1
	jr	ra
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	1
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB169:
	.cfi_startproc
	srai	a5,a0,63
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE169:
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	rem	a1,a5,a1
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
	j	.L396
.L398:
	beq	a1,a5,.L397
	addi	a0,a0,4
.L396:
	lw	a5,0(a0)
	bne	a5,zero,.L398
	li	a0,0
	ret
.L397:
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
.L402:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L401
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L402
.L401:
	li	a0,-1
	blt	a5,a4,.L403
	sgt	a0,a5,a4
.L403:
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
.L407:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L407
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
	beq	a5,zero,.L412
	mv	a5,a0
.L411:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L411
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L412:
	li	a0,0
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
	beq	a2,zero,.L420
.L425:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L417
	beq	a5,zero,.L417
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L425
.L420:
	li	a0,0
	ret
.L417:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L426
	ret
.L426:
	li	a0,-1
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
	beq	a2,zero,.L431
.L436:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L435
	addi	a0,a0,4
	bne	a2,zero,.L436
.L431:
	li	a0,0
	ret
.L435:
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
	beq	a2,zero,.L443
.L450:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L449
	addi	a1,a1,4
	bne	a2,zero,.L450
.L443:
	li	a0,0
	ret
.L449:
	sgt	a0,a4,a5
	blt	a4,a5,.L451
	ret
.L451:
	li	a0,-1
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	beq	a2,zero,.L453
	slli	a2,a2,2
	call	memcpy
.L453:
	ld	ra,8(sp)
	.cfi_restore 1
	mv	a0,s0
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
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
	beq	a0,a1,.L476
	sub	a7,a0,a1
	slli	a6,a2,2
	mv	a4,a0
	mv	a3,a1
	addi	a5,a2,-1
	bltu	a7,a6,.L460
	beq	a2,zero,.L488
	li	a6,8
	bleu	a5,a6,.L470
	or	a6,a1,a0
	andi	a6,a6,7
	bne	a6,zero,.L489
	addi	a6,a1,4
	beq	a0,a6,.L471
	srli	a7,a2,1
	li	a5,0
.L465:
	ld	a6,0(a3)
	addi	a5,a5,1
	addi	a3,a3,8
	sd	a6,0(a4)
	addi	a4,a4,8
	bne	a7,a5,.L465
	andi	a5,a2,1
	beq	a5,zero,.L476
	andi	a2,a2,-2
	slli	a2,a2,2
	add	a1,a1,a2
	lw	a5,0(a1)
	add	a2,a0,a2
	sw	a5,0(a2)
	ret
.L470:
	addi	a6,a1,4
.L464:
	li	a2,-1
	j	.L468
.L490:
	addi	a6,a6,4
.L468:
	lw	a3,-4(a6)
	addi	a5,a5,-1
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a2,.L490
.L476:
	ret
.L460:
	beq	a2,zero,.L476
	slli	a5,a5,2
	li	a2,-4
.L463:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L463
	ret
.L488:
	ret
.L489:
	addi	a6,a1,4
.L471:
	mv	a4,a0
	j	.L464
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	addi	a7,a2,-1
	beq	a2,zero,.L492
	srli	a5,a0,2
	li	a4,5
	andi	a5,a5,1
	bleu	a7,a4,.L497
	mv	t1,a0
	beq	a5,zero,.L494
	sw	a1,0(a0)
	addi	t1,a0,4
	addi	a7,a2,-2
.L494:
	slli	a3,a1,32
	sub	a2,a2,a5
	slli	a4,a1,32
	srli	a3,a3,32
	slli	a5,a5,2
	or	a3,a3,a4
	add	a5,a0,a5
	srli	a6,a2,1
	li	a4,0
.L495:
	sd	a3,0(a5)
	addi	a4,a4,1
	addi	a5,a5,8
	bne	a4,a6,.L495
	andi	a5,a2,1
	beq	a5,zero,.L492
	andi	a2,a2,-2
	slli	a5,a2,2
	sub	a7,a7,a2
	add	a5,t1,a5
.L493:
	sw	a1,0(a5)
	beq	a7,zero,.L492
	sw	a1,4(a5)
	li	a4,1
	beq	a7,a4,.L492
	sw	a1,8(a5)
	li	a4,2
	beq	a7,a4,.L492
	sw	a1,12(a5)
	li	a4,3
	beq	a7,a4,.L492
	sw	a1,16(a5)
	li	a4,4
	beq	a7,a4,.L492
	sw	a1,20(a5)
.L492:
	ret
.L497:
	mv	a5,a0
	j	.L493
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	bgeu	a0,a1,.L511
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L510
.L513:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L513
	ret
.L511:
	bne	a0,a1,.L539
.L510:
	ret
.L539:
	beq	a2,zero,.L510
	addi	a5,a2,-1
	li	a4,7
	bleu	a5,a4,.L537
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L537
	addi	a5,a0,1
	sub	a4,a1,a5
	sltiu	a4,a4,7
	bne	a4,zero,.L514
	andi	a6,a2,-8
	add	a3,a0,a6
	mv	a5,a1
.L515:
	ld	a4,0(a0)
	addi	a0,a0,8
	addi	a5,a5,8
	sd	a4,-8(a5)
	bne	a3,a0,.L515
	add	a1,a1,a6
	sub	a5,a2,a6
	beq	a2,a6,.L510
	lbu	a2,0(a3)
	li	a4,1
	sb	a2,0(a1)
	beq	a5,a4,.L510
	lbu	a2,1(a3)
	li	a4,2
	sb	a2,1(a1)
	beq	a5,a4,.L510
	lbu	a2,2(a3)
	li	a4,3
	sb	a2,2(a1)
	beq	a5,a4,.L510
	lbu	a2,3(a3)
	li	a4,4
	sb	a2,3(a1)
	beq	a5,a4,.L510
	lbu	a2,4(a3)
	li	a4,5
	sb	a2,4(a1)
	beq	a5,a4,.L510
	lbu	a2,5(a3)
	li	a4,6
	sb	a2,5(a1)
	beq	a5,a4,.L510
	lbu	a5,6(a3)
	sb	a5,6(a1)
	ret
.L537:
	addi	a5,a0,1
.L514:
	add	a0,a0,a2
	j	.L518
.L540:
	addi	a5,a5,1
.L518:
	lbu	a4,-1(a5)
	addi	a1,a1,1
	sb	a4,-1(a1)
	bne	a5,a0,.L540
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
	negw	a5,a1
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a5,a0
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
	negw	a5,a1
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a5,a0
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
	negw	a5,a1
	srlw	a5,a0,a5
	sllw	a0,a0,a1
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
	negw	a5,a1
	sllw	a5,a0,a5
	srlw	a0,a0,a1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	1
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB173:
	.cfi_startproc
	negw	a5,a1
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.align	1
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175:
	.cfi_startproc
	negw	a5,a1
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a5,a0
	ret
	.cfi_endproc
.LFE175:
	.size	rotr_sz, .-rotr_sz
	.align	1
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	andi	a1,a1,15
	negw	a5,a1
	andi	a5,a5,15
	srlw	a5,a0,a5
	sllw	a0,a0,a1
	or	a0,a0,a5
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
	negw	a5,a1
	andi	a5,a5,15
	sllw	a5,a0,a5
	srlw	a0,a0,a1
	or	a0,a0,a5
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
	negw	a5,a1
	andi	a5,a5,7
	srlw	a5,a0,a5
	sllw	a0,a0,a1
	or	a0,a0,a5
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
	negw	a5,a1
	andi	a5,a5,7
	sllw	a5,a0,a5
	srlw	a0,a0,a1
	or	a0,a0,a5
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
	srliw	a5,a0,8
	slliw	a0,a0,8
	or	a0,a5,a0
	slli	a0,a0,48
	srli	a0,a0,48
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
	li	a5,16711680
	slliw	a2,a0,8
	and	a2,a2,a5
	slliw	a3,a0,24
	and	a4,a0,a5
	or	a3,a3,a2
	srliw	a5,a0,24
	srli	a4,a4,8
	or	a0,a3,a5
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
	li	a3,65536
	srli	a2,a0,56
	slli	a5,a0,56
	srli	a4,a0,40
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a2
	srli	a1,a0,24
	li	a3,16711680
	li	a2,255
	and	a1,a1,a3
	or	a5,a5,a4
	srli	a3,a0,8
	slli	a2,a2,24
	li	a4,255
	and	a3,a3,a2
	or	a5,a5,a1
	slli	a4,a4,32
	slli	a1,a0,8
	li	a2,255
	and	a1,a1,a4
	or	a5,a5,a3
	slli	a2,a2,40
	slli	a3,a0,24
	li	a4,255
	or	a5,a5,a1
	and	a3,a3,a2
	slli	a4,a4,48
	slli	a0,a0,40
	or	a5,a5,a3
	and	a0,a0,a4
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
	j	.L557
.L555:
	beq	a5,a3,.L559
.L557:
	srlw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L555
	mv	a0,a5
	ret
.L559:
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
	mv	a5,a0
	beq	a0,zero,.L563
	andi	a0,a0,1
	bne	a0,zero,.L561
	li	a0,1
.L562:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L562
	ret
.L563:
	li	a0,0
.L561:
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
	li	a0,0
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
	li	a0,0
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
	li	a0,0
	ret
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	1
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	fcvt.d.w	fa0,a1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a0
	call	__extenddftf2
	ld	ra,8(sp)
	.cfi_restore 1
	sd	a0,0(s0)
	sd	a1,8(s0)
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
	fadd.s	fa5,fa0,fa0
	feq.s	a5,fa5,fa0
	bne	a5,zero,.L572
	blt	a0,zero,.L585
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
.L573:
	andi	a5,a0,1
	beq	a5,zero,.L574
.L575:
	fmul.s	fa0,fa0,fa5
.L574:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L572
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L575
.L586:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L575
	j	.L586
.L572:
	ret
.L585:
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	j	.L573
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	1
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	fadd.d	fa5,fa0,fa0
	feq.d	a5,fa5,fa0
	bne	a5,zero,.L588
	blt	a0,zero,.L601
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
.L589:
	andi	a5,a0,1
	beq	a5,zero,.L590
.L591:
	fmul.d	fa0,fa0,fa5
.L590:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L588
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L591
.L602:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L591
	j	.L602
.L588:
	ret
.L601:
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	j	.L589
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
	sd	s0,32(sp)
	mv	a3,a1
	.cfi_offset 8, -16
	mv	s0,a2
	mv	a2,a0
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	mv	s3,a0
	mv	s2,a1
	call	__addtf3
	mv	a2,s3
	mv	a3,s2
	call	__netf2
	beq	a0,zero,.L604
	sd	s1,24(sp)
	sd	s4,0(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	li	s1,1
	slli	s1,s1,62
	li	s4,0
	blt	s0,zero,.L620
	andi	a5,s0,1
	beq	a5,zero,.L607
.L608:
	mv	a0,s3
	mv	a1,s2
	mv	a2,s4
	mv	a3,s1
	call	__multf3
	mv	s3,a0
	mv	s2,a1
.L607:
	srliw	a5,s0,31
	addw	s0,a5,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L619
.L609:
	mv	a2,s4
	mv	a0,s4
	mv	a3,s1
	mv	a1,s1
	call	__multf3
	srliw	a5,s0,31
	andi	a4,s0,1
	addw	a5,a5,s0
	mv	s4,a0
	mv	s1,a1
	bne	a4,zero,.L608
	sraiw	s0,a5,1
	j	.L609
.L619:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s4,0(sp)
	.cfi_restore 20
.L604:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	mv	a0,s3
	mv	a1,s2
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L620:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	li	s1,33550336
	andi	a5,s0,1
	slli	s1,s1,37
	beq	a5,zero,.L607
	j	.L608
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L622
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L623
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L623
	andi	a7,a2,-8
	add	a6,a1,a7
	mv	a5,a0
.L624:
	ld	a3,0(a5)
	ld	a4,0(a1)
	addi	a1,a1,8
	addi	a5,a5,8
	xor	a4,a4,a3
	sd	a4,-8(a5)
	bne	a6,a1,.L624
	add	a5,a0,a7
	sub	a4,a2,a7
	beq	a2,a7,.L622
	lbu	a3,0(a5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a3,a3,a1
	sb	a3,0(a5)
	beq	a4,a2,.L622
	lbu	a1,1(a5)
	lbu	a3,1(a6)
	li	a2,2
	xor	a3,a3,a1
	sb	a3,1(a5)
	beq	a4,a2,.L622
	lbu	a1,2(a5)
	lbu	a3,2(a6)
	li	a2,3
	xor	a3,a3,a1
	sb	a3,2(a5)
	beq	a4,a2,.L622
	lbu	a1,3(a5)
	lbu	a3,3(a6)
	li	a2,4
	xor	a3,a3,a1
	sb	a3,3(a5)
	beq	a4,a2,.L622
	lbu	a1,4(a5)
	lbu	a3,4(a6)
	li	a2,5
	xor	a3,a3,a1
	sb	a3,4(a5)
	beq	a4,a2,.L622
	lbu	a1,5(a5)
	lbu	a3,5(a6)
	li	a2,6
	xor	a3,a3,a1
	sb	a3,5(a5)
	beq	a4,a2,.L622
	lbu	a3,6(a5)
	lbu	a4,6(a6)
	xor	a4,a4,a3
	sb	a4,6(a5)
	ret
.L623:
	add	a2,a1,a2
	mv	a5,a0
.L626:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L626
.L622:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L640
	mv	a5,a0
.L635:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L635
.L646:
	beq	a2,zero,.L637
.L648:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L647
	addi	a5,a5,1
	bne	a2,zero,.L648
.L637:
	sb	zero,0(a5)
	ret
.L647:
	ret
.L640:
	mv	a5,a0
	j	.L646
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
	beq	a1,zero,.L657
.L650:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L652
	ret
.L652:
	addi	a0,a0,1
	bne	a1,a0,.L650
	ret
.L657:
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
	lbu	a3,0(a0)
	beq	a3,zero,.L663
.L667:
	mv	a5,a1
	j	.L662
.L661:
	beq	a4,a3,.L660
.L662:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L661
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L667
.L663:
	li	a0,0
.L660:
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
.L670:
	lbu	a4,0(a5)
	bne	a1,a4,.L669
	mv	a0,a5
.L669:
	addi	a5,a5,1
	bne	a4,zero,.L670
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
	lbu	a7,0(a1)
	mv	a3,a0
	beq	a7,zero,.L685
	mv	a5,a1
.L674:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L674
	sub	t3,a5,a1
	mv	a0,a3
	addi	t3,t3,-1
	bne	a5,a1,.L682
	ret
.L693:
	addi	a3,a3,1
	beq	a5,zero,.L692
.L682:
	lbu	a5,0(a3)
	bne	a5,a7,.L693
	add	t1,a3,t3
	mv	a0,a1
	mv	a4,a3
	mv	a2,a7
.L676:
	beq	a4,t1,.L678
	addi	a4,a4,1
	bne	a5,a2,.L679
	lbu	a5,0(a4)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	a5,zero,.L678
	mv	a0,a6
	bne	a2,zero,.L676
.L679:
	addi	a3,a3,1
	j	.L682
.L692:
	li	a0,0
	ret
.L678:
	bne	a5,a2,.L679
.L685:
	mv	a0,a3
.L672:
	ret
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
	fge.d	a5,fa0,fa5
	beq	a5,zero,.L707
	fle.d	a5,fa0,fa5
	bne	a5,zero,.L698
	fge.d	a5,fa1,fa5
	beq	a5,zero,.L697
.L698:
	ret
.L707:
	fle.d	a5,fa1,fa5
	bne	a5,zero,.L698
.L697:
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
	beq	a3,zero,.L708
	bltu	a1,a3,.L719
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L719
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L714:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L724
	mv	a0,t1
.L710:
	bgeu	a7,a0,.L714
.L719:
	li	a0,0
.L708:
	ret
.L724:
	mv	a4,a2
	beq	a3,zero,.L708
.L713:
	mv	a5,t1
	add	t3,t1,a3
	j	.L711
.L712:
	beq	a5,t3,.L708
.L711:
	lbu	a6,0(a5)
	lbu	a1,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a6,a1,.L712
	bgtu	t1,a7,.L719
	lbu	a5,0(t1)
	addi	a0,t1,1
	bne	a5,t4,.L710
	mv	a5,t1
	mv	a4,a2
	mv	t1,a0
	mv	a0,a5
	j	.L713
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	1
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s0,a2
	mv	s1,a0
	beq	a2,zero,.L726
	call	memmove
.L726:
	add	a0,s1,s0
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,32
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
	fge.d	a5,fa0,fa5
	beq	a5,zero,.L759
	lui	a5,%hi(.LC9)
	fld	fa4,%lo(.LC9)(a5)
	li	a3,0
	fge.d	a5,fa0,fa4
	beq	a5,zero,.L760
.L734:
	lui	a4,%hi(.LC4)
	fld	fa3,%lo(.LC4)(a4)
	lui	a5,%hi(.LC3)
	fld	fa4,%lo(.LC3)(a5)
	li	a5,0
.L740:
	fmv.d	fa5,fa0
	addiw	a5,a5,1
	fmul.d	fa0,fa0,fa3
	fge.d	a4,fa5,fa4
	bne	a4,zero,.L740
	sw	a5,0(a0)
	beq	a3,zero,.L731
.L762:
	fneg.d	fa0,fa0
.L731:
	ret
.L760:
	lui	a5,%hi(.LC4)
	fld	fa4,%lo(.LC4)(a5)
	fge.d	a5,fa0,fa4
	bne	a5,zero,.L754
	feq.d	a5,fa0,fa5
	beq	a5,zero,.L746
.L754:
	sw	zero,0(a0)
	ret
.L759:
	lui	a5,%hi(.LC7)
	fld	fa5,%lo(.LC7)(a5)
	fneg.d	fa4,fa0
	fle.d	a5,fa0,fa5
	beq	a5,zero,.L761
	fmv.d	fa0,fa4
	li	a3,1
	j	.L734
.L761:
	lui	a5,%hi(.LC8)
	fld	fa5,%lo(.LC8)(a5)
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L754
	li	a3,1
.L735:
	lui	a5,%hi(.LC10)
	fmv.d	fa0,fa4
	fld	fa4,%lo(.LC10)(a5)
	li	a5,0
.L742:
	fmv.d	fa5,fa0
	addiw	a5,a5,-1
	fadd.d	fa0,fa0,fa0
	flt.d	a4,fa5,fa4
	bne	a4,zero,.L742
	sw	a5,0(a0)
	bne	a3,zero,.L762
	ret
.L746:
	fmv.d	fa4,fa0
	j	.L735
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
	li	a0,0
	beq	a4,zero,.L766
.L765:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L765
	ret
.L766:
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
	li	a5,1
	li	a0,32
	bltu	a1,a4,.L769
	j	.L770
.L773:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L771
	beq	a0,zero,.L772
.L769:
	addiw	a0,a0,-1
	bge	a1,zero,.L773
.L770:
	li	a0,0
.L775:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L774
	subw	a4,a4,a1
	sext.w	a0,a3
.L774:
	srliw	a1,a1,1
	bne	a5,zero,.L775
.L772:
	bne	a2,zero,.L785
.L776:
	ret
.L771:
	bne	a5,zero,.L770
	li	a0,0
	beq	a2,zero,.L776
.L785:
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
	beq	a0,zero,.L788
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	slli	a0,a0,8
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__clzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	addiw	a0,a0,-32
	addiw	a0,a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L788:
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
	beq	a5,a4,.L795
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__clzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	addiw	a0,a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L795:
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
	beq	a4,zero,.L803
.L802:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L802
	ret
.L803:
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
	srliw	a6,a2,3
	andi	t1,a2,-8
	bltu	a0,a1,.L809
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L838
.L809:
	beq	a6,zero,.L839
	slli	a6,a6,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L812:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L812
	bleu	a2,t1,.L805
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L814
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L814
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L814
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L815:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L815
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L805
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L805
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L805
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L805
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L805
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L805
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L805
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L838:
	addiw	a5,a2,-1
	beq	a2,zero,.L840
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L819:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L819
.L805:
	ret
.L839:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L841
.L814:
	mv	a5,a3
.L817:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bltu	a4,a2,.L817
	ret
.L841:
	ret
.L840:
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
	srliw	t1,a2,1
	bltu	a0,a1,.L846
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L868
.L846:
	beq	t1,zero,.L845
	addiw	a5,t1,-1
	li	a4,6
	bleu	a5,a4,.L849
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L849
	addi	a5,a1,2
	sub	a5,a0,a5
	sltiu	a5,a5,5
	bne	a5,zero,.L849
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L850:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L850
	slliw	a5,a7,2
	beq	t1,a5,.L845
	slli	a4,a5,1
	add	a3,a1,a4
	lh	a6,0(a3)
	add	a3,a0,a4
	addiw	a4,a5,1
	sh	a6,0(a3)
	bleu	t1,a4,.L845
	slli	a3,a4,32
	srli	a4,a3,31
	add	a3,a1,a4
	lh	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,2
	sh	a3,0(a4)
	bleu	t1,a5,.L845
	slli	a5,a5,32
	srli	a5,a5,31
	add	a4,a1,a5
	lh	a4,0(a4)
	add	a5,a0,a5
	sh	a4,0(a5)
.L845:
	andi	a5,a2,1
	beq	a5,zero,.L842
.L870:
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	lbu	a5,0(a1)
	add	a2,a0,a2
	sb	a5,0(a2)
	ret
.L868:
	addiw	a5,a2,-1
	beq	a2,zero,.L869
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L855:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L855
.L842:
	ret
.L849:
	slli	t1,t1,1
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L852:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,t1,.L852
	andi	a5,a2,1
	beq	a5,zero,.L842
	j	.L870
.L869:
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
	srliw	t3,a2,2
	andi	t1,a2,-4
	bltu	a0,a1,.L876
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L911
.L876:
	beq	t3,zero,.L912
	addiw	a5,t3,-1
	li	a4,8
	bleu	a5,a4,.L878
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L878
	addi	a5,a1,4
	beq	a0,a5,.L878
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L879:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L879
	slliw	a7,a7,1
	beq	t3,a7,.L882
	slli	a7,a7,2
	add	a5,a1,a7
	lw	a5,0(a5)
	add	a7,a0,a7
	sw	a5,0(a7)
.L882:
	bleu	a2,t1,.L871
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L874
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L874
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L874
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L883:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L883
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L871
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L871
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L871
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L871
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L871
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L871
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L871
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L911:
	addiw	a5,a2,-1
	beq	a2,zero,.L913
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L887:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L887
.L871:
	ret
.L878:
	slli	t3,t3,2
	add	t3,t3,a1
	mv	a5,a1
	mv	a4,a0
.L881:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t3,.L881
	j	.L882
.L912:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L914
.L874:
	mv	a5,a3
.L885:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bgtu	a2,a4,.L885
	ret
.L914:
	ret
.L913:
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
	srli	a3,a0,15
	mv	a4,a0
	sext.w	a5,a0
	bne	a3,zero,.L924
	sraiw	a0,a5,14
	bne	a0,zero,.L923
	sraiw	a3,a5,13
	bne	a3,zero,.L925
	sraiw	a3,a5,12
	bne	a3,zero,.L926
	sraiw	a3,a5,11
	bne	a3,zero,.L927
	sraiw	a3,a5,10
	bne	a3,zero,.L928
	sraiw	a3,a5,9
	bne	a3,zero,.L929
	sraiw	a3,a5,8
	bne	a3,zero,.L930
	sraiw	a3,a5,7
	bne	a3,zero,.L931
	sraiw	a3,a5,6
	bne	a3,zero,.L932
	sraiw	a3,a5,5
	bne	a3,zero,.L933
	sraiw	a3,a5,4
	bne	a3,zero,.L934
	sraiw	a3,a5,3
	bne	a3,zero,.L935
	sraiw	a3,a5,2
	bne	a3,zero,.L936
	sraiw	a5,a5,1
	bne	a5,zero,.L937
	seqz	a0,a4
	addi	a0,a0,15
	ret
.L937:
	li	a0,14
.L923:
	ret
.L924:
	li	a0,0
	ret
.L935:
	li	a0,12
	ret
.L925:
	li	a0,2
	ret
.L926:
	li	a0,3
	ret
.L927:
	li	a0,4
	ret
.L928:
	li	a0,5
	ret
.L929:
	li	a0,6
	ret
.L930:
	li	a0,7
	ret
.L931:
	li	a0,8
	ret
.L932:
	li	a0,9
	ret
.L933:
	li	a0,10
	ret
.L934:
	li	a0,11
	ret
.L936:
	li	a0,13
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
	andi	a5,a0,1
	bne	a5,zero,.L942
	andi	a5,a0,2
	bne	a5,zero,.L943
	andi	a5,a0,4
	bne	a5,zero,.L944
	andi	a5,a0,8
	bne	a5,zero,.L945
	andi	a5,a0,16
	bne	a5,zero,.L946
	andi	a5,a0,32
	bne	a5,zero,.L947
	andi	a5,a0,64
	bne	a5,zero,.L948
	andi	a5,a0,128
	bne	a5,zero,.L949
	andi	a5,a0,256
	bne	a5,zero,.L950
	andi	a5,a0,512
	bne	a5,zero,.L951
	andi	a5,a0,1024
	bne	a5,zero,.L952
	slli	a4,a0,52
	li	a5,4096
	blt	a4,zero,.L953
	and	a5,a0,a5
	bne	a5,zero,.L954
	slli	a5,a0,50
	blt	a5,zero,.L955
	slli	a5,a0,49
	blt	a5,zero,.L956
	sraiw	a0,a0,15
	seqz	a0,a0
	addi	a0,a0,15
	ret
.L942:
	li	a0,0
	ret
.L943:
	li	a0,1
	ret
.L954:
	li	a0,12
	ret
.L944:
	li	a0,2
	ret
.L945:
	li	a0,3
	ret
.L946:
	li	a0,4
	ret
.L947:
	li	a0,5
	ret
.L948:
	li	a0,6
	ret
.L949:
	li	a0,7
	ret
.L950:
	li	a0,8
	ret
.L951:
	li	a0,9
	ret
.L952:
	li	a0,10
	ret
.L953:
	li	a0,11
	ret
.L955:
	li	a0,13
	ret
.L956:
	li	a0,14
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
	lui	a5,%hi(.LC11)
	flw	fa5,%lo(.LC11)(a5)
	flt.s	a5,fa0,fa5
	beq	a5,zero,.L964
	fcvt.l.s a0,fa0,rtz
	ret
.L964:
	fsub.s	fa0,fa0,fa5
	li	a5,32768
	fcvt.l.s a0,fa0,rtz
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
	srli	a3,a0,1
	andi	a3,a3,1
	andi	a5,a0,1
	srli	a4,a0,2
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,3
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,4
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,5
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,6
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,7
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,8
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,9
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,10
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,11
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,12
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,13
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,14
	addw	a5,a5,a3
	andi	a4,a4,1
	addw	a5,a5,a4
	srli	a0,a0,15
	addw	a0,a0,a5
	andi	a0,a0,1
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
	srli	a3,a0,1
	andi	a3,a3,1
	andi	a5,a0,1
	srli	a4,a0,2
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,3
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,4
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,5
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,6
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,7
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,8
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,9
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,10
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,11
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,12
	addw	a5,a5,a3
	andi	a4,a4,1
	srli	a3,a0,13
	addw	a5,a5,a4
	andi	a3,a3,1
	srli	a4,a0,14
	addw	a5,a5,a3
	andi	a4,a4,1
	addw	a5,a5,a4
	srli	a0,a0,15
	addw	a0,a0,a5
	ret
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L970
.L969:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L969
	ret
.L970:
	ret
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L975
	beq	a1,zero,.L976
.L974:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	srliw	a1,a1,1
	addw	a0,a5,a0
	slliw	a4,a4,1
	bne	a1,zero,.L974
	ret
.L975:
	ret
.L976:
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
	li	a5,1
	li	a0,32
	bltu	a1,a4,.L979
	j	.L980
.L983:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L981
	beq	a0,zero,.L982
.L979:
	addiw	a0,a0,-1
	bge	a1,zero,.L983
.L980:
	li	a0,0
.L985:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L984
	subw	a4,a4,a1
	sext.w	a0,a3
.L984:
	srliw	a1,a1,1
	bne	a5,zero,.L985
.L982:
	bne	a2,zero,.L995
.L986:
	ret
.L981:
	bne	a5,zero,.L980
	li	a0,0
	beq	a2,zero,.L986
.L995:
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
	flt.s	a5,fa0,fa1
	li	a0,-1
	bne	a5,zero,.L997
	fgt.s	a0,fa0,fa1
.L997:
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
	flt.d	a5,fa0,fa1
	li	a0,-1
	bne	a5,zero,.L1001
	fgt.d	a0,fa0,fa1
.L1001:
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
	blt	a1,zero,.L1020
	beq	a1,zero,.L1012
	li	a2,0
.L1008:
	li	a4,32
	li	a0,0
	j	.L1011
.L1021:
	beq	a4,zero,.L1010
.L1011:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	addiw	a4,a4,-1
	sraiw	a1,a1,1
	andi	a4,a4,0xff
	addw	a0,a5,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1021
.L1010:
	beq	a2,zero,.L1009
	negw	a0,a0
	ret
.L1012:
	li	a0,0
.L1009:
	ret
.L1020:
	negw	a1,a1
	li	a2,1
	j	.L1008
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	li	a5,1
	li	a2,0
	blt	a0,zero,.L1042
.L1023:
	bge	a1,zero,.L1024
	neg	a1,a1
	mv	a2,a5
.L1024:
	sext.w	a4,a0
	sext.w	a1,a1
	li	a3,32
	li	a5,1
	bgtu	a4,a1,.L1025
	j	.L1026
.L1029:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L1027
	beq	a3,zero,.L1036
.L1025:
	addiw	a3,a3,-1
	bge	a1,zero,.L1029
.L1026:
	li	a0,0
.L1031:
	bltu	a4,a1,.L1030
	subw	a4,a4,a1
	or	a0,a5,a0
.L1030:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L1031
	slli	a0,a0,32
	srli	a0,a0,32
.L1028:
	beq	a2,zero,.L1022
	neg	a0,a0
.L1022:
	ret
.L1027:
	bne	a5,zero,.L1026
.L1036:
	li	a0,0
	j	.L1028
.L1042:
	neg	a0,a0
	li	a5,0
	li	a2,1
	j	.L1023
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	li	a2,0
	bge	a0,zero,.L1044
	neg	a0,a0
	li	a2,1
.L1044:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a5,a1,a5
	li	a3,32
	li	a4,1
	bgtu	a0,a5,.L1045
	j	.L1051
.L1049:
	slliw	a5,a5,1
	slliw	a4,a4,1
	bleu	a0,a5,.L1066
	beq	a3,zero,.L1048
.L1045:
	addiw	a3,a3,-1
	bge	a5,zero,.L1049
	j	.L1051
.L1050:
	srliw	a5,a5,1
.L1066:
	beq	a4,zero,.L1048
.L1051:
	srliw	a4,a4,1
	bltu	a0,a5,.L1050
	subw	a0,a0,a5
	srliw	a5,a5,1
	j	.L1066
.L1048:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L1043
	neg	a0,a0
.L1043:
	ret
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	sext.w	a5,a1
	sext.w	a3,a0
	bgeu	a1,a0,.L1181
	slliw	a5,a1,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	blt	a4,zero,.L1070
	slliw	a5,a1,1
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1071
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1072
	slliw	a5,a1,2
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1073
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1074
	slliw	a5,a1,3
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1075
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1076
	slliw	a5,a1,4
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1077
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1078
	slliw	a5,a1,5
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1079
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1080
	slliw	a5,a1,6
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1081
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1082
	slliw	a5,a1,7
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1083
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1084
	slliw	a5,a1,8
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1085
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1086
	slliw	a5,a1,9
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1087
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1088
	slliw	a5,a1,10
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1089
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1090
	slliw	a5,a1,11
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1091
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1092
	slliw	a5,a1,12
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1093
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1094
	slliw	a5,a1,13
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1095
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1096
	slliw	a5,a1,14
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1097
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1098
	slliw	a1,a1,15
	slli	a1,a1,48
	srli	a1,a1,48
	bleu	a3,a1,.L1099
	bne	a1,zero,.L1182
.L1100:
	bne	a2,zero,.L1139
	mv	a0,a1
	ret
.L1139:
	ret
.L1087:
	bltu	a3,a4,.L1133
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
.L1102:
	srli	a6,a3,2
	srli	a4,a5,2
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1103
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1103:
	srli	a6,a3,3
	srli	a4,a5,3
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1104
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1104:
	srli	a6,a3,4
	srli	a4,a5,4
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1105
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1105:
	srli	a6,a3,5
	srli	a4,a5,5
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1106
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1106:
	srli	a6,a3,6
	srli	a4,a5,6
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1107
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1107:
	srli	a6,a3,7
	srli	a4,a5,7
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1108
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1108:
	srli	a6,a3,8
	srli	a4,a5,8
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1109
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1109:
	srli	a6,a3,9
	srli	a4,a5,9
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1110
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1110:
	srli	a6,a3,10
	srli	a4,a5,10
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1111
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1111:
	srli	a6,a3,11
	srli	a4,a5,11
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1112
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1112:
	srli	a6,a3,12
	srli	a4,a5,12
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1113
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1113:
	srli	a6,a3,13
	srli	a4,a5,13
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1114
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1114:
	srli	a6,a3,14
	srli	a4,a5,14
	beq	a6,zero,.L1100
	sext.w	a7,a0
	bltu	a7,a4,.L1115
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1115:
	li	a4,16384
	srli	a5,a5,15
	beq	a3,a4,.L1100
	sext.w	a4,a0
	bltu	a4,a5,.L1123
	subw	a5,a0,a5
	slli	a0,a5,48
	srli	a0,a0,48
	ori	a1,a1,1
	j	.L1100
.L1182:
	li	a5,-32768
	addw	a3,a0,a5
	slli	a0,a3,48
	li	a5,32768
	li	a4,16384
	srli	a0,a0,48
	mv	a7,a4
	mv	a3,a5
	mv	a1,a5
.L1120:
	sext.w	a6,a0
	bltu	a6,a4,.L1102
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a7
	j	.L1102
.L1123:
	li	a0,0
	j	.L1100
.L1181:
	li	a1,0
	bne	a5,a3,.L1100
	li	a1,1
	li	a0,0
	j	.L1100
.L1070:
	subw	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,1
	j	.L1100
.L1071:
	bltu	a3,a4,.L1125
	subw	a0,a0,a5
	li	a3,2
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1072:
	subw	a0,a0,a5
	slli	a1,a1,49
	li	a3,2
	slli	a0,a0,48
	srli	a4,a1,49
	srli	a0,a0,48
	mv	a1,a3
	li	a7,1
	j	.L1120
.L1073:
	bltu	a3,a4,.L1126
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1074:
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,2
	j	.L1120
.L1075:
	bltu	a3,a4,.L1127
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1076:
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4
	j	.L1120
.L1077:
	bltu	a3,a4,.L1128
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1078:
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8
	j	.L1120
.L1079:
	bltu	a3,a4,.L1129
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1080:
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,16
	j	.L1120
.L1081:
	bltu	a3,a4,.L1130
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1082:
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,32
	j	.L1120
.L1083:
	bltu	a3,a4,.L1131
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1084:
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,64
	j	.L1120
.L1086:
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,128
	j	.L1120
.L1088:
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,256
	j	.L1120
.L1125:
	li	a3,2
.L1119:
	srli	a7,a3,1
	srli	a4,a5,1
	li	a1,0
	j	.L1120
.L1090:
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,512
	j	.L1120
.L1126:
	li	a3,4
	j	.L1119
.L1092:
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,1024
	j	.L1120
.L1094:
	li	a7,4096
	subw	a0,a0,a5
	mv	a3,a7
	slli	a0,a0,48
	srli	a0,a0,48
	addi	a7,a7,-2048
	mv	a1,a3
	srli	a4,a5,1
	j	.L1120
.L1127:
	li	a3,8
	j	.L1119
.L1096:
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4096
	j	.L1120
.L1128:
	li	a3,16
	j	.L1119
.L1098:
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8192
	j	.L1120
.L1129:
	li	a3,32
	j	.L1119
.L1130:
	li	a3,64
	j	.L1119
.L1099:
	slliw	a5,a0,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	li	a5,32768
	mv	a3,a5
	bge	a4,zero,.L1119
	mv	a1,a5
	li	a0,0
	j	.L1102
.L1131:
	li	a3,128
	j	.L1119
.L1085:
	bltu	a3,a4,.L1132
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1132:
	li	a3,256
	j	.L1119
.L1095:
	bltu	a3,a4,.L1137
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1089:
	bltu	a3,a4,.L1134
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1137:
	li	a3,8192
	j	.L1119
.L1134:
	li	a3,1024
	j	.L1119
.L1133:
	li	a3,512
	j	.L1119
.L1093:
	bltu	a3,a4,.L1136
	subw	a0,a0,a5
	li	a3,4096
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1091:
	bltu	a3,a4,.L1135
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1097:
	bltu	a3,a4,.L1138
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1102
.L1136:
	li	a3,4096
	j	.L1119
.L1135:
	li	a3,4096
	addi	a3,a3,-2048
	j	.L1119
.L1138:
	li	a3,16384
	j	.L1119
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	li	a6,1
	mv	a3,a0
	slli	a6,a6,31
	li	a4,64
	li	a5,1
	bltu	a1,a0,.L1184
	j	.L1185
.L1188:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L1186
	beq	a4,zero,.L1187
.L1184:
	and	a0,a1,a6
	addiw	a4,a4,-1
	beq	a0,zero,.L1188
.L1185:
	li	a0,0
.L1190:
	bltu	a3,a1,.L1189
	sub	a3,a3,a1
	or	a0,a0,a5
.L1189:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1190
.L1187:
	bne	a2,zero,.L1203
	ret
.L1203:
	mv	a0,a3
	ret
.L1186:
	beq	a5,zero,.L1187
	li	a0,0
	j	.L1190
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	andi	a5,a1,32
	beq	a5,zero,.L1205
	addiw	a1,a1,-32
	sllw	a5,a0,a1
	li	a0,0
.L1206:
	slli	a0,a0,32
	srli	a0,a0,32
	slli	a5,a5,32
	or	a0,a0,a5
.L1204:
	ret
.L1205:
	beq	a1,zero,.L1204
	li	a5,32
	srai	a3,a0,32
	subw	a5,a5,a1
	srlw	a5,a0,a5
	sllw	a3,a3,a1
	or	a5,a5,a3
	sllw	a0,a0,a1
	j	.L1206
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
	beq	a5,zero,.L1211
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1211:
	beq	a2,zero,.L1213
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L1213:
	ret
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	1
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	andi	a4,a1,32
	mv	a5,a0
	beq	a4,zero,.L1216
	srai	a5,a0,32
	addiw	a1,a1,-32
	sraw	a1,a5,a1
	sraiw	a0,a5,31
.L1217:
	slli	a1,a1,32
	srli	a1,a1,32
	slli	a0,a0,32
	or	a0,a0,a1
.L1215:
	ret
.L1216:
	beq	a1,zero,.L1215
	li	a4,32
	subw	a4,a4,a1
	srai	a0,a0,32
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	sraw	a0,a0,a1
	or	a1,a4,a5
	j	.L1217
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
	beq	a5,zero,.L1222
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1222:
	beq	a2,zero,.L1224
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1224:
	ret
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	li	a3,65536
	slli	a2,a0,56
	srli	a5,a0,56
	srli	a4,a0,40
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a2
	srli	a1,a0,24
	li	a3,16711680
	li	a2,255
	and	a1,a1,a3
	or	a5,a5,a4
	srli	a3,a0,8
	slli	a2,a2,24
	li	a4,255
	and	a3,a3,a2
	or	a5,a5,a1
	slli	a4,a4,32
	slli	a1,a0,8
	li	a2,255
	and	a1,a1,a4
	or	a5,a5,a3
	slli	a2,a2,40
	slli	a3,a0,24
	li	a4,255
	or	a5,a5,a1
	and	a3,a3,a2
	slli	a4,a4,48
	slli	a0,a0,40
	or	a5,a5,a3
	and	a0,a0,a4
	or	a0,a5,a0
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
	li	a3,65536
	slliw	a2,a0,24
	srliw	a5,a0,24
	srliw	a4,a0,8
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a2
	li	a3,16711680
	slliw	a0,a0,8
	or	a5,a5,a4
	and	a0,a0,a3
	or	a0,a5,a0
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
	seqz	a3,a3
	slliw	a3,a3,4
	li	a5,16
	subw	a5,a5,a3
	li	a4,65536
	srlw	a5,a0,a5
	addi	a4,a4,-256
	and	a4,a5,a4
	seqz	a4,a4
	slliw	a4,a4,3
	li	a2,8
	subw	a2,a2,a4
	srlw	a5,a5,a2
	andi	a1,a5,240
	seqz	a1,a1
	slliw	a1,a1,2
	li	a2,4
	subw	a2,a2,a1
	srlw	a5,a5,a2
	andi	a2,a5,12
	seqz	a2,a2
	li	a0,2
	slliw	a2,a2,1
	subw	a6,a0,a2
	srlw	a5,a5,a6
	srli	a6,a5,1
	addw	a4,a4,a3
	andi	a3,a6,1
	addw	a1,a1,a4
	subw	a0,a0,a5
	beq	a3,zero,.L1230
	li	a0,0
.L1230:
	addw	a2,a2,a1
	addw	a0,a0,a2
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
	sd	s0,0(sp)
	.cfi_offset 8, -16
	seqz	s0,a1
	neg	a4,s0
	addiw	a5,s0,-1
	and	a0,a0,a4
	and	a5,a5,a1
	or	a0,a5,a0
	sd	ra,8(sp)
	.cfi_offset 1, -8
	slliw	s0,s0,6
	call	__clzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	addw	a0,a0,s0
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
	srai	a3,a0,32
	srai	a4,a1,32
	mv	a5,a0
	blt	a3,a4,.L1237
	li	a0,2
	bgt	a3,a4,.L1236
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1236
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1237:
	li	a0,0
.L1236:
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
	srai	a3,a0,32
	srai	a4,a1,32
	mv	a5,a0
	blt	a3,a4,.L1243
	li	a0,1
	bgt	a3,a4,.L1242
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1242
	sgtu	a0,a5,a1
	ret
.L1243:
	li	a0,-1
.L1242:
	ret
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
	blt	a1,a3,.L1248
	li	a0,2
	bgt	a1,a3,.L1247
	li	a0,0
	bltu	a5,a2,.L1247
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1248:
	li	a0,0
.L1247:
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
	slli	a1,a0,48
	srli	a1,a1,48
	seqz	a1,a1
	slliw	a1,a1,4
	srlw	a5,a0,a1
	andi	a2,a5,0xff
	seqz	a2,a2
	slliw	a2,a2,3
	srlw	a5,a5,a2
	andi	a3,a5,15
	seqz	a3,a3
	slliw	a3,a3,2
	srlw	a5,a5,a3
	andi	a4,a5,3
	seqz	a4,a4
	slliw	a4,a4,1
	srlw	a5,a5,a4
	andi	a5,a5,3
	not	a0,a5
	addw	a2,a2,a1
	li	a6,2
	andi	a1,a0,1
	srliw	a5,a5,1
	addw	a3,a3,a2
	subw	a0,a6,a5
	negw	a2,a1
	addw	a4,a4,a3
	and	a0,a0,a2
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
	seqz	a5,a0
	sd	s0,0(sp)
	neg	a4,a5
	.cfi_offset 8, -16
	mv	s0,a5
	addiw	a5,a5,-1
	and	a1,a1,a4
	and	a0,a5,a0
	or	a0,a1,a0
	sd	ra,8(sp)
	.cfi_offset 1, -8
	slliw	s0,s0,6
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	addw	a0,a0,s0
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
	bne	a0,zero,.L1258
	bne	a1,zero,.L1263
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1258:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1263:
	.cfi_restore_state
	mv	a0,a1
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	addiw	a0,a0,65
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
	andi	a4,a1,32
	mv	a5,a0
	beq	a4,zero,.L1265
	srli	a5,a0,32
	addiw	a1,a1,-32
	srlw	a5,a5,a1
	li	a0,0
.L1266:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L1264:
	ret
.L1265:
	beq	a1,zero,.L1264
	li	a4,32
	srai	a0,a0,32
	subw	a4,a4,a1
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	srlw	a0,a0,a1
	or	a5,a4,a5
	j	.L1266
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
	beq	a5,zero,.L1271
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1271:
	beq	a2,zero,.L1273
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1273:
	ret
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
	slli	a4,a1,48
	srli	a5,a5,48
	srli	a4,a4,48
	mulw	a3,a5,a4
	srliw	a0,a0,16
	srliw	a1,a1,16
	mulw	a4,a4,a0
	srliw	a6,a3,16
	slli	a2,a3,48
	srli	a2,a2,48
	mulw	a5,a5,a1
	addw	a4,a4,a6
	slliw	a3,a4,16
	addw	a3,a3,a2
	srliw	a2,a3,16
	slli	a3,a3,48
	srli	a3,a3,48
	srliw	a4,a4,16
	mulw	a0,a0,a1
	addw	a5,a5,a2
	slliw	a2,a5,16
	addw	a3,a2,a3
	srliw	a5,a5,16
	slli	a3,a3,32
	srli	a3,a3,32
	addw	a4,a0,a4
	addw	a5,a5,a4
	slli	a5,a5,32
	or	a0,a3,a5
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
	slli	a5,a0,48
	slli	a4,a1,48
	srli	a5,a5,48
	srli	a4,a4,48
	mulw	a3,a5,a4
	srliw	a2,a0,16
	srliw	t1,a1,16
	srai	t3,a1,32
	srai	a7,a0,32
	mulw	a4,a4,a2
	srliw	t4,a3,16
	slli	a6,a3,48
	srli	a6,a6,48
	mulw	a5,a5,t1
	addw	a4,a4,t4
	slliw	a3,a4,16
	addw	a3,a3,a6
	srliw	t4,a3,16
	slli	a6,a3,48
	srli	a6,a6,48
	srliw	a3,a4,16
	mulw	a2,a2,t1
	addw	a5,a5,t4
	slliw	a4,a5,16
	addw	a4,a4,a6
	srliw	a5,a5,16
	slli	a4,a4,32
	srli	a4,a4,32
	mulw	a0,a0,t3
	addw	a2,a2,a3
	addw	a5,a5,a2
	slli	a5,a5,32
	or	a5,a4,a5
	srai	a4,a5,32
	slli	a5,a5,32
	srli	a5,a5,32
	mulw	a1,a1,a7
	addw	a0,a0,a4
	addw	a1,a1,a0
	slli	a1,a1,32
	or	a0,a5,a1
	ret
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	1
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	slli	a3,a0,32
	slli	a5,a1,32
	srli	a3,a3,32
	srli	a5,a5,32
	srli	a4,a0,32
	mul	a0,a3,a5
	srli	a1,a1,32
	mul	a5,a5,a4
	srli	a2,a0,32
	slli	a0,a0,32
	srli	a0,a0,32
	mul	a3,a3,a1
	add	a5,a5,a2
	slli	a2,a5,32
	srli	a2,a2,32
	srli	a5,a5,32
	mul	a4,a4,a1
	add	a3,a3,a2
	srli	a1,a3,32
	slli	a3,a3,32
	add	a0,a0,a3
	add	a5,a5,a4
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
	slli	a6,a0,32
	slli	a5,a2,32
	srli	a6,a6,32
	srli	a5,a5,32
	srli	a7,a0,32
	mv	a4,a0
	mul	a0,a6,a5
	srli	t1,a2,32
	mul	a5,a5,a7
	srli	t3,a0,32
	slli	a0,a0,32
	srli	a0,a0,32
	mul	a6,a6,t1
	add	a5,a5,t3
	slli	t3,a5,32
	srli	t3,t3,32
	srli	a5,a5,32
	mul	a7,a7,t1
	add	a6,a6,t3
	srli	t1,a6,32
	slli	a6,a6,32
	add	a0,a0,a6
	mul	a4,a4,a3
	add	a5,a5,a7
	add	a5,a5,t1
	mul	a1,a2,a1
	add	a4,a4,a5
	add	a1,a4,a1
	ret
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
	sub	a1,a1,a5
	neg	a0,a0
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
	xor	a0,a5,a0
	sext.w	a5,a0
	srliw	a0,a0,16
	xor	a0,a0,a5
	srliw	a4,a0,8
	xor	a4,a4,a0
	srliw	a5,a4,4
	xor	a5,a5,a4
	li	a0,28672
	andi	a5,a5,15
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
	xor	a0,a0,a1
	srai	a5,a0,32
	xor	a5,a5,a0
	sext.w	a4,a5
	srliw	a5,a5,16
	xor	a5,a5,a4
	srliw	a4,a5,8
	xor	a4,a4,a5
	srliw	a5,a4,4
	xor	a5,a5,a4
	li	a0,28672
	andi	a5,a5,15
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
	li	a0,28672
	andi	a5,a5,15
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
	li	a5,1431654400
	addi	a5,a5,1365
	slli	a4,a5,32
	add	a4,a4,a5
	li	a3,858992640
	srli	a5,a0,1
	and	a5,a5,a4
	addi	a3,a3,819
	sub	a0,a0,a5
	slli	a5,a3,32
	add	a5,a5,a3
	srli	a4,a0,2
	and	a4,a4,a5
	and	a0,a0,a5
	li	a3,252645376
	add	a4,a4,a0
	addi	a3,a3,-241
	srli	a5,a4,4
	slli	a2,a3,32
	add	a5,a5,a4
	add	a4,a2,a3
	and	a5,a5,a4
	srli	a4,a5,32
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
	li	a4,1431654400
	srliw	a5,a0,1
	addi	a4,a4,1365
	and	a5,a5,a4
	subw	a0,a0,a5
	li	a5,858992640
	addi	a5,a5,819
	srliw	a4,a0,2
	and	a4,a4,a5
	and	a0,a0,a5
	addw	a4,a4,a0
	srliw	a5,a4,4
	li	a3,252645376
	addw	a5,a5,a4
	addi	a4,a3,-241
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
	li	a3,1431654400
	addi	a3,a3,1365
	slli	a2,a1,63
	srli	a5,a0,1
	slli	a4,a3,32
	add	a4,a4,a3
	or	a5,a2,a5
	srli	a3,a1,1
	and	a5,a5,a4
	sub	a5,a0,a5
	and	a4,a3,a4
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	li	a2,858992640
	sub	a1,a1,a0
	addi	a2,a2,819
	slli	a0,a1,62
	srli	a3,a5,2
	slli	a4,a2,32
	add	a4,a4,a2
	or	a3,a0,a3
	and	a3,a3,a4
	srli	a2,a1,2
	and	a5,a5,a4
	add	a5,a3,a5
	and	a1,a1,a4
	and	a4,a2,a4
	add	a4,a4,a1
	sltu	a3,a5,a3
	add	a3,a3,a4
	slli	a2,a3,60
	srli	a4,a5,4
	or	a4,a2,a4
	li	a2,252645376
	addi	a2,a2,-241
	add	a5,a4,a5
	srli	a1,a3,4
	add	a1,a1,a3
	sltu	a4,a5,a4
	slli	a3,a2,32
	add	a3,a3,a2
	add	a4,a4,a1
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
	lui	a2,%hi(.LC9)
	andi	a5,a0,1
	fmv.d	fa5,fa0
	fld	fa0,%lo(.LC9)(a2)
	beq	a5,zero,.L1293
	mv	a5,a0
.L1290:
	fmul.d	fa0,fa0,fa5
.L1288:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1289
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1290
.L1294:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1290
	j	.L1294
.L1289:
	blt	a0,zero,.L1295
	ret
.L1293:
	mv	a5,a0
	j	.L1288
.L1295:
	fld	fa5,%lo(.LC9)(a2)
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
	lui	a2,%hi(.LC15)
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC15)(a2)
	beq	a5,zero,.L1302
	mv	a5,a0
.L1299:
	fmul.s	fa0,fa0,fa5
.L1297:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1298
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1299
.L1303:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1299
	j	.L1303
.L1298:
	blt	a0,zero,.L1304
	ret
.L1302:
	mv	a5,a0
	j	.L1297
.L1304:
	flw	fa5,%lo(.LC15)(a2)
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
	srai	a3,a0,32
	srai	a4,a1,32
	mv	a5,a0
	bltu	a3,a4,.L1307
	li	a0,2
	bgtu	a3,a4,.L1306
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1306
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1307:
	li	a0,0
.L1306:
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
	srai	a3,a0,32
	srai	a4,a1,32
	mv	a5,a0
	bltu	a3,a4,.L1313
	li	a0,1
	bgtu	a3,a4,.L1312
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1312
	sgtu	a0,a5,a1
	ret
.L1313:
	li	a0,-1
.L1312:
	ret
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
	bltu	a1,a3,.L1318
	li	a0,2
	bgtu	a1,a3,.L1317
	li	a0,0
	bltu	a5,a2,.L1317
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1318:
	li	a0,0
.L1317:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.set	.LC1,.LC3+4
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC2:
	.word	1056964608
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC3:
	.word	0
	.word	1073741824
	.align	3
.LC4:
	.word	0
	.word	1071644672
	.align	3
.LC7:
	.word	0
	.word	-1074790400
	.align	3
.LC8:
	.word	0
	.word	-1075838976
	.align	3
.LC9:
	.word	0
	.word	1072693248
	.align	3
.LC10:
	.word	0
	.word	1070596096
	.section	.srodata.cst4
	.align	2
.LC11:
	.word	1191182336
	.align	2
.LC15:
	.word	1065353216
	.section	.rodata
	.align	3
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
	.globl	__ctzdi2
	.globl	__clzdi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__letf2
	.globl	__getf2
	.globl	__lttf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
