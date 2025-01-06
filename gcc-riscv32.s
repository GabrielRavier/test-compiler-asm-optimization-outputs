	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_h1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr1p0_zicond1p0_zicsr2p0_zifencei2p0_zihintntl1p0_zihintpause1p0_zihpm1p0_zmmul1p0_za128rs1p0_za64rs1p0_zawrs1p0_zfa1p0_zfh1p0_zfhmin1p0_zca1p0_zcb1p0_zcd1p0_zcf1p0_zba1p0_zbb1p0_zbc1p0_zbkb1p0_zbkc1p0_zbkx1p0_zbs1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zks1p0_zksed1p0_zksh1p0_zkt1p0_ztso1p0_zvbb1p0_zvbc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfbfmin1p0_zvfh1p0_zvfhmin1p0_zvkb1p0_zvkg1p0_zvkn1p0_zvknc1p0_zvkned1p0_zvkng1p0_zvknha1p0_zvknhb1p0_zvks1p0_zvksc1p0_zvksed1p0_zvksg1p0_zvksh1p0_zvkt1p0_zvl1024b1p0_zvl128b1p0_zvl2048b1p0_zvl256b1p0_zvl32b1p0_zvl4096b1p0_zvl512b1p0_zvl64b1p0_smaia1p0_smepmp1p0_smstateen1p0_ssaia1p0_sscofpmf1p0_ssstateen1p0_sstc1p0_svinval1p0_svnapot1p0_svpbmt1p0_xcvalu1p0_xcvelw1p0_xcvmac1p0_xtheadba1p0_xtheadbb1p0_xtheadbs1p0_xtheadcmo1p0_xtheadcondmov1p0_xtheadfmemidx1p0_xtheadfmv1p0_xtheadint1p0_xtheadmac1p0"
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
	sltiu	t3,t5,511
	bne	t3,zero,.L40
	csrr	t6,vlenb
	srli	t4,t6,3
	addi	a5,t4,-1
	bgtu	a5,t5,.L40
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
	li	t6,65536
	addi	a4,a0,4
	li	t0,1048576
	addi	t1,t6,-2
	add	t2,a5,a4
	addi	a1,t0,3
	andn	a5,t1,a5
	sgtu	a3,t2,a1
	snez	a0,a5
	th.mvnez	a0,zero,a3
.L203:
	ret
.L204:
	addi	a2,a0,1
	andi	a6,a2,127
	sltiu	a7,a6,33
	seqz	a0,a7
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
	fmv.x.w	a6,fa0
	fmvh.x.d	t2,fa0
	fmv.x.w	a0,fa1
	fmvh.x.d	a1,fa1
	fmvp.d.x	fa0,a6,t2
	fmvp.d.x	fa5,a0,a1
	feq.d	t0,fa0,fa0
	beq	t0,zero,.L218
	feq.d	t1,fa5,fa5
	beq	t1,zero,.L214
	fgt.d	a7,fa0,fa5
	beq	a7,zero,.L219
	fsub.d	fa0,fa0,fa5
	ret
.L219:
	fcvt.d.w	fa0,x0
.L218:
	ret
.L214:
	fmv.d	fa0,fa5
	ret
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
	beq	a5,zero,.L228
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L224
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L229
	fsub.s	fa0,fa0,fa1
	ret
.L229:
	fmv.s.x	fa0,zero
.L228:
	ret
.L224:
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
	fmvh.x.d	a1,fa0
	fmv.x.w	t1,fa0
	fmv.x.w	a0,fa1
	fmvh.x.d	t4,fa1
	fmvp.d.x	fa5,t1,a1
	mv	a4,t1
	mv	a5,a1
	feq.d	t0,fa5,fa5
	mv	t2,a1
	mv	a2,a0
	beq	t0,zero,.L235
	fmvp.d.x	ft0,a0,t4
	feq.d	a6,ft0,ft0
	beq	a6,zero,.L236
	li	a7,-2147483648
	and	t5,a7,a1
	and	t6,a7,t4
	bne	t5,t6,.L239
	fmvp.d.x	ft1,t1,a1
	fmvp.d.x	fa4,a0,t4
	mv	a1,a4
	mv	a0,a5
	flt.d	t1,ft1,fa4
	beq	t1,zero,.L234
	mv	a1,a2
	mv	a0,t4
.L234:
	mv	t1,a1
	mv	a5,a0
.L230:
	fmvp.d.x	fa0,t1,a5
	ret
.L239:
	mv	t1,a0
	mv	a5,t4
	bne	t5,zero,.L230
.L236:
	mv	t1,a4
	mv	a5,t2
	fmvp.d.x	fa0,t1,a5
	ret
.L235:
	mv	t1,a0
	mv	a5,t4
	j	.L230
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
	beq	a3,zero,.L245
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L246
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	bne	a2,t2,.L250
	flt.s	a0,fa0,fa1
	beq	a0,zero,.L249
.L245:
	fmv.s.x	fa0,a4
	ret
.L250:
	fmv.s	fa0,fa1
	beq	a2,zero,.L246
.L249:
	ret
.L246:
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
	bne	a0,zero,.L258
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
	bne	a0,zero,.L252
	li	a5,-2147483648
	and	a4,s1,a5
	and	t0,s5,a5
	beq	a4,t0,.L253
	th.mvnez	s4,s8,a4
	th.mvnez	s3,s7,a4
	th.mvnez	s2,s6,a4
	th.mvnez	s1,s5,a4
.L252:
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
.L253:
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
	bge	a0,zero,.L252
.L258:
	mv	s4,s8
	mv	s3,s7
	mv	s2,s6
	mv	s1,s5
	j	.L252
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	1
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	fmvh.x.d	a1,fa0
	fmv.x.w	t1,fa0
	fmv.x.w	a0,fa1
	fmvh.x.d	t4,fa1
	fmvp.d.x	fa5,t1,a1
	mv	a4,t1
	mv	a5,a1
	feq.d	t0,fa5,fa5
	mv	t2,a1
	mv	t3,a0
	beq	t0,zero,.L269
	fmvp.d.x	ft0,a0,t4
	feq.d	a6,ft0,ft0
	beq	a6,zero,.L264
	li	a7,-2147483648
	and	t5,a7,a1
	and	t6,a7,t4
	bne	t5,t6,.L273
	fmvp.d.x	ft1,t1,a1
	fmvp.d.x	fa4,a0,t4
	mv	a1,a0
	mv	a0,t4
	flt.d	t1,ft1,fa4
	beq	t1,zero,.L268
	mv	a1,a4
	mv	a0,a5
.L268:
	mv	t1,a1
	mv	t2,a0
.L264:
	fmvp.d.x	fa0,t1,t2
	ret
.L273:
	bne	t5,zero,.L264
.L269:
	mv	t1,t3
	mv	t2,t4
	fmvp.d.x	fa0,t1,t2
	ret
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
	beq	a3,zero,.L279
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L280
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	beq	a2,t2,.L276
	bne	a2,zero,.L283
.L279:
	fmv.s.x	fa0,a4
	ret
.L276:
	flt.s	a0,fa0,fa1
	fmv.s	fa0,fa1
	bne	a0,zero,.L280
.L283:
	ret
.L280:
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
	bne	a0,zero,.L285
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
	bne	a0,zero,.L291
	li	a5,-2147483648
	and	a4,s8,a5
	and	t0,s1,a5
	beq	a4,t0,.L286
	th.mvnez	s4,s7,a4
	th.mvnez	s3,s6,a4
	th.mvnez	s2,s5,a4
	th.mvnez	s1,s8,a4
.L285:
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
.L286:
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
	bge	a0,zero,.L285
.L291:
	mv	s4,s7
	mv	s3,s6
	mv	s2,s5
	mv	s1,s8
	j	.L285
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
	beq	a0,zero,.L300
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	t0,a3,%lo(.LANCHOR0)
.L299:
	andi	a5,a0,63
	add	t1,t0,a5
	lbu	t2,0(t1)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	t2,-1(a4)
	bne	a0,zero,.L299
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L300:
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
	li	a5,1481764864
	addi	t1,a5,1069
	mul	t2,a3,t1
	lw	a1,4(t0)
	li	a2,1284866048
	addi	a6,a2,-211
	mul	a0,a3,a6
	th.mula	t2,a1,a6
	addi	a7,a0,1
	sltu	t3,a7,a0
	sw	a7,0(t0)
	mulhu	t4,a3,a6
	add	t5,t2,t4
	add	t6,t3,t5
	sw	t6,4(t0)
	srli	a0,t6,1
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
	beq	a1,zero,.L311
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L310
	sw	a0,4(t0)
.L310:
	ret
.L311:
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
	beq	a5,zero,.L313
	lw	a4,4(a0)
	sw	a4,4(a5)
.L313:
	lw	t0,4(a0)
	beq	t0,zero,.L321
	sw	a5,0(t0)
