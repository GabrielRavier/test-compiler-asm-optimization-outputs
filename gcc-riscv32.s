	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_f2p2_d2p2_zicsr2p0"
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,0(sp)
	lw	a5,0(sp)
	lw	t0,4(sp)
	fsd	fa1,16(sp)
	sw	a5,8(sp)
	sw	t0,12(sp)
	fld	fa0,8(sp)
	lw	t1,16(sp)
	lw	a4,20(sp)
	feq.d	t2,fa0,fa0
	sw	t1,24(sp)
	sw	a4,28(sp)
	fld	fa5,24(sp)
	beq	t2,zero,.L169
	feq.d	a0,fa5,fa5
	beq	a0,zero,.L173
	fgt.d	a1,fa0,fa5
	beq	a1,zero,.L177
	fsub.d	fa0,fa0,fa5
.L169:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L177:
	.cfi_restore_state
	fcvt.d.w	fa0,x0
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L173:
	.cfi_restore_state
	fmv.d	fa0,fa5
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
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L179
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L183
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L187
	fsub.s	fa0,fa0,fa1
	ret
.L187:
	fmv.s.x	fa0,zero
.L179:
	ret
.L183:
	fmv.s	fa0,fa1
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	fsd	fa0,8(sp)
	lw	a5,8(sp)
	lw	t0,12(sp)
	fsd	fa1,24(sp)
	lw	t1,24(sp)
	lw	a4,28(sp)
	sw	a5,16(sp)
	sw	t0,20(sp)
	fld	fa5,16(sp)
	sw	t1,32(sp)
	sw	a4,36(sp)
	fld	ft0,32(sp)
	feq.d	t2,fa5,fa5
	fsd	fa5,8(sp)
	fsd	ft0,16(sp)
	beq	t2,zero,.L193
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L194
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L198
	fld	ft1,8(sp)
	lw	t4,8(sp)
	lw	t5,12(sp)
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L188
.L193:
	lw	t4,16(sp)
	lw	t5,20(sp)
.L188:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L198:
	.cfi_restore_state
	lw	t4,16(sp)
	mv	t5,a6
	bne	a3,zero,.L188
.L194:
	lw	t4,8(sp)
	lw	t5,12(sp)
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L204
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L205
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	bne	a2,t2,.L208
	flt.s	a0,fa0,fa1
	beq	a0,zero,.L199
.L204:
	fmv.s.x	fa0,a4
	ret
.L208:
	fmv.s	fa0,fa1
	beq	a2,zero,.L205
.L199:
	ret
.L205:
	fmv.s.x	fa0,a5
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
	bne	a0,zero,.L216
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
	bne	a0,zero,.L210
	li	a5,-2147483648
	and	a4,s1,a5
	and	t0,s5,a5
	beq	a4,t0,.L211
	beq	a4,zero,.L210
.L216:
	mv	s4,s8
	mv	s3,s7
	mv	s2,s6
	mv	s1,s5
.L210:
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
.L211:
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
	bge	a0,zero,.L210
	j	.L216
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	fsd	fa0,8(sp)
	lw	a5,8(sp)
	lw	t0,12(sp)
	fsd	fa1,24(sp)
	lw	t1,24(sp)
	lw	a4,28(sp)
	sw	a5,16(sp)
	sw	t0,20(sp)
	fld	fa5,16(sp)
	sw	t1,32(sp)
	sw	a4,36(sp)
	fld	ft0,32(sp)
	feq.d	t2,fa5,fa5
	fsd	fa5,8(sp)
	fsd	ft0,16(sp)
	beq	t2,zero,.L228
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L229
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L233
	fld	ft1,8(sp)
	lw	t4,16(sp)
	mv	t5,a6
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L223
.L229:
	lw	t4,8(sp)
	lw	t5,12(sp)
.L223:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L233:
	.cfi_restore_state
	lw	t4,8(sp)
	lw	t5,12(sp)
	bne	a3,zero,.L223
.L228:
	lw	t4,16(sp)
	lw	t5,20(sp)
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L239
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L240
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	beq	a2,t2,.L236
	bne	a2,zero,.L234
.L239:
	fmv.s.x	fa0,a4
	ret
.L236:
	flt.s	a0,fa0,fa1
	fmv.s	fa0,fa1
	bne	a0,zero,.L240
.L234:
	ret
.L240:
	fmv.s.x	fa0,a5
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
	bne	a0,zero,.L244
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
	bne	a0,zero,.L250
	li	a5,-2147483648
	and	a4,s8,a5
	and	t0,s1,a5
	beq	a4,t0,.L245
	beq	a4,zero,.L244
.L250:
	mv	s4,s7
	mv	s3,s6
	mv	s2,s5
	mv	s1,s8
.L244:
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
.L245:
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
	bge	a0,zero,.L244
	j	.L250
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
	beq	a0,zero,.L260
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	t0,a3,%lo(.LANCHOR0)
.L259:
	andi	a5,a0,63
	add	t1,t0,a5
	lbu	t2,0(t1)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	t2,-1(a4)
	bne	a0,zero,.L259
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L260:
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
	beq	a1,zero,.L271
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L265
	sw	a0,4(t0)
.L265:
	ret
.L271:
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
	beq	a5,zero,.L273
	lw	a4,4(a0)
	sw	a4,4(a5)
.L273:
	lw	t0,4(a0)
	beq	t0,zero,.L272
	sw	a5,0(t0)
.L272:
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
	beq	s6,zero,.L282
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	mv	s0,a1
	mv	s4,a4
	li	s1,0
	j	.L284
.L299:
	add	s0,s0,s2
	beq	s6,s1,.L298
.L284:
	mv	a1,s0
	mv	a0,s5
	jalr	s4
	mv	s3,s0
	addi	s1,s1,1
	bne	a0,zero,.L299
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s4,24(sp)
	.cfi_restore 20
.L281:
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
.L298:
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
.L282:
	addi	a5,s6,1
	sw	a5,0(s8)
	mv	a1,s6
	mv	a0,s2
	call	__mulsi3
	add	s3,s7,a0
	beq	s2,zero,.L281
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	memmove
	j	.L281
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
	beq	s5,zero,.L301
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
	j	.L303
.L314:
	add	s0,s0,s4
	beq	s5,s1,.L313
.L303:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L314
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
.L313:
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
.L301:
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
.L323:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L317
	bleu	a5,a2,.L317
	li	t0,43
	beq	a4,t0,.L318
	li	a1,45
	bne	a4,a1,.L335
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L328
	li	t6,1
.L321:
	li	a0,0
	li	a3,9
.L325:
	slli	a4,a0,2
	lbu	a2,1(t5)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t3
	mv	a4,t3
	addi	t3,a2,-48
	addi	t5,t5,1
	bleu	t3,a3,.L325
	bne	t6,zero,.L316
	sub	a0,a4,a5
	ret
.L317:
	addi	a0,a0,1
	j	.L323
