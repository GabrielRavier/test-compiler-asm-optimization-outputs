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
	beq	a0,a1,.L6
	beq	a2,zero,.L6
	add	a2,a0,a2
	mv	a5,a0
.L8:
	lbu	a4,0(a1)
	addi	a5,a5,1
	addi	a1,a1,1
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
	bne	a3,zero,.L18
	j	.L22
.L20:
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	beq	a3,zero,.L22
.L18:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,a2,.L20
	beq	a3,zero,.L22
	addi	a0,a0,1
	ret
.L22:
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
	bne	a2,zero,.L30
	j	.L35
.L32:
	addi	a2,a2,-1
	addi	a0,a0,1
	beq	a2,zero,.L35
.L30:
	lbu	a5,0(a0)
	bne	a5,a1,.L32
	beq	a2,zero,.L35
	ret
.L35:
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
	beq	a2,zero,.L43
.L52:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	bne	a4,a5,.L51
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L52
.L43:
	li	a0,0
	ret
.L51:
	beq	a2,zero,.L43
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
	beq	a2,zero,.L54
	call	memcpy
.L54:
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
.L60:
	beq	a2,a4,.L63
	lbu	a5,0(a2)
	mv	a0,a2
	addi	a2,a2,-1
	bne	a5,a1,.L60
	ret
.L63:
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
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L72
.L73:
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L73
.L72:
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
	beq	a5,zero,.L85
.L79:
	beq	a5,a1,.L78
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L79
.L78:
	ret
.L85:
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
.L88:
	lbu	a5,0(a0)
	beq	a5,a1,.L87
	addi	a0,a0,1
	bne	a5,zero,.L88
	li	a0,0
.L87:
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
	j	.L95
.L96:
	beq	a5,zero,.L92
	addi	a0,a0,1
	addi	a1,a1,1
.L95:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	beq	a5,a4,.L96
.L92:
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
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L99
	sub	a0,a5,a0
	ret
.L100:
	mv	a5,a0
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
	beq	a2,zero,.L107
	lbu	a5,0(a0)
	beq	a5,zero,.L104
	addi	a2,a2,-1
	add	a3,a0,a2
	j	.L105
