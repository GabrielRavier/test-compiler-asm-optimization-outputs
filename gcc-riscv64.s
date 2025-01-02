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
	fmv.x.d	a5,fa0
	fmv.x.d	a4,fa1
	srli	a3,a5,63
	srli	a2,a4,63
	bne	a3,a2,.L187
	flt.d	a3,fa0,fa1
.L187:
	fmv.d.x	fa0,a5
	beq	a3,zero,.L177
	fmv.d.x	fa0,a4
.L177:
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
	fmv.x.s	a3,fa1
	li	a4,-2147483648
	and	a2,a4,a5
	and	a4,a4,a3
	sext.w	a2,a2
	sext.w	a4,a4
	beq	a2,a4,.L189
	beq	a2,zero,.L188
.L196:
	fmv.s.x	fa0,a3
.L188:
	ret
.L189:
	flt.s	a4,fa0,fa1
	bne	a4,zero,.L196
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	srli	a5,a1,63
	srli	a4,a3,63
	mv	s0,a1
	mv	s2,a3
	mv	s1,a0
	mv	s3,a2
	beq	a5,a4,.L199
	beq	a5,zero,.L204
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
	mv	a0,a2
	mv	a1,a3
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L199:
	.cfi_restore_state
	call	__lttf2
	blt	a0,zero,.L205
.L204:
	mv	a0,s1
.L208:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a1,s0
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
.L205:
	.cfi_restore_state
	mv	a0,s3
	mv	s0,s2
	j	.L208
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
	srli	a3,a4,63
	srli	a2,a5,63
	bne	a3,a2,.L219
	flt.d	a3,fa0,fa1
.L219:
	fmv.d.x	fa0,a5
	beq	a3,zero,.L209
	fmv.d.x	fa0,a4
.L209:
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
	fmv.x.s	a3,fa0
	fmv.x.s	a5,fa1
	li	a4,-2147483648
	and	a2,a4,a3
	and	a4,a4,a5
	sext.w	a2,a2
	sext.w	a4,a4
	beq	a2,a4,.L221
	fmv.s	fa0,fa1
	beq	a2,zero,.L220
.L228:
	fmv.s.x	fa0,a3
.L220:
	ret
.L221:
	flt.s	a4,fa0,fa1
	fmv.s	fa0,fa1
	bne	a4,zero,.L228
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
	sd	s0,32(sp)
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	srli	a5,a1,63
	srli	a4,a3,63
	mv	s2,a1
	mv	s0,a3
	mv	s3,a0
	mv	s1,a2
	beq	a5,a4,.L231
	beq	a5,zero,.L236
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
.L231:
	.cfi_restore_state
	call	__lttf2
	blt	a0,zero,.L237
.L236:
	mv	a0,s1
	mv	a1,s0
.L241:
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
.L237:
	.cfi_restore_state
	mv	s0,s2
	mv	a0,s3
	mv	a1,s0
	j	.L241
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
	beq	a5,zero,.L245
	lui	a2,%hi(.LANCHOR0)
	addi	a3,a0,%lo(s.0)
	addi	a2,a2,%lo(.LANCHOR0)
.L244:
	andi	a4,a5,63
	add	a4,a2,a4
	lbu	a4,0(a4)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	a4,-1(a3)
	bne	a5,zero,.L244
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
.L245:
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
	beq	a1,zero,.L255
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L249
	sd	a0,8(a5)
.L249:
	ret
.L255:
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
	beq	a5,zero,.L257
	ld	a4,8(a0)
	sd	a4,8(a5)
.L257:
	ld	a4,8(a0)
	beq	a4,zero,.L256
	sd	a5,0(a4)
.L256:
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
	beq	s3,zero,.L266
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 22, -64
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L268
.L283:
	add	s0,s0,s2
	beq	s3,s1,.L282
.L268:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L283
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s6,16(sp)
	.cfi_restore 22
.L265:
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
.L282:
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
.L266:
	mul	s5,s2,s3
	addi	s3,s3,1
	sd	s3,0(s7)
	add	s5,s8,s5
	beq	s2,zero,.L265
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L265
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
	beq	s5,zero,.L285
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
	j	.L287
.L298:
	add	s0,s0,s4
	beq	s5,s1,.L297
.L287:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L298
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
.L297:
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
.L285:
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
.L307:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L301
	sext.w	a1,a2
	bleu	a5,a3,.L301
	li	a5,43
	beq	a2,a5,.L302
	li	a5,45
	bne	a2,a5,.L317
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bgtu	a3,a5,.L312
	li	a7,1
.L305:
	li	a0,0
	li	a1,9
.L309:
	slliw	a5,a0,2
	lbu	a2,1(a4)
	addw	a5,a5,a0
	slliw	a5,a5,1
	subw	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L309
	bne	a7,zero,.L308
	subw	a0,a6,a5
	ret
.L301:
	addi	a0,a0,1
	j	.L307
.L317:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L312
	mv	a4,a0
	addiw	a3,a2,-48
	li	a7,0
	j	.L305
.L302:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,0
	bleu	a3,a5,.L305
.L312:
	li	a0,0
.L308:
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
.L325:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L319
	sext.w	a1,a2
	bleu	a5,a3,.L319
	li	a5,43
	beq	a2,a5,.L320
	li	a5,45
	bne	a2,a5,.L335
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bgtu	a3,a5,.L330
	li	a7,1
.L323:
	li	a0,0
	li	a1,9
.L327:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L327
	bne	a7,zero,.L318
	sub	a0,a6,a5
	ret
.L319:
	addi	a0,a0,1
	j	.L325