.L321:
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
	sw	s5,20(sp)
	.cfi_offset 21, -28
	lw	s5,0(a2)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s6,16(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	mv	s7,a2
	mv	s3,a0
	mv	s8,a1
	mv	s2,a3
	beq	s5,zero,.L323
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	mv	s0,a1
	mv	s4,a4
	li	s1,0
	j	.L325
.L341:
	add	s0,s0,s2
	beq	s5,s1,.L340
.L325:
	mv	a1,s0
	mv	a0,s3
	jalr	s4
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L341
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s4,24(sp)
	.cfi_restore 20
.L337:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	mv	a0,s6
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L340:
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
.L323:
	addi	a5,s5,1
	mv	s6,s8
	sw	a5,0(s7)
	th.mula	s6,s2,s5
	beq	s2,zero,.L337
	mv	a2,s2
	mv	a1,s3
	mv	a0,s6
	call	memmove
	j	.L337
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
	beq	s5,zero,.L343
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
	j	.L345
.L357:
	add	s0,s0,s4
	beq	s5,s1,.L356
.L345:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L357
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
.L356:
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
.L343:
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
.L366:
	lbu	a5,0(a0)
	addi	a4,a5,-9
	beq	a5,a3,.L360
	bleu	a4,a2,.L360
	li	t0,43
	beq	a5,t0,.L361
	li	a1,45
	bne	a5,a1,.L379
	lbu	a6,1(a0)
	li	a7,9
	addi	a0,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L371
	li	t5,1
.L364:
	li	a4,0
	li	t6,9
.L368:
	lbu	a2,1(a0)
	sh2add	a3,a4,a4
	slli	a5,a3,1
	sub	a4,a5,t3
	mv	t0,t3
	addi	t3,a2,-48
	addi	a0,a0,1
	bleu	t3,t6,.L368
	sub	a0,t0,a5
	th.mvnez	a0,a4,t5
	ret
.L360:
	addi	a0,a0,1
	j	.L366
.L379:
	addi	t3,a5,-48
	li	t4,9
	li	t5,0
	bleu	t3,t4,.L364
.L371:
	li	a0,0
	ret
.L361:
	lbu	t1,1(a0)
	li	t2,9
	addi	a0,a0,1
	addi	t3,t1,-48
	li	t5,0
	bleu	t3,t2,.L364
	j	.L371
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
.L385:
	lbu	a5,0(a0)
	addi	a4,a5,-9
	beq	a5,a3,.L381
	bleu	a4,a2,.L381
	li	t0,43
	beq	a5,t0,.L382
	li	a1,45
	bne	a5,a1,.L400
	lbu	a6,1(a0)
	li	t3,9
	addi	a0,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L392
.L386:
	li	a4,0
	li	t6,9
.L389:
	lbu	a2,1(a0)
	sh2add	a3,a4,a4
	slli	a5,a3,1
	sub	a4,a5,t4
	mv	t0,t4
	addi	t4,a2,-48
	addi	a0,a0,1
	bleu	t4,t6,.L389
	sub	a0,t0,a5
	th.mvnez	a0,a4,a7
	ret
.L381:
	addi	a0,a0,1
	j	.L385
.L400:
	addi	t4,a5,-48
	li	t5,9
	li	a7,0
	bleu	t4,t5,.L386
.L392:
	li	a0,0
	ret
.L382:
	lbu	t1,1(a0)
	li	t2,9
	addi	a0,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L392
	li	a7,0
	j	.L386
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
.L408:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L402
	bleu	a5,a2,.L402
	li	t0,43
	beq	a4,t0,.L403
	li	a1,45
	bne	a4,a1,.L421
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L413
	li	t4,1
.L406:
	li	a0,0
	li	a1,0
	li	a4,9
.L410:
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
	bleu	t6,a4,.L410
	bne	t4,zero,.L418
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,t0
	sub	a1,t5,t6
	ret
.L402:
	addi	a0,a0,1
	j	.L408
.L421:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L406
.L413:
	li	a0,0
	li	a1,0
.L418:
	ret
.L403:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L406
	j	.L413
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
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	beq	a2,zero,.L423
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
.L426:
	srli	s1,s0,1
	mv	s2,s3
	th.mula	s2,s1,s4
	mv	a0,s5
	addi	s0,s0,-1
	mv	a1,s2
	jalr	s6
	blt	a0,zero,.L427
	beq	a0,zero,.L437
	sub	s0,s0,s1
	add	s3,s2,s4
	bne	s0,zero,.L426
.L438:
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
.L423:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s2,0
	mv	a0,s2
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L427:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	mv	s0,s1
	bne	s0,zero,.L426
	j	.L438
.L437:
	lw	s0,24(sp)
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s2
	lw	s2,16(sp)
	.cfi_restore 18
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
	sw	s2,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	mv	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
	mv	s7,a5
	beq	a2,zero,.L444
	sw	s1,36(sp)
	.cfi_offset 9, -12
.L453:
	srai	s1,s0,1
	mv	s2,s3
	th.mula	s2,s1,s4
	mv	a2,s7
	mv	a0,s5
	addi	s0,s0,-1
	srai	s0,s0,1
	mv	a1,s2
	jalr	s6
	beq	a0,zero,.L457
	ble	a0,zero,.L442
	add	s3,s2,s4
	bne	s0,zero,.L453
.L458:
	lw	s1,36(sp)
	.cfi_restore 9
.L444:
	li	s2,0
.L452:
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
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L442:
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
	beq	s1,zero,.L458
	mv	s0,s1
	j	.L453
.L457:
	lw	s1,36(sp)
	.cfi_restore 9
	j	.L452
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
	j	.L478
.L480:
	beq	a1,a5,.L479
	addi	a0,a0,4
.L478:
	lw	a5,0(a0)
	bne	a5,zero,.L480
	li	a0,0
	ret
.L479:
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
.L484:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L483
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L484
.L483:
	sgt	a3,a5,a4
	slt	t0,a5,a4
	li	a0,-1
	th.mveqz	a0,a3,t0
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
.L491:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L491
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
	beq	a0,zero,.L500
	li	a2,0
	addi	a3,a4,4
.L495:
	vsetvli	a1,zero,e32,m1,ta,ma
	sh2add	a3,a2,a3
	vle32ff.v	v1,0(a3)
	vmseq.vi	v0,v1,0
	csrr	a2,vl
	vfirst.m	a5,v0
	blt	a5,zero,.L495
	sh2add	t0,a5,a3
	sub	a0,t0,a4
	srai	a0,a0,2
.L500:
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
	beq	a2,zero,.L508
.L515:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L505
	beq	a5,zero,.L505
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L515
.L508:
	li	a0,0
	ret
.L505:
	lw	t0,0(a0)
	lw	t1,0(a1)
	li	a3,-1
	sgt	a0,t0,t1
	slt	t2,t0,t1
	th.mvnez	a0,a3,t2
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
	beq	a2,zero,.L520
.L528:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L527
	addi	a0,a0,4
	bne	a2,zero,.L528
.L520:
	li	a0,0
	ret
.L527:
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
	beq	a2,zero,.L535
.L545:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a5,a4,.L544
	addi	a1,a1,4
	bne	a2,zero,.L545
.L535:
	li	a0,0
	ret
.L544:
	li	a3,-1
	sgt	a0,a5,a4
	slt	t0,a5,a4
	th.mvnez	a0,a3,t0
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
	beq	a2,zero,.L553
	slli	a2,a2,2
	mv	a4,a0
.L548:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L548
.L553:
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
	beq	a0,a1,.L592
	slli	a4,a2,2
	sub	a5,a0,a1
	addi	t5,a2,-1
	bgeu	a5,a4,.L597
	beq	a2,zero,.L592
	sltiu	t4,t5,127
	bne	t4,zero,.L560
	csrr	t6,vlenb
	srli	a5,t6,3
	addi	t0,a5,-1
	bgtu	t0,t5,.L560
	addi	t1,a4,-4
	addi	a6,a4,-8
	add	t2,a0,t1
	add	a3,a1,a6
	sub	a7,t2,a3
	addi	t3,t6,-8
	add	t4,a7,t3
	bleu	t4,t3,.L560
	srli	t0,t6,2
	addi	a5,t0,-1
	bltu	t5,a5,.L574
	sub	a4,a4,t6
	neg	t1,t6
	add	a6,a1,a4
	add	a3,a0,a4
	sub	t2,a2,t0
	li	t6,0
.L562:
	vl1re32.v	v0,0(a6)
	add	t6,t6,t0
	add	a6,a6,t1
	vs1r.v	v0,0(a3)
	add	a3,a3,t1
	bgeu	t2,t6,.L562
	sub	t5,t5,t6
	beq	a2,t6,.L598
.L561:
	csrr	t0,vlenb
	srli	a4,t0,3
	sub	a7,a2,t6
	addi	t4,a4,-1
	addi	t3,a7,-1
	bltu	t3,t4,.L565
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
	bgeu	t4,a4,.L599
.L566:
	sub	t5,t5,a4
	beq	a7,a4,.L592
.L565:
	sh2add	a7,t5,a1
	sh2add	t6,t5,a0
.L568:
	lw	t5,0(a7)
	mv	t0,a7
	addi	t6,t6,-4
	sw	t5,4(t6)
	addi	a7,a7,-4
	bne	a1,t0,.L568
	ret
.L576:
	mv	a7,a0
	li	a1,-1
	j	.L571
.L600:
	addi	t3,t3,4
.L571:
	lw	a2,-4(t3)
	addi	t5,t5,-1
	addi	a7,a7,4
	sw	a2,-4(a7)
	bne	t5,a1,.L600
.L592:
	ret
.L597:
	beq	a2,zero,.L601
	addi	t3,a1,4
	csrr	t0,vlenb
	sub	a6,a0,t3
	addi	t1,t0,-8
	bleu	a6,t1,.L576
	mv	a3,a0
.L572:
	vsetvli	t2,a2,e8,mf4,ta,ma
	vle32.v	v1,0(a1)
	sub	a2,a2,t2
	sh2add	a1,t2,a1
	vse32.v	v1,0(a3)
	sh2add	a3,t2,a3
	bne	a2,zero,.L572
	ret
.L599:
	add	a4,a3,t6
	vle32.v	v3,0(a4)
	add	t3,a5,t6
	srli	a4,t0,2
	vse32.v	v3,0(t3)
	j	.L566
.L560:
	sh2add	a6,t5,a1
	sh2add	a3,t5,a0
.L569:
	lw	t2,0(a6)
	mv	a2,a6
	addi	a3,a3,-4
	sw	t2,4(a3)
	addi	a6,a6,-4
	bne	a1,a2,.L569
	ret
.L601:
	ret
.L574:
	li	t6,0
	j	.L561
.L598:
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
	beq	a2,zero,.L609
	vsetvli	a5,zero,e32,m1,ta,ma
	vmv.v.x	v1,a1
	mv	t0,a0
.L604:
	vsetvli	a4,a2,e8,mf4,ta,ma
	vse32.v	v1,0(t0)
	sub	a2,a2,a4
	sh2add	t0,a4,t0
	bne	a2,zero,.L604
.L609:
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
	bgeu	a0,a1,.L612
	add	a6,a0,a2
	add	a7,a1,a2
	beq	a2,zero,.L647
	addi	t5,a2,-1
	sltiu	t3,t5,511
	bne	t3,zero,.L649
	csrr	t6,vlenb
	srli	t4,t6,3
	addi	a4,t4,-1
	bgtu	a4,t5,.L649
	addi	a3,a2,-2
	add	t0,a0,a3
	add	a5,a1,t5
	sub	t1,a5,t0
	addi	t2,t6,-2
	add	t3,t1,t2
	bleu	t3,t2,.L649
	addi	t4,t6,-1
	bltu	t5,t4,.L628
	sub	a4,a2,t6
	add	a3,a0,a4
	add	t2,a1,a4
	neg	a5,t6
	sub	t1,a2,t6
	li	t0,0
.L616:
	vl1re8.v	v0,0(a3)
	add	t0,t0,t6
	add	a3,a3,a5
	vs1r.v	v0,0(t2)
	add	t2,t2,a5
	bgeu	t1,t0,.L616
	sub	t6,a2,t0
	sub	a6,a6,t0
	sub	a7,a7,t0
	mv	t3,t6
	beq	a2,t0,.L656
.L615:
	csrr	t4,vlenb
	srli	t1,t4,3
	sub	t5,t5,t0
	addi	a4,t1,-1
	bltu	t5,a4,.L618
	sub	a2,a2,t1
	sub	t0,a2,t0
	add	a0,a0,t0
	add	a1,a1,t0
	neg	a3,t1
	sub	t2,t6,t1
	li	a5,0
	vsetvli	t4,zero,e8,mf8,ta,ma
.L619:
	vle8.v	v2,0(a0)
	add	a5,a5,t1
	add	a0,a0,a3
	vse8.v	v2,0(a1)
	add	a1,a1,a3
	bgeu	t2,a5,.L619
	sub	t3,t3,a5
	sub	a6,a6,a5
	sub	a7,a7,a5
	beq	t6,a5,.L647
.L618:
	sub	t6,a6,t3
.L621:
	lbu	t1,-1(a6)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t1,0(a7)
	bne	t6,a6,.L621
	ret
.L612:
	bne	a0,a1,.L657
.L647:
	ret
.L649:
	lbu	t5,-1(a6)
	addi	a6,a6,-1
	addi	a7,a7,-1
	sb	t5,0(a7)
	bne	a0,a6,.L649
	ret
.L657:
	beq	a2,zero,.L647
	addi	t2,a0,1
	csrr	a4,vlenb
	sub	a3,a1,t2
	addi	t0,a4,-2
	bleu	a3,t0,.L624
.L625:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a0)
	sub	a2,a2,a5
	add	a0,a0,a5
	vse8.v	v1,0(a1)
	add	a1,a1,a5
	bne	a2,zero,.L625
	ret