.L335:
	addi	t3,a4,-48
	li	t4,9
	mv	t5,a0
	li	t6,0
	bleu	t3,t4,.L321
.L328:
	li	a0,0
.L316:
	ret
.L318:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t3,t1,-48
	li	t6,0
	bleu	t3,t2,.L321
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
.L341:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L337
	bleu	a5,a2,.L337
	li	t0,43
	beq	a4,t0,.L338
	li	a1,45
	bne	a4,a1,.L355
	lbu	a6,1(a0)
	li	t3,9
	addi	t6,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L348
.L342:
	li	a0,0
	li	a3,9
.L345:
	slli	a4,a0,2
	lbu	a2,1(t6)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t4
	mv	a4,t4
	addi	t4,a2,-48
	addi	t6,t6,1
	bleu	t4,a3,.L345
	bne	a7,zero,.L336
	sub	a0,a4,a5
	ret
.L337:
	addi	a0,a0,1
	j	.L341
.L355:
	addi	t4,a4,-48
	li	t5,9
	mv	t6,a0
	li	a7,0
	bleu	t4,t5,.L342
.L348:
	li	a0,0
.L336:
	ret
.L338:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L348
	li	a7,0
	j	.L342
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
.L363:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L357
	bleu	a5,a2,.L357
	li	t0,43
	beq	a4,t0,.L358
	li	a1,45
	bne	a4,a1,.L375
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L368
	li	t4,1
.L361:
	li	a0,0
	li	a1,0
	li	a4,9
.L365:
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
	bleu	t6,a4,.L365
	bne	t4,zero,.L356
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,a5
	sub	a1,t5,t6
	ret
.L357:
	addi	a0,a0,1
	j	.L363
.L375:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L361
.L368:
	li	a0,0
	li	a1,0
.L356:
	ret
.L358:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L361
	j	.L368
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
	beq	a2,zero,.L377
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
.L380:
	srli	s2,s0,1
	mv	a1,s4
	mv	a0,s2
	call	__mulsi3
	add	s1,s3,a0
	mv	a1,s1
	mv	a0,s5
	jalr	s6
	addi	s0,s0,-1
	blt	a0,zero,.L381
	beq	a0,zero,.L390
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L380
.L391:
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
.L377:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L381:
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
	bne	s0,zero,.L380
	j	.L391
.L390:
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
	beq	a2,zero,.L397
	sw	s2,32(sp)
	.cfi_offset 18, -16
.L405:
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
	beq	a0,zero,.L409
	ble	a0,zero,.L395
	add	s3,s1,s4
	bne	s0,zero,.L405
.L410:
	lw	s2,32(sp)
	.cfi_restore 18
.L397:
	li	s1,0
.L392:
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
.L395:
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
	beq	s2,zero,.L410
	mv	s0,s2
	j	.L405
.L409:
	lw	s2,32(sp)
	.cfi_restore 18
	j	.L392
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
.LFE57:
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
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
	blt	a5,a4,.L434
	sgt	a0,a5,a4
.L434:
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
.L444:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L444
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
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	beq	a2,zero,.L457
.L463:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L454
	beq	a5,zero,.L454
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L463
.L457:
	li	a0,0
	ret
.L454:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L464
	ret
.L464:
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
	beq	a2,zero,.L469
.L476:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L475
	addi	a0,a0,4
	bne	a2,zero,.L476
.L469:
	li	a0,0
	ret
.L475:
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
	beq	a2,zero,.L483
.L492:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L491
	addi	a1,a1,4
	bne	a2,zero,.L492
.L483:
	li	a0,0
	ret
.L491:
	sgt	a0,a4,a5
	blt	a4,a5,.L493
	ret
.L493:
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
	beq	a2,zero,.L495
	slli	a2,a2,2
	call	memcpy
.L495:
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
	beq	a0,a1,.L508
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L515
	beq	a2,zero,.L508
	slli	t4,a5,2
	li	a2,-4
.L505:
	add	t2,a1,t4
	lw	a7,0(t2)
	add	t3,a0,t4
	addi	t4,t4,-4
	sw	a7,0(t3)
	bne	t4,a2,.L505
	ret
.L515:
	mv	t1,a0
	li	a6,-1
	beq	a2,zero,.L508
.L503:
	lw	t0,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	t0,0(t1)
	addi	t1,t1,4
	bne	a5,a6,.L503
.L508:
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
	beq	a2,zero,.L517
	mv	a4,a0
	li	a3,-1
.L518:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L518
.L517:
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
	bgeu	a0,a1,.L524
	add	a7,a1,a2
	add	t2,a0,a2
	beq	a2,zero,.L523
.L526:
	lbu	a3,-1(t2)
	addi	t2,t2,-1
	addi	a7,a7,-1
	sb	a3,0(a7)
	bne	a0,t2,.L526
	ret
.L524:
	bne	a0,a1,.L552
.L523:
	ret
.L552:
	beq	a2,zero,.L523
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L550
	or	t0,a1,a0
	andi	t1,t0,3
	bne	t1,zero,.L550
	addi	a6,a0,1
	sub	t2,a1,a6
	sltiu	a3,t2,3
	bne	a3,zero,.L527
	andi	a6,a2,-4
	add	a7,a0,a6
	mv	t4,a1
.L528:
	lw	t3,0(a0)
	addi	a0,a0,4
	addi	t4,t4,4
	sw	t3,-4(t4)
	bne	a7,a0,.L528
	add	a1,a1,a6
	sub	a0,a2,a6
	beq	a2,a6,.L523
	lbu	a2,0(a7)
	li	t5,1
	sb	a2,0(a1)
	beq	a0,t5,.L523
	lbu	t6,1(a7)
	li	a5,2
	sb	t6,1(a1)
	beq	a0,a5,.L523
	lbu	a4,2(a7)
	sb	a4,2(a1)
	ret
.L550:
	addi	a6,a0,1
.L527:
	add	t0,a0,a2
	j	.L531
.L553:
	addi	a6,a6,1
.L531:
	lbu	t1,-1(a6)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a6,t0,.L553
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
	blt	a5,zero,.L555
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	sll	t3,a0,a5
	li	t4,0
	blt	a6,zero,.L557
.L559:
	srl	t0,a1,a6
	li	a1,0
	or	a0,t0,t4
	or	a1,a1,t3
	ret
.L555:
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
	bge	a6,zero,.L559
.L557:
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
	blt	a5,zero,.L561
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	srl	t3,a1,a5
	li	t4,0
	blt	a6,zero,.L563
.L565:
	sll	t0,a0,a6
	li	a0,0
	or	a0,a0,t3
	or	a1,t0,t4
	ret
.L561:
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
	bge	a6,zero,.L565
.L563:
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
	j	.L580
.L578:
	beq	a5,a3,.L582
.L580:
	srl	a4,a0,a5
	andi	t0,a4,1
	addi	a5,a5,1
	beq	t0,zero,.L578
	mv	a0,a5
	ret
