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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	remw	a0,a0,a1
	slli	t0,a5,32
	srli	t1,t0,32
	slli	t2,a0,32
	or	a0,t1,t2
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
	j	.L431
.L433:
	beq	a1,a5,.L432
	addi	a0,a0,4
.L431:
	lw	a5,0(a0)
	bne	a5,zero,.L433
	li	a0,0
	ret
.L432:
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
.L437:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L436
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L437
.L436:
	li	a0,-1
	blt	a5,a4,.L438
	sgt	a0,a5,a4
.L438:
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
.L444:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L444
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
	beq	a5,zero,.L449
	mv	t0,a0
.L448:
	lw	a4,4(t0)
	addi	t0,t0,4
	bne	a4,zero,.L448
	sub	a0,t0,a0
	srai	a0,a0,2
	ret
.L449:
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
	beq	a2,zero,.L457
.L464:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L454
	beq	a5,zero,.L454
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L464
.L457:
	li	a0,0
	ret
.L454:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L465
	ret
.L465:
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
	beq	a2,zero,.L470
.L477:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L476
	addi	a0,a0,4
	bne	a2,zero,.L477
.L470:
	li	a0,0
	ret
.L476:
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
	beq	a2,zero,.L484
.L494:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L493
	addi	a1,a1,4
	bne	a2,zero,.L494
.L484:
	li	a0,0
	ret
.L493:
	sgt	a0,a4,a5
	blt	a4,a5,.L495
	ret
.L495:
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
	beq	a2,zero,.L497
	slli	a2,a2,2
	call	memcpy
.L497:
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
	beq	a0,a1,.L520
	sub	a7,a0,a1
	slli	a6,a2,2
	mv	a4,a0
	mv	a3,a1
	addi	t3,a2,-1
	bltu	a7,a6,.L504
	beq	a2,zero,.L532
	li	t0,8
	bleu	t3,t0,.L514
	or	t1,a1,a0
	andi	t2,t1,7
	bne	t2,zero,.L533
	addi	t4,a1,4
	beq	a0,t4,.L515
	srli	t3,a2,1
	li	a5,0
.L509:
	ld	t4,0(a3)
	addi	a5,a5,1
	addi	a3,a3,8
	sd	t4,0(a4)
	addi	a4,a4,8
	bne	t3,a5,.L509
	andi	t5,a2,1
	beq	t5,zero,.L520
	andi	a2,a2,-2
	slli	t6,a2,2
	add	a1,a1,t6
	lw	a7,0(a1)
	add	a6,a0,t6
	sw	a7,0(a6)
	ret
.L514:
	addi	t4,a1,4
	mv	t2,a0
.L508:
	li	t0,-1
	j	.L512
.L534:
	addi	t4,t4,4
.L512:
	lw	t1,-4(t4)
	addi	t3,t3,-1
	addi	t2,t2,4
	sw	t1,-4(t2)
	bne	t3,t0,.L534
.L520:
	ret
.L504:
	beq	a2,zero,.L520
	slli	a5,t3,2
	li	t5,-4
.L507:
	add	a3,a1,a5
	lw	a2,0(a3)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a2,0(a4)
	bne	a5,t5,.L507
	ret
.L532:
	ret
.L533:
	addi	t4,a1,4
.L515:
	mv	t2,a0
	j	.L508
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
	beq	a2,zero,.L536
	srli	a5,a0,2
	li	a4,5
	andi	t0,a5,1
	bleu	a7,a4,.L541
	mv	t2,a0
	beq	t0,zero,.L538
	sw	a1,0(a0)
	addi	t2,a0,4
	addi	a7,a2,-2
.L538:
	slli	a3,a1,32
	srli	t3,a3,32
	sub	a2,a2,t0
	slli	a6,t0,2
	slli	t4,a1,32
	add	a5,a0,a6
	srli	t5,a2,1
	or	t6,t3,t4
	li	a4,0
.L539:
	sd	t6,0(a5)
	addi	a4,a4,1
	addi	a5,a5,8
	bne	a4,t5,.L539
	andi	t0,a2,1
	beq	t0,zero,.L536
	andi	t1,a2,-2
	slli	a3,t1,2
	sub	a7,a7,t1
	add	t1,t2,a3
.L537:
	sw	a1,0(t1)
	beq	a7,zero,.L536
	sw	a1,4(t1)
	li	t2,1
	beq	a7,t2,.L536
	sw	a1,8(t1)
	li	t3,2
	beq	a7,t3,.L536
	sw	a1,12(t1)
	li	a2,3
	beq	a7,a2,.L536
	sw	a1,16(t1)
	li	a6,4
	beq	a7,a6,.L536
	sw	a1,20(t1)
.L536:
	ret
.L541:
	mv	t1,a0
	j	.L537
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	bgeu	a0,a1,.L555
	add	a1,a1,a2
	add	t6,a0,a2
	beq	a2,zero,.L554
.L557:
	lbu	a5,-1(t6)
	addi	t6,t6,-1
	addi	a1,a1,-1
	sb	a5,0(a1)
	bne	a0,t6,.L557
	ret
.L555:
	bne	a0,a1,.L583
.L554:
	ret
.L583:
	beq	a2,zero,.L554
	addi	a5,a2,-1
	li	a4,7
	bleu	a5,a4,.L581
	or	t0,a1,a0
	andi	t1,t0,7
	bne	t1,zero,.L581
	addi	t5,a0,1
	sub	t2,a1,t5
	sltiu	a3,t2,7
	bne	a3,zero,.L558
	andi	a6,a2,-8
	add	a7,a0,a6
	mv	t4,a1
.L559:
	ld	t3,0(a0)
	addi	a0,a0,8
	addi	t4,t4,8
	sd	t3,-8(t4)
	bne	a7,a0,.L559
	add	a1,a1,a6
	sub	a0,a2,a6
	beq	a2,a6,.L554
	lbu	a2,0(a7)
	li	t5,1
	sb	a2,0(a1)
	beq	a0,t5,.L554
	lbu	t6,1(a7)
	li	a5,2
	sb	t6,1(a1)
	beq	a0,a5,.L554
	lbu	t0,2(a7)
	li	a4,3
	sb	t0,2(a1)
	beq	a0,a4,.L554
	lbu	t1,3(a7)
	li	t2,4
	sb	t1,3(a1)
	beq	a0,t2,.L554
	lbu	a3,4(a7)
	li	a6,5
	sb	a3,4(a1)
	beq	a0,a6,.L554
	lbu	t3,5(a7)
	li	t4,6
	sb	t3,5(a1)
	beq	a0,t4,.L554
	lbu	a7,6(a7)
	sb	a7,6(a1)
	ret
.L581:
	addi	t5,a0,1
