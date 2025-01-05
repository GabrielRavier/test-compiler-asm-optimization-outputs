	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 1
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
	addi	t0,a5,%lo(seed)
	addi	a0,a0,-1
	sw	a0,0(t0)
	sw	zero,4(t0)
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
	lui	a4,%hi(seed)
	addi	t0,a4,%lo(seed)
	lw	a3,0(t0)
	lw	a5,4(t0)
	li	a2,1284866048
	li	a1,1481764864
	addi	t1,a2,-211
	addi	t2,a1,1069
	mul	a0,a3,t1
	mul	a6,a5,t1
	addi	t5,a0,1
	sltu	t6,t5,a0
	sw	t5,0(t0)
	mul	a7,a3,t2
	mulhu	t4,a3,t1
	add	t3,a6,a7
	add	a4,t3,t4
	add	a5,t6,a4
	sw	a5,4(t0)
	srli	a0,a5,1
	ret
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	beq	a1,zero,.L270
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L264
	sw	a0,4(t0)
.L264:
	ret
.L270:
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
	beq	a5,zero,.L272
	lw	a4,4(a0)
	sw	a4,4(a5)
.L272:
	lw	t0,4(a0)
	beq	t0,zero,.L271
	sw	a5,0(t0)
.L271:
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
	sw	s3,28(sp)
	.cfi_offset 19, -20
	lw	s3,0(a2)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s5,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 21, -28
	mv	s7,a2
	mv	s4,a0
	mv	s8,a1
	mv	s2,a3
	beq	s3,zero,.L281
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
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
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s6,16(sp)
	.cfi_restore 22
.L280:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	mv	a0,s5
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L297:
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
	lw	s6,16(sp)
	.cfi_restore 22
.L281:
	mul	t0,s2,s3
	addi	t1,s3,1
	sw	t1,0(s7)
	add	s5,s8,t0
	beq	s2,zero,.L280
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L280
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
	beq	s5,zero,.L300
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
.L312:
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
.L300:
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
.L322:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L316
	bleu	a5,a2,.L316
	li	t0,43
	beq	a4,t0,.L317
	li	a1,45
	bne	a4,a1,.L334
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L327
	li	t6,1
.L320:
	li	a0,0
	li	a3,9
.L324:
	slli	a4,a0,2
	lbu	a2,1(t5)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t3
	mv	a4,t3
	addi	t3,a2,-48
	addi	t5,t5,1
	bleu	t3,a3,.L324
	bne	t6,zero,.L315
	sub	a0,a4,a5
	ret
.L316:
	addi	a0,a0,1
	j	.L322
.L334:
	addi	t3,a4,-48
	li	t4,9
	mv	t5,a0
	li	t6,0
	bleu	t3,t4,.L320
.L327:
	li	a0,0
.L315:
	ret
.L317:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t3,t1,-48
	li	t6,0
	bleu	t3,t2,.L320
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
.L340:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L336
	bleu	a5,a2,.L336
	li	t0,43
	beq	a4,t0,.L337
	li	a1,45
	bne	a4,a1,.L354
	lbu	a6,1(a0)
	li	t3,9
	addi	t6,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L347
.L341:
	li	a0,0
	li	a3,9
.L344:
	slli	a4,a0,2
	lbu	a2,1(t6)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t4
	mv	a4,t4
	addi	t4,a2,-48
	addi	t6,t6,1
	bleu	t4,a3,.L344
	bne	a7,zero,.L335
	sub	a0,a4,a5
	ret
.L336:
	addi	a0,a0,1
	j	.L340
.L354:
	addi	t4,a4,-48
	li	t5,9
	mv	t6,a0
	li	a7,0
	bleu	t4,t5,.L341
.L347:
	li	a0,0
.L335:
	ret
.L337:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L347
	li	a7,0
	j	.L341
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
.L362:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L356
	bleu	a5,a2,.L356
	li	t0,43
	beq	a4,t0,.L357
	li	a1,45
	bne	a4,a1,.L374
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L367
	li	t4,1
.L360:
	li	a0,0
	li	a1,0
	li	a4,9
.L364:
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
	bleu	t6,a4,.L364
	bne	t4,zero,.L355
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,a5
	sub	a1,t5,t6
	ret
.L356:
	addi	a0,a0,1
	j	.L362
.L374:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L360
.L367:
	li	a0,0
	li	a1,0
.L355:
	ret
.L357:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L360
	j	.L367
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
	beq	a2,zero,.L376
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
.L379:
	srli	s2,s0,1
	mul	s1,s2,s4
	mv	a0,s5
	addi	s0,s0,-1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L380
	beq	a0,zero,.L389
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L379
.L390:
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
.L376:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L380:
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
	bne	s0,zero,.L379
	j	.L390
.L389:
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
	beq	a2,zero,.L396
	sw	s2,32(sp)
	.cfi_offset 18, -16
.L404:
	srai	s2,s0,1
	mul	s1,s2,s4
	mv	a2,s7
	mv	a0,s5
	addi	s0,s0,-1
	srai	s0,s0,1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L408
	ble	a0,zero,.L394
	add	s3,s1,s4
	bne	s0,zero,.L404
.L409:
	lw	s2,32(sp)
	.cfi_restore 18
.L396:
	li	s1,0
.L391:
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
.L394:
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
	beq	s2,zero,.L409
	mv	s0,s2
	j	.L404
.L408:
	lw	s2,32(sp)
	.cfi_restore 18
	j	.L391
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	ret
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
	mv	a5,a0
	div	a0,a0,a1
	rem	a1,a5,a1
	ret
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
	j	.L428
.L430:
	beq	a1,a5,.L429
	addi	a0,a0,4
.L428:
	lw	a5,0(a0)
	bne	a5,zero,.L430
	li	a0,0
	ret
.L429:
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
.L434:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L433
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L434
.L433:
	li	a0,-1
	blt	a5,a4,.L431
	sgt	a0,a5,a4
.L431:
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
.L441:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L441
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
	beq	a5,zero,.L446
	mv	t0,a0
.L445:
	lw	a4,4(t0)
	addi	t0,t0,4
	bne	a4,zero,.L445
	sub	a0,t0,a0
	srai	a0,a0,2
	ret
.L446:
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
	beq	a2,zero,.L454
.L460:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L451
	beq	a5,zero,.L451
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L460
.L454:
	li	a0,0
	ret
.L451:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L461
	ret
.L461:
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
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	beq	a2,zero,.L480
.L489:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L488
	addi	a1,a1,4
	bne	a2,zero,.L489
.L480:
	li	a0,0
	ret
.L488:
	sgt	a0,a4,a5
	blt	a4,a5,.L490
	ret
.L490:
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
	beq	a2,zero,.L492
	slli	a2,a2,2
	call	memcpy
.L492:
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
	beq	a0,a1,.L505
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L512
	beq	a2,zero,.L505
	slli	t4,a5,2
	li	a2,-4
.L502:
	add	t2,a1,t4
	lw	a7,0(t2)
	add	t3,a0,t4
	addi	t4,t4,-4
	sw	a7,0(t3)
	bne	t4,a2,.L502
	ret
.L512:
	mv	t1,a0
	li	a6,-1
	beq	a2,zero,.L505
.L500:
	lw	t0,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	t0,0(t1)
	addi	t1,t1,4
	bne	a5,a6,.L500
.L505:
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
	beq	a2,zero,.L514
	mv	a4,a0
	li	a3,-1
.L515:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L515
.L514:
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
	bgeu	a0,a1,.L521
	add	a7,a1,a2
	add	t2,a0,a2
	beq	a2,zero,.L520
