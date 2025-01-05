	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_h1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr1p0_zicond1p0_zicsr2p0_zifencei2p0_zihintntl1p0_zihintpause1p0_zihpm1p0_za128rs1p0_za64rs1p0_zawrs1p0_zba1p0_zbb1p0_zbc1p0_zbkb1p0_zbkc1p0_zbkx1p0_zbs1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zks1p0_zksed1p0_zksh1p0_zkt1p0_ztso1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl1024b1p0_zvl128b1p0_zvl2048b1p0_zvl256b1p0_zvl32b1p0_zvl512b1p0_zvl64b1p0"
	.attribute unaligned_access, 1
	.attribute stack_align, 16
	.text
	.align	1
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	bleu	a0,a1,.L2
	add	a7,a1,a2
	add	a6,a0,a2
	beq	a2,zero,.L37
	addi	t5,a2,-1
	sltiu	t3,t5,255
	bne	t3,zero,.L40
	csrr	t6,vlenb
	srli	t4,t6,3
	addi	a5,t4,-1
	bltu	t5,a5,.L40
	addi	a3,a2,-2
	add	t0,a1,a3
	add	t1,a0,t5
	sub	t2,t1,t0
	addi	a4,t6,-2
	add	t3,t2,a4
	bleu	t3,a4,.L40
	addi	t4,t6,-1
	bltu	t5,t4,.L18
	sub	t0,a2,t6
	add	a3,a1,t0
	add	a4,a0,t0
	neg	t1,t6
	sub	t2,a2,t6
	li	a5,0
.L6:
	vl1re8.v	v0,0(a3)
	add	a5,a5,t6
	add	a3,a3,t1
	vs1r.v	v0,0(a4)
	add	a4,a4,t1
	bgeu	t2,a5,.L6
	sub	t6,a2,a5
	sub	a6,a6,a5
	sub	a7,a7,a5
	mv	t3,t6
	beq	a2,a5,.L47
.L5:
	csrr	t4,vlenb
	srli	t0,t4,3
	sub	t5,t5,a5
	addi	t1,t0,-1
	bltu	t5,t1,.L8
	sub	a2,a2,t0
	sub	a5,a2,a5
	add	a1,a1,a5
	add	t5,a0,a5
	neg	t2,t0
	sub	a3,t6,t0
	li	t4,0
	vsetvli	a4,zero,e8,mf8,ta,ma
.L9:
	vle8.v	v2,0(a1)
	add	t4,t4,t0
	add	a1,a1,t2
	vse8.v	v2,0(t5)
	add	t5,t5,t2
	bgeu	a3,t4,.L9
	sub	t3,t3,t4
	sub	a6,a6,t4
	sub	a7,a7,t4
	beq	t6,t4,.L37
.L8:
	sub	t6,a6,t3
.L11:
	lbu	t0,-1(a7)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t0,0(a6)
	bne	t6,a6,.L11
	ret
.L2:
	bne	a0,a1,.L48
.L37:
	ret
.L40:
	lbu	t1,-1(a7)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t1,0(a6)
	bne	a0,a6,.L40
	ret
.L48:
	beq	a2,zero,.L37
	addi	a6,a1,1
	csrr	a5,vlenb
	sub	a3,a0,a6
	addi	t0,a5,-2
	bleu	a3,t0,.L14
	mv	a4,a0
.L15:
	vsetvli	t1,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	sub	a2,a2,t1
	add	a1,a1,t1
	vse8.v	v1,0(a4)
	add	a4,a4,t1
	bne	a2,zero,.L15
	ret
.L14:
	add	a2,a0,a2
	mv	a1,a0
.L16:
	lbu	t2,-1(a6)
	addi	a1,a1,1
	addi	a6,a6,1
	sb	t2,-1(a1)
	bne	a2,a1,.L16
	ret
.L18:
	mv	t3,a2
	li	a5,0
	mv	t6,a2
	j	.L5
.L47:
	ret
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	1
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	andi	a2,a2,0xff
.L61:
	beq	a3,zero,.L62
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L61
	ret
.L62:
	li	a0,0
	ret
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	1
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	andi	a1,a1,0xff
	bne	a2,zero,.L64
	j	.L67
.L66:
	addi	a0,a0,1
	beq	a2,zero,.L67
.L64:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L66
	ret
.L67:
	li	a0,0
	ret
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	1
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	beq	a2,zero,.L77
.L87:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	bne	a5,a4,.L86
	addi	a1,a1,1
	bne	a2,zero,.L87
.L77:
	li	a0,0
	ret
.L86:
	sub	a0,a5,a4
	ret
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	beq	a2,zero,.L95
	mv	a4,a0
.L90:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L90
.L95:
	ret
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	1
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	addi	a2,a2,-1
	add	t0,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L98
.L100:
	lbu	a5,0(a0)
	addi	t0,t0,-1
	beq	a5,a1,.L101
.L98:
	mv	a0,t0
	bne	a4,t0,.L100
	li	a0,0
.L101:
	ret
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	1
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
	beq	a2,zero,.L106
	andi	a1,a1,0xff
	call	memset
.L106:
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
	.align	1
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,zero,.L115
.L110:
	lbu	t0,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	t0,0(a0)
	bne	t0,zero,.L110
.L115:
	ret
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	1
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	lbu	a5,0(a0)
	andi	a1,a1,0xff
	beq	a5,zero,.L123
.L117:
	beq	a5,a1,.L123
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L117
.L123:
	ret
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	1
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
.L127:
	lbu	a5,0(a0)
	beq	a5,a1,.L129
	addi	a0,a0,1
	bne	a5,zero,.L127
	li	a0,0
.L129:
	ret
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	1
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
.L133:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L136
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L133
.L136:
	sub	a0,a5,a4
	ret
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	1
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	lbu	a5,0(a0)
	beq	a5,zero,.L142
	li	a4,0
	addi	t0,a0,1
.L141:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a2,v0
	blt	a2,zero,.L141
	add	t1,t0,a2
	sub	a0,t1,a0
	ret
.L142:
	li	a0,0
	ret
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	1
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	beq	a2,zero,.L154
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L150
	j	.L160
.L162:
	beq	a0,a3,.L149
	addi	a0,a0,1
	bne	a4,a5,.L149
	lbu	a5,0(a0)
	beq	a5,zero,.L161
	mv	a1,t0
.L150:
	lbu	a4,0(a1)
	addi	t0,a1,1
	bne	a4,zero,.L162
.L149:
	sub	a0,a5,a4
	ret
.L154:
	li	a0,0
	ret
.L161:
	lbu	a4,1(a1)
	sub	a0,a5,a4
	ret
.L160:
	lbu	a4,0(a1)
	j	.L149
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	1
	.globl	swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	li	a5,1
	ble	a2,a5,.L167
	srli	a2,a2,1
.L165:
	vsetvli	t0,a2,e8,m1,ta,ma
	vlseg2e8.v	v4,(a0)
	sub	a2,a2,t0
	sh1add	a0,t0,a0
	vmv1r.v	v2,v5
	vmv1r.v	v3,v4
	vsseg2e8.v	v2,(a1)
	sh1add	a1,t0,a1
	bne	a2,zero,.L165
.L167:
	ret
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	1
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
	.align	1
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
	.align	1
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	li	a5,32
	beq	a0,a5,.L173
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L173:
	li	a0,1
	ret
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	1
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	li	a5,31
	bleu	a0,a5,.L177
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L177:
	li	a0,1
	ret
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	li	a5,32
	beq	a0,a5,.L185
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L185:
	li	a0,1
	ret
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	1
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
	.align	1
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	li	a4,31
	mv	a5,a0
	bleu	a0,a4,.L190
	addi	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L194
.L193:
	ret
.L190:
	li	a0,1
	ret
.L194:
	li	t1,-8192
	addi	t2,t1,-40
	add	a1,a5,t2
	bleu	a1,a0,.L193
	li	a0,-65536
	addi	a2,a0,7
	add	a6,a5,a2
	sltiu	a0,a6,3
	ret
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	1
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
	.align	1
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	li	a4,254
	mv	a5,a0
	bleu	a0,a4,.L204
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L203
	li	t2,-8192
	addi	a1,t2,-42
	li	a3,45056
	add	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L203
	li	a7,-57344
	li	t3,8192
	add	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L203
	li	a0,-65536
	addi	t6,a0,4
	li	t0,1048576
	add	a4,a5,t6
	addi	t1,t0,3
	li	a0,0
	bgtu	a4,t1,.L203
	li	t2,65536
	addi	a1,t2,-2
	andn	a5,a1,a5
	snez	a0,a5
.L203:
	ret
.L204:
	addi	a3,a0,1
	andi	a2,a3,127
	sltiu	a6,a2,33
	seqz	a0,a6
	ret
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	1
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	addi	a4,a0,-48
	li	a5,9
	bleu	a4,a5,.L207
	ori	a0,a0,32
	addi	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L207:
	li	a0,1
	ret
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	1
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
	.align	1
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
	beq	t2,zero,.L218
	feq.d	a0,fa5,fa5
	beq	a0,zero,.L214
	fgt.d	a1,fa0,fa5
	beq	a1,zero,.L219
	fsub.d	fa0,fa0,fa5
.L218:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L219:
	.cfi_restore_state
	fcvt.d.w	fa0,x0
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L214:
	.cfi_restore_state
	fmv.d	fa0,fa5
	j	.L218
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	1
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L229
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L225
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L230
	fsub.s	fa0,fa0,fa1
	ret
.L230:
	fmv.s.x	fa0,zero
.L229:
	ret
.L225:
	fmv.s	fa0,fa1
	ret
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	1
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
	beq	t2,zero,.L236
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L237
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L241
	fld	ft1,8(sp)
	lw	t4,8(sp)
	lw	t5,12(sp)
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L231
.L236:
	lw	t4,16(sp)
	lw	t5,20(sp)
.L231:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L241:
	.cfi_restore_state
	lw	t4,16(sp)
	mv	t5,a6
	bne	a3,zero,.L231
.L237:
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
	.align	1
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L247
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L248
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	bne	a2,t2,.L252
	flt.s	a0,fa0,fa1
	beq	a0,zero,.L251
