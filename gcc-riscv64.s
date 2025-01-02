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
	add	a2,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L77
.L79:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L76
.L77:
	mv	a0,a2
	bne	a2,a4,.L79
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
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L87
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
	mv	a5,a0
.L117:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L117
	sub	a0,a5,a0
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
	mv	a1,a2
.L124:
	lbu	a4,0(a1)
	addi	a2,a1,1
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
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
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
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L161
.L157:
	ret
.L158:
	li	a0,1
	ret
.L161:
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a5,a4
	bleu	a4,a0,.L157
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
	bleu	a0,a4,.L170
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L165
	li	a4,-8192
	addiw	a4,a4,-42
	li	a3,45056
	addw	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L165
	li	a3,-57344
	li	a4,8192
	addw	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L165
	li	a4,-65536
	addiw	a4,a4,4
	li	a3,1048576
	addw	a4,a5,a4
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L165
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L165:
	ret
.L170:
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
	bleu	a4,a5,.L173
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
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
	feq.d	a5,fa1,fa1
	beq	a5,zero,.L179
	fgt.d	a5,fa0,fa1
	beq	a5,zero,.L183
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
	feq.s	a5,fa1,fa1
	beq	a5,zero,.L188
	fgt.s	a5,fa0,fa1
	beq	a5,zero,.L192
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
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L199
	srli	a3,a5,63
	srli	a2,a4,63
	bne	a3,a2,.L202
	flt.d	a3,fa0,fa1
	beq	a3,zero,.L193
.L198:
	fmv.d.x	fa0,a4
	ret
.L202:
	fmv.d	fa0,fa1
	beq	a3,zero,.L199
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
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L209
	li	a3,-2147483648
	and	a2,a3,a5
	and	a3,a3,a4
	sext.w	a2,a2
	sext.w	a3,a3
	bne	a2,a3,.L212
	flt.s	a3,fa0,fa1
	beq	a3,zero,.L203
.L208:
	fmv.s.x	fa0,a4
	ret
.L212:
	fmv.s	fa0,fa1
	beq	a2,zero,.L209
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
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L232
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L228
	bne	a3,zero,.L226
.L231:
	fmv.d.x	fa0,a4
	ret
.L228:
	flt.d	a3,fa0,fa1
	fmv.d	fa0,fa1
	bne	a3,zero,.L232
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
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L241
	li	a3,-2147483648
	and	a2,a3,a5
	and	a3,a3,a4
	sext.w	a2,a2
	sext.w	a3,a3
	beq	a2,a3,.L237
	bne	a2,zero,.L235
.L240:
	fmv.s.x	fa0,a4
	ret
.L237:
	flt.s	a3,fa0,fa1
	fmv.s	fa0,fa1
	bne	a3,zero,.L241
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
	addi	a2,a2,%lo(.LANCHOR0)
.L259:
	andi	a4,a5,63
	add	a4,a2,a4
	lbu	a4,0(a4)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	a4,-1(a3)
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
	beq	a1,zero,.L270
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L264
	sd	a0,8(a5)
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
	ld	a4,8(a0)
	beq	a4,zero,.L271
	sd	a5,0(a4)
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
	mul	s5,s2,s3
	addi	s3,s3,1
	sd	s3,0(s7)
	add	s5,s8,s5
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
	li	a5,43
	beq	a4,a5,.L317
	li	a5,45
	bne	a4,a5,.L334
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	bgtu	a4,a5,.L327
	li	a7,1
.L320:
	li	a0,0
	li	a1,9
.L324:
	slliw	a5,a0,2
	lbu	a2,1(a3)
	addw	a5,a5,a0
	slliw	a5,a5,1
	subw	a0,a5,a4
	mv	a6,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L324
	bne	a7,zero,.L323
	subw	a0,a6,a5
	ret
.L316:
	addi	a0,a0,1
	j	.L322
.L334:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L327
	mv	a3,a0
	addiw	a4,a4,-48
	li	a7,0
	j	.L320
.L317:
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	li	a7,0
	bleu	a4,a5,.L320
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
	li	a5,43
	beq	a4,a5,.L337
	li	a5,45
	bne	a4,a5,.L354
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	bgtu	a4,a5,.L347
	li	a7,1
.L340:
	li	a0,0
	li	a1,9
.L344:
	slli	a5,a0,2
	lbu	a2,1(a3)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a4
	mv	a6,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L344
	bne	a7,zero,.L335
	sub	a0,a6,a5
	ret
.L336:
	addi	a0,a0,1
	j	.L342
.L354:
	addiw	a1,a1,-48
	li	a5,9
	bgtu	a1,a5,.L347
	mv	a3,a0
	addiw	a4,a4,-48
	li	a7,0
	j	.L340
.L337:
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	li	a7,0
	bleu	a4,a5,.L340
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
	li	a5,43
	beq	a4,a5,.L357
	li	a5,45
	bne	a4,a5,.L375
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	li	a7,1
	bgtu	a4,a5,.L367
.L361:
	li	a0,0
	li	a1,9
.L364:
	slli	a5,a0,2
	lbu	a2,1(a3)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a4
	mv	a6,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L364
	bne	a7,zero,.L355
	sub	a0,a6,a5
	ret
.L356:
	addi	a0,a0,1
	j	.L360
.L375:
	addiw	a1,a1,-48
	li	a5,9
	mv	a3,a0
	addiw	a4,a4,-48
	bgtu	a1,a5,.L367
.L374:
	li	a7,0
	j	.L361
.L357:
	lbu	a4,1(a0)
	li	a5,9
	addi	a3,a0,1
	addiw	a4,a4,-48
	bleu	a4,a5,.L374
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
	mv	a5,a0