.L523:
	lbu	a3,-1(t2)
	addi	t2,t2,-1
	addi	a7,a7,-1
	sb	a3,0(a7)
	bne	a0,t2,.L523
	ret
.L521:
	bne	a0,a1,.L549
.L520:
	ret
.L549:
	beq	a2,zero,.L520
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L547
	or	t0,a1,a0
	andi	t1,t0,3
	bne	t1,zero,.L547
	addi	a6,a0,1
	sub	t2,a1,a6
	sltiu	a3,t2,3
	bne	a3,zero,.L524
	andi	a6,a2,-4
	add	a7,a0,a6
	mv	t4,a1
.L525:
	lw	t3,0(a0)
	addi	a0,a0,4
	addi	t4,t4,4
	sw	t3,-4(t4)
	bne	a7,a0,.L525
	add	a1,a1,a6
	sub	a0,a2,a6
	beq	a2,a6,.L520
	lbu	a2,0(a7)
	li	t5,1
	sb	a2,0(a1)
	beq	a0,t5,.L520
	lbu	t6,1(a7)
	li	a5,2
	sb	t6,1(a1)
	beq	a0,a5,.L520
	lbu	a4,2(a7)
	sb	a4,2(a1)
	ret
.L547:
	addi	a6,a0,1
.L524:
	add	t0,a0,a2
	j	.L528
.L550:
	addi	a6,a6,1
.L528:
	lbu	t1,-1(a6)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a6,t0,.L550
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
	neg	a3,a2
	andi	t2,a3,63
	li	a5,31
	sub	a7,a5,t2
	addi	t3,t2,-32
	sub	t4,a5,a2
	slli	a4,a1,1
	addi	t1,a2,-32
	srli	t5,a0,1
	srai	a6,t3,31
	srl	t0,a0,t2
	sll	t6,a1,a2
	srl	a5,t5,t4
	sll	a3,a4,a7
	srai	a7,t1,31
	or	a4,a3,t0
	srl	t3,a1,t3
	or	a3,a5,t6
	not	t5,a6
	sll	t1,a0,t1
	not	t4,a7
	and	t6,a6,a4
	srl	a1,a1,t2
	sll	a0,a0,a2
	and	t0,t5,t3
	and	a2,a7,a3
	and	t2,t4,t1
	or	t3,t6,t0
	and	a6,a6,a1
	and	a7,a7,a0
	or	a5,a2,t2
	or	a0,t3,a7
	or	a1,a6,a5
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
	neg	a3,a2
	andi	t2,a3,63
	li	a5,31
	sub	a7,a5,t2
	addi	t3,t2,-32
	sub	t4,a5,a2
	srli	a4,a0,1
	addi	t1,a2,-32
	slli	t5,a1,1
	srai	a6,t3,31
	sll	t0,a1,t2
	srl	t6,a0,a2
	sll	a5,t5,t4
	srl	a3,a4,a7
	srai	a7,t1,31
	or	a4,a3,t0
	sll	t3,a0,t3
	or	a3,a5,t6
	not	t5,a6
	srl	t1,a1,t1
	not	t4,a7
	and	t6,a6,a4
	sll	a0,a0,t2
	srl	a1,a1,a2
	and	t0,t5,t3
	and	a2,a7,a3
	and	t2,t4,t1
	or	t3,t6,t0
	and	a6,a6,a0
	and	a7,a7,a1
	or	a5,a2,t2
	or	a1,t3,a7
	or	a0,a6,a5
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
	j	.L567
.L565:
	beq	a5,a3,.L569
.L567:
	srl	a4,a0,a5
	andi	t0,a4,1
	addi	a5,a5,1
	beq	t0,zero,.L565
	mv	a0,a5
	ret
.L569:
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
	beq	a0,zero,.L573
	andi	a0,a0,1
	bne	a0,zero,.L570
	li	a0,1
.L572:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L572
	ret
.L573:
	li	a0,0
.L570:
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
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	li	a0,1
	flt.s	t0,fa0,fa5
	bne	t0,zero,.L576
	lui	t1,%hi(.LC1)
	flw	ft0,%lo(.LC1)(t1)
	fgt.s	a0,fa0,ft0
.L576:
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
	lw	a4,0(sp)
	lw	t1,4(sp)
	lui	a5,%hi(.LC2)
	addi	t0,a5,%lo(.LC2)
	sw	a4,8(sp)
	sw	t1,12(sp)
	fld	fa5,8(sp)
	fld	fa4,0(t0)
	li	a0,1
	flt.d	t2,fa5,fa4
	bne	t2,zero,.L580
	lui	a0,%hi(.LC3)
	addi	a1,a0,%lo(.LC3)
	fld	ft0,0(a1)
	fgt.d	a0,fa5,ft0
.L580:
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
	lui	a5,%hi(.LC4)
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	addi	t0,a5,%lo(.LC4)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,12(a0)
	lw	s1,8(a0)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	lw	s2,4(a0)
	lw	s3,0(a0)
	lw	a2,0(t0)
	lw	a3,4(t0)
	lw	a4,8(t0)
	lw	t1,12(t0)
	addi	a0,sp,16
	mv	a1,sp
	sw	ra,60(sp)
	.cfi_offset 1, -4
	sw	s3,16(sp)
	sw	s2,20(sp)
	sw	s1,24(sp)
	sw	s0,28(sp)
	sw	a2,0(sp)
	sw	a3,4(sp)
	sw	a4,8(sp)
	sw	t1,12(sp)
	call	__lttf2
	blt	a0,zero,.L589
	lui	t2,%hi(.LC5)
	addi	a0,t2,%lo(.LC5)
	lw	a6,0(a0)
	lw	a7,4(a0)
	lw	t3,8(a0)
	lw	t4,12(a0)
	mv	a1,sp
	addi	a0,sp,16
	sw	a6,0(sp)
	sw	a7,4(sp)
	sw	t3,8(sp)
	sw	t4,12(sp)
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
	sgt	a0,a0,zero
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L589:
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
	beq	a5,zero,.L594
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L594
	blt	a0,zero,.L607
	lui	t1,%hi(.LC6)
	flw	ft0,%lo(.LC6)(t1)
.L595:
	andi	a1,a0,1
	beq	a1,zero,.L596
.L597:
	fmul.s	fa0,fa0,ft0
.L596:
	srli	a2,a0,31
	add	a0,a2,a0
	srai	a0,a0,1
	beq	a0,zero,.L594
	srli	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a0
	bne	a4,zero,.L597
.L608:
	srai	a0,a6,1
	srli	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a6,a3,a0
	bne	a4,zero,.L597
	j	.L608
.L594:
	ret
.L607:
	lui	t2,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t2)
	j	.L595
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
	beq	t1,zero,.L610
	fadd.d	fa5,fa0,fa0
	feq.d	t2,fa5,fa0
	bne	t2,zero,.L610
	blt	a0,zero,.L624
	lui	a1,%hi(.LC8)
	addi	a2,a1,%lo(.LC8)
	fld	ft0,0(a2)
.L611:
	andi	a6,a0,1
	beq	a6,zero,.L612
.L613:
	fmul.d	fa0,fa0,ft0
.L612:
	srli	a7,a0,31
	add	a0,a7,a0
	srai	a0,a0,1
	beq	a0,zero,.L610
	srli	t3,a0,31
	andi	t4,a0,1
	fmul.d	ft0,ft0,ft0
	add	t5,t3,a0
	bne	t4,zero,.L613
.L625:
	srai	a0,t5,1
	srli	t3,a0,31
	andi	t4,a0,1
	fmul.d	ft0,ft0,ft0
	add	t5,t3,a0
	bne	t4,zero,.L613
	j	.L625