.L582:
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
	beq	a0,zero,.L586
	andi	a0,a0,1
	bne	a0,zero,.L583
	li	a0,1
.L585:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L585
	ret
.L586:
	li	a0,0
.L583:
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
	flw	fa5,%lo(.LC1)(a5)
	li	a0,1
	flt.s	t0,fa0,fa5
	bne	t0,zero,.L589
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa0,ft0
.L589:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,0(sp)
	lw	t0,0(sp)
	lw	t1,4(sp)
	lui	a5,%hi(.LC3)
	sw	t0,8(sp)
	sw	t1,12(sp)
	fld	fa4,%lo(.LC3)(a5)
	fld	fa5,8(sp)
	li	a0,1
	flt.d	t2,fa5,fa4
	bne	t2,zero,.L593
	lui	a0,%hi(.LC4)
	fld	ft0,%lo(.LC4)(a0)
	fgt.d	a0,fa5,ft0
.L593:
	addi	sp,sp,16
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
	blt	a0,zero,.L602
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
.L602:
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
	fcvt.d.w	fa0,a1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,sp
	sw	ra,28(sp)
	.cfi_offset 1, -4
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
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L607
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L607
	blt	a0,zero,.L620
	lui	t1,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t1)
.L608:
	andi	a1,a0,1
	beq	a1,zero,.L609
.L610:
	fmul.s	fa0,fa0,ft0
.L609:
	srli	a2,a0,31
	add	a0,a2,a0
	srai	a0,a0,1
	beq	a0,zero,.L607
	srli	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a0
	bne	a4,zero,.L610
.L621:
	srai	a0,a6,1
	srli	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a0
	bne	a4,zero,.L610
	j	.L621
.L607:
	ret
.L620:
	lui	t2,%hi(.LC8)
	flw	ft0,%lo(.LC8)(t2)
	j	.L608
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,0(sp)
	lw	a5,0(sp)
	lw	t0,4(sp)
	sw	a5,8(sp)
	sw	t0,12(sp)
	fld	fa0,8(sp)
	feq.d	t1,fa0,fa0
	beq	t1,zero,.L623
	fadd.d	fa5,fa0,fa0
	feq.d	t2,fa5,fa0
	bne	t2,zero,.L623
	blt	a0,zero,.L637
	lui	a1,%hi(.LC9)
	fld	ft0,%lo(.LC9)(a1)
.L624:
	andi	a3,a0,1
	beq	a3,zero,.L625
.L626:
	fmul.d	fa0,fa0,ft0
.L625:
	srli	a4,a0,31
	add	a0,a4,a0
	srai	a0,a0,1
	beq	a0,zero,.L623
	srli	a6,a0,31
	andi	a7,a0,1
	fmul.d	ft0,ft0,ft0
	add	t3,a6,a0
	bne	a7,zero,.L626
.L638:
	srai	a0,t3,1
	srli	a6,a0,31
	andi	a7,a0,1
	fmul.d	ft0,ft0,ft0
	add	t3,a6,a0
	bne	a7,zero,.L626
	j	.L638
.L623:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L637:
	.cfi_restore_state
	lui	a2,%hi(.LC10)
	fld	ft0,%lo(.LC10)(a2)
	j	.L624
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
	bne	a0,zero,.L640
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
	beq	a0,zero,.L640
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
	blt	s0,zero,.L642
	li	s9,1073741824
.L642:
	andi	t0,s0,1
	beq	t0,zero,.L643
.L644:
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
.L643:
	srli	t1,s0,31
	add	s0,t1,s0
	srai	s0,s0,1
	beq	s0,zero,.L655
.L645:
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
	bne	a0,zero,.L644
	srai	s0,a1,1
	j	.L645
.L655:
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L640:
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
	beq	a2,zero,.L657
	addi	a5,a2,-1
	li	a4,3
	bleu	a5,a4,.L658
	or	t0,a0,a1
	and	t1,t0,a4
	bne	t1,zero,.L658
	andi	a7,a2,-4
	add	a6,a1,a7
	mv	t4,a0
.L659:
	lw	a3,0(t4)
	lw	t2,0(a1)
	addi	a1,a1,4
	addi	t4,t4,4
	xor	t3,t2,a3
	sw	t3,-4(t4)
	bne	a6,a1,.L659
	add	t5,a0,a7
	sub	t6,a2,a7
	beq	a2,a7,.L657
	lbu	a5,0(t5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a4,a5,a1
	sb	a4,0(t5)
	beq	t6,a2,.L657
	lbu	t1,1(t5)
	lbu	t0,1(a6)
	li	a7,2
	xor	t2,t0,t1
	sb	t2,1(t5)
	beq	t6,a7,.L657
	lbu	a3,2(t5)
	lbu	a6,2(a6)
	xor	t3,a6,a3
	sb	t3,2(t5)
	ret
.L658:
	add	t4,a1,a2
	mv	t5,a0
.L661:
	lbu	a5,0(t5)
	lbu	t6,0(a1)
	addi	a1,a1,1
	addi	t5,t5,1
	xor	a2,t6,a5
	sb	a2,-1(t5)
	bne	t4,a1,.L661
.L657:
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
	beq	a5,zero,.L675
	mv	t1,a0
.L670:
	lbu	a4,1(t1)
	addi	t1,t1,1
	bne	a4,zero,.L670
.L683:
	beq	a2,zero,.L672
.L685:
	lbu	t0,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t0,0(t1)
	beq	t0,zero,.L684
	addi	t1,t1,1
	bne	a2,zero,.L685
.L672:
	sb	zero,0(t1)
	ret
.L684:
	ret
.L675:
	mv	t1,a0
	j	.L683
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
	beq	a1,zero,.L686
.L687:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L689
.L686:
	ret
.L689:
	addi	a0,a0,1
	bne	a1,a0,.L687
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
	beq	a3,zero,.L700
.L706:
	mv	a5,a1
	j	.L699
.L698:
	beq	a4,a3,.L697
.L699:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L698
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L706
.L700:
	li	a0,0
.L697:
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
.L710:
	lbu	a4,0(a5)
	mv	a0,a3
	bne	a4,a1,.L709
	mv	a0,a5
.L709:
	addi	a5,a5,1
	mv	a3,a0
	bne	a4,zero,.L710
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
	beq	a7,zero,.L726
	mv	a5,a1
.L715:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L715
	sub	t3,a5,a1
	mv	a0,a3
	addi	t4,t3,-1
	bne	a5,a1,.L733
	ret
.L735:
	addi	a3,a3,1
	beq	t0,zero,.L734
.L733:
	lbu	t0,0(a3)
	bne	t0,a7,.L735
	add	t1,a3,t4
	mv	a0,a1
	mv	t2,a3
	mv	a2,a7
.L717:
	beq	t2,t1,.L719
	addi	t2,t2,1
	bne	t0,a2,.L720
	lbu	t0,0(t2)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	t0,zero,.L719
	mv	a0,a6
	bne	a2,zero,.L717
.L720:
	addi	a3,a3,1
	j	.L733
.L734:
	li	a0,0
	ret
.L719:
	bne	t0,a2,.L720
.L726:
	mv	a0,a3
.L713:
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,0(sp)
	lw	a5,0(sp)
	lw	t0,4(sp)
	fcvt.d.w	fa4,x0
	sw	a5,8(sp)
	sw	t0,12(sp)
	fld	fa0,8(sp)
	fsd	fa1,16(sp)
	lw	t1,16(sp)
	lw	t2,20(sp)
	flt.d	a0,fa0,fa4
	sw	t1,24(sp)
	sw	t2,28(sp)
	fld	fa5,24(sp)
	bne	a0,zero,.L750
	fgt.d	a1,fa0,fa4
	beq	a1,zero,.L740
	flt.d	a2,fa5,fa4
	bne	a2,zero,.L739
.L740:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L750:
	.cfi_restore_state
	fgt.d	a3,fa5,fa4
	beq	a3,zero,.L740
.L739:
	fneg.d	fa0,fa0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L751
	bltu	a1,a3,.L762
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L762
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L757:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L767
	mv	a0,t1
.L753:
	bgeu	a7,a0,.L757
.L762:
	li	a0,0
.L751:
	ret
.L767:
	mv	t5,a2
	beq	a3,zero,.L751
.L756:
	mv	t2,t1
	add	t6,t1,a3
	j	.L754
.L755:
	beq	t2,t6,.L751
.L754:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L755
	bgtu	t1,a7,.L762
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L753
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L756
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
	beq	a2,zero,.L769
	call	memmove
.L769:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,0(sp)
	lw	a5,0(sp)
	lw	t0,4(sp)
	fcvt.d.w	fa5,x0
	sw	a5,8(sp)
	sw	t0,12(sp)
	fld	fa0,8(sp)
	flt.d	t1,fa0,fa5
	bne	t1,zero,.L802
	lui	a5,%hi(.LC15)
	fld	fa4,%lo(.LC15)(a5)
	li	t6,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L803
.L777:
	lui	t0,%hi(.LC10)
	fld	ft5,%lo(.LC10)(t0)
	fld	ft6,%lo(.LC15)(a5)
	li	t4,0
.L783:
	fmul.d	fa0,fa0,ft5
	addi	t4,t4,1
	fge.d	t1,fa0,ft6
	bne	t1,zero,.L783
	sw	t4,0(a0)
	beq	t6,zero,.L774
.L805:
	fneg.d	fa0,fa0
.L774:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L803:
	.cfi_restore_state
	lui	t2,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t2)
	flt.d	a1,fa0,ft0
	beq	a1,zero,.L780
	feq.d	a2,fa0,fa5
	beq	a2,zero,.L789