.L558:
	add	a0,a0,a2
	j	.L562
.L584:
	addi	t5,t5,1
.L562:
	lbu	a2,-1(t5)
	addi	a1,a1,1
	sb	a2,-1(a1)
	bne	t5,a0,.L584
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
	j	.L601
.L599:
	beq	a5,a3,.L603
.L601:
	srlw	a4,a0,a5
	andi	t0,a4,1
	addiw	a5,a5,1
	beq	t0,zero,.L599
	mv	a0,a5
	ret
.L603:
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
	beq	a0,zero,.L607
	andi	a0,a0,1
	bne	a0,zero,.L605
	li	a0,1
.L606:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L606
	ret
.L607:
	li	a0,0
.L605:
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
	bne	t0,zero,.L611
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa0,ft0
.L611:
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
	bne	t0,zero,.L615
	lui	t1,%hi(.LC4)
	fld	ft0,%lo(.LC4)(t1)
	fgt.d	a0,fa0,ft0
.L615:
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
	li	a3,-1
	slli	t0,a3,48
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	addi	a3,t0,-1
	li	a2,-1
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s1,a0
	mv	s0,a1
	call	__lttf2
	blt	a0,zero,.L621
	li	t1,134213632
	slli	t2,t1,36
	mv	a0,s1
	mv	a1,s0
	addi	a3,t2,-1
	li	a2,-1
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
.L621:
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
	beq	a5,zero,.L626
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L626
	blt	a0,zero,.L639
	lui	t1,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t1)
.L627:
	andi	a1,a0,1
	beq	a1,zero,.L628
.L629:
	fmul.s	fa0,fa0,ft0
.L628:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L626
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L629
.L640:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L629
	j	.L640
.L626:
	ret
.L639:
	lui	t2,%hi(.LC8)
	flw	ft0,%lo(.LC8)(t2)
	j	.L627
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
	beq	a5,zero,.L642
	fadd.d	fa5,fa0,fa0
	feq.d	t0,fa5,fa0
	bne	t0,zero,.L642
	blt	a0,zero,.L655
	lui	t1,%hi(.LC9)
	fld	ft0,%lo(.LC9)(t1)
.L643:
	andi	a1,a0,1
	beq	a1,zero,.L644
.L645:
	fmul.d	fa0,fa0,ft0
.L644:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L642
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L645
.L656:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L645
	j	.L656
.L642:
	ret
.L655:
	lui	t2,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t2)
	j	.L643
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
	call	__unordtf2
	bne	a0,zero,.L658
	mv	a2,s3
	mv	a3,s2
	mv	a0,s3
	mv	a1,s2
	call	__addtf3
	mv	a2,s3
	mv	a3,s2
	call	__netf2
	beq	a0,zero,.L658
	sd	s1,24(sp)
	sd	s4,0(sp)
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	li	s1,1
	slli	s1,s1,62
	li	s4,0
	bge	s0,zero,.L660
	li	t0,33550336
	slli	s1,t0,37
.L660:
	andi	a5,s0,1
	beq	a5,zero,.L661
.L662:
	mv	a0,s3
	mv	a1,s2
	mv	a2,s4
	mv	a3,s1
	call	__multf3
	mv	s3,a0
	mv	s2,a1
.L661:
	srliw	t1,s0,31
	addw	s0,t1,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L673
.L663:
	mv	a2,s4
	mv	a0,s4
	mv	a3,s1
	mv	a1,s1
	call	__multf3
	srliw	t2,s0,31
	andi	a4,s0,1
	addw	a2,t2,s0
	mv	s4,a0
	mv	s1,a1
	bne	a4,zero,.L662
	sraiw	s0,a2,1
	j	.L663
.L673:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s4,0(sp)
	.cfi_restore 20
.L658:
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
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L675
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L676
	or	t0,a0,a1
	andi	t1,t0,7
	bne	t1,zero,.L676
	andi	a7,a2,-8
	add	a6,a1,a7
	mv	t4,a0
