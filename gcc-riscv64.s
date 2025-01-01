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
	addi	a1,a1,-1
	addi	a5,a5,-1
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a0,a5,.L7
	ret
.L5:
	beq	a0,a1,.L6
	beq	a2,zero,.L6
	add	a2,a0,a2
	mv	a5,a0
.L8:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
	sb	a4,-1(a5)
	bne	a2,a5,.L8
.L6:
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
	beq	a3,zero,.L22
.L18:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,a2,.L29
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a3,zero,.L18
.L22:
	li	a0,0
	ret
.L29:
	beq	a3,zero,.L22
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
	beq	a2,zero,.L36
.L31:
	lbu	a5,0(a0)
	beq	a5,a1,.L39
	addi	a0,a0,1
	addi	a2,a2,-1
	bne	a2,zero,.L31
.L36:
	li	a0,0
	ret
.L39:
	beq	a2,zero,.L36
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
	j	.L52
.L43:
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
.L52:
	beq	a2,zero,.L45
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	beq	a4,a5,.L43
	beq	a2,zero,.L45
	lbu	a0,0(a0)
	lbu	a5,0(a1)
	subw	a0,a0,a5
	ret
.L45:
	li	a0,0
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
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	beq	a2,zero,.L54
	call	memcpy
.L54:
	mv	a0,s0
	ld	ra,8(sp)
	.cfi_restore 1
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
	andi	a1,a1,0xff
	addi	a2,a2,-1
	add	a2,a0,a2
	addi	a4,a0,-1
.L60:
	beq	a2,a4,.L63
	mv	a0,a2
	addi	a2,a2,-1
	lbu	a5,0(a0)
	bne	a5,a1,.L60
	ret
.L63:
	li	a0,0
.L59:
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
	beq	a2,zero,.L65
	add	a2,a0,a2
	mv	a5,a0
.L66:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a2,a5,.L66
.L65:
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
	j	.L78
.L73:
	addi	a1,a1,1
	addi	a0,a0,1
.L78:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L73
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
	beq	a5,zero,.L86
.L80:
	beq	a5,a1,.L79
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L80
.L79:
	ret
.L86:
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
.L89:
	lbu	a5,0(a0)
	beq	a5,a1,.L88
	addi	a0,a0,1
	bne	a5,zero,.L89
	li	a0,0
.L88:
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
	j	.L96
.L94:
	addi	a0,a0,1
	addi	a1,a1,1
.L96:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L93
	bne	a5,zero,.L94
.L93:
	subw	a0,a5,a4
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
	beq	a5,zero,.L100
	mv	a5,a0
.L99:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L99
.L98:
	sub	a0,a5,a0
	ret
.L100:
	mv	a5,a0
	j	.L98
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	beq	a2,zero,.L107
	lbu	a5,0(a0)
	beq	a5,zero,.L104
	addi	a2,a2,-1
	add	a3,a0,a2
.L105:
	lbu	a4,0(a1)
	beq	a4,zero,.L104
	beq	a0,a3,.L104
	bne	a4,a5,.L104
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	bne	a5,zero,.L105
.L104:
	lbu	a4,0(a1)
	subw	a0,a5,a4
	ret
.L107:
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
	ble	a2,a5,.L117
	andi	a2,a2,-2
	add	a4,a0,a2
.L119:
	lbu	a5,1(a0)
	sb	a5,0(a1)
	lbu	a5,0(a0)
	sb	a5,1(a1)
	addi	a1,a1,2
	addi	a0,a0,2
	bne	a0,a4,.L119
.L117:
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
	beq	a0,a5,.L125
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L125:
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
	bleu	a0,a5,.L128
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L128:
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
	beq	a0,a5,.L135
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L135:
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
	bleu	a0,a4,.L139
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L138
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a5,a4
	bleu	a4,a0,.L138
	li	a4,-65536
	addiw	a4,a4,7
	addw	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L139:
	li	a0,1
.L138:
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
	bleu	a0,a4,.L150
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L145
	li	a4,-8192
	addiw	a4,a4,-42
	addw	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L145
	li	a3,-57344
	addw	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L145
	li	a4,-65536
	addiw	a4,a4,4
	addw	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L145
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L145:
	ret
.L150:
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
	bleu	a4,a5,.L153
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L153:
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
	beq	a5,zero,.L155
	feq.d	a5,fa1,fa1
	beq	a5,zero,.L159
	fgt.d	a5,fa0,fa1
	beq	a5,zero,.L162
	fsub.d	fa0,fa0,fa1
	ret
.L159:
	fmv.d	fa0,fa1
	ret
.L162:
	fmv.d.x	fa0,zero
.L155:
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
	beq	a5,zero,.L163
	feq.s	a5,fa1,fa1
	beq	a5,zero,.L167
	fgt.s	a5,fa0,fa1
	beq	a5,zero,.L170
	fsub.s	fa0,fa0,fa1
	ret
.L167:
	fmv.s	fa0,fa1
	ret
.L170:
	fmv.s.x	fa0,zero
.L163:
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
	beq	a3,zero,.L176
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L177
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L173
	fmv.d	fa0,fa1
	bne	a3,zero,.L171
.L177:
	fmv.d.x	fa0,a5
.L171:
	ret
.L173:
	flt.d	a3,fa0,fa1
	beq	a3,zero,.L171
.L176:
	fmv.d.x	fa0,a4
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
	beq	a3,zero,.L185
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L186
	li	a3,-2147483648
	and	a2,a3,a5
	sext.w	a2,a2
	and	a3,a3,a4
	sext.w	a3,a3
	beq	a2,a3,.L182
	fmv.s	fa0,fa1
	bne	a2,zero,.L180
.L186:
	fmv.s.x	fa0,a5
.L180:
	ret
.L182:
	flt.s	a3,fa0,fa1
	beq	a3,zero,.L180