.L780:
	sw	zero,0(a0)
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L802:
	.cfi_restore_state
	lui	a3,%hi(.LC13)
	fld	ft2,%lo(.LC13)(a3)
	fneg.d	ft1,fa0
	fle.d	a6,fa0,ft2
	beq	a6,zero,.L804
	fmv.d	fa0,ft1
	li	t6,1
	lui	a5,%hi(.LC15)
	j	.L777
.L804:
	lui	a7,%hi(.LC14)
	fld	ft3,%lo(.LC14)(a7)
	fgt.d	t3,fa0,ft3
	beq	t3,zero,.L780
	li	t6,1
	lui	t2,%hi(.LC10)
.L778:
	fmv.d	fa0,ft1
	fld	ft4,%lo(.LC10)(t2)
	li	t4,0
.L785:
	fadd.d	fa0,fa0,fa0
	addi	t4,t4,-1
	flt.d	t5,fa0,ft4
	bne	t5,zero,.L785
	sw	t4,0(a0)
	bne	t6,zero,.L805
	j	.L774
.L789:
	fmv.d	ft1,fa0
	j	.L778
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
	beq	a5,zero,.L810
.L809:
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
	bne	a4,zero,.L809
	ret
.L810:
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
	bltu	a1,a5,.L813
	j	.L839
.L817:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L815
	beq	a0,zero,.L816
.L813:
	addi	a0,a0,-1
	bge	a1,zero,.L817
.L818:
	li	a0,0
.L823:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L820
	mv	a5,a7
.L820:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L823
.L816:
	bne	a2,zero,.L840
.L812:
	ret
.L815:
	bne	t2,zero,.L818
	li	a0,0
	beq	a2,zero,.L812
.L840:
	mv	a0,a5
	ret
.L839:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L816
	mv	a5,a1
	j	.L816
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L843
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
.L843:
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
	beq	a5,a3,.L857
.L852:
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
.L857:
	bne	a4,a5,.L852
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
	beq	a4,zero,.L861
.L860:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L860
	ret
.L861:
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
	bltu	a0,a1,.L867
	add	a5,a1,a2
	bleu	a0,a5,.L896
.L867:
	beq	a3,zero,.L897
	slli	t3,a3,3
	add	t4,t3,a1
	mv	a3,a1
	mv	a5,a0
.L870:
	lw	t5,0(a3)
	lw	t6,4(a3)
	addi	a3,a3,8
	sw	t5,0(a5)
	sw	t6,4(a5)
	addi	a5,a5,8
	bne	a3,t4,.L870
	bleu	a2,t1,.L863
	sub	t0,a2,t1
	addi	a6,t0,-1
	li	a4,6
	bleu	a6,a4,.L898
	addi	t2,t1,1
	add	a7,a1,t2
	add	a4,a0,t1
	sub	t3,a4,a7
	sltiu	t4,t3,3
	add	a5,a1,t1
	bne	t4,zero,.L872
	or	t5,a5,a4
	andi	t6,t5,3
	bne	t6,zero,.L872
	andi	t2,t0,-4
	add	a6,a5,t2
.L873:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L873
	add	t1,t1,t2
	beq	t0,t2,.L863
	add	a5,a1,t1
	lbu	t0,0(a5)
	add	a4,a0,t1
	addi	a7,t1,1
	sb	t0,0(a4)
	bleu	a2,a7,.L863
	add	t3,a1,a7
	lbu	t4,0(t3)
	add	t5,a0,a7
	addi	t6,t1,2
	sb	t4,0(t5)
	bleu	a2,t6,.L863
	add	a1,a1,t6
	lbu	a2,0(a1)
	add	a0,a0,t6
	sb	a2,0(a0)
	ret
.L896:
	addi	a7,a2,-1
	li	a6,-1
	beq	a2,zero,.L863
.L868:
	add	a4,a1,a7
	lbu	t0,0(a4)
	add	t2,a0,a7
	addi	a7,a7,-1
	sb	t0,0(t2)
	bne	a7,a6,.L868
.L863:
	ret
.L897:
	add	a4,a0,t1
	add	a5,a1,t1
	beq	a2,zero,.L899
.L872:
	add	t2,a1,a2