.L677:
	ld	a3,0(t4)
	ld	t2,0(a1)
	addi	a1,a1,8
	addi	t4,t4,8
	xor	t3,t2,a3
	sd	t3,-8(t4)
	bne	a6,a1,.L677
	add	t5,a0,a7
	sub	t6,a2,a7
	beq	a2,a7,.L675
	lbu	a5,0(t5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a4,a5,a1
	sb	a4,0(t5)
	beq	t6,a2,.L675
	lbu	t1,1(t5)
	lbu	t0,1(a6)
	li	a7,2
	xor	t2,t0,t1
	sb	t2,1(t5)
	beq	t6,a7,.L675
	lbu	t3,2(t5)
	lbu	a3,2(a6)
	li	t4,3
	xor	a5,a3,t3
	sb	a5,2(t5)
	beq	t6,t4,.L675
	lbu	a1,3(t5)
	lbu	a4,3(a6)
	li	a2,4
	xor	t0,a4,a1
	sb	t0,3(t5)
	beq	t6,a2,.L675
	lbu	a7,4(t5)
	lbu	t1,4(a6)
	li	t2,5
	xor	a3,t1,a7
	sb	a3,4(t5)
	beq	t6,t2,.L675
	lbu	t4,5(t5)
	lbu	t3,5(a6)
	li	a5,6
	xor	a4,t3,t4
	sb	a4,5(t5)
	beq	t6,a5,.L675
	lbu	t6,6(t5)
	lbu	a6,6(a6)
	xor	a1,a6,t6
	sb	a1,6(t5)
	ret
.L676:
	add	t5,a1,a2
	mv	a2,a0
.L679:
	lbu	t1,0(a2)
	lbu	t0,0(a1)
	addi	a1,a1,1
	addi	a2,a2,1
	xor	a7,t0,t1
	sb	a7,-1(a2)
	bne	t5,a1,.L679
.L675:
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
	beq	a5,zero,.L693
	mv	t1,a0
.L688:
	lbu	a4,1(t1)
	addi	t1,t1,1
	bne	a4,zero,.L688
.L701:
	beq	a2,zero,.L690
.L703:
	lbu	t0,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t0,0(t1)
	beq	t0,zero,.L702
	addi	t1,t1,1
	bne	a2,zero,.L703
.L690:
	sb	zero,0(t1)
	ret
.L702:
	ret
.L693:
	mv	t1,a0
	j	.L701
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
	beq	a1,zero,.L704
.L705:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L707
.L704:
	ret
.L707:
	addi	a0,a0,1
	bne	a1,a0,.L705
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
	beq	a3,zero,.L718
.L724:
	mv	a5,a1
	j	.L717
.L716:
	beq	a4,a3,.L715
.L717:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L716
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L724
.L718:
	li	a0,0
.L715:
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
.L728:
	lbu	a4,0(a5)
	mv	a0,a3
	bne	a4,a1,.L727
	mv	a0,a5
.L727:
	addi	a5,a5,1
	mv	a3,a0
	bne	a4,zero,.L728
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
	beq	a7,zero,.L744
	mv	a5,a1
.L733:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L733
	sub	t3,a5,a1
	mv	a0,a3
	addi	t4,t3,-1
	bne	a5,a1,.L751
	ret
.L753:
	addi	a3,a3,1
	beq	t0,zero,.L752
.L751:
	lbu	t0,0(a3)
	bne	t0,a7,.L753
	add	t1,a3,t4
	mv	a0,a1
	mv	t2,a3
	mv	a2,a7
.L735:
	beq	t2,t1,.L737
	addi	t2,t2,1
	bne	t0,a2,.L738
	lbu	t0,0(t2)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	t0,zero,.L737
	mv	a0,a6
	bne	a2,zero,.L735
.L738:
	addi	a3,a3,1
	j	.L751
.L752:
	li	a0,0
	ret
.L737:
	bne	t0,a2,.L738
.L744:
	mv	a0,a3
.L731:
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
	bne	a5,zero,.L767
	fgt.d	t0,fa0,fa5
	beq	t0,zero,.L758
	flt.d	t1,fa1,fa5
	bne	t1,zero,.L757
.L758:
	ret
.L757:
	fneg.d	fa0,fa0
	ret
.L767:
	fgt.d	t2,fa1,fa5
	bne	t2,zero,.L757
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
	beq	a3,zero,.L768
	bltu	a1,a3,.L779
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L779
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L774:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L784
	mv	a0,t1
.L770:
	bgeu	a7,a0,.L774
.L779:
	li	a0,0
.L768:
	ret
.L784:
	mv	t5,a2
	beq	a3,zero,.L768
.L773:
	mv	t2,t1
	add	t6,t1,a3
	j	.L771
.L772:
	beq	t2,t6,.L768
.L771:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L772
	bgtu	t1,a7,.L779
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L770
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L773
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
	beq	a2,zero,.L786
	call	memmove
.L786:
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
	bne	a5,zero,.L818
	lui	t5,%hi(.LC15)
	fld	fa4,%lo(.LC15)(t5)
	li	t4,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L819
.L794:
	lui	t6,%hi(.LC10)
	fld	ft5,%lo(.LC10)(t6)
	fld	ft6,%lo(.LC15)(t5)
	li	a7,0
.L800:
	fmul.d	fa0,fa0,ft5
	addiw	a7,a7,1
	fge.d	a5,fa0,ft6
	bne	a5,zero,.L800
	sw	a7,0(a0)
	beq	t4,zero,.L791
.L821:
	fneg.d	fa0,fa0
.L791:
	ret
.L819:
	lui	t0,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t0)
	flt.d	t1,fa0,ft0
	beq	t1,zero,.L797
	feq.d	t2,fa0,fa5
	beq	t2,zero,.L806
.L797:
	sw	zero,0(a0)
	ret
.L818:
	lui	a1,%hi(.LC13)
	fld	ft2,%lo(.LC13)(a1)
	fneg.d	ft1,fa0
	fle.d	a2,fa0,ft2
	beq	a2,zero,.L820
	fmv.d	fa0,ft1
	li	t4,1
	lui	t5,%hi(.LC15)
	j	.L794
.L820:
	lui	a3,%hi(.LC14)
	fld	ft3,%lo(.LC14)(a3)
	fgt.d	a6,fa0,ft3
	beq	a6,zero,.L797
	li	t4,1
	lui	t0,%hi(.LC10)
.L795:
	fmv.d	fa0,ft1
	fld	ft4,%lo(.LC10)(t0)
	li	a7,0
.L802:
	fadd.d	fa0,fa0,fa0
	addiw	a7,a7,-1
	flt.d	t3,fa0,ft4
	bne	t3,zero,.L802
	sw	a7,0(a0)
	bne	t4,zero,.L821
	ret
.L806:
	fmv.d	ft1,fa0
	j	.L795
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
	beq	a4,zero,.L825
.L824:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L824
	ret
.L825:
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
	bltu	a1,a5,.L828
	j	.L856
.L832:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L830
	beq	a0,zero,.L831
.L828:
	addiw	a0,a0,-1
	bge	a1,zero,.L832
.L833:
	li	a0,0
.L838:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L835
	mv	a5,a7
.L835:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L837
	mv	t0,t2
.L837:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L838
.L831:
	bne	a2,zero,.L857
.L854:
	ret
.L830:
	bne	t2,zero,.L833
	li	a0,0
	beq	a2,zero,.L854
.L857:
	mv	a0,a5
	ret
.L856:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L841
	mv	a5,a1
.L841:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L831
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	beq	a0,zero,.L860
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
.L860:
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
	beq	a5,a4,.L867
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
.L867:
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
	beq	a4,zero,.L875
.L874:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L874
	ret
.L875:
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
	bltu	a0,a1,.L881
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L912
.L881:
	beq	a6,zero,.L913
	slli	t6,a6,3
	add	a6,t6,a1
	mv	a5,a1
	mv	t2,a0
.L884:
	ld	t0,0(a5)
	addi	a5,a5,8
	addi	t2,t2,8
	sd	t0,-8(t2)
	bne	a5,a6,.L884
	bleu	a2,t1,.L877
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	t3,7
	srli	t4,a3,32
	bleu	a4,t3,.L886
	addi	t5,t4,1
	add	t6,a1,t5
	add	a4,a0,t4
	sub	a6,a4,t6
	sltiu	t0,a6,7
	add	a5,a1,t4
	bne	t0,zero,.L886
	or	t2,a5,a4
	andi	t3,t2,7
	bne	t3,zero,.L886
	srliw	a3,a7,3
	slli	t4,a3,3
	add	t5,a5,t4