.L185:
	fmv.s.x	fa0,a4
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
	mv	s2,a1
	mv	s3,a2
	mv	s0,a3
	mv	a2,a0
	mv	a3,a1
	call	__unordtf2
	bne	a0,zero,.L197
	mv	a2,s3
	mv	a3,s0
	mv	a0,s3
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L196
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L191
	bne	a5,zero,.L197
.L196:
	mv	a0,s1
	mv	a1,s2
	j	.L189
.L191:
	mv	a2,s3
	mv	a3,s0
	mv	a0,s1
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L198
	mv	s0,s2
.L193:
	mv	a0,s1
	mv	a1,s0
.L189:
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
.L198:
	.cfi_restore_state
	mv	s1,s3
	j	.L193
.L197:
	mv	a0,s3
	mv	a1,s0
	j	.L189
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	fmv.x.d	a5,fa0
	fmv.x.d	a4,fa1
	feq.d	a3,fa0,fa0
	beq	a3,zero,.L206
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L207
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L203
	bne	a3,zero,.L201
.L206:
	fmv.d.x	fa0,a4
	ret
.L203:
	flt.d	a3,fa0,fa1
	fmv.d	fa0,fa1
	beq	a3,zero,.L201
.L207:
	fmv.d.x	fa0,a5
.L201:
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
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	feq.s	a3,fa0,fa0
	beq	a3,zero,.L215
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L216
	li	a3,-2147483648
	and	a2,a3,a5
	sext.w	a2,a2
	and	a3,a3,a4
	sext.w	a3,a3
	beq	a2,a3,.L212
	bne	a2,zero,.L210
.L215:
	fmv.s.x	fa0,a4
	ret
.L212:
	flt.s	a3,fa0,fa1
	fmv.s	fa0,fa1
	beq	a3,zero,.L210
.L216:
	fmv.s.x	fa0,a5
.L210:
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
	bne	a0,zero,.L225
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L227
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L221
	beq	a5,zero,.L225
.L227:
	mv	a0,s3
	mv	a1,s2
	j	.L219
.L221:
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L231
.L225:
	mv	a0,s1
	mv	a1,s0
.L219:
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
	mv	s1,s3
	mv	s0,s2
	j	.L225
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
	addi	a3,a0,%lo(s.0)
	beq	a5,zero,.L233
	lui	a2,%hi(.LANCHOR0)
	addi	a2,a2,%lo(.LANCHOR0)
.L234:
	andi	a4,a5,63
	add	a4,a2,a4
	lbu	a4,0(a4)
	sb	a4,0(a3)
	addi	a3,a3,1
	srliw	a5,a5,6
	bne	a5,zero,.L234
.L233:
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
	beq	a1,zero,.L245
	ld	a5,0(a1)
	sd	a5,0(a0)
	sd	a1,8(a0)
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
	ld	a5,8(a0)
	beq	a5,zero,.L246
	ld	a4,0(a0)
	sd	a4,0(a5)
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
	mv	s2,a3
	ld	s3,0(a2)
	beq	s3,zero,.L256
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s4,a4
	mv	s0,a1
	li	s1,0
.L258:
	mv	s5,s0
	mv	a1,s0
	mv	a0,s6
	jalr	s4
	beq	a0,zero,.L271
	addi	s1,s1,1
	add	s0,s0,s2
	bne	s3,s1,.L258
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s4,32(sp)
	.cfi_restore 20
.L256:
	addi	a5,s3,1
	sd	a5,0(s8)
	mul	s3,s2,s3
	add	s5,s7,s3
	beq	s2,zero,.L255
	mv	a2,s2
	mv	a1,s6
	mv	a0,s5
	call	memmove
	j	.L255
.L271:
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s4,32(sp)
	.cfi_restore 20
.L255:
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
	beq	s5,zero,.L273
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
.L275:
	mv	s6,s0
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	beq	a0,zero,.L284
	addi	s1,s1,1
	add	s0,s0,s4
	bne	s5,s1,.L275
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
.L273:
	li	s6,0
	j	.L272
.L284:
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
.L272:
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
	mv	a5,a0
	li	a3,32
	j	.L287
.L289:
	addi	a5,a5,1
.L287:
	lbu	a4,0(a5)
	beq	a4,a3,.L289
	addiw	a0,a4,-9
	sltiu	a0,a0,5
	bne	a0,zero,.L289
	li	a3,43
	beq	a4,a3,.L296
	li	a3,45
	li	a1,0
	bne	a4,a3,.L291
	li	a1,1
.L290:
	addi	a5,a5,1
.L291:
	lbu	a3,0(a5)
	addiw	a3,a3,-48
	li	a4,9
	mv	a2,a4
	bgtu	a3,a4,.L293
.L292:
	slliw	a4,a0,2
	addw	a4,a4,a0
	slliw	a4,a4,1
	addi	a5,a5,1
	subw	a0,a4,a3
	lbu	a3,0(a5)
	addiw	a3,a3,-48
	bleu	a3,a2,.L292
.L293:
	bne	a1,zero,.L294
	negw	a0,a0
.L294:
	ret
.L296:
	li	a1,0
	j	.L290
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	mv	a5,a0
	li	a3,32
	j	.L301
.L303:
	addi	a5,a5,1
.L301:
	lbu	a4,0(a5)
	beq	a4,a3,.L303
	addiw	a2,a4,-9
	sltiu	a2,a2,5
	bne	a2,zero,.L303
	li	a3,43
	beq	a4,a3,.L304
	li	a3,45
	bne	a4,a3,.L305
	li	a2,1
.L304:
	addi	a5,a5,1
.L305:
	lbu	a3,0(a5)
	addiw	a3,a3,-48
	li	a4,9
	li	a0,0
	mv	a1,a4
	bgtu	a3,a4,.L307