.L448:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L448
	sub	a0,a5,a0
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
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L465
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
	addi	a5,a2,-1
	bltu	a7,a6,.L504
	beq	a2,zero,.L532
	li	a6,8
	bleu	a5,a6,.L514
	or	a6,a1,a0
	andi	a6,a6,7
	bne	a6,zero,.L533
	addi	a6,a1,4
	beq	a0,a6,.L515
	srli	a7,a2,1
	li	a5,0
.L509:
	ld	a6,0(a3)
	addi	a5,a5,1
	addi	a3,a3,8
	sd	a6,0(a4)
	addi	a4,a4,8
	bne	a7,a5,.L509
	andi	a5,a2,1
	beq	a5,zero,.L520
	andi	a2,a2,-2
	slli	a2,a2,2
	add	a1,a1,a2
	lw	a5,0(a1)
	add	a2,a0,a2
	sw	a5,0(a2)
	ret
.L514:
	addi	a6,a1,4
.L508:
	li	a2,-1
	j	.L512
.L534:
	addi	a6,a6,4
.L512:
	lw	a3,-4(a6)
	addi	a5,a5,-1
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a2,.L534
.L520:
	ret
.L504:
	beq	a2,zero,.L520
	slli	a5,a5,2
	li	a2,-4
.L507:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L507
	ret
.L532:
	ret
.L533:
	addi	a6,a1,4
.L515:
	mv	a4,a0
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
	andi	a5,a5,1
	bleu	a7,a4,.L541
	mv	t1,a0
	beq	a5,zero,.L538
	sw	a1,0(a0)
	addi	t1,a0,4
	addi	a7,a2,-2
.L538:
	slli	a3,a1,32
	sub	a2,a2,a5
	slli	a4,a1,32
	srli	a3,a3,32
	slli	a5,a5,2
	or	a3,a3,a4
	add	a5,a0,a5
	srli	a6,a2,1
	li	a4,0
.L539:
	sd	a3,0(a5)
	addi	a4,a4,1
	addi	a5,a5,8
	bne	a4,a6,.L539
	andi	a5,a2,1
	beq	a5,zero,.L536
	andi	a2,a2,-2
	slli	a5,a2,2
	sub	a7,a7,a2
	add	a5,t1,a5
.L537:
	sw	a1,0(a5)
	beq	a7,zero,.L536
	sw	a1,4(a5)
	li	a4,1
	beq	a7,a4,.L536
	sw	a1,8(a5)
	li	a4,2
	beq	a7,a4,.L536
	sw	a1,12(a5)
	li	a4,3
	beq	a7,a4,.L536
	sw	a1,16(a5)
	li	a4,4
	beq	a7,a4,.L536
	sw	a1,20(a5)
.L536:
	ret
.L541:
	mv	a5,a0
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
	add	a5,a0,a2
	beq	a2,zero,.L554
.L557:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L557
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
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L581
	addi	a5,a0,1
	sub	a4,a1,a5
	sltiu	a4,a4,7
	bne	a4,zero,.L558
	andi	a6,a2,-8
	add	a3,a0,a6
	mv	a5,a1
.L559:
	ld	a4,0(a0)
	addi	a0,a0,8
	addi	a5,a5,8
	sd	a4,-8(a5)
	bne	a3,a0,.L559
	add	a1,a1,a6
	sub	a5,a2,a6
	beq	a2,a6,.L554
	lbu	a2,0(a3)
	li	a4,1
	sb	a2,0(a1)
	beq	a5,a4,.L554
	lbu	a2,1(a3)
	li	a4,2
	sb	a2,1(a1)
	beq	a5,a4,.L554
	lbu	a2,2(a3)
	li	a4,3
	sb	a2,2(a1)
	beq	a5,a4,.L554
	lbu	a2,3(a3)
	li	a4,4
	sb	a2,3(a1)
	beq	a5,a4,.L554
	lbu	a2,4(a3)
	li	a4,5
	sb	a2,4(a1)
	beq	a5,a4,.L554
	lbu	a2,5(a3)
	li	a4,6
	sb	a2,5(a1)
	beq	a5,a4,.L554
	lbu	a5,6(a3)
	sb	a5,6(a1)
	ret
.L581:
	addi	a5,a0,1
.L558:
	add	a0,a0,a2
	j	.L562
.L584:
	addi	a5,a5,1
.L562:
	lbu	a4,-1(a5)
	addi	a1,a1,1
	sb	a4,-1(a1)
	bne	a5,a0,.L584
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
	j	.L601
.L599:
	beq	a5,a3,.L603
.L601:
	srlw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L599
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
	flt.s	a5,fa0,fa5
	bne	a5,zero,.L611
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a0,fa0,fa5
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
	flt.d	a5,fa0,fa5
	bne	a5,zero,.L615
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a0,fa0,fa5
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
	slli	a3,a3,48
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	addi	a3,a3,-1
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
	li	a3,134213632
	slli	a3,a3,36
	mv	a0,s1
	mv	a1,s0
	addi	a3,a3,-1
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
	feq.s	a5,fa5,fa0
	bne	a5,zero,.L626
	blt	a0,zero,.L639
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
.L627:
	andi	a5,a0,1
	beq	a5,zero,.L628
.L629:
	fmul.s	fa0,fa0,fa5
.L628:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L626
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L629
.L640:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.s	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L629
	j	.L640
.L626:
	ret
.L639:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
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
	feq.d	a5,fa5,fa0
	bne	a5,zero,.L642
	blt	a0,zero,.L655
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
.L643:
	andi	a5,a0,1
	beq	a5,zero,.L644
.L645:
	fmul.d	fa0,fa0,fa5
.L644:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L642
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L645
.L656:
	sraiw	a0,a5,1
	srliw	a5,a0,31
	andi	a4,a0,1
	fmul.d	fa5,fa5,fa5
	addw	a5,a5,a0
	bne	a4,zero,.L645
	j	.L656