.L887:
	ld	t6,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	t6,-8(a4)
	bne	a5,t5,.L887
	andi	a6,a7,-8
	andi	a7,a7,7
	addw	t1,a6,t1
	beq	a7,zero,.L877
	slli	t0,t1,32
	srli	t2,t0,32
	add	a3,a1,t2
	lbu	t4,0(a3)
	add	t5,a0,t2
	addiw	t3,t1,1
	sb	t4,0(t5)
	bleu	a2,t3,.L877
	slli	t6,t3,32
	srli	a5,t6,32
	add	a4,a1,a5
	lbu	a6,0(a4)
	add	t0,a0,a5
	addiw	a7,t1,2
	sb	a6,0(t0)
	bleu	a2,a7,.L877
	slli	t2,a7,32
	srli	t3,t2,32
	add	a3,a1,t3
	lbu	t5,0(a3)
	add	t6,a0,t3
	addiw	t4,t1,3
	sb	t5,0(t6)
	bleu	a2,t4,.L877
	slli	a5,t4,32
	srli	a7,a5,32
	add	a4,a1,a7
	lbu	a6,0(a4)
	add	t2,a0,a7
	addiw	t0,t1,4
	sb	a6,0(t2)
	bleu	a2,t0,.L877
	slli	t3,t0,32
	srli	t4,t3,32
	add	a3,a1,t4
	lbu	t6,0(a3)
	add	a5,a0,t4
	addiw	t5,t1,5
	sb	t6,0(a5)
	bleu	a2,t5,.L877
	slli	a7,t5,32
	srli	t0,a7,32
	add	a4,a1,t0
	lbu	a6,0(a4)
	add	t2,a0,t0
	addiw	t1,t1,6
	sb	a6,0(t2)
	bleu	a2,t1,.L877
	slli	a2,t1,32
	srli	t3,a2,32
	add	a1,a1,t3
	lbu	t4,0(a1)
	add	a0,a0,t3
	sb	t4,0(a0)
	ret
.L912:
	addiw	a3,a2,-1
	beq	a2,zero,.L914
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t4,a1,a4
.L891:
	lbu	a7,0(t4)
	mv	t3,t4
	addi	a0,a0,-1
	sb	a7,1(a0)
	addi	t4,t4,-1
	bne	a1,t3,.L891
.L877:
	ret
.L913:
	slli	t5,t1,32
	srli	t4,t5,32
	beq	a2,zero,.L915
.L886:
	mv	a5,t4
.L889:
	add	t5,a1,a5
	lbu	a3,0(t5)
	add	t6,a0,a5
	addi	a5,a5,1
	sb	a3,0(t6)
	sext.w	a7,a5
	bltu	a7,a2,.L889
	ret
.L915:
	ret
.L914:
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
	bltu	a0,a1,.L920
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L942
.L920:
	beq	t1,zero,.L919
	addiw	t4,t1,-1
	li	t5,6
	bleu	t4,t5,.L923
	or	t6,a1,a0
	andi	a5,t6,7
	bne	a5,zero,.L923
	addi	t0,a1,2
	sub	t2,a0,t0
	sltiu	a3,t2,5
	bne	a3,zero,.L923
	srliw	a7,a2,3
	slli	a4,a7,3
	add	a6,a4,a1
	mv	t4,a1
	mv	t5,a0
.L924:
	ld	t3,0(t4)
	addi	t4,t4,8
	addi	t5,t5,8
	sd	t3,-8(t5)
	bne	t4,a6,.L924
	slliw	t6,a7,2
	beq	t1,t6,.L919
	slli	a5,t6,1
	add	t0,a1,a5
	lh	t2,0(t0)
	add	a3,a0,a5
	addiw	a7,t6,1
	sh	t2,0(a3)
	bleu	t1,a7,.L919
	slli	a4,a7,32
	srli	a6,a4,31
	add	t3,a1,a6
	lh	t4,0(t3)
	add	t5,a0,a6
	addiw	t6,t6,2
	sh	t4,0(t5)
	bleu	t1,t6,.L919
	slli	t1,t6,32
	srli	a5,t1,31
	add	t0,a1,a5
	lh	t2,0(t0)
	add	a3,a0,a5
	sh	t2,0(a3)
.L919:
	andi	t5,a2,1
	beq	t5,zero,.L916
.L944:
	addiw	a2,a2,-1
	slli	t6,a2,32
	srli	t1,t6,32
	add	a1,a1,t1
	lbu	a5,0(a1)
	add	a0,a0,t1
	sb	a5,0(a0)
	ret
.L942:
	addiw	a3,a2,-1
	beq	a2,zero,.L943
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t3,a1,a4
.L929:
	lbu	a6,0(t3)
	mv	a7,t3
	addi	a0,a0,-1
	sb	a6,1(a0)
	addi	t3,t3,-1
	bne	a1,a7,.L929
.L916:
	ret
.L923:
	slli	a7,t1,1
	add	a6,a7,a1
	mv	t4,a1
	mv	a4,a0
.L926:
	lh	t3,0(t4)
	addi	t4,t4,2
	addi	a4,a4,2
	sh	t3,-2(a4)
	bne	t4,a6,.L926
	andi	t5,a2,1
	beq	t5,zero,.L916
	j	.L944
.L943:
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
	bltu	a0,a1,.L950
	slli	a5,a2,32
	srli	t0,a5,32
	add	t2,a1,t0
	bleu	a0,t2,.L985
.L950:
	beq	t3,zero,.L986
	addiw	t6,t3,-1
	li	a5,8
	bleu	t6,a5,.L952
	or	t0,a0,a1
	andi	t2,t0,7
	bne	t2,zero,.L952
	addi	a3,a1,4
	beq	a0,a3,.L952
	srliw	a7,a2,3
	slli	a4,a7,3
	add	a6,a4,a1
	mv	t5,a1
	mv	t6,a0
.L953:
	ld	t4,0(t5)
	addi	t5,t5,8
	addi	t6,t6,8
	sd	t4,-8(t6)
	bne	t5,a6,.L953
	slliw	a5,a7,1
	beq	t3,a5,.L956
	slli	t3,a5,2
	add	t0,a1,t3
	lw	t2,0(t0)
	add	a3,a0,t3
	sw	t2,0(a3)
.L956:
	bleu	a2,t1,.L945
	subw	t6,a2,t1
	slli	t0,t1,32
	addiw	t3,t6,-1
	li	a5,7
	srli	t2,t0,32
	bleu	t3,a5,.L948
	addi	a3,t2,1
	add	a7,a1,a3
	add	a4,a0,t2
	sub	a6,a4,a7
	sltiu	t4,a6,7
	add	a5,a1,t2
	bne	t4,zero,.L948
	or	t5,a5,a4
	andi	t3,t5,7
	bne	t3,zero,.L948
	srliw	t0,t6,3
	slli	t2,t0,3
	add	a7,a5,t2