.L624:
	add	a0,a0,a2
	j	.L626
.L658:
	addi	t2,t2,1
.L626:
	lbu	t1,-1(t2)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a0,t2,.L658
	ret
.L628:
	mv	t3,a2
	li	t0,0
	mv	t6,a2
	j	.L615
.L656:
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
	neg	a5,a2
	andi	t0,a5,63
	li	a4,31
	sub	a6,a4,t0
	sub	t2,a4,a2
	slli	a7,a1,1
	srli	a3,a0,1
	srl	t1,a0,t0
	sll	t4,a1,a2
	addi	t3,a2,-32
	sll	t5,a7,a6
	addi	t6,t0,-32
	srl	t2,a3,t2
	srl	a5,a1,t0
	slti	a4,t6,0
	srl	t0,a1,t6
	slti	a6,t3,0
	sll	a1,a0,t3
	or	a7,t5,t1
	sll	a2,a0,a2
	or	a0,t2,t4
	th.mvnez	a1,a0,a6
	th.mvnez	t0,a7,a4
	th.mveqz	a5,zero,a4
	th.mveqz	a2,zero,a6
	or	a0,t0,a2
	or	a1,a5,a1
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
	neg	a5,a2
	andi	t0,a5,63
	li	a4,31
	sub	a6,a4,t0
	sub	t2,a4,a2
	srli	a7,a0,1
	slli	a3,a1,1
	sll	t1,a1,t0
	srl	t4,a0,a2
	addi	t3,a2,-32
	srl	t5,a7,a6
	addi	t6,t0,-32
	sll	t2,a3,t2
	sll	a5,a0,t0
	slti	a4,t6,0
	sll	t0,a0,t6
	slti	a6,t3,0
	srl	a0,a1,t3
	or	a7,t5,t1
	srl	a2,a1,a2
	or	a1,t2,t4
	th.mvnez	a0,a1,a6
	th.mvnez	t0,a7,a4
	th.mveqz	a5,zero,a4
	th.mveqz	a2,zero,a6
	or	a1,t0,a2
	or	a0,a5,a0
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
	li	a5,32
	sub	t0,a5,a1
	rol	a0,a0,t0
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
	li	a5,32
	sub	t0,a5,a1
	rol	a0,a0,t0
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
	j	.L675
.L673:
	beq	a5,a3,.L678
.L675:
	bext	a4,a0,a5
	addi	a5,a5,1
	beq	a4,zero,.L673
	mv	a0,a5
	ret
.L678:
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
	beq	a0,zero,.L682
	andi	a0,a0,1
	bne	a0,zero,.L685
	li	a0,1
.L681:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L681
	ret
.L682:
	li	a0,0
.L685:
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
	bne	t0,zero,.L689
	lui	t1,%hi(.LC1)
	flw	ft0,%lo(.LC1)(t1)
	fgt.s	a0,fa0,ft0
.L689:
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
	fmv.x.w	a2,fa0
	fmvh.x.d	a1,fa0
	lui	a3,%hi(.LC2)
	addi	t0,a3,%lo(.LC2)
	fmvp.d.x	fa5,a2,a1
	fld	fa4,0(t0)
	li	a0,1
	flt.d	t1,fa5,fa4
	bne	t1,zero,.L694
	lui	t2,%hi(.LC3)
	addi	a0,t2,%lo(.LC3)
	fld	ft0,0(a0)
	fgt.d	a0,fa5,ft0
.L694:
	ret
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
	blt	a0,zero,.L699
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
.L699:
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
	beq	a5,zero,.L717
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L717
	fli.s	ft0,2.0
	bge	a0,zero,.L706
	fli.s	ft0,0.5
.L706:
	andi	t1,a0,1
	beq	t1,zero,.L707
.L708:
	fmul.s	fa0,fa0,ft0
.L707:
	srli	t2,a0,31
	add	a0,t2,a0
	srai	a0,a0,1
	beq	a0,zero,.L717
	srli	a1,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a2,a1,a0
	bne	a4,zero,.L708
.L719:
	srai	a0,a2,1
	srli	a1,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	add	a2,a1,a0
	bne	a4,zero,.L708
	j	.L719
