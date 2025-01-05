	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 1
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
	add	t0,a1,a2
	add	t1,a0,a2
	beq	a2,zero,.L6
.L7:
	lbu	a4,-1(t0)
	addi	t1,t1,-1
	addi	t0,t0,-1
	sb	a4,0(t1)
	bne	a0,t1,.L7
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
	or	t0,a1,a0
	andi	t1,t0,7
	addi	a5,a1,1
	bne	t1,zero,.L8
	sub	t2,a0,a5
	sltiu	a3,t2,7
	bne	a3,zero,.L8
	andi	a6,a2,-8
	add	a7,a1,a6
	mv	t4,a0
.L9:
	ld	t3,0(a1)
	addi	a1,a1,8
	addi	t4,t4,8
	sd	t3,-8(t4)
	bne	a7,a1,.L9
	add	t5,a0,a6
	sub	t6,a2,a6
	beq	a2,a6,.L6
	lbu	a1,0(a7)
	li	a2,1
	sb	a1,0(t5)
	beq	t6,a2,.L6
	lbu	a5,1(a7)
	li	a4,2
	sb	a5,1(t5)
	beq	t6,a4,.L6
	lbu	t0,2(a7)
	li	t1,3
	sb	t0,2(t5)
	beq	t6,t1,.L6
	lbu	t2,3(a7)
	li	a3,4
	sb	t2,3(t5)
	beq	t6,a3,.L6
	lbu	a6,4(a7)
	li	t3,5
	sb	a6,4(t5)
	beq	t6,t3,.L6
	lbu	t4,5(a7)
	li	a1,6
	sb	t4,5(t5)
	beq	t6,a1,.L6
	lbu	a7,6(a7)
	sb	a7,6(t5)
	ret
.L32:
	addi	a5,a1,1
.L8:
	add	t5,a0,a2
	mv	a2,a0
.L12:
	lbu	t6,-1(a5)
	addi	a2,a2,1
	addi	a5,a5,1
	sb	t6,-1(a2)
	bne	a2,t5,.L12
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
.L44:
	beq	a3,zero,.L45
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L44
	ret
.L45:
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
	bne	a2,zero,.L47
	j	.L50
.L49:
	addi	a0,a0,1
	beq	a2,zero,.L50
.L47:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L49
	ret
.L50:
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
	beq	a2,zero,.L59
.L69:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	addi	a2,a2,-1
	bne	a4,a5,.L68
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L69
.L59:
	li	a0,0
	ret
.L68:
	lbu	a0,0(a0)
	lbu	t0,0(a1)
	subw	a0,a0,t0
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
	beq	a2,zero,.L71
	call	memcpy
.L71:
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
	add	t0,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L77
.L79:
	lbu	a5,0(a0)
	addi	t0,t0,-1
	beq	a5,a1,.L76
.L77:
	mv	a0,t0
	bne	t0,a4,.L79
	li	a0,0
.L76:
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
	beq	a2,zero,.L83
	andi	a1,a1,0xff
	call	memset
.L83:
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
	beq	a5,zero,.L86
.L87:
	lbu	t0,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	t0,0(a0)
	bne	t0,zero,.L87
.L86:
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
	beq	a5,zero,.L92
.L93:
	beq	a5,a1,.L92
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L93
.L92:
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
.L102:
	lbu	a5,0(a0)
	beq	a5,a1,.L101
	addi	a0,a0,1
	bne	a5,zero,.L102
	li	a0,0
.L101:
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
.L107:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L114
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L107
	li	a0,0
.L106:
	subw	a0,a0,a4
	ret
.L114:
	sext.w	a0,a5
	j	.L106
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
	beq	a5,zero,.L118
	mv	t0,a0
.L117:
	lbu	a4,1(t0)
	addi	t0,t0,1
	bne	a4,zero,.L117
	sub	a0,t0,a0
	ret
.L118:
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
	beq	a2,zero,.L128
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L124
	j	.L134
.L125:
	beq	a0,a3,.L133
	addi	a0,a0,1
	bne	a4,a5,.L133
	lbu	a5,0(a0)
	beq	a5,zero,.L135
	mv	a1,t0
.L124:
	lbu	a4,0(a1)
	addi	t0,a1,1
	bne	a4,zero,.L125
.L133:
	sext.w	a0,a5
.L123:
	subw	a0,a0,a4
	ret
.L128:
	li	a0,0
	ret
.L135:
	lbu	a4,1(a1)
	li	a0,0
	subw	a0,a0,a4
	ret
.L134:
	lbu	a4,0(a1)
	li	a0,0
	j	.L123
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
	ble	a2,a5,.L136
	andi	a2,a2,-2
	add	a3,a0,a2
.L138:
	lbu	a4,1(a0)
	lbu	t0,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	t0,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L138
.L136:
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
	addiw	t0,a0,-97
	sltiu	a0,t0,26
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
	beq	a0,a5,.L144
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L144:
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
	bleu	a0,a5,.L147
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L147:
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
	beq	a0,a5,.L154
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L154:
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
	bleu	a0,a4,.L158
	addiw	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L161
.L157:
	ret
.L158:
	li	a0,1
	ret
.L161:
	li	t1,-8192
	addiw	t2,t1,-40
	addw	a1,a5,t2
	bleu	a1,a0,.L157
	li	a0,-65536
	addiw	a2,a0,7
	addw	a6,a5,a2
	sltiu	a0,a6,3
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
	bleu	a0,a4,.L170
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L165
	li	t2,-8192
	addiw	a1,t2,-42
	li	a3,45056
	addw	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L165
	li	a7,-57344
	li	t3,8192
	addw	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L165
	li	a0,-65536
	addiw	t6,a0,4
	li	t0,1048576
	addw	a4,a5,t6
	addi	t1,t0,3
	li	a0,0
	bgtu	a4,t1,.L165
	li	t2,65536
	addi	a1,t2,-2
	and	a5,a5,a1
	sub	a3,a5,a1
	snez	a0,a3
.L165:
	ret
.L170:
	addiw	a2,a0,1
	andi	a6,a2,127
	li	a7,32
	sgtu	a0,a6,a7
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
	bleu	a4,a5,.L173
	ori	a0,a0,32
	addiw	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L173:
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
	beq	a5,zero,.L175
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L179
	fgt.d	t1,fa0,fa1
	beq	t1,zero,.L183
	fsub.d	fa0,fa0,fa1
	ret
.L183:
	fmv.d.x	fa0,zero
.L175:
	ret
.L179:
	fmv.d	fa0,fa1
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
	beq	a5,zero,.L184
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L188
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L192
	fsub.s	fa0,fa0,fa1
	ret
.L192:
	fmv.s.x	fa0,zero
.L184:
	ret
.L188:
	fmv.s	fa0,fa1
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
	feq.d	a3,fa0,fa0
	fmv.x.d	a5,fa0
	fmv.x.d	a4,fa1
	beq	a3,zero,.L198
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L199
	srli	t1,a5,63
	srli	a2,a4,63
	bne	t1,a2,.L202
	flt.d	t2,fa0,fa1
	beq	t2,zero,.L193
.L198:
	fmv.d.x	fa0,a4
	ret
.L202:
	fmv.d	fa0,fa1
	beq	t1,zero,.L199
.L193:
	ret
.L199:
	fmv.d.x	fa0,a5
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
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L208
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L209
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	bne	a0,a1,.L212
	flt.s	a6,fa0,fa1
	beq	a6,zero,.L203
.L208:
	fmv.s.x	fa0,a4
	ret
.L212:
	fmv.s	fa0,fa1
	beq	a0,zero,.L209
.L203:
	ret