.L957:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a7,.L957
	andi	a6,t6,-8
	andi	t6,t6,7
	addw	t1,a6,t1
	beq	t6,zero,.L945
	slli	t4,t1,32
	srli	t5,t4,32
	add	t0,a1,t5
	lbu	t2,0(t0)
	add	a7,a0,t5
	addiw	t3,t1,1
	sb	t2,0(a7)
	bleu	a2,t3,.L945
	slli	a3,t3,32
	srli	a5,a3,32
	add	a4,a1,a5
	lbu	a6,0(a4)
	add	t4,a0,a5
	addiw	t6,t1,2
	sb	a6,0(t4)
	bleu	a2,t6,.L945
	slli	t5,t6,32
	srli	t3,t5,32
	add	t2,a1,t3
	lbu	a7,0(t2)
	add	a3,a0,t3
	addiw	t0,t1,3
	sb	a7,0(a3)
	bleu	a2,t0,.L945
	slli	a5,t0,32
	srli	t6,a5,32
	add	a4,a1,t6
	lbu	a6,0(a4)
	add	t5,a0,t6
	addiw	t4,t1,4
	sb	a6,0(t5)
	bleu	a2,t4,.L945
	slli	t3,t4,32
	srli	t0,t3,32
	add	a7,a1,t0
	lbu	a5,0(a7)
	add	a3,a0,t0
	addiw	t2,t1,5
	sb	a5,0(a3)
	bleu	a2,t2,.L945
	slli	t6,t2,32
	srli	t4,t6,32
	add	a4,a1,t4
	lbu	a6,0(a4)
	add	t5,a0,t4
	addiw	t1,t1,6
	sb	a6,0(t5)
	bleu	a2,t1,.L945
	slli	a2,t1,32
	srli	t3,a2,32
	add	a1,a1,t3
	lbu	t0,0(a1)
	add	a0,a0,t3
	sb	t0,0(a0)
	ret
.L985:
	addiw	a3,a2,-1
	beq	a2,zero,.L987
	slli	a2,a3,32
	srli	a4,a2,32
	add	a0,a0,a4
	add	t4,a1,a4
.L961:
	lbu	a6,0(t4)
	mv	a7,t4
	addi	a0,a0,-1
	sb	a6,1(a0)
	addi	t4,t4,-1
	bne	a1,a7,.L961
.L945:
	ret
.L952:
	slli	a7,t3,2
	add	a6,a7,a1
	mv	t5,a1
	mv	a4,a0
.L955:
	lw	t4,0(t5)
	addi	t5,t5,4
	addi	a4,a4,4
	sw	t4,-4(a4)
	bne	t5,a6,.L955
	j	.L956
.L986:
	slli	t5,t1,32
	srli	t2,t5,32
	beq	a2,zero,.L988
.L948:
	mv	a5,t2
.L959:
	add	t2,a1,a5
	lbu	a7,0(t2)
	add	a3,a0,a5
	addi	a5,a5,1
	sb	a7,0(a3)
	sext.w	t6,a5
	bgtu	a2,t6,.L959
	ret
.L988:
	ret
.L987:
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
	bne	a3,zero,.L998
	sraiw	a0,a5,14
	bne	a0,zero,.L997
	sraiw	t0,a5,13
	bne	t0,zero,.L999
	sraiw	t1,a5,12
	bne	t1,zero,.L1000
	sraiw	t2,a5,11
	bne	t2,zero,.L1001
	sraiw	a0,a5,10
	bne	a0,zero,.L1002
	sraiw	a1,a5,9
	bne	a1,zero,.L1003
	sraiw	a2,a5,8
	bne	a2,zero,.L1004
	sraiw	a6,a5,7
	bne	a6,zero,.L1005
	sraiw	a7,a5,6
	bne	a7,zero,.L1006
	sraiw	t3,a5,5
	bne	t3,zero,.L1007
	sraiw	t4,a5,4
	bne	t4,zero,.L1008
	sraiw	t5,a5,3
	bne	t5,zero,.L1009
	sraiw	t6,a5,2
	bne	t6,zero,.L1010
	sraiw	a3,a5,1
	bne	a3,zero,.L1011
	seqz	a4,a4
	addi	a0,a4,15
	ret
.L1011:
	li	a0,14
.L997:
	ret
.L998:
	li	a0,0
	ret
.L1009:
	li	a0,12
	ret
.L999:
	li	a0,2
	ret
.L1000:
	li	a0,3
	ret
.L1001:
	li	a0,4
	ret
.L1002:
	li	a0,5
	ret
.L1003:
	li	a0,6
	ret
.L1004:
	li	a0,7
	ret
.L1005:
	li	a0,8
	ret
.L1006:
	li	a0,9
	ret
.L1007:
	li	a0,10
	ret
.L1008:
	li	a0,11
	ret
.L1010:
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
	bne	a5,zero,.L1016
	andi	t0,a0,2
	bne	t0,zero,.L1017
	andi	t1,a0,4
	bne	t1,zero,.L1018
	andi	t2,a0,8
	bne	t2,zero,.L1019
	andi	a1,a0,16
	bne	a1,zero,.L1020
	andi	a2,a0,32
	bne	a2,zero,.L1021
	andi	a3,a0,64
	bne	a3,zero,.L1022
	andi	a4,a0,128
	bne	a4,zero,.L1023
	andi	a6,a0,256
	bne	a6,zero,.L1024
	andi	a7,a0,512
	bne	a7,zero,.L1025
	andi	t3,a0,1024
	bne	t3,zero,.L1026
	slli	t5,a0,52
	li	t4,4096
	blt	t5,zero,.L1027
	and	t6,a0,t4
	bne	t6,zero,.L1028
	slli	a5,a0,50
	blt	a5,zero,.L1029
	slli	t0,a0,49
	blt	t0,zero,.L1030
	sraiw	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L1016:
	li	a0,0
	ret
.L1017:
	li	a0,1
	ret
.L1028:
	li	a0,12
	ret
.L1018:
	li	a0,2
	ret
.L1019:
	li	a0,3
	ret
.L1020:
	li	a0,4
	ret
.L1021:
	li	a0,5
	ret
.L1022:
	li	a0,6
	ret
.L1023:
	li	a0,7
	ret
.L1024:
	li	a0,8
	ret
.L1025:
	li	a0,9
	ret
.L1026:
	li	a0,10
	ret
.L1027:
	li	a0,11
	ret
.L1029:
	li	a0,13
	ret
.L1030:
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
	bne	t0,zero,.L1039
	fcvt.l.s a0,fa0,rtz
	ret
.L1039:
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
	beq	a4,zero,.L1045
.L1044:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L1044
	ret
.L1045:
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
	beq	a4,zero,.L1050
	beq	a1,zero,.L1051
.L1049:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a4,t0
	srliw	a1,a1,1
	addw	a0,t1,a0
	slliw	a4,a4,1
	bne	a1,zero,.L1049
	ret
.L1050:
	ret
.L1051:
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
	bltu	a1,a5,.L1054
	j	.L1082
.L1058:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L1056
	beq	a0,zero,.L1057
.L1054:
	addiw	a0,a0,-1
	bge	a1,zero,.L1058
.L1059:
	li	a0,0
.L1064:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L1061
	mv	a5,a7
.L1061:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L1063
	mv	t0,t2
.L1063:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L1064
.L1057:
	bne	a2,zero,.L1083
.L1080:
	ret
.L1056:
	bne	t2,zero,.L1059
	li	a0,0
	beq	a2,zero,.L1080