.L717:
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
	fmv.x.w	a2,fa0
	fmvh.x.d	a3,fa0
	fmvp.d.x	fa0,a2,a3
	feq.d	t0,fa0,fa0
	beq	t0,zero,.L733
	fadd.d	fa5,fa0,fa0
	feq.d	t1,fa5,fa0
	bne	t1,zero,.L733
	fli.d	ft0,2.0
	bge	a0,zero,.L722
	fli.d	ft0,0.5
.L722:
	andi	t2,a0,1
	beq	t2,zero,.L723
.L724:
	fmul.d	fa0,fa0,ft0
.L723:
	srli	a1,a0,31
	add	a0,a1,a0
	srai	a0,a0,1
	beq	a0,zero,.L733
	srli	a6,a0,31
	andi	a7,a0,1
	fmul.d	ft0,ft0,ft0
	add	t3,a6,a0
	bne	a7,zero,.L724
.L735:
	srai	a0,t3,1
	srli	a6,a0,31
	andi	a7,a0,1
	fmul.d	ft0,ft0,ft0
	add	t3,a6,a0
	bne	a7,zero,.L724
	j	.L735
.L733:
	ret
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
	bne	a0,zero,.L737
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
	beq	a0,zero,.L737
	sw	s1,100(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	.cfi_offset 9, -12
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	blt	s0,zero,.L753
	lui	t0,%hi(.LC6)
	addi	t1,t0,%lo(.LC6)
	lw	s1,0(t1)
	lw	s7,4(t1)
	lw	s8,8(t1)
	lw	s9,12(t1)
.L739:
	andi	a1,s0,1
	beq	a1,zero,.L740
.L741:
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
.L740:
	srli	a6,s0,31
	add	s0,a6,s0
	srai	s0,s0,1
	beq	s0,zero,.L752
.L742:
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
	bne	a7,zero,.L741
	srai	s0,t3,1
	j	.L742
.L752:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L737:
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
.L753:
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
	lui	t2,%hi(.LC7)
	addi	a0,t2,%lo(.LC7)
	lw	s1,0(a0)
	lw	s7,4(a0)
	lw	s8,8(a0)
	lw	s9,12(a0)
	j	.L739
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L761
	mv	a4,a0
	mv	a3,a0
.L756:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	vle8.v	v2,0(a3)
	sub	a2,a2,a5
	add	a1,a1,a5
	add	a3,a3,a5
	vxor.vv	v0,v1,v2
	vse8.v	v0,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L756
.L761:
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
	beq	a5,zero,.L770
	li	a4,0
	addi	t0,a0,1
.L765:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a6,v0
	blt	a6,zero,.L765
	add	t2,t0,a6
.L780:
	beq	a2,zero,.L767
.L783:
	lbu	t1,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t1,0(t2)
	beq	t1,zero,.L782
	addi	t2,t2,1
	bne	a2,zero,.L783
.L767:
	sb	zero,0(t2)
	ret
.L782:
	ret
.L770:
	mv	t2,a0
	j	.L780
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
	beq	a1,zero,.L791
.L785:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L787
.L791:
	ret
.L787:
	addi	a0,a0,1
	bne	a1,a0,.L785
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
	beq	a3,zero,.L799
.L806:
	mv	a5,a1
	j	.L798
.L797:
	beq	a4,a3,.L801
.L798:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L797
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L806
.L799:
	li	a0,0
.L801:
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
	mv	a5,a0
	li	a0,0
.L808:
	lbu	a4,0(a5)
	sub	a3,a4,a1
	th.mveqz	a0,a5,a3
	addi	a5,a5,1
	bne	a4,zero,.L808
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
	beq	a7,zero,.L823
	li	a4,0
	addi	a5,a1,1
.L812:
	vsetvli	a2,zero,e8,m1,ta,ma
	add	a5,a5,a4
	vle8ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a0,v0
	blt	a0,zero,.L812
	add	t0,a5,a0
	sub	t3,t0,a1
	mv	a0,a3
	addi	t5,t3,-1
	bne	t0,a1,.L832
	ret
.L836:
	addi	a3,a3,1
	beq	t2,zero,.L835
.L832:
	lbu	t2,0(a3)
	bne	t2,a7,.L836
	add	t1,a3,t5
	mv	a2,a1
	mv	t4,a3
	mv	t6,a7
.L814:
	beq	t1,t4,.L816
	addi	t4,t4,1
	bne	t6,t2,.L817
	lbu	t2,0(t4)
	lbu	t6,1(a2)
	addi	a6,a2,1
	beq	t2,zero,.L816
	mv	a2,a6
	bne	t6,zero,.L814
.L817:
	addi	a3,a3,1
	j	.L832
.L835:
	li	a0,0
	ret
.L816:
	bne	t2,t6,.L817
.L823:
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
	fmv.x.w	a6,fa0
	fmvh.x.d	t2,fa0
	fcvt.d.w	fa4,x0
	fmv.x.w	a0,fa1
	fmvp.d.x	fa0,a6,t2
	fmvh.x.d	a1,fa1
	flt.d	t0,fa0,fa4
	fmvp.d.x	fa5,a0,a1
	bne	t0,zero,.L851
	fgt.d	t1,fa0,fa4
	beq	t1,zero,.L847
	flt.d	a7,fa5,fa4
	bne	a7,zero,.L840
.L847:
	ret
.L840:
	fneg.d	fa0,fa0
	ret
.L851:
	fgt.d	t3,fa5,fa4
	bne	t3,zero,.L840
	ret
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	1
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L868
	bltu	a1,a3,.L863
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L863
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L858:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L869
	mv	a0,t1
.L854:
	bgeu	a7,a0,.L858
.L863:
	li	a0,0
.L868:
	ret
.L869:
	mv	t5,a2
	beq	a3,zero,.L868
.L857:
	mv	t2,t1
	add	t6,t1,a3
	j	.L855
.L856:
	beq	t2,t6,.L868
.L855:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L856
	bltu	a7,t1,.L863
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L854
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L857
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
	beq	a2,zero,.L875
	call	memmove
.L875:
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
	fmv.x.w	a2,fa0
	fmvh.x.d	a3,fa0
	fcvt.d.w	fa5,x0
	fmvp.d.x	fa0,a2,a3
	flt.d	t0,fa0,fa5
	bne	t0,zero,.L905
	fli.d	fa4,1.0
	li	a2,0
	fge.d	t1,fa0,fa4
	beq	t1,zero,.L906
.L880:
	fli.d	ft5,0.5
	fli.d	ft6,1.0
	li	t5,0
.L886:
	fmul.d	fa0,fa0,ft5
	addi	t5,t5,1
	fge.d	a3,fa0,ft6
	bne	a3,zero,.L886
	sw	t5,0(a0)
	beq	a2,zero,.L900
.L908:
	fneg.d	fa0,fa0
.L900:
	ret
.L906:
	fli.d	ft0,0.5
	flt.d	t2,fa0,ft0
	beq	t2,zero,.L883
	feq.d	a1,fa0,fa5
	beq	a1,zero,.L892
.L883:
	sw	zero,0(a0)
	ret
.L905:
	fli.d	ft2,-1.0
	fneg.d	ft1,fa0
	fle.d	a6,fa0,ft2
	beq	a6,zero,.L907
	fmv.d	fa0,ft1
	li	a2,1
	j	.L880
.L907:
	lui	a7,%hi(.LC8)
	addi	t3,a7,%lo(.LC8)
	fld	ft3,0(t3)
	fgt.d	t4,fa0,ft3
	beq	t4,zero,.L883
	li	a2,1
.L881:
	fmv.d	fa0,ft1
	fli.d	ft4,0.5
	li	t5,0
.L888:
	fadd.d	fa0,fa0,fa0
	addi	t5,t5,-1
	flt.d	t6,fa0,ft4
	bne	t6,zero,.L888
	sw	t5,0(a0)
	bne	a2,zero,.L908
	ret
.L892:
	fmv.d	ft1,fa0
	j	.L881
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	or	a4,a1,a0
	mv	t6,a0
	mv	a6,a1
	li	a0,0
	li	a1,0
	beq	a4,zero,.L913
.L912:
	th.ext	t0,t6,0,0
	and	t2,t0,a2
	th.ext	a7,t6,0,0
	slli	t1,a6,31
	srli	a5,t6,1
	add	t4,a0,t2
	and	t5,a7,a3
	or	t6,t1,a5
	srli	a6,a6,1
	sltu	t3,t4,a0
	srli	a4,a2,31
	add	a1,a1,t5
	slli	a3,a3,1
	or	t0,t6,a6
	mv	a0,t4
	add	a1,t3,a1
	or	a3,a4,a3
	slli	a2,a2,1
	bne	t0,zero,.L912
	ret
.L913:
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
	li	a4,32
	li	t1,1
	bltu	a1,a0,.L917
	j	.L937
.L921:
	slli	a1,a1,1
	slli	t1,t1,1
	bleu	a0,a1,.L919
	beq	a4,zero,.L920
.L917:
	addi	a4,a4,-1
	bge	a1,zero,.L921
.L922:
	li	a4,0
.L923:
	sltu	a3,a0,a1
	xori	t0,a3,1
	mv	a7,t1
	sub	a6,a0,a1
	th.mveqz	a7,zero,t0
	srli	t1,t1,1
	or	a4,a4,a7
	th.mvnez	a0,a6,t0
	srli	a1,a1,1
	bne	t1,zero,.L923
.L920:
	th.mveqz	a0,a4,a2
	ret
.L919:
	bne	t1,zero,.L922
	li	a4,0
	j	.L920
.L937:
	sub	a5,a0,a1
	cv.sleu	a4, a1, a0
	th.mvnez	a0,a5,a4
	j	.L920
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	slli	a5,a0,8
	clz	t0,a5
	mv	a4,a0
	li	t1,7
	addi	a0,t0,-1
	th.mveqz	a0,t1,a4
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
	beq	a0,a4,.L951
.L948:
	clz	a0,a5
	addi	t0,a0,32
	clz	t1,a3
	th.mvnez	t0,t1,a3
	addi	a0,t0,-1
	ret
.L951:
	bne	a1,a0,.L948
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
	beq	a5,zero,.L955
.L954:
	th.ext	a4,a5,0,0
	and	t0,a4,a1
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L954
	ret
.L955:
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
	bltu	a0,a1,.L962
	add	a5,a1,a2
	bleu	a0,a5,.L1008
.L962:
	beq	a3,zero,.L961
	addi	t3,a1,8
	csrr	a6,vlenb
	sub	a7,a0,t3
	addi	t0,a6,-16
	bleu	a7,t0,.L965
	mv	t6,a0
	mv	t5,a1
.L966:
	vsetvli	t4,a3,e8,mf8,ta,ma
	vle64.v	v2,0(t5)
	sub	a3,a3,t4
	sh3add	t5,t4,t5
	vse64.v	v2,0(t6)
	sh3add	t6,t4,t6
	bne	a3,zero,.L966
.L961:
	bleu	a2,a4,.L999
	addi	a7,a4,1
	add	a0,a0,a4
	add	t0,a1,a7
	csrr	t4,vlenb
	sub	t5,a0,t0
	addi	a3,t4,-2
	bleu	t5,a3,.L969
	sub	a2,a2,a4
	add	a1,a1,a4
.L970:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a0)
	add	a0,a0,a4
	bne	a2,zero,.L970
	ret