.L335:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L330
	mv	a4,a0
	addiw	a3,a2,-48
	li	a7,0
	j	.L323
.L320:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,0
	bleu	a3,a5,.L323
.L330:
	li	a0,0
.L318:
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
.L341:
	lbu	a2,0(a0)
	addiw	a5,a2,-9
	beq	a2,a4,.L337
	sext.w	a1,a2
	bleu	a5,a3,.L337
	li	a5,43
	beq	a2,a5,.L338
	li	a5,45
	bne	a2,a5,.L354
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	li	a7,1
	bgtu	a3,a5,.L348
.L342:
	li	a0,0
	li	a1,9
.L345:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	a6,a3
	addiw	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L345
	bne	a7,zero,.L336
	sub	a0,a6,a5
	ret
.L337:
	addi	a0,a0,1
	j	.L341
.L354:
	addiw	a1,a1,-48
	li	a5,9
	mv	a4,a0
	addiw	a3,a2,-48
	bgtu	a1,a5,.L348
.L353:
	li	a7,0
	j	.L342
.L338:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addiw	a3,a2,-48
	bleu	a3,a5,.L353
.L348:
	li	a0,0
.L336:
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
	beq	a2,zero,.L356
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
.L359:
	srli	s2,s0,1
	mul	s1,s2,s3
	mv	a0,s6
	addi	s0,s0,-1
	add	s1,s4,s1
	mv	a1,s1
	jalr	s5
	blt	a0,zero,.L360
	beq	a0,zero,.L369
	sub	s0,s0,s2
	add	s4,s1,s3
	bne	s0,zero,.L359
.L370:
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
.L356:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L360:
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
	bne	s0,zero,.L359
	j	.L370
.L369:
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
	beq	s0,zero,.L376
	sd	s2,48(sp)
	.cfi_offset 18, -32
.L372:
	sraiw	s2,s0,1
	mul	s1,s2,s3
	mv	a2,s5
	mv	a0,s7
	addiw	s0,s0,-1
	sraiw	s0,s0,1
	add	s1,s4,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L386
	ble	a0,zero,.L374
	add	s4,s1,s3
	bne	s0,zero,.L372
.L387:
	ld	s2,48(sp)
	.cfi_restore 18
.L376:
	li	s1,0
.L371:
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
.L374:
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
	beq	s2,zero,.L387
	mv	s0,s2
	j	.L372
.L386:
	ld	s2,48(sp)
	.cfi_restore 18
	j	.L371
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
	j	.L406
.L408:
	beq	a1,a5,.L407
	addi	a0,a0,4
.L406:
	lw	a5,0(a0)
	bne	a5,zero,.L408
	li	a0,0
	ret
.L407:
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
.L412:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L411
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L412
.L411:
	li	a0,-1
	blt	a5,a4,.L413
	sgt	a0,a5,a4
.L413:
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
.L417:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L417
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
	beq	a5,zero,.L422
	mv	a5,a0
.L421:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L421
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L422:
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
	beq	a2,zero,.L430
.L435:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L427
	beq	a5,zero,.L427
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L435
.L430:
	li	a0,0
	ret
.L427:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L436
	ret
.L436:
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
	beq	a2,zero,.L441
.L446:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L445
	addi	a0,a0,4
	bne	a2,zero,.L446
.L441:
	li	a0,0
	ret
.L445:
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
	beq	a2,zero,.L453
.L460:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L459
	addi	a1,a1,4
	bne	a2,zero,.L460
.L453:
	li	a0,0
	ret
.L459:
	sgt	a0,a4,a5
	blt	a4,a5,.L461
	ret
.L461:
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
	beq	a2,zero,.L463
	slli	a2,a2,2
	call	memcpy
.L463:
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
	beq	a0,a1,.L486
	sub	a7,a0,a1
	slli	a6,a2,2
	mv	a4,a0
	mv	a3,a1
	addi	a5,a2,-1
	bltu	a7,a6,.L470
	beq	a2,zero,.L498
	li	a6,8
	bleu	a5,a6,.L480
	or	a6,a1,a0
	andi	a6,a6,7
	bne	a6,zero,.L499
	addi	a6,a1,4
	beq	a0,a6,.L481
	srli	a7,a2,1
	li	a5,0
.L475:
	ld	a6,0(a3)
	addi	a5,a5,1
	addi	a3,a3,8
	sd	a6,0(a4)
	addi	a4,a4,8
	bne	a7,a5,.L475
	andi	a5,a2,1
	beq	a5,zero,.L486
	andi	a2,a2,-2
	slli	a2,a2,2
	add	a1,a1,a2
	lw	a5,0(a1)
	add	a2,a0,a2
	sw	a5,0(a2)
	ret
.L480:
	addi	a6,a1,4
.L474:
	li	a2,-1
	j	.L478
.L500:
	addi	a6,a6,4
.L478:
	lw	a3,-4(a6)
	addi	a5,a5,-1
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a2,.L500
.L486:
	ret
.L470:
	beq	a2,zero,.L486
	slli	a5,a5,2
	li	a2,-4
.L473:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L473
	ret
.L498:
	ret
.L499:
	addi	a6,a1,4
.L481:
	mv	a4,a0
	j	.L474
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
	beq	a2,zero,.L502
	srli	a5,a0,2
	li	a4,5
	andi	a5,a5,1
	bleu	a7,a4,.L507
	mv	t1,a0
	beq	a5,zero,.L504
	sw	a1,0(a0)
	addi	t1,a0,4
	addi	a7,a2,-2