.L247:
	fmv.s.x	fa0,a4
	ret
.L252:
	fmv.s	fa0,fa1
	beq	a2,zero,.L248
.L251:
	ret
.L248:
	fmv.s.x	fa0,a5
	ret
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	1
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
	bne	a0,zero,.L260
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
	bne	a0,zero,.L254
	li	a5,-2147483648
	and	a4,s1,a5
	and	t0,s5,a5
	beq	a4,t0,.L255
	beq	a4,zero,.L254
.L260:
	mv	s4,s8
	mv	s3,s7
	mv	s2,s6
	mv	s1,s5
.L254:
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
.L255:
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
	bge	a0,zero,.L254
	j	.L260
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	1
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
	beq	t2,zero,.L272
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L273
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L277
	fld	ft1,8(sp)
	lw	t4,16(sp)
	mv	t5,a6
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L267
.L273:
	lw	t4,8(sp)
	lw	t5,12(sp)
.L267:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L277:
	.cfi_restore_state
	lw	t4,8(sp)
	lw	t5,12(sp)
	bne	a3,zero,.L267
.L272:
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
	.align	1
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	feq.s	a3,fa0,fa0
	fmv.x.s	a5,fa0
	fmv.x.s	a4,fa1
	beq	a3,zero,.L283
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L284
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	beq	a2,t2,.L280
	bne	a2,zero,.L287
.L283:
	fmv.s.x	fa0,a4
	ret
.L280:
	flt.s	a0,fa0,fa1
	fmv.s	fa0,fa1
	bne	a0,zero,.L284
.L287:
	ret
.L284:
	fmv.s.x	fa0,a5
	ret
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	1
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
	bne	a0,zero,.L289
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
	bne	a0,zero,.L295
	li	a5,-2147483648
	and	a4,s8,a5
	and	t0,s1,a5
	beq	a4,t0,.L290
	beq	a4,zero,.L289
.L295:
	mv	s4,s7
	mv	s3,s6
	mv	s2,s5
	mv	s1,s8
.L289:
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
.L290:
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
	bge	a0,zero,.L289
	j	.L295
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	1
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	lui	a2,%hi(s.0)
	beq	a0,zero,.L305
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	t0,a3,%lo(.LANCHOR0)
.L304:
	andi	a5,a0,63
	add	t1,t0,a5
	lbu	t2,0(t1)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	t2,-1(a4)
	bne	a0,zero,.L304
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L305:
	addi	a4,a2,%lo(s.0)
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.align	1
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
	.align	1
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
	.align	1
	.globl	insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	beq	a1,zero,.L316
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L315
	sw	a0,4(t0)
.L315:
	ret
.L316:
	vsetivli	zero,2,e32,mf2,ta,ma
	vmv.v.i	v1,0
	vse32.v	v1,0(a0)
	ret
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	1
	.globl	remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	lw	a5,0(a0)
	beq	a5,zero,.L318
	lw	a4,4(a0)
	sw	a4,4(a5)
.L318:
	lw	t0,4(a0)
	beq	t0,zero,.L326
	sw	a5,0(t0)
.L326:
	ret
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	1
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
	beq	s3,zero,.L328
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L330
.L346:
	add	s0,s0,s2
	beq	s3,s1,.L345
.L330:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L346
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s6,16(sp)
	.cfi_restore 22
.L342:
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
.L345:
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
.L328:
	mul	t0,s2,s3
	addi	t1,s3,1
	sw	t1,0(s7)
	add	s5,s8,t0
	beq	s2,zero,.L342
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L342
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	1
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
	beq	s5,zero,.L348
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
	j	.L350
.L362:
	add	s0,s0,s4
	beq	s5,s1,.L361
.L350:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L362
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
.L361:
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
.L348:
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
	.align	1
	.globl	abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	neg	a5,a0
	max	a0,a5,a0
	ret
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	1
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	li	a3,32
	li	a2,4
.L371:
	lbu	a5,0(a0)
	addi	a4,a5,-9
	beq	a5,a3,.L365
	bleu	a4,a2,.L365
	li	t0,43
	beq	a5,t0,.L366
	li	a1,45
	bne	a5,a1,.L384
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L376
	li	t6,1
.L369:
	li	a0,0
	li	a5,9
.L373:
	lbu	a2,1(t5)
	sh2add	a0,a0,a0
	slli	a3,a0,1
	sub	a0,a3,t3
	mv	a4,t3
	addi	t3,a2,-48
	addi	t5,t5,1
	bleu	t3,a5,.L373
	bne	t6,zero,.L381
	sub	a0,a4,a3
	ret
.L365:
	addi	a0,a0,1
	j	.L371
.L384:
	addi	t3,a5,-48
	li	t4,9
	mv	t5,a0
	li	t6,0
	bleu	t3,t4,.L369
.L376:
	li	a0,0
.L381:
	ret
.L366:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t3,t1,-48
	li	t6,0
	bleu	t3,t2,.L369
	li	a0,0
	ret
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	1
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	li	a3,32
	li	a2,4
.L390:
	lbu	a5,0(a0)
	addi	a4,a5,-9
	beq	a5,a3,.L386
	bleu	a4,a2,.L386
	li	t0,43
	beq	a5,t0,.L387
	li	a1,45
	bne	a5,a1,.L405
	lbu	a6,1(a0)
	li	t3,9
	addi	t6,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L397
.L391:
	li	a0,0
	li	a5,9
.L394:
	lbu	a2,1(t6)
	sh2add	a0,a0,a0
	slli	a3,a0,1
	sub	a0,a3,t4
	mv	a4,t4
	addi	t4,a2,-48
	addi	t6,t6,1
	bleu	t4,a5,.L394
	bne	a7,zero,.L402
	sub	a0,a4,a3
	ret
.L386:
	addi	a0,a0,1
	j	.L390
.L405:
	addi	t4,a5,-48
	li	t5,9
	mv	t6,a0
	li	a7,0
	bleu	t4,t5,.L391
.L397:
	li	a0,0
.L402:
	ret
.L387:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L397
	li	a7,0
	j	.L391
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	1
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	li	a3,32
	li	a2,4
.L413:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L407
	bleu	a5,a2,.L407
	li	t0,43
	beq	a4,t0,.L408
	li	a1,45
	bne	a4,a1,.L426
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L418
	li	t4,1
.L411:
	li	a0,0
	li	a1,0
	li	a4,9
.L415:
	srli	a3,a0,30
	slli	a2,a1,2
	or	t0,a3,a2
	slli	a5,a0,2
	sh2add	a0,a0,a0
	sltu	t2,a0,a5
	add	t1,t0,a1
	add	a1,t2,t1
	lbu	a7,1(t5)
	slli	a6,a1,1
	srli	t3,a0,31
	slli	a2,a0,1
	srai	a3,t6,31
	sub	a0,a2,t6
	or	t0,t3,a6
	sub	a5,t0,a3
	mv	t1,t6
	sgtu	t2,a0,a2
	addi	t6,a7,-48
	addi	t5,t5,1
	sub	a1,a5,t2
	bleu	t6,a4,.L415
	bne	t4,zero,.L423
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,t0
	sub	a1,t5,t6
	ret
.L407:
	addi	a0,a0,1
	j	.L413
.L426:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L411
.L418:
	li	a0,0
	li	a1,0
.L423:
	ret
.L408:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L411
	j	.L418
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	1
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
	beq	a2,zero,.L428
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
.L431:
	srli	s2,s0,1
	mul	s1,s2,s4
	mv	a0,s5
	addi	s0,s0,-1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L432
	beq	a0,zero,.L442
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L431
.L443:
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
.L428:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L432:
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
	bne	s0,zero,.L431
	j	.L443
.L442:
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
	.align	1
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
	beq	a2,zero,.L449
	sw	s2,32(sp)
	.cfi_offset 18, -16
.L458:
	srai	s2,s0,1
	mul	s1,s2,s4
	mv	a2,s7
	mv	a0,s5
	addi	s0,s0,-1
	srai	s0,s0,1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L462
	ble	a0,zero,.L447
	add	s3,s1,s4
	bne	s0,zero,.L458
.L463:
	lw	s2,32(sp)
	.cfi_restore 18
.L449:
	li	s1,0
.L457:
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
.L447:
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
	beq	s2,zero,.L463
	mv	s0,s2
	j	.L458
.L462:
	lw	s2,32(sp)
	.cfi_restore 18
	j	.L457
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
	.globl	labs
	.type	labs, @function
labs:
.LFB152:
	.cfi_startproc
	neg	a5,a0
	max	a0,a5,a0
	ret
	.cfi_endproc
.LFE152:
	.size	labs, .-labs
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L483
.L485:
	beq	a1,a5,.L484
	addi	a0,a0,4
.L483:
	lw	a5,0(a0)
	bne	a5,zero,.L485
	li	a0,0
	ret
.L484:
	ret
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	1
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
.L489:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L488
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L489
.L488:
	li	a0,-1
	blt	a5,a4,.L493
	sgt	a0,a5,a4
.L493:
	ret
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	1
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	mv	a5,a0
.L497:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L497
	ret
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	1
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	mv	a4,a0
	lw	a0,0(a0)
	beq	a0,zero,.L506
	li	a2,0
	addi	a3,a4,4
.L501:
	vsetvli	a1,zero,e32,m1,ta,ma
	sh2add	a3,a2,a3
	vle32ff.v	v1,0(a3)
	vmseq.vi	v0,v1,0
	csrr	a2,vl
	vfirst.m	a5,v0
	blt	a5,zero,.L501
	sh2add	t0,a5,a3
	sub	a0,t0,a4
	srai	a0,a0,2
.L506:
	ret
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	1
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	beq	a2,zero,.L514
.L521:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L511
	beq	a5,zero,.L511
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L521
.L514:
	li	a0,0
	ret
.L511:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L522
	ret
.L522:
	li	a0,-1
	ret
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	1
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	beq	a2,zero,.L527
.L535:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L534
	addi	a0,a0,4
	bne	a2,zero,.L535
.L527:
	li	a0,0
	ret
.L534:
	ret
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	1
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	beq	a2,zero,.L542
.L552:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L551
	addi	a1,a1,4
	bne	a2,zero,.L552