.L610:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L624:
	.cfi_restore_state
	lui	a3,%hi(.LC9)
	addi	a4,a3,%lo(.LC9)
	fld	ft0,0(a4)
	j	.L611
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
	sw	s2,96(sp)
	sw	s3,92(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	lw	s2,12(a1)
	lw	s3,8(a1)
	sw	s4,88(sp)
	sw	s5,84(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	lw	s4,4(a1)
	lw	s5,0(a1)
	sw	s6,80(sp)
	addi	a1,sp,32
	.cfi_offset 22, -32
	mv	s6,a0
	addi	a0,sp,48
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s5,48(sp)
	sw	s4,52(sp)
	sw	s3,56(sp)
	sw	s2,60(sp)
	sw	s5,32(sp)
	sw	s4,36(sp)
	sw	s3,40(sp)
	sw	s2,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a2
	call	__unordtf2
	bne	a0,zero,.L627
	addi	a2,sp,16
	addi	a1,sp,32
	addi	a0,sp,48
	sw	s5,16(sp)
	sw	s4,20(sp)
	sw	s3,24(sp)
	sw	s2,28(sp)
	call	__addtf3
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a4,56(sp)
	lw	a5,60(sp)
	addi	a1,sp,16
	addi	a0,sp,32
	sw	s5,16(sp)
	sw	s4,20(sp)
	sw	s3,24(sp)
	sw	s2,28(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	call	__netf2
	beq	a0,zero,.L627
	sw	s1,100(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	.cfi_offset 9, -12
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	blt	s0,zero,.L643
	lui	t0,%hi(.LC10)
	addi	t1,t0,%lo(.LC10)
	lw	s1,0(t1)
	lw	s7,4(t1)
	lw	s8,8(t1)
	lw	s9,12(t1)
.L629:
	andi	a1,s0,1
	beq	a1,zero,.L630
.L631:
	mv	a2,sp
	addi	a1,sp,16
	addi	a0,sp,32
	sw	s5,16(sp)
	sw	s4,20(sp)
	sw	s3,24(sp)
	sw	s2,28(sp)
	sw	s1,0(sp)
	sw	s7,4(sp)
	sw	s8,8(sp)
	sw	s9,12(sp)
	call	__multf3
	lw	s5,32(sp)
	lw	s4,36(sp)
	lw	s3,40(sp)
	lw	s2,44(sp)
.L630:
	srli	a6,s0,31
	add	s0,a6,s0
	srai	s0,s0,1
	beq	s0,zero,.L642
.L632:
	addi	a2,sp,16
	addi	a1,sp,32
	addi	a0,sp,48
	sw	s1,32(sp)
	sw	s7,36(sp)
	sw	s8,40(sp)
	sw	s9,44(sp)
	sw	s1,16(sp)
	sw	s7,20(sp)
	sw	s8,24(sp)
	sw	s9,28(sp)
	call	__multf3
	srli	s1,s0,31
	andi	a7,s0,1
	add	t3,s1,s0
	lw	s7,52(sp)
	lw	s1,48(sp)
	lw	s8,56(sp)
	lw	s9,60(sp)
	bne	a7,zero,.L631
	srai	s0,t3,1
	j	.L632
.L642:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L627:
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	sw	s5,0(s6)
	sw	s4,4(s6)
	sw	s3,8(s6)
	sw	s2,12(s6)
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	mv	a0,s6
	lw	s6,80(sp)
	.cfi_restore 22
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L643:
	.cfi_def_cfa_offset 112
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
	lui	t2,%hi(.LC11)
	addi	a0,t2,%lo(.LC11)
	lw	s1,0(a0)
	lw	s7,4(a0)
	lw	s8,8(a0)
	lw	s9,12(a0)
	j	.L629
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L645
	addi	a5,a2,-1
	li	a4,3
	bleu	a5,a4,.L646
	or	t0,a0,a1
	and	t1,t0,a4
	bne	t1,zero,.L646
	andi	a7,a2,-4
	add	a6,a1,a7
	mv	t4,a0
.L647:
	lw	a3,0(t4)
	lw	t2,0(a1)
	addi	a1,a1,4
	addi	t4,t4,4
	xor	t3,t2,a3
	sw	t3,-4(t4)
	bne	a6,a1,.L647
	add	t5,a0,a7
	sub	t6,a2,a7
	beq	a2,a7,.L645
	lbu	a5,0(t5)
	lbu	a1,0(a6)
	li	a2,1
	xor	a4,a5,a1
	sb	a4,0(t5)
	beq	t6,a2,.L645
	lbu	t1,1(t5)
	lbu	t0,1(a6)
	li	a7,2
	xor	t2,t0,t1
	sb	t2,1(t5)
	beq	t6,a7,.L645
	lbu	a3,2(t5)
	lbu	a6,2(a6)
	xor	t3,a6,a3
	sb	t3,2(t5)
	ret
.L646:
	add	t4,a1,a2
	mv	t5,a0
.L649:
	lbu	a5,0(t5)
	lbu	t6,0(a1)
	addi	a1,a1,1
	addi	t5,t5,1
	xor	a2,t6,a5
	sb	a2,-1(t5)
	bne	t4,a1,.L649
.L645:
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
	beq	a5,zero,.L663
	mv	t1,a0
.L658:
	lbu	a4,1(t1)
	addi	t1,t1,1
	bne	a4,zero,.L658
.L671:
	beq	a2,zero,.L660
.L673:
	lbu	t0,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t0,0(t1)
	beq	t0,zero,.L672
	addi	t1,t1,1
	bne	a2,zero,.L673
.L660:
	sb	zero,0(t1)
	ret
.L672:
	ret
.L663:
	mv	t1,a0
	j	.L671
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
	beq	a1,zero,.L674
.L675:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L677
.L674:
	ret
.L677:
	addi	a0,a0,1
	bne	a1,a0,.L675
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
	beq	a3,zero,.L688
.L694:
	mv	a5,a1
	j	.L687
.L686:
	beq	a4,a3,.L685
.L687:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L686
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L694
.L688:
	li	a0,0
.L685:
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
	mv	a4,a0
	li	a0,0
.L696:
	lbu	a3,0(a4)
	sub	a5,a3,a1
	seqz	t0,a5
	neg	t1,t0
	not	a2,t1
	and	t2,t1,a4
	and	a0,a2,a0
	or	a0,t2,a0
	addi	a4,a4,1
	bne	a3,zero,.L696
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
	beq	a7,zero,.L711
	mv	a5,a1
.L700:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L700
	sub	t3,a5,a1
	mv	a0,a3
	addi	t4,t3,-1
	bne	a5,a1,.L718
	ret
.L720:
	addi	a3,a3,1
	beq	t0,zero,.L719
.L718:
	lbu	t0,0(a3)
	bne	t0,a7,.L720
	add	t1,a3,t4
	mv	a0,a1
	mv	t2,a3
	mv	a2,a7
.L702:
	beq	t2,t1,.L704
	addi	t2,t2,1
	bne	t0,a2,.L705
	lbu	t0,0(t2)
	lbu	a2,1(a0)
	addi	a6,a0,1
	beq	t0,zero,.L704
	mv	a0,a6
	bne	a2,zero,.L702
.L705:
	addi	a3,a3,1
	j	.L718
.L719:
	li	a0,0
	ret
.L704:
	bne	t0,a2,.L705
.L711:
	mv	a0,a3
.L698:
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
	bne	a0,zero,.L735
	fgt.d	a1,fa0,fa4
	beq	a1,zero,.L725
	flt.d	a2,fa5,fa4
	bne	a2,zero,.L724
.L725:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L735:
	.cfi_restore_state
	fgt.d	a3,fa5,fa4
	beq	a3,zero,.L725
.L724:
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
	beq	a3,zero,.L736
	bltu	a1,a3,.L747
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L747
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L742:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L752
	mv	a0,t1
.L738:
	bgeu	a7,a0,.L742
.L747:
	li	a0,0
.L736:
	ret
.L752:
	mv	t5,a2
	beq	a3,zero,.L736
.L741:
	mv	t2,t1
	add	t6,t1,a3
	j	.L739
.L740:
	beq	t2,t6,.L736
.L739:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L740
	bgtu	t1,a7,.L747
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L738
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L741
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
	beq	a2,zero,.L754
	call	memmove
.L754:
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
	bne	t1,zero,.L787
	lui	t2,%hi(.LC14)
	addi	a1,t2,%lo(.LC14)
	fld	fa4,0(a1)
	li	a3,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L788
.L762:
	lui	a2,%hi(.LC9)
	addi	a6,a2,%lo(.LC9)
	fld	ft5,0(a6)
	fld	ft6,0(a1)
	li	t1,0
.L768:
	fmul.d	fa0,fa0,ft5
	addi	t1,t1,1
	fge.d	a7,fa0,ft6
	bne	a7,zero,.L768
	sw	t1,0(a0)
	beq	a3,zero,.L759
.L790:
	fneg.d	fa0,fa0
.L759:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L788:
	.cfi_restore_state
	lui	a1,%hi(.LC9)
	addi	a2,a1,%lo(.LC9)
	fld	ft0,0(a2)
	flt.d	a6,fa0,ft0
	beq	a6,zero,.L765
	feq.d	a7,fa0,fa5
	beq	a7,zero,.L774
.L765:
	sw	zero,0(a0)
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L787:
	.cfi_restore_state
	lui	a3,%hi(.LC12)
	addi	t3,a3,%lo(.LC12)
	fld	ft2,0(t3)
	fneg.d	ft1,fa0
	fle.d	t4,fa0,ft2
	beq	t4,zero,.L789
	lui	a4,%hi(.LC14)
	fmv.d	fa0,ft1
	addi	a1,a4,%lo(.LC14)
	li	a3,1
	j	.L762
.L789:
	lui	t5,%hi(.LC13)
	addi	t6,t5,%lo(.LC13)
	fld	ft3,0(t6)
	fgt.d	a5,fa0,ft3
	beq	a5,zero,.L765
	lui	t0,%hi(.LC9)
	addi	a2,t0,%lo(.LC9)
	li	a3,1
.L763:
	fmv.d	fa0,ft1
	fld	ft4,0(a2)
	li	t1,0
.L770:
	fadd.d	fa0,fa0,fa0
	addi	t1,t1,-1
	flt.d	t2,fa0,ft4
	bne	t2,zero,.L770
	sw	t1,0(a0)
	bne	a3,zero,.L790
	j	.L759
.L774:
	fmv.d	ft1,fa0
	j	.L763
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
	beq	a5,zero,.L795
.L794:
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
	bne	a4,zero,.L794
	ret
.L795:
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
	mv	t1,a0
	li	a5,1
	li	a0,32
	bltu	a1,t1,.L798
	j	.L816
.L802:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	t1,a1,.L800
	beq	a0,zero,.L801
.L798:
	addi	a0,a0,-1
	bge	a1,zero,.L802
.L803:
	li	a0,0
.L804:
	sltu	t2,t1,a1
	addi	t3,t2,-1
	sub	a6,t1,a1
	not	a7,t3
	and	t6,t3,a5
	and	t4,a7,t1
	and	t5,t3,a6
	srli	a5,a5,1
	or	t1,t5,t4
	or	a0,a0,t6
	srli	a1,a1,1
	bne	a5,zero,.L804
.L801:
	bne	a2,zero,.L817
.L797:
	ret
.L800:
	bne	a5,zero,.L803
	li	a0,0
	beq	a2,zero,.L797
.L817:
	mv	a0,t1
	ret
.L816:
	sgtu	a0,a1,t1
	addi	a5,a0,-1
	sub	a1,t1,a1
	not	a3,a5
	and	t0,a5,a1
	and	a4,a3,t1
	or	t1,t0,a4
	xori	a0,a0,1
	j	.L801
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L820
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
.L820:
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
	beq	a5,a3,.L834
.L829:
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
.L834:
	bne	a4,a5,.L829
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
	beq	a4,zero,.L838
.L837:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L837
	ret
.L838:
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
	bltu	a0,a1,.L844
	add	a5,a1,a2
	bleu	a0,a5,.L873
.L844:
	beq	a3,zero,.L874
	slli	t3,a3,3
	add	t4,t3,a1
	mv	a3,a1
	mv	a5,a0
.L847:
	lw	t5,0(a3)
	lw	t6,4(a3)
	addi	a3,a3,8
	sw	t5,0(a5)
	sw	t6,4(a5)
	addi	a5,a5,8
	bne	a3,t4,.L847
	bleu	a2,t1,.L840
	sub	t0,a2,t1
	addi	a6,t0,-1
	li	a4,6
	bleu	a6,a4,.L875
	addi	t2,t1,1
	add	a7,a1,t2
	add	a4,a0,t1
	sub	t3,a4,a7
	sltiu	t4,t3,3
	add	a5,a1,t1
	bne	t4,zero,.L849
	or	t5,a5,a4
	andi	t6,t5,3
	bne	t6,zero,.L849
	andi	t2,t0,-4
	add	a6,a5,t2
.L850:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L850
	add	t1,t1,t2
	beq	t0,t2,.L840
	add	a5,a1,t1
	lbu	t0,0(a5)
	add	a4,a0,t1
	addi	a7,t1,1
	sb	t0,0(a4)
	bleu	a2,a7,.L840
	add	t3,a1,a7
	lbu	t4,0(t3)
	add	t5,a0,a7
	addi	t6,t1,2
	sb	t4,0(t5)
	bleu	a2,t6,.L840
	add	a1,a1,t6
	lbu	a2,0(a1)
	add	a0,a0,t6
	sb	a2,0(a0)
	ret
.L873:
	addi	a7,a2,-1
	li	a6,-1
	beq	a2,zero,.L840
.L845:
	add	a4,a1,a7
	lbu	t0,0(a4)
	add	t2,a0,a7
	addi	a7,a7,-1
	sb	t0,0(t2)
	bne	a7,a6,.L845
.L840:
	ret
.L874:
	add	a4,a0,t1
	add	a5,a1,t1
	beq	a2,zero,.L876
.L849:
	add	t2,a1,a2
.L852:
	lbu	a6,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	a5,t2,.L852
	ret
.L876:
	ret
.L875:
	add	a4,a0,t1
	add	a5,a1,t1
	j	.L849
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
	bltu	a0,a1,.L881
	add	a5,a1,a2
	bleu	a0,a5,.L904
.L881:
	beq	a7,zero,.L880
	addi	t2,a7,-1
	li	t3,8
	bleu	t2,t3,.L884
	or	t4,a1,a0
	andi	t5,t4,3
	bne	t5,zero,.L884
	addi	t6,a1,2
	beq	a0,t6,.L884
	andi	t0,a2,-4
	add	a6,a1,t0
	srli	t1,a2,2
	mv	a5,a1
	mv	a4,a0
.L885:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,a6,.L885
	slli	t2,t1,1
	beq	a7,t2,.L880
	add	a7,a1,t0
	lh	t3,0(a7)
	add	t4,a0,t0
	sh	t3,0(t4)
.L880:
	andi	a3,a2,1
	beq	a3,zero,.L877
.L905:
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
	ret
.L904:
	addi	t1,a2,-1
	li	a6,-1
	beq	a2,zero,.L877
.L882:
	add	a4,a1,t1
	lbu	a3,0(a4)
	add	t0,a0,t1
	addi	t1,t1,-1
	sb	a3,0(t0)
	bne	t1,a6,.L882
.L877:
	ret
.L884:
	slli	t5,a7,1
	add	t6,t5,a1
	mv	a6,a1
	mv	t1,a0
.L887:
	lh	t0,0(a6)
	addi	a6,a6,2
	addi	t1,t1,2
	sh	t0,-2(t1)
	bne	t6,a6,.L887
	andi	a3,a2,1
	beq	a3,zero,.L877
	j	.L905
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
	bltu	a0,a1,.L910
	add	a5,a1,a2
	bleu	a0,a5,.L939
.L910:
	beq	a6,zero,.L940
	slli	t3,a6,2
	add	t4,t3,a1
	mv	t6,a1
	mv	a6,a0
.L913:
	lw	t5,0(t6)
	addi	t6,t6,4
	addi	a6,a6,4
	sw	t5,-4(a6)
	bne	t6,t4,.L913
	bleu	a2,a7,.L906
	sub	t0,a2,a7
	addi	a4,t0,-1
	li	a5,6
	bleu	a4,a5,.L941
	addi	a3,a7,1
	add	t1,a1,a3
	add	a4,a0,a7
	sub	t2,a4,t1
	sltiu	t3,t2,3
	add	t1,a1,a7
	bne	t3,zero,.L915
	or	t4,t1,a4
	andi	t5,t4,3
	bne	t5,zero,.L915
	andi	t6,t0,-4
	add	a6,t1,t6
.L916:
	lw	a3,0(t1)
	addi	t1,t1,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	t1,a6,.L916
	add	a7,a7,t6
	beq	t0,t6,.L906
	add	t0,a1,a7
	lbu	t1,0(t0)
	add	a4,a0,a7
	addi	a5,a7,1
	sb	t1,0(a4)
	bleu	a2,a5,.L906
	add	t2,a1,a5
	lbu	t3,0(t2)
	add	t4,a0,a5
	addi	t5,a7,2
	sb	t3,0(t4)
	bleu	a2,t5,.L906
	add	a1,a1,t5
	lbu	a2,0(a1)
	add	a0,a0,t5
	sb	a2,0(a0)
	ret
.L939:
	addi	t2,a2,-1
	li	t0,-1
	beq	a2,zero,.L906
.L911:
	add	a4,a1,t2
	lbu	a3,0(a4)
	add	t1,a0,t2
	addi	t2,t2,-1
	sb	a3,0(t1)
	bne	t2,t0,.L911
.L906:
	ret
.L940:
	add	a4,a0,a7
	add	t1,a1,a7
	beq	a2,zero,.L942
.L915:
	add	t6,a1,a2
.L918:
	lbu	a6,0(t1)
	addi	t1,t1,1
	addi	a4,a4,1
	sb	a6,-1(a4)
	bne	t1,t6,.L918
	ret
.L942:
	ret
.L941:
	add	a4,a0,a7
	add	t1,a1,a7
	j	.L915
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	rem	a0,a0,a1
	ret
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
	remu	a0,a0,a1
	ret
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
	bne	a4,zero,.L954
	srai	a0,a0,14
	bne	a0,zero,.L951
	srai	t0,a5,13
	bne	t0,zero,.L955
	srai	t1,a5,12
	bne	t1,zero,.L956
	srai	t2,a5,11
	bne	t2,zero,.L957
	srai	a0,a5,10
	bne	a0,zero,.L958
	srai	a1,a5,9
	bne	a1,zero,.L959
	srai	a2,a5,8
	bne	a2,zero,.L960
	srai	a3,a5,7
	bne	a3,zero,.L961
	srai	a6,a5,6
	bne	a6,zero,.L962
	srai	a7,a5,5
	bne	a7,zero,.L963
	srai	t3,a5,4
	bne	t3,zero,.L964
	srai	t4,a5,3
	bne	t4,zero,.L965
	srai	t5,a5,2
	bne	t5,zero,.L966
	srai	t6,a5,1
	bne	t6,zero,.L967
	seqz	a5,a5
	addi	a0,a5,15
	ret
.L967:
	li	a0,14
.L951:
	ret
.L954:
	li	a0,0
	ret
.L965:
	li	a0,12
	ret
.L955:
	li	a0,2
	ret
.L956:
	li	a0,3
	ret
.L957:
	li	a0,4
	ret
.L958:
	li	a0,5
	ret
.L959:
	li	a0,6
	ret
.L960:
	li	a0,7
	ret
.L961:
	li	a0,8
	ret
.L962:
	li	a0,9
	ret
.L963:
	li	a0,10
	ret
.L964:
	li	a0,11
	ret
.L966:
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
	bne	a5,zero,.L972
	andi	t0,a0,2
	bne	t0,zero,.L973
	andi	t1,a0,4
	bne	t1,zero,.L974
	andi	t2,a0,8
	bne	t2,zero,.L975
	andi	a1,a0,16
	bne	a1,zero,.L976
	andi	a2,a0,32
	bne	a2,zero,.L977
	andi	a3,a0,64
	bne	a3,zero,.L978
	andi	a4,a0,128
	bne	a4,zero,.L979
	andi	a6,a0,256
	bne	a6,zero,.L980
	andi	a7,a0,512
	bne	a7,zero,.L981
	andi	t3,a0,1024
	bne	t3,zero,.L982
	slli	t5,a0,20
	li	t4,4096
	blt	t5,zero,.L983
	and	t6,a0,t4
	bne	t6,zero,.L984
	slli	a5,a0,18
	blt	a5,zero,.L985
	slli	t0,a0,17
	blt	t0,zero,.L986
	srai	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L972:
	li	a0,0
	ret
.L973:
	li	a0,1
	ret
.L984:
	li	a0,12
	ret
.L974:
	li	a0,2
	ret
.L975:
	li	a0,3
	ret
.L976:
	li	a0,4
	ret
.L977:
	li	a0,5
	ret
.L978:
	li	a0,6
	ret
.L979:
	li	a0,7
	ret
.L980:
	li	a0,8
	ret
.L981:
	li	a0,9
	ret
.L982:
	li	a0,10
	ret
.L983:
	li	a0,11
	ret
.L985:
	li	a0,13
	ret
.L986:
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
	lui	a5,%hi(.LC15)
	flw	fa5,%lo(.LC15)(a5)
	fge.s	t0,fa0,fa5
	bne	t0,zero,.L995
	fcvt.w.s a0,fa0,rtz
	ret
.L995:
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
	beq	a4,zero,.L1001
.L1000:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L1000
	ret
.L1001:
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
	beq	a4,zero,.L1006
	beq	a1,zero,.L1007
.L1005:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a4
	srli	a1,a1,1
	add	a0,a0,t1
	slli	a4,a4,1
	bne	a1,zero,.L1005
	ret
.L1006:
	ret
.L1007:
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
	mv	t1,a0
	li	a3,1
	li	a0,32
	bgtu	t1,a1,.L1010
	j	.L1028
.L1014:
	slli	a1,a1,1
	slli	a3,a3,1
	bleu	t1,a1,.L1012
	beq	a0,zero,.L1013
.L1010:
	addi	a0,a0,-1
	bge	a1,zero,.L1014
.L1015:
	li	a0,0
.L1016:
	sltu	t2,t1,a1
	addi	t3,t2,-1
	sub	a6,t1,a1
	not	a7,t3
	and	t6,t3,a3
	and	t4,a7,t1
	and	t5,t3,a6
	srli	a3,a3,1
	or	t1,t5,t4
	or	a0,a0,t6
	srli	a1,a1,1
	bne	a3,zero,.L1016
.L1013:
	bne	a2,zero,.L1029
.L1009:
	ret
.L1012:
	bne	a3,zero,.L1015
	li	a0,0
	beq	a2,zero,.L1009
.L1029:
	mv	a0,t1
	ret
.L1028:
	sltu	a0,t1,a1
	neg	a3,a0
	sub	a1,t1,a1
	not	a5,a3
	and	a4,a3,t1
	and	t0,a5,a1
	or	t1,a4,t0
	xori	a0,a0,1
	j	.L1013
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
	bne	a5,zero,.L1030
	fgt.s	a0,fa0,fa1
.L1030:
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
	bne	t2,zero,.L1034
	fgt.d	a0,fa4,fa5
.L1034:
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
	mv	a5,a1
	mulh	a1,a0,a1
	mul	a0,a0,a5
	ret
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	mv	a5,a1
	mulhu	a1,a0,a1
	mul	a0,a0,a5
	ret
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
	blt	a1,zero,.L1056
	beq	a1,zero,.L1048
	li	a2,0
.L1044:
	li	t2,32
	li	a0,0
	j	.L1047
.L1057:
	beq	t2,zero,.L1046
.L1047:
	andi	a5,a1,1
	neg	t0,a5
	and	t1,t0,a3
	addi	a4,t2,-1
	srai	a1,a1,1
	andi	t2,a4,0xff
	add	a0,a0,t1
	slli	a3,a3,1
	bne	a1,zero,.L1057
.L1046:
	beq	a2,zero,.L1042
	neg	a0,a0
	ret
.L1048:
	li	a0,0
.L1042:
	ret
.L1056:
	neg	a1,a1
	li	a2,1
	j	.L1044
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
	blt	a0,zero,.L1084
.L1059:
	bge	a1,zero,.L1060
	neg	a1,a1
	mv	a7,a5
.L1060:
	mv	t4,a0
	mv	t5,a1
	li	a4,32
	li	a3,1
	bgtu	a0,a1,.L1061
	j	.L1082
.L1065:
	beq	a4,zero,.L1066
.L1061:
	slli	t5,t5,1
	addi	a4,a4,-1
	slli	a3,a3,1
	bgtu	a0,t5,.L1065
.L1066:
	li	a0,0
	beq	a3,zero,.L1064
.L1063:
	sltu	t0,t4,t5
	addi	t1,t0,-1
	sub	a1,t4,t5
	not	a6,t1
	and	t3,t1,a3
	and	a2,a6,t4
	and	t2,t1,a1
	srli	a3,a3,1
	or	t4,t2,a2
	or	a0,a0,t3
	srli	t5,t5,1
	bne	a3,zero,.L1063
.L1064:
	beq	a7,zero,.L1058
	neg	a0,a0
	ret
.L1058:
	ret
.L1084:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1059
.L1082:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1064
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	li	a6,0
	bge	a0,zero,.L1086
	neg	a0,a0
	li	a6,1
.L1086:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a5,a1,a5
	mv	a7,a0
	li	t3,32
	li	a1,1
	bgtu	a0,a5,.L1087
	j	.L1107
.L1091:
	beq	t3,zero,.L1092
.L1087:
	slli	a5,a5,1
	addi	t3,t3,-1
	slli	a1,a1,1
	bgtu	a0,a5,.L1091
.L1092:
	beq	a1,zero,.L1090
.L1089:
	sltu	a0,a7,a5
	addi	t4,a0,-1
	sub	t6,a7,a5
	not	t5,t4
	and	t0,t5,a7
	and	a4,t4,t6
	srli	a1,a1,1
	or	a7,a4,t0
	srli	a5,a5,1
	bne	a1,zero,.L1089
	mv	a0,a7
.L1090:
	beq	a6,zero,.L1085
	neg	a0,a0
	ret
.L1085:
	ret
.L1107:
	sltu	a4,a0,a5
	neg	t0,a4
	sub	t1,a0,a5
	not	a3,t0
	and	a2,t0,a0
	and	t2,a3,t1
	or	a7,a2,t2
	mv	a0,a7
	j	.L1090
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	mv	a3,a0
	bgeu	a1,a0,.L1189
	slli	t3,a1,16
	srai	t4,t3,16
	blt	t4,zero,.L1112
	slli	a6,a1,1
	slli	t1,a6,16
	srli	t4,t1,16
	bleu	a0,t4,.L1119
	slli	t2,t4,16
	srai	a4,t2,16
	blt	a4,zero,.L1119
	slli	a5,a1,2
	slli	a0,a5,16
	srli	t4,a0,16
	bleu	a3,t4,.L1121
	slli	a7,t4,16
	srai	t3,a7,16
	blt	t3,zero,.L1121
	slli	t4,a1,3
	slli	t5,t4,16
	srli	t4,t5,16
	bleu	a3,t4,.L1123
	slli	t6,t4,16
	srai	t0,t6,16
	blt	t0,zero,.L1123
	slli	a6,a1,4
	slli	t1,a6,16
	srli	t4,t1,16
	bleu	a3,t4,.L1125
	slli	t2,t4,16
	srai	a4,t2,16
	blt	a4,zero,.L1125
	slli	a5,a1,5
	slli	a0,a5,16
	srli	t4,a0,16
	bleu	a3,t4,.L1127
	slli	a7,t4,16
	srai	t3,a7,16
	blt	t3,zero,.L1127
	slli	t4,a1,6
	slli	t5,t4,16
	srli	t4,t5,16
	bleu	a3,t4,.L1129
	slli	t6,t4,16
	srai	t0,t6,16
	blt	t0,zero,.L1129
	slli	a6,a1,7
	slli	t1,a6,16
	srli	t4,t1,16
	bleu	a3,t4,.L1131
	slli	t2,t4,16
	srai	a4,t2,16
	blt	a4,zero,.L1131
	slli	a5,a1,8
	slli	a0,a5,16
	srli	t4,a0,16
	bleu	a3,t4,.L1133
	slli	a7,t4,16
	srai	t3,a7,16
	blt	t3,zero,.L1133
	slli	t4,a1,9
	slli	t5,t4,16
	srli	t4,t5,16
	bleu	a3,t4,.L1135
	slli	t6,t4,16
	srai	t0,t6,16
	blt	t0,zero,.L1135
	slli	a6,a1,10
	slli	t1,a6,16
	srli	t4,t1,16
	bleu	a3,t4,.L1137
	slli	t2,t4,16
	srai	a4,t2,16
	blt	a4,zero,.L1137
	slli	a5,a1,11
	slli	a0,a5,16
	srli	t4,a0,16
	bleu	a3,t4,.L1139
	slli	a7,t4,16
	srai	t3,a7,16
	blt	t3,zero,.L1139
	slli	t4,a1,12
	slli	t5,t4,16
	srli	t4,t5,16
	bleu	a3,t4,.L1141
	slli	t6,t4,16
	srai	t0,t6,16
	blt	t0,zero,.L1141
	slli	a6,a1,13
	slli	t1,a6,16
	srli	t4,t1,16
	bleu	a3,t4,.L1143
	slli	t2,t4,16
	srai	a4,t2,16
	blt	a4,zero,.L1143
	slli	a5,a1,14
	slli	a0,a5,16
	srli	t4,a0,16
	bleu	a3,t4,.L1145
	slli	a7,t4,16
	srai	t3,a7,16
	blt	t3,zero,.L1145
	slli	t5,a1,15
	slli	t6,t5,16
	srli	t0,t6,16
	bleu	a3,t0,.L1146
	li	a1,32768
	mv	a0,a3
	mv	t4,a1
	bne	t0,zero,.L1114
.L1115:
	bne	a2,zero,.L1148
.L1190:
	mv	a0,t0
	ret
.L1119:
	li	a1,2
.L1114:
	sub	t0,a3,t4
	sltu	a6,a3,t4
	addi	a5,a6,-1
	slli	t1,t0,16
	srli	t2,t1,16
	not	a0,a5
	and	a7,a5,t2
	and	a3,a0,a3
	or	t6,a7,a3
	srli	t0,t4,1
	sub	a6,t6,t0
	sltu	t2,t6,t0
	addi	a0,t2,-1
	slli	t1,a6,16
	and	t5,a5,a1
	srli	t3,a1,1
	not	a4,a0
	srli	a5,t1,16
	and	t0,a0,a5
	and	a7,a4,t6
	and	t6,a0,t3
	srli	t3,a1,2
	or	a0,t0,a7
	or	t0,t5,t6
	srli	t5,t4,2
	beq	t3,zero,.L1115
	sub	a6,a0,t5
	sltu	t2,a0,t5
	addi	a4,t2,-1
	slli	t1,a6,16
	srli	a5,t1,16
	not	a7,a4
	and	t6,a4,t3
	and	a3,a4,a5
	and	a0,a7,a0
	srli	t3,a1,3
	or	t0,t0,t6
	or	a0,a3,a0
	srli	t5,t4,3
	beq	t3,zero,.L1115
	sub	a6,a0,t5
	sltu	t2,a0,t5
	addi	a4,t2,-1
	slli	t1,a6,16
	srli	a5,t1,16
	not	t6,a4
	and	a7,a4,t3
	and	a3,a4,a5
	and	a0,t6,a0
	srli	t3,a1,4
	or	t0,t0,a7
	or	a0,a0,a3
	srli	t5,t4,4
	beq	t3,zero,.L1115
	sub	a6,a0,t5
	sltu	t2,a0,t5
	addi	a4,t2,-1
	slli	t1,a6,16
	srli	a5,t1,16
	not	t6,a4
	and	t5,a4,a5
	and	a7,t6,a0
	or	a0,t5,a7
	and	a3,a4,t3
	slli	a6,a0,16
	srli	t3,a1,5
	srli	a0,a6,16
	or	t0,t0,a3
	srli	t2,t4,5
	beq	t3,zero,.L1115
	sub	t1,a0,t2
	sltu	a5,a0,t2
	addi	t5,a5,-1
	slli	a4,t1,16
	srli	t6,a4,16
	not	a6,t5
	and	a7,t5,t3
	and	a3,t5,t6
	and	a0,a6,a0
	srli	t3,a1,6
	or	t0,t0,a7
	or	a0,a0,a3
	srli	t2,t4,6
	beq	t3,zero,.L1115
	sub	t1,a0,t2
	sltu	a5,a0,t2
	addi	t5,a5,-1
	slli	a4,t1,16
	srli	t6,a4,16
	not	a7,t5
	and	a0,a7,a0
	and	a6,t5,t6
	and	a3,t5,t3
	or	t3,a6,a0
	slli	t1,t3,16
	srli	t2,a1,7
	srli	a0,t1,16
	or	t0,t0,a3
	srli	a5,t4,7
	beq	t2,zero,.L1115
	sub	a4,a0,a5
	sltu	t6,a0,a5
	addi	a3,t6,-1
	slli	t5,a4,16
	srli	t3,t5,16
	not	a6,a3
	and	a7,a3,t2
	and	a0,a6,a0
	and	t2,a3,t3
	srli	t1,a1,8
	or	t0,t0,a7
	or	a0,a0,t2
	srli	a5,t4,8
	beq	t1,zero,.L1115
	sub	a4,a0,a5
	sltu	t6,a0,a5
	addi	a3,t6,-1
	slli	t5,a4,16
	srli	t3,t5,16
	not	a7,a3
	and	a6,a3,t3
	and	t2,a7,a0
	or	a0,a6,t2
	and	t1,a3,t1
	slli	a4,a0,16
	srli	a5,a1,9
	srli	a0,a4,16
	or	t0,t0,t1
	srli	t6,t4,9
	beq	a5,zero,.L1115
	sub	t5,a0,t6
	sltu	t3,a0,t6
	addi	t1,t3,-1
	slli	a3,t5,16
	srli	t2,a3,16
	not	a6,t1
	and	a7,t1,a5
	and	a0,a6,a0
	and	a5,t1,t2
	srli	a4,a1,10
	or	t0,t0,a7
	or	a0,a0,a5
	srli	t6,t4,10
	beq	a4,zero,.L1115
	sub	t5,a0,t6
	sltu	t3,a0,t6
	addi	t1,t3,-1
	slli	a3,t5,16
	srli	t2,a3,16
	not	a7,t1
	and	a6,t1,t2
	and	a5,a7,a0
	or	a0,a6,a5
	and	a4,t1,a4
	slli	t5,a0,16
	srli	t6,a1,11
	srli	a0,t5,16
	or	t0,t0,a4
	srli	t3,t4,11
	beq	t6,zero,.L1115
	sub	t2,a0,t3
	sltu	a3,a0,t3
	addi	a4,a3,-1
	slli	t1,t2,16
	srli	a5,t1,16
	not	a6,a4
	and	a7,a4,t6
	and	a0,a6,a0
	and	t6,a4,a5
	srli	t5,a1,12
	or	t0,t0,a7
	or	a0,a0,t6
	srli	t3,t4,12
	beq	t5,zero,.L1115
	sub	t2,a0,t3
	sltu	a3,a0,t3
	addi	a4,a3,-1
	slli	t1,t2,16
	srli	a5,t1,16
	not	a7,a4
	and	a6,a4,a5
	and	t6,a7,a0
	or	a0,a6,t6
	and	t5,a4,t5
	slli	t2,a0,16
	srli	t3,a1,13
	srli	a0,t2,16
	or	t0,t0,t5
	srli	a3,t4,13
	beq	t3,zero,.L1115
	sub	t1,a0,a3
	sltu	a5,a0,a3
	addi	t5,a5,-1
	slli	a4,t1,16
	srli	t6,a4,16
	not	a6,t5
	and	a7,t5,t3
	and	a0,a6,a0
	and	t3,t5,t6
	srli	t2,a1,14
	or	t0,t0,a7
	or	a0,a0,t3
	srli	a3,t4,14
	beq	t2,zero,.L1115
	sub	t1,a0,a3
	sltu	a5,a0,a3
	addi	t5,a5,-1
	slli	a4,t1,16
	srli	t6,a4,16
	not	a7,t5
	and	a6,t5,t6
	and	t3,a7,a0
	or	a0,a6,t3
	and	t2,t5,t2
	slli	t1,a0,16
	li	a3,16384
	srli	t4,t4,15
	srli	a0,t1,16
	or	t0,t0,t2
	beq	a1,a3,.L1115
	sltu	a5,a0,t4
	sub	a1,a0,t4
	addi	t5,a5,-1
	slli	a4,a1,16
	srli	t6,a4,16
	not	a7,t5
	and	a6,t5,t6
	and	t3,a7,a0
	xori	t2,a5,1
	or	a0,t3,a6
	or	t0,t2,t0
	beq	a2,zero,.L1190
.L1148:
	ret
.L1121:
	li	a1,4
	j	.L1114
.L1123:
	li	a1,8
	j	.L1114
.L1125:
	li	a1,16
	j	.L1114
.L1135:
	li	a1,512
	j	.L1114
.L1127:
	li	a1,32
	j	.L1114
.L1129:
	li	a1,64
	j	.L1114
.L1131:
	li	a1,128
	j	.L1114
.L1133:
	li	a1,256
	j	.L1114
.L1189:
	sub	a6,a1,a0
	seqz	a5,a6
	sub	a1,a0,a1
	slli	t0,a1,16
	neg	t2,a5
	srli	t1,t0,16
	not	a4,t2
	and	a0,t2,t1
	and	a7,a4,a3
	or	a0,a0,a7
	seqz	t0,a6
	j	.L1115
.L1137:
	li	a1,1024
	j	.L1114
.L1139:
	li	a1,4096
	addi	a1,a1,-2048
	j	.L1114
.L1141:
	li	a1,4096
	j	.L1114
.L1143:
	li	a1,8192
	j	.L1114
.L1145:
	li	a1,16384
	j	.L1114
.L1146:
	li	t4,32768
	mv	a1,t4
	j	.L1114
.L1112:
	sub	t5,a0,a1
	slli	t6,t5,16
	srli	a0,t6,16
	li	t0,1
	j	.L1115
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	mv	t1,a0
	li	a3,1
	li	a0,32
	bgtu	t1,a1,.L1192
	j	.L1210
.L1196:
	slli	a1,a1,1
	slli	a3,a3,1
	bleu	t1,a1,.L1194
	beq	a0,zero,.L1195
.L1192:
	addi	a0,a0,-1
	bge	a1,zero,.L1196
.L1197:
	li	a0,0
.L1198:
	sltu	t2,t1,a1
	addi	t3,t2,-1
	sub	a6,t1,a1
	not	a7,t3
	and	t6,t3,a3
	and	t4,a7,t1
	and	t5,t3,a6
	srli	a3,a3,1
	or	t1,t5,t4
	or	a0,a0,t6
	srli	a1,a1,1
	bne	a3,zero,.L1198
.L1195:
	bne	a2,zero,.L1211
.L1191:
	ret
.L1194:
	bne	a3,zero,.L1197
	li	a0,0
	beq	a2,zero,.L1191
.L1211:
	mv	a0,t1
	ret
.L1210:
	sltu	a0,t1,a1
	neg	a3,a0
	sub	a1,t1,a1
	not	a5,a3
	and	a4,a3,t1
	and	t0,a5,a1
	or	t1,a4,t0
	xori	a0,a0,1
	j	.L1195
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
	beq	a5,zero,.L1213
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1213:
	beq	a2,zero,.L1215
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1215:
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
	beq	a5,zero,.L1218
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1218:
	beq	a2,zero,.L1220
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1220:
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
	li	a6,2
	slli	a3,a2,1
	sub	t3,a6,a3
	srl	t4,a4,t3
	and	t5,t4,a6
	add	t1,a7,t1
	seqz	a7,t5
	add	t6,t0,t1
	sub	a1,a6,t4
	neg	t0,a7
	add	a5,a3,t6
	and	t2,t0,a1
	add	a0,t2,a5
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
	blt	a1,a3,.L1227
	li	a0,2
	bgt	a1,a3,.L1225
	li	a0,0
	bltu	a5,a2,.L1225
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1227:
	li	a0,0
.L1225:
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
	blt	a1,a3,.L1233
	li	a0,1
	bgt	a1,a3,.L1231
	li	a0,-1
	bltu	a5,a2,.L1231
	sgtu	a0,a5,a2
	ret
.L1233:
	li	a0,-1
.L1231:
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
	beq	a5,zero,.L1238
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1238:
	beq	a2,zero,.L1240
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1240:
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
	slli	a3,a0,16
	slli	a5,a1,16
	srli	t0,a3,16
	srli	t1,a5,16
	srli	a4,a0,16
	mul	a0,t0,t1
	srli	a1,a1,16
	mul	t2,t1,a4
	srli	a2,a0,16
	slli	a6,a0,16
	srli	a7,a6,16
	mul	t3,t0,a1
	add	t4,t2,a2
	slli	t5,t4,16
	srli	t6,t5,16
	srli	t0,t4,16
	mul	a5,a4,a1
	add	a3,t3,t6
	srli	t1,a3,16
	slli	a4,a3,16
	add	a0,a7,a4
	add	a1,t0,a5
	add	a1,a1,t1
	ret
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	slli	a6,a0,16
	slli	a5,a2,16
	srli	t2,a5,16
	srli	t0,a6,16
	mv	a4,a0
	srli	a7,a0,16
	mul	a0,t0,t2
	srli	t1,a2,16
	mul	t4,t2,a7
	srli	t3,a0,16
	slli	t5,a0,16
	srli	t6,t5,16
	mul	a6,t0,t1
	add	t0,t4,t3
	slli	a5,t0,16
	srli	t2,a5,16
	srli	t4,t0,16
	mul	a7,a7,t1
	add	a0,a6,t2
	srli	t1,a0,16
	slli	t3,a0,16
	add	a0,t6,t3
	mul	a3,a4,a3
	add	a4,t4,a7
	add	t5,a4,t1
	mul	a1,a2,a1
	add	a2,a3,t5
	add	a1,a2,a1
	ret
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
	lui	a2,%hi(.LC14)
	sw	a5,8(sp)
	sw	t0,12(sp)
	addi	t2,a2,%lo(.LC14)
	andi	t1,a0,1
	fld	fa5,8(sp)
	fld	fa0,0(t2)
	beq	t1,zero,.L1255
	mv	t3,a0
.L1252:
	fmul.d	fa0,fa0,fa5
.L1250:
	srli	a4,t3,31
	add	a1,a4,t3
	srai	t3,a1,1
	beq	t3,zero,.L1251
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1252
.L1257:
	srai	t3,a7,1
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1252
	j	.L1257
.L1251:
	bge	a0,zero,.L1249
	fld	ft0,0(t2)
	fdiv.d	fa0,ft0,fa0
.L1249:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L1255:
	.cfi_restore_state
	mv	t3,a0
	j	.L1250
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	lui	a2,%hi(.LC16)
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC16)(a2)
	beq	a5,zero,.L1264
	mv	a1,a0
.L1261:
	fmul.s	fa0,fa0,fa5
.L1259:
	srli	a4,a1,31
	add	t0,a4,a1
	srai	a1,t0,1
	beq	a1,zero,.L1260
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1261
.L1265:
	srai	a1,t2,1
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1261
	j	.L1265
.L1260:
	blt	a0,zero,.L1266
	ret
.L1264:
	mv	a1,a0
	j	.L1259
.L1266:
	flw	ft0,%lo(.LC16)(a2)
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
	bltu	a1,a3,.L1269
	li	a0,2
	bgtu	a1,a3,.L1267
	li	a0,0
	bltu	a5,a2,.L1267
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1269:
	li	a0,0
.L1267:
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
	bltu	a1,a3,.L1275
	li	a0,1
	bgtu	a1,a3,.L1273
	li	a0,-1
	bltu	a5,a2,.L1273
	sgtu	a0,a5,a2
	ret
.L1275:
	li	a0,-1
.L1273:
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	-1
	.word	-1048577
	.align	3
.LC3:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC5:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.set	.LC6,.LC10+12
	.section	.srodata.cst4
	.align	2
.LC7:
	.word	1056964608
	.set	.LC8,.LC10+8
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.srodata.cst8
	.align	3
.LC12:
	.word	0
	.word	-1074790400
	.align	3
.LC13:
	.word	0
	.word	-1075838976
	.align	3
.LC14:
	.word	0
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC15:
	.word	1191182336
	.align	2
.LC16:
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
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