.L875:
	lbu	a6,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	a5,t2,.L875
	ret
.L899:
	ret
.L898:
	add	a4,a0,t1
	add	a5,a1,t1
	j	.L872
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
	bltu	a0,a1,.L904
	add	a5,a1,a2
	bleu	a0,a5,.L927
.L904:
	beq	a7,zero,.L903
	addi	t2,a7,-1
	li	t3,8
	bleu	t2,t3,.L907
	or	t4,a1,a0
	andi	t5,t4,3
	bne	t5,zero,.L907
	addi	t6,a1,2
	beq	a0,t6,.L907
	andi	t0,a2,-4
	add	a6,a1,t0
	srli	t1,a2,2
	mv	a5,a1
	mv	a4,a0
.L908:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L908
	slli	t2,t1,1
	beq	a7,t2,.L903
	add	a7,a1,t0
	lh	t3,0(a7)
	add	t4,a0,t0
	sh	t3,0(t4)
.L903:
	andi	a3,a2,1
	beq	a3,zero,.L900
.L928:
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
	ret
.L927:
	addi	t1,a2,-1
	li	a6,-1
	beq	a2,zero,.L900
.L905:
	add	a4,a1,t1
	lbu	a3,0(a4)
	add	t0,a0,t1
	addi	t1,t1,-1
	sb	a3,0(t0)
	bne	t1,a6,.L905
.L900:
	ret
.L907:
	slli	t5,a7,1
	add	t6,t5,a1
	mv	a6,a1
	mv	t1,a0
.L910:
	lh	t0,0(a6)
	addi	a6,a6,2
	addi	t1,t1,2
	sh	t0,-2(t1)
	bne	t6,a6,.L910
	andi	a3,a2,1
	beq	a3,zero,.L900
	j	.L928
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
	bltu	a0,a1,.L933
	add	a5,a1,a2
	bleu	a0,a5,.L962
.L933:
	beq	a6,zero,.L963
	slli	t3,a6,2
	add	t4,t3,a1
	mv	t6,a1
	mv	a6,a0
.L936:
	lw	t5,0(t6)
	addi	t6,t6,4
	addi	a6,a6,4
	sw	t5,-4(a6)
	bne	t6,t4,.L936
	bleu	a2,a7,.L929
	sub	t0,a2,a7
	addi	a4,t0,-1
	li	a5,6
	bleu	a4,a5,.L964
	addi	a3,a7,1
	add	t1,a1,a3
	add	a4,a0,a7
	sub	t2,a4,t1
	sltiu	t3,t2,3
	add	t1,a1,a7
	bne	t3,zero,.L938
	or	t4,t1,a4
	andi	t5,t4,3
	bne	t5,zero,.L938
	andi	t6,t0,-4
	add	a6,t1,t6
.L939:
	lw	a3,0(t1)
	addi	t1,t1,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	t1,a6,.L939
	add	a7,a7,t6
	beq	t0,t6,.L929
	add	t0,a1,a7
	lbu	t1,0(t0)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	t1,0(a4)
	bleu	a2,a5,.L929
	add	t2,a1,a5
	lbu	t3,0(t2)
	add	t4,a0,a5
	addi	t5,a7,2
	sb	t3,0(t4)
	bleu	a2,t5,.L929
	add	a1,a1,t5
	lbu	a2,0(a1)
	add	a0,a0,t5
	sb	a2,0(a0)
	ret
.L962:
	addi	t2,a2,-1
	li	t0,-1
	beq	a2,zero,.L929
.L934:
	add	a4,a1,t2
	lbu	a3,0(a4)
	add	t1,a0,t2
	addi	t2,t2,-1
	sb	a3,0(t1)
	bne	t2,t0,.L934
.L929:
	ret
.L963:
	add	a4,a0,a7
	add	t1,a1,a7
	beq	a2,zero,.L965
.L938:
	add	t6,a1,a2
.L941:
	lbu	a6,0(t1)
	addi	t1,t1,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	t1,t6,.L941
	ret
.L965:
	ret
.L964:
	add	a4,a0,a7
	add	t1,a1,a7
	j	.L938
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
	fcvt.d.wu	fa0,a0
	ret
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	fcvt.s.wu	fa0,a0
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
	bne	a4,zero,.L979
	srai	a0,a0,14
	bne	a0,zero,.L976
	srai	t0,a5,13
	bne	t0,zero,.L980
	srai	t1,a5,12
	bne	t1,zero,.L981
	srai	t2,a5,11
	bne	t2,zero,.L982
	srai	a0,a5,10
	bne	a0,zero,.L983
	srai	a1,a5,9
	bne	a1,zero,.L984
	srai	a2,a5,8
	bne	a2,zero,.L985
	srai	a3,a5,7
	bne	a3,zero,.L986
	srai	a6,a5,6
	bne	a6,zero,.L987
	srai	a7,a5,5
	bne	a7,zero,.L988
	srai	t3,a5,4
	bne	t3,zero,.L989
	srai	t4,a5,3
	bne	t4,zero,.L990
	srai	t5,a5,2
	bne	t5,zero,.L991
	srai	t6,a5,1
	bne	t6,zero,.L992
	seqz	a5,a5
	addi	a0,a5,15
	ret
.L992:
	li	a0,14
.L976:
	ret
.L979:
	li	a0,0
	ret
.L990:
	li	a0,12
	ret
.L980:
	li	a0,2
	ret
.L981:
	li	a0,3
	ret
.L982:
	li	a0,4
	ret
.L983:
	li	a0,5
	ret
.L984:
	li	a0,6
	ret
.L985:
	li	a0,7
	ret
.L986:
	li	a0,8
	ret
.L987:
	li	a0,9
	ret
.L988:
	li	a0,10
	ret
.L989:
	li	a0,11
	ret
.L991:
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
	bne	a5,zero,.L997
	andi	t0,a0,2
	bne	t0,zero,.L998
	andi	t1,a0,4
	bne	t1,zero,.L999
	andi	t2,a0,8
	bne	t2,zero,.L1000
	andi	a1,a0,16
	bne	a1,zero,.L1001
	andi	a2,a0,32
	bne	a2,zero,.L1002
	andi	a3,a0,64
	bne	a3,zero,.L1003
	andi	a4,a0,128
	bne	a4,zero,.L1004
	andi	a6,a0,256
	bne	a6,zero,.L1005
	andi	a7,a0,512
	bne	a7,zero,.L1006
	andi	t3,a0,1024
	bne	t3,zero,.L1007
	slli	t5,a0,20
	li	t4,4096
	blt	t5,zero,.L1008
	and	t6,a0,t4
	bne	t6,zero,.L1009
	slli	a5,a0,18
	blt	a5,zero,.L1010
	slli	t0,a0,17
	blt	t0,zero,.L1011
	srai	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L997:
	li	a0,0
	ret
.L998:
	li	a0,1
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
.L1011:
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
	flw	fa5,%lo(.LC16)(a5)
	fge.s	t0,fa0,fa5
	bne	t0,zero,.L1020
	fcvt.w.s a0,fa0,rtz
	ret