.L542:
	li	a0,0
	ret
.L551:
	sgt	a0,a4,a5
	blt	a4,a5,.L553
	ret
.L553:
	li	a0,-1
	ret
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	1
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	beq	a2,zero,.L561
	slli	a2,a2,2
	mv	a4,a0
.L556:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L556
.L561:
	ret
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	1
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	beq	a0,a1,.L600
	slli	a4,a2,2
	sub	a5,a0,a1
	addi	t5,a2,-1
	bgeu	a5,a4,.L605
	beq	a2,zero,.L600
	sltiu	t4,t5,63
	bne	t4,zero,.L568
	csrr	t6,vlenb
	srli	a5,t6,3
	addi	t0,a5,-1
	bltu	t5,t0,.L568
	addi	t1,a4,-4
	addi	a6,a4,-8
	add	t2,a0,t1
	add	a3,a1,a6
	sub	a7,t2,a3
	addi	t3,t6,-8
	add	t4,a7,t3
	bleu	t4,t3,.L568
	srli	t0,t6,2
	addi	a5,t0,-1
	bltu	t5,a5,.L582
	sub	a4,a4,t6
	neg	t1,t6
	add	a6,a1,a4
	add	a3,a0,a4
	sub	t2,a2,t0
	li	t6,0
.L570:
	vl1re32.v	v0,0(a6)
	add	t6,t6,t0
	add	a6,a6,t1
	vs1r.v	v0,0(a3)
	add	a3,a3,t1
	bgeu	t2,t6,.L570
	sub	t5,t5,t6
	beq	a2,t6,.L606
.L569:
	csrr	t0,vlenb
	srli	a4,t0,3
	sub	a7,a2,t6
	addi	t4,a4,-1
	addi	t3,a7,-1
	bltu	t3,t4,.L573
	srli	t1,t0,1
	addi	a5,t6,1
	neg	t6,t1
	sub	t2,a2,a5
	addi	a2,t6,4
	sh2add	a6,t2,a2
	vsetvli	t1,zero,e32,mf2,ta,ma
	add	a3,a1,a6
	vle32.v	v2,0(a3)
	add	a5,a0,a6
	sub	t4,a7,a4
	vse32.v	v2,0(a5)
	bgeu	t4,a4,.L607
.L574:
	sub	t5,t5,a4
	beq	a7,a4,.L600
.L573:
	sh2add	a7,t5,a1
	sh2add	t6,t5,a0
.L576:
	lw	t5,0(a7)
	mv	t0,a7
	addi	t6,t6,-4
	sw	t5,4(t6)
	addi	a7,a7,-4
	bne	a1,t0,.L576
	ret
.L584:
	mv	a7,a0
	li	a1,-1
	j	.L579
.L608:
	addi	t3,t3,4
.L579:
	lw	a2,-4(t3)
	addi	t5,t5,-1
	addi	a7,a7,4
	sw	a2,-4(a7)
	bne	t5,a1,.L608
.L600:
	ret
.L605:
	beq	a2,zero,.L609
	addi	t3,a1,4
	csrr	t0,vlenb
	sub	a6,a0,t3
	addi	t1,t0,-8
	bleu	a6,t1,.L584
	mv	a3,a0
.L580:
	vsetvli	t2,a2,e8,mf4,ta,ma
	vle32.v	v1,0(a1)
	sub	a2,a2,t2
	sh2add	a1,t2,a1
	vse32.v	v1,0(a3)
	sh2add	a3,t2,a3
	bne	a2,zero,.L580
	ret
.L607:
	add	a4,a3,t6
	vle32.v	v3,0(a4)
	add	t3,a5,t6
	srli	a4,t0,2
	vse32.v	v3,0(t3)
	j	.L574
.L568:
	sh2add	a6,t5,a1
	sh2add	a3,t5,a0
.L577:
	lw	t2,0(a6)
	mv	a2,a6
	addi	a3,a3,-4
	sw	t2,4(a3)
	addi	a6,a6,-4
	bne	a1,a2,.L577
	ret
.L609:
	ret
.L582:
	li	t6,0
	j	.L569
.L606:
	ret
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	beq	a2,zero,.L617
	vsetvli	a5,zero,e32,m1,ta,ma
	vmv.v.x	v1,a1
	mv	t0,a0
.L612:
	vsetvli	a4,a2,e8,mf4,ta,ma
	vse32.v	v1,0(t0)
	sub	a2,a2,a4
	sh2add	t0,a4,t0
	bne	a2,zero,.L612
.L617:
	ret
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	1
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	bgeu	a0,a1,.L620
	add	a6,a0,a2
	add	a7,a1,a2
	beq	a2,zero,.L655
	addi	t5,a2,-1
	sltiu	t3,t5,255
	bne	t3,zero,.L657
	csrr	t6,vlenb
	srli	t4,t6,3
	addi	a4,t4,-1
	bltu	t5,a4,.L657
	addi	a3,a2,-2
	add	t0,a0,a3
	add	a5,a1,t5
	sub	t1,a5,t0
	addi	t2,t6,-2
	add	t3,t1,t2
	bleu	t3,t2,.L657
	addi	t4,t6,-1
	bltu	t5,t4,.L636
	sub	a4,a2,t6
	add	a3,a0,a4
	add	t2,a1,a4
	neg	a5,t6
	sub	t1,a2,t6
	li	t0,0
.L624:
	vl1re8.v	v0,0(a3)
	add	t0,t0,t6
	add	a3,a3,a5
	vs1r.v	v0,0(t2)
	add	t2,t2,a5
	bgeu	t1,t0,.L624
	sub	t6,a2,t0
	sub	a6,a6,t0
	sub	a7,a7,t0
	mv	t3,t6
	beq	a2,t0,.L664
.L623:
	csrr	t4,vlenb
	srli	t1,t4,3
	sub	t5,t5,t0
	addi	a4,t1,-1
	bltu	t5,a4,.L626
	sub	a2,a2,t1
	sub	t0,a2,t0
	add	a0,a0,t0
	add	a1,a1,t0
	neg	a3,t1
	sub	t2,t6,t1
	li	a5,0
	vsetvli	t4,zero,e8,mf8,ta,ma
.L627:
	vle8.v	v2,0(a0)
	add	a5,a5,t1
	add	a0,a0,a3
	vse8.v	v2,0(a1)
	add	a1,a1,a3
	bgeu	t2,a5,.L627
	sub	t3,t3,a5
	sub	a6,a6,a5
	sub	a7,a7,a5
	beq	t6,a5,.L655
.L626:
	sub	t6,a6,t3
.L629:
	lbu	t1,-1(a6)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t1,0(a7)
	bne	t6,a6,.L629
	ret
.L620:
	bne	a0,a1,.L665
.L655:
	ret
.L657:
	lbu	t5,-1(a6)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t5,0(a7)
	bne	a0,a6,.L657
	ret
.L665:
	beq	a2,zero,.L655
	addi	t2,a0,1
	csrr	a4,vlenb
	sub	a3,a1,t2
	addi	t0,a4,-2
	bleu	a3,t0,.L632
.L633:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a0)
	sub	a2,a2,a5
	add	a0,a0,a5
	vse8.v	v1,0(a1)
	add	a1,a1,a5
	bne	a2,zero,.L633
	ret
.L632:
	add	a0,a0,a2
	j	.L634
.L666:
	addi	t2,t2,1
.L634:
	lbu	t1,-1(t2)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a0,t2,.L666
	ret
.L636:
	mv	t3,a2
	li	t0,0
	mv	t6,a2
	j	.L623
.L664:
	ret
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	1
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	addi	a5,a2,-32
	blt	a5,zero,.L668
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	sll	t3,a0,a5
	li	t4,0
	blt	a6,zero,.L670
.L673:
	srl	t0,a1,a6
	li	a1,0
	or	a0,t0,t4
	or	a1,a1,t3
	ret
.L668:
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
	bge	a6,zero,.L673
.L670:
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
	.align	1
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	addi	a5,a2,-32
	blt	a5,zero,.L675
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	srl	t3,a1,a5
	li	t4,0
	blt	a6,zero,.L677
.L680:
	sll	t0,a0,a6
	li	a0,0
	or	a0,a0,t3
	or	a1,t0,t4
	ret
.L675:
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
	bge	a6,zero,.L680
.L677:
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
	.align	1
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	rol	a0,a0,a1
	ret
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	1
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	ror	a0,a0,a1
	ret
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	1
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	rol	a0,a0,a1
	ret
	.cfi_endproc
.LFE158:
	.size	rotl_sz, .-rotl_sz
	.align	1
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	ror	a0,a0,a1
	ret
	.cfi_endproc
.LFE160:
	.size	rotr_sz, .-rotr_sz
	.align	1
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
	zext.h	a0,t2
	ret
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	1
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
	zext.h	a0,t2
	ret
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	1
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
	.align	1
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
	.align	1
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	rev8	a0,a0
	srli	a0,a0,16
	ret
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	1
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	rev8	a0,a0
	ret
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	1
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	mv	a5,a0
	rev8	a0,a1
	rev8	a1,a5
	ret
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	1
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	li	a5,0
	li	a3,32
	j	.L695
.L693:
	beq	a5,a3,.L698
.L695:
	bext	a4,a0,a5
	addi	a5,a5,1
	beq	a4,zero,.L693
	mv	a0,a5
	ret
.L698:
	li	a0,0
	ret
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	1
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	mv	a5,a0
	beq	a0,zero,.L702
	andi	a0,a0,1
	bne	a0,zero,.L705
	li	a0,1
.L701:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L701
	ret
.L702:
	li	a0,0
.L705:
	ret
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	1
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	li	a0,1
	flt.s	t0,fa0,fa5
	bne	t0,zero,.L709
	lui	t1,%hi(.LC1)
	flw	ft0,%lo(.LC1)(t1)
	fgt.s	a0,fa0,ft0
.L709:
	ret
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	1
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
	bne	t2,zero,.L714
	lui	a0,%hi(.LC3)
	addi	a1,a0,%lo(.LC3)
	fld	ft0,0(a1)
	fgt.d	a0,fa5,ft0
