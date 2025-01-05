	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_f2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	bleu	a0,a1,.L2
	add	a7,a1,a2
	add	t4,a0,a2
	beq	a2,zero,.L3
.L4:
	lbu	t3,-1(a7)
	addi	t4,t4,-1
	addi	a7,a7,-1
	sb	t3,0(t4)
	bne	a0,t4,.L4
	ret
.L2:
	bne	a0,a1,.L29
.L3:
	ret
.L29:
	beq	a2,zero,.L3
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L30
	or	t0,a1,a0
	andi	t1,t0,3
	addi	a6,a1,1
	bne	t1,zero,.L5
	sub	t2,a0,a6
	sltiu	a3,t2,3
	bne	a3,zero,.L5
	andi	a6,a2,-4
	add	a7,a1,a6
	mv	t4,a0
.L6:
	lw	t3,0(a1)
	addi	a1,a1,4
	addi	t4,t4,4
	sw	t3,-4(t4)
	bne	a7,a1,.L6
	add	t5,a0,a6
	sub	t6,a2,a6
	beq	a2,a6,.L3
	lbu	a1,0(a7)
	li	a2,1
	sb	a1,0(t5)
	beq	t6,a2,.L3
	lbu	a5,1(a7)
	li	a4,2
	sb	a5,1(t5)
	beq	t6,a4,.L3
	lbu	t0,2(a7)
	sb	t0,2(t5)
	ret
.L30:
	addi	a6,a1,1
.L5:
	add	t1,a0,a2
	mv	a3,a0
.L9:
	lbu	t2,-1(a6)
	addi	a3,a3,1
	addi	a6,a6,1
	sb	t2,-1(a3)
	bne	a3,t1,.L9
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
.L42:
	beq	a3,zero,.L43
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L42
	ret
.L43:
	li	a0,0
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
	bne	a2,zero,.L45
	j	.L48
.L47:
	addi	a0,a0,1
	beq	a2,zero,.L48
.L45:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L47
	ret
.L48:
	li	a0,0
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
	beq	a2,zero,.L57
.L66:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	bne	a5,a4,.L65
	addi	a1,a1,1
	bne	a2,zero,.L66
.L57:
	li	a0,0
	ret
.L65:
	sub	a0,a5,a4
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L68
	call	memcpy
.L68:
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	addi	a2,a2,-1
	add	t0,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L74
.L76:
	lbu	a5,0(a0)
	addi	t0,t0,-1
	beq	a5,a1,.L73
.L74:
	mv	a0,t0
	bne	t0,a4,.L76
	li	a0,0
.L73:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L80
	andi	a1,a1,0xff
	call	memset
.L80:
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
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
	beq	a5,zero,.L83
.L84:
	lbu	t0,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	t0,0(a0)
	bne	t0,zero,.L84
.L83:
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
	lbu	a5,0(a0)
	andi	a1,a1,0xff
	beq	a5,zero,.L89
.L90:
	beq	a5,a1,.L89
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L90
.L89:
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
.L99:
	lbu	a5,0(a0)
	beq	a5,a1,.L98
	addi	a0,a0,1
	bne	a5,zero,.L99
	li	a0,0
.L98:
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
.L104:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L103
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L104
.L103:
	sub	a0,a5,a4
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
	beq	a5,zero,.L112
	mv	t0,a0
.L111:
	lbu	a4,1(t0)
	addi	t0,t0,1
	bne	a4,zero,.L111
	sub	a0,t0,a0
	ret
.L112:
	li	a0,0
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	beq	a2,zero,.L122
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L118
	j	.L127
.L129:
	beq	a0,a3,.L117
	addi	a0,a0,1
	bne	a4,a5,.L117
	lbu	a5,0(a0)
	beq	a5,zero,.L128
	mv	a1,t0
.L118:
	lbu	a4,0(a1)
	addi	t0,a1,1
	bne	a4,zero,.L129
.L117:
	sub	a0,a5,a4
	ret
.L122:
	li	a0,0
	ret
.L128:
	lbu	a4,1(a1)
	sub	a0,a5,a4
	ret
.L127:
	lbu	a4,0(a1)
	j	.L117
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
	ble	a2,a5,.L130
	andi	a2,a2,-2
	add	a3,a0,a2
.L132:
	lbu	a4,1(a0)
	lbu	t0,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	t0,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L132
.L130:
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
	addi	t0,a0,-97
	sltiu	a0,t0,26
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
	beq	a0,a5,.L138
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L138:
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
	bleu	a0,a5,.L141
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L141:
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
	beq	a0,a5,.L148
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L148:
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
	li	a4,31
	mv	a5,a0
	bleu	a0,a4,.L152
	addi	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L155
.L150:
	ret
.L152:
	li	a0,1
	ret
.L155:
	li	t1,-8192
	addi	t2,t1,-40
	add	a1,a5,t2
	bleu	a1,a0,.L150
	li	a0,-65536
	addi	a2,a0,7
	add	a6,a5,a2
	sltiu	a0,a6,3
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
	li	a4,254
	mv	a5,a0
	bleu	a0,a4,.L164
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L157
	li	t2,-8192
	addi	a1,t2,-42
	li	a3,45056
	add	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L157
	li	a7,-57344
	li	t3,8192
	add	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L157
	li	a0,-65536
	addi	t6,a0,4
	li	t0,1048576
	add	a4,a5,t6
	addi	t1,t0,3
	li	a0,0
	bgtu	a4,t1,.L157
	li	t2,65536
	addi	a1,t2,-2
	and	a5,a5,a1
	sub	a3,a5,a1
	snez	a0,a3
.L157:
	ret