.L1083:
	mv	a0,a5
	ret
.L1082:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L1067
	mv	a5,a1
.L1067:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L1057
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
	bne	a5,zero,.L1085
	fgt.s	a0,fa0,fa1
.L1085:
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
	bne	a5,zero,.L1089
	fgt.d	a0,fa0,fa1
.L1089:
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
	blt	a1,zero,.L1108
	beq	a1,zero,.L1100
	li	a2,0
.L1096:
	li	t2,32
	li	a0,0
	j	.L1099
.L1109:
	beq	t2,zero,.L1098
.L1099:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a3,t0
	addiw	a4,t2,-1
	sraiw	a1,a1,1
	andi	t2,a4,0xff
	addw	a0,t1,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1109
.L1098:
	beq	a2,zero,.L1097
	negw	a0,a0
	ret
.L1100:
	li	a0,0
.L1097:
	ret
.L1108:
	negw	a1,a1
	li	a2,1
	j	.L1096
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
	blt	a0,zero,.L1140
.L1111:
	bge	a1,zero,.L1112
	neg	a1,a1
	mv	a7,a5
.L1112:
	sext.w	t2,a0
	sext.w	a1,a1
	li	a3,32
	li	a4,1
	bgtu	t2,a1,.L1113
	j	.L1139
.L1117:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	t2,a1,.L1115
	beq	a3,zero,.L1129
.L1113:
	addiw	a3,a3,-1
	bge	a1,zero,.L1117
.L1118:
	li	a0,0
.L1123:
	sltu	t1,t2,a1
	xori	a2,t1,1
	subw	a6,t2,a1
	bne	t1,zero,.L1120
	mv	t2,a6
.L1120:
	sext.w	t2,t2
	li	t3,0
	beq	a2,zero,.L1122
	mv	t3,a4
.L1122:
	or	t4,a0,t3
	srliw	a4,a4,1
	sext.w	a0,t4
	srliw	a1,a1,1
	bne	a4,zero,.L1123
.L1125:
	slli	t5,a0,32
	srli	a0,t5,32
.L1116:
	beq	a7,zero,.L1110
	neg	a0,a0
	ret
.L1110:
	ret
.L1115:
	bne	a4,zero,.L1118
.L1129:
	li	a0,0
	j	.L1116
.L1140:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1111
.L1139:
	sltu	t0,t2,a1
	xori	a0,t0,1
	j	.L1125
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
	bge	a0,zero,.L1142
	neg	a0,a0
	li	a6,1
.L1142:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a7,a1,a5
	li	t0,32
	li	t1,1
	bgtu	a0,a7,.L1143
	j	.L1173
.L1147:
	slliw	a7,a7,1
	slliw	t1,t1,1
	bleu	a0,a7,.L1174
	beq	t0,zero,.L1146
.L1143:
	addiw	t0,t0,-1
	bge	a7,zero,.L1147
	j	.L1171
.L1174:
	beq	t1,zero,.L1146
.L1171:
	srliw	t1,t1,1
	subw	a2,a0,a7
	mv	t2,a0
	bltu	a0,a7,.L1150
	mv	t2,a2
.L1150:
	sext.w	a0,t2
	srliw	a7,a7,1
	bne	t1,zero,.L1171
.L1146:
	slli	t3,a0,32
	srli	a0,t3,32
	beq	a6,zero,.L1141
	neg	a0,a0
	ret
.L1141:
	ret
.L1173:
	subw	a3,a0,a7
	mv	a4,a0
	bltu	a0,a7,.L1154
	mv	a4,a3
.L1154:
	sext.w	a0,a4
	j	.L1146
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
	bgeu	a1,a0,.L1359
	slliw	a4,a1,16
	sraiw	a6,a4,16
	slli	t3,a6,32
	blt	t3,zero,.L1180
	slliw	t6,a1,1
	slli	a5,t6,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1253
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1253
	slliw	a0,a1,2
	slli	a4,a0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1255
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1255
	slliw	t5,a1,3
	slli	t6,t5,48
	srli	a5,t6,48
	sext.w	a4,a5
	bleu	a7,a5,.L1257
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1257
	slliw	a5,a1,4
	slli	a0,a5,48
	srli	a5,a0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1259
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1259
	slliw	a4,a1,5
	slli	t5,a4,48
	srli	a5,t5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1261
	slliw	t6,a5,16
	sraiw	t0,t6,16
	slli	t1,t0,32
	blt	t1,zero,.L1261
	slliw	t2,a1,6
	slli	a5,t2,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1263
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1263
	slliw	t4,a1,7
	slli	a4,t4,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1265
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1265
	slliw	t1,a1,8
	slli	t2,t1,48
	srli	a5,t2,48
	sext.w	a4,a5
	bleu	a7,a5,.L1267
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1267
	slliw	a5,a1,9
	slli	t4,a5,48
	srli	a5,t4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1269
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1269
	slliw	a4,a1,10
	slli	t1,a4,48
	srli	a5,t1,48
	sext.w	a4,a5
	bleu	a7,a5,.L1271
	slliw	t2,a5,16
	sraiw	a0,t2,16
	slli	a6,a0,32
	blt	a6,zero,.L1271
	slliw	t3,a1,11
	slli	a5,t3,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1273
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1273
	slliw	t0,a1,12
	slli	a4,t0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1275
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1275
	slliw	a6,a1,13
	slli	t3,a6,48
	srli	a5,t3,48
	sext.w	a4,a5
	bleu	a7,a5,.L1277
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1277
	slliw	a5,a1,14
	slli	t0,a5,48
	srli	a5,t0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1279
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1279
	slliw	a1,a1,15
	slli	t3,a1,48
	srli	t5,t3,48
	bleu	a7,t5,.L1280
	li	a6,32768
	mv	a0,a3
	mv	a5,a6
	mv	a4,a6
	bne	t5,zero,.L1182
.L1183:
	bne	a2,zero,.L1282
.L1372:
	mv	a0,t5
	ret
.L1253:
	li	a6,2
.L1182:
	subw	t4,a3,a5
	slli	t5,t4,48
	srli	t6,t5,48
	bltu	a7,a4,.L1249
	mv	a3,t6
.L1249:
	slli	t0,a3,48
	srli	t2,t0,48
	li	t1,0
	bltu	a7,a4,.L1251
	mv	t1,a6
.L1251:
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
	bltu	t2,a4,.L1185
	mv	a0,t5
.L1185:
	slli	t0,a0,48
	srli	a0,t0,48
	li	t2,0
	bltu	t6,a3,.L1187
	mv	t2,t4