.L714:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	1
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
	blt	a0,zero,.L721
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
.L721:
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
	.align	1
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
	.align	1
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	feq.s	a5,fa0,fa0
	beq	a5,zero,.L739
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L739
	lui	t1,%hi(.LC7)
	lui	a3,%hi(.LC6)
	slti	a4,a0,0
	addi	t2,t1,%lo(.LC7)
	addi	a1,a3,%lo(.LC6)
	czero.eqz	a2,t2,a4
	czero.nez	a6,a1,a4
	add	a7,a2,a6
	andi	a5,a0,1
	flw	ft0,0(a7)
	beq	a5,zero,.L729
.L730:
	fmul.s	fa0,fa0,ft0
.L729:
	srli	t3,a0,31
	add	a0,t3,a0
	srai	a0,a0,1
	beq	a0,zero,.L739
	srli	t4,a0,31
	andi	t5,a0,1
	fmul.s	ft0,ft0,ft0
	add	t6,t4,a0
	bne	t5,zero,.L730
.L741:
	srai	a0,t6,1
	srli	t4,a0,31
	andi	t5,a0,1
	fmul.s	ft0,ft0,ft0
	add	t6,t4,a0
	bne	t5,zero,.L730
	j	.L741
.L739:
	ret
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	1
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
	beq	t1,zero,.L755
	fadd.d	fa5,fa0,fa0
	feq.d	t2,fa5,fa0
	bne	t2,zero,.L755
	lui	a1,%hi(.LC8)
	lui	a3,%hi(.LC9)
	slti	a4,a0,0
	addi	a2,a1,%lo(.LC8)
	addi	a6,a3,%lo(.LC9)
	czero.nez	a7,a2,a4
	czero.eqz	t3,a6,a4
	add	t4,a7,t3
	andi	a5,a0,1
	fld	ft0,0(t4)
	beq	a5,zero,.L745
.L746:
	fmul.d	fa0,fa0,ft0
.L745:
	srli	t5,a0,31
	add	a0,t5,a0
	srai	a0,a0,1
	beq	a0,zero,.L755
	srli	t6,a0,31
	andi	t0,a0,1
	fmul.d	ft0,ft0,ft0
	add	t1,t6,a0
	bne	t0,zero,.L746
.L758:
	srai	a0,t1,1
	srli	t6,a0,31
	andi	t0,a0,1
	fmul.d	ft0,ft0,ft0
	add	t1,t6,a0
	bne	t0,zero,.L746
	j	.L758
.L755:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	1
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
	bne	a0,zero,.L760
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
	beq	a0,zero,.L760
	sw	s1,100(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	.cfi_offset 9, -12
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	blt	s0,zero,.L776
	lui	t0,%hi(.LC10)
	addi	t1,t0,%lo(.LC10)
	lw	s1,0(t1)
	lw	s7,4(t1)
	lw	s8,8(t1)
	lw	s9,12(t1)
.L762:
	andi	a1,s0,1
	beq	a1,zero,.L763
.L764:
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
.L763:
	srli	a6,s0,31
	add	s0,a6,s0
	srai	s0,s0,1
	beq	s0,zero,.L775
.L765:
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
	bne	a7,zero,.L764
	srai	s0,t3,1
	j	.L765
.L775:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L760:
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
.L776:
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
	j	.L762
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L784
	mv	a4,a0
	mv	a3,a0
.L779:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	vle8.v	v2,0(a3)
	sub	a2,a2,a5
	add	a1,a1,a5
	add	a3,a3,a5
	vxor.vv	v0,v1,v2
	vse8.v	v0,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L779
.L784:
	ret
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	1
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	lbu	a5,0(a0)
	beq	a5,zero,.L793
	li	a4,0
	addi	t0,a0,1
.L788:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a6,v0
	blt	a6,zero,.L788
	add	t2,t0,a6
.L803:
	beq	a2,zero,.L790
.L806:
	lbu	t1,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t1,0(t2)
	beq	t1,zero,.L805
	addi	t2,t2,1
	bne	a2,zero,.L806
.L790:
	sb	zero,0(t2)
	ret
.L805:
	ret
.L793:
	mv	t2,a0
	j	.L803
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	1
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a1,zero,.L814
.L808:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L810
.L814:
	ret
.L810:
	addi	a0,a0,1
	bne	a1,a0,.L808
	ret
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	1
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	lbu	a3,0(a0)
	beq	a3,zero,.L822
.L829:
	mv	a5,a1
	j	.L821
.L820:
	beq	a4,a3,.L824
.L821:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L820
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L829
.L822:
	li	a0,0
.L824:
	ret
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	1
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
.L831:
	lbu	a3,0(a4)
	sub	a5,a3,a1
	czero.nez	t0,a4,a5
	czero.eqz	a0,a0,a5
	add	a0,a0,t0
	addi	a4,a4,1
	bne	a3,zero,.L831
	ret
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	1
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	lbu	a7,0(a1)
	mv	a3,a0
	beq	a7,zero,.L846
	li	a4,0
	addi	a5,a1,1
.L835:
	vsetvli	a2,zero,e8,m1,ta,ma
	add	a5,a5,a4
	vle8ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a0,v0
	blt	a0,zero,.L835
	add	t0,a5,a0
	sub	t3,t0,a1
	mv	a0,a3
	addi	t5,t3,-1
	bne	t0,a1,.L855
	ret
.L859:
	addi	a3,a3,1
	beq	t2,zero,.L858
.L855:
	lbu	t2,0(a3)
	bne	t2,a7,.L859
	add	t1,a3,t5
	mv	a2,a1
	mv	t4,a3
	mv	t6,a7
.L837:
	beq	t1,t4,.L839
	addi	t4,t4,1
	bne	t6,t2,.L840
	lbu	t2,0(t4)
	lbu	t6,1(a2)
	addi	a6,a2,1
	beq	t2,zero,.L839
	mv	a2,a6
	bne	t6,zero,.L837
.L840:
	addi	a3,a3,1
	j	.L855
.L858:
	li	a0,0
	ret
.L839:
	bne	t2,t6,.L840
.L846:
	mv	a0,a3
	ret
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	1
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
	bne	a0,zero,.L875
	fgt.d	a1,fa0,fa4
	beq	a1,zero,.L870
	flt.d	a2,fa5,fa4
	bne	a2,zero,.L863
.L870:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L875:
	.cfi_restore_state
	fgt.d	a3,fa5,fa4
	beq	a3,zero,.L870
.L863:
	fneg.d	fa0,fa0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	1
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L892
	bltu	a1,a3,.L887
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L887
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L882:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L893
	mv	a0,t1
.L878:
	bgeu	a7,a0,.L882
.L887:
	li	a0,0
.L892:
	ret
.L893:
	mv	t5,a2
	beq	a3,zero,.L892
.L881:
	mv	t2,t1
	add	t6,t1,a3
	j	.L879
.L880:
	beq	t2,t6,.L892
.L879:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L880
	bltu	a7,t1,.L887
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L878
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L881
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	1
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
	beq	a2,zero,.L899
	call	memmove
.L899:
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
	.align	1
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
	bne	t1,zero,.L930
	lui	t2,%hi(.LC14)
	addi	a1,t2,%lo(.LC14)
	fld	fa4,0(a1)
	li	a3,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L931
.L904:
	lui	a2,%hi(.LC9)
	addi	a6,a2,%lo(.LC9)
	fld	ft5,0(a6)
	fld	ft6,0(a1)
	li	t1,0
.L910:
	fmul.d	fa0,fa0,ft5
	addi	t1,t1,1
	fge.d	a7,fa0,ft6
	bne	a7,zero,.L910
	sw	t1,0(a0)
	beq	a3,zero,.L924
.L933:
	fneg.d	fa0,fa0
.L924:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L931:
	.cfi_restore_state
	lui	a1,%hi(.LC9)
	addi	a2,a1,%lo(.LC9)
	fld	ft0,0(a2)
	flt.d	a6,fa0,ft0
	beq	a6,zero,.L907
	feq.d	a7,fa0,fa5
	beq	a7,zero,.L916
.L907:
	sw	zero,0(a0)
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L930:
	.cfi_restore_state
	lui	a3,%hi(.LC12)
	addi	t3,a3,%lo(.LC12)
	fld	ft2,0(t3)
	fneg.d	ft1,fa0
	fle.d	t4,fa0,ft2
	beq	t4,zero,.L932
	lui	a4,%hi(.LC14)
	fmv.d	fa0,ft1
	addi	a1,a4,%lo(.LC14)
	li	a3,1
	j	.L904
.L932:
	lui	t5,%hi(.LC13)
	addi	t6,t5,%lo(.LC13)
	fld	ft3,0(t6)
	fgt.d	a5,fa0,ft3
	beq	a5,zero,.L907
	lui	t0,%hi(.LC9)
	addi	a2,t0,%lo(.LC9)
	li	a3,1
.L905:
	fmv.d	fa0,ft1
	fld	ft4,0(a2)
	li	t1,0
.L912:
	fadd.d	fa0,fa0,fa0
	addi	t1,t1,-1
	flt.d	t2,fa0,ft4
	bne	t2,zero,.L912
	sw	t1,0(a0)
	bne	a3,zero,.L933
	j	.L924
.L916:
	fmv.d	ft1,fa0
	j	.L905
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	1
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
	beq	a5,zero,.L938
.L937:
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
	bne	a4,zero,.L937
	ret
.L938:
	ret
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	1
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	li	t0,32
	li	a4,1
	bltu	a1,a0,.L942
	j	.L962
.L946:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L944
	beq	t0,zero,.L945
.L942:
	addi	t0,t0,-1
	bge	a1,zero,.L946
.L947:
	li	t0,0
.L948:
	sltu	t2,a0,a1
	xori	a7,t2,1
	sub	a6,a0,a1
	czero.eqz	t5,a4,a7
	czero.eqz	t3,a6,a7
	czero.nez	t4,a0,a7
	srli	a4,a4,1
	add	a0,t4,t3
	or	t0,t0,t5
	srli	a1,a1,1
	bne	a4,zero,.L948
.L945:
	czero.nez	a1,t0,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,a1
	ret
.L944:
	bne	a4,zero,.L947
	li	t0,0
	j	.L945
.L962:
	sgtu	a3,a1,a0
	xori	t0,a3,1
	sub	a5,a0,a1
	czero.eqz	t1,a5,t0
	czero.nez	a0,a0,t0
	add	a0,a0,t1
	j	.L945
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L966
	slli	a0,a0,8
	clz	t0,a0
	addi	a0,t0,-1
	ret
.L966:
	li	a0,7
	ret
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	1
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	srai	a4,a1,31
	xor	a5,a0,a4
	xor	a3,a1,a4
	beq	a0,a4,.L977
.L974:
	clz	t0,a3
	beq	a3,zero,.L978
	addi	a0,t0,-1
	ret
.L978:
	clz	a0,a5
	addi	t0,a0,32
	addi	a0,t0,-1
	ret
.L977:
	bne	a1,a0,.L974
	li	a0,63
	ret
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	1
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L982
.L981:
	bexti	a4,a5,0
	czero.eqz	t0,a1,a4
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L981
	ret
.L982:
	ret
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	1
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	srli	a3,a2,3
	andi	a4,a2,-8
	bltu	a0,a1,.L989
	add	a5,a1,a2
	bleu	a0,a5,.L1035
.L989:
	beq	a3,zero,.L988
	addi	t3,a1,8
	csrr	a6,vlenb
	sub	a7,a0,t3
	addi	t0,a6,-16
	bleu	a7,t0,.L992
	mv	t6,a0
	mv	t5,a1
.L993:
	vsetvli	t4,a3,e8,mf8,ta,ma
	vle64.v	v2,0(t5)
	sub	a3,a3,t4
	sh3add	t5,t4,t5
	vse64.v	v2,0(t6)
	sh3add	t6,t4,t6
	bne	a3,zero,.L993
.L988:
	bleu	a2,a4,.L1026
	addi	a7,a4,1
	add	a0,a0,a4
	add	t0,a1,a7
	csrr	t4,vlenb
	sub	t5,a0,t0
	addi	a3,t4,-2
	bleu	t5,a3,.L996
	sub	a2,a2,a4
	add	a1,a1,a4
.L997:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a0)
	add	a0,a0,a4
	bne	a2,zero,.L997
	ret