.L1020:
	fsub.s	fa0,fa0,fa5
	li	t1,32768
	fcvt.w.s a0,fa0,rtz
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
	beq	a4,zero,.L1026
.L1025:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L1025
	ret
.L1026:
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
	beq	a4,zero,.L1031
	beq	a1,zero,.L1032
.L1030:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a4
	srli	a1,a1,1
	add	a0,a0,t1
	slli	a4,a4,1
	bne	a1,zero,.L1030
	ret
.L1031:
	ret
.L1032:
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
	bgtu	a5,a1,.L1035
	j	.L1061
.L1039:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L1037
	beq	a0,zero,.L1038
.L1035:
	addi	a0,a0,-1
	bge	a1,zero,.L1039
.L1040:
	li	a0,0
.L1045:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L1042
	mv	a5,a7
.L1042:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L1045
.L1038:
	bne	a2,zero,.L1062
.L1034:
	ret
.L1037:
	bne	t2,zero,.L1040
	li	a0,0
	beq	a2,zero,.L1034
.L1062:
	mv	a0,a5
	ret
.L1061:
	sltu	a4,a5,a1
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L1038
	mv	a5,a1
	j	.L1038
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	flt.s	a5,fa0,fa1
	li	a0,-1
	bne	a5,zero,.L1063
	fgt.s	a0,fa0,fa1
.L1063:
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	fsd	fa0,0(sp)
	fsd	fa1,16(sp)
	lw	a4,0(sp)
	lw	a5,16(sp)
	lw	t0,4(sp)
	lw	t1,20(sp)
	sw	a4,8(sp)
	sw	a5,24(sp)
	sw	t0,12(sp)
	sw	t1,28(sp)
	fld	fa4,8(sp)
	fld	fa5,24(sp)
	li	a0,-1
	flt.d	t2,fa4,fa5
	bne	t2,zero,.L1067
	fgt.d	a0,fa4,fa5
.L1067:
	addi	sp,sp,32
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
	blt	a1,zero,.L1091
	beq	a1,zero,.L1083
	li	a2,0
.L1079:
	li	t2,32
	li	a0,0
	j	.L1082
.L1092:
	beq	t2,zero,.L1081
.L1082:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a3
	addi	a4,t2,-1
	srai	a1,a1,1
	andi	t2,a4,0xff
	add	a0,a0,t1
	slli	a3,a3,1
	bne	a1,zero,.L1092
.L1081:
	beq	a2,zero,.L1077
	neg	a0,a0
	ret
.L1083:
	li	a0,0
.L1077:
	ret
.L1091:
	neg	a1,a1
	li	a2,1
	j	.L1079
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
	blt	a0,zero,.L1124
.L1094:
	bge	a1,zero,.L1095
	neg	a1,a1
	mv	a7,a5
.L1095:
	mv	a3,a0
	mv	t3,a1
	li	a2,32
	li	a4,1
	bgtu	a0,a1,.L1096
	j	.L1122
.L1100:
	beq	a2,zero,.L1101
.L1096:
	slli	t3,t3,1
	addi	a2,a2,-1
	slli	a4,a4,1
	bgtu	a0,t3,.L1100
.L1101:
	li	a0,0
	beq	a4,zero,.L1099
.L1098:
	sltu	a1,a3,t3
	xori	t0,a1,1
	neg	t1,t0
	and	t2,a4,t1
	sub	a6,a3,t3
	srli	a4,a4,1
	bne	a1,zero,.L1103
	mv	a3,a6
.L1103:
	or	a0,a0,t2
	srli	t3,t3,1
	bne	a4,zero,.L1098
.L1099:
	beq	a7,zero,.L1093
	neg	a0,a0
	ret
.L1093:
	ret
.L1124:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1094
.L1122:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1099
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
	bge	a0,zero,.L1126
	neg	a2,a0
	li	a6,1
.L1126:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	t2,a1,a5
	mv	a0,a2
	li	a3,32
	li	t0,1
	bgtu	a2,t2,.L1127
	j	.L1153
.L1131:
	beq	a3,zero,.L1132
.L1127:
	slli	t2,t2,1
	addi	a3,a3,-1
	slli	t0,t0,1
	bgtu	a2,t2,.L1131
.L1132:
	beq	t0,zero,.L1155
.L1129:
	srli	t0,t0,1
	sub	t1,a0,t2
	bltu	a0,t2,.L1134
	mv	a0,t1
.L1134:
	srli	t2,t2,1
	bne	t0,zero,.L1129
.L1130:
	beq	a6,zero,.L1125
	neg	a0,a0
	ret
.L1125:
	ret
.L1155:
	mv	a0,a2
	j	.L1130
.L1153:
	sub	a4,a2,t2
	bltu	a2,t2,.L1130
	mv	a0,a4
	j	.L1130
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
	bgeu	a1,a0,.L1340
	slli	t2,a1,16
	srai	a6,t2,16
	blt	a6,zero,.L1161
	slli	t4,a1,1
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a0,a5,.L1234
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1234
	slli	t1,a1,2
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a0,a5,.L1236
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1236
	slli	a5,a1,3
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1238
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1238
	slli	t4,a1,4
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1240
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1240
	slli	t1,a1,5
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1242
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1242
	slli	a5,a1,6
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1244
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1244
	slli	t4,a1,7
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1246
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1246
	slli	t1,a1,8
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1248
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1248
	slli	a5,a1,9
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1250
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1250
	slli	t4,a1,10
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1252
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1252
	slli	t1,a1,11
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1254
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1254
	slli	a5,a1,12
	slli	a6,a5,16
	srli	a5,a6,16
	bleu	a4,a5,.L1256
	slli	a7,a5,16
	srai	t3,a7,16
	blt	t3,zero,.L1256
	slli	t4,a1,13
	slli	t5,t4,16
	srli	a5,t5,16
	bleu	a4,a5,.L1258
	slli	t6,a5,16
	srai	t0,t6,16
	blt	t0,zero,.L1258
	slli	t1,a1,14
	slli	a3,t1,16
	srli	a5,a3,16
	bleu	a4,a5,.L1260
	slli	a0,a5,16
	srai	t2,a0,16
	blt	t2,zero,.L1260
	slli	a1,a1,15
	slli	a7,a1,16
	srli	t3,a7,16
	bleu	a4,t3,.L1261
	li	a6,32768
	mv	a0,a4
	mv	a5,a6
	bne	t3,zero,.L1163
.L1164:
	bne	a2,zero,.L1263
.L1353:
	mv	a0,t3
	ret
.L1234:
	li	a6,2
.L1163:
	sub	t3,a4,a5
	slli	t4,t3,16
	srli	t5,t4,16
	sltu	t6,a4,a5
	mv	a1,a4
	bltu	a4,a5,.L1230
	mv	a1,t5