.L306:
	slli	a4,a0,2
	add	a4,a4,a0
	slli	a4,a4,1
	addi	a5,a5,1
	sub	a0,a4,a3
	lbu	a3,0(a5)
	addiw	a3,a3,-48
	bleu	a3,a1,.L306
.L307:
	bne	a2,zero,.L300
	neg	a0,a0
.L300:
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
	tail	atol
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
	beq	a2,zero,.L315
	sd	s0,48(sp)
	sd	s2,32(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s5,a0
	mv	s4,a1
	mv	s0,a2
	mv	s3,a3
	mv	s6,a4
	j	.L318
.L319:
	mv	s0,s2
.L316:
	beq	s0,zero,.L326
.L318:
	srli	s2,s0,1
	mul	s1,s2,s3
	add	s1,s4,s1
	mv	a1,s1
	mv	a0,s5
	jalr	s6
	blt	a0,zero,.L319
	ble	a0,zero,.L325
	add	s4,s1,s3
	addi	s0,s0,-1
	sub	s0,s0,s2
	j	.L316
.L326:
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
.L315:
	li	s1,0
	j	.L314
.L325:
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
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
.L314:
	mv	a0,s1
	ld	ra,56(sp)
	.cfi_restore 1
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
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	sext.w	s0,a2
	beq	s0,zero,.L328
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	mv	s6,a0
	mv	s3,a1
	mv	s2,a3
	mv	s5,a4
	mv	s4,a5
	j	.L331
.L330:
	mv	s0,s7
	beq	s7,zero,.L341
.L331:
	sraiw	s7,s0,1
	mul	s1,s7,s2
	add	s1,s3,s1
	mv	a2,s4
	mv	a1,s1
	mv	a0,s6
	jalr	s5
	beq	a0,zero,.L340
	ble	a0,zero,.L330
	add	s3,s1,s2
	addiw	s0,s0,-1
	sraiw	s7,s0,1
	j	.L330
.L341:
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
.L328:
	li	s1,0
	j	.L327
.L340:
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
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
.L327:
	mv	a0,s1
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
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
	j	.L362
.L356:
	addi	a0,a0,4
.L362:
	lw	a5,0(a0)
	beq	a5,zero,.L359
	bne	a1,a5,.L356
	beq	a5,zero,.L359
.L353:
	ret
.L359:
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
	j	.L373
.L366:
	addi	a0,a0,4
	addi	a1,a1,4
.L373:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L365
	beq	a5,zero,.L365
	bne	a4,zero,.L366
.L365:
	li	a0,-1
	blt	a5,a4,.L367
	sgt	a0,a5,a4
.L367:
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
.L375:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L375
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
	beq	a5,zero,.L380
	mv	a5,a0
.L379:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L379
.L378:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L380:
	mv	a5,a0
	j	.L378
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
.L395:
	beq	a2,zero,.L387
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a5,a4,.L384
	beq	a5,zero,.L384
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	j	.L395
.L384:
	beq	a2,zero,.L387
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L386
	sgt	a0,a4,a5
	ret
.L387:
	li	a0,0
.L386:
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
	j	.L405
.L399:
	addi	a2,a2,-1
	addi	a0,a0,4
.L405:
	beq	a2,zero,.L402
	lw	a5,0(a0)
	bne	a5,a1,.L399
	beq	a2,zero,.L402
.L396:
	ret
.L402:
	li	a0,0
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
	j	.L419
.L409:
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
.L419:
	beq	a2,zero,.L411
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L409
	beq	a2,zero,.L411
	li	a0,-1
	blt	a4,a5,.L410
	sgt	a0,a4,a5
	ret
.L411:
	li	a0,0
.L410:
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
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	mv	s0,a0
	beq	a2,zero,.L421
	slli	a2,a2,2
	call	memcpy
.L421:
	mv	a0,s0
	ld	ra,8(sp)
	.cfi_restore 1
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
	beq	a0,a1,.L427
	addi	a5,a2,-1
	sub	a4,a0,a1
	slli	a3,a2,2
	bltu	a4,a3,.L428
	mv	a4,a0
	li	a6,-1
	beq	a2,zero,.L438
.L429:
	addi	a1,a1,4
	addi	a4,a4,4
	lw	a3,-4(a1)
	sw	a3,-4(a4)
	addi	a5,a5,-1
	bne	a5,a6,.L429
.L427:
	ret
.L438:
	ret
.L428:
	beq	a2,zero,.L427
	slli	a5,a5,2
	li	a2,-4
.L430:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L430
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
	beq	a2,zero,.L440
	mv	a4,a0
	li	a3,-1
.L441:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L441
.L440:
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
	bgeu	a0,a1,.L447
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L446
.L449:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L449
	ret
.L447:
	beq	a0,a1,.L446
	beq	a2,zero,.L446
	add	a2,a0,a2
.L450:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a2,a0,.L450
.L446:
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
	or	a0,a0,a5
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
	or	a0,a0,a5
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
	sll	a5,a0,a1
	negw	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
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
	srl	a5,a0,a1
	negw	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
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
	slliw	a4,a0,8
	li	a3,16711680
	and	a4,a4,a3
	slliw	a5,a0,24
	or	a5,a5,a4
	srliw	a4,a0,24
	or	a5,a5,a4
	and	a0,a0,a3
	srli	a0,a0,8
	or	a0,a5,a0
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
	slli	a5,a0,56
	srli	a4,a0,56
	or	a5,a5,a4
	srli	a4,a0,40
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	srli	a4,a0,24
	li	a3,16711680
	and	a4,a4,a3
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,255
	slli	a3,a3,24
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a4,a0,8
	li	a3,255
	slli	a3,a3,32
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a4,a0,24
	li	a3,255
	slli	a3,a3,40
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,40
	li	a4,255
	slli	a4,a4,48
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
.L475:
	srlw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	bne	a4,zero,.L477
	bne	a5,a3,.L475
	li	a0,0
	ret
.L477:
	mv	a0,a5
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
	beq	a0,zero,.L481
	andi	a0,a0,1
	bne	a0,zero,.L479
	li	a0,1
.L480:
	sraiw	a5,a5,1
	addiw	a0,a0,1
	andi	a4,a5,1
	beq	a4,zero,.L480
	ret
.L481:
	li	a0,0
.L479:
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
	bne	a5,zero,.L485
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a0,fa0,fa5
.L485:
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
	bne	a5,zero,.L489
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a0,fa0,fa5
.L489:
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
	slli	a3,a2,48
	add	a3,a3,a2
	call	__lttf2
	blt	a0,zero,.L495
	li	a2,-1
	li	a3,134213632
	slli	a3,a3,36
	add	a3,a3,a2
	mv	a0,s1
	mv	a1,s0
	call	__gttf2
	sgt	a0,a0,zero
.L493:
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
.L495:
	.cfi_restore_state
	li	a0,1
	j	.L493
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
	beq	a5,zero,.L500
	fadd.s	fa5,fa0,fa0
	feq.s	a5,fa5,fa0
	bne	a5,zero,.L500
	blt	a0,zero,.L512
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
	j	.L503
.L512:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
	j	.L503
.L502:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L500
	fmul.s	fa5,fa5,fa5
.L503:
	andi	a5,a0,1
	beq	a5,zero,.L502
	fmul.s	fa0,fa0,fa5
	j	.L502
.L500:
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
	beq	a5,zero,.L514
	fadd.d	fa5,fa0,fa0
	feq.d	a5,fa5,fa0
	bne	a5,zero,.L514
	blt	a0,zero,.L526
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
	j	.L517
.L526:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	j	.L517
.L516:
	srliw	a5,a0,31
	addw	a0,a5,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L514
	fmul.d	fa5,fa5,fa5
.L517:
	andi	a5,a0,1
	beq	a5,zero,.L516
	fmul.d	fa0,fa0,fa5
	j	.L516
.L514:
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
	bne	a0,zero,.L528
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L528
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	li	s2,0
	li	s1,1
	slli	s1,s1,62
	bge	s0,zero,.L532
	li	s1,33550336
	slli	s1,s1,37
	j	.L532
.L531:
	srliw	a5,s0,31
	addw	s0,a5,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L542
	mv	a2,s2
	mv	a3,s1
	mv	a0,s2
	mv	a1,s1
	call	__multf3
	mv	s2,a0
	mv	s1,a1
.L532:
	andi	a5,s0,1
	beq	a5,zero,.L531
	mv	a2,s2
	mv	a3,s1
	mv	a0,s4
	mv	a1,s3
	call	__multf3
	mv	s4,a0
	mv	s3,a1
	j	.L531
.L542:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L528:
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
	beq	a2,zero,.L544
	add	a2,a1,a2
	mv	a5,a0
.L545:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a5)
	lbu	a3,-1(a1)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L545