.L1035:
	addi	a4,a2,-1
	beq	a2,zero,.L1036
	csrr	a7,vlenb
	srli	t0,a7,3
	addi	t1,t0,-1
	bltu	a4,t1,.L1027
	sltiu	t2,a4,255
	beq	t2,zero,.L1025
.L1027:
	add	t2,a0,a4
.L1000:
	li	a2,-1
	j	.L1009
.L1037:
	add	t2,a0,a4
.L1009:
	add	a5,a1,a4
	lbu	t1,0(a5)
	addi	a4,a4,-1
	sb	t1,0(t2)
	bne	a4,a2,.L1037
.L1026:
	ret
.L1025:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	t2,a0,a4
	sub	t3,t2,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1000
	addi	t6,a7,-1
	bltu	a4,t6,.L1011
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a3,a0,t1
	neg	t2,a7
	sub	t3,a2,a7
	li	a5,0
.L1002:
	vl1re8.v	v1,0(a6)
	add	a5,a5,a7
	add	a6,a6,t2
	vs1r.v	v1,0(a3)
	add	a3,a3,t2
	bgeu	t3,a5,.L1002
	sub	a4,a4,a5
	beq	a2,a5,.L1026
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t0,a2,a5
	bltu	a4,t4,.L1005
.L1001:
	csrr	t5,vlenb
	srli	t6,t5,3
	sub	a2,a2,t6
	sub	a5,a2,a5
	add	a3,a1,a5
	add	a7,a0,a5
	neg	t1,t6
	sub	t2,t0,t6
	li	a6,0
	vsetvli	t3,zero,e8,mf8,ta,ma
.L1006:
	vle8.v	v0,0(a3)
	add	a6,a6,t6
	add	a3,a3,t1
	vse8.v	v0,0(a7)
	add	a7,a7,t1
	bgeu	t2,a6,.L1006
	sub	a4,a4,a6
	beq	t0,a6,.L1026
.L1005:
	li	t0,-1
.L1008:
	add	t4,a1,a4
	lbu	t5,0(t4)
	add	t6,a0,a4
	addi	a4,a4,-1
	sb	t5,0(t6)
	bne	a4,t0,.L1008
	ret
.L992:
	sh3add	t2,a3,a1
	mv	a5,a1
	mv	t1,a0
.L995:
	lw	t3,0(a5)
	lw	a6,4(a5)
	addi	a5,a5,8
	sw	t3,0(t1)
	sw	a6,4(t1)
	addi	t1,t1,8
	bne	a5,t2,.L995
	j	.L988
.L996:
	add	t3,a1,a4
	add	t6,a1,a2
.L999:
	lbu	t2,0(t3)
	addi	t3,t3,1
	addi	a0,a0,1
	sb	t2,-1(a0)
	bne	t3,t6,.L999
	ret
.L1036:
	ret
.L1011:
	mv	t0,a2
	li	a5,0
	j	.L1001
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	1
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	srli	a4,a2,1
	bltu	a0,a1,.L1042
	add	a5,a1,a2
	bleu	a0,a5,.L1083
.L1042:
	beq	a4,zero,.L1041
	addi	a6,a1,2
	csrr	t3,vlenb
	sub	a7,a0,a6
	addi	t6,t3,-4
	bleu	a7,t6,.L1045
	mv	t1,a0
	mv	t5,a1
.L1046:
	vsetvli	t4,a4,e8,mf2,ta,ma
	vle16.v	v2,0(t5)
	sub	a4,a4,t4
	sh1add	t5,t4,t5
	vse16.v	v2,0(t1)
	sh1add	t1,t4,t1
	bne	a4,zero,.L1046
.L1041:
	andi	a6,a2,1
	beq	a6,zero,.L1076
.L1086:
	add	a1,a1,a2
	lbu	t3,-1(a1)
	add	a0,a0,a2
	sb	t3,-1(a0)
	ret
.L1083:
	addi	a5,a2,-1
	beq	a2,zero,.L1084
	csrr	a7,vlenb
	srli	a4,a7,3
	addi	t0,a4,-1
	bltu	a5,t0,.L1077
	sltiu	t1,a5,255
	beq	t1,zero,.L1075
.L1077:
	add	a3,a0,a5
.L1050:
	li	a2,-1
	j	.L1058
.L1085:
	add	a3,a0,a5
.L1058:
	add	t0,a1,a5
	lbu	t2,0(t0)
	addi	a5,a5,-1
	sb	t2,0(a3)
	bne	a5,a2,.L1085
.L1076:
	ret
.L1075:
	addi	t2,a2,-2
	add	a6,a1,t2
	add	a3,a0,a5
	sub	t3,a3,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1050
	addi	a3,a7,-1
	bltu	a5,a3,.L1060
	sub	a4,a2,a7
	add	a6,a1,a4
	add	t3,a0,a4
	neg	t1,a7
	sub	t2,a2,a7
	li	t0,0
.L1052:
	vl1re8.v	v1,0(a6)
	add	t0,t0,a7
	add	a6,a6,t1
	vs1r.v	v1,0(t3)
	add	t3,t3,t1
	bgeu	t2,t0,.L1052
	sub	a5,a5,t0
	beq	a2,t0,.L1076
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t6,a2,t0
	bltu	a5,t4,.L1054
.L1051:
	csrr	t5,vlenb
	srli	t1,t5,3
	sub	a2,a2,t1
	sub	a3,a2,t0
	add	a7,a1,a3
	add	a4,a0,a3
	neg	t0,t1
	sub	t2,t6,t1
	li	t3,0
	vsetvli	a6,zero,e8,mf8,ta,ma
.L1055:
	vle8.v	v0,0(a7)
	add	t3,t3,t1
	add	a7,a7,t0
	vse8.v	v0,0(a4)
	add	a4,a4,t0
	bgeu	t2,t3,.L1055
	sub	a5,a5,t3
	beq	t6,t3,.L1076
.L1054:
	li	t6,-1
.L1057:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t1,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t1)
	bne	a5,t6,.L1057
	ret
.L1045:
	sh1add	t0,a4,a1
	mv	a5,a1
	mv	a3,a0
.L1048:
	lh	t2,0(a5)
	addi	a5,a5,2
	addi	a3,a3,2
	sh	t2,-2(a3)
	bne	a5,t0,.L1048
	andi	a6,a2,1
	beq	a6,zero,.L1076
	j	.L1086
.L1084:
	ret
.L1060:
	mv	t6,a2
	li	t0,0
	j	.L1051
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	srli	a3,a2,2
	andi	a4,a2,-4
	bltu	a0,a1,.L1091
	add	a5,a1,a2
	bleu	a0,a5,.L1137
.L1091:
	beq	a3,zero,.L1090
	addi	t3,a1,4
	csrr	a6,vlenb
	sub	a7,a0,t3
	addi	t0,a6,-8
	bleu	a7,t0,.L1094
	mv	t6,a0
	mv	t5,a1
.L1095:
	vsetvli	t4,a3,e8,mf4,ta,ma
	vle32.v	v2,0(t5)
	sub	a3,a3,t4
	sh2add	t5,t4,t5
	vse32.v	v2,0(t6)
	sh2add	t6,t4,t6
	bne	a3,zero,.L1095
.L1090:
	bleu	a2,a4,.L1128
	addi	a6,a4,1
	add	a0,a0,a4
	add	a7,a1,a6
	csrr	t0,vlenb
	sub	t4,a0,a7
	addi	a3,t0,-2
	bleu	t4,a3,.L1098
	sub	a2,a2,a4
	add	a1,a1,a4
.L1099:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a0)
	add	a0,a0,a4
	bne	a2,zero,.L1099
	ret
.L1137:
	addi	a4,a2,-1
	beq	a2,zero,.L1138
	csrr	a7,vlenb
	srli	t0,a7,3
	addi	t1,t0,-1
	bltu	a4,t1,.L1129
	sltiu	t2,a4,255
	beq	t2,zero,.L1127
.L1129:
	add	t2,a0,a4
.L1102:
	li	a2,-1
	j	.L1111
.L1139:
	add	t2,a0,a4