.L1230:
	slli	a4,a1,16
	srli	t0,a4,16
	li	t1,0
	bne	t6,zero,.L1232
	mv	t1,a6
.L1232:
	srli	t4,a5,1
	sub	a0,t0,t4
	slli	a7,a0,16
	slli	a3,t1,16
	srli	t2,a3,16
	srli	t3,a6,1
	srli	t5,a7,16
	sltu	t6,t0,t4
	mv	a0,t0
	bltu	t0,t4,.L1166
	mv	a0,t5
.L1166:
	slli	a1,a0,16
	srli	a0,a1,16
	li	a4,0
	bne	t6,zero,.L1168
	mv	a4,t3
.L1168:
	or	t0,t2,a4
	slli	t1,t0,16
	srli	t2,a6,2
	srli	t3,t1,16
	srli	t4,a5,2
	beq	t2,zero,.L1164
	sub	a3,a0,t4
	sltu	a7,a0,t4
	slli	t5,a3,16
	srli	t6,t5,16
	xori	a1,a7,1
	bne	a7,zero,.L1170
	mv	a0,t6
.L1170:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a1,zero,.L1172
	mv	a7,t2
.L1172:
	or	t3,t3,a7
	slli	a4,t3,16
	srli	t0,a6,3
	srli	t3,a4,16
	srli	t2,a5,3
	beq	t0,zero,.L1164
	sub	t1,a0,t2
	sltu	t4,a0,t2
	slli	a3,t1,16
	srli	t5,a3,16
	xori	t6,t4,1
	bne	t4,zero,.L1174
	mv	a0,t5
.L1174:
	slli	a1,a0,16
	srli	a0,a1,16
	li	a7,0
	beq	t6,zero,.L1176
	mv	a7,t0
.L1176:
	or	t3,t3,a7
	slli	a4,t3,16
	srli	t0,a6,4
	srli	t3,a4,16
	srli	t2,a5,4
	beq	t0,zero,.L1164
	sub	t1,a0,t2
	sltu	t4,a0,t2
	slli	a3,t1,16
	srli	t5,a3,16
	xori	t6,t4,1
	bne	t4,zero,.L1178
	mv	a0,t5
.L1178:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t6,zero,.L1180
	mv	a7,t0
.L1180:
	or	a1,t3,a7
	slli	t3,a1,16
	srli	t0,a6,5
	srli	t3,t3,16
	srli	a4,a5,5
	beq	t0,zero,.L1164
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	bne	t4,zero,.L1182
	mv	a0,a3
.L1182:
	slli	t6,a0,16
	srli	a0,t6,16
	li	a7,0
	beq	t5,zero,.L1184
	mv	a7,t0
.L1184:
	or	a1,t3,a7
	slli	t3,a1,16
	srli	t0,a6,6
	srli	t3,t3,16
	srli	a4,a5,6
	beq	t0,zero,.L1164
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	bne	t4,zero,.L1186
	mv	a0,a3
.L1186:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t5,zero,.L1188
	mv	a7,t0
.L1188:
	or	t6,t3,a7
	slli	a1,t6,16
	srli	t0,a6,7
	srli	t3,a1,16
	srli	a4,a5,7
	beq	t0,zero,.L1164
	sub	t2,a0,a4
	sltu	t4,a0,a4
	slli	t1,t2,16
	srli	a3,t1,16
	xori	t5,t4,1
	beq	t4,zero,.L1341
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	t5,zero,.L1342
.L1192:
	or	t3,t3,a7
	slli	t0,t3,16
	srli	t6,a6,8
	srli	t3,t0,16
	srli	a1,a5,8
	beq	t6,zero,.L1164
	sub	t2,a0,a1
	sltu	a4,a0,a1
	slli	t4,t2,16
	srli	a3,t4,16
	xori	t1,a4,1
	beq	a4,zero,.L1343
	slli	t5,a0,16
	srli	a0,t5,16
	li	a7,0
	bne	t1,zero,.L1344
.L1196:
	or	t3,t3,a7
	slli	t0,t3,16
	srli	t6,a6,9
	srli	t3,t0,16
	srli	a1,a5,9
	beq	t6,zero,.L1164
	sub	t2,a0,a1
	sltu	a4,a0,a1
	slli	t4,t2,16
	srli	a3,t4,16
	xori	t1,a4,1
	beq	a4,zero,.L1345
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	t1,zero,.L1346
.L1200:
	or	t5,t3,a7
	slli	t3,t5,16
	srli	t6,a6,10
	srli	t3,t3,16
	srli	t0,a5,10
	beq	t6,zero,.L1164
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1347
	slli	t1,a0,16
	srli	a0,t1,16
	li	a7,0
	bne	a3,zero,.L1348
.L1204:
	or	t5,t3,a7
	slli	t3,t5,16
	srli	t6,a6,11
	srli	t3,t3,16
	srli	t0,a5,11
	beq	t6,zero,.L1164
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1349
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	a3,zero,.L1350
.L1208:
	or	t1,t3,a7
	slli	t6,t1,16
	srli	t5,a6,12
	srli	t3,t6,16
	srli	t0,a5,12
	beq	t5,zero,.L1164
	sub	a1,a0,t0
	sltu	t2,a0,t0
	slli	a4,a1,16
	srli	t4,a4,16
	xori	a3,t2,1
	beq	t2,zero,.L1351
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	bne	a3,zero,.L1352
.L1212:
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,13
	srli	t3,t1,16
	srli	t6,a5,13
	beq	t5,zero,.L1164
.L1354:
	sub	t0,a0,t6
	sltu	a1,a0,t6
	slli	t2,t0,16
	srli	a4,t2,16
	xori	t4,a1,1
	bne	a1,zero,.L1214
	mv	a0,a4
.L1214:
	slli	a3,a0,16
	srli	a0,a3,16
	li	a7,0
	beq	t4,zero,.L1216
	mv	a7,t5
.L1216:
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,14
	srli	t3,t1,16
	srli	t6,a5,14
	beq	t5,zero,.L1164
	sub	t0,a0,t6
	sltu	a1,a0,t6
	slli	t2,t0,16
	srli	a4,t2,16
	xori	t4,a1,1
	bne	a1,zero,.L1218
	mv	a0,a4
.L1218:
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t4,zero,.L1220
	mv	a7,t5
.L1220:
	or	t3,t3,a7
	slli	t5,t3,16
	li	a3,16384
	srli	t3,t5,16
	srli	a5,a5,15
	beq	a6,a3,.L1164
	sub	a6,a0,a5
	sltu	t1,a0,a5
	slli	t6,a6,16
	srli	t0,t6,16
	xori	a1,t1,1
	bne	t1,zero,.L1222
	mv	a0,t0
.L1222:
	slli	t2,a0,16
	srli	a0,t2,16
	or	t3,a1,t3
	beq	a2,zero,.L1353
.L1263:
	ret
.L1342:
	mv	a7,t0
	j	.L1192