.L117:
	beq	a0,a3,.L104
	bne	a4,a5,.L104
	lbu	a5,1(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a5,zero,.L104
.L105:
	lbu	a4,0(a1)
	bne	a4,zero,.L117
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
	ble	a2,a5,.L118
	andi	a2,a2,-2
	add	a3,a0,a2
.L120:
	lbu	a4,1(a0)
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L120
.L118:
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
	beq	a0,a5,.L126
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L126:
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
	bleu	a0,a5,.L129
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L129:
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
	beq	a0,a5,.L136
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L136:
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
	bleu	a0,a4,.L140
	addiw	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L143
.L139:
	ret
.L140:
	li	a0,1
	ret
.L143:
	li	a4,-8192
	addiw	a4,a4,-40
	addw	a4,a5,a4
	bleu	a4,a0,.L139
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
	bleu	a0,a4,.L152
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L147
	li	a4,-8192
	addiw	a4,a4,-42
	li	a3,45056
	addw	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L147
	li	a3,-57344
	li	a4,8192
	addw	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L147
	li	a4,-65536
	addiw	a4,a4,4
	li	a3,1048576
	addw	a4,a5,a4
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L147
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L147:
	ret
.L152:
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
	bleu	a4,a5,.L155
	ori	a0,a0,32
	addiw	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L155:
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
	beq	a5,zero,.L157
	feq.d	a5,fa1,fa1
	beq	a5,zero,.L161
	fgt.d	a5,fa0,fa1
	beq	a5,zero,.L164
	fsub.d	fa0,fa0,fa1
	ret
.L164:
	fmv.d.x	fa0,zero
.L157:
	ret
.L161:
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
	beq	a5,zero,.L165
	feq.s	a5,fa1,fa1
	beq	a5,zero,.L169
	fgt.s	a5,fa0,fa1
	beq	a5,zero,.L172
	fsub.s	fa0,fa0,fa1
	ret
.L172:
	fmv.s.x	fa0,zero
.L165:
	ret
.L169:
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
	beq	a3,zero,.L178
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L179
	srli	a3,a5,63
	srli	a2,a4,63
	bne	a3,a2,.L182
	flt.d	a3,fa0,fa1
	beq	a3,zero,.L173
.L178:
	fmv.d.x	fa0,a4
	ret
.L182:
	fmv.d	fa0,fa1
	beq	a3,zero,.L179
.L173:
	ret
.L179:
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
	beq	a3,zero,.L188
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L189
	li	a3,-2147483648
	and	a2,a3,a5
	and	a3,a3,a4
	sext.w	a2,a2
	sext.w	a3,a3
	bne	a2,a3,.L192
	flt.s	a3,fa0,fa1
	beq	a3,zero,.L183
.L188:
	fmv.s.x	fa0,a4
	ret
.L192:
	fmv.s	fa0,fa1
	beq	a2,zero,.L189
.L183:
	ret
.L189:
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
	bne	a0,zero,.L201
	mv	a2,s3
	mv	a3,s0
	mv	a0,s3
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L200
	srli	a5,s2,63
	srli	a4,s0,63
	bne	a5,a4,.L205
	mv	a2,s3
	mv	a3,s0
	mv	a0,s1
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L202
	mv	s0,s2
.L197:
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
.L205:
	.cfi_restore_state
	beq	a5,zero,.L200
.L201:
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
.L200:
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
.L202:
	.cfi_restore_state
	mv	s1,s3
	j	.L197
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
	beq	a3,zero,.L211
	feq.d	a3,fa1,fa1
	beq	a3,zero,.L212
	srli	a3,a5,63
	srli	a2,a4,63
	beq	a3,a2,.L208
	bne	a3,zero,.L206
.L211:
	fmv.d.x	fa0,a4
	ret
.L208:
	flt.d	a3,fa0,fa1
	fmv.d	fa0,fa1
	bne	a3,zero,.L212
.L206:
	ret
.L212:
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
	beq	a3,zero,.L220
	feq.s	a3,fa1,fa1
	beq	a3,zero,.L221
	li	a3,-2147483648
	and	a2,a3,a5
	and	a3,a3,a4
	sext.w	a2,a2
	sext.w	a3,a3
	beq	a2,a3,.L217
	bne	a2,zero,.L215
.L220:
	fmv.s.x	fa0,a4
	ret
.L217:
	flt.s	a3,fa0,fa1
	fmv.s	fa0,fa1
	bne	a3,zero,.L221
.L215:
	ret
.L221:
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
	bne	a0,zero,.L230
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L232
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L226
	beq	a5,zero,.L230
.L232:
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
.L226:
	.cfi_restore_state
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L236
.L230:
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
.L236:
	.cfi_restore_state
	mv	s1,s3
	mv	s0,s2
	j	.L230
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
	beq	a5,zero,.L240
	lui	a2,%hi(.LANCHOR0)
	addi	a3,a0,%lo(s.0)
	addi	a2,a2,%lo(.LANCHOR0)
.L239:
	andi	a4,a5,63
	add	a4,a2,a4
	lbu	a4,0(a4)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	a4,-1(a3)
	bne	a5,zero,.L239
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
.L240:
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
	beq	a1,zero,.L250
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	a5,0(a0)
	beq	a5,zero,.L244
	sd	a0,8(a5)
.L244:
	ret
.L250:
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
	beq	a5,zero,.L252
	ld	a4,8(a0)
	sd	a4,8(a5)
.L252:
	ld	a5,8(a0)
	beq	a5,zero,.L251
	ld	a4,0(a0)
	sd	a4,0(a5)
.L251:
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
	sd	s2,48(sp)
	sd	s4,32(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s3,40(sp)
	sd	s5,24(sp)
	.cfi_offset 18, -32
	.cfi_offset 20, -48
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 19, -40
	.cfi_offset 21, -56
	ld	s3,0(a2)
	mv	s7,a2
	mv	s4,a0
	mv	s8,a1
	mv	s2,a3
	beq	s3,zero,.L261
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 22, -64
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L263
.L278:
	addi	s1,s1,1
	add	s0,s0,s2
	beq	s3,s1,.L277
.L263:
	mv	a1,s0
	mv	a0,s4
	mv	s5,s0
	jalr	s6
	bne	a0,zero,.L278
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s6,16(sp)
	.cfi_restore 22
.L260:
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
.L277:
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
.L261:
	mul	s5,s2,s3
	addi	s3,s3,1
	sd	s3,0(s7)
	add	s5,s8,s5
	beq	s2,zero,.L260
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L260
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
	beq	s5,zero,.L280
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
	j	.L282
.L293:
	addi	s1,s1,1
	add	s0,s0,s4
	beq	s5,s1,.L292
.L282:
	mv	a1,s0
	mv	a0,s2
	mv	s6,s0
	jalr	s3
	bne	a0,zero,.L293
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
.L279:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s5,8(sp)
	.cfi_restore 21
	mv	a0,s6
	ld	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L292:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
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
.L280:
	li	s6,0
	j	.L279
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
.L296:
	lbu	a4,0(a5)
	beq	a4,a3,.L298
	addiw	a0,a4,-9
	sltiu	a0,a0,5
	beq	a0,zero,.L309
.L298:
	addi	a5,a5,1
	j	.L296
.L309:
	li	a3,43
	beq	a4,a3,.L305
	li	a3,45
	li	a6,0
	beq	a4,a3,.L310
.L300:
	lbu	a2,0(a5)
	li	a1,9
	addiw	a3,a2,-48
	bgtu	a3,a1,.L302
.L301:
	slliw	a4,a0,2
	lbu	a2,1(a5)
	addw	a4,a4,a0
	slliw	a4,a4,1
	subw	a0,a4,a3
	addiw	a3,a2,-48
	addi	a5,a5,1
	bleu	a3,a1,.L301
.L302:
	bne	a6,zero,.L303
	negw	a0,a0
.L303:
	ret
.L310:
	li	a6,1
	addi	a5,a5,1
	j	.L300
.L305:
	li	a6,0
	addi	a5,a5,1
	j	.L300
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
.L312:
	lbu	a4,0(a5)
	beq	a4,a3,.L314
	addiw	a2,a4,-9
	sltiu	a2,a2,5
	beq	a2,zero,.L324
.L314:
	addi	a5,a5,1
	j	.L312
.L324:
	li	a3,43
	beq	a4,a3,.L315
	li	a3,45
	beq	a4,a3,.L325
.L316:
	lbu	a1,0(a5)
	li	a6,9
	li	a0,0
	addiw	a3,a1,-48
	bgtu	a3,a6,.L318
.L317:
	slli	a4,a0,2
	lbu	a1,1(a5)
	add	a4,a4,a0
	slli	a4,a4,1
	sub	a0,a4,a3
	addiw	a3,a1,-48
	addi	a5,a5,1
	bleu	a3,a6,.L317
.L318:
	bne	a2,zero,.L311
	neg	a0,a0
.L311:
	ret
.L325:
	li	a2,1
.L315:
	addi	a5,a5,1
	j	.L316
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
	beq	a2,zero,.L328
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
	mv	s4,a1
	mv	s3,a3
	mv	s6,a4
.L331:
	srli	s2,s0,1
	mul	s1,s2,s3
	mv	a0,s5
	add	s1,s4,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L332
	ble	a0,zero,.L338
	addi	s0,s0,-1
	sub	s0,s0,s2
	add	s4,s1,s3
	bne	s0,zero,.L331
.L339:
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
.L328:
	li	s1,0
	j	.L327
.L332:
	.cfi_offset 8, -16
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s0,s2
	bne	s0,zero,.L331
	j	.L339
.L338:
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
.L327:
	ld	ra,56(sp)
	.cfi_restore 1
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
	sd	ra,72(sp)
	sd	s1,56(sp)
	.cfi_offset 8, -16
	.cfi_offset 1, -8
	.cfi_offset 9, -24
	sext.w	s0,a2
	beq	s0,zero,.L341
	sd	s3,40(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	sd	s6,16(sp)
	sd	s7,8(sp)
	sd	s2,48(sp)
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 18, -32
	mv	s7,a0
	mv	s4,a1
	mv	s3,a3
	mv	s6,a4
	mv	s5,a5
	j	.L344
.L355:
	ble	a0,zero,.L343
	addiw	s0,s0,-1
	sraiw	s2,s0,1
	add	s4,s1,s3
.L343:
	mv	s0,s2
	beq	s2,zero,.L354
.L344:
	sraiw	s2,s0,1
	mul	s1,s2,s3
	mv	a2,s5
	mv	a0,s7
	add	s1,s4,s1
	mv	a1,s1
	jalr	s6
	bne	a0,zero,.L355
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
.L340:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	mv	a0,s1
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L354:
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
.L341:
	li	s1,0
	j	.L340
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
	j	.L376
.L379:
	beq	a1,a5,.L378
	addi	a0,a0,4
.L376:
	lw	a5,0(a0)
	bne	a5,zero,.L379
.L373:
	li	a0,0
	ret
.L378:
	beq	a1,zero,.L373
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
	j	.L390
.L391:
	beq	a5,zero,.L382
	beq	a4,zero,.L382
	addi	a0,a0,4
	addi	a1,a1,4
.L390:
	lw	a5,0(a0)
	lw	a4,0(a1)
	beq	a5,a4,.L391
.L382:
	li	a0,-1
	blt	a5,a4,.L384
	sgt	a0,a5,a4
.L384:
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
.L393:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L393
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
	beq	a5,zero,.L398
	mv	a5,a0
.L397:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L397
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L398:
	mv	a5,a0
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
	beq	a2,zero,.L405
.L414:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a5,a4,.L402
	beq	a5,zero,.L402
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L414
.L405:
	li	a0,0
.L404:
	ret
.L402:
	beq	a2,zero,.L405
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L404
	sgt	a0,a4,a5
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
	beq	a2,zero,.L421
.L427:
	lw	a5,0(a0)
	beq	a5,a1,.L426
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a2,zero,.L427
.L421:
	li	a0,0
	ret
.L426:
	beq	a2,zero,.L421
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
	beq	a2,zero,.L433
.L443:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L442
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L443
.L433:
	li	a0,0
.L432:
	ret
.L442:
	beq	a2,zero,.L433
	li	a0,-1
	blt	a4,a5,.L432
	sgt	a0,a4,a5
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
	beq	a2,zero,.L445
	slli	a2,a2,2
	call	memcpy
.L445:
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
	beq	a0,a1,.L451
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L462
	beq	a2,zero,.L451
	slli	a5,a5,2
	li	a2,-4
.L454:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L454
	ret
.L462:
	mv	a4,a0
	li	a6,-1
	beq	a2,zero,.L463
.L453:
	lw	a3,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	a3,0(a4)
	addi	a4,a4,4
	bne	a5,a6,.L453
.L451:
	ret
.L463:
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
	beq	a2,zero,.L465
	mv	a4,a0
	li	a3,-1
.L466:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L466
.L465:
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
	bgeu	a0,a1,.L472
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L471
.L474:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L474
	ret
.L472:
	beq	a0,a1,.L471
	beq	a2,zero,.L471
	add	a2,a0,a2
.L475:
	lbu	a5,0(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	sb	a5,-1(a1)
	bne	a2,a0,.L475
.L471:
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
	j	.L500
.L498:
	beq	a5,a3,.L502
.L500:
	srlw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	beq	a4,zero,.L498
	mv	a0,a5
	ret
.L502:
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
	beq	a0,zero,.L506
	andi	a0,a0,1
	bne	a0,zero,.L504
	li	a0,1
.L505:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L505
	ret
.L506:
	li	a0,0
.L504:
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
	bne	a5,zero,.L510
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fgt.s	a0,fa0,fa5
.L510:
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
	bne	a5,zero,.L514
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fgt.d	a0,fa0,fa5
.L514:
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
	blt	a0,zero,.L520
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
.L520:
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
	beq	a5,zero,.L525
	fadd.s	fa5,fa0,fa0
	feq.s	a5,fa5,fa0
	bne	a5,zero,.L525
	blt	a0,zero,.L537
	lui	a5,%hi(.LC7)
	flw	fa5,%lo(.LC7)(a5)
.L528:
	srliw	a5,a0,31
	addw	a5,a5,a0
	andi	a4,a0,1
	sraiw	a0,a5,1
	beq	a4,zero,.L527
	fmul.s	fa0,fa0,fa5
.L527:
	beq	a0,zero,.L525
	fmul.s	fa5,fa5,fa5
	j	.L528
.L525:
	ret
.L537:
	lui	a5,%hi(.LC8)
	flw	fa5,%lo(.LC8)(a5)
	j	.L528
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
	beq	a5,zero,.L539
	fadd.d	fa5,fa0,fa0
	feq.d	a5,fa5,fa0
	bne	a5,zero,.L539
	blt	a0,zero,.L551
	lui	a5,%hi(.LC9)
	fld	fa5,%lo(.LC9)(a5)
.L542:
	srliw	a5,a0,31
	addw	a5,a5,a0
	andi	a4,a0,1
	sraiw	a0,a5,1
	beq	a4,zero,.L541
	fmul.d	fa0,fa0,fa5
.L541:
	beq	a0,zero,.L539
	fmul.d	fa5,fa5,fa5
	j	.L542
.L539:
	ret
.L551:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	j	.L542
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
	bne	a0,zero,.L553
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L553
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	li	s1,1
	slli	s1,s1,62
	li	s2,0
	bge	s0,zero,.L557
	li	s1,33550336
	slli	s1,s1,37
	j	.L557
.L568:
	mv	a2,s2
	mv	a0,s2
	mv	a3,s1
	mv	a1,s1
	call	__multf3
	mv	s2,a0
	mv	s1,a1
.L557:
	andi	a5,s0,1
	beq	a5,zero,.L556
	mv	a0,s4
	mv	a1,s3
	mv	a2,s2
	mv	a3,s1
	call	__multf3
	mv	s4,a0
	mv	s3,a1
.L556:
	srliw	a5,s0,31
	addw	s0,a5,s0
	sraiw	s0,s0,1
	bne	s0,zero,.L568
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L553:
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
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L570
	add	a2,a1,a2
	mv	a5,a0
.L571:
	lbu	a4,0(a5)
	lbu	a3,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L571
.L570:
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
	beq	a5,zero,.L583
	mv	a5,a0
.L578:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L578
.L590:
	beq	a2,zero,.L585
.L592:
	lbu	a4,0(a1)
	sb	a4,0(a5)
	beq	a4,zero,.L591
	addi	a2,a2,-1
	addi	a1,a1,1
	addi	a5,a5,1
	bne	a2,zero,.L592
.L585:
	sb	zero,0(a5)
.L582:
	ret
.L591:
	bne	a2,zero,.L582
	sb	zero,0(a5)
	ret
.L583:
	mv	a5,a0
	j	.L590
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
	beq	a1,zero,.L601
.L594:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L596
	ret
.L596:
	addi	a0,a0,1
	bne	a1,a0,.L594
	ret
.L601:
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
	beq	a3,zero,.L607
.L611:
	mv	a5,a1
	j	.L606
.L605:
	addi	a5,a5,1
	beq	a4,a3,.L604
.L606:
	lbu	a4,0(a5)
	bne	a4,zero,.L605
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L611
.L607:
	li	a0,0
.L604:
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
.L614:
	lbu	a4,0(a5)
	bne	a4,a1,.L613
	mv	a0,a5
.L613:
	addi	a5,a5,1
	bne	a4,zero,.L614
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
	beq	a6,zero,.L618
.L619:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L619
.L618:
	sub	t1,a5,a1
	addi	t1,t1,-1
	bne	a5,a1,.L626
	ret
.L642:
	addi	a0,a0,1
	beq	a5,zero,.L641
.L626:
	lbu	a5,0(a0)
	bne	a5,a6,.L642
	beq	a0,zero,.L620
	mv	a3,a6
	beq	a6,zero,.L629
	add	a7,a0,t1
	mv	a4,a1
	mv	a5,a0
	j	.L623
.L643:
	beq	a5,a7,.L622
	bne	a2,a3,.L622
	lbu	a3,1(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a3,zero,.L622
.L623:
	lbu	a2,0(a4)
	bne	a2,zero,.L643
.L622:
	lbu	a5,0(a4)
	beq	a5,a3,.L620
	addi	a0,a0,1
	j	.L626
.L641:
	li	a0,0
	ret
.L620:
	ret
.L629:
	mv	a4,a1
	j	.L622
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
	bne	a5,zero,.L655
.L645:
	fmv.d.x	fa5,zero
	fgt.d	a5,fa0,fa5
	beq	a5,zero,.L648
	flt.d	a5,fa1,fa5
	bne	a5,zero,.L647
.L648:
	ret
.L655:
	fgt.d	a5,fa1,fa5
	beq	a5,zero,.L645
.L647:
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
	beq	a3,zero,.L664
	bltu	a1,a3,.L666
	sub	a1,a1,a3
	add	t3,a0,a1
	bgtu	a0,t3,.L666
	lbu	t4,0(a2)
.L663:
	lbu	a5,0(t1)
	mv	a0,t1
	addi	t1,t1,1
	beq	a5,t4,.L678
	bleu	t1,t3,.L663
.L666:
	li	a0,0
.L656:
	ret
.L678:
	addi	a5,a3,-1
	addi	a4,a2,1
	beq	a5,zero,.L679
	mv	a1,t1
	j	.L659
.L661:
	addi	a5,a5,-1
	addi	a1,a1,1
	addi	a4,a4,1
	beq	a5,zero,.L680
.L659:
	lbu	a7,0(a1)
	lbu	a6,0(a4)
	beq	a7,a6,.L661
	beq	a5,zero,.L656
	lbu	a5,0(a1)
	lbu	a4,0(a4)
	subw	a5,a5,a4
	beq	a5,zero,.L656
	bleu	t1,t3,.L663
	j	.L666
.L680:
	ret
.L664:
	ret
.L679:
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
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	ra,24(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 1, -8
	mv	s0,a2
	mv	s1,a0
	beq	a2,zero,.L682
	call	memmove
.L682:
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
	li	a3,0
	flt.d	a5,fa0,fa5
	beq	a5,zero,.L688
	fneg.d	fa0,fa0
	li	a3,1
.L688:
	lui	a5,%hi(.LC13)
	fld	fa5,%lo(.LC13)(a5)
	fge.d	a5,fa0,fa5
	beq	a5,zero,.L709
	lui	a5,%hi(.LC10)
	fld	fa4,%lo(.LC10)(a5)
	li	a5,0
.L692:
	fmul.d	fa0,fa0,fa4
	addiw	a5,a5,1
	fge.d	a4,fa0,fa5
	bne	a4,zero,.L692
.L693:
	sw	a5,0(a0)
	beq	a3,zero,.L696
	fneg.d	fa0,fa0
.L696:
	ret
.L709:
	lui	a5,%hi(.LC10)
	fld	fa5,%lo(.LC10)(a5)
	flt.d	a5,fa0,fa5
	beq	a5,zero,.L710
	fmv.d.x	fa4,zero
	li	a5,0
	feq.d	a4,fa0,fa4
	bne	a4,zero,.L693
.L695:
	fadd.d	fa0,fa0,fa0
	addiw	a5,a5,-1
	flt.d	a4,fa0,fa5
	beq	a4,zero,.L693
	fadd.d	fa0,fa0,fa0
	addiw	a5,a5,-1
	flt.d	a4,fa0,fa5
	bne	a4,zero,.L695
	j	.L693
.L710:
	li	a5,0
	j	.L693
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
	beq	a4,zero,.L718
.L717:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L717
	ret
.L718:
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
	bgeu	a1,a0,.L737
.L721:
	blt	a1,zero,.L722
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L722
	addiw	a3,a3,-1
	bne	a3,zero,.L721
.L730:
	li	a0,0
	bne	a2,zero,.L738
.L727:
	ret
.L722:
	beq	a5,zero,.L730
.L737:
	li	a0,0
.L726:
	bltu	a4,a1,.L725
	or	a0,a5,a0
	sext.w	a0,a0
	subw	a4,a4,a1
.L725:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L726
	beq	a2,zero,.L727
.L738:
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
	beq	a0,zero,.L741
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
.L741:
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
	beq	a5,a4,.L748
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
.L748:
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
	beq	a4,zero,.L756
.L755:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L755
	ret
.L756:
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
	bltu	a0,a1,.L759
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bleu	a0,a4,.L772
.L759:
	beq	a7,zero,.L762
	slli	a7,a7,3
	add	a7,a7,a1
	mv	a4,a1
	mv	a3,a0
.L763:
	ld	a6,0(a4)
	addi	a4,a4,8
	addi	a3,a3,8
	sd	a6,-8(a3)
	bne	a4,a7,.L763
.L762:
	bleu	a2,a5,.L758
	slli	a5,a5,32
	srli	a5,a5,32
.L764:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bltu	a4,a2,.L764
	ret
.L772:
	addiw	a5,a2,-1
	beq	a2,zero,.L773
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L765:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L765
.L758:
	ret
.L773:
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
	bltu	a0,a1,.L775
	slli	a5,a2,32
	srli	a5,a5,32
	add	a5,a1,a5
	bleu	a0,a5,.L789
.L775:
	beq	a6,zero,.L778
	slli	a6,a6,1
	add	a6,a6,a1
	mv	a5,a1
	mv	a4,a0
.L779:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,a6,.L779
.L778:
	andi	a5,a2,1
	beq	a5,zero,.L774
	addiw	a2,a2,-1
	slli	a2,a2,32
	srli	a2,a2,32
	add	a1,a1,a2
	lbu	a4,0(a1)
	add	a5,a0,a2
	sb	a4,0(a5)
	ret
.L789:
	addiw	a4,a2,-1
	beq	a2,zero,.L790
	slli	a4,a4,32
	srli	a4,a4,32
	add	a5,a0,a4
	add	a4,a1,a4
.L780:
	lbu	a2,0(a4)
	mv	a3,a4
	addi	a5,a5,-1
	sb	a2,1(a5)
	addi	a4,a4,-1
	bne	a1,a3,.L780
.L774:
	ret
.L790:
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
	bltu	a0,a1,.L792
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a1,a4
	bleu	a0,a4,.L805
.L792:
	beq	a7,zero,.L795
	slli	a7,a7,2
	add	a7,a7,a1
	mv	a4,a1
	mv	a3,a0
.L796:
	lw	a6,0(a4)
	addi	a4,a4,4
	addi	a3,a3,4
	sw	a6,-4(a3)
	bne	a4,a7,.L796
.L795:
	bleu	a2,a5,.L791
	slli	a5,a5,32
	srli	a5,a5,32
.L797:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,1
	sb	a3,0(a4)
	sext.w	a4,a5
	bltu	a4,a2,.L797
	ret
.L805:
	addiw	a5,a2,-1
	beq	a2,zero,.L806
	slli	a5,a5,32
	srli	a5,a5,32
	add	a0,a0,a5
	add	a5,a1,a5
.L798:
	lbu	a3,0(a5)
	mv	a4,a5
	addi	a0,a0,-1
	sb	a3,1(a0)
	addi	a5,a5,-1
	bne	a1,a4,.L798
.L791:
	ret
.L806:
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
	li	a3,15
	li	a0,0
	li	a2,16
.L815:
	subw	a5,a3,a0
	sraw	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L814
	addiw	a0,a0,1
	bne	a0,a2,.L815
.L814:
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
	li	a3,16
	li	a0,0
.L819:
	sraw	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L818
	addiw	a0,a0,1
	bne	a0,a3,.L819
.L818:
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
	bne	a5,zero,.L827
	fcvt.l.s a0,fa0,rtz
	ret
.L827:
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
	li	a3,0
	li	a5,0
	li	a2,16
.L829:
	sraw	a4,a0,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	addw	a3,a4,a3
	bne	a5,a2,.L829
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
	li	a5,0
	li	a0,0
	li	a2,16
.L832:
	sraw	a4,a3,a5
	andi	a4,a4,1
	addiw	a5,a5,1
	addw	a0,a4,a0
	bne	a5,a2,.L832
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
	beq	a4,zero,.L837
.L836:
	andi	a5,a4,1
	negw	a5,a5
	and	a5,a1,a5
	srliw	a4,a4,1
	addw	a0,a5,a0
	slliw	a1,a1,1
	bne	a4,zero,.L836
	ret
.L837:
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
	beq	a4,zero,.L842
	beq	a1,zero,.L843
.L841:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a4,a5
	srliw	a1,a1,1
	addw	a0,a5,a0
	slliw	a4,a4,1
	bne	a1,zero,.L841
	ret
.L842:
	ret
.L843:
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
	bgeu	a1,a0,.L862
.L846:
	blt	a1,zero,.L847
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L847
	addiw	a3,a3,-1
	bne	a3,zero,.L846
.L855:
	li	a0,0
	bne	a2,zero,.L863
.L852:
	ret
.L847:
	beq	a5,zero,.L855
.L862:
	li	a0,0
.L851:
	bltu	a4,a1,.L850
	or	a0,a5,a0
	sext.w	a0,a0
	subw	a4,a4,a1
.L850:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L851
	beq	a2,zero,.L852
.L863:
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
	bne	a5,zero,.L865
	fgt.s	a0,fa0,fa1
.L865:
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
	bne	a5,zero,.L869
	fgt.d	a0,fa0,fa1
.L869:
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
	blt	a1,zero,.L888
.L875:
	beq	a1,zero,.L880
	li	a4,32
	li	a0,0
	j	.L877
.L889:
	addiw	a4,a4,-1
	andi	a4,a4,0xff
	beq	a4,zero,.L876
.L877:
	andi	a5,a1,1
	negw	a5,a5
	and	a5,a3,a5
	sraiw	a1,a1,1
	addw	a0,a5,a0
	slliw	a3,a3,1
	bne	a1,zero,.L889
.L876:
	beq	a2,zero,.L878
	negw	a0,a0
.L878:
	ret
.L888:
	negw	a1,a1
	li	a2,1
	j	.L875
.L880:
	li	a0,0
	j	.L876
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
	blt	a0,zero,.L913
.L891:
	bge	a1,zero,.L892
	neg	a1,a1
	xori	a2,a2,1
.L892:
	sext.w	a4,a0
	sext.w	a1,a1
	li	a3,32
	li	a5,1
	bleu	a4,a1,.L912
.L893:
	blt	a1,zero,.L894
	slliw	a1,a1,1
	slliw	a5,a5,1
	bleu	a4,a1,.L894
	addiw	a3,a3,-1
	bne	a3,zero,.L893
.L903:
	li	a0,0
.L896:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L890
	neg	a0,a0
.L890:
	ret
.L894:
	beq	a5,zero,.L903
.L912:
	li	a0,0
.L898:
	bltu	a4,a1,.L897
	subw	a4,a4,a1
	or	a0,a5,a0
.L897:
	srliw	a5,a5,1
	srliw	a1,a1,1
	bne	a5,zero,.L898
	j	.L896
.L913:
	neg	a0,a0
	li	a2,1
	j	.L891
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
	bge	a0,zero,.L915
	neg	a0,a0
	li	a2,1
.L915:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a5,a1,a5
	li	a3,32
	li	a4,1
	bleu	a0,a5,.L930
.L916:
	blt	a5,zero,.L936
	slliw	a5,a5,1
	slliw	a4,a4,1
	bleu	a0,a5,.L936
	addiw	a3,a3,-1
	bne	a3,zero,.L916
.L919:
	slli	a0,a0,32
	srli	a0,a0,32
	beq	a2,zero,.L914
	neg	a0,a0
.L914:
	ret
.L920:
	srliw	a5,a5,1
.L936:
	beq	a4,zero,.L919
.L930:
	srliw	a4,a4,1
	bltu	a0,a5,.L920
	subw	a0,a0,a5
	srliw	a5,a5,1
	j	.L936
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
	sext.w	a3,a0
	sext.w	a6,a1
	li	a0,16
	li	a5,1
	bgeu	a1,a4,.L954
.L938:
	slliw	a7,a1,16
	sraiw	a7,a7,16
	slli	t1,a7,32
	blt	t1,zero,.L939
	slliw	a1,a1,1
	slli	a1,a1,48
	slliw	a5,a5,1
	srli	a1,a1,48
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a6,a1
	bleu	a3,a1,.L939
	addiw	a0,a0,-1
	bne	a0,zero,.L938
.L947:
	li	a0,0
.L941:
	bne	a2,zero,.L955
	ret
.L939:
	beq	a5,zero,.L947
.L954:
	li	a0,0
.L943:
	bltu	a3,a6,.L942
	subw	a4,a4,a1
	or	a0,a5,a0
	slli	a4,a4,48
	slli	a0,a0,48
	srli	a4,a4,48
	srli	a0,a0,48
.L942:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L941
	sext.w	a6,a1
	sext.w	a3,a4
	j	.L943
.L955:
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
	bltu	a1,a0,.L957
	j	.L973
.L959:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a3,a1,.L958
	addiw	a4,a4,-1
	beq	a4,zero,.L966
.L957:
	slli	a0,a1,32
	bge	a0,zero,.L959
.L958:
	beq	a5,zero,.L966
.L973:
	li	a0,0
.L962:
	bltu	a3,a1,.L961
	sub	a3,a3,a1
	or	a0,a0,a5
.L961:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L962
	bne	a2,zero,.L974
.L956:
	ret
.L974:
	mv	a0,a3
	ret
.L966:
	li	a0,0
	beq	a2,zero,.L956
	j	.L974
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
	beq	a5,zero,.L976
	addiw	a1,a1,-32
	sllw	a5,a0,a1
	li	a0,0
.L977:
	slli	a0,a0,32
	srli	a0,a0,32
	slli	a5,a5,32
	or	a0,a0,a5
.L975:
	ret
.L976:
	beq	a1,zero,.L975
	li	a5,32
	srai	a3,a0,32
	subw	a5,a5,a1
	srlw	a5,a0,a5
	sllw	a3,a3,a1
	or	a5,a5,a3
	sllw	a0,a0,a1
	j	.L977
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
	beq	a5,zero,.L982
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L982:
	beq	a2,zero,.L984
	li	a5,64
	subw	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L984:
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
	beq	a4,zero,.L987
	srai	a5,a0,32
	addiw	a1,a1,-32
	sraw	a1,a5,a1
	sraiw	a0,a5,31
.L988:
	slli	a1,a1,32
	srli	a1,a1,32
	slli	a0,a0,32
	or	a0,a0,a1
.L986:
	ret
.L987:
	beq	a1,zero,.L986
	li	a4,32
	subw	a4,a4,a1
	srai	a0,a0,32
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	sraw	a0,a0,a1
	or	a1,a4,a5
	j	.L988
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
	beq	a5,zero,.L993
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L993:
	beq	a2,zero,.L995
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L995:
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
	beq	a3,zero,.L1001
	li	a0,0
.L1001:
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
	blt	a3,a4,.L1008
	li	a0,2
	bgt	a3,a4,.L1007
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1007
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1008:
	li	a0,0
.L1007:
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
	blt	a3,a5,.L1013
	li	a4,2
	bgt	a3,a5,.L1013
	sext.w	a5,a0
	sext.w	a1,a1
	li	a4,0
	bltu	a5,a1,.L1013
	sgtu	a4,a5,a1
	addi	a4,a4,1
.L1013:
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
	blt	a1,a3,.L1020
	li	a0,2
	bgt	a1,a3,.L1019
	li	a0,0
	bltu	a5,a2,.L1019
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1020:
	li	a0,0
.L1019:
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
	bne	a0,zero,.L1030
	bne	a1,zero,.L1035
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1030:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1035:
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
	beq	a4,zero,.L1037
	srli	a5,a0,32
	addiw	a1,a1,-32
	srlw	a5,a5,a1
	li	a0,0
.L1038:
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a0,a0,32
	or	a0,a0,a5
.L1036:
	ret
.L1037:
	beq	a1,zero,.L1036
	li	a4,32
	srai	a0,a0,32
	subw	a4,a4,a1
	sllw	a4,a0,a4
	srlw	a5,a5,a1
	srlw	a0,a0,a1
	or	a5,a4,a5
	j	.L1038
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
	beq	a5,zero,.L1043
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1043:
	beq	a2,zero,.L1045
	li	a5,64
	subw	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1045:
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
	lui	a2,%hi(.LC13)
	fmv.d	fa5,fa0
	fld	fa0,%lo(.LC13)(a2)
	mv	a5,a0
.L1062:
	srliw	a4,a5,31
	addw	a4,a4,a5
	andi	a3,a5,1
	sraiw	a5,a4,1
	beq	a3,zero,.L1060
	fmul.d	fa0,fa0,fa5
.L1060:
	beq	a5,zero,.L1061
	fmul.d	fa5,fa5,fa5
	j	.L1062
.L1061:
	blt	a0,zero,.L1067
	ret
.L1067:
	fld	fa5,%lo(.LC13)(a2)
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
	lui	a2,%hi(.LC18)
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC18)(a2)
	mv	a5,a0
.L1071:
	srliw	a4,a5,31
	addw	a4,a4,a5
	andi	a3,a5,1
	sraiw	a5,a4,1
	beq	a3,zero,.L1069
	fmul.s	fa0,fa0,fa5
.L1069:
	beq	a5,zero,.L1070
	fmul.s	fa5,fa5,fa5
	j	.L1071
.L1070:
	blt	a0,zero,.L1076
	ret
.L1076:
	flw	fa5,%lo(.LC18)(a2)
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
	bltu	a3,a4,.L1079
	li	a0,2
	bgtu	a3,a4,.L1078
	sext.w	a5,a5
	sext.w	a1,a1
	li	a0,0
	bltu	a5,a1,.L1078
	sgtu	a0,a5,a1
	addi	a0,a0,1
	ret
.L1079:
	li	a0,0
.L1078:
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
	bltu	a3,a5,.L1084
	li	a4,2
	bgtu	a3,a5,.L1084
	sext.w	a5,a0
	sext.w	a1,a1
	li	a4,0
	bltu	a5,a1,.L1084
	sgtu	a4,a5,a1
	addi	a4,a4,1
.L1084:
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
	bltu	a1,a3,.L1091
	li	a0,2
	bgtu	a1,a3,.L1090
	li	a0,0
	bltu	a5,a2,.L1090
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1091:
	li	a0,0
.L1090:
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