.L1008:
	addi	a5,a2,-1
	beq	a2,zero,.L1009
	csrr	a7,vlenb
	srli	t0,a7,3
	addi	t1,t0,-1
	bgtu	t1,a5,.L1000
	sltiu	t2,a5,511
	beq	t2,zero,.L998
.L1000:
	add	t2,a0,a5
.L973:
	li	a2,-1
	j	.L982
.L1010:
	add	t2,a0,a5
.L982:
	add	a4,a1,a5
	lbu	t1,0(a4)
	addi	a5,a5,-1
	sb	t1,0(t2)
	bne	a5,a2,.L1010
.L999:
	ret
.L998:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	t2,a0,a5
	sub	t3,t2,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L973
	addi	t6,a7,-1
	bltu	a5,t6,.L984
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a3,a0,t1
	neg	t2,a7
	sub	t3,a2,a7
	li	a4,0
.L975:
	vl1re8.v	v1,0(a6)
	add	a4,a4,a7
	add	a6,a6,t2
	vs1r.v	v1,0(a3)
	add	a3,a3,t2
	bgeu	t3,a4,.L975
	sub	a5,a5,a4
	beq	a2,a4,.L999
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t0,a2,a4
	bltu	a5,t4,.L978
.L974:
	csrr	t5,vlenb
	srli	t6,t5,3
	sub	a2,a2,t6
	sub	a4,a2,a4
	add	a3,a1,a4
	add	a7,a0,a4
	neg	t1,t6
	sub	t2,t0,t6
	li	a6,0
	vsetvli	t3,zero,e8,mf8,ta,ma
.L979:
	vle8.v	v0,0(a3)
	add	a6,a6,t6
	add	a3,a3,t1
	vse8.v	v0,0(a7)
	add	a7,a7,t1
	bgeu	t2,a6,.L979
	sub	a5,a5,a6
	beq	t0,a6,.L999
.L978:
	li	t0,-1
.L981:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t6,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t6)
	bne	a5,t0,.L981
	ret
.L965:
	sh3add	t2,a3,a1
	mv	a5,a1
	mv	t1,a0
.L968:
	lw	t3,0(a5)
	lw	a6,4(a5)
	addi	a5,a5,8
	sw	t3,0(t1)
	sw	a6,4(t1)
	addi	t1,t1,8
	bne	a5,t2,.L968
	j	.L961
.L969:
	add	t3,a1,a4
	add	t6,a1,a2
.L972:
	lbu	t2,0(t3)
	addi	t3,t3,1
	addi	a0,a0,1
	sb	t2,-1(a0)
	bne	t3,t6,.L972
	ret
.L1009:
	ret
.L984:
	mv	t0,a2
	li	a4,0
	j	.L974
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
	bltu	a0,a1,.L1015
	add	a5,a1,a2
	bleu	a0,a5,.L1056
.L1015:
	beq	a4,zero,.L1014
	addi	a6,a1,2
	csrr	t3,vlenb
	sub	a7,a0,a6
	addi	t6,t3,-4
	bleu	a7,t6,.L1018
	mv	t1,a0
	mv	t5,a1
.L1019:
	vsetvli	t4,a4,e8,mf2,ta,ma
	vle16.v	v2,0(t5)
	sub	a4,a4,t4
	sh1add	t5,t4,t5
	vse16.v	v2,0(t1)
	sh1add	t1,t4,t1
	bne	a4,zero,.L1019
.L1014:
	andi	a6,a2,1
	beq	a6,zero,.L1049
.L1059:
	add	a1,a1,a2
	lbu	t3,-1(a1)
	add	a0,a0,a2
	sb	t3,-1(a0)
	ret
.L1056:
	addi	a5,a2,-1
	beq	a2,zero,.L1057
	csrr	a7,vlenb
	srli	a4,a7,3
	addi	t0,a4,-1
	bgtu	t0,a5,.L1050
	sltiu	t1,a5,511
	beq	t1,zero,.L1048
.L1050:
	add	a3,a0,a5
.L1023:
	li	a2,-1
	j	.L1031
.L1058:
	add	a3,a0,a5
.L1031:
	add	t0,a1,a5
	lbu	t2,0(t0)
	addi	a5,a5,-1
	sb	t2,0(a3)
	bne	a5,a2,.L1058
.L1049:
	ret
.L1048:
	addi	t2,a2,-2
	add	a6,a1,t2
	add	a3,a0,a5
	sub	t3,a3,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1023
	addi	a3,a7,-1
	bltu	a5,a3,.L1033
	sub	a4,a2,a7
	add	a6,a1,a4
	add	t3,a0,a4
	neg	t1,a7
	sub	t2,a2,a7
	li	t0,0
.L1025:
	vl1re8.v	v1,0(a6)
	add	t0,t0,a7
	add	a6,a6,t1
	vs1r.v	v1,0(t3)
	add	t3,t3,t1
	bgeu	t2,t0,.L1025
	sub	a5,a5,t0
	beq	a2,t0,.L1049
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t6,a2,t0
	bltu	a5,t4,.L1027
.L1024:
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
.L1028:
	vle8.v	v0,0(a7)
	add	t3,t3,t1
	add	a7,a7,t0
	vse8.v	v0,0(a4)
	add	a4,a4,t0
	bgeu	t2,t3,.L1028
	sub	a5,a5,t3
	beq	t6,t3,.L1049
.L1027:
	li	t6,-1
.L1030:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t1,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t1)
	bne	a5,t6,.L1030
	ret
.L1018:
	sh1add	t0,a4,a1
	mv	a5,a1
	mv	a3,a0
.L1021:
	lh	t2,0(a5)
	addi	a5,a5,2
	addi	a3,a3,2
	sh	t2,-2(a3)
	bne	a5,t0,.L1021
	andi	a6,a2,1
	beq	a6,zero,.L1049
	j	.L1059
.L1057:
	ret
.L1033:
	mv	t6,a2
	li	t0,0
	j	.L1024
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
	bltu	a0,a1,.L1064
	add	a5,a1,a2
	bleu	a0,a5,.L1110
.L1064:
	beq	a3,zero,.L1063
	addi	t3,a1,4
	csrr	a6,vlenb
	sub	a7,a0,t3
	addi	t0,a6,-8
	bleu	a7,t0,.L1067
	mv	t6,a0
	mv	t5,a1
.L1068:
	vsetvli	t4,a3,e8,mf4,ta,ma
	vle32.v	v2,0(t5)
	sub	a3,a3,t4
	sh2add	t5,t4,t5
	vse32.v	v2,0(t6)
	sh2add	t6,t4,t6
	bne	a3,zero,.L1068
.L1063:
	bleu	a2,a4,.L1101
	addi	a6,a4,1
	add	a0,a0,a4
	add	a7,a1,a6
	csrr	t0,vlenb
	sub	t4,a0,a7
	addi	a3,t0,-2
	bleu	t4,a3,.L1071
	sub	a2,a2,a4
	add	a1,a1,a4