.L1341:
	mv	a0,a3
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t5,zero,.L1192
	j	.L1342
.L1344:
	mv	a7,t6
	j	.L1196
.L1343:
	mv	a0,a3
	slli	t5,a0,16
	srli	a0,t5,16
	li	a7,0
	beq	t1,zero,.L1196
	j	.L1344
.L1346:
	mv	a7,t6
	j	.L1200
.L1345:
	mv	a0,a3
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	t1,zero,.L1200
	j	.L1346
.L1348:
	mv	a7,t6
	j	.L1204
.L1347:
	mv	a0,t4
	slli	t1,a0,16
	srli	a0,t1,16
	li	a7,0
	beq	a3,zero,.L1204
	j	.L1348
.L1350:
	mv	a7,t6
	j	.L1208
.L1349:
	mv	a0,t4
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a3,zero,.L1208
	j	.L1350
.L1352:
	mv	a7,t5
	or	t3,t3,a7
	slli	t1,t3,16
	srli	t5,a6,13
	srli	t3,t1,16
	srli	t6,a5,13
	bne	t5,zero,.L1354
	j	.L1164
.L1351:
	mv	a0,t4
	slli	a0,a0,16
	srli	a0,a0,16
	li	a7,0
	beq	a3,zero,.L1212
	j	.L1352
.L1236:
	li	a6,4
	j	.L1163
.L1238:
	li	a6,8
	j	.L1163
.L1240:
	li	a6,16
	j	.L1163
.L1250:
	li	a6,512
	j	.L1163
.L1242:
	li	a6,32
	j	.L1163
.L1244:
	li	a6,64
	j	.L1163
.L1246:
	li	a6,128
	j	.L1163
.L1248:
	li	a6,256
	j	.L1163
.L1340:
	sub	a5,a0,a1
	slli	t0,a5,16
	srli	t1,t0,16
	sub	a3,a1,a0
	mv	a5,a0
	bne	a1,a0,.L1159
	mv	a5,t1
.L1159:
	slli	a0,a5,16
	srli	a0,a0,16
	seqz	t3,a3
	j	.L1164
.L1252:
	li	a6,1024
	j	.L1163
.L1254:
	li	a1,4096
	addi	a6,a1,-2048
	j	.L1163
.L1256:
	li	a6,4096
	j	.L1163
.L1258:
	li	a6,8192
	j	.L1163
.L1260:
	li	a6,16384
	j	.L1163
.L1261:
	li	a5,32768
	mv	a6,a5
	j	.L1163
.L1161:
	sub	a1,a0,a1
	slli	a7,a1,16
	srli	a0,a7,16
	li	t3,1
	j	.L1164
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
	bgtu	a5,a1,.L1356
	j	.L1382
.L1360:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a5,a1,.L1358
	beq	a0,zero,.L1359
.L1356:
	addi	a0,a0,-1
	bge	a1,zero,.L1360
.L1361:
	li	a0,0
.L1366:
	sltu	a6,a5,a1
	xori	a3,a6,1
	neg	t0,a3
	and	t1,t2,t0
	sub	a7,a5,a1
	srli	t2,t2,1
	bne	a6,zero,.L1363
	mv	a5,a7
.L1363:
	or	a0,a0,t1
	srli	a1,a1,1
	bne	t2,zero,.L1366
.L1359:
	bne	a2,zero,.L1383
.L1355:
	ret
.L1358:
	bne	t2,zero,.L1361
	li	a0,0
	beq	a2,zero,.L1355
.L1383:
	mv	a0,a5
	ret
.L1382:
	sltu	a4,a5,a1
	xori	a0,a4,1
	sub	a1,a5,a1
	bne	a4,zero,.L1359
	mv	a5,a1
	j	.L1359
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
	beq	a5,zero,.L1385
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1385:
	beq	a2,zero,.L1387
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1387:
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
	beq	a5,zero,.L1390
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1390:
	beq	a2,zero,.L1392
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1392:
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
	beq	a7,zero,.L1398
	li	a1,0
.L1398:
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
	blt	a1,a3,.L1401
	li	a0,2
	bgt	a1,a3,.L1399
	li	a0,0
	bltu	a5,a2,.L1399
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1401:
	li	a0,0
.L1399:
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
	blt	a1,a3,.L1407
	li	a0,1
	bgt	a1,a3,.L1405
	li	a0,-1
	bltu	a5,a2,.L1405
	sgtu	a0,a5,a2
	ret
.L1407:
	li	a0,-1
.L1405:
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
	beq	a5,zero,.L1412
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1412:
	beq	a2,zero,.L1414
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1414:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	fsd	fa0,0(sp)
	lw	a5,0(sp)
	lw	t0,4(sp)
	lui	a2,%hi(.LC15)
	sw	a5,8(sp)
	sw	t0,12(sp)
	andi	t1,a0,1
	fld	fa5,8(sp)
	fld	fa0,%lo(.LC15)(a2)
	beq	t1,zero,.L1431
	mv	a7,a0
.L1428:
	fmul.d	fa0,fa0,fa5
.L1426:
	srli	a4,a7,31
	add	t2,a4,a7
	srai	a7,t2,1
	beq	a7,zero,.L1427
	srli	a1,a7,31
	andi	a3,a7,1
	fmul.d	fa5,fa5,fa5
	add	a6,a1,a7
	bne	a3,zero,.L1428
.L1433:
	srai	a7,a6,1
	srli	a1,a7,31
	andi	a3,a7,1
	fmul.d	fa5,fa5,fa5
	add	a6,a1,a7
	bne	a3,zero,.L1428
	j	.L1433
.L1427:
	bge	a0,zero,.L1425
	fld	ft0,%lo(.LC15)(a2)
	fdiv.d	fa0,ft0,fa0
.L1425:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L1431:
	.cfi_restore_state
	mv	a7,a0
	j	.L1426
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
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC17)(a2)
	beq	a5,zero,.L1440
	mv	a1,a0
.L1437:
	fmul.s	fa0,fa0,fa5
.L1435:
	srli	a4,a1,31
	add	t0,a4,a1
	srai	a1,t0,1
	beq	a1,zero,.L1436
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1437
.L1441:
	srai	a1,t2,1
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1437
	j	.L1441
.L1436:
	blt	a0,zero,.L1442
	ret
.L1440:
	mv	a1,a0
	j	.L1435
.L1442:
	flw	ft0,%lo(.LC17)(a2)
	fdiv.s	fa0,ft0,fa0
	ret
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
	bltu	a1,a3,.L1445
	li	a0,2
	bgtu	a1,a3,.L1443
	li	a0,0
	bltu	a5,a2,.L1443
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1445:
	li	a0,0
.L1443:
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
	bltu	a1,a3,.L1451
	li	a0,1
	bgtu	a1,a3,.L1449
	li	a0,-1
	bltu	a5,a2,.L1449
	sgtu	a0,a5,a2
	ret
.L1451:
	li	a0,-1
.L1449:
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
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