.L504:
	slli	a3,a1,32
	sub	a2,a2,a5
	slli	a4,a1,32
	srli	a3,a3,32
	slli	a5,a5,2
	or	a3,a3,a4
	add	a5,a0,a5
	srli	a6,a2,1
	li	a4,0
.L505:
	sd	a3,0(a5)
	addi	a4,a4,1
	addi	a5,a5,8
	bne	a4,a6,.L505
	andi	a5,a2,1
	beq	a5,zero,.L502
	andi	a2,a2,-2
	slli	a5,a2,2
	sub	a7,a7,a2
	add	a5,t1,a5
.L503:
	sw	a1,0(a5)
	beq	a7,zero,.L502
	sw	a1,4(a5)
	li	a4,1
	beq	a7,a4,.L502
	sw	a1,8(a5)
	li	a4,2
	beq	a7,a4,.L502
	sw	a1,12(a5)
	li	a4,3
	beq	a7,a4,.L502
	sw	a1,16(a5)
	li	a4,4
	beq	a7,a4,.L502
	sw	a1,20(a5)
.L502:
	ret
.L507:
	mv	a5,a0
	j	.L503
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	bgeu	a0,a1,.L521
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L520
.L523:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L523
	ret
.L521:
	bne	a0,a1,.L549
.L520:
	ret
.L549:
	beq	a2,zero,.L520
	addi	a5,a2,-1
	li	a4,7
	bleu	a5,a4,.L547
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L547
	addi	a5,a0,1
	sub	a4,a1,a5
	sltiu	a4,a4,7
	bne	a4,zero,.L524
	andi	a6,a2,-8
	add	a3,a0,a6
	mv	a5,a1
.L525:
	ld	a4,0(a0)
	addi	a0,a0,8
	addi	a5,a5,8
	sd	a4,-8(a5)
	bne	a3,a0,.L525
	add	a1,a1,a6
	sub	a5,a2,a6
	beq	a2,a6,.L520
	lbu	a2,0(a3)
	li	a4,1
	sb	a2,0(a1)
	beq	a5,a4,.L520
	lbu	a2,1(a3)
	li	a4,2
	sb	a2,1(a1)
	beq	a5,a4,.L520
	lbu	a2,2(a3)
	li	a4,3
	sb	a2,2(a1)
	beq	a5,a4,.L520
	lbu	a2,3(a3)
	li	a4,4
	sb	a2,3(a1)
	beq	a5,a4,.L520
	lbu	a2,4(a3)
	li	a4,5
	sb	a2,4(a1)
	beq	a5,a4,.L520
	lbu	a2,5(a3)
	li	a4,6
	sb	a2,5(a1)
	beq	a5,a4,.L520
	lbu	a5,6(a3)
	sb	a5,6(a1)
	ret
.L547:
	addi	a5,a0,1
.L524:
	add	a0,a0,a2
	j	.L528
.L550:
	addi	a5,a5,1
.L528:
	lbu	a4,-1(a5)
	addi	a1,a1,1
	sb	a4,-1(a1)
	bne	a5,a0,.L550
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
	j	.L567
.L565:
	beq	a5,a3,.L569
.L567:
	srlw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L565
	mv	a0,a5
	ret
.L569:
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
	beq	a0,zero,.L573
	andi	a0,a0,1
	bne	a0,zero,.L571
	li	a0,1
.L572:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L572
	ret
.L573:
	li	a0,0
.L571:
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
	bne	a5,zero,.L582
	blt	a0,zero,.L595
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
.L583:
	andi	a5,a0,1
	beq	a5,zero,.L584
.L585:
	fmul.s	fa0,fa0,fa5
.L584:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L582
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L585
.L596:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L585
	j	.L596
.L582:
	ret
.L595:
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	j	.L583
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
	bne	a5,zero,.L598
	blt	a0,zero,.L611
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
.L599:
	andi	a5,a0,1
	beq	a5,zero,.L600
.L601:
	fmul.d	fa0,fa0,fa5
.L600:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L598
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L601
.L612:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L601
	j	.L612
.L598:
	ret