.L1187:
	or	t1,a1,t2
	slli	a1,t1,48
	srli	a7,a6,2
	srli	t5,a1,48
	srli	t4,a5,2
	beq	a7,zero,.L1183
	sext.w	a4,a0
	sext.w	t3,t4
	subw	a3,a0,t4
	sltu	t6,a4,t3
	slli	t0,a3,48
	srli	t2,t0,48
	xori	t1,t6,1
	bne	t6,zero,.L1189
	mv	a0,t2
.L1189:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1191
	mv	a1,a7
.L1191:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,3
	srli	t5,t4,48
	srli	a4,a5,3
	beq	a7,zero,.L1183
	sext.w	t3,a0
	sext.w	t6,a4
	subw	t0,a0,a4
	sltu	a3,t3,t6
	slli	t2,t0,48
	srli	a1,t2,48
	xori	t1,a3,1
	bne	a3,zero,.L1193
	mv	a0,a1
.L1193:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1195
	mv	t4,a7
.L1195:
	or	t5,t5,t4
	slli	a4,t5,48
	srli	a7,a6,4
	srli	t5,a4,48
	srli	t3,a5,4
	beq	a7,zero,.L1183
	sext.w	t6,a0
	sext.w	a3,t3
	subw	t2,a0,t3
	sltu	t0,t6,a3
	slli	a1,t2,48
	srli	t4,a1,48
	xori	t1,t0,1
	bne	t0,zero,.L1197
	mv	a0,t4
.L1197:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a4,0
	beq	t1,zero,.L1199
	mv	a4,a7
.L1199:
	or	t5,t5,a4
	slli	t3,t5,48
	srli	a7,a6,5
	srli	t5,t3,48
	srli	t6,a5,5
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t0,t6
	subw	a1,a0,t6
	sltu	t2,a3,t0
	slli	t4,a1,48
	srli	a4,t4,48
	xori	t1,t2,1
	bne	t2,zero,.L1201
	mv	a0,a4
.L1201:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1203
	mv	t3,a7
.L1203:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,6
	srli	t5,t6,48
	srli	t0,a5,6
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t2,t0
	subw	t4,a0,t0
	sltu	a1,a3,t2
	slli	a4,t4,48
	srli	t3,a4,48
	xori	t1,a1,1
	bne	a1,zero,.L1205
	mv	a0,t3
.L1205:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1207
	mv	t6,a7
.L1207:
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,7
	srli	t5,t0,48
	srli	t2,a5,7
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	a1,t2
	subw	a4,a0,t2
	sltu	t4,a3,a1
	slli	t3,a4,48
	srli	t6,t3,48
	xori	t1,t4,1
	beq	t4,zero,.L1360
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	bne	t1,zero,.L1361
.L1211:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,8
	srli	t5,t2,48
	srli	a1,a5,8
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t4,a1
	subw	a4,a0,a1
	sltu	t3,a3,t4
	slli	t6,a4,48
	srli	t0,t6,48
	xori	t1,t3,1
	beq	t3,zero,.L1362
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	bne	t1,zero,.L1363
.L1215:
	or	t5,t5,t2
	slli	a1,t5,48
	srli	a7,a6,9
	srli	t5,a1,48
	srli	t4,a5,9
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t3,t4
	subw	a4,a0,t4
	sltu	t6,a3,t3
	slli	t0,a4,48
	srli	t2,t0,48
	xori	t1,t6,1
	beq	t6,zero,.L1364
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	bne	t1,zero,.L1365
.L1219:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,10
	srli	t5,t4,48
	srli	t3,a5,10
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t6,t3
	subw	a4,a0,t3
	sltu	t0,a3,t6
	slli	t2,a4,48
	srli	a1,t2,48
	xori	t1,t0,1
	beq	t0,zero,.L1366
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	bne	t1,zero,.L1367
.L1223:
	or	t5,t5,t4
	slli	t3,t5,48
	srli	a7,a6,11
	srli	t5,t3,48
	srli	t6,a5,11
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t0,t6
	subw	a4,a0,t6
	sltu	t2,a3,t0
	slli	a1,a4,48
	srli	t4,a1,48
	xori	t1,t2,1
	beq	t2,zero,.L1368
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	bne	t1,zero,.L1369
.L1227:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,12
	srli	t5,t6,48
	srli	t0,a5,12
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t2,t0
	subw	a4,a0,t0
	sltu	a1,a3,t2
	slli	t4,a4,48
	srli	t3,t4,48
	xori	t1,a1,1
	beq	a1,zero,.L1370
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	bne	t1,zero,.L1371
.L1231:
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	beq	a7,zero,.L1183
.L1373:
	sext.w	a3,a0
	sext.w	a1,t2
	subw	a4,a0,t2
	sltu	t4,a3,a1
	slli	t3,a4,48
	srli	t6,t3,48
	xori	t1,t4,1
	bne	t4,zero,.L1233
	mv	a0,t6
.L1233:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1235
	mv	t0,a7
.L1235:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,14
	srli	t5,t2,48
	srli	a1,a5,14
	beq	a7,zero,.L1183
	sext.w	a3,a0
	sext.w	t4,a1
	subw	a4,a0,a1
	sltu	t3,a3,t4
	slli	t6,a4,48
	srli	t0,t6,48
	xori	t1,t3,1
	bne	t3,zero,.L1237
	mv	a0,t0
.L1237:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1239
	mv	t2,a7
.L1239:
	or	t5,t5,t2
	slli	a1,t5,48
	li	a7,16384
	srli	t5,a1,48
	srli	a5,a5,15
	beq	a6,a7,.L1183
	sext.w	a6,a0
	sext.w	a3,a5
	subw	t3,a0,a5
	sltu	t4,a6,a3
	slli	a4,t3,48
	srli	t6,a4,48
	xori	t0,t4,1
	bne	t4,zero,.L1241
	mv	a0,t6
.L1241:
	slli	t1,a0,48
	srli	a0,t1,48
	or	t5,t0,t5
	beq	a2,zero,.L1372
.L1282:
	ret
.L1361:
	mv	t0,a7
	j	.L1211
.L1360:
	mv	a0,t6
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1211
	j	.L1361
.L1363:
	mv	t2,a7
	j	.L1215
.L1362:
	mv	a0,t0
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1215
	j	.L1363
.L1365:
	mv	a1,a7
	j	.L1219
.L1364:
	mv	a0,t2
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1219
	j	.L1365
.L1367:
	mv	t4,a7
	j	.L1223
.L1366:
	mv	a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1223
	j	.L1367
.L1369:
	mv	t3,a7
	j	.L1227
.L1368:
	mv	a0,t4
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1227
	j	.L1369
.L1371:
	mv	t6,a7
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	bne	a7,zero,.L1373
	j	.L1183
.L1370:
	mv	a0,t3
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1231
	j	.L1371