.L1111:
	add	a5,a1,a4
	lbu	t1,0(a5)
	addi	a4,a4,-1
	sb	t1,0(t2)
	bne	a4,a2,.L1139
.L1128:
	ret
.L1127:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	t2,a0,a4
	sub	t3,t2,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1102
	addi	t6,a7,-1
	bltu	a4,t6,.L1113
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a3,a0,t1
	neg	t2,a7
	sub	t3,a2,a7
	li	a5,0
.L1104:
	vl1re8.v	v1,0(a6)
	add	a5,a5,a7
	add	a6,a6,t2
	vs1r.v	v1,0(a3)
	add	a3,a3,t2
	bgeu	t3,a5,.L1104
	sub	a4,a4,a5
	beq	a2,a5,.L1128
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t0,a2,a5
	bltu	a4,t4,.L1107
.L1103:
	csrr	t5,vlenb
	srli	t6,t5,3
	sub	a2,a2,t6
	sub	a5,a2,a5
	add	a3,a1,a5
	add	a7,a0,a5
	neg	t1,t6
	sub	t2,t0,t6
	li	a6,0
	vsetvli	t3,zero,e8,mf8,ta,ma
.L1108:
	vle8.v	v0,0(a3)
	add	a6,a6,t6
	add	a3,a3,t1
	vse8.v	v0,0(a7)
	add	a7,a7,t1
	bgeu	t2,a6,.L1108
	sub	a4,a4,a6
	beq	t0,a6,.L1128
.L1107:
	li	t0,-1
.L1110:
	add	t4,a1,a4
	lbu	t5,0(t4)
	add	t6,a0,a4
	addi	a4,a4,-1
	sb	t5,0(t6)
	bne	a4,t0,.L1110
	ret
.L1094:
	sh2add	t1,a3,a1
	mv	a5,a1
	mv	t3,a0
.L1097:
	lw	t2,0(a5)
	addi	a5,a5,4
	addi	t3,t3,4
	sw	t2,-4(t3)
	bne	a5,t1,.L1097
	j	.L1090
.L1098:
	add	t1,a1,a4
	add	t5,a1,a2
.L1101:
	lbu	t6,0(t1)
	addi	t1,t1,1
	addi	a0,a0,1
	sb	t6,-1(a0)
	bne	t1,t5,.L1101
	ret
.L1138:
	ret
.L1113:
	mv	t0,a2
	li	a5,0
	j	.L1103
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
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
	.align	1
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	srai	a4,a0,15
	mv	a5,a0
	bne	a4,zero,.L1151
	srai	a0,a0,14
	bne	a0,zero,.L1166
	srai	t0,a5,13
	bne	t0,zero,.L1152
	srai	t1,a5,12
	bne	t1,zero,.L1153
	srai	t2,a5,11
	bne	t2,zero,.L1154
	srai	a0,a5,10
	bne	a0,zero,.L1155
	srai	a1,a5,9
	bne	a1,zero,.L1156
	srai	a2,a5,8
	bne	a2,zero,.L1157
	srai	a3,a5,7
	bne	a3,zero,.L1158
	srai	a6,a5,6
	bne	a6,zero,.L1159
	srai	a7,a5,5
	bne	a7,zero,.L1160
	srai	t3,a5,4
	bne	t3,zero,.L1161
	srai	t4,a5,3
	bne	t4,zero,.L1162
	srai	t5,a5,2
	bne	t5,zero,.L1163
	srai	t6,a5,1
	bne	t6,zero,.L1164
	seqz	a5,a5
	addi	a0,a5,15
	ret
.L1164:
	li	a0,14
.L1166:
	ret
.L1151:
	li	a0,0
	ret
.L1162:
	li	a0,12
	ret
.L1152:
	li	a0,2
	ret
.L1153:
	li	a0,3
	ret
.L1154:
	li	a0,4
	ret
.L1155:
	li	a0,5
	ret
.L1156:
	li	a0,6
	ret
.L1157:
	li	a0,7
	ret
.L1158:
	li	a0,8
	ret
.L1159:
	li	a0,9
	ret
.L1160:
	li	a0,10
	ret
.L1161:
	li	a0,11
	ret
.L1163:
	li	a0,13
	ret
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	1
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	andi	a5,a0,1
	bne	a5,zero,.L1170
	andi	t0,a0,2
	bne	t0,zero,.L1171
	andi	t1,a0,4
	bne	t1,zero,.L1172
	andi	t2,a0,8
	bne	t2,zero,.L1173
	andi	a1,a0,16
	bne	a1,zero,.L1174
	andi	a2,a0,32
	bne	a2,zero,.L1175
	andi	a3,a0,64
	bne	a3,zero,.L1176
	andi	a4,a0,128
	bne	a4,zero,.L1177
	andi	a6,a0,256
	bne	a6,zero,.L1178
	andi	a7,a0,512
	bne	a7,zero,.L1179
	andi	t3,a0,1024
	bne	t3,zero,.L1180
	slli	t4,a0,20
	blt	t4,zero,.L1181
	slli	t5,a0,19
	blt	t5,zero,.L1182
	slli	t6,a0,18
	blt	t6,zero,.L1183
	slli	a5,a0,17
	blt	a5,zero,.L1184
	srai	a0,a0,15
	seqz	t0,a0
	addi	a0,t0,15
	ret
.L1170:
	li	a0,0
	ret
.L1171:
	li	a0,1
	ret
.L1182:
	li	a0,12
	ret
.L1172:
	li	a0,2
	ret
.L1173:
	li	a0,3
	ret
.L1174:
	li	a0,4
	ret
.L1175:
	li	a0,5
	ret
.L1176:
	li	a0,6
	ret
.L1177:
	li	a0,7
	ret
.L1178:
	li	a0,8
	ret
.L1179:
	li	a0,9
	ret
.L1180:
	li	a0,10
	ret
.L1181:
	li	a0,11
	ret
.L1183:
	li	a0,13
	ret
.L1184:
	li	a0,14
	ret
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	1
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	lui	a5,%hi(.LC15)
	flw	fa5,%lo(.LC15)(a5)
	fge.s	t0,fa0,fa5
	bne	t0,zero,.L1195
	fcvt.w.s a0,fa0,rtz
	ret
.L1195:
	fsub.s	fa0,fa0,fa5
	li	t1,32768
	fcvt.w.s a0,fa0,rtz
	add	a0,a0,t1
	ret
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	1
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	vsetivli	zero,16,e32,mf2,ta,ma
	vmv.v.x	v1,a0
	vid.v	v2
	li	a4,0
	vsra.vv	v0,v1,v2
	vmv.s.x	v3,a4
	vand.vi	v4,v0,1
	vredsum.vs	v5,v4,v3
	vmv.x.s	a0,v5
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	vsetivli	zero,16,e32,mf2,ta,ma
	vmv.v.x	v1,a0
	vid.v	v2
	li	a4,0
	vsra.vv	v0,v1,v2
	vmv.s.x	v3,a4
	vand.vi	v4,v0,1
	vredsum.vs	v5,v4,v3
	vmv.x.s	a0,v5
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L1201
.L1200:
	bexti	a4,a5,0
	czero.eqz	t0,a1,a4
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L1200
	ret
.L1201:
	ret
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	1
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L1207
	beq	a1,zero,.L1208
.L1206:
	bexti	a5,a1,0
	czero.eqz	t0,a4,a5
	srli	a1,a1,1
	add	a0,a0,t0
	slli	a4,a4,1
	bne	a1,zero,.L1206
	ret
.L1207:
	ret
.L1208:
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	1
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	li	a3,32
	li	a4,1
	bgtu	a0,a1,.L1212
	j	.L1232
.L1216:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L1214
	beq	a3,zero,.L1215
.L1212:
	addi	a3,a3,-1
	bge	a1,zero,.L1216
.L1217:
	li	a3,0
.L1218:
	sltu	t1,a0,a1
	xori	t2,t1,1
	sub	a6,a0,a1
	czero.eqz	t4,a4,t2
	czero.eqz	a7,a6,t2
	czero.nez	t3,a0,t2
	srli	a4,a4,1
	add	a0,t3,a7
	or	a3,a3,t4
	srli	a1,a1,1
	bne	a4,zero,.L1218
.L1215:
	czero.nez	t5,a3,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,t5
	ret
.L1214:
	bne	a4,zero,.L1217
	li	a3,0
	j	.L1215
.L1232:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	czero.nez	t0,a5,a1
	czero.eqz	a0,a0,a1
	add	a0,a0,t0
	xori	a3,a1,1
	j	.L1215
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	1
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	flt.s	a5,fa0,fa1
	li	a0,-1
	bne	a5,zero,.L1237
	fgt.s	a0,fa0,fa1
.L1237:
	ret
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	1
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
	bne	t2,zero,.L1242
	fgt.d	a0,fa4,fa5
.L1242:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	1
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
	.align	1
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
	.align	1
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	mv	a3,a0
	blt	a1,zero,.L1263
	beq	a1,zero,.L1254
	li	a2,0
.L1250:
	li	t1,32
	li	a0,0
	j	.L1253
.L1264:
	beq	t1,zero,.L1252
.L1253:
	bexti	a4,a1,0
	czero.eqz	t0,a3,a4
	addi	a5,t1,-1
	srai	a1,a1,1
	andi	t1,a5,0xff
	add	a0,a0,t0
	slli	a3,a3,1
	bne	a1,zero,.L1264
.L1252:
	beq	a2,zero,.L1262
	neg	a0,a0
	ret
.L1254:
	li	a0,0
.L1262:
	ret
.L1263:
	neg	a1,a1
	li	a2,1
	j	.L1250
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	1
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	li	a5,1
	li	a6,0
	blt	a0,zero,.L1292
.L1266:
	bge	a1,zero,.L1267
	neg	a1,a1
	mv	a6,a5
.L1267:
	mv	t3,a0
	mv	t4,a1
	li	a4,32
	li	a3,1
	bgtu	a0,a1,.L1268
	j	.L1290
.L1272:
	beq	a4,zero,.L1273
.L1268:
	slli	t4,t4,1
	addi	a4,a4,-1
	slli	a3,a3,1
	bgtu	a0,t4,.L1272