.L544:
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
	beq	a5,zero,.L557
	mv	a5,a0
.L552:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L552
	j	.L564
.L557:
	mv	a5,a0
	j	.L564
.L555:
	addi	a1,a1,1
	addi	a5,a5,1
	addi	a2,a2,-1
.L564:
	beq	a2,zero,.L559
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a4,zero,.L555
	bne	a2,zero,.L556
.L559:
	sb	zero,0(a5)
.L556:
	ret
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
	beq	a1,zero,.L572
.L566:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L568
.L565:
	ret
.L572:
	ret
.L568:
	addi	a0,a0,1
	bne	a1,a0,.L566
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
.L581:
	lbu	a3,0(a0)
	beq	a3,zero,.L578
	mv	a5,a1
.L577:
	lbu	a4,0(a5)
	beq	a4,zero,.L582
	addi	a5,a5,1
	bne	a4,a3,.L577
.L575:
	ret
.L582:
	addi	a0,a0,1
	j	.L581
.L578:
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
	j	.L585
.L584:
	addi	a5,a5,1
	beq	a4,zero,.L588
.L585:
	lbu	a4,0(a5)
	bne	a4,a1,.L584
	mv	a0,a5
	j	.L584
.L588:
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
	lbu	a6,0(a1)
	mv	a5,a1
	beq	a6,zero,.L590
.L591:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L591
.L590:
	sub	t1,a5,a1
	addi	t1,t1,-1
	bne	a5,a1,.L598
.L592:
	ret
.L601:
	mv	a3,a1
	j	.L594
.L597:
	beq	a0,zero,.L592
	lbu	a4,0(a0)
	beq	a4,zero,.L601
	add	a7,a0,t1
	mv	a3,a1
	mv	a5,a0
.L595:
	lbu	a2,0(a3)
	beq	a2,zero,.L594
	beq	a5,a7,.L594
	bne	a2,a4,.L594
	addi	a5,a5,1
	addi	a3,a3,1
	lbu	a4,0(a5)
	bne	a4,zero,.L595
.L594:
	lbu	a5,0(a3)
	beq	a5,a4,.L592
	addi	a0,a0,1
.L598:
	lbu	a5,0(a0)
	beq	a5,a6,.L597
	addi	a0,a0,1
	bne	a5,zero,.L598
	li	a0,0
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
	bne	a5,zero,.L624
.L614:
	fmv.d.x	fa5,zero
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L617
	flt.d	a5,fa1,fa5
	bne	a5,zero,.L616
.L617:
	ret
.L624:
	fgt.d	a5,fa1,fa5
	beq	a5,zero,.L614
.L616:
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
	mv	t1,a0
	beq	a3,zero,.L633
	bltu	a1,a3,.L635
	sub	a1,a1,a3
	add	t3,a0,a1
	bgtu	a0,t3,.L635
	lbu	t4,0(a2)
	j	.L632