.L1255:
	li	a6,4
	j	.L1182
.L1257:
	li	a6,8
	j	.L1182
.L1259:
	li	a6,16
	j	.L1182
.L1269:
	li	a6,512
	j	.L1182
.L1261:
	li	a6,32
	j	.L1182
.L1263:
	li	a6,64
	j	.L1182
.L1265:
	li	a6,128
	j	.L1182
.L1267:
	li	a6,256
	j	.L1182
.L1359:
	subw	a1,a0,a1
	slli	t0,a1,48
	srli	t1,t0,48
	bne	a5,a7,.L1178
	mv	a3,t1
.L1178:
	sub	t2,a5,a7
	slli	a0,a3,48
	seqz	t5,t2
	srli	a0,a0,48
	j	.L1183
.L1271:
	li	a6,1024
	j	.L1182
.L1273:
	li	a1,4096
	addi	a6,a1,-2048
	j	.L1182
.L1275:
	li	a6,4096
	j	.L1182
.L1277:
	li	a6,8192
	j	.L1182
.L1279:
	li	a6,16384
	j	.L1182
.L1280:
	li	a5,32768
	mv	a6,a5
	mv	a4,a5
	j	.L1182
.L1180:
	subw	a3,a0,a1
	slli	t4,a3,48
	srli	a0,t4,48
	li	t5,1
	j	.L1183
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
	bltu	a1,a0,.L1375
	j	.L1404
.L1379:
	slli	a1,a1,1
	slli	t4,t4,1
	bleu	a5,a1,.L1377
	beq	a3,zero,.L1378
.L1375:
	and	a0,a1,t0
	addiw	a3,a3,-1
	beq	a0,zero,.L1379
.L1380:
	li	a0,0
.L1385:
	sltu	t1,a5,a1
	xori	t2,t1,1
	neg	a7,t2
	and	t3,t4,a7
	sub	t5,a5,a1
	srli	t4,t4,1
	bne	t1,zero,.L1382
	mv	a5,t5
.L1382:
	or	a0,a0,t3
	srli	a1,a1,1
	bne	t4,zero,.L1385
.L1378:
	bne	a2,zero,.L1406
.L1374:
	ret
.L1377:
	bne	t4,zero,.L1380
	beq	a2,zero,.L1374
.L1406:
	mv	a0,a5
	ret
.L1404:
	sgtu	a4,a1,a0
	sub	a1,a0,a1
	xori	a0,a4,1
	bne	a4,zero,.L1378
	mv	a5,a1
	j	.L1378
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
	beq	a5,zero,.L1408
	addiw	a6,a1,-32
	sllw	a2,a0,a6
	li	a1,0
.L1409:
	slli	a7,a1,32
	srli	t3,a7,32
	slli	t4,a2,32
	or	a0,t3,t4
.L1407:
	ret
.L1408:
	beq	a1,zero,.L1407
	li	t0,32
	subw	t1,t0,a1
	srai	a3,a0,32
	srlw	t2,a0,t1
	sllw	a0,a3,a1
	or	a2,t2,a0
	sllw	a1,a4,a1
	j	.L1409
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
	beq	a5,zero,.L1414
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1414:
	beq	a2,zero,.L1416
	li	t0,64
	subw	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1416:
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
	beq	a4,zero,.L1419
	srai	a6,a0,32
	addiw	a7,a1,-32
	sraw	a1,a6,a7
	sraiw	a3,a6,31
.L1420:
	slli	t3,a1,32
	srli	t4,t3,32
	slli	t5,a3,32
	or	a0,t5,t4
.L1418:
	ret
.L1419:
	beq	a1,zero,.L1418
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	sllw	t2,a0,t1
	srlw	a2,a5,a1
	sraw	a3,a0,a1
	or	a1,t2,a2
	j	.L1420
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
	beq	a5,zero,.L1425
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1425:
	beq	a2,zero,.L1427
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1427:
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
	beq	t4,zero,.L1433
	li	t1,0
.L1433:
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
	blt	a3,a4,.L1438
	li	a0,2
	bgt	a3,a4,.L1437
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1437
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1438:
	li	a0,0
.L1437:
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
	blt	a3,a4,.L1444
	li	a0,1
	bgt	a3,a4,.L1443
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1443
	sgtu	a0,t0,a1
	ret
.L1444:
	li	a0,-1
.L1443:
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
	blt	a1,a3,.L1449
	li	a0,2
	bgt	a1,a3,.L1448
	li	a0,0
	bltu	a5,a2,.L1448
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1449:
	li	a0,0
.L1448:
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
	bne	a0,zero,.L1457
	bne	a1,zero,.L1462
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1457:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1462:
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
	beq	a4,zero,.L1464
	addiw	a7,a1,-32
	srli	a6,a0,32
	srlw	a3,a6,a7
	li	a1,0
.L1465:
	slli	t3,a3,32
	srli	t4,t3,32
	slli	t5,a1,32
	or	a0,t5,t4
.L1463:
	ret
.L1464:
	beq	a1,zero,.L1463
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	srlw	a2,a5,a1
	sllw	t2,a0,t1
	srlw	a1,a0,a1
	or	a3,t2,a2
	j	.L1465
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
	beq	a5,zero,.L1470
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1470:
	beq	a2,zero,.L1472
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1472:
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
	beq	a5,zero,.L1492
	mv	a1,a0
.L1489:
	fmul.d	fa0,fa0,fa5
.L1487:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1488
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1489
.L1493:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1489
	j	.L1493
.L1488:
	blt	a0,zero,.L1494
	ret
.L1492:
	mv	a1,a0
	j	.L1487
.L1494:
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
	beq	a5,zero,.L1501
	mv	a1,a0
.L1498:
	fmul.s	fa0,fa0,fa5
.L1496:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1497
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1498
.L1502:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1498
	j	.L1502
.L1497:
	blt	a0,zero,.L1503
	ret
.L1501:
	mv	a1,a0
	j	.L1496
.L1503:
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
	bltu	a3,a4,.L1506
	li	a0,2
	bgtu	a3,a4,.L1505
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1505
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1506:
	li	a0,0
.L1505:
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
	bltu	a3,a4,.L1512
	li	a0,1
	bgtu	a3,a4,.L1511
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1511
	sgtu	a0,t0,a1
	ret
.L1512:
	li	a0,-1
.L1511:
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
	bltu	a1,a3,.L1517
	li	a0,2
	bgtu	a1,a3,.L1516
	li	a0,0
	bltu	a5,a2,.L1516
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1517:
	li	a0,0
.L1516:
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
	.set	.LC7,.LC9+4
	.section	.srodata.cst4
	.align	2
.LC8:
	.word	1056964608
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1073741824
	.align	3
.LC10:
	.word	0
	.word	1071644672
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