.L611:
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	j	.L599
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
	beq	a0,zero,.L614
	sd	s1,24(sp)
	sd	s4,0(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	li	s1,1
	slli	s1,s1,62
	li	s4,0
	blt	s0,zero,.L630
	andi	a5,s0,1
	beq	a5,zero,.L617
.L618:
	mv	a0,s3
	mv	a1,s2
	mv	a2,s4
	mv	a3,s1
	call	__multf3
	mv	s3,a0
	mv	s2,a1
.L617:
	srliw	a5,s0,31
	addw	s0,a5,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L629
.L619:
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
	bne	a4,zero,.L618
	sraiw	s0,a5,1
	j	.L619
.L629:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s4,0(sp)
	.cfi_restore 20
.L614:
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
.L630:
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
	beq	a5,zero,.L617
	j	.L618
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L632
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L633
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L633
	andi	a7,a2,-8
	add	a6,a1,a7
	mv	a5,a0
.L634:
	ld	a3,0(a5)
	ld	a4,0(a1)
	addi	a1,a1,8
	addi	a5,a5,8
	xor	a4,a4,a3
	sd	a4,-8(a5)
	bne	a6,a1,.L634
	add	a5,a0,a7
	sub	a4,a2,a7
	beq	a2,a7,.L632
	lbu	a3,0(a5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a3,a3,a1
	sb	a3,0(a5)
	beq	a4,a2,.L632
	lbu	a1,1(a5)
	lbu	a3,1(a6)
	li	a2,2
	xor	a3,a3,a1
	sb	a3,1(a5)
	beq	a4,a2,.L632
	lbu	a1,2(a5)
	lbu	a3,2(a6)
	li	a2,3
	xor	a3,a3,a1
	sb	a3,2(a5)
	beq	a4,a2,.L632
	lbu	a1,3(a5)
	lbu	a3,3(a6)
	li	a2,4
	xor	a3,a3,a1
	sb	a3,3(a5)
	beq	a4,a2,.L632
	lbu	a1,4(a5)
	lbu	a3,4(a6)
	li	a2,5
	xor	a3,a3,a1
	sb	a3,4(a5)
	beq	a4,a2,.L632
	lbu	a1,5(a5)
	lbu	a3,5(a6)
	li	a2,6
	xor	a3,a3,a1
	sb	a3,5(a5)
	beq	a4,a2,.L632
	lbu	a3,6(a5)
	lbu	a4,6(a6)
	xor	a4,a4,a3
	sb	a4,6(a5)
	ret
.L633:
	add	a2,a1,a2
	mv	a5,a0
.L636:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L636
.L632:
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
	beq	a5,zero,.L650
	mv	a5,a0
.L645:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L645
.L656:
	beq	a2,zero,.L647
.L658:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L657
	addi	a5,a5,1
	bne	a2,zero,.L658
.L647:
	sb	zero,0(a5)
	ret
.L657:
	ret
.L650:
	mv	a5,a0
	j	.L656
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
	beq	a1,zero,.L667
.L660:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L662
	ret
.L662:
	addi	a0,a0,1
	bne	a1,a0,.L660
	ret
.L667:
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
	beq	a3,zero,.L673
.L677:
	mv	a5,a1
	j	.L672
.L671:
	beq	a4,a3,.L670
.L672:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L671
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L677
.L673:
	li	a0,0
.L670:
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
.L680:
	lbu	a4,0(a5)
	bne	a1,a4,.L679
	mv	a0,a5
.L679:
	addi	a5,a5,1
	bne	a4,zero,.L680
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
	beq	a7,zero,.L695
	mv	a5,a1
.L684:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L684
	sub	t3,a5,a1
	mv	a0,a3
	addi	t3,t3,-1
	bne	a5,a1,.L692
	ret
.L703:
	addi	a3,a3,1
	beq	a5,zero,.L702
.L692:
	lbu	a5,0(a3)
	bne	a5,a7,.L703
	add	t1,a3,t3
	mv	a0,a1
	mv	a4,a3
	mv	a2,a7
.L686:
	beq	a4,t1,.L688
	addi	a4,a4,1
	bne	a5,a2,.L689
	lbu	a5,0(a4)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	a5,zero,.L688
	mv	a0,a6
	bne	a2,zero,.L686
.L689:
	addi	a3,a3,1
	j	.L692
.L702:
	li	a0,0
	ret
.L688:
	bne	a5,a2,.L689
.L695:
	mv	a0,a3
.L682:
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
	beq	a5,zero,.L717
	fle.d	a5,fa0,fa5
	bne	a5,zero,.L708
	fge.d	a5,fa1,fa5
	beq	a5,zero,.L707
.L708:
	ret
.L717:
	fle.d	a5,fa1,fa5
	bne	a5,zero,.L708
.L707:
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
	beq	a3,zero,.L718
	bltu	a1,a3,.L729
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L729
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L724:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L734
	mv	a0,t1
.L720:
	bgeu	a7,a0,.L724
.L729:
	li	a0,0
.L718:
	ret
.L734:
	mv	a4,a2
	beq	a3,zero,.L718
.L723:
	mv	a5,t1
	add	t3,t1,a3
	j	.L721
.L722:
	beq	a5,t3,.L718
.L721:
	lbu	a6,0(a5)
	lbu	a1,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a6,a1,.L722
	bgtu	t1,a7,.L729
	lbu	a5,0(t1)
	addi	a0,t1,1
	bne	a5,t4,.L720
	mv	a5,t1
	mv	a4,a2
	mv	t1,a0
	mv	a0,a5
	j	.L723
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
	beq	a2,zero,.L736
	call	memmove
.L736:
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
	beq	a5,zero,.L768
	lui	a5,%hi(.LC9)
	fld	fa4,%lo(.LC9)(a5)
	li	a3,0
	fge.d	a5,fa0,fa4
	beq	a5,zero,.L769
.L744:
	lui	a4,%hi(.LC4)
	fld	fa3,%lo(.LC4)(a4)
	lui	a5,%hi(.LC3)
	fld	fa4,%lo(.LC3)(a5)
	li	a5,0
.L750:
	fmv.d	fa5,fa0
	addiw	a5,a5,1
	fmul.d	fa0,fa0,fa3
	fge.d	a4,fa5,fa4
	bne	a4,zero,.L750
	sw	a5,0(a0)
	beq	a3,zero,.L741
.L771:
	fneg.d	fa0,fa0
.L741:
	ret
.L769:
	lui	a5,%hi(.LC4)
	fld	fa4,%lo(.LC4)(a5)
	fge.d	a5,fa0,fa4
	bne	a5,zero,.L747
	feq.d	a5,fa0,fa5
	beq	a5,zero,.L756
.L747:
	sw	zero,0(a0)
	ret
.L768:
	lui	a5,%hi(.LC7)
	fld	fa5,%lo(.LC7)(a5)
	fneg.d	fa4,fa0
	fle.d	a5,fa0,fa5
	beq	a5,zero,.L770
	fmv.d	fa0,fa4
	li	a3,1
	j	.L744
.L770:
	lui	a5,%hi(.LC8)
	fld	fa5,%lo(.LC8)(a5)
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L747
	li	a3,1
.L745:
	lui	a5,%hi(.LC10)
	fmv.d	fa0,fa4
	fld	fa4,%lo(.LC10)(a5)
	li	a5,0
.L752:
	fmv.d	fa5,fa0
	addiw	a5,a5,-1
	fadd.d	fa0,fa0,fa0
	flt.d	a4,fa5,fa4
	bne	a4,zero,.L752
	sw	a5,0(a0)
	bne	a3,zero,.L771
	ret
.L756:
	fmv.d	fa4,fa0
	j	.L745
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
	beq	a4,zero,.L775
.L774:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L774
	ret
.L775:
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
	bltu	a1,a4,.L778
	j	.L779
.L782:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L780
	beq	a0,zero,.L781
.L778:
	addiw	a0,a0,-1
	bge	a1,zero,.L782
.L779:
	li	a0,0
.L784:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L783
	subw	a4,a4,a1
	sext.w	a0,a3
.L783:
	srliw	a1,a1,1
	bne	a5,zero,.L784
.L781:
	bne	a2,zero,.L794
.L785:
	ret
.L780:
	bne	a5,zero,.L779
	li	a0,0
	beq	a2,zero,.L785
.L794:
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
	beq	a0,zero,.L797
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
.L797:
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
	beq	a5,a4,.L804
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
.L804:
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
	beq	a4,zero,.L812
.L811:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L811
	ret
.L812:
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
	bltu	a0,a1,.L818
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L847
.L818:
	beq	a6,zero,.L848
	slli	a6,a6,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L821:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L821
	bleu	a2,t1,.L814
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L823
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L823
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L823
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L824:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L824
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L814
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L814
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L814
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L814
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L814
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L814
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L814
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L847:
	addiw	a5,a2,-1
	beq	a2,zero,.L849
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L828:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L828
.L814:
	ret
.L848:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L850
.L823:
	mv	a5,a3
.L826:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bltu	a4,a2,.L826
	ret
.L850:
	ret
.L849:
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
	bltu	a0,a1,.L855
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L877
.L855:
	beq	t1,zero,.L854
	addiw	a5,t1,-1
	li	a4,6
	bleu	a5,a4,.L858
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L858
	addi	a5,a1,2
	sub	a5,a0,a5
	sltiu	a5,a5,5
	bne	a5,zero,.L858
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L859:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L859
	slliw	a5,a7,2
	beq	t1,a5,.L854
	slli	a4,a5,1
	add	a3,a1,a4
	lh	a6,0(a3)
	add	a3,a0,a4
	addiw	a4,a5,1
	sh	a6,0(a3)
	bleu	t1,a4,.L854
	slli	a3,a4,32
	srli	a4,a3,31
	add	a3,a1,a4
	lh	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,2
	sh	a3,0(a4)
	bleu	t1,a5,.L854
	slli	a5,a5,32
	srli	a5,a5,31
	add	a4,a1,a5
	lh	a4,0(a4)
	add	a5,a0,a5
	sh	a4,0(a5)
.L854:
	andi	a5,a2,1
	beq	a5,zero,.L851
.L879:
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	lbu	a5,0(a1)
	add	a2,a0,a2
	sb	a5,0(a2)
	ret
.L877:
	addiw	a5,a2,-1
	beq	a2,zero,.L878
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L864:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L864
.L851:
	ret
.L858:
	slli	t1,t1,1
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L861:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,t1,.L861
	andi	a5,a2,1
	beq	a5,zero,.L851
	j	.L879
.L878:
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
	bltu	a0,a1,.L885
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L920
.L885:
	beq	t3,zero,.L921
	addiw	a5,t3,-1
	li	a4,8
	bleu	a5,a4,.L887
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L887
	addi	a5,a1,4
	beq	a0,a5,.L887
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L888:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L888
	slliw	a7,a7,1
	beq	t3,a7,.L891
	slli	a7,a7,2
	add	a5,a1,a7
	lw	a5,0(a5)
	add	a7,a0,a7
	sw	a5,0(a7)
.L891:
	bleu	a2,t1,.L880
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L883
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L883
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L883
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L892:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L892
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L880
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L880
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L880
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L880
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L880
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L880
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L880
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L920:
	addiw	a5,a2,-1
	beq	a2,zero,.L922
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L896:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L896
.L880:
	ret
.L887:
	slli	t3,t3,2
	add	t3,t3,a1
	mv	a5,a1
	mv	a4,a0
.L890:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t3,.L890
	j	.L891
.L921:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L923
.L883:
	mv	a5,a3
.L894:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bgtu	a2,a4,.L894
	ret
.L923:
	ret
.L922:
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
	bne	a3,zero,.L933
	sraiw	a0,a5,14
	bne	a0,zero,.L932
	sraiw	a3,a5,13
	bne	a3,zero,.L934
	sraiw	a3,a5,12
	bne	a3,zero,.L935
	sraiw	a3,a5,11
	bne	a3,zero,.L936
	sraiw	a3,a5,10
	bne	a3,zero,.L937
	sraiw	a3,a5,9
	bne	a3,zero,.L938
	sraiw	a3,a5,8
	bne	a3,zero,.L939
	sraiw	a3,a5,7
	bne	a3,zero,.L940
	sraiw	a3,a5,6
	bne	a3,zero,.L941
	sraiw	a3,a5,5
	bne	a3,zero,.L942
	sraiw	a3,a5,4
	bne	a3,zero,.L943
	sraiw	a3,a5,3
	bne	a3,zero,.L944
	sraiw	a3,a5,2
	bne	a3,zero,.L945
	sraiw	a5,a5,1
	bne	a5,zero,.L946
	seqz	a0,a4
	addi	a0,a0,15
	ret
.L946:
	li	a0,14
.L932:
	ret
.L933:
	li	a0,0
	ret
.L944:
	li	a0,12
	ret
.L934:
	li	a0,2
	ret
.L935:
	li	a0,3
	ret
.L936:
	li	a0,4
	ret
.L937:
	li	a0,5
	ret
.L938:
	li	a0,6
	ret
.L939:
	li	a0,7
	ret
.L940:
	li	a0,8
	ret
.L941:
	li	a0,9
	ret
.L942:
	li	a0,10
	ret
.L943:
	li	a0,11
	ret
.L945:
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
	bne	a5,zero,.L951
	andi	a5,a0,2
	bne	a5,zero,.L952
	andi	a5,a0,4
	bne	a5,zero,.L953
	andi	a5,a0,8
	bne	a5,zero,.L954
	andi	a5,a0,16
	bne	a5,zero,.L955
	andi	a5,a0,32
	bne	a5,zero,.L956
	andi	a5,a0,64
	bne	a5,zero,.L957
	andi	a5,a0,128
	bne	a5,zero,.L958
	andi	a5,a0,256
	bne	a5,zero,.L959
	andi	a5,a0,512
	bne	a5,zero,.L960
	andi	a5,a0,1024
	bne	a5,zero,.L961
	slli	a4,a0,52
	li	a5,4096
	blt	a4,zero,.L962
	and	a5,a0,a5
	bne	a5,zero,.L963
	slli	a5,a0,50
	blt	a5,zero,.L964
	slli	a5,a0,49
	blt	a5,zero,.L965
	sraiw	a0,a0,15
	seqz	a0,a0
	addi	a0,a0,15
	ret
.L951:
	li	a0,0
	ret
.L952:
	li	a0,1
	ret
.L963:
	li	a0,12
	ret
.L953:
	li	a0,2
	ret
.L954:
	li	a0,3
	ret
.L955:
	li	a0,4
	ret
.L956:
	li	a0,5
	ret
.L957:
	li	a0,6
	ret
.L958:
	li	a0,7
	ret
.L959:
	li	a0,8
	ret
.L960:
	li	a0,9
	ret
.L961:
	li	a0,10
	ret
.L962:
	li	a0,11
	ret
.L964:
	li	a0,13
	ret
.L965:
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
	beq	a5,zero,.L973
	fcvt.l.s a0,fa0,rtz
	ret
.L973:
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
	beq	a4,zero,.L979
.L978:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L978
	ret
.L979:
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
	beq	a4,zero,.L984
	beq	a1,zero,.L985
.L983:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	srliw	a1,a1,1
	addw	a0,a5,a0
	slliw	a4,a4,1
	bne	a1,zero,.L983
	ret
.L984:
	ret
.L985:
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
	bltu	a1,a4,.L988
	j	.L989
.L992:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L990
	beq	a0,zero,.L991
.L988:
	addiw	a0,a0,-1
	bge	a1,zero,.L992
.L989:
	li	a0,0
.L994:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L993
	subw	a4,a4,a1
	sext.w	a0,a3
.L993:
	srliw	a1,a1,1
	bne	a5,zero,.L994
.L991:
	bne	a2,zero,.L1004
.L995:
	ret
.L990:
	bne	a5,zero,.L989
	li	a0,0
	beq	a2,zero,.L995
.L1004:
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
	bne	a5,zero,.L1006
	fgt.s	a0,fa0,fa1
.L1006:
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
	bne	a5,zero,.L1010
	fgt.d	a0,fa0,fa1
.L1010:
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
	blt	a1,zero,.L1029
	beq	a1,zero,.L1021
	li	a2,0
.L1017:
	li	a4,32
	li	a0,0
	j	.L1020
.L1030:
	beq	a4,zero,.L1019
.L1020:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	addiw	a4,a4,-1
	sraiw	a1,a1,1
	andi	a4,a4,0xff
	addw	a0,a5,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1030
.L1019:
	beq	a2,zero,.L1018
	negw	a0,a0
	ret
.L1021:
	li	a0,0
.L1018:
	ret
.L1029:
	negw	a1,a1
	li	a2,1
	j	.L1017
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
	blt	a0,zero,.L1051
.L1032:
	bge	a1,zero,.L1033
	neg	a1,a1
	mv	a2,a5
.L1033:
	sext.w	a4,a0
	sext.w	a1,a1
	li	a3,32
	li	a5,1
	bgtu	a4,a1,.L1034
	j	.L1035
.L1038:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L1036
	beq	a3,zero,.L1045
.L1034:
	addiw	a3,a3,-1
	bge	a1,zero,.L1038
.L1035:
	li	a0,0
.L1040:
	bltu	a4,a1,.L1039
	subw	a4,a4,a1
	or	a0,a5,a0
.L1039:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L1040
	slli	a0,a0,32
	srli	a0,a0,32
.L1037:
	beq	a2,zero,.L1031
	neg	a0,a0
.L1031:
	ret
.L1036:
	bne	a5,zero,.L1035
.L1045:
	li	a0,0
	j	.L1037
.L1051:
	neg	a0,a0
	li	a5,0
	li	a2,1
	j	.L1032
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
	bge	a0,zero,.L1053
	neg	a0,a0
	li	a2,1
.L1053:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a5,a1,a5
	li	a3,32
	li	a4,1
	bgtu	a0,a5,.L1054
	j	.L1060
.L1058:
	slliw	a5,a5,1
	slliw	a4,a4,1
	bleu	a0,a5,.L1075
	beq	a3,zero,.L1057
.L1054:
	addiw	a3,a3,-1
	bge	a5,zero,.L1058
	j	.L1060
.L1059:
	srliw	a5,a5,1
.L1075:
	beq	a4,zero,.L1057
.L1060:
	srliw	a4,a4,1
	bltu	a0,a5,.L1059
	subw	a0,a0,a5
	srliw	a5,a5,1
	j	.L1075
.L1057:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L1052
	neg	a0,a0
.L1052:
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
	bgeu	a1,a0,.L1190
	slliw	a5,a1,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	blt	a4,zero,.L1079
	slliw	a5,a1,1
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1080
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1081
	slliw	a5,a1,2
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1082
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1083
	slliw	a5,a1,3
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1084
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1085
	slliw	a5,a1,4
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1086
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1087
	slliw	a5,a1,5
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1088
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1089
	slliw	a5,a1,6
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1090
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1091
	slliw	a5,a1,7
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1092
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1093
	slliw	a5,a1,8
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1094
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1095
	slliw	a5,a1,9
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1096
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1097
	slliw	a5,a1,10
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1098
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1099
	slliw	a5,a1,11
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1100
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1101
	slliw	a5,a1,12
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1102
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1103
	slliw	a5,a1,13
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1104
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1105
	slliw	a5,a1,14
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1106
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1107
	slliw	a1,a1,15
	slli	a1,a1,48
	srli	a1,a1,48
	bleu	a3,a1,.L1108
	bne	a1,zero,.L1191
.L1109:
	bne	a2,zero,.L1148
	mv	a0,a1
	ret
.L1148:
	ret
.L1096:
	bltu	a3,a4,.L1142
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
.L1111:
	srli	a6,a3,2
	srli	a4,a5,2
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1112
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1112:
	srli	a6,a3,3
	srli	a4,a5,3
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1113
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1113:
	srli	a6,a3,4
	srli	a4,a5,4
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1114
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1114:
	srli	a6,a3,5
	srli	a4,a5,5
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1115
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1115:
	srli	a6,a3,6
	srli	a4,a5,6
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1116
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1116:
	srli	a6,a3,7
	srli	a4,a5,7
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1117
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1117:
	srli	a6,a3,8
	srli	a4,a5,8
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1118
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1118:
	srli	a6,a3,9
	srli	a4,a5,9
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1119
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1119:
	srli	a6,a3,10
	srli	a4,a5,10
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1120
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1120:
	srli	a6,a3,11
	srli	a4,a5,11
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1121
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1121:
	srli	a6,a3,12
	srli	a4,a5,12
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1122
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1122:
	srli	a6,a3,13
	srli	a4,a5,13
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1123
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1123:
	srli	a6,a3,14
	srli	a4,a5,14
	beq	a6,zero,.L1109
	sext.w	a7,a0
	bltu	a7,a4,.L1124
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1124:
	li	a4,16384
	srli	a5,a5,15
	beq	a3,a4,.L1109
	sext.w	a4,a0
	bltu	a4,a5,.L1132
	subw	a5,a0,a5
	slli	a0,a5,48
	srli	a0,a0,48
	ori	a1,a1,1
	j	.L1109
.L1191:
	li	a5,-32768
	addw	a3,a0,a5
	slli	a0,a3,48
	li	a5,32768
	li	a4,16384
	srli	a0,a0,48
	mv	a7,a4
	mv	a3,a5
	mv	a1,a5
.L1129:
	sext.w	a6,a0
	bltu	a6,a4,.L1111
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a7
	j	.L1111
.L1132:
	li	a0,0
	j	.L1109
.L1190:
	li	a1,0
	bne	a5,a3,.L1109
	li	a1,1
	li	a0,0
	j	.L1109
.L1079:
	subw	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,1
	j	.L1109
.L1080:
	bltu	a3,a4,.L1134
	subw	a0,a0,a5
	li	a3,2
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1081:
	subw	a0,a0,a5
	slli	a1,a1,49
	li	a3,2
	slli	a0,a0,48
	srli	a4,a1,49
	srli	a0,a0,48
	mv	a1,a3
	li	a7,1
	j	.L1129
.L1082:
	bltu	a3,a4,.L1135
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1083:
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,2
	j	.L1129
.L1084:
	bltu	a3,a4,.L1136
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1085:
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4
	j	.L1129
.L1086:
	bltu	a3,a4,.L1137
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1087:
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8
	j	.L1129
.L1088:
	bltu	a3,a4,.L1138
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1089:
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,16
	j	.L1129
.L1090:
	bltu	a3,a4,.L1139
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1091:
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,32
	j	.L1129
.L1092:
	bltu	a3,a4,.L1140
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1093:
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,64
	j	.L1129
.L1095:
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,128
	j	.L1129
.L1097:
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,256
	j	.L1129
.L1134:
	li	a3,2
.L1128:
	srli	a7,a3,1
	srli	a4,a5,1
	li	a1,0
	j	.L1129
.L1099:
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,512
	j	.L1129
.L1135:
	li	a3,4
	j	.L1128
.L1101:
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,1024
	j	.L1129
.L1103:
	li	a7,4096
	subw	a0,a0,a5
	mv	a3,a7
	slli	a0,a0,48
	srli	a0,a0,48
	addi	a7,a7,-2048
	mv	a1,a3
	srli	a4,a5,1
	j	.L1129
.L1136:
	li	a3,8
	j	.L1128
.L1105:
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4096
	j	.L1129
.L1137:
	li	a3,16
	j	.L1128
.L1107:
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8192
	j	.L1129
.L1138:
	li	a3,32
	j	.L1128
.L1139:
	li	a3,64
	j	.L1128
.L1108:
	slliw	a5,a0,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	li	a5,32768
	mv	a3,a5
	bge	a4,zero,.L1128
	mv	a1,a5
	li	a0,0
	j	.L1111
.L1140:
	li	a3,128
	j	.L1128
.L1094:
	bltu	a3,a4,.L1141
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1141:
	li	a3,256
	j	.L1128
.L1104:
	bltu	a3,a4,.L1146
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1098:
	bltu	a3,a4,.L1143
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1146:
	li	a3,8192
	j	.L1128
.L1143:
	li	a3,1024
	j	.L1128
.L1142:
	li	a3,512
	j	.L1128
.L1102:
	bltu	a3,a4,.L1145
	subw	a0,a0,a5
	li	a3,4096
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1100:
	bltu	a3,a4,.L1144
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1106:
	bltu	a3,a4,.L1147
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1111
.L1145:
	li	a3,4096
	j	.L1128
.L1144:
	li	a3,4096
	addi	a3,a3,-2048
	j	.L1128
.L1147:
	li	a3,16384
	j	.L1128
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
	bltu	a1,a0,.L1193
	j	.L1194
.L1197:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L1195
	beq	a4,zero,.L1196
.L1193:
	and	a0,a1,a6
	addiw	a4,a4,-1
	beq	a0,zero,.L1197
.L1194:
	li	a0,0
.L1199:
	bltu	a3,a1,.L1198
	sub	a3,a3,a1
	or	a0,a0,a5
.L1198:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1199
.L1196:
	bne	a2,zero,.L1212
	ret
.L1212:
	mv	a0,a3
	ret
.L1195:
	beq	a5,zero,.L1196
	li	a0,0
	j	.L1199
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
	beq	a5,zero,.L1214
	addiw	a1,a1,-32
	sllw	a5,a0,a1
	li	a0,0
.L1215:
	slli	a0,a0,32
	srli	a0,a0,32
	slli	a5,a5,32
	or	a0,a0,a5
.L1213:
	ret
.L1214:
	beq	a1,zero,.L1213
	li	a5,32
	srai	a3,a0,32
	subw	a5,a5,a1
	srlw	a5,a0,a5
	sllw	a3,a3,a1
	or	a5,a5,a3
	sllw	a0,a0,a1
	j	.L1215
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
	beq	a5,zero,.L1220
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1220:
	beq	a2,zero,.L1222
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L1222:
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
	beq	a4,zero,.L1225
	srai	a5,a0,32
	addiw	a1,a1,-32
	sraw	a1,a5,a1
	sraiw	a0,a5,31
.L1226:
	slli	a1,a1,32
	srli	a1,a1,32
	slli	a0,a0,32
	or	a0,a0,a1
.L1224:
	ret
.L1225:
	beq	a1,zero,.L1224
	li	a4,32
	subw	a4,a4,a1
	srai	a0,a0,32
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	sraw	a0,a0,a1
	or	a1,a4,a5
	j	.L1226
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
	beq	a5,zero,.L1231
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1231:
	beq	a2,zero,.L1233
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1233:
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
	beq	a3,zero,.L1239
	li	a0,0
.L1239:
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
	blt	a3,a4,.L1246
	li	a0,2
	bgt	a3,a4,.L1245
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1245
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1246:
	li	a0,0
.L1245:
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
	blt	a3,a4,.L1252
	li	a0,1
	bgt	a3,a4,.L1251
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1251
	sgtu	a0,a5,a1
	ret
.L1252:
	li	a0,-1
.L1251:
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
	blt	a1,a3,.L1257
	li	a0,2
	bgt	a1,a3,.L1256
	li	a0,0
	bltu	a5,a2,.L1256
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1257:
	li	a0,0
.L1256:
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
	bne	a0,zero,.L1267
	bne	a1,zero,.L1272
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1267:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1272:
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
	beq	a4,zero,.L1274
	srli	a5,a0,32
	addiw	a1,a1,-32
	srlw	a5,a5,a1
	li	a0,0
.L1275:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L1273:
	ret
.L1274:
	beq	a1,zero,.L1273
	li	a4,32
	srai	a0,a0,32
	subw	a4,a4,a1
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	srlw	a0,a0,a1
	or	a5,a4,a5
	j	.L1275
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
	beq	a5,zero,.L1280
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1280:
	beq	a2,zero,.L1282
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1282:
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
	beq	a5,zero,.L1302
	mv	a5,a0
.L1299:
	fmul.d	fa0,fa0,fa5
.L1297:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1298
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1299
.L1303:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
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
	beq	a5,zero,.L1311
	mv	a5,a0
.L1308:
	fmul.s	fa0,fa0,fa5
.L1306:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1307
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1308
.L1312:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1308
	j	.L1312
.L1307:
	blt	a0,zero,.L1313
	ret
.L1311:
	mv	a5,a0
	j	.L1306
.L1313:
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
	bltu	a3,a4,.L1316
	li	a0,2
	bgtu	a3,a4,.L1315
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1315
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1316:
	li	a0,0
.L1315:
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
	bltu	a3,a4,.L1322
	li	a0,1
	bgtu	a3,a4,.L1321
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1321
	sgtu	a0,a5,a1
	ret
.L1322:
	li	a0,-1
.L1321:
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
	bltu	a1,a3,.L1327
	li	a0,2
	bgtu	a1,a3,.L1326
	li	a0,0
	bltu	a5,a2,.L1326
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1327:
	li	a0,0
.L1326:
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
	.globl	__lttf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