.L1273:
	li	a0,0
	beq	a3,zero,.L1271
.L1270:
	sltu	t0,t3,t4
	xori	t1,t0,1
	sub	a1,t3,t4
	czero.eqz	a7,a3,t1
	czero.eqz	t2,a1,t1
	czero.nez	a2,t3,t1
	srli	a3,a3,1
	add	t3,a2,t2
	or	a0,a0,a7
	srli	t4,t4,1
	bne	a3,zero,.L1270
.L1271:
	beq	a6,zero,.L1287
	neg	a0,a0
	ret
.L1287:
	ret
.L1292:
	neg	a0,a0
	li	a5,0
	li	a6,1
	j	.L1266
.L1290:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1271
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	1
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	li	a6,0
	bge	a0,zero,.L1294
	neg	a0,a0
	li	a6,1
.L1294:
	neg	a5,a1
	max	t6,a1,a5
	mv	t2,a0
	li	a3,32
	li	t3,1
	bgtu	a0,t6,.L1295
	j	.L1316
.L1299:
	beq	a3,zero,.L1300
.L1295:
	slli	t6,t6,1
	addi	a3,a3,-1
	slli	t3,t3,1
	bgtu	a0,t6,.L1299
.L1300:
	beq	t3,zero,.L1298
.L1297:
	sltu	a0,t2,t6
	sub	a2,t2,t6
	xori	a7,a0,1
	czero.eqz	t4,a2,a7
	czero.nez	t5,t2,a7
	srli	t3,t3,1
	add	t2,t5,t4
	srli	t6,t6,1
	bne	t3,zero,.L1297
	mv	a0,t2
.L1298:
	beq	a6,zero,.L1313
	neg	a0,a0
	ret
.L1313:
	ret
.L1316:
	sltu	a1,a0,t6
	sub	t0,a0,t6
	czero.eqz	a4,a0,a1
	czero.nez	t1,t0,a1
	add	t2,a4,t1
	mv	a0,t2
	j	.L1298
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	bgeu	a1,a0,.L1401
	sext.h	a3,a1
	blt	a3,zero,.L1321
	slli	a6,a1,1
	zext.h	a4,a6
	bleu	a0,a4,.L1328
	sext.h	a7,a4
	blt	a7,zero,.L1328
	slli	t5,a1,2
	zext.h	a4,t5
	bleu	a0,a4,.L1330
	sext.h	t6,a4
	blt	t6,zero,.L1330
	slli	a5,a1,3
	zext.h	a4,a5
	bleu	a0,a4,.L1332
	sext.h	t0,a4
	blt	t0,zero,.L1332
	slli	t1,a1,4
	zext.h	a4,t1
	bleu	a0,a4,.L1334
	sext.h	t2,a4
	blt	t2,zero,.L1334
	slli	a3,a1,5
	zext.h	a4,a3
	bleu	a0,a4,.L1336
	sext.h	t3,a4
	blt	t3,zero,.L1336
	slli	a4,a1,6
	zext.h	a4,a4
	bleu	a0,a4,.L1338
	sext.h	t4,a4
	blt	t4,zero,.L1338
	slli	a6,a1,7
	zext.h	a4,a6
	bleu	a0,a4,.L1340
	sext.h	a7,a4
	blt	a7,zero,.L1340
	slli	t5,a1,8
	zext.h	a4,t5
	bleu	a0,a4,.L1342
	sext.h	t6,a4
	blt	t6,zero,.L1342
	slli	a5,a1,9
	zext.h	a4,a5
	bleu	a0,a4,.L1344
	sext.h	t0,a4
	blt	t0,zero,.L1344
	slli	t1,a1,10
	zext.h	a4,t1
	bleu	a0,a4,.L1346
	sext.h	t2,a4
	blt	t2,zero,.L1346
	slli	a3,a1,11
	zext.h	a4,a3
	bleu	a0,a4,.L1348
	sext.h	t3,a4
	blt	t3,zero,.L1348
	slli	a4,a1,12
	zext.h	a4,a4
	bleu	a0,a4,.L1350
	sext.h	t4,a4
	blt	t4,zero,.L1350
	slli	a6,a1,13
	zext.h	a4,a6
	bleu	a0,a4,.L1352
	sext.h	a7,a4
	blt	a7,zero,.L1352
	slli	t5,a1,14
	zext.h	a4,t5
	bleu	a0,a4,.L1354
	sext.h	t6,a4
	blt	t6,zero,.L1354
	slli	a1,a1,15
	zext.h	t4,a1
	bleu	a0,t4,.L1355
	li	t0,32768
	mv	t3,a0
	mv	a4,t0
	bne	t4,zero,.L1323
.L1324:
	czero.eqz	t5,t3,a2
	czero.nez	a2,t4,a2
	add	a0,a2,t5
	ret
.L1328:
	li	t0,2
.L1323:
	sltu	t1,a0,a4
	sub	a5,a0,a4
	xori	a3,t1,1
	zext.h	t2,a5
	czero.eqz	t3,t2,a3
	czero.nez	a0,a0,a3
	add	t4,a0,t3
	zext.h	a6,t4
	srli	a1,a4,1
	czero.nez	t5,t0,t1
	sub	a7,a6,a1
	sgtu	t1,a1,a6
	xori	a5,t1,1
	zext.h	t2,a7
	czero.nez	t3,a6,a5
	srli	t6,t0,1
	czero.eqz	a3,t2,a5
	add	t4,t3,a3
	czero.nez	a0,t6,t1
	srli	a6,t0,2
	zext.h	t3,t4
	or	t4,t5,a0
	srli	t5,a4,2
	beq	a6,zero,.L1324
	sub	t6,t3,t5
	sgtu	a1,t5,t3
	xori	t1,a1,1
	zext.h	a7,t6
	czero.eqz	t2,a7,t1
	czero.nez	a5,t3,t1
	czero.eqz	a3,a6,t1
	add	t3,a5,t2
	srli	a6,t0,3
	zext.h	t3,t3
	or	t4,t4,a3
	srli	t5,a4,3
	beq	a6,zero,.L1324
	sub	a0,t3,t5
	sgtu	t6,t5,t3
	xori	a7,t6,1
	zext.h	a1,a0
	czero.nez	t2,t3,a7
	czero.eqz	t1,a1,a7
	czero.eqz	a3,a6,a7
	add	a5,t2,t1
	srli	a6,t0,4
	zext.h	t3,a5
	or	t4,t4,a3
	srli	t5,a4,4
	beq	a6,zero,.L1324
	sub	a0,t3,t5
	sltu	t6,t3,t5
	xori	a7,t6,1
	zext.h	a1,a0
	czero.nez	t3,t3,a7
	czero.eqz	t1,a1,a7
	czero.eqz	a5,a6,a7
	add	t2,t3,t1
	srli	a6,t0,5
	zext.h	t3,t2
	or	t4,t4,a5
	srli	a3,a4,5
	beq	a6,zero,.L1324
	sub	t5,t3,a3
	sltu	t6,t3,a3
	xori	a1,t6,1
	zext.h	a0,t5
	czero.eqz	a7,a0,a1
	czero.nez	t1,t3,a1
	czero.eqz	t2,a6,a1
	add	t3,t1,a7
	srli	a6,t0,6
	zext.h	t3,t3
	or	t4,t4,t2
	srli	a5,a4,6
	beq	a6,zero,.L1324
	sub	t5,t3,a5
	sltu	a3,t3,a5
	xori	a1,a3,1
	zext.h	t6,t5
	czero.nez	a7,t3,a1
	czero.eqz	a0,t6,a1
	czero.eqz	t2,a6,a1
	add	t1,a7,a0
	srli	a6,t0,7
	zext.h	t3,t1
	or	t4,t4,t2
	srli	a5,a4,7
	beq	a6,zero,.L1324
	sub	t5,t3,a5
	sltu	a3,t3,a5
	xori	a1,a3,1
	zext.h	t6,t5
	czero.nez	t3,t3,a1
	czero.eqz	a0,t6,a1
	czero.eqz	t2,a6,a1
	add	t1,t3,a0
	srli	a7,t0,8
	zext.h	t3,t1
	or	t4,t4,t2
	srli	a6,a4,8
	beq	a7,zero,.L1324
	sub	a5,t3,a6
	sltu	t5,t3,a6
	xori	a3,t5,1
	zext.h	t6,a5
	czero.eqz	a1,t6,a3
	czero.nez	a0,t3,a3
	czero.eqz	t1,a7,a3
	add	t3,a0,a1
	srli	t2,t0,9
	zext.h	t3,t3
	or	t4,t4,t1
	srli	a7,a4,9
	beq	t2,zero,.L1324
	sub	a6,t3,a7
	sltu	a5,t3,a7
	xori	t6,a5,1
	zext.h	t5,a6
	czero.nez	a1,t3,t6
	czero.eqz	a3,t5,t6
	czero.eqz	t1,t2,t6
	add	a0,a1,a3
	srli	t2,t0,10
	zext.h	t3,a0
	or	t4,t4,t1
	srli	a7,a4,10
	beq	t2,zero,.L1324
	sub	a6,t3,a7
	sltu	a5,t3,a7
	xori	t6,a5,1
	zext.h	t5,a6
	czero.nez	t3,t3,t6
	czero.eqz	a3,t5,t6
	czero.eqz	a0,t2,t6
	add	a1,t3,a3
	srli	t1,t0,11
	zext.h	t3,a1
	or	t4,t4,a0
	srli	t2,a4,11
	beq	t1,zero,.L1324
	sub	a7,t3,t2
	sltu	a6,t3,t2
	xori	t5,a6,1
	zext.h	a5,a7
	czero.eqz	t6,a5,t5
	czero.nez	a3,t3,t5
	czero.eqz	a1,t1,t5
	add	t3,a3,t6
	srli	t1,t0,12
	zext.h	t3,t3
	or	t4,t4,a1
	srli	t2,a4,12
	beq	t1,zero,.L1324
	sub	a0,t3,t2
	sltu	a7,t3,t2
	xori	t5,a7,1
	zext.h	a6,a0
	czero.eqz	t6,a6,t5
	czero.nez	a5,t3,t5
	czero.eqz	a3,t1,t5
	add	t3,a5,t6
	srli	a1,t0,13
	zext.h	t3,t3
	or	t4,t4,a3
	srli	t1,a4,13
	beq	a1,zero,.L1324
	sub	t2,t3,t1
	sltu	a7,t3,t1
	xori	a6,a7,1
	zext.h	a0,t2
	czero.nez	t6,t3,a6
	czero.eqz	t5,a0,a6
	czero.eqz	a3,a1,a6
	add	a5,t6,t5
	srli	a1,t0,14
	zext.h	t3,a5
	or	t4,t4,a3
	srli	t1,a4,14
	beq	a1,zero,.L1324
	sub	t2,t3,t1
	sltu	a7,t3,t1
	xori	a6,a7,1
	zext.h	a0,t2
	czero.nez	t3,t3,a6
	czero.eqz	t5,a0,a6
	add	t6,t3,t5
	czero.eqz	a5,a1,a6
	li	a3,16384
	srli	a4,a4,15
	zext.h	t3,t6
	or	t4,t4,a5
	beq	t0,a3,.L1324
	sub	t0,t3,a4
	sltu	a1,t3,a4
	xori	t2,a1,1
	zext.h	t1,t0
	czero.nez	a0,t3,t2
	czero.eqz	a7,t1,t2
	add	a6,a0,a7
	zext.h	t3,a6
	or	t4,t2,t4
	czero.eqz	t5,t3,a2
	czero.nez	a2,t4,a2
	add	a0,a2,t5
	ret