.L164:
	addi	a2,a0,1
	andi	a6,a2,127
	sltiu	a7,a6,33
	seqz	a0,a7
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
	bleu	a4,a5,.L167
	ori	a0,a0,32
	addi	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L167:
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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s2,80(sp)
	sw	s3,76(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s2,a3
	mv	s3,a2
	mv	a3,a1
	mv	a2,a0
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	ra,92(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s1,a0
	mv	s0,a1
	call	__unorddf2
	bne	a0,zero,.L172
	mv	a2,s3
	mv	a0,s3
	mv	a3,s2
	mv	a1,s2
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	call	__unorddf2
	bne	a0,zero,.L173
	sw	s1,8(sp)
	sw	s0,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	a2,s3
	mv	a3,s2
	sw	s6,64(sp)
	sw	s7,60(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	call	__gtdf2
	bgt	a0,zero,.L179
	li	a0,0
	li	a1,0
.L178:
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
.L169:
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L179:
	.cfi_def_cfa_offset 96
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	sw	s3,16(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s0,28(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__subdf3
	j	.L178
.L172:
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	mv	a0,s1
	mv	a1,s0
	j	.L169
.L173:
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	mv	a0,s3
	mv	a1,s2
	j	.L169
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	fmv.s.x	fa5,a0
	fmv.s.x	fa4,a1
	feq.s	a5,fa5,fa5
	beq	a5,zero,.L183
	feq.s	t0,fa4,fa4
	beq	t0,zero,.L184
	fgt.s	t1,fa5,fa4
	beq	t1,zero,.L188
	fsub.s	ft0,fa5,fa4
	fmv.x.s	a0,ft0
	ret
.L188:
	mv	a0,zero
	ret
.L183:
	ret
.L184:
	mv	a0,a1
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	mv	a3,a1
	mv	a2,a0
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s2,a0
	mv	s3,a1
	call	__unorddf2
	bne	a0,zero,.L189
	mv	a2,s1
	mv	a0,s1
	mv	a3,s0
	mv	a1,s0
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	call	__unorddf2
	bne	a0,zero,.L196
	li	a5,-2147483648
	and	a4,s3,a5
	and	t0,s0,a5
	bne	a4,t0,.L204
	sw	s2,8(sp)
	sw	s3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	a2,s1
	mv	a3,s0
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	call	__ltdf2
	blt	a0,zero,.L202
	mv	s1,s2
	mv	s0,s3
.L202:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.L203:
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
.L189:
	lw	ra,76(sp)
	.cfi_restore 1
	mv	a1,s0
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	mv	a0,s1
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L204:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	bne	a4,zero,.L203
.L196:
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	mv	s1,s2
	mv	s0,s3
	j	.L189
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	fmv.s.x	fa5,a0
	fmv.s.x	ft0,a1
	feq.s	a5,fa5,fa5
	beq	a5,zero,.L205
	feq.s	t0,ft0,ft0
	beq	t0,zero,.L211
	li	t1,-2147483648
	and	a4,t1,a0
	and	t2,t1,a1
	bne	a4,t2,.L214
	fmv.s.x	fa4,a1
	fmv.s.x	ft0,a0
	flt.s	a0,fa5,fa4
	beq	a0,zero,.L205
	fmv.s.x	ft0,a1
.L205:
	fmv.x.s	a0,ft0
	ret
.L214:
	bne	a4,zero,.L205
.L211:
	fmv.s.x	ft0,a0
	fmv.x.s	a0,ft0
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	lw	s1,12(a1)
	lw	s2,8(a1)
	sw	s3,60(sp)
	sw	s4,56(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	lw	s3,4(a1)
	lw	s4,0(a1)
	sw	s0,72(sp)
	mv	a1,sp
	.cfi_offset 8, -8
	mv	s0,a0
	addi	a0,sp,16
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	ra,76(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	lw	s8,0(a2)
	lw	s7,4(a2)
	lw	s6,8(a2)
	lw	s5,12(a2)
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	s4,0(sp)
	sw	s3,4(sp)
	sw	s2,8(sp)
	sw	s1,12(sp)
	call	__unordtf2
	bne	a0,zero,.L222
	mv	a1,sp
	addi	a0,sp,16
	sw	s8,16(sp)
	sw	s7,20(sp)
	sw	s6,24(sp)
	sw	s5,28(sp)
	sw	s8,0(sp)
	sw	s7,4(sp)
	sw	s6,8(sp)
	sw	s5,12(sp)
	call	__unordtf2
	bne	a0,zero,.L216
	li	a5,-2147483648
	and	a4,s1,a5
	and	t0,s5,a5
	beq	a4,t0,.L217
	beq	a4,zero,.L216
.L222:
	mv	s4,s8
	mv	s3,s7
	mv	s2,s6
	mv	s1,s5
.L216:
	sw	s4,0(s0)
	sw	s3,4(s0)
	sw	s2,8(s0)
	sw	s1,12(s0)
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L217:
	.cfi_restore_state
	mv	a1,sp
	addi	a0,sp,16
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	s8,0(sp)
	sw	s7,4(sp)
	sw	s6,8(sp)
	sw	s5,12(sp)
	call	__lttf2
	bge	a0,zero,.L216
	j	.L222
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a3
	mv	s2,a2
	mv	a3,a1
	mv	a2,a0
	sw	s0,72(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s0,a0
	mv	s3,a1
	call	__unorddf2
	bne	a0,zero,.L235
	mv	a2,s2
	mv	a0,s2
	mv	a3,s1
	mv	a1,s1
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	call	__unorddf2
	bne	a0,zero,.L244
	li	a5,-2147483648
	and	a4,s3,a5
	and	t0,s1,a5
	bne	a4,t0,.L245
	sw	s0,8(sp)
	sw	s3,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	mv	a2,s2
	mv	a3,s1
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	call	__ltdf2
	blt	a0,zero,.L243
	mv	s0,s2
	mv	s3,s1
.L243:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.L244:
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
.L229:
	lw	ra,76(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	mv	a1,s3
	lw	s3,60(sp)
	.cfi_restore 19
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L245:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	bne	a4,zero,.L244
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	mv	s0,s2
	mv	s3,s1
	j	.L229
.L235:
	mv	s0,s2
	mv	s3,s1
	j	.L229
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	fmv.s.x	fa5,a0
	fmv.s.x	ft0,a1
	feq.s	a5,fa5,fa5
	beq	a5,zero,.L246
	feq.s	t0,ft0,ft0
	beq	t0,zero,.L252
	li	t1,-2147483648
	and	a4,t1,a0
	and	t2,t1,a1
	fmv.s.x	ft0,a0
	beq	a4,t2,.L248
	bne	a4,zero,.L246
	fmv.s.x	ft0,a1
.L246:
	fmv.x.s	a0,ft0
	ret
.L248:
	fmv.s.x	fa4,a1
	fmv.s.x	ft0,a1
	flt.s	a2,fa5,fa4
	beq	a2,zero,.L246
.L252:
	fmv.s.x	ft0,a0
	fmv.x.s	a0,ft0
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s5,52(sp)
	sw	s6,48(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	lw	s5,8(a1)
	lw	s6,4(a1)
	sw	s7,44(sp)
	sw	s8,40(sp)
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	lw	s7,0(a1)
	lw	s8,12(a1)
	sw	s0,72(sp)
	mv	a1,sp
	.cfi_offset 8, -8
	mv	s0,a0
	addi	a0,sp,16
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	ra,76(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	lw	s4,0(a2)
	lw	s3,4(a2)
	lw	s2,8(a2)
	lw	s1,12(a2)
	sw	s7,16(sp)
	sw	s6,20(sp)
	sw	s5,24(sp)
	sw	s8,28(sp)
	sw	s7,0(sp)
	sw	s6,4(sp)
	sw	s5,8(sp)
	sw	s8,12(sp)
	call	__unordtf2
	bne	a0,zero,.L256
	mv	a1,sp
	addi	a0,sp,16
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	s4,0(sp)
	sw	s3,4(sp)
	sw	s2,8(sp)
	sw	s1,12(sp)
	call	__unordtf2
	bne	a0,zero,.L262
	li	a5,-2147483648
	and	a4,s8,a5
	and	t0,s1,a5
	beq	a4,t0,.L257
	beq	a4,zero,.L256
.L262:
	mv	s4,s7
	mv	s3,s6
	mv	s2,s5
	mv	s1,s8
.L256:
	sw	s4,0(s0)
	sw	s3,4(s0)
	sw	s2,8(s0)
	sw	s1,12(s0)
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L257:
	.cfi_restore_state
	mv	a1,sp
	addi	a0,sp,16
	sw	s7,16(sp)
	sw	s6,20(sp)
	sw	s5,24(sp)
	sw	s8,28(sp)
	sw	s4,0(sp)
	sw	s3,4(sp)
	sw	s2,8(sp)
	sw	s1,12(sp)
	call	__lttf2
	bge	a0,zero,.L256
	j	.L262
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	lui	a2,%hi(s.0)
	beq	a0,zero,.L272
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	t0,a3,%lo(.LANCHOR0)
.L271:
	andi	a5,a0,63
	add	t1,t0,a5
	lbu	t2,0(t1)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	t2,-1(a4)
	bne	a0,zero,.L271
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L272:
	addi	a4,a2,%lo(s.0)
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.align	2
	.globl	srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	lui	a5,%hi(seed)
	addi	a0,a0,-1
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	lui	a5,%hi(.LC0)
	.cfi_offset 8, -8
	lui	s0,%hi(seed)
	lw	a0,%lo(seed)(s0)
	lw	a1,%lo(seed+4)(s0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__muldi3
	addi	t0,a0,1
	sltu	a0,t0,a0
	add	t1,a0,a1
	lw	ra,12(sp)
	.cfi_restore 1
	sw	t1,%lo(seed+4)(s0)
	sw	t0,%lo(seed)(s0)
	lw	s0,8(sp)
	.cfi_restore 8
	srli	a0,t1,1
	addi	sp,sp,16
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
	beq	a1,zero,.L283
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L277
	sw	a0,4(t0)
.L277:
	ret
.L283:
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
	beq	a5,zero,.L285
	lw	a4,4(a0)
	sw	a4,4(a5)
.L285:
	lw	t0,4(a0)
	beq	t0,zero,.L284
	sw	a5,0(t0)
.L284:
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s6,16(sp)
	.cfi_offset 22, -32
	lw	s6,0(a2)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	mv	s8,a2
	mv	s5,a0
	mv	s7,a1
	mv	s2,a3
	beq	s6,zero,.L294
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	mv	s0,a1
	mv	s4,a4
	li	s1,0
	j	.L296
.L311:
	add	s0,s0,s2
	beq	s6,s1,.L310
.L296:
	mv	a1,s0
	mv	a0,s5
	jalr	s4
	mv	s3,s0
	addi	s1,s1,1
	bne	a0,zero,.L311
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s4,24(sp)
	.cfi_restore 20
.L293:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	mv	a0,s3
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L310:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s4,24(sp)
	.cfi_restore 20
.L294:
	addi	a5,s6,1
	sw	a5,0(s8)
	mv	a1,s6
	mv	a0,s2
	call	__mulsi3
	add	s3,s7,a0
	beq	s2,zero,.L293
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	memmove
	j	.L293
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
	sw	s5,4(sp)
	.cfi_offset 21, -28
	lw	s5,0(a2)
	sw	ra,28(sp)
	sw	s6,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	beq	s5,zero,.L313
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s2,a0
	mv	s4,a3
	mv	s3,a4
	mv	s0,a1
	li	s1,0
	j	.L315
.L326:
	add	s0,s0,s4
	beq	s5,s1,.L325
.L315:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L326
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s6
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L325:
	.cfi_restore_state
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.L313:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s6,0
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s6
	lw	s6,0(sp)
	.cfi_restore 22
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
	li	a3,32
	li	a2,4
.L335:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L329
	bleu	a5,a2,.L329
	li	t0,43
	beq	a4,t0,.L330
	li	a1,45
	bne	a4,a1,.L347
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L340
	li	t6,1
.L333:
	li	a0,0
	li	a3,9
.L337:
	slli	a4,a0,2
	lbu	a2,1(t5)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t3
	mv	a4,t3
	addi	t3,a2,-48
	addi	t5,t5,1
	bleu	t3,a3,.L337
	bne	t6,zero,.L328
	sub	a0,a4,a5
	ret
.L329:
	addi	a0,a0,1
	j	.L335
.L347:
	addi	t3,a4,-48
	li	t4,9
	mv	t5,a0
	li	t6,0
	bleu	t3,t4,.L333
.L340:
	li	a0,0
.L328:
	ret
.L330:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t3,t1,-48
	li	t6,0
	bleu	t3,t2,.L333
	li	a0,0
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	li	a3,32
	li	a2,4
.L353:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L349
	bleu	a5,a2,.L349
	li	t0,43
	beq	a4,t0,.L350
	li	a1,45
	bne	a4,a1,.L367
	lbu	a6,1(a0)
	li	t3,9
	addi	t6,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L360
.L354:
	li	a0,0
	li	a3,9
.L357:
	slli	a4,a0,2
	lbu	a2,1(t6)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t4
	mv	a4,t4
	addi	t4,a2,-48
	addi	t6,t6,1
	bleu	t4,a3,.L357
	bne	a7,zero,.L348
	sub	a0,a4,a5
	ret
.L349:
	addi	a0,a0,1
	j	.L353
.L367:
	addi	t4,a4,-48
	li	t5,9
	mv	t6,a0
	li	a7,0
	bleu	t4,t5,.L354
.L360:
	li	a0,0
.L348:
	ret
.L350:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L360
	li	a7,0
	j	.L354
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	li	a3,32
	li	a2,4
.L375:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L369
	bleu	a5,a2,.L369
	li	t0,43
	beq	a4,t0,.L370
	li	a1,45
	bne	a4,a1,.L387
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L380
	li	t4,1
.L373:
	li	a0,0
	li	a1,0
	li	a4,9
.L377:
	srli	a3,a0,30
	slli	a2,a1,2
	slli	a5,a0,2
	add	a0,a5,a0
	or	t0,a3,a2
	sltu	t2,a0,a5
	add	t1,t0,a1
	add	a1,t2,t1
	lbu	a7,1(t5)
	slli	a6,a1,1
	srli	t3,a0,31
	slli	a2,a0,1
	srai	a3,t6,31
	sub	a0,a2,t6
	or	a5,t3,a6
	sub	t0,a5,a3
	mv	t1,t6
	sgtu	t2,a0,a2
	addi	t6,a7,-48
	addi	t5,t5,1
	sub	a1,t0,t2
	bleu	t6,a4,.L377
	bne	t4,zero,.L368
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,a5
	sub	a1,t5,t6
	ret
.L369:
	addi	a0,a0,1
	j	.L375
.L387:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L373
.L380:
	li	a0,0
	li	a1,0
.L368:
	ret
.L370:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L373
	j	.L380
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
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	beq	a2,zero,.L389
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 18, -16
	mv	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
.L392:
	srli	s2,s0,1
	mv	a1,s4
	mv	a0,s2
	call	__mulsi3
	add	s1,s3,a0
	mv	a1,s1
	mv	a0,s5
	jalr	s6
	addi	s0,s0,-1
	blt	a0,zero,.L393
	beq	a0,zero,.L402
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L392
.L403:
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
.L389:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L393:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	mv	s0,s2
	bne	s0,zero,.L392
	j	.L403
.L402:
	lw	s0,24(sp)
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
	mv	s7,a5
	beq	a2,zero,.L409
	sw	s2,32(sp)
	.cfi_offset 18, -16
.L417:
	srai	s2,s0,1
	mv	a1,s4
	mv	a0,s2
	call	__mulsi3
	add	s1,s3,a0
	mv	a1,s1
	mv	a2,s7
	mv	a0,s5
	addi	s0,s0,-1
	jalr	s6
	srai	s0,s0,1
	beq	a0,zero,.L421
	ble	a0,zero,.L407
	add	s3,s1,s4
	bne	s0,zero,.L417
.L422:
	lw	s2,32(sp)
	.cfi_restore 18
.L409:
	li	s1,0
.L404:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L407:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	beq	s2,zero,.L422
	mv	s0,s2
	j	.L417
.L421:
	lw	s2,32(sp)
	.cfi_restore 18
	j	.L404
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a0
	mv	s2,a1
	call	__divsi3
	mv	s0,a0
	mv	a1,s2
	mv	a0,s1
	call	__modsi3
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a1,a0
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
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
	sub	t0,a1,a4
	sgtu	t1,a0,a5
	sub	a1,t0,t1
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
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	mv	a2,a3
	mv	a0,a1
	mv	a3,a4
	mv	a1,s1
	sw	ra,28(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	mv	s3,a4
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	mv	a2,s4
	mv	a3,s3
	mv	a0,s2
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	lw	ra,28(sp)
	.cfi_restore 1
	sw	a1,12(s0)
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
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
.LFB152:
	.cfi_startproc
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE152:
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a0
	mv	s2,a1
	call	__divsi3
	mv	s0,a0
	mv	a1,s2
	mv	a0,s1
	call	__modsi3
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a1,a0
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB154:
	.cfi_startproc
	srai	a4,a1,31
	xor	a5,a4,a0
	xor	a1,a4,a1
	sub	a0,a5,a4
	sub	t0,a1,a4
	sgtu	t1,a0,a5
	sub	a1,t0,t1
	ret
	.cfi_endproc
.LFE154:
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	mv	a2,a3
	mv	a0,a1
	mv	a3,a4
	mv	a1,s1
	sw	ra,28(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	mv	s3,a4
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	mv	a2,s4
	mv	a3,s3
	mv	a0,s2
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	lw	ra,28(sp)
	.cfi_restore 1
	sw	a1,12(s0)
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
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
	j	.L443
.L445:
	beq	a1,a5,.L444
	addi	a0,a0,4
.L443:
	lw	a5,0(a0)
	bne	a5,zero,.L445
	li	a0,0
	ret
.L444:
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
.L449:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L448
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L449
.L448:
	li	a0,-1
	blt	a5,a4,.L446
	sgt	a0,a5,a4
.L446:
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
.L456:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L456
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
	beq	a5,zero,.L461
	mv	t0,a0
.L460:
	lw	a4,4(t0)
	addi	t0,t0,4
	bne	a4,zero,.L460
	sub	a0,t0,a0
	srai	a0,a0,2
	ret
.L461:
	li	a0,0
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	beq	a2,zero,.L469
.L475:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L466
	beq	a5,zero,.L466
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L475
.L469:
	li	a0,0
	ret
.L466:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L476
	ret
.L476:
	li	a0,-1
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
	beq	a2,zero,.L481
.L488:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L487
	addi	a0,a0,4
	bne	a2,zero,.L488
.L481:
	li	a0,0
	ret
.L487:
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
	beq	a2,zero,.L495
.L504:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L503
	addi	a1,a1,4
	bne	a2,zero,.L504
.L495:
	li	a0,0
	ret
.L503:
	sgt	a0,a4,a5
	blt	a4,a5,.L505
	ret
.L505:
	li	a0,-1
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L507
	slli	a2,a2,2
	call	memcpy
.L507:
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	beq	a0,a1,.L520
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L527
	beq	a2,zero,.L520
	slli	t4,a5,2
	li	a2,-4
.L517:
	add	t2,a1,t4
	lw	a7,0(t2)
	add	t3,a0,t4
	addi	t4,t4,-4
	sw	a7,0(t3)
	bne	t4,a2,.L517
	ret
.L527:
	mv	t1,a0
	li	a6,-1
	beq	a2,zero,.L520
.L515:
	lw	t0,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	t0,0(t1)
	addi	t1,t1,4
	bne	a5,a6,.L515
.L520:
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
	beq	a2,zero,.L529
	mv	a4,a0
	li	a3,-1
.L530:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L530
.L529:
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
	bgeu	a0,a1,.L536
	add	a7,a1,a2
	add	t2,a0,a2
	beq	a2,zero,.L535
.L538:
	lbu	a3,-1(t2)
	addi	t2,t2,-1
	addi	a7,a7,-1
	sb	a3,0(a7)
	bne	a0,t2,.L538
	ret
.L536:
	bne	a0,a1,.L564
.L535:
	ret
.L564:
	beq	a2,zero,.L535
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L562
	or	t0,a1,a0
	andi	t1,t0,3
	bne	t1,zero,.L562
	addi	a6,a0,1
	sub	t2,a1,a6
	sltiu	a3,t2,3
	bne	a3,zero,.L539
	andi	a6,a2,-4
	add	a7,a0,a6
	mv	t4,a1
.L540:
	lw	t3,0(a0)
	addi	a0,a0,4
	addi	t4,t4,4
	sw	t3,-4(t4)
	bne	a7,a0,.L540
	add	a1,a1,a6
	sub	a0,a2,a6
	beq	a2,a6,.L535
	lbu	a2,0(a7)
	li	t5,1
	sb	a2,0(a1)
	beq	a0,t5,.L535
	lbu	t6,1(a7)
	li	a5,2
	sb	t6,1(a1)
	beq	a0,a5,.L535
	lbu	a4,2(a7)
	sb	a4,2(a1)
	ret
.L562:
	addi	a6,a0,1
.L539:
	add	t0,a0,a2
	j	.L543
.L565:
	addi	a6,a6,1
.L543:
	lbu	t1,-1(a6)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a6,t0,.L565
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
	addi	a5,a2,-32
	blt	a5,zero,.L567
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	sll	t3,a0,a5
	li	t4,0
	blt	a6,zero,.L569
.L571:
	srl	t0,a1,a6
	li	a1,0
	or	a0,t0,t4
	or	a1,a1,t3
	ret
.L567:
	li	a4,31
	sub	t0,a4,a2
	sll	a3,a1,a2
	sll	t4,a0,a2
	neg	a2,a2
	srli	t1,a0,1
	andi	t5,a2,63
	srl	t2,t1,t0
	addi	a6,t5,-32
	or	t3,t2,a3
	bge	a6,zero,.L571
.L569:
	li	a7,31
	slli	a5,a1,1
	sub	t6,a7,t5
	srl	a4,a0,t5
	sll	a0,a5,t6
	srl	a1,a1,t5
	or	t0,a0,a4
	or	a0,t0,t4
	or	a1,a1,t3
	ret
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	a5,a2,-32
	blt	a5,zero,.L573
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	srl	t3,a1,a5
	li	t4,0
	blt	a6,zero,.L575
.L577:
	sll	t0,a0,a6
	li	a0,0
	or	a0,a0,t3
	or	a1,t0,t4
	ret
.L573:
	li	a4,31
	sub	t0,a4,a2
	srl	a3,a0,a2
	srl	t4,a1,a2
	neg	a2,a2
	slli	t1,a1,1
	andi	t5,a2,63
	sll	t2,t1,t0
	addi	a6,t5,-32
	or	t3,t2,a3
	bge	a6,zero,.L577
.L575:
	li	a7,31
	srli	a5,a0,1
	sub	t6,a7,t5
	sll	a4,a1,t5
	srl	a1,a5,t6
	sll	a0,a0,t5
	or	t0,a1,a4
	or	a0,a0,t3
	or	a1,t0,t4
	ret
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	neg	a5,a1
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
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
	neg	a5,a1
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	neg	a5,a1
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
	ret
	.cfi_endproc
.LFE158:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	neg	a5,a1
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
	ret
	.cfi_endproc
.LFE160:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	andi	a1,a1,15
	neg	a5,a1
	andi	t0,a5,15
	srl	t1,a0,t0
	sll	a0,a0,a1
	or	t2,a0,t1
	slli	a2,t2,16
	srli	a0,a2,16
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
	andi	a1,a1,15
	neg	a5,a1
	andi	t0,a5,15
	sll	t1,a0,t0
	srl	a0,a0,a1
	or	t2,a0,t1
	slli	a2,t2,16
	srli	a0,a2,16
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
	andi	a1,a1,7
	neg	a5,a1
	andi	t0,a5,7
	srl	t1,a0,t0
	sll	a0,a0,a1
	or	t2,a0,t1
	andi	a0,t2,0xff
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
	andi	a1,a1,7
	neg	a5,a1
	andi	t0,a5,7
	sll	t1,a0,t0
	srl	a0,a0,a1
	or	t2,a0,t1
	andi	a0,t2,0xff
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
	slli	a0,a0,8
	or	t0,a5,a0
	slli	t1,t0,16
	srli	a0,t1,16
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
	li	a3,65536
	slli	a5,a0,24
	srli	a2,a0,24
	srli	a4,a0,8
	addi	t0,a3,-256
	or	t1,a5,a2
	slli	a0,a0,8
	and	t2,a4,t0
	li	a1,16711680
	or	a6,t1,t2
	and	a7,a0,a1
	or	a0,a6,a7
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
	slli	a4,a1,8
	srli	a5,a0,24
	li	a6,65536
	or	t0,a4,a5
	slli	t1,a1,24
	addi	t2,a6,-256
	srli	a2,a0,8
	srli	a7,a1,8
	and	t6,a7,t2
	andi	t4,t0,255
	slli	a3,a0,24
	li	t3,16711680
	or	t5,t1,a2
	srli	a1,a1,24
	and	a2,t5,t2
	and	a4,t0,t3
	or	a5,a1,t6
	or	a6,a3,t4
	slli	a0,a0,8
	and	t2,a0,t3
	or	t0,a6,a2
	or	a7,a5,a4
	or	a1,t0,t2
	or	a0,a7,t1
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
	j	.L592
.L590:
	beq	a5,a3,.L594
.L592:
	srl	a4,a0,a5
	andi	t0,a4,1
	addi	a5,a5,1
	beq	t0,zero,.L590
	mv	a0,a5
	ret
.L594:
	li	a0,0
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
	beq	a0,zero,.L598
	andi	a0,a0,1
	bne	a0,zero,.L595
	li	a0,1
.L597:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L597
	ret
.L598:
	li	a0,0
.L595:
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
	lui	a5,%hi(.LC1)
	fmv.s.x	fa5,a0
	flw	fa4,%lo(.LC1)(a5)
	flt.s	t0,fa5,fa4
	bne	t0,zero,.L603
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa5,ft0
	ret
.L603:
	li	a0,1
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s1,a0
	mv	s0,a1
	call	__ltdf2
	blt	a0,zero,.L607
	lui	t0,%hi(.LC4)
	lw	a2,%lo(.LC4)(t0)
	lw	a3,%lo(.LC4+4)(t0)
	mv	a0,s1
	mv	a1,s0
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	call	__gtdf2
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s1,20(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L607:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	lw	s1,12(a0)
	lw	s2,8(a0)
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	lw	s3,4(a0)
	lw	s4,0(a0)
	li	a5,-65536
	sw	s0,56(sp)
	addi	t0,a5,-1
	.cfi_offset 8, -8
	li	s0,-1
	addi	a0,sp,16
	mv	a1,sp
	sw	ra,60(sp)
	.cfi_offset 1, -4
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	t0,12(sp)
	sw	s0,0(sp)
	sw	s0,4(sp)
	sw	s0,8(sp)
	call	__lttf2
	blt	a0,zero,.L612
	li	t1,2147418112
	add	t2,t1,s0
	mv	a1,sp
	addi	a0,sp,16
	sw	t2,12(sp)
	call	__gttf2
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	sgt	a0,a0,zero
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L612:
	.cfi_restore_state
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	li	a0,1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	call	__floatsidf
	mv	a2,a1
	mv	a1,a0
	mv	a0,sp
	call	__extenddftf2
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a4,8(sp)
	lw	a5,12(sp)
	lw	ra,28(sp)
	.cfi_restore 1
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
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
	fmv.s.x	fa4,a0
	feq.s	a5,fa4,fa4
	beq	a5,zero,.L617
	fadd.s	fa5,fa4,fa4
	feq.s	t0,fa5,fa4
	bne	t0,zero,.L617
	blt	a1,zero,.L630
	lui	t1,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t1)
.L618:
	andi	a0,a1,1
	beq	a0,zero,.L619
.L620:
	fmul.s	fa4,fa4,ft0
.L619:
	srli	a2,a1,31
	add	a1,a2,a1
	srai	a1,a1,1
	beq	a1,zero,.L617
	srli	a3,a1,31
	andi	a4,a1,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a1
	bne	a4,zero,.L620
.L631:
	srai	a1,a6,1
	srli	a3,a1,31
	andi	a4,a1,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a1
	bne	a4,zero,.L620
	j	.L631
.L617:
	fmv.x.s	a0,fa4
	ret
.L630:
	lui	t2,%hi(.LC8)
	flw	ft0,%lo(.LC8)(t2)
	j	.L618
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s8,56(sp)
	mv	a3,a1
	.cfi_offset 24, -40
	mv	s8,a2
	mv	a2,a0
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	ra,92(sp)
	sw	a6,24(sp)
	sw	a7,28(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	mv	s11,a0
	mv	s10,a1
	call	__unorddf2
	bne	a0,zero,.L633
	mv	a2,s11
	mv	a3,s10
	mv	a0,s11
	mv	a1,s10
	call	__adddf3
	sw	s11,0(sp)
	sw	s10,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	call	__nedf2
	beq	a0,zero,.L633
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s9,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	blt	s8,zero,.L649
	lui	a4,%hi(.LC9)
	lw	s9,%lo(.LC9)(a4)
	lw	a7,%lo(.LC9+4)(a4)
.L635:
	andi	t1,s8,1
	beq	t1,zero,.L636
.L637:
	mv	a0,s11
	mv	a1,s10
	mv	a3,a7
	mv	a2,s9
	mv	s5,a7
	sw	a7,0(sp)
	call	__muldf3
	mv	s11,a0
	mv	s10,a1
	mv	a7,s5
.L636:
	srli	t2,s8,31
	add	s0,t2,s8
	srai	s8,s0,1
	beq	s8,zero,.L648
.L638:
	mv	a2,s9
	mv	a0,s9
	mv	a3,a7
	mv	a1,a7
	call	__muldf3
	srli	s1,s8,31
	andi	a5,s8,1
	add	a6,s1,s8
	mv	s9,a0
	mv	a7,a1
	bne	a5,zero,.L637
	srai	s8,a6,1
	j	.L638
.L648:
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s9,52(sp)
	.cfi_restore 25
.L633:
	lw	ra,92(sp)
	.cfi_restore 1
	sw	s11,8(sp)
	sw	s10,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L649:
	.cfi_def_cfa_offset 96
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	lui	t0,%hi(.LC10)
	lw	s9,%lo(.LC10)(t0)
	lw	a7,%lo(.LC10+4)(t0)
	j	.L635
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s1,100(sp)
	sw	s2,96(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	lw	s1,12(a1)
	lw	s2,8(a1)
	sw	s3,92(sp)
	sw	s4,88(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	lw	s3,4(a1)
	lw	s4,0(a1)
	sw	s5,84(sp)
	addi	a1,sp,32
	.cfi_offset 21, -28
	mv	s5,a0
	addi	a0,sp,48
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s4,48(sp)
	sw	s3,52(sp)
	sw	s2,56(sp)
	sw	s1,60(sp)
	sw	s4,32(sp)
	sw	s3,36(sp)
	sw	s2,40(sp)
	sw	s1,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a2
	call	__unordtf2
	bne	a0,zero,.L651
	addi	a2,sp,16
	addi	a1,sp,32
	addi	a0,sp,48
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	call	__addtf3
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	addi	a1,sp,16
	addi	a0,sp,32
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	call	__netf2
	beq	a0,zero,.L651
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	li	s6,0
	li	s7,0
	li	s8,0
	li	s9,1073610752
	blt	s0,zero,.L653
	li	s9,1073741824
.L653:
	andi	t0,s0,1
	beq	t0,zero,.L654
.L655:
	mv	a2,sp
	addi	a1,sp,16
	addi	a0,sp,32
	sw	s4,16(sp)
	sw	s3,20(sp)
	sw	s2,24(sp)
	sw	s1,28(sp)
	sw	s6,0(sp)
	sw	s7,4(sp)
	sw	s8,8(sp)
	sw	s9,12(sp)
	call	__multf3
	lw	s4,32(sp)
	lw	s3,36(sp)
	lw	s2,40(sp)
	lw	s1,44(sp)
.L654:
	srli	t1,s0,31
	add	s0,t1,s0
	srai	s0,s0,1
	beq	s0,zero,.L666
.L656:
	addi	a1,sp,32
	addi	a0,sp,48
	addi	a2,sp,16
	sw	s6,32(sp)
	sw	s7,36(sp)
	sw	s8,40(sp)
	sw	s9,44(sp)
	sw	s6,16(sp)
	sw	s7,20(sp)
	sw	s8,24(sp)
	sw	s9,28(sp)
	call	__multf3
	srli	t2,s0,31
	andi	a0,s0,1
	lw	s6,48(sp)
	lw	s7,52(sp)
	lw	s8,56(sp)
	lw	s9,60(sp)
	add	a1,t2,s0
	bne	a0,zero,.L655
	srai	s0,a1,1
	j	.L656
.L666:
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L651:
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	sw	s4,0(s5)
	sw	s3,4(s5)
	sw	s2,8(s5)
	sw	s1,12(s5)
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	mv	a0,s5
	lw	s5,84(sp)
	.cfi_restore 21
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L668
	addi	a5,a2,-1
	li	a4,3
	bleu	a5,a4,.L669
	or	t0,a0,a1
	and	t1,t0,a4
	bne	t1,zero,.L669
	andi	a7,a2,-4
	add	a6,a1,a7
	mv	t4,a0
.L670:
	lw	a3,0(t4)
	lw	t2,0(a1)
	addi	a1,a1,4
	addi	t4,t4,4
	xor	t3,t2,a3
	sw	t3,-4(t4)
	bne	a6,a1,.L670
	add	t5,a0,a7
	sub	t6,a2,a7
	beq	a2,a7,.L668
	lbu	a5,0(t5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a4,a5,a1
	sb	a4,0(t5)
	beq	t6,a2,.L668
	lbu	t1,1(t5)
	lbu	t0,1(a6)
	li	a7,2
	xor	t2,t0,t1
	sb	t2,1(t5)
	beq	t6,a7,.L668
	lbu	a3,2(t5)
	lbu	a6,2(a6)
	xor	t3,a6,a3
	sb	t3,2(t5)
	ret
.L669:
	add	t4,a1,a2
	mv	t5,a0
.L672:
	lbu	a5,0(t5)
	lbu	t6,0(a1)
	addi	a1,a1,1
	addi	t5,t5,1
	xor	a2,t6,a5
	sb	a2,-1(t5)
	bne	t4,a1,.L672
.L668:
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
	lbu	a5,0(a0)
	beq	a5,zero,.L686
	mv	t1,a0
.L681:
	lbu	a4,1(t1)
	addi	t1,t1,1
	bne	a4,zero,.L681
.L694:
	beq	a2,zero,.L683
.L696:
	lbu	t0,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t0,0(t1)
	beq	t0,zero,.L695
	addi	t1,t1,1
	bne	a2,zero,.L696
.L683:
	sb	zero,0(t1)
	ret
.L695:
	ret
.L686:
	mv	t1,a0
	j	.L694
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
	beq	a1,zero,.L697
.L698:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L700
.L697:
	ret
.L700:
	addi	a0,a0,1
	bne	a1,a0,.L698
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
	lbu	a3,0(a0)
	beq	a3,zero,.L711
.L717:
	mv	a5,a1
	j	.L710
.L709:
	beq	a4,a3,.L708
.L710:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L709
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L717
.L711:
	li	a0,0
.L708:
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
	li	a3,0
.L721:
	lbu	a4,0(a5)
	mv	a0,a3
	bne	a4,a1,.L720
	mv	a0,a5
.L720:
	addi	a5,a5,1
	mv	a3,a0
	bne	a4,zero,.L721
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
	lbu	a7,0(a1)
	mv	a3,a0
	beq	a7,zero,.L737
	mv	a5,a1
.L726:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L726
	sub	t3,a5,a1
	mv	a0,a3
	addi	t4,t3,-1
	bne	a5,a1,.L744
	ret
.L746:
	addi	a3,a3,1
	beq	t0,zero,.L745
.L744:
	lbu	t0,0(a3)
	bne	t0,a7,.L746
	add	t1,a3,t4
	mv	a0,a1
	mv	t2,a3
	mv	a2,a7
.L728:
	beq	t2,t1,.L730
	addi	t2,t2,1
	bne	t0,a2,.L731
	lbu	t0,0(t2)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	t0,zero,.L730
	mv	a0,a6
	bne	a2,zero,.L728
.L731:
	addi	a3,a3,1
	j	.L744
.L745:
	li	a0,0
	ret
.L730:
	bne	t0,a2,.L731
.L737:
	mv	a0,a3
.L724:
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s10,a3
	mv	s11,a2
	li	a3,0
	li	a2,0
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s9,a0
	mv	s8,a1
	call	__ltdf2
	blt	a0,zero,.L761
	mv	a0,s9
	mv	a1,s8
	li	a2,0
	li	a3,0
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	call	__gtdf2
	ble	a0,zero,.L759
	mv	a0,s11
	mv	a1,s10
	li	a2,0
	li	a3,0
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	call	__ltdf2
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	blt	a0,zero,.L750
.L751:
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	mv	a0,s9
	mv	a1,s8
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s8,24(sp)
	.cfi_restore 24
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L761:
	.cfi_restore_state
	mv	a0,s11
	mv	a1,s10
	li	a2,0
	li	a3,0
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	call	__gtdf2
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	ble	a0,zero,.L751
.L750:
	li	a5,-2147483648
	xor	s8,s8,a5
	j	.L751
.L759:
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	j	.L751
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L762
	bltu	a1,a3,.L773
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L773
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L768:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L778
	mv	a0,t1
.L764:
	bgeu	a7,a0,.L768
.L773:
	li	a0,0
.L762:
	ret
.L778:
	mv	t5,a2
	beq	a3,zero,.L762
.L767:
	mv	t2,t1
	add	t6,t1,a3
	j	.L765
.L766:
	beq	t2,t6,.L762
.L765:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L766
	bgtu	t1,a7,.L773
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L764
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L767
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a2
	mv	s1,a0
	beq	a2,zero,.L780
	call	memmove
.L780:
	add	a0,s1,s0
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
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	s9,84(sp)
	li	a3,0
	.cfi_offset 25, -44
	mv	s9,a2
	li	a2,0
	sw	s8,88(sp)
	sw	s10,80(sp)
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	sw	s11,76(sp)
	.cfi_offset 24, -40
	.cfi_offset 26, -48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 27, -52
	mv	s8,a0
	mv	s10,a1
	call	__ltdf2
	blt	a0,zero,.L811
	lui	s11,%hi(.LC15)
	lw	a2,%lo(.LC15)(s11)
	lw	a3,%lo(.LC15+4)(s11)
	mv	a0,s8
	mv	a1,s10
	call	__gedf2
	sw	zero,16(sp)
	blt	a0,zero,.L812
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
.L788:
	lui	s3,%hi(.LC10)
	lw	s6,%lo(.LC10)(s3)
	lw	s7,%lo(.LC10+4)(s3)
	lw	s4,%lo(.LC15)(s11)
	lw	s5,%lo(.LC15+4)(s11)
	li	s11,0
.L794:
	mv	a0,s8
	mv	a1,s10
	mv	a2,s6
	mv	a3,s7
	call	__muldf3
	mv	a2,s4
	mv	a3,s5
	addi	s11,s11,1
	mv	s8,a0
	mv	s10,a1
	call	__gedf2
	bge	a0,zero,.L794
.L795:
	lw	t5,16(sp)
	sw	s11,0(s9)
	mv	s9,s10
	beq	t5,zero,.L810
	li	t6,-2147483648
	xor	s9,s10,t6
.L810:
	lw	s1,116(sp)
	.cfi_restore 9
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
	lw	s6,96(sp)
	.cfi_restore 22
	lw	s7,92(sp)
	.cfi_restore 23
.L785:
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	sw	s8,8(sp)
	sw	s9,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s4,104(sp)
	.cfi_restore 20
	lw	s5,100(sp)
	.cfi_restore 21
	lw	s8,88(sp)
	.cfi_restore 24
	lw	s9,84(sp)
	.cfi_restore 25
	lw	s10,80(sp)
	.cfi_restore 26
	lw	s11,76(sp)
	.cfi_restore 27
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.L812:
	.cfi_restore_state
	lui	s0,%hi(.LC10)
	sw	s8,24(sp)
	sw	s10,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	lw	a2,%lo(.LC10)(s0)
	lw	a3,%lo(.LC10+4)(s0)
	call	__ltdf2
	bge	a0,zero,.L791
	sw	s8,40(sp)
	sw	s10,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	li	a2,0
	li	a3,0
	call	__nedf2
	bne	a0,zero,.L800
.L791:
	sw	zero,0(s9)
	mv	s9,s10
	j	.L785
.L811:
	lui	a5,%hi(.LC13)
	sw	s8,16(sp)
	sw	s10,20(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	li	a6,-2147483648
	xor	s4,s10,a6
	call	__ledf2
	bgt	a0,zero,.L813
	sw	s2,112(sp)
	.cfi_remember_state
	.cfi_offset 18, -16
	li	s2,1
	sw	s1,116(sp)
	sw	s3,108(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	mv	s10,s4
	sw	s2,16(sp)
	lui	s11,%hi(.LC15)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	j	.L788
.L813:
	.cfi_restore_state
	lui	t4,%hi(.LC14)
	sw	s8,32(sp)
	sw	s10,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	lw	a2,%lo(.LC14)(t4)
	lw	a3,%lo(.LC14+4)(t4)
	call	__gtdf2
	ble	a0,zero,.L791
	sw	s1,116(sp)
	.cfi_offset 9, -12
	li	s1,1
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	sw	s1,16(sp)
	lui	s0,%hi(.LC10)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
.L789:
	lw	s1,%lo(.LC10+4)(s0)
	lw	s0,%lo(.LC10)(s0)
	mv	s10,s4
	li	s11,0
.L796:
	mv	a2,s8
	mv	a3,s10
	mv	a0,s8
	mv	a1,s10
	call	__adddf3
	mv	a2,s0
	mv	a3,s1
	addi	s11,s11,-1
	mv	s8,a0
	mv	s10,a1
	call	__ltdf2
	blt	a0,zero,.L796
	j	.L795
.L800:
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 22
	.cfi_restore 23
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	mv	s4,s10
	j	.L789
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	or	a5,a1,a0
	mv	t4,a0
	mv	a7,a1
	li	a0,0
	li	a1,0
	beq	a5,zero,.L818
.L817:
	andi	a4,t4,1
	neg	t0,a4
	and	t2,t0,a2
	slli	t1,a7,31
	neg	t3,a4
	srli	a6,t4,1
	add	t5,a0,t2
	and	t6,t3,a3
	or	t4,t1,a6
	srli	a7,a7,1
	sltu	a5,t5,a0
	srli	t0,a2,31
	add	a1,a1,t6
	slli	a3,a3,1
	or	a4,t4,a7
	mv	a0,t5
	add	a1,a5,a1
	or	a3,t0,a3
	slli	a2,a2,1
	bne	a4,zero,.L817
	ret
.L818:
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
	mv	a5,a0
	li	t2,1
	li	a0,32
	bltu	a1,a5,.L821
	j	.L847
.L825:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L823
	beq	a0,zero,.L824
.L821:
	addi	a0,a0,-1
	bge	a1,zero,.L825
.L826:
	li	a0,0
.L831:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L828
	mv	a5,a7
.L828:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L831
.L824:
	bne	a2,zero,.L848
.L820:
	ret
.L823:
	bne	t2,zero,.L826
	li	a0,0
	beq	a2,zero,.L820
.L848:
	mv	a0,a5
	ret
.L847:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L824
	mv	a5,a1
	j	.L824
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L851
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	slli	a0,a0,8
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__clzsi2
	lw	ra,12(sp)
	.cfi_restore 1
	addi	a0,a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L851:
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
	srai	a3,a1,31
	mv	a5,a0
	mv	a4,a1
	xor	a0,a0,a3
	xor	a1,a1,a3
	beq	a5,a3,.L865
.L860:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__clzdi2
	lw	ra,12(sp)
	.cfi_restore 1
	addi	a0,a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L865:
	bne	a4,a5,.L860
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
	li	a0,0
	beq	a4,zero,.L869
.L868:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L868
	ret
.L869:
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
	andi	t1,a2,-8
	bltu	a0,a1,.L875
	add	a5,a1,a2
	bleu	a0,a5,.L904
.L875:
	beq	a3,zero,.L905
	slli	t3,a3,3
	add	t4,t3,a1
	mv	a3,a1
	mv	a5,a0
.L878:
	lw	t5,0(a3)
	lw	t6,4(a3)
	addi	a3,a3,8
	sw	t5,0(a5)
	sw	t6,4(a5)
	addi	a5,a5,8
	bne	a3,t4,.L878
	bleu	a2,t1,.L871
	sub	t0,a2,t1
	addi	a6,t0,-1
	li	a4,6
	bleu	a6,a4,.L906
	addi	t2,t1,1
	add	a7,a1,t2
	add	a4,a0,t1
	sub	t3,a4,a7
	sltiu	t4,t3,3
	add	a5,a1,t1
	bne	t4,zero,.L880
	or	t5,a5,a4
	andi	t6,t5,3
	bne	t6,zero,.L880
	andi	t2,t0,-4
	add	a6,a5,t2
.L881:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L881
	add	t1,t1,t2
	beq	t0,t2,.L871
	add	a5,a1,t1
	lbu	t0,0(a5)
	add	a4,a0,t1
	addi	a7,t1,1
	sb	t0,0(a4)
	bleu	a2,a7,.L871
	add	t3,a1,a7
	lbu	t4,0(t3)
	add	t5,a0,a7
	addi	t6,t1,2
	sb	t4,0(t5)
	bleu	a2,t6,.L871
	add	a1,a1,t6
	lbu	a2,0(a1)
	add	a0,a0,t6
	sb	a2,0(a0)
	ret
.L904:
	addi	a7,a2,-1
	li	a6,-1
	beq	a2,zero,.L871
.L876:
	add	a4,a1,a7
	lbu	t0,0(a4)
	add	t2,a0,a7
	addi	a7,a7,-1
	sb	t0,0(t2)
	bne	a7,a6,.L876
.L871:
	ret
.L905:
	add	a4,a0,t1
	add	a5,a1,t1
	beq	a2,zero,.L907
.L880:
	add	t2,a1,a2
.L883:
	lbu	a6,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	a5,t2,.L883
	ret
.L907:
	ret
.L906:
	add	a4,a0,t1
	add	a5,a1,t1
	j	.L880
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	srli	a7,a2,1
	bltu	a0,a1,.L912
	add	a5,a1,a2
	bleu	a0,a5,.L935
.L912:
	beq	a7,zero,.L911
	addi	t2,a7,-1
	li	t3,8
	bleu	t2,t3,.L915
	or	t4,a1,a0
	andi	t5,t4,3
	bne	t5,zero,.L915
	addi	t6,a1,2
	beq	a0,t6,.L915
	andi	t0,a2,-4
	add	a6,a1,t0
	srli	t1,a2,2
	mv	a5,a1
	mv	a4,a0
.L916:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L916
	slli	t2,t1,1
	beq	a7,t2,.L911
	add	a7,a1,t0
	lh	t3,0(a7)
	add	t4,a0,t0
	sh	t3,0(t4)
.L911:
	andi	a3,a2,1
	beq	a3,zero,.L908
.L936:
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
	ret
.L935:
	addi	t1,a2,-1
	li	a6,-1
	beq	a2,zero,.L908
.L913:
	add	a4,a1,t1
	lbu	a3,0(a4)
	add	t0,a0,t1
	addi	t1,t1,-1
	sb	a3,0(t0)
	bne	t1,a6,.L913
.L908:
	ret
.L915:
	slli	t5,a7,1
	add	t6,t5,a1
	mv	a6,a1
	mv	t1,a0
.L918:
	lh	t0,0(a6)
	addi	a6,a6,2
	addi	t1,t1,2
	sh	t0,-2(t1)
	bne	t6,a6,.L918
	andi	a3,a2,1
	beq	a3,zero,.L908
	j	.L936
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	srli	a6,a2,2
	andi	a7,a2,-4
	bltu	a0,a1,.L941
	add	a5,a1,a2
	bleu	a0,a5,.L970
.L941:
	beq	a6,zero,.L971
	slli	t3,a6,2
	add	t4,t3,a1
	mv	t6,a1
	mv	a6,a0
.L944:
	lw	t5,0(t6)
	addi	t6,t6,4
	addi	a6,a6,4
	sw	t5,-4(a6)
	bne	t6,t4,.L944
	bleu	a2,a7,.L937
	sub	t0,a2,a7
	addi	a4,t0,-1
	li	a5,6
	bleu	a4,a5,.L972
	addi	a3,a7,1
	add	t1,a1,a3
	add	a4,a0,a7
	sub	t2,a4,t1
	sltiu	t3,t2,3
	add	t1,a1,a7
	bne	t3,zero,.L946
	or	t4,t1,a4
	andi	t5,t4,3
	bne	t5,zero,.L946
	andi	t6,t0,-4
	add	a6,t1,t6
.L947:
	lw	a3,0(t1)
	addi	t1,t1,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	t1,a6,.L947
	add	a7,a7,t6
	beq	t0,t6,.L937
	add	t0,a1,a7
	lbu	t1,0(t0)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	t1,0(a4)
	bleu	a2,a5,.L937
	add	t2,a1,a5
	lbu	t3,0(t2)
	add	t4,a0,a5
	addi	t5,a7,2
	sb	t3,0(t4)
	bleu	a2,t5,.L937
	add	a1,a1,t5
	lbu	a2,0(a1)
	add	a0,a0,t5
	sb	a2,0(a0)
	ret
.L970:
	addi	t2,a2,-1
	li	t0,-1
	beq	a2,zero,.L937
.L942:
	add	a4,a1,t2
	lbu	a3,0(a4)
	add	t1,a0,t2
	addi	t2,t2,-1
	sb	a3,0(t1)
	bne	t2,t0,.L942
.L937:
	ret
.L971:
	add	a4,a0,a7
	add	t1,a1,a7
	beq	a2,zero,.L973
.L946:
	add	t6,a1,a2
.L949:
	lbu	a6,0(t1)
	addi	t1,t1,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	t1,t6,.L949
	ret
.L973:
	ret
.L972:
	add	a4,a0,a7
	add	t1,a1,a7
	j	.L946
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__modsi3
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__floatunsidf
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	fcvt.s.wu	fa5,a0
	fmv.x.s	a0,fa5
	ret
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__floatundidf
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__floatundisf
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__umodsi3
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	srai	a4,a0,15
	mv	a5,a0
	bne	a4,zero,.L988
	srai	a0,a0,14
	bne	a0,zero,.L985
	srai	t0,a5,13
	bne	t0,zero,.L989
	srai	t1,a5,12
	bne	t1,zero,.L990
	srai	t2,a5,11
	bne	t2,zero,.L991
	srai	a0,a5,10
	bne	a0,zero,.L992
	srai	a1,a5,9
	bne	a1,zero,.L993
	srai	a2,a5,8
	bne	a2,zero,.L994
	srai	a3,a5,7
	bne	a3,zero,.L995
	srai	a6,a5,6
	bne	a6,zero,.L996
	srai	a7,a5,5
	bne	a7,zero,.L997
	srai	t3,a5,4
	bne	t3,zero,.L998
	srai	t4,a5,3
	bne	t4,zero,.L999
	srai	t5,a5,2
	bne	t5,zero,.L1000
	srai	t6,a5,1
	bne	t6,zero,.L1001
	seqz	a5,a5
	addi	a0,a5,15
	ret
.L1001:
	li	a0,14
.L985:
	ret
.L988:
	li	a0,0
	ret
.L999:
	li	a0,12
	ret
.L989:
	li	a0,2
	ret
.L990:
	li	a0,3
	ret
.L991:
	li	a0,4
	ret
.L992:
	li	a0,5
	ret
.L993:
	li	a0,6
	ret
.L994:
	li	a0,7
	ret
.L995:
	li	a0,8
	ret
.L996:
	li	a0,9
	ret
.L997:
	li	a0,10
	ret
.L998:
	li	a0,11
	ret
.L1000:
	li	a0,13
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
	andi	a5,a0,1
	bne	a5,zero,.L1006
	andi	t0,a0,2
	bne	t0,zero,.L1007
	andi	t1,a0,4
	bne	t1,zero,.L1008
	andi	t2,a0,8
	bne	t2,zero,.L1009
	andi	a1,a0,16
	bne	a1,zero,.L1010
	andi	a2,a0,32
	bne	a2,zero,.L1011
	andi	a3,a0,64
	bne	a3,zero,.L1012
	andi	a4,a0,128
	bne	a4,zero,.L1013
	andi	a6,a0,256
	bne	a6,zero,.L1014
	andi	a7,a0,512
	bne	a7,zero,.L1015
	andi	t3,a0,1024
	bne	t3,zero,.L1016
	slli	t5,a0,20
	li	t4,4096
	blt	t5,zero,.L1017
	and	t6,a0,t4
	bne	t6,zero,.L1018
	slli	a5,a0,18
	blt	a5,zero,.L1019
	slli	t0,a0,17
	blt	t0,zero,.L1020
	srai	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L1006:
	li	a0,0
	ret
.L1007:
	li	a0,1
	ret
.L1018:
	li	a0,12
	ret
.L1008:
	li	a0,2
	ret
.L1009:
	li	a0,3
	ret
.L1010:
	li	a0,4
	ret
.L1011:
	li	a0,5
	ret
.L1012:
	li	a0,6
	ret
.L1013:
	li	a0,7
	ret
.L1014:
	li	a0,8
	ret
.L1015:
	li	a0,9
	ret
.L1016:
	li	a0,10
	ret
.L1017:
	li	a0,11
	ret
.L1019:
	li	a0,13
	ret
.L1020:
	li	a0,14
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
	lui	a5,%hi(.LC16)
	fmv.s.x	fa5,a0
	flw	fa4,%lo(.LC16)(a5)
	fge.s	t0,fa5,fa4
	bne	t0,zero,.L1029
	fcvt.w.s a0,fa5,rtz
	ret
.L1029:
	fsub.s	ft0,fa5,fa4
	li	t1,32768
	fcvt.w.s a0,ft0,rtz
	add	a0,a0,t1
	ret
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	srai	a5,a0,1
	andi	t0,a5,1
	andi	a3,a0,1
	srai	a4,a0,2
	add	t1,t0,a3
	andi	t2,a4,1
	srai	a1,a0,3
	add	a2,t1,t2
	andi	a6,a1,1
	srai	a7,a0,4
	add	t3,a2,a6
	andi	t4,a7,1
	srai	t5,a0,5
	add	t6,t3,t4
	andi	a5,t5,1
	srai	t0,a0,6
	add	t1,t6,a5
	andi	a4,t0,1
	srai	a3,a0,7
	add	t2,t1,a4
	andi	a1,a3,1
	srai	a2,a0,8
	add	a6,t2,a1
	andi	a7,a2,1
	srai	t3,a0,9
	add	t4,a6,a7
	andi	t5,t3,1
	srai	t6,a0,10
	add	a5,t4,t5
	andi	t0,t6,1
	srai	t1,a0,11
	add	t2,a5,t0
	srai	a4,a0,12
	andi	a3,t1,1
	srai	a6,a0,13
	add	a1,t2,a3
	andi	a2,a4,1
	srai	t4,a0,14
	add	a7,a1,a2
	andi	t3,a6,1
	add	t5,a7,t3
	andi	t6,t4,1
	add	a5,t5,t6
	srai	a0,a0,15
	add	t0,a5,a0
	andi	a0,t0,1
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
	srai	a5,a0,1
	andi	t0,a5,1
	andi	a3,a0,1
	srai	a4,a0,2
	add	t1,t0,a3
	andi	t2,a4,1
	srai	a1,a0,3
	add	a2,t1,t2
	andi	a6,a1,1
	srai	a7,a0,4
	add	t3,a2,a6
	andi	t4,a7,1
	srai	t5,a0,5
	add	t6,t3,t4
	andi	a5,t5,1
	srai	t0,a0,6
	add	t1,t6,a5
	andi	a4,t0,1
	srai	a3,a0,7
	add	t2,t1,a4
	andi	a1,a3,1
	srai	a2,a0,8
	add	a6,t2,a1
	andi	a7,a2,1
	srai	t3,a0,9
	add	t4,a6,a7
	andi	t5,t3,1
	srai	t6,a0,10
	add	a5,t4,t5
	andi	t0,t6,1
	srai	t1,a0,11
	add	t2,a5,t0
	srai	a4,a0,12
	andi	a3,t1,1
	srai	a6,a0,13
	add	a1,t2,a3
	andi	a2,a4,1
	srai	t4,a0,14
	add	a7,a1,a2
	andi	t3,a6,1
	add	t5,a7,t3
	andi	t6,t4,1
	add	a5,t5,t6
	srai	a0,a0,15
	add	a0,a5,a0
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L1035
.L1034:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L1034
	ret
.L1035:
	ret
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L1040
	beq	a1,zero,.L1041
.L1039:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a4
	srli	a1,a1,1
	add	a0,a0,t1
	slli	a4,a4,1
	bne	a1,zero,.L1039
	ret
.L1040:
	ret
.L1041:
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	mv	a5,a0
	li	t2,1
	li	a0,32
	bgtu	a5,a1,.L1044
	j	.L1070
.L1048:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L1046
	beq	a0,zero,.L1047
.L1044:
	addi	a0,a0,-1
	bge	a1,zero,.L1048
.L1049:
	li	a0,0
.L1054:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L1051
	mv	a5,a7
.L1051:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L1054
.L1047:
	bne	a2,zero,.L1071
.L1043:
	ret
.L1046:
	bne	t2,zero,.L1049
	li	a0,0
	beq	a2,zero,.L1043
.L1071:
	mv	a0,a5
	ret
.L1070:
	sltu	a4,a5,a1
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L1047
	mv	a5,a1
	j	.L1047
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	fmv.s.x	fa4,a0
	fmv.s.x	fa5,a1
	flt.s	a5,fa4,fa5
	bne	a5,zero,.L1074
	fgt.s	a0,fa4,fa5
	ret
.L1074:
	li	a0,-1
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	mv	s6,a0
	mv	s0,a1
	mv	s7,a2
	mv	s1,a3
	call	__ltdf2
	blt	a0,zero,.L1078
	mv	a2,s7
	mv	a0,s6
	mv	a3,s1
	mv	a1,s0
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	call	__gtdf2
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	sgt	a0,a0,zero
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L1078:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	li	a0,-1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a2,a1
	srai	a3,a1,31
	srai	a1,a0,31
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__muldi3
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a2,a1
	li	a3,0
	li	a1,0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	__muldi3
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	blt	a1,zero,.L1098
	beq	a1,zero,.L1090
	li	a2,0
.L1086:
	li	t2,32
	li	a0,0
	j	.L1089
.L1099:
	beq	t2,zero,.L1088
.L1089:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a3
	addi	a4,t2,-1
	srai	a1,a1,1
	andi	t2,a4,0xff
	add	a0,a0,t1
	slli	a3,a3,1
	bne	a1,zero,.L1099
.L1088:
	beq	a2,zero,.L1084
	neg	a0,a0
	ret
.L1090:
	li	a0,0
.L1084:
	ret
.L1098:
	neg	a1,a1
	li	a2,1
	j	.L1086
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	li	a5,1
	li	a7,0
	blt	a0,zero,.L1131
.L1101:
	bge	a1,zero,.L1102
	neg	a1,a1
	mv	a7,a5
.L1102:
	mv	a3,a0
	mv	t3,a1
	li	a2,32
	li	a4,1
	bgtu	a0,a1,.L1103
	j	.L1129
.L1107:
	beq	a2,zero,.L1108
.L1103:
	slli	t3,t3,1
	addi	a2,a2,-1
	slli	a4,a4,1
	bgtu	a0,t3,.L1107
.L1108:
	li	a0,0
	beq	a4,zero,.L1106
.L1105:
	sltu	a1,a3,t3
	xori	t0,a1,1
	neg	t1,t0
	and	t2,a4,t1
	sub	a6,a3,t3
	srli	a4,a4,1
	bne	a1,zero,.L1110
	mv	a3,a6
.L1110:
	or	a0,a0,t2
	srli	t3,t3,1
	bne	a4,zero,.L1105
.L1106:
	beq	a7,zero,.L1100
	neg	a0,a0
	ret
.L1100:
	ret
.L1131:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1101
.L1129:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1106
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	mv	a2,a0
	li	a6,0
	bge	a0,zero,.L1133
	neg	a2,a0
	li	a6,1
.L1133:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	t2,a1,a5
	mv	a0,a2
	li	a3,32
	li	t0,1
	bgtu	a2,t2,.L1134
	j	.L1160
.L1138:
	beq	a3,zero,.L1139
.L1134:
	slli	t2,t2,1
	addi	a3,a3,-1
	slli	t0,t0,1
	bgtu	a2,t2,.L1138
.L1139:
	beq	t0,zero,.L1162
.L1136:
	srli	t0,t0,1
	sub	t1,a0,t2
	bltu	a0,t2,.L1141
	mv	a0,t1
.L1141:
	srli	t2,t2,1
	bne	t0,zero,.L1136
.L1137:
	beq	a6,zero,.L1132
	neg	a0,a0
	ret
.L1132:
	ret
.L1162:
	mv	a0,a2
	j	.L1137
.L1160:
	sub	a4,a2,t2
	bltu	a2,t2,.L1137
	mv	a0,a4
	j	.L1137
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	mv	a4,a0
	bgeu	a1,a0,.L1347
	slli	t2,a1,16
	srai	a6,t2,16
	blt	a6,zero,.L1168
	slli	t4,a1,1
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a0,a5,.L1241
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1241
	slli	t1,a1,2
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a0,a5,.L1243
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1243
	slli	a5,a1,3
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1245
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1245
	slli	t4,a1,4
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1247
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1247
	slli	t1,a1,5
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1249
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1249
	slli	a5,a1,6
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1251
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1251
	slli	t4,a1,7
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1253
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1253
	slli	t1,a1,8
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1255
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1255
	slli	a5,a1,9
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1257
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1257
	slli	t4,a1,10
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1259
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1259
	slli	t1,a1,11
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1261
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1261
	slli	a5,a1,12
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1263
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1263
	slli	t4,a1,13
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1265
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1265
	slli	t1,a1,14
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1267
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1267
	slli	a1,a1,15
	slli	a7,a1,16
	srli	t3,a7,16
	bleu	a4,t3,.L1268
	li	a6,32768
	mv	a0,a4
	mv	a5,a6
	bne	t3,zero,.L1170
.L1171:
	bne	a2,zero,.L1270
.L1360:
	mv	a0,t3
	ret
.L1241:
	li	a6,2
.L1170:
	sub	t3,a4,a5
	slli	t4,t3,16
	srli	t5,t4,16
	sltu	t6,a4,a5
	mv	a1,a4
	bltu	a4,a5,.L1237
	mv	a1,t5
.L1237:
	slli	a4,a1,16
	srli	t0,a4,16
	li	t1,0
	bne	t6,zero,.L1239
	mv	t1,a6
.L1239:
	srli	t4,a5,1
	sub	a0,t0,t4
	slli	a7,a0,16
	slli	a3,t1,16
	srli	t2,a3,16
	srli	t3,a6,1
	srli	t5,a7,16
	sltu	t6,t0,t4
	mv	a0,t0
	bltu	t0,t4,.L1173
	mv	a0,t5
.L1173:
	slli	a1,a0,16
	srli	a0,a1,16
	li	a4,0
	bne	t6,zero,.L1175
	mv	a4,t3
.L1175:
	or	t0,t2,a4
	slli	t1,t0,16
	srli	t2,a6,2
	srli	t3,t1,16
	srli	t4,a5,2
	beq	t2,zero,.L1171
	sub	a3,a0,t4
	sltu	a7,a0,t4
	slli	t5,a3,16
	srli	t6,t5,16
	xori	a1,a7,1
	bne	a7,zero,.L1177
	mv	a0,t6
.L1177:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a1,zero,.L1179
	mv	a7,t2
.L1179:
	or	t3,t3,a7
	slli	a4,t3,16
	srli	t0,a6,3
	srli	t3,a4,16
	srli	t2,a5,3
	beq	t0,zero,.L1171
	sub	t1,a0,t2
	sltu	t4,a0,t2
	slli	a3,t1,16
	srli	t5,a3,16
	xori	t6,t4,1
	bne	t4,zero,.L1181
	mv	a0,t5
.L1181:
	slli	a1,a0,16
	srli	a0,a1,16
	li	a7,0
	beq	t6,zero,.L1183
	mv	a7,t0
.L1183:
	or	t3,t3,a7
	slli	a4,t3,16
	srli	t0,a6,4
	srli	t3,a4,16
	srli	t2,a5,4
	beq	t0,zero,.L1171
	sub	t1,a0,t2
	sltu	t4,a0,t2
	slli	a3,t1,16
	srli	t5,a3,16
	xori	t6,t4,1
	bne	t4,zero,.L1185
	mv	a0,t5
.L1185:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t6,zero,.L1187
	mv	a7,t0
.L1187:
	or	a1,t3,a7
	slli	t3,a1,16
	srli	t0,a6,5
	srli	t3,t3,16
	srli	a4,a5,5
	beq	t0,zero,.L1171
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	bne	t4,zero,.L1189
	mv	a0,a3
.L1189:
	slli	t6,a0,16
	srli	a0,t6,16
	li	a7,0
	beq	t5,zero,.L1191
	mv	a7,t0
.L1191:
	or	a1,t3,a7
	slli	t3,a1,16
	srli	t0,a6,6
	srli	t3,t3,16
	srli	a4,a5,6
	beq	t0,zero,.L1171
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	bne	t4,zero,.L1193
	mv	a0,a3
.L1193:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t5,zero,.L1195
	mv	a7,t0
.L1195:
	or	t6,t3,a7
	slli	a1,t6,16
	srli	t0,a6,7
	srli	t3,a1,16
	srli	a4,a5,7
	beq	t0,zero,.L1171
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	beq	t4,zero,.L1348
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	t5,zero,.L1349
.L1199:
	or	t3,t3,a7
	slli	t0,t3,16
	srli	t6,a6,8
	srli	t3,t0,16
	srli	a1,a5,8
	beq	t6,zero,.L1171
	sub	t2,a0,a1
	sltu	a4,a0,a1
	slli	t4,t2,16
	srli	a3,t4,16
	xori	t1,a4,1
	beq	a4,zero,.L1350
	slli	t5,a0,16
	srli	a0,t5,16
	li	a7,0
	bne	t1,zero,.L1351
.L1203:
	or	t3,t3,a7
	slli	t0,t3,16
	srli	t6,a6,9
	srli	t3,t0,16
	srli	a1,a5,9
	beq	t6,zero,.L1171
	sub	t2,a0,a1
	sltu	a4,a0,a1
	slli	t4,t2,16
	srli	a3,t4,16
	xori	t1,a4,1
	beq	a4,zero,.L1352
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	t1,zero,.L1353
.L1207:
	or	t5,t3,a7
	slli	t3,t5,16
	srli	t6,a6,10
	srli	t3,t3,16
	srli	t0,a5,10
	beq	t6,zero,.L1171
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1354
	slli	t1,a0,16
	srli	a0,t1,16
	li	a7,0
	bne	a3,zero,.L1355
.L1211:
	or	t5,t3,a7
	slli	t3,t5,16
	srli	t6,a6,11
	srli	t3,t3,16
	srli	t0,a5,11
	beq	t6,zero,.L1171
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1356
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	a3,zero,.L1357
.L1215:
	or	t1,t3,a7
	slli	t6,t1,16
	srli	t5,a6,12
	srli	t3,t6,16
	srli	t0,a5,12
	beq	t5,zero,.L1171
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1358
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	a3,zero,.L1359
.L1219:
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,13
	srli	t3,t1,16
	srli	t6,a5,13
	beq	t5,zero,.L1171
.L1361:
	sub	t0,a0,t6
	sltu	a1,a0,t6
	slli	t2,t0,16
	srli	a4,t2,16
	xori	t4,a1,1
	bne	a1,zero,.L1221
	mv	a0,a4
.L1221:
	slli	a3,a0,16
	srli	a0,a3,16
	li	a7,0
	beq	t4,zero,.L1223
	mv	a7,t5
.L1223:
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,14
	srli	t3,t1,16
	srli	t6,a5,14
	beq	t5,zero,.L1171
	sub	t0,a0,t6
	sltu	a1,a0,t6
	slli	t2,t0,16
	srli	a4,t2,16
	xori	t4,a1,1
	bne	a1,zero,.L1225
	mv	a0,a4
.L1225:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t4,zero,.L1227
	mv	a7,t5
.L1227:
	or	t3,t3,a7
	slli	t5,t3,16
	li	a3,16384
	srli	t3,t5,16
	srli	a5,a5,15
	beq	a6,a3,.L1171
	sub	a6,a0,a5
	sltu	t1,a0,a5
	slli	t6,a6,16
	srli	t0,t6,16
	xori	a1,t1,1
	bne	t1,zero,.L1229
	mv	a0,t0
.L1229:
	slli	t2,a0,16
	srli	a0,t2,16
	or	t3,a1,t3
	beq	a2,zero,.L1360
.L1270:
	ret
.L1349:
	mv	a7,t0
	j	.L1199
.L1348:
	mv	a0,a3
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t5,zero,.L1199
	j	.L1349
.L1351:
	mv	a7,t6
	j	.L1203
.L1350:
	mv	a0,a3
	slli	t5,a0,16
	srli	a0,t5,16
	li	a7,0
	beq	t1,zero,.L1203
	j	.L1351
.L1353:
	mv	a7,t6
	j	.L1207
.L1352:
	mv	a0,a3
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t1,zero,.L1207
	j	.L1353
.L1355:
	mv	a7,t6
	j	.L1211
.L1354:
	mv	a0,t4
	slli	t1,a0,16
	srli	a0,t1,16
	li	a7,0
	beq	a3,zero,.L1211
	j	.L1355
.L1357:
	mv	a7,t6
	j	.L1215
.L1356:
	mv	a0,t4
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a3,zero,.L1215
	j	.L1357
.L1359:
	mv	a7,t5
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,13
	srli	t3,t1,16
	srli	t6,a5,13
	bne	t5,zero,.L1361
	j	.L1171
.L1358:
	mv	a0,t4
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a3,zero,.L1219
	j	.L1359
.L1243:
	li	a6,4
	j	.L1170
.L1245:
	li	a6,8
	j	.L1170
.L1247:
	li	a6,16
	j	.L1170
.L1257:
	li	a6,512
	j	.L1170
.L1249:
	li	a6,32
	j	.L1170
.L1251:
	li	a6,64
	j	.L1170
.L1253:
	li	a6,128
	j	.L1170
.L1255:
	li	a6,256
	j	.L1170
.L1347:
	sub	a5,a0,a1
	slli	t0,a5,16
	srli	t1,t0,16
	sub	a3,a1,a0
	mv	a5,a0
	bne	a1,a0,.L1166
	mv	a5,t1
.L1166:
	slli	a0,a5,16
	srli	a0,a0,16
	seqz	t3,a3
	j	.L1171
.L1259:
	li	a6,1024
	j	.L1170
.L1261:
	li	a1,4096
	addi	a6,a1,-2048
	j	.L1170
.L1263:
	li	a6,4096
	j	.L1170
.L1265:
	li	a6,8192
	j	.L1170
.L1267:
	li	a6,16384
	j	.L1170
.L1268:
	li	a5,32768
	mv	a6,a5
	j	.L1170
.L1168:
	sub	a1,a0,a1
	slli	a7,a1,16
	srli	a0,a7,16
	li	t3,1
	j	.L1171
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	mv	a5,a0
	li	t2,1
	li	a0,32
	bgtu	a5,a1,.L1363
	j	.L1389
.L1367:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L1365
	beq	a0,zero,.L1366
.L1363:
	addi	a0,a0,-1
	bge	a1,zero,.L1367
.L1368:
	li	a0,0
.L1373:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L1370
	mv	a5,a7
.L1370:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L1373
.L1366:
	bne	a2,zero,.L1390
.L1362:
	ret
.L1365:
	bne	t2,zero,.L1368
	li	a0,0
	beq	a2,zero,.L1362
.L1390:
	mv	a0,a5
	ret
.L1389:
	sltu	a4,a5,a1
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L1366
	mv	a5,a1
	j	.L1366
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	andi	a5,a2,32
	beq	a5,zero,.L1392
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1392:
	beq	a2,zero,.L1394
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1394:
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
	beq	a5,zero,.L1397
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1397:
	beq	a2,zero,.L1399
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1399:
	ret
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	slli	a4,a1,8
	srli	a5,a0,24
	li	a6,65536
	or	t0,a4,a5
	slli	t1,a1,24
	addi	t2,a6,-256
	srli	a2,a0,8
	srli	a7,a1,8
	and	t6,a7,t2
	andi	t4,t0,255
	slli	a3,a0,24
	li	t3,16711680
	or	t5,t1,a2
	srli	a1,a1,24
	and	a2,t5,t2
	and	a4,t0,t3
	or	a5,a1,t6
	or	a6,a3,t4
	slli	a0,a0,8
	and	t2,a0,t3
	or	t0,a6,a2
	or	a7,a5,a4
	or	a1,t0,t2
	or	a0,a7,t1
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	li	a3,65536
	srli	a5,a0,24
	slli	a2,a0,24
	srli	a4,a0,8
	addi	t0,a3,-256
	or	t1,a5,a2
	slli	a0,a0,8
	and	t2,a4,t0
	li	a1,16711680
	or	a6,t1,t2
	and	a7,a0,a1
	or	a0,a6,a7
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
	li	a1,65536
	sltu	t0,a0,a1
	slli	t1,t0,4
	li	a5,16
	sub	t2,a5,t1
	li	a4,65536
	srl	a0,a0,t2
	addi	a2,a4,-256
	and	a3,a0,a2
	seqz	a6,a3
	slli	a7,a6,3
	li	t3,8
	sub	t4,t3,a7
	srl	t5,a0,t4
	andi	t6,t5,240
	seqz	a1,t6
	slli	t0,a1,2
	li	a5,4
	sub	t2,a5,t0
	srl	a4,t5,t2
	andi	a0,a4,12
	seqz	a2,a0
	li	t3,2
	slli	a3,a2,1
	sub	a6,t3,a3
	srl	t4,a4,a6
	srli	t5,t4,1
	add	t1,a7,t1
	andi	a7,t5,1
	add	t6,t0,t1
	sub	a1,t3,t4
	beq	a7,zero,.L1405
	li	a1,0
.L1405:
	add	t0,a3,t6
	add	a0,a1,t0
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
	blt	a1,a3,.L1408
	li	a0,2
	bgt	a1,a3,.L1406
	li	a0,0
	bltu	a5,a2,.L1406
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1408:
	li	a0,0
.L1406:
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
	mv	a5,a0
	blt	a1,a3,.L1414
	li	a0,1
	bgt	a1,a3,.L1412
	li	a0,-1
	bltu	a5,a2,.L1412
	sgtu	a0,a5,a2
	ret
.L1414:
	li	a0,-1
.L1412:
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	slli	a1,a0,16
	srli	t0,a1,16
	seqz	t1,t0
	slli	t2,t1,4
	srl	a5,a0,t2
	andi	a2,a5,255
	seqz	a0,a2
	slli	a7,a0,3
	srl	a4,a5,a7
	andi	a3,a4,15
	seqz	t3,a3
	slli	t4,t3,2
	srl	t5,a4,t4
	andi	t6,t5,3
	seqz	a1,t6
	slli	t0,a1,1
	srl	t1,t5,t0
	andi	a5,t1,3
	not	a0,a5
	add	t2,a7,t2
	andi	a2,a0,1
	srli	a7,a5,1
	li	a6,2
	add	a4,t4,t2
	neg	a3,a2
	sub	a6,a6,a7
	add	t3,t0,a4
	and	t4,a3,a6
	add	a0,t4,t3
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
	beq	a5,zero,.L1419
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1419:
	beq	a2,zero,.L1421
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1421:
	ret
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
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	slli	s3,a1,16
	slli	s4,a0,16
	sw	s5,4(sp)
	srli	s4,s4,16
	.cfi_offset 21, -28
	srli	s5,s3,16
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a1
	mv	s2,a0
	mv	a1,s5
	mv	a0,s4
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	srli	s2,s2,16
	call	__mulsi3
	mv	s0,a0
	mv	a1,s2
	mv	a0,s5
	call	__mulsi3
	srli	s5,s0,16
	slli	t0,s0,16
	srli	s3,s1,16
	add	s1,a0,s5
	slli	a5,s1,16
	srli	t1,t0,16
	mv	a1,s3
	mv	a0,s4
	add	s0,t1,a5
	srli	s4,a5,16
	call	__mulsi3
	add	s5,a0,s4
	slli	t2,s0,16
	mv	a1,s3
	slli	a3,s5,16
	srli	a2,t2,16
	mv	a0,s2
	add	s3,a2,a3
	call	__mulsi3
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	srli	s2,s1,16
	add	a0,s2,a0
	srli	a1,s5,16
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	add	a1,a0,a1
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s6,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	slli	s1,a2,16
	slli	s6,a0,16
	sw	s8,8(sp)
	srli	s6,s6,16
	.cfi_offset 24, -40
	srli	s8,s1,16
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a1
	mv	s4,a0
	mv	a1,s8
	mv	a0,s6
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	mv	s2,a2
	mv	s5,a3
	srli	s7,s4,16
	call	__mulsi3
	mv	s0,a0
	mv	a1,s7
	mv	a0,s8
	call	__mulsi3
	srli	s8,s0,16
	slli	t0,s0,16
	add	s0,a0,s8
	srli	s8,s2,16
	slli	a5,s0,16
	srli	t1,t0,16
	mv	a1,s8
	mv	a0,s6
	add	s1,t1,a5
	srli	s6,a5,16
	call	__mulsi3
	slli	t2,s1,16
	add	s6,a0,s6
	slli	a3,s6,16
	srli	a2,t2,16
	mv	a1,s8
	mv	a0,s7
	add	s8,a2,a3
	srli	s7,s0,16
	call	__mulsi3
	add	a6,s7,a0
	srli	a4,s6,16
	mv	a1,s5
	mv	a0,s4
	add	s4,a6,a4
	call	__mulsi3
	mv	a7,a0
	mv	a1,s3
	mv	a0,s2
	add	s2,a7,s4
	call	__mulsi3
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	mv	a1,a0
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	mv	a0,s8
	add	a1,s2,a1
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
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
	sub	a1,a1,a5
	neg	a0,a0
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
	xor	t0,a5,a1
	srli	a4,t0,8
	xor	t1,a4,t0
	srli	t2,t1,4
	xor	a2,t2,t1
	li	a0,28672
	addi	a6,a0,-1642
	andi	a3,a2,15
	sra	a7,a6,a3
	andi	a0,a7,1
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
	xor	t0,a5,a0
	srli	a0,t0,8
	xor	t1,a0,t0
	srli	t2,t1,4
	xor	a1,t2,t1
	li	a2,28672
	andi	a3,a1,15
	addi	a4,a2,-1642
	sra	a6,a4,a3
	andi	a0,a6,1
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
	slli	a5,a1,31
	srli	a3,a0,1
	li	a4,1431654400
	or	t0,a5,a3
	addi	t1,a4,1365
	and	t2,t0,t1
	srli	a2,a1,1
	sub	a6,a0,t2
	and	a7,a2,t1
	sgtu	a0,a6,a0
	sub	a1,a1,a7
	sub	t3,a1,a0
	slli	t4,t3,30
	srli	t5,a6,2
	li	t6,858992640
	addi	a4,t6,819
	or	a5,t4,t5
	and	a3,a5,a4
	and	t0,a6,a4
	srli	t1,t3,2
	add	t2,a3,t0
	and	a2,t3,a4
	and	a6,t1,a4
	sltu	a7,t2,a3
	add	a0,a6,a2
	add	a1,a7,a0
	slli	t3,a1,28
	srli	t4,t2,4
	or	t5,t3,t4
	add	t6,t5,t2
	srli	a5,a1,4
	add	t0,a5,a1
	sltu	a4,t6,t5
	li	a3,252645376
	addi	t2,a3,-241
	add	t1,a4,t0
	and	a2,t1,t2
	and	a6,t6,t2
	add	a7,a2,a6
	srli	a0,a7,16
	add	a1,a0,a7
	srli	t3,a1,8
	add	t4,t3,a1
	andi	a0,t4,127
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
	li	a4,1431654400
	srli	a5,a0,1
	addi	t0,a4,1365
	and	t1,a5,t0
	sub	a0,a0,t1
	li	t2,858992640
	srli	a1,a0,2
	addi	a2,t2,819
	and	a6,a0,a2
	and	a3,a1,a2
	add	a7,a3,a6
	srli	t3,a7,4
	li	t4,252645376
	add	t5,t3,a7
	addi	t6,t4,-241
	and	a5,t5,t6
	srli	a4,a5,16
	add	t0,a4,a5
	srli	t1,t0,8
	add	a0,t1,t0
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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s10,48(sp)
	sw	s11,44(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	sw	a2,16(sp)
	andi	a5,a2,1
	mv	s10,a0
	mv	a6,a1
	mv	s11,a2
	beq	a5,zero,.L1438
	lui	t1,%hi(.LC15)
	lw	s9,%lo(.LC15)(t1)
	lw	s8,%lo(.LC15+4)(t1)
	sw	t1,20(sp)
.L1435:
	mv	a0,s9
	mv	a1,s8
	mv	a3,a6
	mv	a2,s10
	mv	s5,a6
	sw	a6,4(sp)
	call	__muldf3
	mv	s9,a0
	mv	s8,a1
	mv	a6,s5
.L1433:
	srli	a3,s11,31
	add	t2,a3,s11
	srai	s11,t2,1
	beq	s11,zero,.L1434
.L1436:
	mv	a2,s10
	mv	a0,s10
	mv	a3,a6
	mv	a1,a6
	call	__muldf3
	srli	s0,s11,31
	andi	s1,s11,1
	add	a4,s0,s11
	mv	s10,a0
	mv	a6,a1
	bne	s1,zero,.L1435
	srai	s11,a4,1
	j	.L1436
.L1434:
	lw	a7,16(sp)
	bge	a7,zero,.L1432
	lw	s2,20(sp)
	sw	s9,24(sp)
	sw	s8,28(sp)
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,%lo(.LC15)(s2)
	lw	a1,%lo(.LC15+4)(s2)
	call	__divdf3
	mv	s9,a0
	mv	s8,a1
.L1432:
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	sw	s9,8(sp)
	sw	s8,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.L1438:
	.cfi_restore_state
	lui	t0,%hi(.LC15)
	lw	s9,%lo(.LC15)(t0)
	lw	s8,%lo(.LC15+4)(t0)
	sw	t0,20(sp)
	j	.L1433
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	lui	a2,%hi(.LC17)
	andi	a5,a1,1
	fmv.s.x	fa5,a0
	flw	fa4,%lo(.LC17)(a2)
	beq	a5,zero,.L1446
	mv	a0,a1
.L1443:
	fmul.s	fa4,fa4,fa5
.L1441:
	srli	a4,a0,31
	add	t0,a4,a0
	srai	a0,t0,1
	beq	a0,zero,.L1442
	srli	t1,a0,31
	andi	a3,a0,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a0
	bne	a3,zero,.L1443
.L1447:
	srai	a0,t2,1
	srli	t1,a0,31
	andi	a3,a0,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a0
	bne	a3,zero,.L1443
	j	.L1447
.L1442:
	bge	a1,zero,.L1440
	flw	ft0,%lo(.LC17)(a2)
	fdiv.s	fa4,ft0,fa4
.L1440:
	fmv.x.s	a0,fa4
	ret
.L1446:
	mv	a0,a1
	j	.L1441
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
	bltu	a1,a3,.L1450
	li	a0,2
	bgtu	a1,a3,.L1448
	li	a0,0
	bltu	a5,a2,.L1448
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1450:
	li	a0,0
.L1448:
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
	mv	a5,a0
	bltu	a1,a3,.L1456
	li	a0,1
	bgtu	a1,a3,.L1454
	li	a0,-1
	bltu	a5,a2,.L1454
	sgtu	a0,a5,a2
	ret
.L1456:
	li	a0,-1
.L1454:
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
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
.LC17:
	.word	1065353216
	.section	.rodata
	.align	2
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
	.globl	__divdf3
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__gedf2
	.globl	__ledf2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__muldf3
	.globl	__nedf2
	.globl	__adddf3
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
	.globl	__ltdf2
	.globl	__subdf3
	.globl	__gtdf2
	.globl	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