.L209:
	fmv.s.x	fa0,a5
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
	sd	s3,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	mv	s0,a3
	mv	s3,a2
	mv	a3,a1
	mv	a2,a0
	sd	s1,24(sp)
	sd	s2,16(sp)
	sd	ra,40(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s2,a1
	call	__unordtf2
	bne	a0,zero,.L221
	mv	a2,s3
	mv	a3,s0
	mv	a0,s3
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L220
	srli	a5,s2,63
	srli	a4,s0,63
	bne	a5,a4,.L225
	mv	a2,s3
	mv	a3,s0
	mv	a0,s1
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L222
	mv	s0,s2
.L217:
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
	mv	a0,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L225:
	.cfi_restore_state
	beq	a5,zero,.L220
.L221:
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
	mv	a0,s3
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L220:
	.cfi_restore_state
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s3,8(sp)
	.cfi_restore 19
	mv	a0,s1
	mv	a1,s2
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L222:
	.cfi_restore_state
	mv	s1,s3
	j	.L217
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	feq.d	a3,fa0,fa0
	fmv.x.d	a5,fa0
	fmv.x.d	a4,fa1
	beq	a3,zero,.L231
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L232
	srli	t1,a5,63
	srli	a2,a4,63
	beq	t1,a2,.L228
	bne	t1,zero,.L226
.L231:
	fmv.d.x	fa0,a4
	ret
.L228:
	flt.d	t2,fa0,fa1
	fmv.d	fa0,fa1
	bne	t2,zero,.L232
.L226:
	ret
.L232:
	fmv.d.x	fa0,a5
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
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L240
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L241
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	beq	a0,a1,.L237
	bne	a0,zero,.L235
.L240:
	fmv.s.x	fa0,a4
	ret
.L237:
	flt.s	a6,fa0,fa1
	fmv.s	fa0,fa1
	bne	a6,zero,.L241
.L235:
	ret
.L241:
	fmv.s.x	fa0,a5
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
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s0,a3
	mv	s1,a2
	mv	a3,a1
	mv	a2,a0
	sd	s2,16(sp)
	sd	s3,8(sp)
	sd	ra,40(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 1, -8
	mv	s3,a0
	mv	s2,a1
	call	__unordtf2
	bne	a0,zero,.L250
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L252
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L246
	beq	a5,zero,.L250
.L252:
	ld	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	ld	s1,24(sp)
	.cfi_restore 9
	mv	a0,s3
	mv	a1,s2
	ld	s3,8(sp)
	.cfi_restore 19
	ld	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L246:
	.cfi_restore_state
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L256
.L250:
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
	mv	a0,s1
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L256:
	.cfi_restore_state
	mv	s1,s3
	mv	s0,s2
	j	.L250
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
	beq	a5,zero,.L260
	lui	a2,%hi(.LANCHOR0)
	addi	a3,a0,%lo(s.0)
	addi	t0,a2,%lo(.LANCHOR0)
.L259:
	andi	a4,a5,63
	add	t1,t0,a4
	lbu	t2,0(t1)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	t2,-1(a3)
	bne	a5,zero,.L259
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
.L260:
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
	slli	t0,a0,32
	srli	t1,t0,32
	lui	a5,%hi(seed)
	sd	t1,%lo(seed)(a5)
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
	addi	t0,a5,1069
	li	a4,1284866048
	slli	t1,t0,32
	addi	t2,a4,-211
	add	a1,t1,t2
	mul	a2,a0,a1
	addi	a6,a2,1
	sd	a6,%lo(seed)(a3)
	srli	a0,a6,33
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
	beq	a1,zero,.L270
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	t0,0(a0)
	beq	t0,zero,.L264
	sd	a0,8(t0)
.L264:
	ret
.L270:
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
	beq	a5,zero,.L272
	ld	a4,8(a0)
	sd	a4,8(a5)
.L272:
	ld	t0,8(a0)
	beq	t0,zero,.L271
	sd	a5,0(t0)
.L271:
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
	beq	s3,zero,.L281
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 22, -64
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L283
.L298:
	add	s0,s0,s2
	beq	s3,s1,.L297
.L283:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L298
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s6,16(sp)
	.cfi_restore 22
.L280:
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
.L297:
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
.L281:
	mul	t0,s2,s3
	addi	t1,s3,1
	sd	t1,0(s7)
	add	s5,s8,t0
	beq	s2,zero,.L280
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L280
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
	beq	s5,zero,.L300
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
	j	.L302
.L313:
	add	s0,s0,s4
	beq	s5,s1,.L312
.L302:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L313
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
.L312:
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
.L300:
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
	li	a3,32
	li	a2,4
.L322:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L316
	sext.w	a1,a4
	bleu	a5,a2,.L316
	li	t0,43
	beq	a4,t0,.L317
	li	a6,45
	bne	a4,a6,.L334
	lbu	a7,1(a0)
	li	t3,9
	addi	a3,a0,1
	addiw	a4,a7,-48
	bgtu	a4,t3,.L327
	li	t6,1
.L320:
	li	a0,0
	li	a1,9
.L324:
	slliw	a5,a0,2
	lbu	a2,1(a3)
	addw	a0,a5,a0
	slliw	t0,a0,1
	subw	a0,t0,a4
	mv	t1,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L324
	bne	t6,zero,.L323
	subw	a0,t1,t0
	ret
.L316:
	addi	a0,a0,1
	j	.L322
.L334:
	addiw	t4,a1,-48
	li	t5,9
	bgtu	t4,t5,.L327
	mv	a3,a0
	addiw	a4,a4,-48
	li	t6,0
	j	.L320
.L317:
	lbu	t1,1(a0)
	li	t2,9
	addi	a3,a0,1
	addiw	a4,t1,-48
	li	t6,0
	bleu	a4,t2,.L320
.L327:
	li	a0,0
.L323:
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
	li	a3,32
	li	a2,4
.L342:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L336
	sext.w	a1,a4
	bleu	a5,a2,.L336
	li	t0,43
	beq	a4,t0,.L337
	li	a6,45
	bne	a4,a6,.L354
	lbu	a7,1(a0)
	li	t3,9
	addi	a3,a0,1
	addiw	a4,a7,-48
	bgtu	a4,t3,.L347
	li	t6,1
.L340:
	li	a0,0
	li	a1,9
.L344:
	slli	a5,a0,2
	lbu	a2,1(a3)
	add	a0,a5,a0
	slli	t0,a0,1
	sub	a0,t0,a4
	mv	t1,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L344
	bne	t6,zero,.L335
	sub	a0,t1,t0
	ret
.L336:
	addi	a0,a0,1
	j	.L342
.L354:
	addiw	t4,a1,-48
	li	t5,9
	bgtu	t4,t5,.L347
	mv	a3,a0
	addiw	a4,a4,-48
	li	t6,0
	j	.L340
.L337:
	lbu	t1,1(a0)
	li	t2,9
	addi	a3,a0,1
	addiw	a4,t1,-48
	li	t6,0
	bleu	a4,t2,.L340
.L347:
	li	a0,0
.L335:
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
	li	a3,32
	li	a2,4
.L360:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L356
	sext.w	a1,a4
	bleu	a5,a2,.L356
	li	t0,43
	beq	a4,t0,.L357
	li	a6,45
	bne	a4,a6,.L375
	lbu	a7,1(a0)
	li	t3,9
	addi	t6,a0,1
	addiw	a3,a7,-48
	li	a4,1
	bgtu	a3,t3,.L367
.L361:
	li	a0,0
	li	a1,9
.L364:
	slli	a5,a0,2
	lbu	a2,1(t6)
	add	a0,a5,a0
	slli	t0,a0,1
	sub	a0,t0,a3
	mv	t1,a3
	addiw	a3,a2,-48
	addi	t6,t6,1
	bleu	a3,a1,.L364
	bne	a4,zero,.L355
	sub	a0,t1,t0
	ret
.L356:
	addi	a0,a0,1
	j	.L360
.L375:
	addiw	t4,a1,-48
	li	t5,9
	mv	t6,a0
	addiw	a3,a4,-48
	bgtu	t4,t5,.L367
.L374:
	li	a4,0
	j	.L361
.L357:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addiw	a3,t1,-48
	bleu	a3,t2,.L374
.L367:
	li	a0,0
.L355:
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
	beq	a2,zero,.L377
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
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
.L380:
	srli	s2,s0,1
	mul	s1,s2,s4
	mv	a0,s5
	addi	s0,s0,-1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L381
	beq	a0,zero,.L390
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L380
.L391:
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
.L377:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L381:
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
	bne	s0,zero,.L380
	j	.L391
.L390:
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
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
	mv	s7,a5
	beq	s0,zero,.L397
	sd	s2,48(sp)
	.cfi_offset 18, -32
.L405:
	sraiw	s2,s0,1
	mul	s1,s2,s4
	mv	a2,s7
	mv	a0,s5
	addiw	s0,s0,-1
	sraiw	s0,s0,1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L409
	ble	a0,zero,.L395
	add	s3,s1,s4
	bne	s0,zero,.L405
.L410:
	ld	s2,48(sp)
	.cfi_restore 18
.L397:
	li	s1,0
.L392:
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
.L395:
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
	beq	s2,zero,.L410
	mv	s0,s2
	j	.L405
.L409:
	ld	s2,48(sp)
	.cfi_restore 18
	j	.L392
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
	remw	a0,a0,a1
	slli	t0,a5,32
	srli	t1,t0,32
	slli	t2,a0,32
	or	a0,t1,t2
	ret
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
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	ret
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
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	ret
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
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	ret
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	1
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	j	.L427
.L429:
	beq	a1,a5,.L428
	addi	a0,a0,4
.L427:
	lw	a5,0(a0)
	bne	a5,zero,.L429
	li	a0,0
	ret
.L428:
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
.L433:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L432
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L433
.L432:
	li	a0,-1
	blt	a5,a4,.L434
	sgt	a0,a5,a4
.L434:
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
.L440:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L440
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
	beq	a5,zero,.L445
	mv	t0,a0
.L444:
	lw	a4,4(t0)
	addi	t0,t0,4
	bne	a4,zero,.L444
	sub	a0,t0,a0
	srai	a0,a0,2
	ret
.L445:
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
	beq	a2,zero,.L453
.L460:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L450
	beq	a5,zero,.L450
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L460
.L453:
	li	a0,0
	ret
.L450:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L461
	ret
.L461:
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
	beq	a2,zero,.L466
.L473:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L472
	addi	a0,a0,4
	bne	a2,zero,.L473
.L466:
	li	a0,0
	ret
.L472:
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
	beq	a2,zero,.L480
.L490:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L489
	addi	a1,a1,4
	bne	a2,zero,.L490
.L480:
	li	a0,0
	ret
.L489:
	sgt	a0,a4,a5
	blt	a4,a5,.L491
	ret
.L491:
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
	beq	a2,zero,.L493
	slli	a2,a2,2
	call	memcpy
.L493:
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
	beq	a0,a1,.L516
	sub	a7,a0,a1
	slli	a6,a2,2
	mv	a4,a0
	mv	a3,a1
	addi	t3,a2,-1
	bltu	a7,a6,.L500
	beq	a2,zero,.L528
	li	t0,8
	bleu	t3,t0,.L510
	or	t1,a1,a0
	andi	t2,t1,7
	bne	t2,zero,.L529
	addi	t4,a1,4
	beq	a0,t4,.L511
	srli	t3,a2,1
	li	a5,0
.L505:
	ld	t4,0(a3)
	addi	a5,a5,1
	addi	a3,a3,8
	sd	t4,0(a4)
	addi	a4,a4,8
	bne	t3,a5,.L505
	andi	t5,a2,1
	beq	t5,zero,.L516
	andi	a2,a2,-2
	slli	t6,a2,2
	add	a1,a1,t6
	lw	a7,0(a1)
	add	a6,a0,t6
	sw	a7,0(a6)
	ret
.L510:
	addi	t4,a1,4
	mv	t2,a0
.L504:
	li	t0,-1
	j	.L508
.L530:
	addi	t4,t4,4
.L508:
	lw	t1,-4(t4)
	addi	t3,t3,-1
	addi	t2,t2,4
	sw	t1,-4(t2)
	bne	t3,t0,.L530
.L516:
	ret
.L500:
	beq	a2,zero,.L516
	slli	a5,t3,2
	li	t5,-4
.L503:
	add	a3,a1,a5
	lw	a2,0(a3)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a2,0(a4)
	bne	a5,t5,.L503
	ret
.L528:
	ret
.L529:
	addi	t4,a1,4
.L511:
	mv	t2,a0
	j	.L504
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
	beq	a2,zero,.L532
	srli	a5,a0,2
	li	a4,5
	andi	t0,a5,1
	bleu	a7,a4,.L537
	mv	t2,a0
	beq	t0,zero,.L534
	sw	a1,0(a0)
	addi	t2,a0,4
	addi	a7,a2,-2
.L534:
	slli	a3,a1,32
	srli	t3,a3,32
	sub	a2,a2,t0
	slli	a6,t0,2
	slli	t4,a1,32
	add	a5,a0,a6
	srli	t5,a2,1
	or	t6,t3,t4
	li	a4,0
.L535:
	sd	t6,0(a5)
	addi	a4,a4,1
	addi	a5,a5,8
	bne	a4,t5,.L535
	andi	t0,a2,1
	beq	t0,zero,.L532
	andi	t1,a2,-2
	slli	a3,t1,2
	sub	a7,a7,t1
	add	t1,t2,a3
.L533:
	sw	a1,0(t1)
	beq	a7,zero,.L532
	sw	a1,4(t1)
	li	t2,1
	beq	a7,t2,.L532
	sw	a1,8(t1)
	li	t3,2
	beq	a7,t3,.L532
	sw	a1,12(t1)
	li	a2,3
	beq	a7,a2,.L532
	sw	a1,16(t1)
	li	a6,4
	beq	a7,a6,.L532
	sw	a1,20(t1)
.L532:
	ret
.L537:
	mv	t1,a0
	j	.L533
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	bgeu	a0,a1,.L551
	add	a1,a1,a2
	add	t6,a0,a2
	beq	a2,zero,.L550
.L553:
	lbu	a5,-1(t6)
	addi	t6,t6,-1
	addi	a1,a1,-1
	sb	a5,0(a1)
	bne	a0,t6,.L553
	ret
.L551:
	bne	a0,a1,.L579
.L550:
	ret
.L579:
	beq	a2,zero,.L550
	addi	a5,a2,-1
	li	a4,7
	bleu	a5,a4,.L577
	or	t0,a1,a0
	andi	t1,t0,7
	bne	t1,zero,.L577
	addi	t5,a0,1
	sub	t2,a1,t5
	sltiu	a3,t2,7
	bne	a3,zero,.L554
	andi	a6,a2,-8
	add	a7,a0,a6
	mv	t4,a1
.L555:
	ld	t3,0(a0)
	addi	a0,a0,8
	addi	t4,t4,8
	sd	t3,-8(t4)
	bne	a7,a0,.L555
	add	a1,a1,a6
	sub	a0,a2,a6
	beq	a2,a6,.L550
	lbu	a2,0(a7)
	li	t5,1
	sb	a2,0(a1)
	beq	a0,t5,.L550
	lbu	t6,1(a7)
	li	a5,2
	sb	t6,1(a1)
	beq	a0,a5,.L550
	lbu	t0,2(a7)
	li	a4,3
	sb	t0,2(a1)
	beq	a0,a4,.L550
	lbu	t1,3(a7)
	li	t2,4
	sb	t1,3(a1)
	beq	a0,t2,.L550
	lbu	a3,4(a7)
	li	a6,5
	sb	a3,4(a1)
	beq	a0,a6,.L550
	lbu	t3,5(a7)
	li	t4,6
	sb	t3,5(a1)
	beq	a0,t4,.L550
	lbu	a7,6(a7)
	sb	a7,6(a1)
	ret
.L577:
	addi	t5,a0,1
.L554:
	add	a0,a0,a2
	j	.L558
.L580:
	addi	t5,t5,1
.L558:
	lbu	a2,-1(t5)
	addi	a1,a1,1
	sb	a2,-1(a1)
	bne	t5,a0,.L580
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
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
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
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
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
	srlw	t0,a0,a5
	sllw	a0,a0,a1
	or	a0,t0,a0
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
	sllw	t0,a0,a5
	srlw	a0,a0,a1
	or	a0,t0,a0
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
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
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
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
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
	andi	t0,a5,15
	srlw	t1,a0,t0
	sllw	a0,a0,a1
	or	t2,a0,t1
	slli	a2,t2,48
	srli	a0,a2,48
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
	andi	t0,a5,15
	sllw	t1,a0,t0
	srlw	a0,a0,a1
	or	t2,a0,t1
	slli	a2,t2,48
	srli	a0,a2,48
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
	andi	t0,a5,7
	srlw	t1,a0,t0
	sllw	a0,a0,a1
	or	t2,a0,t1
	andi	a0,t2,0xff
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
	andi	t0,a5,7
	sllw	t1,a0,t0
	srlw	a0,a0,a1
	or	t2,a0,t1
	andi	a0,t2,0xff
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
	or	t0,a5,a0
	slli	t1,t0,48
	srli	a0,t1,48
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
	slliw	a2,a0,8
	li	a5,16711680
	slliw	a3,a0,24
	and	t0,a2,a5
	and	a4,a0,a5
	or	t1,a3,t0
	srliw	t2,a0,24
	srli	a1,a4,8
	or	a0,t1,t2
	or	a0,a0,a1
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
	slli	a5,a0,56
	srli	a2,a0,56
	srli	a4,a0,40
	addi	t0,a3,-256
	or	t1,a5,a2
	and	t2,a4,t0
	srli	a1,a0,24
	li	a6,16711680
	li	a7,255
	or	t3,t1,t2
	and	t4,a1,a6
	srli	t5,a0,8
	slli	t6,a7,24
	li	a2,255
	or	a5,t3,t4
	and	a3,t5,t6
	slli	t0,a0,8
	slli	a4,a2,32
	li	t1,255
	or	t2,a5,a3
	slli	a6,a0,24
	and	a1,t0,a4
	slli	a7,t1,40
	li	t3,255
	or	t4,t2,a1
	slli	a0,a0,40
	and	t5,a6,a7
	slli	t6,t3,48
	or	a2,t4,t5
	and	a5,a0,t6
	or	a0,a2,a5
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
	j	.L597
.L595:
	beq	a5,a3,.L599
.L597:
	srlw	a4,a0,a5
	andi	t0,a4,1
	addiw	a5,a5,1
	beq	t0,zero,.L595
	mv	a0,a5
	ret
.L599:
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
	beq	a0,zero,.L603
	andi	a0,a0,1
	bne	a0,zero,.L601
	li	a0,1
.L602:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L602
	ret
.L603:
	li	a0,0
.L601:
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
	flt.s	t0,fa0,fa5
	bne	t0,zero,.L607
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa0,ft0
.L607:
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
	flt.d	t0,fa0,fa5
	bne	t0,zero,.L611
	lui	t1,%hi(.LC4)
	fld	ft0,%lo(.LC4)(t1)
	fgt.d	a0,fa0,ft0
.L611:
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
	lui	a5,%hi(.LC5)
	addi	t0,a5,%lo(.LC5)
	ld	a2,0(t0)
	ld	a3,8(t0)
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s0,a1
	call	__lttf2
	blt	a0,zero,.L617
	lui	t1,%hi(.LC6)
	addi	t2,t1,%lo(.LC6)
	ld	a2,0(t2)
	ld	a3,8(t2)
	mv	a0,s1
	mv	a1,s0
	call	__gttf2
	ld	ra,24(sp)
	.cfi_remember_state
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L617:
	.cfi_restore_state
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	ld	s1,8(sp)
	.cfi_restore 9
	li	a0,1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
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
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L622
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L622
	blt	a0,zero,.L635
	lui	t1,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t1)
.L623:
	andi	a1,a0,1
	beq	a1,zero,.L624
.L625:
	fmul.s	fa0,fa0,ft0
.L624:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L622
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L625
.L636:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L625
	j	.L636
.L622:
	ret
.L635:
	lui	t2,%hi(.LC8)
	flw	ft0,%lo(.LC8)(t2)
	j	.L623
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
	beq	a5,zero,.L638
	fadd.d	fa5,fa0,fa0
	feq.d	t0,fa5,fa0
	bne	t0,zero,.L638
	blt	a0,zero,.L651
	lui	t1,%hi(.LC9)
	fld	ft0,%lo(.LC9)(t1)
.L639:
	andi	a1,a0,1
	beq	a1,zero,.L640
.L641:
	fmul.d	fa0,fa0,ft0
.L640:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L638
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L641
.L652:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L641
	j	.L652
.L638:
	ret
.L651:
	lui	t2,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t2)
	j	.L639
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
	sd	s3,8(sp)
	sd	s4,0(sp)
	sd	ra,40(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 1, -8
	mv	s4,a0
	mv	s3,a1
	call	__unordtf2
	bne	a0,zero,.L654
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L654
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	blt	s0,zero,.L670
	lui	a5,%hi(.LC11)
	addi	t0,a5,%lo(.LC11)
	ld	s1,0(t0)
	ld	s2,8(t0)
.L656:
	andi	a0,s0,1
	beq	a0,zero,.L657
.L658:
	mv	a0,s4
	mv	a1,s3
	mv	a2,s1
	mv	a3,s2
	call	__multf3
	mv	s4,a0
	mv	s3,a1
.L657:
	srliw	a1,s0,31
	addw	s0,a1,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L669
.L659:
	mv	a2,s1
	mv	a0,s1
	mv	a3,s2
	mv	a1,s2
	call	__multf3
	srliw	s1,s0,31
	andi	a4,s0,1
	addw	a2,s1,s0
	mv	s2,a1
	mv	s1,a0
	bne	a4,zero,.L658
	sraiw	s0,a2,1
	j	.L659
.L669:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L654:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	mv	a0,s4
	mv	a1,s3
	ld	s4,0(sp)
	.cfi_restore 20
	ld	s3,8(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L670:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	lui	t1,%hi(.LC12)
	addi	t2,t1,%lo(.LC12)
	ld	s1,0(t2)
	ld	s2,8(t2)
	j	.L656
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L672
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L673
	or	t0,a0,a1
	andi	t1,t0,7
	bne	t1,zero,.L673
	andi	a7,a2,-8
	add	a6,a1,a7
	mv	t4,a0
.L674:
	ld	a3,0(t4)
	ld	t2,0(a1)
	addi	a1,a1,8
	addi	t4,t4,8
	xor	t3,t2,a3
	sd	t3,-8(t4)
	bne	a6,a1,.L674
	add	t5,a0,a7
	sub	t6,a2,a7
	beq	a2,a7,.L672
	lbu	a5,0(t5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a4,a5,a1
	sb	a4,0(t5)
	beq	t6,a2,.L672
	lbu	t1,1(t5)
	lbu	t0,1(a6)
	li	a7,2
	xor	t2,t0,t1
	sb	t2,1(t5)
	beq	t6,a7,.L672
	lbu	t3,2(t5)
	lbu	a3,2(a6)
	li	t4,3
	xor	a5,a3,t3
	sb	a5,2(t5)
	beq	t6,t4,.L672
	lbu	a1,3(t5)
	lbu	a4,3(a6)
	li	a2,4
	xor	t0,a4,a1
	sb	t0,3(t5)
	beq	t6,a2,.L672
	lbu	a7,4(t5)
	lbu	t1,4(a6)
	li	t2,5
	xor	a3,t1,a7
	sb	a3,4(t5)
	beq	t6,t2,.L672
	lbu	t4,5(t5)
	lbu	t3,5(a6)
	li	a5,6
	xor	a4,t3,t4
	sb	a4,5(t5)
	beq	t6,a5,.L672
	lbu	t6,6(t5)
	lbu	a6,6(a6)
	xor	a1,a6,t6
	sb	a1,6(t5)
	ret
.L673:
	add	t5,a1,a2
	mv	a2,a0
.L676:
	lbu	t1,0(a2)
	lbu	t0,0(a1)
	addi	a1,a1,1
	addi	a2,a2,1
	xor	a7,t0,t1
	sb	a7,-1(a2)
	bne	t5,a1,.L676
.L672:
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
	beq	a5,zero,.L690
	mv	t1,a0
.L685:
	lbu	a4,1(t1)
	addi	t1,t1,1
	bne	a4,zero,.L685
.L698:
	beq	a2,zero,.L687
.L700:
	lbu	t0,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t0,0(t1)
	beq	t0,zero,.L699
	addi	t1,t1,1
	bne	a2,zero,.L700
.L687:
	sb	zero,0(t1)
	ret
.L699:
	ret
.L690:
	mv	t1,a0
	j	.L698
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
	beq	a1,zero,.L701
.L702:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L704
.L701:
	ret
.L704:
	addi	a0,a0,1
	bne	a1,a0,.L702
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
	beq	a3,zero,.L715
.L721:
	mv	a5,a1
	j	.L714
.L713:
	beq	a4,a3,.L712
.L714:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L713
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L721
.L715:
	li	a0,0
.L712:
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
	li	a3,0
.L725:
	lbu	a4,0(a5)
	mv	a0,a3
	bne	a4,a1,.L724
	mv	a0,a5
.L724:
	addi	a5,a5,1
	mv	a3,a0
	bne	a4,zero,.L725
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
	beq	a7,zero,.L741
	mv	a5,a1
.L730:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L730
	sub	t3,a5,a1
	mv	a0,a3
	addi	t4,t3,-1
	bne	a5,a1,.L748
	ret
.L750:
	addi	a3,a3,1
	beq	t0,zero,.L749
.L748:
	lbu	t0,0(a3)
	bne	t0,a7,.L750
	add	t1,a3,t4
	mv	a0,a1
	mv	t2,a3
	mv	a2,a7
.L732:
	beq	t2,t1,.L734
	addi	t2,t2,1
	bne	t0,a2,.L735
	lbu	t0,0(t2)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	t0,zero,.L734
	mv	a0,a6
	bne	a2,zero,.L732
.L735:
	addi	a3,a3,1
	j	.L748
.L749:
	li	a0,0
	ret
.L734:
	bne	t0,a2,.L735
.L741:
	mv	a0,a3
.L728:
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
	flt.d	a5,fa0,fa5
	bne	a5,zero,.L764
	fgt.d	t0,fa0,fa5
	beq	t0,zero,.L755
	flt.d	t1,fa1,fa5
	bne	t1,zero,.L754
.L755:
	ret
.L754:
	fneg.d	fa0,fa0
	ret
.L764:
	fgt.d	t2,fa1,fa5
	bne	t2,zero,.L754
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
	beq	a3,zero,.L765
	bltu	a1,a3,.L776
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L776
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L771:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L781
	mv	a0,t1
.L767:
	bgeu	a7,a0,.L771
.L776:
	li	a0,0
.L765:
	ret
.L781:
	mv	t5,a2
	beq	a3,zero,.L765
.L770:
	mv	t2,t1
	add	t6,t1,a3
	j	.L768
.L769:
	beq	t2,t6,.L765
.L768:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L769
	bgtu	t1,a7,.L776
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L767
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L770
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
	beq	a2,zero,.L783
	call	memmove
.L783:
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
	flt.d	a5,fa0,fa5
	bne	a5,zero,.L815
	lui	t5,%hi(.LC15)
	fld	fa4,%lo(.LC15)(t5)
	li	t4,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L816
.L791:
	lui	t6,%hi(.LC10)
	fld	ft5,%lo(.LC10)(t6)
	fld	ft6,%lo(.LC15)(t5)
	li	a7,0
.L797:
	fmul.d	fa0,fa0,ft5
	addiw	a7,a7,1
	fge.d	a5,fa0,ft6
	bne	a5,zero,.L797
	sw	a7,0(a0)
	beq	t4,zero,.L788
.L818:
	fneg.d	fa0,fa0
.L788:
	ret
.L816:
	lui	t0,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t0)
	flt.d	t1,fa0,ft0
	beq	t1,zero,.L794
	feq.d	t2,fa0,fa5
	beq	t2,zero,.L803
.L794:
	sw	zero,0(a0)
	ret
.L815:
	lui	a1,%hi(.LC13)
	fld	ft2,%lo(.LC13)(a1)
	fneg.d	ft1,fa0
	fle.d	a2,fa0,ft2
	beq	a2,zero,.L817
	fmv.d	fa0,ft1
	li	t4,1
	lui	t5,%hi(.LC15)
	j	.L791
.L817:
	lui	a3,%hi(.LC14)
	fld	ft3,%lo(.LC14)(a3)
	fgt.d	a6,fa0,ft3
	beq	a6,zero,.L794
	li	t4,1
	lui	t0,%hi(.LC10)
.L792:
	fmv.d	fa0,ft1
	fld	ft4,%lo(.LC10)(t0)
	li	a7,0
.L799:
	fadd.d	fa0,fa0,fa0
	addiw	a7,a7,-1
	flt.d	t3,fa0,ft4
	bne	t3,zero,.L799
	sw	a7,0(a0)
	bne	t4,zero,.L818
	ret
.L803:
	fmv.d	ft1,fa0
	j	.L792
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
	beq	a4,zero,.L822
.L821:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L821
	ret
.L822:
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
	mv	a5,a0
	li	t2,1
	li	a0,32
	bltu	a1,a5,.L825
	j	.L853
.L829:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L827
	beq	a0,zero,.L828
.L825:
	addiw	a0,a0,-1
	bge	a1,zero,.L829
.L830:
	li	a0,0
.L835:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L832
	mv	a5,a7
.L832:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L834
	mv	t0,t2
.L834:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L835
.L828:
	bne	a2,zero,.L854
.L851:
	ret
.L827:
	bne	t2,zero,.L830
	li	a0,0
	beq	a2,zero,.L851
.L854:
	mv	a0,a5
	ret
.L853:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L838
	mv	a5,a1
.L838:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L828
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	beq	a0,zero,.L857
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
.L857:
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
	beq	a5,a4,.L864
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
.L864:
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
	beq	a4,zero,.L872
.L871:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L871
	ret
.L872:
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
	bltu	a0,a1,.L878
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L909
.L878:
	beq	a6,zero,.L910
	slli	t6,a6,3
	add	a6,t6,a1
	mv	a5,a1
	mv	t2,a0
.L881:
	ld	t0,0(a5)
	addi	a5,a5,8
	addi	t2,t2,8
	sd	t0,-8(t2)
	bne	a5,a6,.L881
	bleu	a2,t1,.L874
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	t3,7
	srli	t4,a3,32
	bleu	a4,t3,.L883
	addi	t5,t4,1
	add	t6,a1,t5
	add	a4,a0,t4
	sub	a6,a4,t6
	sltiu	t0,a6,7
	add	a5,a1,t4
	bne	t0,zero,.L883
	or	t2,a5,a4
	andi	t3,t2,7
	bne	t3,zero,.L883
	srliw	a3,a7,3
	slli	t4,a3,3
	add	t5,a5,t4
.L884:
	ld	t6,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	t6,-8(a4)
	bne	a5,t5,.L884
	andi	a6,a7,-8
	andi	a7,a7,7
	addw	t1,a6,t1
	beq	a7,zero,.L874
	slli	t0,t1,32
	srli	t2,t0,32
	add	a3,a1,t2
	lbu	t4,0(a3)
	add	t5,a0,t2
	addiw	t3,t1,1
	sb	t4,0(t5)
	bleu	a2,t3,.L874
	slli	t6,t3,32
	srli	a5,t6,32
	add	a4,a1,a5
	lbu	a6,0(a4)
	add	t0,a0,a5
	addiw	a7,t1,2
	sb	a6,0(t0)
	bleu	a2,a7,.L874
	slli	t2,a7,32
	srli	t3,t2,32
	add	a3,a1,t3
	lbu	t5,0(a3)
	add	t6,a0,t3
	addiw	t4,t1,3
	sb	t5,0(t6)
	bleu	a2,t4,.L874
	slli	a5,t4,32
	srli	a7,a5,32
	add	a4,a1,a7
	lbu	a6,0(a4)
	add	t2,a0,a7
	addiw	t0,t1,4
	sb	a6,0(t2)
	bleu	a2,t0,.L874
	slli	t3,t0,32
	srli	t4,t3,32
	add	a3,a1,t4
	lbu	t6,0(a3)
	add	a5,a0,t4
	addiw	t5,t1,5
	sb	t6,0(a5)
	bleu	a2,t5,.L874
	slli	a7,t5,32
	srli	t0,a7,32
	add	a4,a1,t0
	lbu	a6,0(a4)
	add	t2,a0,t0
	addiw	t1,t1,6
	sb	a6,0(t2)
	bleu	a2,t1,.L874
	slli	a2,t1,32
	srli	t3,a2,32
	add	a1,a1,t3
	lbu	t4,0(a1)
	add	a0,a0,t3
	sb	t4,0(a0)
	ret
.L909:
	addiw	a3,a2,-1
	beq	a2,zero,.L911
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t4,a1,a4
.L888:
	lbu	a7,0(t4)
	mv	t3,t4
	addi	a0,a0,-1
	sb	a7,1(a0)
	addi	t4,t4,-1
	bne	a1,t3,.L888
.L874:
	ret
.L910:
	slli	t5,t1,32
	srli	t4,t5,32
	beq	a2,zero,.L912
.L883:
	mv	a5,t4
.L886:
	add	t5,a1,a5
	lbu	a3,0(t5)
	add	t6,a0,a5
	addi	a5,a5,1
	sb	a3,0(t6)
	sext.w	a7,a5
	bltu	a7,a2,.L886
	ret
.L912:
	ret
.L911:
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
	bltu	a0,a1,.L917
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L939
.L917:
	beq	t1,zero,.L916
	addiw	t4,t1,-1
	li	t5,6
	bleu	t4,t5,.L920
	or	t6,a1,a0
	andi	a5,t6,7
	bne	a5,zero,.L920
	addi	t0,a1,2
	sub	t2,a0,t0
	sltiu	a3,t2,5
	bne	a3,zero,.L920
	srliw	a7,a2,3
	slli	a4,a7,3
	add	a6,a4,a1
	mv	t4,a1
	mv	t5,a0
.L921:
	ld	t3,0(t4)
	addi	t4,t4,8
	addi	t5,t5,8
	sd	t3,-8(t5)
	bne	t4,a6,.L921
	slliw	t6,a7,2
	beq	t1,t6,.L916
	slli	a5,t6,1
	add	t0,a1,a5
	lh	t2,0(t0)
	add	a3,a0,a5
	addiw	a7,t6,1
	sh	t2,0(a3)
	bleu	t1,a7,.L916
	slli	a4,a7,32
	srli	a6,a4,31
	add	t3,a1,a6
	lh	t4,0(t3)
	add	t5,a0,a6
	addiw	t6,t6,2
	sh	t4,0(t5)
	bleu	t1,t6,.L916
	slli	t1,t6,32
	srli	a5,t1,31
	add	t0,a1,a5
	lh	t2,0(t0)
	add	a3,a0,a5
	sh	t2,0(a3)
.L916:
	andi	t5,a2,1
	beq	t5,zero,.L913
.L941:
	addiw	a2,a2,-1
	slli	t6,a2,32
	srli	t1,t6,32
	add	a1,a1,t1
	lbu	a5,0(a1)
	add	a0,a0,t1
	sb	a5,0(a0)
	ret
.L939:
	addiw	a3,a2,-1
	beq	a2,zero,.L940
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t3,a1,a4
.L926:
	lbu	a6,0(t3)
	mv	a7,t3
	addi	a0,a0,-1
	sb	a6,1(a0)
	addi	t3,t3,-1
	bne	a1,a7,.L926
.L913:
	ret
.L920:
	slli	a7,t1,1
	add	a6,a7,a1
	mv	t4,a1
	mv	a4,a0
.L923:
	lh	t3,0(t4)
	addi	t4,t4,2
	addi	a4,a4,2
	sh	t3,-2(a4)
	bne	t4,a6,.L923
	andi	t5,a2,1
	beq	t5,zero,.L913
	j	.L941
.L940:
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
	bltu	a0,a1,.L947
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L982
.L947:
	beq	t3,zero,.L983
	addiw	t6,t3,-1
	li	a5,8
	bleu	t6,a5,.L949
	or	t0,a0,a1
	andi	t2,t0,7
	bne	t2,zero,.L949
	addi	a3,a1,4
	beq	a0,a3,.L949
	srliw	a7,a2,3
	slli	a4,a7,3
	add	a6,a4,a1
	mv	t5,a1
	mv	t6,a0
.L950:
	ld	t4,0(t5)
	addi	t5,t5,8
	addi	t6,t6,8
	sd	t4,-8(t6)
	bne	t5,a6,.L950
	slliw	a5,a7,1
	beq	t3,a5,.L953
	slli	t3,a5,2
	add	t0,a1,t3
	lw	t2,0(t0)
	add	a3,a0,t3
	sw	t2,0(a3)
.L953:
	bleu	a2,t1,.L942
	subw	t6,a2,t1
	slli	t0,t1,32
	addiw	t3,t6,-1
	li	a5,7
	srli	t2,t0,32
	bleu	t3,a5,.L945
	addi	a3,t2,1
	add	a7,a1,a3
	add	a4,a0,t2
	sub	a6,a4,a7
	sltiu	t4,a6,7
	add	a5,a1,t2
	bne	t4,zero,.L945
	or	t5,a5,a4
	andi	t3,t5,7
	bne	t3,zero,.L945
	srliw	t0,t6,3
	slli	t2,t0,3
	add	a7,a5,t2
.L954:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a7,.L954
	andi	a6,t6,-8
	andi	t6,t6,7
	addw	t1,a6,t1
	beq	t6,zero,.L942
	slli	t4,t1,32
	srli	t5,t4,32
	add	t0,a1,t5
	lbu	t2,0(t0)
	add	a7,a0,t5
	addiw	t3,t1,1
	sb	t2,0(a7)
	bleu	a2,t3,.L942
	slli	a3,t3,32
	srli	a5,a3,32
	add	a4,a1,a5
	lbu	a6,0(a4)
	add	t4,a0,a5
	addiw	t6,t1,2
	sb	a6,0(t4)
	bleu	a2,t6,.L942
	slli	t5,t6,32
	srli	t3,t5,32
	add	t2,a1,t3
	lbu	a7,0(t2)
	add	a3,a0,t3
	addiw	t0,t1,3
	sb	a7,0(a3)
	bleu	a2,t0,.L942
	slli	a5,t0,32
	srli	t6,a5,32
	add	a4,a1,t6
	lbu	a6,0(a4)
	add	t5,a0,t6
	addiw	t4,t1,4
	sb	a6,0(t5)
	bleu	a2,t4,.L942
	slli	t3,t4,32
	srli	t0,t3,32
	add	a7,a1,t0
	lbu	a5,0(a7)
	add	a3,a0,t0
	addiw	t2,t1,5
	sb	a5,0(a3)
	bleu	a2,t2,.L942
	slli	t6,t2,32
	srli	t4,t6,32
	add	a4,a1,t4
	lbu	a6,0(a4)
	add	t5,a0,t4
	addiw	t1,t1,6
	sb	a6,0(t5)
	bleu	a2,t1,.L942
	slli	a2,t1,32
	srli	t3,a2,32
	add	a1,a1,t3
	lbu	t0,0(a1)
	add	a0,a0,t3
	sb	t0,0(a0)
	ret
.L982:
	addiw	a3,a2,-1
	beq	a2,zero,.L984
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t4,a1,a4
.L958:
	lbu	a6,0(t4)
	mv	a7,t4
	addi	a0,a0,-1
	sb	a6,1(a0)
	addi	t4,t4,-1
	bne	a1,a7,.L958
.L942:
	ret
.L949:
	slli	a7,t3,2
	add	a6,a7,a1
	mv	t5,a1
	mv	a4,a0
.L952:
	lw	t4,0(t5)
	addi	t5,t5,4
	addi	a4,a4,4
	sw	t4,-4(a4)
	bne	t5,a6,.L952
	j	.L953
.L983:
	slli	t5,t1,32
	srli	t2,t5,32
	beq	a2,zero,.L985
.L945:
	mv	a5,t2
.L956:
	add	t2,a1,a5
	lbu	a7,0(t2)
	add	a3,a0,a5
	addi	a5,a5,1
	sb	a7,0(a3)
	sext.w	t6,a5
	bgtu	a2,t6,.L956
	ret
.L985:
	ret
.L984:
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
	bne	a3,zero,.L995
	sraiw	a0,a5,14
	bne	a0,zero,.L994
	sraiw	t0,a5,13
	bne	t0,zero,.L996
	sraiw	t1,a5,12
	bne	t1,zero,.L997
	sraiw	t2,a5,11
	bne	t2,zero,.L998
	sraiw	a0,a5,10
	bne	a0,zero,.L999
	sraiw	a1,a5,9
	bne	a1,zero,.L1000
	sraiw	a2,a5,8
	bne	a2,zero,.L1001
	sraiw	a6,a5,7
	bne	a6,zero,.L1002
	sraiw	a7,a5,6
	bne	a7,zero,.L1003
	sraiw	t3,a5,5
	bne	t3,zero,.L1004
	sraiw	t4,a5,4
	bne	t4,zero,.L1005
	sraiw	t5,a5,3
	bne	t5,zero,.L1006
	sraiw	t6,a5,2
	bne	t6,zero,.L1007
	sraiw	a3,a5,1
	bne	a3,zero,.L1008
	seqz	a4,a4
	addi	a0,a4,15
	ret
.L1008:
	li	a0,14
.L994:
	ret
.L995:
	li	a0,0
	ret
.L1006:
	li	a0,12
	ret
.L996:
	li	a0,2
	ret
.L997:
	li	a0,3
	ret
.L998:
	li	a0,4
	ret
.L999:
	li	a0,5
	ret
.L1000:
	li	a0,6
	ret
.L1001:
	li	a0,7
	ret
.L1002:
	li	a0,8
	ret
.L1003:
	li	a0,9
	ret
.L1004:
	li	a0,10
	ret
.L1005:
	li	a0,11
	ret
.L1007:
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
	bne	a5,zero,.L1013
	andi	t0,a0,2
	bne	t0,zero,.L1014
	andi	t1,a0,4
	bne	t1,zero,.L1015
	andi	t2,a0,8
	bne	t2,zero,.L1016
	andi	a1,a0,16
	bne	a1,zero,.L1017
	andi	a2,a0,32
	bne	a2,zero,.L1018
	andi	a3,a0,64
	bne	a3,zero,.L1019
	andi	a4,a0,128
	bne	a4,zero,.L1020
	andi	a6,a0,256
	bne	a6,zero,.L1021
	andi	a7,a0,512
	bne	a7,zero,.L1022
	andi	t3,a0,1024
	bne	t3,zero,.L1023
	slli	t5,a0,52
	li	t4,4096
	blt	t5,zero,.L1024
	and	t6,a0,t4
	bne	t6,zero,.L1025
	slli	a5,a0,50
	blt	a5,zero,.L1026
	slli	t0,a0,49
	blt	t0,zero,.L1027
	sraiw	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L1013:
	li	a0,0
	ret
.L1014:
	li	a0,1
	ret
.L1025:
	li	a0,12
	ret
.L1015:
	li	a0,2
	ret
.L1016:
	li	a0,3
	ret
.L1017:
	li	a0,4
	ret
.L1018:
	li	a0,5
	ret
.L1019:
	li	a0,6
	ret
.L1020:
	li	a0,7
	ret
.L1021:
	li	a0,8
	ret
.L1022:
	li	a0,9
	ret
.L1023:
	li	a0,10
	ret
.L1024:
	li	a0,11
	ret
.L1026:
	li	a0,13
	ret
.L1027:
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
	lui	a5,%hi(.LC16)
	flw	fa5,%lo(.LC16)(a5)
	fge.s	t0,fa0,fa5
	bne	t0,zero,.L1036
	fcvt.l.s a0,fa0,rtz
	ret
.L1036:
	fsub.s	fa0,fa0,fa5
	li	t1,32768
	fcvt.l.s a0,fa0,rtz
	add	a0,a0,t1
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
	andi	t0,a3,1
	andi	a5,a0,1
	srli	a4,a0,2
	addw	t1,a5,t0
	andi	t2,a4,1
	srli	a1,a0,3
	addw	a2,t1,t2
	andi	a6,a1,1
	srli	a7,a0,4
	addw	t3,a2,a6
	andi	t4,a7,1
	srli	t5,a0,5
	addw	t6,t3,t4
	andi	a3,t5,1
	srli	t0,a0,6
	addw	a5,t6,a3
	andi	a4,t0,1
	srli	t1,a0,7
	addw	t2,a5,a4
	andi	a1,t1,1
	srli	a2,a0,8
	addw	a6,t2,a1
	andi	a7,a2,1
	srli	t3,a0,9
	addw	t4,a6,a7
	andi	t5,t3,1
	srli	t6,a0,10
	addw	t0,t4,t5
	andi	a5,t6,1
	srli	a3,a0,11
	addw	t1,t0,a5
	srli	a4,a0,12
	andi	t2,a3,1
	srli	a6,a0,13
	addw	a1,t1,t2
	andi	a2,a4,1
	srli	t4,a0,14
	addw	a7,a1,a2
	andi	t3,a6,1
	addw	t5,a7,t3
	andi	t6,t4,1
	addw	t0,t5,t6
	srli	a0,a0,15
	addw	a5,a0,t0
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
	srli	a3,a0,1
	andi	t0,a3,1
	andi	a5,a0,1
	srli	a4,a0,2
	addw	t1,a5,t0
	andi	t2,a4,1
	srli	a1,a0,3
	addw	a2,t1,t2
	andi	a6,a1,1
	srli	a7,a0,4
	addw	t3,a2,a6
	andi	t4,a7,1
	srli	t5,a0,5
	addw	t6,t3,t4
	andi	a3,t5,1
	srli	t0,a0,6
	addw	a5,t6,a3
	andi	a4,t0,1
	srli	t1,a0,7
	addw	t2,a5,a4
	andi	a1,t1,1
	srli	a2,a0,8
	addw	a6,t2,a1
	andi	a7,a2,1
	srli	t3,a0,9
	addw	t4,a6,a7
	andi	t5,t3,1
	srli	t6,a0,10
	addw	t0,t4,t5
	andi	a5,t6,1
	srli	a3,a0,11
	addw	t1,t0,a5
	srli	a4,a0,12
	andi	t2,a3,1
	srli	a6,a0,13
	addw	a1,t1,t2
	andi	a2,a4,1
	srli	t4,a0,14
	addw	a7,a1,a2
	andi	t3,a6,1
	addw	t5,a7,t3
	andi	t6,t4,1
	addw	t0,t5,t6
	srli	a0,a0,15
	addw	a0,a0,t0
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
	beq	a4,zero,.L1042
.L1041:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L1041
	ret
.L1042:
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
	beq	a4,zero,.L1047
	beq	a1,zero,.L1048
.L1046:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a4,t0
	srliw	a1,a1,1
	addw	a0,t1,a0
	slliw	a4,a4,1
	bne	a1,zero,.L1046
	ret
.L1047:
	ret
.L1048:
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
	mv	a5,a0
	li	t2,1
	li	a0,32
	bltu	a1,a5,.L1051
	j	.L1079
.L1055:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L1053
	beq	a0,zero,.L1054
.L1051:
	addiw	a0,a0,-1
	bge	a1,zero,.L1055
.L1056:
	li	a0,0
.L1061:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L1058
	mv	a5,a7
.L1058:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L1060
	mv	t0,t2
.L1060:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L1061
.L1054:
	bne	a2,zero,.L1080
.L1077:
	ret
.L1053:
	bne	t2,zero,.L1056
	li	a0,0
	beq	a2,zero,.L1077
.L1080:
	mv	a0,a5
	ret
.L1079:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L1064
	mv	a5,a1
.L1064:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L1054
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
	bne	a5,zero,.L1082
	fgt.s	a0,fa0,fa1
.L1082:
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
	bne	a5,zero,.L1086
	fgt.d	a0,fa0,fa1
.L1086:
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
	blt	a1,zero,.L1105
	beq	a1,zero,.L1097
	li	a2,0
.L1093:
	li	t2,32
	li	a0,0
	j	.L1096
.L1106:
	beq	t2,zero,.L1095
.L1096:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a3,t0
	addiw	a4,t2,-1
	sraiw	a1,a1,1
	andi	t2,a4,0xff
	addw	a0,t1,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1106
.L1095:
	beq	a2,zero,.L1094
	negw	a0,a0
	ret
.L1097:
	li	a0,0
.L1094:
	ret
.L1105:
	negw	a1,a1
	li	a2,1
	j	.L1093
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
	li	a7,0
	blt	a0,zero,.L1137
.L1108:
	bge	a1,zero,.L1109
	neg	a1,a1
	mv	a7,a5
.L1109:
	sext.w	t2,a0
	sext.w	a1,a1
	li	a3,32
	li	a4,1
	bgtu	t2,a1,.L1110
	j	.L1136
.L1114:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	t2,a1,.L1112
	beq	a3,zero,.L1126
.L1110:
	addiw	a3,a3,-1
	bge	a1,zero,.L1114
.L1115:
	li	a0,0
.L1120:
	sltu	t1,t2,a1
	xori	a2,t1,1
	subw	a6,t2,a1
	bne	t1,zero,.L1117
	mv	t2,a6
.L1117:
	sext.w	t2,t2
	li	t3,0
	beq	a2,zero,.L1119
	mv	t3,a4
.L1119:
	or	t4,a0,t3
	srliw	a4,a4,1
	sext.w	a0,t4
	srliw	a1,a1,1
	bne	a4,zero,.L1120
.L1122:
	slli	t5,a0,32
	srli	a0,t5,32
.L1113:
	beq	a7,zero,.L1107
	neg	a0,a0
	ret
.L1107:
	ret
.L1112:
	bne	a4,zero,.L1115
.L1126:
	li	a0,0
	j	.L1113
.L1137:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1108
.L1136:
	sltu	t0,t2,a1
	xori	a0,t0,1
	j	.L1122
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	li	a6,0
	bge	a0,zero,.L1139
	neg	a0,a0
	li	a6,1
.L1139:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a7,a1,a5
	li	t0,32
	li	t1,1
	bgtu	a0,a7,.L1140
	j	.L1170
.L1144:
	slliw	a7,a7,1
	slliw	t1,t1,1
	bleu	a0,a7,.L1171
	beq	t0,zero,.L1143
.L1140:
	addiw	t0,t0,-1
	bge	a7,zero,.L1144
	j	.L1168
.L1171:
	beq	t1,zero,.L1143
.L1168:
	srliw	t1,t1,1
	subw	a2,a0,a7
	mv	t2,a0
	bltu	a0,a7,.L1147
	mv	t2,a2
.L1147:
	sext.w	a0,t2
	srliw	a7,a7,1
	bne	t1,zero,.L1168
.L1143:
	slli	t3,a0,32
	srli	a0,t3,32
	beq	a6,zero,.L1138
	neg	a0,a0
	ret
.L1138:
	ret
.L1170:
	subw	a3,a0,a7
	mv	a4,a0
	bltu	a0,a7,.L1151
	mv	a4,a3
.L1151:
	sext.w	a0,a4
	j	.L1143
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mv	a3,a0
	sext.w	a5,a1
	sext.w	a7,a0
	bgeu	a1,a0,.L1356
	slliw	a4,a1,16
	sraiw	a6,a4,16
	slli	t3,a6,32
	blt	t3,zero,.L1177
	slliw	t6,a1,1
	slli	a5,t6,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1250
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1250
	slliw	a0,a1,2
	slli	a4,a0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1252
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1252
	slliw	t5,a1,3
	slli	t6,t5,48
	srli	a5,t6,48
	sext.w	a4,a5
	bleu	a7,a5,.L1254
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1254
	slliw	a5,a1,4
	slli	a0,a5,48
	srli	a5,a0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1256
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1256
	slliw	a4,a1,5
	slli	t5,a4,48
	srli	a5,t5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1258
	slliw	t6,a5,16
	sraiw	t0,t6,16
	slli	t1,t0,32
	blt	t1,zero,.L1258
	slliw	t2,a1,6
	slli	a5,t2,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1260
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1260
	slliw	t4,a1,7
	slli	a4,t4,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1262
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1262
	slliw	t1,a1,8
	slli	t2,t1,48
	srli	a5,t2,48
	sext.w	a4,a5
	bleu	a7,a5,.L1264
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1264
	slliw	a5,a1,9
	slli	t4,a5,48
	srli	a5,t4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1266
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1266
	slliw	a4,a1,10
	slli	t1,a4,48
	srli	a5,t1,48
	sext.w	a4,a5
	bleu	a7,a5,.L1268
	slliw	t2,a5,16
	sraiw	a0,t2,16
	slli	a6,a0,32
	blt	a6,zero,.L1268
	slliw	t3,a1,11
	slli	a5,t3,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1270
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1270
	slliw	t0,a1,12
	slli	a4,t0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1272
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1272
	slliw	a6,a1,13
	slli	t3,a6,48
	srli	a5,t3,48
	sext.w	a4,a5
	bleu	a7,a5,.L1274
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1274
	slliw	a5,a1,14
	slli	t0,a5,48
	srli	a5,t0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1276
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1276
	slliw	a1,a1,15
	slli	t3,a1,48
	srli	t5,t3,48
	bleu	a7,t5,.L1277
	li	a6,32768
	mv	a0,a3
	mv	a5,a6
	mv	a4,a6
	bne	t5,zero,.L1179
.L1180:
	bne	a2,zero,.L1279
.L1369:
	mv	a0,t5
	ret
.L1250:
	li	a6,2
.L1179:
	subw	t4,a3,a5
	slli	t5,t4,48
	srli	t6,t5,48
	bltu	a7,a4,.L1246
	mv	a3,t6
.L1246:
	slli	t0,a3,48
	srli	t2,t0,48
	li	t1,0
	bltu	a7,a4,.L1248
	mv	t1,a6
.L1248:
	srli	a4,a5,1
	subw	a0,t2,a4
	slli	t3,a0,48
	slli	a7,t1,48
	srli	a1,a7,48
	srli	t4,a6,1
	srli	t5,t3,48
	sext.w	t6,t2
	sext.w	a3,a4
	mv	a0,t2
	bltu	t2,a4,.L1182
	mv	a0,t5
.L1182:
	slli	t0,a0,48
	srli	a0,t0,48
	li	t2,0
	bltu	t6,a3,.L1184
	mv	t2,t4
.L1184:
	or	t1,a1,t2
	slli	a1,t1,48
	srli	a7,a6,2
	srli	t5,a1,48
	srli	t4,a5,2
	beq	a7,zero,.L1180
	sext.w	a4,a0
	sext.w	t3,t4
	subw	a3,a0,t4
	sltu	t6,a4,t3
	slli	t0,a3,48
	srli	t2,t0,48
	xori	t1,t6,1
	bne	t6,zero,.L1186
	mv	a0,t2
.L1186:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1188
	mv	a1,a7
.L1188:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,3
	srli	t5,t4,48
	srli	a4,a5,3
	beq	a7,zero,.L1180
	sext.w	t3,a0
	sext.w	t6,a4
	subw	t0,a0,a4
	sltu	a3,t3,t6
	slli	t2,t0,48
	srli	a1,t2,48
	xori	t1,a3,1
	bne	a3,zero,.L1190
	mv	a0,a1
.L1190:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1192
	mv	t4,a7
.L1192:
	or	t5,t5,t4
	slli	a4,t5,48
	srli	a7,a6,4
	srli	t5,a4,48
	srli	t3,a5,4
	beq	a7,zero,.L1180
	sext.w	t6,a0
	sext.w	a3,t3
	subw	t2,a0,t3
	sltu	t0,t6,a3
	slli	a1,t2,48
	srli	t4,a1,48
	xori	t1,t0,1
	bne	t0,zero,.L1194
	mv	a0,t4
.L1194:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a4,0
	beq	t1,zero,.L1196
	mv	a4,a7
.L1196:
	or	t5,t5,a4
	slli	t3,t5,48
	srli	a7,a6,5
	srli	t5,t3,48
	srli	t6,a5,5
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t0,t6
	subw	a1,a0,t6
	sltu	t2,a3,t0
	slli	t4,a1,48
	srli	a4,t4,48
	xori	t1,t2,1
	bne	t2,zero,.L1198
	mv	a0,a4
.L1198:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1200
	mv	t3,a7
.L1200:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,6
	srli	t5,t6,48
	srli	t0,a5,6
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t2,t0
	subw	t4,a0,t0
	sltu	a1,a3,t2
	slli	a4,t4,48
	srli	t3,a4,48
	xori	t1,a1,1
	bne	a1,zero,.L1202
	mv	a0,t3
.L1202:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1204
	mv	t6,a7
.L1204:
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,7
	srli	t5,t0,48
	srli	t2,a5,7
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	a1,t2
	subw	a4,a0,t2
	sltu	t4,a3,a1
	slli	t3,a4,48
	srli	t6,t3,48
	xori	t1,t4,1
	beq	t4,zero,.L1357
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	bne	t1,zero,.L1358
.L1208:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,8
	srli	t5,t2,48
	srli	a1,a5,8
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t4,a1
	subw	a4,a0,a1
	sltu	t3,a3,t4
	slli	t6,a4,48
	srli	t0,t6,48
	xori	t1,t3,1
	beq	t3,zero,.L1359
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	bne	t1,zero,.L1360
.L1212:
	or	t5,t5,t2
	slli	a1,t5,48
	srli	a7,a6,9
	srli	t5,a1,48
	srli	t4,a5,9
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t3,t4
	subw	a4,a0,t4
	sltu	t6,a3,t3
	slli	t0,a4,48
	srli	t2,t0,48
	xori	t1,t6,1
	beq	t6,zero,.L1361
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	bne	t1,zero,.L1362
.L1216:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,10
	srli	t5,t4,48
	srli	t3,a5,10
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t6,t3
	subw	a4,a0,t3
	sltu	t0,a3,t6
	slli	t2,a4,48
	srli	a1,t2,48
	xori	t1,t0,1
	beq	t0,zero,.L1363
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	bne	t1,zero,.L1364
.L1220:
	or	t5,t5,t4
	slli	t3,t5,48
	srli	a7,a6,11
	srli	t5,t3,48
	srli	t6,a5,11
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t0,t6
	subw	a4,a0,t6
	sltu	t2,a3,t0
	slli	a1,a4,48
	srli	t4,a1,48
	xori	t1,t2,1
	beq	t2,zero,.L1365
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	bne	t1,zero,.L1366
.L1224:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,12
	srli	t5,t6,48
	srli	t0,a5,12
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t2,t0
	subw	a4,a0,t0
	sltu	a1,a3,t2
	slli	t4,a4,48
	srli	t3,t4,48
	xori	t1,a1,1
	beq	a1,zero,.L1367
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	bne	t1,zero,.L1368
.L1228:
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	beq	a7,zero,.L1180
.L1370:
	sext.w	a3,a0
	sext.w	a1,t2
	subw	a4,a0,t2
	sltu	t4,a3,a1
	slli	t3,a4,48
	srli	t6,t3,48
	xori	t1,t4,1
	bne	t4,zero,.L1230
	mv	a0,t6
.L1230:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1232
	mv	t0,a7
.L1232:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,14
	srli	t5,t2,48
	srli	a1,a5,14
	beq	a7,zero,.L1180
	sext.w	a3,a0
	sext.w	t4,a1
	subw	a4,a0,a1
	sltu	t3,a3,t4
	slli	t6,a4,48
	srli	t0,t6,48
	xori	t1,t3,1
	bne	t3,zero,.L1234
	mv	a0,t0
.L1234:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1236
	mv	t2,a7
.L1236:
	or	t5,t5,t2
	slli	a1,t5,48
	li	a7,16384
	srli	t5,a1,48
	srli	a5,a5,15
	beq	a6,a7,.L1180
	sext.w	a6,a0
	sext.w	a3,a5
	subw	t3,a0,a5
	sltu	t4,a6,a3
	slli	a4,t3,48
	srli	t6,a4,48
	xori	t0,t4,1
	bne	t4,zero,.L1238
	mv	a0,t6
.L1238:
	slli	t1,a0,48
	srli	a0,t1,48
	or	t5,t0,t5
	beq	a2,zero,.L1369
.L1279:
	ret
.L1358:
	mv	t0,a7
	j	.L1208
.L1357:
	mv	a0,t6
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1208
	j	.L1358
.L1360:
	mv	t2,a7
	j	.L1212
.L1359:
	mv	a0,t0
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1212
	j	.L1360
.L1362:
	mv	a1,a7
	j	.L1216
.L1361:
	mv	a0,t2
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1216
	j	.L1362
.L1364:
	mv	t4,a7
	j	.L1220
.L1363:
	mv	a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1220
	j	.L1364
.L1366:
	mv	t3,a7
	j	.L1224
.L1365:
	mv	a0,t4
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1224
	j	.L1366
.L1368:
	mv	t6,a7
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	bne	a7,zero,.L1370
	j	.L1180
.L1367:
	mv	a0,t3
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1228
	j	.L1368
.L1252:
	li	a6,4
	j	.L1179
.L1254:
	li	a6,8
	j	.L1179
.L1256:
	li	a6,16
	j	.L1179
.L1266:
	li	a6,512
	j	.L1179
.L1258:
	li	a6,32
	j	.L1179
.L1260:
	li	a6,64
	j	.L1179
.L1262:
	li	a6,128
	j	.L1179
.L1264:
	li	a6,256
	j	.L1179
.L1356:
	subw	a1,a0,a1
	slli	t0,a1,48
	srli	t1,t0,48
	bne	a5,a7,.L1175
	mv	a3,t1
.L1175:
	sub	t2,a5,a7
	slli	a0,a3,48
	seqz	t5,t2
	srli	a0,a0,48
	j	.L1180
.L1268:
	li	a6,1024
	j	.L1179
.L1270:
	li	a1,4096
	addi	a6,a1,-2048
	j	.L1179
.L1272:
	li	a6,4096
	j	.L1179
.L1274:
	li	a6,8192
	j	.L1179
.L1276:
	li	a6,16384
	j	.L1179
.L1277:
	li	a5,32768
	mv	a6,a5
	mv	a4,a5
	j	.L1179
.L1177:
	subw	a3,a0,a1
	slli	t4,a3,48
	srli	a0,t4,48
	li	t5,1
	j	.L1180
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
	mv	a5,a0
	slli	t0,a6,31
	li	a3,64
	li	t4,1
	bltu	a1,a0,.L1372
	j	.L1401
.L1376:
	slli	a1,a1,1
	slli	t4,t4,1
	bleu	a5,a1,.L1374
	beq	a3,zero,.L1375
.L1372:
	and	a0,a1,t0
	addiw	a3,a3,-1
	beq	a0,zero,.L1376
.L1377:
	li	a0,0
.L1382:
	sltu	t1,a5,a1
	xori	t2,t1,1
	neg	a7,t2
	and	t3,t4,a7
	sub	t5,a5,a1
	srli	t4,t4,1
	bne	t1,zero,.L1379
	mv	a5,t5
.L1379:
	or	a0,a0,t3
	srli	a1,a1,1
	bne	t4,zero,.L1382
.L1375:
	bne	a2,zero,.L1403
.L1371:
	ret
.L1374:
	bne	t4,zero,.L1377
	beq	a2,zero,.L1371
.L1403:
	mv	a0,a5
	ret
.L1401:
	sgtu	a4,a1,a0
	sub	a1,a0,a1
	xori	a0,a4,1
	bne	a4,zero,.L1375
	mv	a5,a1
	j	.L1375
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
	mv	a4,a0
	beq	a5,zero,.L1405
	addiw	a6,a1,-32
	sllw	a2,a0,a6
	li	a1,0
.L1406:
	slli	a7,a1,32
	srli	t3,a7,32
	slli	t4,a2,32
	or	a0,t3,t4
.L1404:
	ret
.L1405:
	beq	a1,zero,.L1404
	li	t0,32
	subw	t1,t0,a1
	srai	a3,a0,32
	srlw	t2,a0,t1
	sllw	a0,a3,a1
	or	a2,t2,a0
	sllw	a1,a4,a1
	j	.L1406
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
	beq	a5,zero,.L1411
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1411:
	beq	a2,zero,.L1413
	li	t0,64
	subw	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1413:
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
	beq	a4,zero,.L1416
	srai	a6,a0,32
	addiw	a7,a1,-32
	sraw	a1,a6,a7
	sraiw	a3,a6,31
.L1417:
	slli	t3,a1,32
	srli	t4,t3,32
	slli	t5,a3,32
	or	a0,t5,t4
.L1415:
	ret
.L1416:
	beq	a1,zero,.L1415
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	sllw	t2,a0,t1
	srlw	a2,a5,a1
	sraw	a3,a0,a1
	or	a1,t2,a2
	j	.L1417
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
	beq	a5,zero,.L1422
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1422:
	beq	a2,zero,.L1424
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1424:
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
	srli	a5,a0,56
	slli	a2,a0,56
	srli	a4,a0,40
	addi	t0,a3,-256
	or	t1,a5,a2
	and	t2,a4,t0
	srli	a1,a0,24
	li	a6,16711680
	li	a7,255
	or	t3,t1,t2
	and	t4,a1,a6
	srli	t5,a0,8
	slli	t6,a7,24
	li	a2,255
	or	a5,t3,t4
	and	a3,t5,t6
	slli	t0,a0,8
	slli	a4,a2,32
	li	t1,255
	or	t2,a5,a3
	slli	a6,a0,24
	and	a1,t0,a4
	slli	a7,t1,40
	li	t3,255
	or	t4,t2,a1
	slli	a0,a0,40
	and	t5,a6,a7
	slli	t6,t3,48
	or	a2,t4,t5
	and	a5,a0,t6
	or	a0,a2,a5
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
	srliw	a5,a0,24
	slliw	a2,a0,24
	srliw	a4,a0,8
	addi	t0,a3,-256
	or	t1,a5,a2
	slliw	a0,a0,8
	and	t2,a4,t0
	li	a1,16711680
	or	a6,t1,t2
	and	a7,a0,a1
	or	a0,a6,a7
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
	addi	t0,a3,-1
	sgtu	t1,a0,t0
	seqz	t2,t1
	slliw	a7,t2,4
	li	a5,16
	subw	a1,a5,a7
	li	a4,65536
	srlw	a0,a0,a1
	addi	a2,a4,-256
	and	a6,a0,a2
	seqz	t3,a6
	slliw	t4,t3,3
	li	t5,8
	subw	t6,t5,t4
	srlw	a3,a0,t6
	andi	t0,a3,240
	seqz	t1,t0
	slliw	t2,t1,2
	li	a5,4
	subw	a1,a5,t2
	srlw	a4,a3,a1
	andi	a0,a4,12
	seqz	a2,a0
	li	t5,2
	slliw	t3,a2,1
	subw	a6,t5,t3
	srlw	t6,a4,a6
	srli	a3,t6,1
	addw	a7,t4,a7
	andi	t4,a3,1
	addw	t0,t2,a7
	subw	t1,t5,t6
	beq	t4,zero,.L1430
	li	t1,0
.L1430:
	addw	t2,t3,t0
	addw	a0,t1,t2
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
	seqz	a5,a1
	neg	t0,a5
	addiw	a4,a5,-1
	and	t1,t0,a0
	and	a0,a4,a1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	or	a0,a0,t1
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a5
	call	__clzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	slliw	t2,s0,6
	ld	s0,0(sp)
	.cfi_restore 8
	addw	a0,a0,t2
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
	blt	a3,a4,.L1435
	li	a0,2
	bgt	a3,a4,.L1434
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1434
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1435:
	li	a0,0
.L1434:
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
	blt	a3,a4,.L1441
	li	a0,1
	bgt	a3,a4,.L1440
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1440
	sgtu	a0,t0,a1
	ret
.L1441:
	li	a0,-1
.L1440:
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
	blt	a1,a3,.L1446
	li	a0,2
	bgt	a1,a3,.L1445
	li	a0,0
	bltu	a5,a2,.L1445
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1446:
	li	a0,0
.L1445:
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
	srli	t0,a1,48
	seqz	t1,t0
	slliw	t2,t1,4
	srlw	a5,a0,t2
	andi	a2,a5,0xff
	seqz	a0,a2
	slliw	a7,a0,3
	srlw	a4,a5,a7
	andi	a3,a4,15
	seqz	t3,a3
	slliw	t4,t3,2
	srlw	t5,a4,t4
	andi	t6,t5,3
	seqz	a1,t6
	slliw	t0,a1,1
	srlw	t1,t5,t0
	andi	a5,t1,3
	not	a0,a5
	addw	t2,a7,t2
	andi	a2,a0,1
	srliw	a7,a5,1
	li	a6,2
	addw	a4,t4,t2
	negw	a3,a2
	subw	a6,a6,a7
	addw	t3,t0,a4
	and	t4,a6,a3
	addw	a0,t3,t4
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
	seqz	a5,a0
	neg	t0,a5
	addiw	a4,a5,-1
	and	t1,t0,a1
	and	a0,a4,a0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	or	a0,t1,a0
	sd	s0,0(sp)
	sd	ra,8(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	mv	s0,a5
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_restore 1
	slliw	t2,s0,6
	ld	s0,0(sp)
	.cfi_restore 8
	addw	a0,a0,t2
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
	bne	a0,zero,.L1454
	bne	a1,zero,.L1459
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1454:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1459:
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
	beq	a4,zero,.L1461
	addiw	a7,a1,-32
	srli	a6,a0,32
	srlw	a3,a6,a7
	li	a1,0
.L1462:
	slli	t3,a3,32
	srli	t4,t3,32
	slli	t5,a1,32
	or	a0,t5,t4
.L1460:
	ret
.L1461:
	beq	a1,zero,.L1460
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	srlw	a2,a5,a1
	sllw	t2,a0,t1
	srlw	a1,a0,a1
	or	a3,t2,a2
	j	.L1462
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
	beq	a5,zero,.L1467
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1467:
	beq	a2,zero,.L1469
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1469:
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
	srli	t0,a5,48
	srli	t1,a4,48
	mulw	a3,t0,t1
	srliw	a0,a0,16
	srliw	a1,a1,16
	mulw	t2,t1,a0
	srliw	a6,a3,16
	slli	a2,a3,48
	srli	a7,a2,48
	mulw	t3,t0,a1
	addw	t4,t2,a6
	slliw	t5,t4,16
	addw	t6,t5,a7
	srliw	a5,t6,16
	slli	t0,t6,48
	srliw	a4,t4,16
	srli	t1,t0,48
	mulw	a0,a0,a1
	addw	a1,t3,a5
	slliw	a3,a1,16
	addw	t2,a3,t1
	srliw	a6,a1,16
	slli	a2,t2,32
	srli	a7,a2,32
	addw	t3,a0,a4
	addw	t4,a6,t3
	slli	t5,t4,32
	or	a0,a7,t5
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
	srli	t2,a4,48
	srli	t0,a5,48
	mulw	a3,t0,t2
	srliw	a2,a0,16
	srliw	t1,a1,16
	srai	t3,a1,32
	srai	a7,a0,32
	mulw	t5,t2,a2
	srliw	t4,a3,16
	slli	a6,a3,48
	srli	t6,a6,48
	mulw	a5,t0,t1
	addw	t0,t5,t4
	slliw	a4,t0,16
	addw	t2,a4,t6
	srliw	t5,t2,16
	slli	a3,t2,48
	srli	t4,a3,48
	srliw	a6,t0,16
	mulw	a2,a2,t1
	addw	t1,a5,t5
	slliw	t6,t1,16
	addw	t0,t6,t4
	srliw	a5,t1,16
	slli	a4,t0,32
	srli	t2,a4,32
	mulw	a0,a0,t3
	addw	t3,a2,a6
	addw	t5,a5,t3
	slli	a3,t5,32
	or	t4,t2,a3
	srai	a6,t4,32
	slli	a2,t4,32
	srli	t1,a2,32
	mulw	a1,a1,a7
	addw	a7,a0,a6
	addw	t6,a1,a7
	slli	t0,t6,32
	or	a0,t1,t0
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
	srli	t0,a3,32
	srli	t1,a5,32
	srli	a4,a0,32
	mul	a0,t0,t1
	srli	a1,a1,32
	mul	t2,t1,a4
	srli	a2,a0,32
	slli	a6,a0,32
	srli	a7,a6,32
	mul	t3,t0,a1
	add	t4,t2,a2
	slli	t5,t4,32
	srli	t6,t5,32
	srli	t0,t4,32
	mul	a5,a4,a1
	add	a3,t3,t6
	srli	t1,a3,32
	slli	a4,a3,32
	add	a0,a7,a4
	add	a1,t0,a5
	add	a1,a1,t1
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
	srli	t2,a5,32
	srli	t0,a6,32
	mv	a4,a0
	srli	a7,a0,32
	mul	a0,t0,t2
	srli	t1,a2,32
	mul	t4,t2,a7
	srli	t3,a0,32
	slli	t5,a0,32
	srli	t6,t5,32
	mul	a6,t0,t1
	add	t0,t4,t3
	slli	a5,t0,32
	srli	t2,a5,32
	srli	t4,t0,32
	mul	a7,a7,t1
	add	a0,a6,t2
	srli	t1,a0,32
	slli	t3,a0,32
	add	a0,t6,t3
	mul	a3,a4,a3
	add	a4,t4,a7
	add	t5,a4,t1
	mul	a1,a2,a1
	add	a2,a3,t5
	add	a1,a2,a1
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
	sext.w	t0,a0
	srliw	t1,a0,16
	xor	t2,t1,t0
	srliw	a4,t2,8
	xor	a1,a4,t2
	srliw	a2,a1,4
	xor	a3,a2,a1
	li	a6,28672
	andi	a7,a3,15
	addiw	t3,a6,-1642
	sraw	t4,t3,a7
	andi	a0,t4,1
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
	xor	t0,a5,a0
	sext.w	a4,t0
	srliw	t1,t0,16
	xor	t2,t1,a4
	srliw	a1,t2,8
	xor	a2,a1,t2
	srliw	a3,a2,4
	xor	a6,a3,a2
	li	a7,28672
	andi	t3,a6,15
	addiw	t4,a7,-1642
	sraw	t5,t4,t3
	andi	a0,t5,1
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
	xor	t0,a5,a0
	srliw	a0,t0,8
	xor	t1,a0,t0
	srliw	t2,t1,4
	xor	a1,t2,t1
	li	a2,28672
	andi	a3,a1,15
	addiw	a4,a2,-1642
	sraw	a6,a4,a3
	andi	a0,a6,1
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
	addi	t0,a5,1365
	slli	a4,t0,32
	add	t1,a4,t0
	srli	t2,a0,1
	li	a3,858992640
	and	a1,t2,t1
	addi	a2,a3,819
	sub	a0,a0,a1
	slli	a6,a2,32
	add	t3,a6,a2
	srli	a7,a0,2
	and	t4,a7,t3
	and	t5,a0,t3
	li	t6,252645376
	add	t0,t4,t5
	addi	a4,t6,-241
	srli	a5,t0,4
	slli	t1,a4,32
	add	t2,a5,t0
	add	a3,t1,a4
	and	a1,t2,a3
	srli	a2,a1,32
	addw	a0,a2,a1
	srliw	a6,a0,16
	addw	a7,a6,a0
	srliw	t3,a7,8
	addw	t4,t3,a7
	andi	a0,t4,127
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
	addi	t0,a4,1365
	and	t1,a5,t0
	subw	a0,a0,t1
	li	t2,858992640
	srliw	a1,a0,2
	addi	a2,t2,819
	and	a6,a0,a2
	and	a3,a1,a2
	addw	a7,a3,a6
	srliw	t3,a7,4
	li	t4,252645376
	addw	t5,t3,a7
	addi	t6,t4,-241
	and	a5,t5,t6
	srliw	a4,a5,16
	addw	t0,a4,a5
	srliw	t1,t0,8
	addw	a0,t1,t0
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
	addi	t0,a3,1365
	slli	a5,a1,63
	srli	a2,a0,1
	slli	a4,t0,32
	add	t2,a4,t0
	or	t1,a5,a2
	and	a6,t1,t2
	srli	a7,a1,1
	sub	t3,a0,a6
	and	t4,a7,t2
	sgtu	a0,t3,a0
	sub	a1,a1,t4
	li	t5,858992640
	sub	t6,a1,a0
	addi	t0,t5,819
	slli	a3,t6,62
	srli	a5,t3,2
	slli	a2,t0,32
	add	a4,a2,t0
	or	t1,a3,a5
	and	t2,t1,a4
	and	a6,t3,a4
	srli	a7,t6,2
	add	t3,t2,a6
	and	t4,t6,a4
	and	a0,a7,a4
	sltu	a1,t3,t2
	add	t5,a0,t4
	add	t6,a1,t5
	slli	t0,t6,60
	srli	a3,t3,4
	or	t1,t0,a3
	li	a2,252645376
	add	a5,t1,t3
	addi	a6,a2,-241
	srli	t2,t6,4
	sltu	a4,a5,t1
	add	a7,t2,t6
	slli	t3,a6,32
	add	a0,t3,a6
	add	t4,a4,a7
	and	t5,a5,a0
	and	a1,t4,a0
	add	t6,a1,t5
	srli	t0,t6,32
	addw	a3,t0,t6
	srliw	t1,a3,16
	addw	a2,t1,a3
	srliw	a5,a2,8
	addw	t2,a5,a2
	andi	a0,t2,0xff
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
	lui	a2,%hi(.LC15)
	andi	a5,a0,1
	fmv.d	fa5,fa0
	fld	fa0,%lo(.LC15)(a2)
	beq	a5,zero,.L1489
	mv	a1,a0
.L1486:
	fmul.d	fa0,fa0,fa5
.L1484:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1485
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1486
.L1490:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1486
	j	.L1490
.L1485:
	blt	a0,zero,.L1491
	ret
.L1489:
	mv	a1,a0
	j	.L1484
.L1491:
	fld	ft0,%lo(.LC15)(a2)
	fdiv.d	fa0,ft0,fa0
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
	lui	a2,%hi(.LC20)
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC20)(a2)
	beq	a5,zero,.L1498
	mv	a1,a0
.L1495:
	fmul.s	fa0,fa0,fa5
.L1493:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1494
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1495
.L1499:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1495
	j	.L1499
.L1494:
	blt	a0,zero,.L1500
	ret
.L1498:
	mv	a1,a0
	j	.L1493
.L1500:
	flw	ft0,%lo(.LC20)(a2)
	fdiv.s	fa0,ft0,fa0
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
	bltu	a3,a4,.L1503
	li	a0,2
	bgtu	a3,a4,.L1502
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1502
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1503:
	li	a0,0
.L1502:
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
	bltu	a3,a4,.L1509
	li	a0,1
	bgtu	a3,a4,.L1508
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1508
	sgtu	a0,t0,a1
	ret
.L1509:
	li	a0,-1
.L1508:
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
	bltu	a1,a3,.L1514
	li	a0,2
	bgtu	a1,a3,.L1513
	li	a0,0
	bltu	a5,a2,.L1513
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1514:
	li	a0,0
.L1513:
	ret
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
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
	.word	-1074790400
	.align	3
.LC14:
	.word	0
	.word	-1075838976
	.align	3
.LC15:
	.word	0
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC16:
	.word	1191182336
	.align	2
.LC20:
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
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