.L1072:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a0)
	add	a0,a0,a4
	bne	a2,zero,.L1072
	ret
.L1110:
	addi	a5,a2,-1
	beq	a2,zero,.L1111
	csrr	a7,vlenb
	srli	t0,a7,3
	addi	t1,t0,-1
	bgtu	t1,a5,.L1102
	sltiu	t2,a5,511
	beq	t2,zero,.L1100
.L1102:
	add	t2,a0,a5
.L1075:
	li	a2,-1
	j	.L1084
.L1112:
	add	t2,a0,a5
.L1084:
	add	a4,a1,a5
	lbu	t1,0(a4)
	addi	a5,a5,-1
	sb	t1,0(t2)
	bne	a5,a2,.L1112
.L1101:
	ret
.L1100:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	t2,a0,a5
	sub	t3,t2,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1075
	addi	t6,a7,-1
	bltu	a5,t6,.L1086
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a3,a0,t1
	neg	t2,a7
	sub	t3,a2,a7
	li	a4,0
.L1077:
	vl1re8.v	v1,0(a6)
	add	a4,a4,a7
	add	a6,a6,t2
	vs1r.v	v1,0(a3)
	add	a3,a3,t2
	bgeu	t3,a4,.L1077
	sub	a5,a5,a4
	beq	a2,a4,.L1101
	srli	a7,a7,3
	addi	t4,a7,-1
	sub	t0,a2,a4
	bltu	a5,t4,.L1080
.L1076:
	csrr	t5,vlenb
	srli	t6,t5,3
	sub	a2,a2,t6
	sub	a4,a2,a4
	add	a3,a1,a4
	add	a7,a0,a4
	neg	t1,t6
	sub	t2,t0,t6
	li	a6,0
	vsetvli	t3,zero,e8,mf8,ta,ma
.L1081:
	vle8.v	v0,0(a3)
	add	a6,a6,t6
	add	a3,a3,t1
	vse8.v	v0,0(a7)
	add	a7,a7,t1
	bgeu	t2,a6,.L1081
	sub	a5,a5,a6
	beq	t0,a6,.L1101
.L1080:
	li	t0,-1
.L1083:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t6,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t6)
	bne	a5,t0,.L1083
	ret
.L1067:
	sh2add	t1,a3,a1
	mv	a5,a1
	mv	t3,a0
.L1070:
	lw	t2,0(a5)
	addi	a5,a5,4
	addi	t3,t3,4
	sw	t2,-4(t3)
	bne	a5,t1,.L1070
	j	.L1063
.L1071:
	add	t1,a1,a4
	add	t5,a1,a2
.L1074:
	lbu	t6,0(t1)
	addi	t1,t1,1
	addi	a0,a0,1
	sb	t6,-1(a0)
	bne	t1,t5,.L1074
	ret
.L1111:
	ret
.L1086:
	mv	t0,a2
	li	a4,0
	j	.L1076
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
	bne	a4,zero,.L1124
	srai	a0,a0,14
	bne	a0,zero,.L1139
	srai	t0,a5,13
	bne	t0,zero,.L1125
	srai	t1,a5,12
	bne	t1,zero,.L1126
	srai	t2,a5,11
	bne	t2,zero,.L1127
	srai	a0,a5,10
	bne	a0,zero,.L1128
	srai	a1,a5,9
	bne	a1,zero,.L1129
	srai	a2,a5,8
	bne	a2,zero,.L1130
	seqz	a3,a5
	srai	a6,a5,1
	addi	a0,a3,15
	li	a7,14
	srai	t3,a5,2
	th.mvnez	a0,a7,a6
	li	t4,13
	srai	t5,a5,3
	th.mvnez	a0,t4,t3
	li	t6,12
	srai	t0,a5,4
	th.mvnez	a0,t6,t5
	li	a4,11
	srai	t1,a5,5
	th.mvnez	a0,a4,t0
	li	t2,10
	srai	a1,a5,6
	th.mvnez	a0,t2,t1
	li	a2,9
	srai	a5,a5,7
	th.mvnez	a0,a2,a1
	li	a3,8
	th.mvnez	a0,a3,a5
	ret
.L1130:
	li	a0,7
.L1139:
	ret
.L1124:
	li	a0,0
	ret
.L1125:
	li	a0,2
	ret
.L1126:
	li	a0,3
	ret
.L1127:
	li	a0,4
	ret
.L1128:
	li	a0,5
	ret
.L1129:
	li	a0,6
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
	bne	a5,zero,.L1143
	andi	t0,a0,2
	bne	t0,zero,.L1144
	andi	t1,a0,4
	bne	t1,zero,.L1145
	andi	t2,a0,8
	bne	t2,zero,.L1146
	andi	a1,a0,16
	bne	a1,zero,.L1147
	andi	a2,a0,32
	bne	a2,zero,.L1148
	andi	a3,a0,64
	bne	a3,zero,.L1149
	andi	a4,a0,128
	bne	a4,zero,.L1150
	andi	a6,a0,256
	bne	a6,zero,.L1151
	andi	a7,a0,512
	bne	a7,zero,.L1152
	andi	t3,a0,1024
	bne	t3,zero,.L1153
	slli	t4,a0,20
	blt	t4,zero,.L1154
	slli	t5,a0,19
	blt	t5,zero,.L1155
	slli	t6,a0,18
	blt	t6,zero,.L1156
	slli	a5,a0,17
	blt	a5,zero,.L1157
	srai	a0,a0,15
	seqz	t0,a0
	addi	a0,t0,15
	ret
.L1143:
	li	a0,0
	ret
.L1144:
	li	a0,1
	ret
.L1155:
	li	a0,12
	ret
.L1145:
	li	a0,2
	ret
.L1146:
	li	a0,3
	ret
.L1147:
	li	a0,4
	ret
.L1148:
	li	a0,5
	ret
.L1149:
	li	a0,6
	ret
.L1150:
	li	a0,7
	ret
.L1151:
	li	a0,8
	ret
.L1152:
	li	a0,9
	ret
.L1153:
	li	a0,10
	ret
.L1154:
	li	a0,11
	ret
.L1156:
	li	a0,13
	ret
.L1157:
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
	fli.s	fa5,32768.0
	fge.s	a5,fa0,fa5
	bne	a5,zero,.L1168
	fcvt.w.s a0,fa0,rtz
	ret
.L1168:
	fsub.s	fa0,fa0,fa5
	li	t0,32768
	fcvt.w.s a0,fa0,rtz
	add	a0,a0,t0
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
	beq	a5,zero,.L1174
.L1173:
	th.ext	a4,a5,0,0
	and	t0,a4,a1
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L1173
	ret
.L1174:
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
	beq	a4,zero,.L1180
	beq	a1,zero,.L1181
.L1179:
	th.ext	a5,a1,0,0
	and	t0,a5,a4
	srli	a1,a1,1
	add	a0,a0,t0
	slli	a4,a4,1
	bne	a1,zero,.L1179
	ret
.L1180:
	ret
.L1181:
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
	li	a4,32
	li	t1,1
	bgtu	a0,a1,.L1185
	j	.L1205
.L1189:
	slli	a1,a1,1
	slli	t1,t1,1
	bleu	a0,a1,.L1187
	beq	a4,zero,.L1188
.L1185:
	addi	a4,a4,-1
	bge	a1,zero,.L1189
.L1190:
	li	a4,0
.L1191:
	sltu	a3,a0,a1
	xori	t0,a3,1
	mv	a7,t1
	sub	a6,a0,a1
	th.mveqz	a7,zero,t0
	srli	t1,t1,1
	or	a4,a4,a7
	th.mvnez	a0,a6,t0
	srli	a1,a1,1
	bne	t1,zero,.L1191
.L1188:
	th.mveqz	a0,a4,a2
	ret
.L1187:
	bne	t1,zero,.L1190
	li	a4,0
	j	.L1188
.L1205:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	th.mveqz	a0,a5,a1
	xori	a4,a1,1
	j	.L1188
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
	bne	a5,zero,.L1210
	fgt.s	a0,fa0,fa1
.L1210:
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
	fmv.x.w	t1,fa0
	fmvh.x.d	a6,fa0
	fmv.x.w	a1,fa1
	fmvh.x.d	t4,fa1
	fmvp.d.x	fa4,t1,a6
	li	a0,-1
	fmvp.d.x	fa5,a1,t4
	flt.d	t0,fa4,fa5
	bne	t0,zero,.L1215
	fgt.d	a0,fa4,fa5
.L1215:
	ret
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
	blt	a1,zero,.L1233
	beq	a1,zero,.L1225
	li	a2,0
.L1221:
	li	t1,32
	li	a3,0
	j	.L1224
.L1234:
	beq	t1,zero,.L1223
.L1224:
	th.ext	a4,a1,0,0
	and	t0,a4,a0
	addi	a5,t1,-1
	srai	a1,a1,1
	andi	t1,a5,0xff
	add	a3,a3,t0
	slli	a0,a0,1
	bne	a1,zero,.L1234