.L1330:
	li	t0,4
	j	.L1323
.L1332:
	li	t0,8
	j	.L1323
.L1334:
	li	t0,16
	j	.L1323
.L1344:
	li	t0,512
	j	.L1323
.L1336:
	li	t0,32
	j	.L1323
.L1338:
	li	t0,64
	j	.L1323
.L1340:
	li	t0,128
	j	.L1323
.L1342:
	li	t0,256
	j	.L1323
.L1401:
	sub	a5,a0,a1
	zext.h	t0,a5
	sub	a1,a1,a0
	czero.nez	t1,t0,a1
	czero.eqz	a0,a0,a1
	add	t2,a0,t1
	zext.h	t3,t2
	seqz	t4,a1
	j	.L1324
.L1346:
	li	t0,1024
	j	.L1323
.L1348:
	bseti	t0,zero,11
	j	.L1323
.L1350:
	li	t0,4096
	j	.L1323
.L1352:
	li	t0,8192
	j	.L1323
.L1354:
	li	t0,16384
	j	.L1323
.L1355:
	li	a4,32768
	mv	t0,a4
	j	.L1323
.L1321:
	sub	a4,a0,a1
	zext.h	t3,a4
	li	t4,1
	j	.L1324
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	li	a3,32
	li	a4,1
	bgtu	a0,a1,.L1403
	j	.L1423
.L1407:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L1405
	beq	a3,zero,.L1406
.L1403:
	addi	a3,a3,-1
	bge	a1,zero,.L1407
.L1408:
	li	a3,0
.L1409:
	sltu	t1,a0,a1
	xori	t2,t1,1
	sub	a6,a0,a1
	czero.eqz	t4,a4,t2
	czero.eqz	a7,a6,t2
	czero.nez	t3,a0,t2
	srli	a4,a4,1
	add	a0,t3,a7
	or	a3,a3,t4
	srli	a1,a1,1
	bne	a4,zero,.L1409
.L1406:
	czero.nez	t5,a3,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,t5
	ret
.L1405:
	bne	a4,zero,.L1408
	li	a3,0
	j	.L1406
.L1423:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	czero.nez	t0,a5,a1
	czero.eqz	a0,a0,a1
	add	a0,a0,t0
	xori	a3,a1,1
	j	.L1406
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	1
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	andi	a5,a2,32
	beq	a5,zero,.L1426
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1426:
	beq	a2,zero,.L1430
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1430:
	ret
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	1
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	andi	a5,a2,32
	beq	a5,zero,.L1432
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1432:
	beq	a2,zero,.L1436
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1436:
	ret
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	1
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mv	a5,a0
	rev8	a0,a1
	rev8	a1,a5
	ret
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	1
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	rev8	a0,a0
	ret
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	1
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	li	a2,65536
	sltu	t0,a0,a2
	slli	t1,t0,4
	li	a5,16
	sub	t2,a5,t1
	li	a4,65536
	srl	a0,a0,t2
	addi	a1,a4,-256
	and	a3,a0,a1
	seqz	a6,a3
	slli	a7,a6,3
	li	t3,8
	sub	t4,t3,a7
	srl	t5,a0,t4
	andi	t6,t5,240
	seqz	a2,t6
	slli	t0,a2,2
	li	a5,4
	sub	t2,a5,t0
	srl	a3,t5,t2
	andi	a4,a3,12
	seqz	a0,a4
	slli	t3,a0,1
	li	a1,2
	sub	a6,a1,t3
	add	t1,a7,t1
	srl	a7,a3,a6
	add	t4,t0,t1
	sub	t5,a1,a7
	andi	t6,a7,2
	add	a2,t3,t4
	czero.nez	t0,t5,t6
	add	a0,t0,a2
	ret
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	1
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	mv	a5,a0
	blt	a1,a3,.L1442
	li	a0,2
	bgt	a1,a3,.L1446
	li	a0,0
	bltu	a5,a2,.L1446
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1442:
	li	a0,0
.L1446:
	ret
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	1
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	mv	a5,a0
	blt	a1,a3,.L1449
	li	a0,1
	bgt	a1,a3,.L1452
	li	a0,-1
	bltu	a5,a2,.L1452
	sgtu	a0,a5,a2
	ret
.L1449:
	li	a0,-1
.L1452:
	ret
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	1
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	zext.h	a1,a0
	seqz	t0,a1
	slli	t1,t0,4
	srl	a5,a0,t1
	andi	a2,a5,255
	seqz	t2,a2
	slli	a0,t2,3
	srl	a4,a5,a0
	andi	a3,a4,15
	seqz	a6,a3
	slli	a7,a6,2
	srl	t3,a4,a7
	andi	t4,t3,3
	seqz	t5,t4
	slli	t6,t5,1
	srl	t0,t3,t6
	li	a1,1
	add	t1,a0,t1
	andn	a2,a1,t0
	bexti	a5,t0,1
	li	t2,2
	add	a4,a7,t1
	neg	a0,a2
	sub	a3,t2,a5
	add	a6,t6,a4
	and	a7,a0,a3
	add	a0,a7,a6
	ret
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	1
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	andi	a5,a2,32
	beq	a5,zero,.L1455
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1455:
	beq	a2,zero,.L1459
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1459:
	ret
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	1
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	zext.h	a5,a1
	zext.h	a3,a0
	srli	a4,a0,16
	mul	a0,a3,a5
	srli	a1,a1,16
	mul	t0,a5,a4
	srli	a2,a0,16
	zext.h	t1,a0
	mul	t2,a3,a1
	add	a6,t0,a2
	zext.h	a7,a6
	srli	t3,a6,16
	mul	t4,a4,a1
	add	t5,t2,a7
	srli	t6,t5,16
	slli	a3,t5,16
	add	a0,t1,a3
	add	a5,t3,t4
	add	a1,a5,t6
	ret
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	1
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	zext.h	a5,a2
	zext.h	a6,a0
	mv	a4,a0
	srli	a7,a0,16
	mul	a0,a6,a5
	srli	t1,a2,16
	mul	t0,a5,a7
	srli	t3,a0,16
	zext.h	t2,a0
	mul	t4,a6,t1
	add	t5,t0,t3
	zext.h	t6,t5
	srli	a5,t5,16
	mul	a7,a7,t1
	add	a6,t4,t6
	srli	t1,a6,16
	slli	a0,a6,16
	add	a0,t2,a0
	mul	a3,a4,a3
	add	a4,a5,a7
	add	t0,a4,t1
	mul	a1,a2,a1
	add	a2,a3,t0
	add	a1,a2,a1
	ret
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	1
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
	.align	1
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
	andi	a3,a2,15
	addi	a6,a0,-1642
	bext	a0,a6,a3
	ret
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	1
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
	bext	a0,a4,a3
	ret
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	1
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
	.align	1
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
	.align	1
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
	beq	t1,zero,.L1473
	mv	t3,a0
.L1470:
	fmul.d	fa0,fa0,fa5
.L1468:
	srli	a4,t3,31
	add	a1,a4,t3
	srai	t3,a1,1
	beq	t3,zero,.L1469
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1470
.L1476:
	srai	t3,a7,1
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1470
	j	.L1476
.L1469:
	bge	a0,zero,.L1474
	fld	ft0,0(t2)
	fdiv.d	fa0,ft0,fa0
.L1474:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L1473:
	.cfi_restore_state
	mv	t3,a0
	j	.L1468
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	1
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	lui	a2,%hi(.LC16)
	andi	a5,a0,1
	fmv.s	fa5,fa0
	flw	fa0,%lo(.LC16)(a2)
	beq	a5,zero,.L1483
	mv	a1,a0
.L1480:
	fmul.s	fa0,fa0,fa5
.L1478:
	srli	a4,a1,31
	add	t0,a4,a1
	srai	a1,t0,1
	beq	a1,zero,.L1479
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1480
.L1485:
	srai	a1,t2,1
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1480
	j	.L1485
.L1479:
	blt	a0,zero,.L1486
	ret
.L1483:
	mv	a1,a0
	j	.L1478
.L1486:
	flw	ft0,%lo(.LC16)(a2)
	fdiv.s	fa0,ft0,fa0
	ret
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	1
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	mv	a5,a0
	bltu	a1,a3,.L1489
	li	a0,2
	bgtu	a1,a3,.L1493
	li	a0,0
	bltu	a5,a2,.L1493
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1489:
	li	a0,0
.L1493:
	ret
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	1
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	mv	a5,a0
	bltu	a1,a3,.L1496
	li	a0,1
	bgtu	a1,a3,.L1499
	li	a0,-1
	bltu	a5,a2,.L1499
	sgtu	a0,a5,a2
	ret
.L1496:
	li	a0,-1
.L1499:
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