.L647:
	ret
.L648:
	beq	a5,zero,.L625
	lbu	a5,0(a1)
	lbu	a4,0(a4)
	subw	a5,a5,a4
	beq	a5,zero,.L625
.L627:
	bgtu	t1,t3,.L635
.L632:
	lbu	a5,0(t1)
	mv	a0,t1
	addi	t1,t1,1
	bne	a5,t4,.L627
	addi	a4,a2,1
	addi	a5,a3,-1
	beq	a5,zero,.L647
	mv	a1,t1
.L628:
	lbu	a7,0(a1)
	lbu	a6,0(a4)
	bne	a7,a6,.L648
	addi	a5,a5,-1
	addi	a1,a1,1
	addi	a4,a4,1
	bne	a5,zero,.L628
	ret
.L633:
	ret
.L635:
	li	a0,0
.L625:
	ret
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
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	mv	s1,a0
	mv	s0,a2
	beq	a2,zero,.L650
	call	memmove
.L650:
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
	li	a2,0
	bne	a5,zero,.L682
.L656:
	lui	a4,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a4)
	fge.d	a5,fa0,fa5
	beq	a5,zero,.L677
	li	a5,0
	lui	a3,%hi(.LC10)
	fld	fa4,%lo(.LC10)(a3)
	fld	fa5,%lo(.LC13)(a4)
.L660:
	addiw	a5,a5,1
	fmul.d	fa0,fa0,fa4
	fge.d	a4,fa0,fa5
	bne	a4,zero,.L660
.L661:
	sw	a5,0(a0)
	beq	a2,zero,.L664
	fneg.d	fa0,fa0
.L664:
	ret
.L682:
	fneg.d	fa0,fa0
	li	a2,1
	j	.L656
.L677:
	lui	a3,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a3)
	flt.d	a5,fa0,fa5
	beq	a5,zero,.L678
	fmv.d.x	fa5,zero
	li	a5,0
	feq.d	a4,fa0,fa5
	bne	a4,zero,.L661
	fld	fa5,%lo(.LC10)(a3)
.L663:
	addiw	a5,a5,-1
	fadd.d	fa0,fa0,fa0
	flt.d	a4,fa0,fa5
	bne	a4,zero,.L663
	j	.L661
.L678:
	li	a5,0
	j	.L661
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
	beq	a4,zero,.L686
.L685:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	slli	a1,a1,1
	srli	a4,a4,1
	bne	a4,zero,.L685
	ret
.L686:
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
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L705
.L689:
	blt	a1,zero,.L690
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L690
	addiw	a3,a3,-1
	bne	a3,zero,.L689
.L698:
	li	a0,0
.L692:
	bne	a2,zero,.L706
.L695:
	ret
.L690:
	beq	a5,zero,.L698
.L705:
	li	a0,0
	j	.L694
.L693:
	srliw	a5,a5,1
	srliw	a1,a1,1
	beq	a5,zero,.L692
.L694:
	bltu	a4,a1,.L693
	subw	a4,a4,a1
	or	a0,a5,a0
	sext.w	a0,a0
	j	.L693