.L1223:
	neg	a0,a3
	th.mveqz	a0,a3,a2
	ret
.L1233:
	neg	a1,a1
	li	a2,1
	j	.L1221
.L1225:
	li	a0,0
	ret
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
	li	a7,0
	blt	a0,zero,.L1263
.L1236:
	bge	a1,zero,.L1237
	neg	a1,a1
	mv	a7,a5
.L1237:
	mv	a2,a0
	mv	t2,a1
	li	a3,32
	li	a4,1
	bgtu	a0,a1,.L1238
	j	.L1260
.L1242:
	beq	a3,zero,.L1243
.L1238:
	slli	t2,t2,1
	addi	a3,a3,-1
	slli	a4,a4,1
	bgtu	a0,t2,.L1242
.L1243:
	li	a0,0
	beq	a4,zero,.L1241
.L1240:
	sltu	t0,a2,t2
	xori	t1,t0,1
	mv	a6,a4
	sub	a1,a2,t2
	th.mveqz	a6,zero,t1
	srli	a4,a4,1
	or	a0,a0,a6
	th.mvnez	a2,a1,t1
	srli	t2,t2,1
	bne	a4,zero,.L1240
.L1241:
	neg	t3,a0
	th.mvnez	a0,t3,a7
	ret
.L1263:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1236
.L1260:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1241
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
	bge	a0,zero,.L1265
	neg	a0,a0
	li	a6,1
.L1265:
	neg	a5,a1
	max	a7,a1,a5
	mv	a3,a0
	li	a4,32
	li	t2,1
	bgtu	a0,a7,.L1266
	j	.L1287
.L1270:
	beq	a4,zero,.L1271
.L1266:
	slli	a7,a7,1
	addi	a4,a4,-1
	slli	t2,t2,1
	bgtu	a0,a7,.L1270
.L1271:
	beq	t2,zero,.L1290
.L1268:
	sltu	t1,a3,a7
	sub	a2,a3,a7
	xori	a0,t1,1
	srli	t2,t2,1
	th.mvnez	a3,a2,a0
	srli	a7,a7,1
	bne	t2,zero,.L1268
.L1269:
	neg	a0,a3
	th.mveqz	a0,a3,a6
	ret
.L1290:
	mv	a3,a0
	neg	a0,a3
	th.mveqz	a0,a3,a6
	ret
.L1287:
	sub	t0,a0,a7
	sltu	a1,a0,a7
	th.mveqz	a3,t0,a1
	j	.L1269
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	bgeu	a1,a0,.L1374
	sext.h	a5,a1
	blt	a5,zero,.L1294
	slli	t1,a1,1
	zext.h	t4,t1
	bleu	a0,t4,.L1301
	sext.h	a3,t4
	blt	a3,zero,.L1301
	slli	a6,a1,2
	zext.h	t4,a6
	bleu	a0,t4,.L1303
	sext.h	a7,t4
	blt	a7,zero,.L1303
	slli	t4,a1,3
	zext.h	t4,t4
	bleu	a0,t4,.L1305
	sext.h	t5,t4
	blt	t5,zero,.L1305
	slli	t6,a1,4
	zext.h	t4,t6
	bleu	a0,t4,.L1307
	sext.h	a4,t4
	blt	a4,zero,.L1307
	slli	a5,a1,5
	zext.h	t4,a5
	bleu	a0,t4,.L1309
	sext.h	t0,t4
	blt	t0,zero,.L1309
	slli	t2,a1,6
	zext.h	t4,t2
	bleu	a0,t4,.L1311
	sext.h	t3,t4
	blt	t3,zero,.L1311
	slli	t1,a1,7
	zext.h	t4,t1
	bleu	a0,t4,.L1313
	sext.h	a3,t4
	blt	a3,zero,.L1313
	slli	a6,a1,8
	zext.h	t4,a6
	bleu	a0,t4,.L1315
	sext.h	a7,t4
	blt	a7,zero,.L1315
	slli	t4,a1,9
	zext.h	t4,t4
	bleu	a0,t4,.L1317
	sext.h	t5,t4
	blt	t5,zero,.L1317
	slli	t6,a1,10
	zext.h	t4,t6
	bleu	a0,t4,.L1319
	sext.h	a4,t4
	blt	a4,zero,.L1319
	slli	a5,a1,11
	zext.h	t4,a5
	bleu	a0,t4,.L1321
	sext.h	t0,t4
	blt	t0,zero,.L1321
	slli	t2,a1,12
	zext.h	t4,t2
	bleu	a0,t4,.L1323
	sext.h	t3,t4
	blt	t3,zero,.L1323
	slli	t1,a1,13
	zext.h	t4,t1
	bleu	a0,t4,.L1325
	sext.h	a3,t4
	blt	a3,zero,.L1325
	slli	a6,a1,14
	zext.h	t4,a6
	bleu	a0,t4,.L1327
	sext.h	a7,t4
	blt	a7,zero,.L1327
	slli	a1,a1,15
	zext.h	t3,a1
	bleu	a0,t3,.L1328
	li	t5,32768
	mv	t2,a0
	mv	t4,t5
	bne	t3,zero,.L1296
.L1297:
	th.mvnez	t3,t2,a2
	mv	a0,t3
	ret
.L1301:
	li	t5,2
.L1296:
	sltu	a4,a0,t4
	sub	t6,a0,t4
	zext.h	a5,t6
	xori	t0,a4,1
	th.mveqz	a5,a0,t0
	zext.h	t2,a5
	srli	a0,t4,1
	sub	t1,t2,a0
	cv.sleu	a7, a0, t2
	sgtu	a1,a0,t2
	mv	t3,t5
	srli	a3,t5,1
	zext.h	a6,t1
	th.mvnez	t3,zero,a4
	th.mveqz	a6,t2,a7
	th.mvnez	a3,zero,a1
	srli	t6,t5,2
	zext.h	t2,a6
	or	t3,t3,a3
	srli	a4,t4,2
	beq	t6,zero,.L1297
	sub	a5,t2,a4
	cv.sleu	a0, a4, t2
	zext.h	t0,a5
	th.mvnez	t2,t0,a0
	th.mveqz	t6,zero,a0
	srli	t1,t5,3
	zext.h	t2,t2
	or	t3,t3,t6
	srli	a6,t4,3
	beq	t1,zero,.L1297
	sub	a7,t2,a6
	cv.sleu	a3, a6, t2
	zext.h	a1,a7
	th.mvnez	t2,a1,a3
	th.mveqz	t1,zero,a3
	srli	t6,t5,4
	zext.h	t2,t2
	or	t3,t3,t1
	srli	a4,t4,4
	beq	t6,zero,.L1297
	sub	a5,t2,a4
	sltu	t0,t2,a4
	xori	t1,t0,1
	zext.h	a0,a5
	th.mvnez	t2,a0,t1
	th.mveqz	t6,zero,t1
	srli	a6,t5,5
	zext.h	t2,t2
	or	t3,t3,t6
	srli	a7,t4,5
	beq	a6,zero,.L1297
	sub	a1,t2,a7
	sltu	a3,t2,a7
	xori	a4,a3,1
	zext.h	t6,a1
	th.mvnez	t2,t6,a4
	th.mveqz	a6,zero,a4
	srli	a5,t5,6
	zext.h	t2,t2
	or	t3,t3,a6
	srli	t0,t4,6
	beq	a5,zero,.L1297
	sub	a0,t2,t0
	sltu	t1,t2,t0
	xori	a7,t1,1
	zext.h	a6,a0
	th.mvnez	t2,a6,a7
	th.mveqz	a5,zero,a7
	srli	a1,t5,7
	zext.h	t2,t2
	or	t3,t3,a5
	srli	a3,t4,7
	beq	a1,zero,.L1297
	sub	t6,t2,a3
	sltu	a4,t2,a3
	xori	t0,a4,1
	zext.h	a5,t6
	th.mvnez	t2,a5,t0
	th.mveqz	a1,zero,t0
	srli	a6,t5,8
	zext.h	t2,t2
	or	t3,t3,a1
	srli	t1,t4,8
	beq	a6,zero,.L1297
	sub	a0,t2,t1
	sltu	a7,t2,t1
	xori	a3,a7,1
	zext.h	a1,a0
	th.mvnez	t2,a1,a3
	th.mveqz	a6,zero,a3
	srli	t6,t5,9
	zext.h	t2,t2
	or	t3,t3,a6
	srli	a4,t4,9
	beq	t6,zero,.L1297
	sub	a5,t2,a4
	sltu	t0,t2,a4
	xori	t1,t0,1
	zext.h	a6,a5
	th.mvnez	t2,a6,t1
	th.mveqz	t6,zero,t1
	srli	a7,t5,10
	zext.h	t2,t2
	or	t3,t3,t6
	srli	a1,t4,10
	beq	a7,zero,.L1297
	sub	a0,t2,a1
	sltu	a3,t2,a1
	xori	a4,a3,1
	zext.h	t6,a0
	th.mvnez	t2,t6,a4
	th.mveqz	a7,zero,a4
	srli	a5,t5,11
	zext.h	t2,t2
	or	t3,t3,a7
	srli	t0,t4,11
	beq	a5,zero,.L1297
	sub	a6,t2,t0
	sltu	t1,t2,t0
	xori	a1,t1,1
	zext.h	a7,a6
	th.mvnez	t2,a7,a1
	th.mveqz	a5,zero,a1
	srli	t6,t5,12
	zext.h	t2,t2
	or	t3,t3,a5
	srli	a3,t4,12
	beq	t6,zero,.L1297
	sub	a0,t2,a3
	sltu	a4,t2,a3
	xori	t0,a4,1
	zext.h	a5,a0
	th.mvnez	t2,a5,t0
	th.mveqz	t6,zero,t0
	srli	a6,t5,13
	zext.h	t2,t2
	or	t3,t3,t6
	srli	t1,t4,13
	beq	a6,zero,.L1297
	sub	a7,t2,t1
	sltu	a1,t2,t1
	xori	a3,a1,1
	zext.h	t6,a7
	th.mvnez	t2,t6,a3
	th.mveqz	a6,zero,a3
	srli	a4,t5,14
	zext.h	t2,t2
	or	t3,t3,a6
	srli	a5,t4,14
	beq	a4,zero,.L1297
	sub	a0,t2,a5
	sltu	t0,t2,a5
	xori	t1,t0,1
	zext.h	a6,a0
	th.mvnez	t2,a6,t1
	th.mveqz	a4,zero,t1
	li	a7,16384
	srli	t4,t4,15
	zext.h	t2,t2
	or	t3,t3,a4
	beq	t5,a7,.L1297
	sub	t5,t2,t4
	sltu	a1,t2,t4
	xori	a3,a1,1
	zext.h	t6,t5
	th.mvnez	t2,t6,a3
	zext.h	t2,t2
	or	t3,a3,t3
	th.mvnez	t3,t2,a2
	mv	a0,t3
	ret