.L642:
	ret
.L655:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
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
	li	s1,33550336
	slli	s1,s1,37
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
	srliw	a5,s0,31
	addw	s0,a5,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L673
.L663:
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
	bne	a4,zero,.L662
	sraiw	s0,a5,1
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
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L676
	andi	a7,a2,-8
	add	a6,a1,a7
	mv	a5,a0
.L677:
	ld	a3,0(a5)
	ld	a4,0(a1)
	addi	a1,a1,8
	addi	a5,a5,8
	xor	a4,a4,a3
	sd	a4,-8(a5)
	bne	a6,a1,.L677
	add	a5,a0,a7
	sub	a4,a2,a7
	beq	a2,a7,.L675
	lbu	a3,0(a5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a3,a3,a1
	sb	a3,0(a5)
	beq	a4,a2,.L675
	lbu	a1,1(a5)
	lbu	a3,1(a6)
	li	a2,2
	xor	a3,a3,a1
	sb	a3,1(a5)
	beq	a4,a2,.L675
	lbu	a1,2(a5)
	lbu	a3,2(a6)
	li	a2,3
	xor	a3,a3,a1
	sb	a3,2(a5)
	beq	a4,a2,.L675
	lbu	a1,3(a5)
	lbu	a3,3(a6)
	li	a2,4
	xor	a3,a3,a1
	sb	a3,3(a5)
	beq	a4,a2,.L675
	lbu	a1,4(a5)
	lbu	a3,4(a6)
	li	a2,5
	xor	a3,a3,a1
	sb	a3,4(a5)
	beq	a4,a2,.L675
	lbu	a1,5(a5)
	lbu	a3,5(a6)
	li	a2,6
	xor	a3,a3,a1
	sb	a3,5(a5)
	beq	a4,a2,.L675
	lbu	a3,6(a5)
	lbu	a4,6(a6)
	xor	a4,a4,a3
	sb	a4,6(a5)
	ret
.L676:
	add	a2,a1,a2
	mv	a5,a0
.L679:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L679
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
	mv	a5,a0
.L688:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L688
.L701:
	beq	a2,zero,.L690
.L703:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L702
	addi	a5,a5,1
	bne	a2,zero,.L703
.L690:
	sb	zero,0(a5)
	ret
.L702:
	ret
.L693:
	mv	a5,a0
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
	lbu	a4,0(a4)
	bne	a4,zero,.L707
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
	li	a0,0
.L727:
	lbu	a4,0(a5)
	bne	a1,a4,.L726
	mv	a0,a5
.L726:
	addi	a5,a5,1
	bne	a4,zero,.L727
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
	beq	a7,zero,.L742
	mv	a5,a1
.L731:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L731
	sub	t3,a5,a1
	mv	a0,a3
	addi	t3,t3,-1
	bne	a5,a1,.L749
	ret
.L751:
	addi	a3,a3,1
	beq	a5,zero,.L750
.L749:
	lbu	a5,0(a3)
	bne	a5,a7,.L751
	add	t1,a3,t3
	mv	a0,a1
	mv	a4,a3
	mv	a2,a7
.L733:
	beq	a4,t1,.L735
	addi	a4,a4,1
	bne	a5,a2,.L736
	lbu	a5,0(a4)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	a5,zero,.L735
	mv	a0,a6
	bne	a2,zero,.L733
.L736:
	addi	a3,a3,1
	j	.L749
.L750:
	li	a0,0
	ret
.L735:
	bne	a5,a2,.L736
.L742:
	mv	a0,a3
.L729:
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
	bne	a5,zero,.L765
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L756
	flt.d	a5,fa1,fa5
	bne	a5,zero,.L755
.L756:
	ret
.L755:
	fneg.d	fa0,fa0
	ret
.L765:
	fgt.d	a5,fa1,fa5
	bne	a5,zero,.L755
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
	beq	a3,zero,.L766
	bltu	a1,a3,.L777
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L777
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L772:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L782
	mv	a0,t1
.L768:
	bgeu	a7,a0,.L772
.L777:
	li	a0,0
.L766:
	ret
.L782:
	mv	a4,a2
	beq	a3,zero,.L766
.L771:
	mv	a5,t1
	add	t3,t1,a3
	j	.L769
.L770:
	beq	a5,t3,.L766
.L769:
	lbu	a6,0(a5)
	lbu	a1,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a6,a1,.L770
	bgtu	t1,a7,.L777
	lbu	a5,0(t1)
	addi	a0,t1,1
	bne	a5,t4,.L768
	mv	a5,t1
	mv	a4,a2
	mv	t1,a0
	mv	a0,a5
	j	.L771
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
	beq	a2,zero,.L784
	call	memmove
.L784:
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
	bne	a5,zero,.L816
	lui	a5,%hi(.LC15)
	fld	fa4,%lo(.LC15)(a5)
	li	a3,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L817
.L792:
	lui	a4,%hi(.LC10)
	fld	fa4,%lo(.LC10)(a4)
	fld	fa5,%lo(.LC15)(a5)
	li	a5,0
.L798:
	fmul.d	fa0,fa0,fa4
	addiw	a5,a5,1
	fge.d	a4,fa0,fa5
	bne	a4,zero,.L798
	sw	a5,0(a0)
	beq	a3,zero,.L789
.L819:
	fneg.d	fa0,fa0
.L789:
	ret
.L817:
	lui	a5,%hi(.LC10)
	fld	fa4,%lo(.LC10)(a5)
	flt.d	a4,fa0,fa4
	beq	a4,zero,.L795
	feq.d	a4,fa0,fa5
	beq	a4,zero,.L804
.L795:
	sw	zero,0(a0)
	ret
.L816:
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fneg.d	fa4,fa0
	fle.d	a5,fa0,fa5
	beq	a5,zero,.L818
	fmv.d	fa0,fa4
	li	a3,1
	lui	a5,%hi(.LC15)
	j	.L792
.L818:
	lui	a5,%hi(.LC14)
	fld	fa5,%lo(.LC14)(a5)
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L795
	li	a3,1
	lui	a5,%hi(.LC10)
.L793:
	fmv.d	fa0,fa4
	fld	fa5,%lo(.LC10)(a5)
	li	a5,0
.L800:
	fadd.d	fa0,fa0,fa0
	addiw	a5,a5,-1
	flt.d	a4,fa0,fa5
	bne	a4,zero,.L800
	sw	a5,0(a0)
	bne	a3,zero,.L819
	ret
.L804:
	fmv.d	fa4,fa0
	j	.L793
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
	beq	a4,zero,.L823
.L822:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L822
	ret
.L823:
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
	bltu	a1,a4,.L826
	j	.L827
.L830:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L828
	beq	a0,zero,.L829
.L826:
	addiw	a0,a0,-1
	bge	a1,zero,.L830
.L827:
	li	a0,0
.L832:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L831
	subw	a4,a4,a1
	sext.w	a0,a3
.L831:
	srliw	a1,a1,1
	bne	a5,zero,.L832
.L829:
	bne	a2,zero,.L843
.L833:
	ret
.L828:
	bne	a5,zero,.L827
	li	a0,0
	beq	a2,zero,.L833
.L843:
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
	beq	a0,zero,.L846
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
.L846:
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
	beq	a5,a4,.L853
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
.L853:
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
	beq	a4,zero,.L861
.L860:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L860
	ret
.L861:
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
	bltu	a0,a1,.L867
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L898
.L867:
	beq	a6,zero,.L899
	slli	a6,a6,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L870:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L870
	bleu	a2,t1,.L863
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L872
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L872
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L872
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L873:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L873
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L863
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L863
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L863
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L863
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L863
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L863
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L863
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L898:
	addiw	a5,a2,-1
	beq	a2,zero,.L900
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L877:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L877
.L863:
	ret
.L899:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L901
.L872:
	mv	a5,a3
.L875:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bltu	a4,a2,.L875
	ret
.L901:
	ret
.L900:
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
	bltu	a0,a1,.L906
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L928
.L906:
	beq	t1,zero,.L905
	addiw	a5,t1,-1
	li	a4,6
	bleu	a5,a4,.L909
	or	a5,a1,a0
	andi	a5,a5,7
	bne	a5,zero,.L909
	addi	a5,a1,2
	sub	a5,a0,a5
	sltiu	a5,a5,5
	bne	a5,zero,.L909
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L910:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L910
	slliw	a5,a7,2
	beq	t1,a5,.L905
	slli	a4,a5,1
	add	a3,a1,a4
	lh	a6,0(a3)
	add	a3,a0,a4
	addiw	a4,a5,1
	sh	a6,0(a3)
	bleu	t1,a4,.L905
	slli	a3,a4,32
	srli	a4,a3,31
	add	a3,a1,a4
	lh	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,2
	sh	a3,0(a4)
	bleu	t1,a5,.L905
	slli	a5,a5,32
	srli	a5,a5,31
	add	a4,a1,a5
	lh	a4,0(a4)
	add	a5,a0,a5
	sh	a4,0(a5)
.L905:
	andi	a5,a2,1
	beq	a5,zero,.L902
.L930:
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	lbu	a5,0(a1)
	add	a2,a0,a2
	sb	a5,0(a2)
	ret
.L928:
	addiw	a5,a2,-1
	beq	a2,zero,.L929
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L915:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L915
.L902:
	ret
.L909:
	slli	t1,t1,1
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L912:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,t1,.L912
	andi	a5,a2,1
	beq	a5,zero,.L902
	j	.L930
.L929:
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
	bltu	a0,a1,.L936
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L971
.L936:
	beq	t3,zero,.L972
	addiw	a5,t3,-1
	li	a4,8
	bleu	a5,a4,.L938
	or	a5,a0,a1
	andi	a5,a5,7
	bne	a5,zero,.L938
	addi	a5,a1,4
	beq	a0,a5,.L938
	srliw	a7,a2,3
	slli	a6,a7,3
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L939:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L939
	slliw	a7,a7,1
	beq	t3,a7,.L942
	slli	a7,a7,2
	add	a5,a1,a7
	lw	a5,0(a5)
	add	a7,a0,a7
	sw	a5,0(a7)
.L942:
	bleu	a2,t1,.L931
	subw	a7,a2,t1
	slli	a3,t1,32
	addiw	a4,a7,-1
	li	a5,7
	srli	a3,a3,32
	bleu	a4,a5,.L934
	addi	a6,a3,1
	add	a6,a1,a6
	add	a4,a0,a3
	sub	a6,a4,a6
	sltiu	a6,a6,7
	add	a5,a1,a3
	bne	a6,zero,.L934
	or	a6,a5,a4
	andi	a6,a6,7
	bne	a6,zero,.L934
	srliw	a6,a7,3
	slli	a6,a6,3
	add	a6,a5,a6
.L943:
	ld	a3,0(a5)
	addi	a5,a5,8
	addi	a4,a4,8
	sd	a3,-8(a4)
	bne	a5,a6,.L943
	andi	a5,a7,-8
	andi	a7,a7,7
	addw	a5,a5,t1
	beq	a7,zero,.L931
	slli	a3,a5,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,1
	sb	a6,0(a3)
	bleu	a2,a4,.L931
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,2
	sb	a6,0(a4)
	bleu	a2,a3,.L931
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,3
	sb	a6,0(a3)
	bleu	a2,a4,.L931
	slli	a4,a4,32
	srli	a4,a4,32
	add	a6,a1,a4
	lbu	a6,0(a6)
	add	a4,a0,a4
	addiw	a3,a5,4
	sb	a6,0(a4)
	bleu	a2,a3,.L931
	slli	a3,a3,32
	srli	a3,a3,32
	add	a6,a1,a3
	lbu	a6,0(a6)
	add	a3,a0,a3
	addiw	a4,a5,5
	sb	a6,0(a3)
	bleu	a2,a4,.L931
	slli	a4,a4,32
	srli	a4,a4,32
	add	a3,a1,a4
	lbu	a3,0(a3)
	add	a4,a0,a4
	addiw	a5,a5,6
	sb	a3,0(a4)
	bleu	a2,a5,.L931
	slli	a5,a5,32
	srli	a5,a5,32
	add	a1,a1,a5
	lbu	a4,0(a1)
	add	a5,a0,a5
	sb	a4,0(a5)
	ret
.L971:
	addiw	a5,a2,-1
	beq	a2,zero,.L973
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L947:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L947
.L931:
	ret
.L938:
	slli	t3,t3,2
	add	t3,t3,a1
	mv	a5,a1
	mv	a4,a0
.L941:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t3,.L941
	j	.L942
.L972:
	slli	a3,t1,32
	srli	a3,a3,32
	beq	a2,zero,.L974
.L934:
	mv	a5,a3
.L945:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bgtu	a2,a4,.L945
	ret
.L974:
	ret
.L973:
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
	bne	a3,zero,.L984
	sraiw	a0,a5,14
	bne	a0,zero,.L983
	sraiw	a3,a5,13
	bne	a3,zero,.L985
	sraiw	a3,a5,12
	bne	a3,zero,.L986
	sraiw	a3,a5,11
	bne	a3,zero,.L987
	sraiw	a3,a5,10
	bne	a3,zero,.L988
	sraiw	a3,a5,9
	bne	a3,zero,.L989
	sraiw	a3,a5,8
	bne	a3,zero,.L990
	sraiw	a3,a5,7
	bne	a3,zero,.L991
	sraiw	a3,a5,6
	bne	a3,zero,.L992
	sraiw	a3,a5,5
	bne	a3,zero,.L993
	sraiw	a3,a5,4
	bne	a3,zero,.L994
	sraiw	a3,a5,3
	bne	a3,zero,.L995
	sraiw	a3,a5,2
	bne	a3,zero,.L996
	sraiw	a5,a5,1
	bne	a5,zero,.L997
	seqz	a4,a4
	addi	a0,a4,15
	ret
.L997:
	li	a0,14
.L983:
	ret
.L984:
	li	a0,0
	ret
.L995:
	li	a0,12
	ret
.L985:
	li	a0,2
	ret
.L986:
	li	a0,3
	ret
.L987:
	li	a0,4
	ret
.L988:
	li	a0,5
	ret
.L989:
	li	a0,6
	ret
.L990:
	li	a0,7
	ret
.L991:
	li	a0,8
	ret
.L992:
	li	a0,9
	ret
.L993:
	li	a0,10
	ret
.L994:
	li	a0,11
	ret
.L996:
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
	bne	a5,zero,.L1002
	andi	a5,a0,2
	bne	a5,zero,.L1003
	andi	a5,a0,4
	bne	a5,zero,.L1004
	andi	a5,a0,8
	bne	a5,zero,.L1005
	andi	a5,a0,16
	bne	a5,zero,.L1006
	andi	a5,a0,32
	bne	a5,zero,.L1007
	andi	a5,a0,64
	bne	a5,zero,.L1008
	andi	a5,a0,128
	bne	a5,zero,.L1009
	andi	a5,a0,256
	bne	a5,zero,.L1010
	andi	a5,a0,512
	bne	a5,zero,.L1011
	andi	a5,a0,1024
	bne	a5,zero,.L1012
	slli	a4,a0,52
	li	a5,4096
	blt	a4,zero,.L1013
	and	a5,a0,a5
	bne	a5,zero,.L1014
	slli	a5,a0,50
	blt	a5,zero,.L1015
	slli	a5,a0,49
	blt	a5,zero,.L1016
	sraiw	a0,a0,15
	seqz	a0,a0
	addi	a0,a0,15
	ret
.L1002:
	li	a0,0
	ret
.L1003:
	li	a0,1
	ret
.L1014:
	li	a0,12
	ret
.L1004:
	li	a0,2
	ret
.L1005:
	li	a0,3
	ret
.L1006:
	li	a0,4
	ret
.L1007:
	li	a0,5
	ret
.L1008:
	li	a0,6
	ret
.L1009:
	li	a0,7
	ret
.L1010:
	li	a0,8
	ret
.L1011:
	li	a0,9
	ret
.L1012:
	li	a0,10
	ret
.L1013:
	li	a0,11
	ret
.L1015:
	li	a0,13
	ret
.L1016:
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
	fge.s	a5,fa0,fa5
	bne	a5,zero,.L1025
	fcvt.l.s a0,fa0,rtz
	ret
.L1025:
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
	beq	a4,zero,.L1031
.L1030:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L1030
	ret
.L1031:
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
	beq	a4,zero,.L1036
	beq	a1,zero,.L1037
.L1035:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	srliw	a1,a1,1
	addw	a0,a5,a0
	slliw	a4,a4,1
	bne	a1,zero,.L1035
	ret
.L1036:
	ret
.L1037:
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
	bltu	a1,a4,.L1040
	j	.L1041
.L1044:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L1042
	beq	a0,zero,.L1043
.L1040:
	addiw	a0,a0,-1
	bge	a1,zero,.L1044
.L1041:
	li	a0,0
.L1046:
	or	a3,a5,a0
	srliw	a5,a5,1
	bltu	a4,a1,.L1045
	subw	a4,a4,a1
	sext.w	a0,a3
.L1045:
	srliw	a1,a1,1
	bne	a5,zero,.L1046
.L1043:
	bne	a2,zero,.L1057
.L1047:
	ret
.L1042:
	bne	a5,zero,.L1041
	li	a0,0
	beq	a2,zero,.L1047
.L1057:
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
	bne	a5,zero,.L1059
	fgt.s	a0,fa0,fa1
.L1059:
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
	bne	a5,zero,.L1063
	fgt.d	a0,fa0,fa1
.L1063:
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
	blt	a1,zero,.L1082
	beq	a1,zero,.L1074
	li	a2,0
.L1070:
	li	a4,32
	li	a0,0
	j	.L1073
.L1083:
	beq	a4,zero,.L1072
.L1073:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	addiw	a4,a4,-1
	sraiw	a1,a1,1
	andi	a4,a4,0xff
	addw	a0,a5,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1083
.L1072:
	beq	a2,zero,.L1071
	negw	a0,a0
	ret
.L1074:
	li	a0,0
.L1071:
	ret
.L1082:
	negw	a1,a1
	li	a2,1
	j	.L1070
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
	blt	a0,zero,.L1105
.L1085:
	bge	a1,zero,.L1086
	neg	a1,a1
	mv	a2,a5
.L1086:
	sext.w	a4,a0
	sext.w	a1,a1
	li	a3,32
	li	a5,1
	bgtu	a4,a1,.L1087
	j	.L1088
.L1091:
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L1089
	beq	a3,zero,.L1098
.L1087:
	addiw	a3,a3,-1
	bge	a1,zero,.L1091
.L1088:
	li	a0,0
.L1093:
	bltu	a4,a1,.L1092
	subw	a4,a4,a1
	or	a0,a5,a0
.L1092:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L1093
	slli	a0,a0,32
	srli	a0,a0,32
.L1090:
	beq	a2,zero,.L1084
	neg	a0,a0
.L1084:
	ret
.L1089:
	bne	a5,zero,.L1088
.L1098:
	li	a0,0
	j	.L1090
.L1105:
	neg	a0,a0
	li	a5,0
	li	a2,1
	j	.L1085
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
	bge	a0,zero,.L1107
	neg	a0,a0
	li	a2,1
.L1107:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a5,a1,a5
	li	a3,32
	li	a4,1
	bgtu	a0,a5,.L1108
	j	.L1129
.L1112:
	slliw	a5,a5,1
	slliw	a4,a4,1
	bleu	a0,a5,.L1131
	beq	a3,zero,.L1111
.L1108:
	addiw	a3,a3,-1
	bge	a5,zero,.L1112
	j	.L1129
.L1113:
	srliw	a5,a5,1
.L1131:
	beq	a4,zero,.L1111
.L1129:
	srliw	a4,a4,1
	bltu	a0,a5,.L1113
	subw	a0,a0,a5
	srliw	a5,a5,1
	j	.L1131
.L1111:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L1106
	neg	a0,a0
.L1106:
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
	bgeu	a1,a0,.L1247
	slliw	a5,a1,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	blt	a4,zero,.L1135
	slliw	a5,a1,1
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1136
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1137
	slliw	a5,a1,2
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1138
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1139
	slliw	a5,a1,3
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1140
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1141
	slliw	a5,a1,4
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1142
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1143
	slliw	a5,a1,5
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1144
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1145
	slliw	a5,a1,6
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1146
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1147
	slliw	a5,a1,7
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1148
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1149
	slliw	a5,a1,8
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1150
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1151
	slliw	a5,a1,9
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1152
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1153
	slliw	a5,a1,10
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1154
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1155
	slliw	a5,a1,11
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1156
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1157
	slliw	a5,a1,12
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1158
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1159
	slliw	a5,a1,13
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1160
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1161
	slliw	a5,a1,14
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a3,a5,.L1162
	slliw	a4,a5,16
	sraiw	a4,a4,16
	slli	a6,a4,32
	blt	a6,zero,.L1163
	slliw	a1,a1,15
	slli	a1,a1,48
	srli	a1,a1,48
	bleu	a3,a1,.L1164
	bne	a1,zero,.L1248
.L1165:
	bne	a2,zero,.L1204
	mv	a0,a1
	ret
.L1204:
	ret
.L1152:
	bltu	a3,a4,.L1198
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
.L1167:
	srli	a6,a3,2
	srli	a4,a5,2
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1168
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1168:
	srli	a6,a3,3
	srli	a4,a5,3
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1169
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1169:
	srli	a6,a3,4
	srli	a4,a5,4
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1170
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1170:
	srli	a6,a3,5
	srli	a4,a5,5
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1171
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1171:
	srli	a6,a3,6
	srli	a4,a5,6
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1172
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1172:
	srli	a6,a3,7
	srli	a4,a5,7
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1173
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1173:
	srli	a6,a3,8
	srli	a4,a5,8
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1174
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1174:
	srli	a6,a3,9
	srli	a4,a5,9
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1175
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1175:
	srli	a6,a3,10
	srli	a4,a5,10
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1176
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1176:
	srli	a6,a3,11
	srli	a4,a5,11
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1177
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1177:
	srli	a6,a3,12
	srli	a4,a5,12
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1178
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1178:
	srli	a6,a3,13
	srli	a4,a5,13
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1179
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1179:
	srli	a6,a3,14
	srli	a4,a5,14
	beq	a6,zero,.L1165
	sext.w	a7,a0
	bltu	a7,a4,.L1180
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a6
.L1180:
	li	a4,16384
	srli	a5,a5,15
	beq	a3,a4,.L1165
	sext.w	a4,a0
	bltu	a4,a5,.L1188
	subw	a5,a0,a5
	slli	a0,a5,48
	srli	a0,a0,48
	ori	a1,a1,1
	j	.L1165
.L1248:
	li	a5,-32768
	addw	a3,a0,a5
	slli	a0,a3,48
	li	a5,32768
	li	a4,16384
	srli	a0,a0,48
	mv	a7,a4
	mv	a3,a5
	mv	a1,a5
.L1185:
	sext.w	a6,a0
	bltu	a6,a4,.L1167
	subw	a4,a0,a4
	slli	a0,a4,48
	srli	a0,a0,48
	or	a1,a1,a7
	j	.L1167
.L1188:
	li	a0,0
	j	.L1165
.L1247:
	li	a1,0
	bne	a5,a3,.L1165
	li	a1,1
	li	a0,0
	j	.L1165
.L1135:
	subw	a0,a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,1
	j	.L1165
.L1136:
	bltu	a3,a4,.L1190
	subw	a0,a0,a5
	li	a3,2
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1137:
	subw	a0,a0,a5
	slli	a1,a1,49
	li	a3,2
	slli	a0,a0,48
	srli	a4,a1,49
	srli	a0,a0,48
	mv	a1,a3
	li	a7,1
	j	.L1185
.L1138:
	bltu	a3,a4,.L1191
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1139:
	subw	a0,a0,a5
	li	a3,4
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,2
	j	.L1185
.L1140:
	bltu	a3,a4,.L1192
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1141:
	subw	a0,a0,a5
	li	a3,8
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4
	j	.L1185
.L1142:
	bltu	a3,a4,.L1193
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1143:
	subw	a0,a0,a5
	li	a3,16
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8
	j	.L1185
.L1144:
	bltu	a3,a4,.L1194
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1145:
	subw	a0,a0,a5
	li	a3,32
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,16
	j	.L1185
.L1146:
	bltu	a3,a4,.L1195
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1147:
	subw	a0,a0,a5
	li	a3,64
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,32
	j	.L1185
.L1148:
	bltu	a3,a4,.L1196
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1149:
	subw	a0,a0,a5
	li	a3,128
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,64
	j	.L1185
.L1151:
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,128
	j	.L1185
.L1153:
	subw	a0,a0,a5
	li	a3,512
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,256
	j	.L1185
.L1190:
	li	a3,2
.L1184:
	srli	a7,a3,1
	srli	a4,a5,1
	li	a1,0
	j	.L1185
.L1155:
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,512
	j	.L1185
.L1191:
	li	a3,4
	j	.L1184
.L1157:
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,1024
	j	.L1185
.L1159:
	li	a7,4096
	subw	a0,a0,a5
	mv	a3,a7
	slli	a0,a0,48
	srli	a0,a0,48
	addi	a7,a7,-2048
	mv	a1,a3
	srli	a4,a5,1
	j	.L1185
.L1192:
	li	a3,8
	j	.L1184
.L1161:
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,4096
	j	.L1185
.L1193:
	li	a3,16
	j	.L1184
.L1163:
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	srli	a4,a5,1
	li	a7,8192
	j	.L1185
.L1194:
	li	a3,32
	j	.L1184
.L1195:
	li	a3,64
	j	.L1184
.L1164:
	slliw	a5,a0,16
	sraiw	a5,a5,16
	slli	a4,a5,32
	li	a5,32768
	mv	a3,a5
	bge	a4,zero,.L1184
	mv	a1,a5
	li	a0,0
	j	.L1167
.L1196:
	li	a3,128
	j	.L1184
.L1150:
	bltu	a3,a4,.L1197
	subw	a0,a0,a5
	li	a3,256
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1197:
	li	a3,256
	j	.L1184
.L1160:
	bltu	a3,a4,.L1202
	subw	a0,a0,a5
	li	a3,8192
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1154:
	bltu	a3,a4,.L1199
	subw	a0,a0,a5
	li	a3,1024
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1202:
	li	a3,8192
	j	.L1184
.L1199:
	li	a3,1024
	j	.L1184
.L1198:
	li	a3,512
	j	.L1184
.L1158:
	bltu	a3,a4,.L1201
	subw	a0,a0,a5
	li	a3,4096
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1156:
	bltu	a3,a4,.L1200
	li	a3,4096
	subw	a0,a0,a5
	addi	a3,a3,-2048
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1162:
	bltu	a3,a4,.L1203
	subw	a0,a0,a5
	li	a3,16384
	slli	a0,a0,48
	srli	a0,a0,48
	mv	a1,a3
	j	.L1167
.L1201:
	li	a3,4096
	j	.L1184
.L1200:
	li	a3,4096
	addi	a3,a3,-2048
	j	.L1184
.L1203:
	li	a3,16384
	j	.L1184
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
	bltu	a1,a0,.L1250
	j	.L1251
.L1254:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L1252
	beq	a4,zero,.L1253
.L1250:
	and	a0,a1,a6
	addiw	a4,a4,-1
	beq	a0,zero,.L1254
.L1251:
	li	a0,0
.L1256:
	bltu	a3,a1,.L1255
	sub	a3,a3,a1
	or	a0,a0,a5
.L1255:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1256
.L1253:
	bne	a2,zero,.L1270
	ret
.L1270:
	mv	a0,a3
	ret
.L1252:
	beq	a5,zero,.L1253
	li	a0,0
	j	.L1256
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
	beq	a5,zero,.L1272
	addiw	a1,a1,-32
	sllw	a5,a0,a1
	li	a0,0
.L1273:
	slli	a0,a0,32
	srli	a0,a0,32
	slli	a5,a5,32
	or	a0,a0,a5
.L1271:
	ret
.L1272:
	beq	a1,zero,.L1271
	li	a5,32
	srai	a3,a0,32
	subw	a5,a5,a1
	srlw	a5,a0,a5
	sllw	a3,a3,a1
	or	a5,a5,a3
	sllw	a0,a0,a1
	j	.L1273
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
	beq	a5,zero,.L1278
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1278:
	beq	a2,zero,.L1280
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L1280:
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
	beq	a4,zero,.L1283
	srai	a5,a0,32
	addiw	a1,a1,-32
	sraw	a1,a5,a1
	sraiw	a0,a5,31
.L1284:
	slli	a1,a1,32
	srli	a1,a1,32
	slli	a0,a0,32
	or	a0,a0,a1
.L1282:
	ret
.L1283:
	beq	a1,zero,.L1282
	li	a4,32
	subw	a4,a4,a1
	srai	a0,a0,32
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	sraw	a0,a0,a1
	or	a1,a4,a5
	j	.L1284
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
	beq	a5,zero,.L1289
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1289:
	beq	a2,zero,.L1291
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1291:
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
	beq	a3,zero,.L1297
	li	a0,0
.L1297:
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
	blt	a3,a4,.L1304
	li	a0,2
	bgt	a3,a4,.L1303
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1303
	sgtu	a5,a5,a1
	addi	a0,a5,1
	ret
.L1304:
	li	a0,0
.L1303:
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
	blt	a3,a4,.L1310
	li	a0,1
	bgt	a3,a4,.L1309
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1309
	sgtu	a0,a5,a1
	ret
.L1310:
	li	a0,-1
.L1309:
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
	blt	a1,a3,.L1315
	li	a0,2
	bgt	a1,a3,.L1314
	li	a0,0
	bltu	a5,a2,.L1314
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1315:
	li	a0,0
.L1314:
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
	bne	a0,zero,.L1325
	bne	a1,zero,.L1330
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1325:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1330:
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
	beq	a4,zero,.L1332
	srli	a5,a0,32
	addiw	a1,a1,-32
	srlw	a5,a5,a1
	li	a0,0
.L1333:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L1331:
	ret
.L1332:
	beq	a1,zero,.L1331
	li	a4,32
	srai	a0,a0,32
	subw	a4,a4,a1
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	srlw	a0,a0,a1
	or	a5,a4,a5
	j	.L1333
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
	beq	a5,zero,.L1338
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1338:
	beq	a2,zero,.L1340
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1340:
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
	srli	a2,a0,1
	slli	a5,a1,63
	slli	a4,a3,32
	add	a4,a4,a3
	or	a5,a5,a2
	srli	a3,a1,1
	and	a5,a5,a4
	sub	a5,a0,a5
	and	a4,a3,a4
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	li	a2,858992640
	sub	a1,a1,a0
	addi	a2,a2,819
	srli	a0,a5,2
	slli	a3,a1,62
	slli	a4,a2,32
	add	a4,a4,a2
	or	a3,a3,a0
	and	a3,a3,a4
	srli	a2,a1,2
	and	a5,a5,a4
	add	a5,a3,a5
	and	a1,a1,a4
	and	a4,a2,a4
	add	a4,a4,a1
	sltu	a3,a5,a3
	add	a3,a3,a4
	srli	a2,a5,4
	slli	a4,a3,60
	or	a4,a4,a2
	li	a2,252645376
	addi	a2,a2,-241
	add	a5,a4,a5
	srli	a1,a3,4
	add	a1,a1,a3
	sltu	a4,a5,a4
	slli	a3,a2,32
	add	a3,a3,a2
	add	a4,a4,a1
	and	a4,a4,a3
	and	a5,a5,a3
	add	a5,a4,a5
	srli	a4,a5,32
	addw	a4,a4,a5
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
	lui	a2,%hi(.LC15)
	andi	a5,a0,1
	fmv.d	fa5,fa0
	fld	fa0,%lo(.LC15)(a2)
	beq	a5,zero,.L1360
	mv	a5,a0
.L1357:
	fmul.d	fa0,fa0,fa5
.L1355:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1356
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1357
.L1361:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.d	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1357
	j	.L1361
.L1356:
	blt	a0,zero,.L1362
	ret
.L1360:
	mv	a5,a0
	j	.L1355
.L1362:
	fld	fa5,%lo(.LC15)(a2)
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
	lui	a2,%hi(.LC20)
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC20)(a2)
	beq	a5,zero,.L1369
	mv	a5,a0
.L1366:
	fmul.s	fa0,fa0,fa5
.L1364:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1365
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1366
.L1370:
	sraiw	a5,a4,1
	srliw	a4,a5,31
	andi	a3,a5,1
	fmul.s	fa5,fa5,fa5
	addw	a4,a4,a5
	bne	a3,zero,.L1366
	j	.L1370
.L1365:
	blt	a0,zero,.L1371
	ret
.L1369:
	mv	a5,a0
	j	.L1364
.L1371:
	flw	fa5,%lo(.LC20)(a2)
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
	bltu	a3,a4,.L1374
	li	a0,2
	bgtu	a3,a4,.L1373
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1373
	sgtu	a5,a5,a1
	addi	a0,a5,1
	ret
.L1374:
	li	a0,0
.L1373:
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
	bltu	a3,a4,.L1380
	li	a0,1
	bgtu	a3,a4,.L1379
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	a5,a1,.L1379
	sgtu	a0,a5,a1
	ret
.L1380:
	li	a0,-1
.L1379:
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
	bltu	a1,a3,.L1385
	li	a0,2
	bgtu	a1,a3,.L1384
	li	a0,0
	bltu	a5,a2,.L1384
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1385:
	li	a0,0
.L1384:
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