.L706:
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
	beq	a0,zero,.L709
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	.cfi_offset 1, -8
	slli	a0,a0,8
	call	__clzdi2
	addiw	a0,a0,-32
	addiw	a0,a0,-1
	ld	ra,8(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L709:
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
	beq	a5,a4,.L716
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
.L716:
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
	beq	a4,zero,.L724
.L723:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	addw	a0,a5,a0
	srliw	a4,a4,1
	slliw	a1,a1,1
	bne	a4,zero,.L723
	ret
.L724:
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
	andi	a5,a2,-8
	bltu	a0,a1,.L727
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bgtu	a0,a4,.L727
	addiw	a4,a2,-1
	beq	a2,zero,.L740
	slli	a4,a4,32
	srli	a4,a4,32
	add	a5,a1,a4
	add	a0,a0,a4
.L733:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	mv	a4,a5
	addi	a5,a5,-1
	addi	a0,a0,-1
	bne	a1,a4,.L733
.L726:
	ret
.L740:
	ret
.L727:
	beq	a7,zero,.L730
	mv	a4,a1
	mv	a3,a0
	slli	a7,a7,3
	add	a7,a7,a1
.L731:
	ld	a6,0(a4)
	sd	a6,0(a3)
	addi	a4,a4,8
	addi	a3,a3,8
	bne	a4,a7,.L731
.L730:
	bleu	a2,a5,.L726
	slli	a5,a5,32
	srli	a5,a5,32
.L732:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
	sext.w	a4,a5
	bltu	a4,a2,.L732
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
	bltu	a0,a1,.L742
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bgtu	a0,a5,.L742
	addiw	a5,a2,-1
	beq	a2,zero,.L756
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a1,a5
	add	a5,a0,a5
.L747:
	lbu	a3,0(a4)
	sb	a3,0(a5)
	mv	a3,a4
	addi	a4,a4,-1
	addi	a5,a5,-1
	bne	a1,a3,.L747
.L741:
	ret
.L756:
	ret
.L742:
	beq	a6,zero,.L745
	mv	a5,a1
	mv	a4,a0
	slli	a6,a6,1
	add	a6,a6,a1
.L746:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,a6,.L746
.L745:
	andi	a5,a2,1
	beq	a5,zero,.L741
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	lbu	a4,0(a1)
	add	a5,a0,a2
	sb	a4,0(a5)
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
	andi	a5,a2,-4
	bltu	a0,a1,.L758
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bgtu	a0,a4,.L758
	addiw	a4,a2,-1
	beq	a2,zero,.L771
	slli	a4,a4,32
	srli	a4,a4,32
	add	a5,a1,a4
	add	a0,a0,a4
.L764:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	mv	a4,a5
	addi	a5,a5,-1
	addi	a0,a0,-1
	bne	a1,a4,.L764
.L757:
	ret
.L771:
	ret
.L758:
	beq	a7,zero,.L761
	mv	a4,a1
	mv	a3,a0
	slli	a7,a7,2
	add	a7,a7,a1
.L762:
	lw	a6,0(a4)
	sw	a6,0(a3)
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a4,a7,.L762
.L761:
	bleu	a2,a5,.L757
	slli	a5,a5,32
	srli	a5,a5,32
.L763:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,1
	sext.w	a4,a5
	bltu	a4,a2,.L763
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
	mv	a4,a0
	li	a0,0
	li	a3,15
	li	a2,16
.L780:
	subw	a5,a3,a0
	sraw	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L779
	addiw	a0,a0,1
	bne	a0,a2,.L780
.L779:
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
	mv	a4,a0
	li	a0,0
	li	a3,16
.L784:
	sraw	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L783
	addiw	a0,a0,1
	bne	a0,a3,.L784
.L783:
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
	bne	a5,zero,.L792
	fcvt.l.s a0,fa0,rtz
	ret
.L792:
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
.L794:
	sraw	a4,a0,a5
	andi	a4,a4,1
	addw	a3,a4,a3
	addiw	a5,a5,1
	bne	a5,a2,.L794
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
	mv	a3,a0
	li	a0,0
	li	a5,0
	li	a2,16
.L797:
	sraw	a4,a3,a5
	andi	a4,a4,1
	addw	a0,a4,a0
	addiw	a5,a5,1
	bne	a5,a2,.L797
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
	beq	a4,zero,.L802
.L801:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	addw	a0,a5,a0
	srliw	a4,a4,1
	slliw	a1,a1,1
	bne	a4,zero,.L801
	ret
.L802:
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
	beq	a4,zero,.L807
	beq	a1,zero,.L808
.L806:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	addw	a0,a5,a0
	slliw	a4,a4,1
	srliw	a1,a1,1
	bne	a1,zero,.L806
	ret
.L807:
	ret
.L808:
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
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L827
.L811:
	blt	a1,zero,.L812
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L812
	addiw	a3,a3,-1
	bne	a3,zero,.L811
.L820:
	li	a0,0
.L814:
	bne	a2,zero,.L828
.L817:
	ret
.L812:
	beq	a5,zero,.L820
.L827:
	li	a0,0
	j	.L816
.L815:
	srliw	a5,a5,1
	srliw	a1,a1,1
	beq	a5,zero,.L814
.L816:
	bltu	a4,a1,.L815
	subw	a4,a4,a1
	or	a0,a5,a0
	sext.w	a0,a0
	j	.L815
.L828:
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
	bne	a5,zero,.L830
	fgt.s	a0,fa0,fa1
.L830:
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
	bne	a5,zero,.L834
	fgt.d	a0,fa0,fa1
.L834:
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
	li	a2,0
	blt	a1,zero,.L853
.L840:
	beq	a1,zero,.L845
	li	a4,32
	li	a0,0
.L842:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	addw	a0,a5,a0
	slliw	a3,a3,1
	sraiw	a1,a1,1
	beq	a1,zero,.L841
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L842
.L841:
	beq	a2,zero,.L843
	negw	a0,a0
.L843:
	ret
.L853:
	negw	a1,a1
	li	a2,1
	j	.L840
.L845:
	li	a0,0
	j	.L841
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	li	a2,0
	blt	a0,zero,.L877
.L855:
	blt	a1,zero,.L878
.L856:
	sext.w	a4,a0
	sext.w	a1,a1
	li	a3,32
	li	a5,1
	bleu	a4,a1,.L876
.L857:
	blt	a1,zero,.L858
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L858
	addiw	a3,a3,-1
	bne	a3,zero,.L857
.L867:
	li	a0,0
.L860:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L854
	neg	a0,a0
.L854:
	ret
.L877:
	neg	a0,a0
	li	a2,1
	j	.L855
.L878:
	neg	a1,a1
	xori	a2,a2,1
	j	.L856
.L858:
	beq	a5,zero,.L867
.L876:
	li	a0,0
	j	.L862
.L879:
	subw	a4,a4,a1
	or	a0,a5,a0
.L861:
	srliw	a5,a5,1
	srliw	a1,a1,1
	beq	a5,zero,.L860
.L862:
	bltu	a4,a1,.L861
	j	.L879
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
	blt	a0,zero,.L903
.L881:
	sext.w	a0,a0
	srai	a5,a1,63
	xor	a1,a5,a1
	subw	a5,a1,a5
	li	a3,32
	li	a4,1
	bleu	a0,a5,.L896
.L882:
	blt	a5,zero,.L902
	slliw	a5,a5,1
	slliw	a4,a4,1
	bleu	a0,a5,.L902
	addiw	a3,a3,-1
	bne	a3,zero,.L882
.L885:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L880
	neg	a0,a0
.L880:
	ret
.L903:
	neg	a0,a0
	li	a2,1
	j	.L881
.L904:
	subw	a0,a0,a5
.L886:
	srliw	a4,a4,1
	srliw	a5,a5,1
.L902:
	beq	a4,zero,.L885
.L896:
	bltu	a0,a5,.L886
	j	.L904
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mv	a4,a0
	sext.w	a6,a1
	sext.w	a3,a0
	li	a0,16
	li	a5,1
	bgeu	a1,a4,.L922
.L906:
	slliw	a7,a1,16
	sraiw	a7,a7,16
	slli	t1,a7,32
	blt	t1,zero,.L907
	slliw	a1,a1,1
	slli	a1,a1,48
	srli	a1,a1,48
	slliw	a5,a5,1
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a6,a1
	bleu	a3,a1,.L907
	addiw	a0,a0,-1
	bne	a0,zero,.L906
.L915:
	li	a0,0
.L909:
	bne	a2,zero,.L923
.L912:
	ret
.L907:
	beq	a5,zero,.L915
.L922:
	li	a0,0
	j	.L911
.L910:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L909
	sext.w	a6,a1
	sext.w	a3,a4
.L911:
	bltu	a3,a6,.L910
	subw	a4,a4,a1
	slli	a4,a4,48
	srli	a4,a4,48
	or	a0,a5,a0
	slli	a0,a0,48
	srli	a0,a0,48
	j	.L910
.L923:
	mv	a0,a4
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
	bgeu	a1,a0,.L941
.L925:
	slli	a0,a1,32
	blt	a0,zero,.L926
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L926
	addiw	a4,a4,-1
	bne	a4,zero,.L925
.L934:
	li	a0,0
.L928:
	bne	a2,zero,.L942
.L924:
	ret
.L926:
	beq	a5,zero,.L934
.L941:
	li	a0,0
	j	.L930
.L929:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L928
.L930:
	bltu	a3,a1,.L929
	sub	a3,a3,a1
	or	a0,a0,a5
	j	.L929
.L942:
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
	beq	a4,zero,.L944
	addiw	a1,a1,-32
	sllw	a5,a0,a1
	li	a0,0
.L945:
	slli	a5,a5,32
	slli	a0,a0,32
	srli	a0,a0,32
	or	a0,a0,a5
.L943:
	ret
.L944:
	beq	a1,zero,.L943
	sllw	a0,a0,a1
	li	a4,32
	subw	a4,a4,a1
	srlw	a4,a5,a4
	srai	a5,a5,32
	sllw	a5,a5,a1
	or	a5,a4,a5
	j	.L945
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
	beq	a5,zero,.L950
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a4,0
.L951:
	mv	a0,a4
.L952:
	ret
.L950:
	beq	a2,zero,.L952
	sll	a4,a0,a2
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	j	.L951
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
	beq	a4,zero,.L955
	srai	a5,a0,32
	sraiw	a0,a5,31
	addiw	a1,a1,-32
	sraw	a5,a5,a1
.L956:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L954:
	ret
.L955:
	beq	a1,zero,.L954
	srai	a4,a0,32
	sraw	a0,a4,a1
	li	a3,32
	subw	a3,a3,a1
	sllw	a4,a4,a3
	srlw	a5,a5,a1
	or	a5,a4,a5
	j	.L956
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
	beq	a5,zero,.L961
	srai	a4,a1,63
	addiw	a2,a2,-64
	sra	a0,a1,a2
.L962:
	mv	a1,a4
.L963:
	ret
.L961:
	beq	a2,zero,.L963
	sra	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L962
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	srli	a5,a0,56
	slli	a4,a0,56
	or	a5,a5,a4
	srli	a4,a0,40
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	srli	a4,a0,24
	li	a3,16711680
	and	a4,a4,a3
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,255
	slli	a3,a3,24
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a4,a0,8
	li	a3,255
	slli	a3,a3,32
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a4,a0,24
	li	a3,255
	slli	a3,a3,40
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,40
	li	a4,255
	slli	a4,a4,48
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
	srliw	a5,a0,24
	slliw	a4,a0,24
	or	a5,a5,a4
	srliw	a4,a0,8
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	slliw	a0,a0,8
	li	a4,16711680
	and	a0,a0,a4
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
	andi	a4,a5,12
	seqz	a4,a4
	slliw	a4,a4,1
	li	a0,2
	subw	a2,a0,a4
	srlw	a5,a5,a2
	srli	a2,a5,1
	andi	a2,a2,1
	subw	a0,a0,a5
	beq	a2,zero,.L969
	li	a0,0
.L969:
	addw	a4,a4,a3
	addw	a0,a0,a4
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
	and	a5,a5,a1
	neg	a4,s0
	and	a0,a0,a4
	or	a0,a5,a0
	call	__clzdi2
	slliw	s0,s0,6
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
	blt	a3,a4,.L976
	li	a0,2
	bgt	a3,a4,.L975
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L975
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L976:
	li	a0,0
.L975:
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
	srai	a5,a1,32
	li	a4,0
	blt	a3,a5,.L981
	li	a4,2
	bgt	a3,a5,.L981
	sext.w	a5,a0
	sext.w	a1,a1
	li	a4,0
	bltu	a5,a1,.L981
	sgtu	a4,a5,a1
	addi	a4,a4,1
.L981:
	addiw	a0,a4,-1
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
	blt	a1,a3,.L988
	li	a0,2
	bgt	a1,a3,.L987
	li	a0,0
	bltu	a5,a2,.L987
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L988:
	li	a0,0
.L987:
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
	addw	a3,a4,a3
	andi	a4,a5,3
	seqz	a4,a4
	slliw	a4,a4,1
	srlw	a5,a5,a4
	andi	a5,a5,3
	not	a2,a5
	andi	a2,a2,1
	srliw	a5,a5,1
	li	a0,2
	subw	a0,a0,a5
	negw	a5,a2
	and	a0,a0,a5
	addw	a4,a4,a3
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
	neg	a5,s0
	and	a1,a1,a5
	addiw	a5,s0,-1
	and	a0,a5,a0
	or	a0,a1,a0
	call	__ctzdi2
	slliw	s0,s0,6
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
	bne	a0,zero,.L998
	beq	a1,zero,.L999
	mv	a0,a1
	call	__ctzdi2
	addiw	a0,a0,65
	j	.L999
.L998:
	call	__ctzdi2
	addiw	a0,a0,1
.L999:
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
	beq	a4,zero,.L1004
	srli	a5,a0,32
	addiw	a1,a1,-32
	srlw	a5,a5,a1
	li	a0,0
.L1005:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L1003:
	ret
.L1004:
	beq	a1,zero,.L1003
	srai	a4,a0,32
	srlw	a0,a4,a1
	li	a3,32
	subw	a3,a3,a1
	sllw	a4,a4,a3
	srlw	a5,a5,a1
	or	a5,a4,a5
	j	.L1005
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
	beq	a5,zero,.L1010
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a4,0
.L1011:
	mv	a1,a4
.L1012:
	ret
.L1010:
	beq	a2,zero,.L1012
	srl	a4,a1,a2
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	j	.L1011
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
	slli	a2,a3,48
	srli	a2,a2,48
	slliw	a3,a4,16
	addw	a3,a3,a2
	srliw	a2,a3,16
	srliw	a1,a1,16
	mulw	a5,a5,a1
	addw	a5,a5,a2
	slli	a3,a3,48
	srli	a3,a3,48
	slliw	a2,a5,16
	addw	a3,a2,a3
	srliw	a4,a4,16
	mulw	a0,a0,a1
	addw	a0,a0,a4
	srliw	a5,a5,16
	addw	a5,a5,a0
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
	slli	a5,a0,48
	srli	a5,a5,48
	slli	a3,a1,48
	srli	a3,a3,48
	mulw	a4,a5,a3
	srliw	a6,a4,16
	srliw	a2,a0,16
	mulw	a3,a3,a2
	addw	a3,a3,a6
	slli	a6,a4,48
	srli	a6,a6,48
	slliw	a4,a3,16
	addw	a4,a4,a6
	srliw	a6,a4,16
	srliw	a7,a1,16
	mulw	a5,a5,a7
	addw	a5,a5,a6
	slli	a6,a4,48
	srli	a6,a6,48
	slliw	a4,a5,16
	addw	a4,a4,a6
	srliw	a3,a3,16
	mulw	a2,a2,a7
	addw	a2,a2,a3
	srliw	a5,a5,16
	addw	a5,a5,a2
	slli	a5,a5,32
	slli	a4,a4,32
	srli	a4,a4,32
	or	a5,a4,a5
	srai	a4,a1,32
	mulw	a4,a0,a4
	srai	a3,a5,32
	addw	a4,a4,a3
	srai	a0,a0,32
	mulw	a1,a1,a0
	addw	a1,a1,a4
	slli	a1,a1,32
	slli	a0,a5,32
	srli	a0,a0,32
	or	a0,a0,a1
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
	slli	a4,a0,32
	srli	a4,a4,32
	slli	a5,a1,32
	srli	a5,a5,32
	mul	a2,a4,a5
	srli	a6,a2,32
	srli	a3,a0,32
	mul	a5,a5,a3
	add	a5,a5,a6
	slli	a0,a5,32
	srli	a0,a0,32
	srli	a1,a1,32
	mul	a4,a4,a1
	add	a4,a4,a0
	slli	a2,a2,32
	srli	a2,a2,32
	slli	a0,a4,32
	srli	a5,a5,32
	mul	a3,a3,a1
	add	a5,a5,a3
	srli	a1,a4,32
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
	slli	a4,a0,32
	srli	a4,a4,32
	slli	a5,a2,32
	srli	a5,a5,32
	mul	a6,a4,a5
	srli	t1,a6,32
	srli	a7,a0,32
	mul	a5,a5,a7
	add	a5,a5,t1
	slli	t3,a5,32
	srli	t3,t3,32
	srli	t1,a2,32
	mul	a4,a4,t1
	add	a4,a4,t3
	slli	a6,a6,32
	srli	a6,a6,32
	slli	t3,a4,32
	srli	a5,a5,32
	mul	a7,a7,t1
	add	a5,a5,a7
	srli	a4,a4,32
	add	a5,a5,a4
	mul	a3,a0,a3
	add	a3,a3,a5
	mul	a1,a2,a1
	add	a0,a6,t3
	add	a1,a3,a1
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
	xor	a0,a5,a0
	sext.w	a5,a0
	srliw	a0,a0,16
	xor	a0,a0,a5
	srliw	a4,a0,8
	xor	a4,a4,a0
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
	fmv.d	fa5,fa0
	mv	a5,a0
	lui	a3,%hi(.LC13)
	fld	fa0,%lo(.LC13)(a3)
	j	.L1029
.L1027:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1028
	fmul.d	fa5,fa5,fa5
.L1029:
	andi	a4,a5,1
	beq	a4,zero,.L1027
	fmul.d	fa0,fa0,fa5
	j	.L1027
.L1028:
	blt	a0,zero,.L1034
.L1026:
	ret
.L1034:
	fld	fa5,%lo(.LC13)(a3)
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
	lui	a3,%hi(.LC18)
	flw	fa0,%lo(.LC18)(a3)
	j	.L1038
.L1036:
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	beq	a5,zero,.L1037
	fmul.s	fa5,fa5,fa5
.L1038:
	andi	a4,a5,1
	beq	a4,zero,.L1036
	fmul.s	fa0,fa0,fa5
	j	.L1036
.L1037:
	blt	a0,zero,.L1043
.L1035:
	ret
.L1043:
	flw	fa5,%lo(.LC18)(a3)
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
	bltu	a3,a4,.L1046
	li	a0,2
	bgtu	a3,a4,.L1045
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1045
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1046:
	li	a0,0
.L1045:
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
	srai	a5,a1,32
	li	a4,0
	bltu	a3,a5,.L1051
	li	a4,2
	bgtu	a3,a5,.L1051
	sext.w	a5,a0
	sext.w	a1,a1
	li	a4,0
	bltu	a5,a1,.L1051
	sgtu	a4,a5,a1
	addi	a4,a4,1
.L1051:
	addiw	a0,a4,-1
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
	bltu	a1,a3,.L1058
	li	a0,2
	bgtu	a1,a3,.L1057
	li	a0,0
	bltu	a5,a2,.L1057
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1058:
	li	a0,0
.L1057:
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
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC14:
	.word	1191182336
	.align	2
.LC18:
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