.L1303:
	li	t5,4
	j	.L1296
.L1305:
	li	t5,8
	j	.L1296
.L1307:
	li	t5,16
	j	.L1296
.L1317:
	li	t5,512
	j	.L1296
.L1309:
	li	t5,32
	j	.L1296
.L1311:
	li	t5,64
	j	.L1296
.L1313:
	li	t5,128
	j	.L1296
.L1315:
	li	t5,256
	j	.L1296
.L1374:
	sub	a4,a0,a1
	zext.h	t2,a4
	sub	a1,a1,a0
	th.mvnez	t2,a0,a1
	seqz	t3,a1
	j	.L1297
.L1319:
	li	t5,1024
	j	.L1296
.L1321:
	bseti	t5,zero,11
	j	.L1296
.L1323:
	li	t5,4096
	j	.L1296
.L1325:
	li	t5,8192
	j	.L1296
.L1327:
	li	t5,16384
	j	.L1296
.L1328:
	li	t4,32768
	mv	t5,t4
	j	.L1296
.L1294:
	sub	t0,a0,a1
	zext.h	t2,t0
	li	t3,1
	j	.L1297
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	li	a4,32
	li	t1,1
	bgtu	a0,a1,.L1376
	j	.L1396
.L1380:
	slli	a1,a1,1
	slli	t1,t1,1
	bleu	a0,a1,.L1378
	beq	a4,zero,.L1379
.L1376:
	addi	a4,a4,-1
	bge	a1,zero,.L1380
.L1381:
	li	a4,0
.L1382:
	sltu	a3,a0,a1
	xori	t0,a3,1
	mv	a7,t1
	sub	a6,a0,a1
	th.mveqz	a7,zero,t0
	srli	t1,t1,1
	or	a4,a4,a7
	th.mvnez	a0,a6,t0
	srli	a1,a1,1
	bne	t1,zero,.L1382
.L1379:
	th.mveqz	a0,a4,a2
	ret
.L1378:
	bne	t1,zero,.L1381
	li	a4,0
	j	.L1379
.L1396:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	th.mveqz	a0,a5,a1
	xori	a4,a1,1
	j	.L1379
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
	beq	a5,zero,.L1399
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1399:
	beq	a2,zero,.L1403
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1403:
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
	beq	a5,zero,.L1405
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1405:
	beq	a2,zero,.L1409
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1409:
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
	srl	a2,t5,t2
	andi	a4,a2,12
	seqz	a0,a4
	slli	a3,a0,1
	li	t3,2
	sub	a6,t3,a3
	add	t1,a7,t1
	srl	a7,a2,a6
	add	t4,t0,t1
	sub	t5,t3,a7
	andi	t6,a7,2
	add	a1,a3,t4
	th.mvnez	t5,zero,t6
	add	a0,t5,a1
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
	blt	a1,a3,.L1415
	li	a0,2
	bgt	a1,a3,.L1419
	sgtu	a0,a5,a2
	li	t0,0
	sltu	a2,a5,a2
	addi	a0,a0,1
	th.mvnez	a0,t0,a2
	ret
.L1415:
	li	a0,0
.L1419:
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
	blt	a1,a3,.L1422
	li	a0,1
	bgt	a1,a3,.L1425
	sgtu	a0,a5,a2
	li	a4,-1
	sltu	a2,a5,a2
	th.mvnez	a0,a4,a2
	ret
.L1422:
	li	a0,-1
.L1425:
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
	srl	a1,t3,t6
	andi	t0,a1,3
	add	t1,a0,t1
	not	a2,t0
	srli	a5,t0,1
	li	t2,2
	add	a4,a7,t1
	th.ext	a0,a2,0,0
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
	beq	a5,zero,.L1428
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1428:
	beq	a2,zero,.L1432
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1432:
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
	zext.h	a2,a0
	zext.h	a6,a1
	mul	a3,a2,a6
	srli	a0,a0,16
	srli	a4,a1,16
	srli	a5,a3,16
	th.mula	a5,a6,a0
	zext.h	t0,a3
	zext.h	a1,a5
	th.mula	a1,a2,a4
	srli	t1,a5,16
	th.mula	t1,a0,a4
	slli	t2,a1,16
	srli	a7,a1,16
	add	a0,t0,t2
	add	a1,t1,a7
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
	zext.h	t3,a0
	zext.h	a4,a2
	mv	a6,a0
	mul	a0,t3,a4
	srli	t1,a6,16
	srli	a7,a2,16
	srli	a5,a0,16
	th.mula	a5,a4,t1
	zext.h	t0,a0
	zext.h	t2,a5
	th.mula	t2,t3,a7
	srli	t4,a5,16
	th.mula	t4,t1,a7
	srli	t5,t2,16
	slli	t6,t2,16
	add	a0,t0,t6
	add	t3,t4,t5
	th.mula	t3,a6,a3
	th.mula	t3,a2,a1
	mv	a1,t3
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
	fmv.x.w	a2,fa0
	fmvh.x.d	a3,fa0
	andi	t0,a0,1
	fli.d	fa0,1.0
	fmvp.d.x	fa5,a2,a3
	mv	t3,a0
	beq	t0,zero,.L1441
.L1443:
	fmul.d	fa0,fa0,fa5
.L1441:
	srli	t1,t3,31
	add	t2,t1,t3
	srai	t3,t2,1
	beq	t3,zero,.L1442
	srli	a1,t3,31
	andi	a6,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a1,t3
	bne	a6,zero,.L1443
.L1448:
	srai	t3,a7,1
	srli	a1,t3,31
	andi	a6,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a1,t3
	bne	a6,zero,.L1443
	j	.L1448
.L1442:
	blt	a0,zero,.L1449
	ret
.L1449:
	fli.d	ft0,1.0
	fdiv.d	fa0,ft0,fa0
	ret
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	1
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	andi	a5,a0,1
	fmv.s	fa5,fa0
	fli.s	fa0,1.0
	beq	a5,zero,.L1456
	mv	a1,a0
.L1453:
	fmul.s	fa0,fa0,fa5
.L1451:
	srli	a4,a1,31
	add	t0,a4,a1
	srai	a1,t0,1
	beq	a1,zero,.L1452
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1453
.L1458:
	srai	a1,t2,1
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1453
	j	.L1458
.L1452:
	blt	a0,zero,.L1459
	ret
.L1456:
	mv	a1,a0
	j	.L1451
.L1459:
	fli.s	ft0,1.0
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
	bltu	a1,a3,.L1462
	li	a0,2
	bgtu	a1,a3,.L1466
	sgtu	a0,a5,a2
	li	t0,0
	sltu	a2,a5,a2
	addi	a0,a0,1
	th.mvnez	a0,t0,a2
	ret
.L1462:
	li	a0,0
.L1466:
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
	bltu	a1,a3,.L1469
	li	a0,1
	bgtu	a1,a3,.L1472
	sgtu	a0,a5,a2
	li	a4,-1
	sltu	a2,a5,a2
	th.mvnez	a0,a4,a2
	ret
.L1469:
	li	a0,-1
.L1472:
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
	.align	4
.LC6:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC7:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.srodata.cst8
	.align	3
.LC8:
	.word	0
	.word	-1075838976
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
