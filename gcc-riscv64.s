	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_h1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr1p0_zicond1p0_zicsr2p0_zifencei2p0_zihintntl1p0_zihintpause1p0_zihpm1p0_zmmul1p0_za128rs1p0_za64rs1p0_zawrs1p0_zfa1p0_zfh1p0_zfhmin1p0_zca1p0_zcb1p0_zcd1p0_zba1p0_zbb1p0_zbc1p0_zbkb1p0_zbkc1p0_zbkx1p0_zbs1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zks1p0_zksed1p0_zksh1p0_zkt1p0_ztso1p0_zvbb1p0_zvbc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfbfmin1p0_zvfh1p0_zvfhmin1p0_zvkb1p0_zvkg1p0_zvkn1p0_zvknc1p0_zvkned1p0_zvkng1p0_zvknha1p0_zvknhb1p0_zvks1p0_zvksc1p0_zvksed1p0_zvksg1p0_zvksh1p0_zvkt1p0_zvl1024b1p0_zvl128b1p0_zvl2048b1p0_zvl256b1p0_zvl32b1p0_zvl4096b1p0_zvl512b1p0_zvl64b1p0_smaia1p0_smepmp1p0_smstateen1p0_ssaia1p0_sscofpmf1p0_ssstateen1p0_sstc1p0_svinval1p0_svnapot1p0_svpbmt1p0_xcvalu1p0_xcvelw1p0_xcvmac1p0_xtheadba1p0_xtheadbb1p0_xtheadbs1p0_xtheadcmo1p0_xtheadcondmov1p0_xtheadfmemidx1p0_xtheadfmv1p0_xtheadint1p0_xtheadmac1p0_xtheadmemidx1p0_xtheadmempair1p0"
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
	beq	a2,zero,.L40
	addi	a6,a2,-1
	sltiu	t3,a6,511
	bne	t3,zero,.L7
	csrr	t4,vlenb
	srli	t5,t4,3
	addi	t6,t5,-1
	bltu	a6,t6,.L7
	addi	a5,a2,-2
	add	a4,a1,a5
	add	t0,a0,a6
	sub	t1,t0,a4
	addi	t2,t4,-2
	add	a3,t1,t2
	bleu	a3,t2,.L7
	addi	a7,t4,-1
	add	t3,a1,a2
	add	t1,a0,a2
	bltu	a6,a7,.L20
	sub	a5,a2,t4
	add	t2,a1,a5
	add	a3,a0,a5
	neg	a4,t4
	sub	t0,a2,t4
	li	t6,0
.L9:
	vl1re8.v	v0,0(t2)
	add	t6,t6,t4
	add	t2,t2,a4
	vs1r.v	v0,0(a3)
	add	a3,a3,a4
	bgeu	t0,t6,.L9
	sub	t5,a2,t6
	sub	t1,t1,t6
	sub	t3,t3,t6
	mv	a5,t5
	beq	a2,t6,.L47
.L8:
	csrr	t4,vlenb
	srli	a7,t4,3
	sub	a6,a6,t6
	addi	a4,a7,-1
	bltu	a6,a4,.L11
	sub	a2,a2,a7
	sub	t6,a2,t6
	add	a1,a1,t6
	add	a6,a0,t6
	neg	t0,a7
	sub	t2,t5,a7
	li	t4,0
	vsetvli	a3,zero,e8,mf8,ta,ma
.L12:
	vle8.v	v2,0(a1)
	add	t4,t4,a7
	add	a1,a1,t0
	vse8.v	v2,0(a6)
	add	a6,a6,t0
	bgeu	t2,t4,.L12
	sub	a5,a5,t4
	sub	t1,t1,t4
	sub	t3,t3,t4
	beq	t5,t4,.L40
.L11:
	not	t5,a5
	add	a7,t3,t5
	add	a2,t1,t5
.L14:
	th.lrbu	a4,a7,a5,0
	th.srb	a4,a2,a5,0
	addi	a5,a5,-1
	bne	a5,zero,.L14
	ret
.L5:
	bne	a0,a1,.L48
.L40:
	ret
.L48:
	beq	a2,zero,.L40
	addi	a5,a1,1
	csrr	a4,vlenb
	sub	t0,a0,a5
	addi	t1,a4,-2
	bleu	t0,t1,.L21
	mv	a3,a0
.L18:
	vsetvli	t2,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	sub	a2,a2,t2
	add	a1,a1,t2
	vse8.v	v1,0(a3)
	add	a3,a3,t2
	bne	a2,zero,.L18
	ret
.L7:
	addi	t6,a1,-1
	addi	t0,a0,-1
	j	.L15
.L49:
	addi	a6,a6,-1
.L15:
	th.lrbu	t2,t6,a2,0
	th.srb	t2,t0,a2,0
	mv	a2,a6
	bne	a6,zero,.L49
	ret
.L21:
	li	a7,0
.L17:
	th.lrbu	a6,a1,a7,0
	th.srb	a6,a0,a7,0
	addi	a7,a7,1
	bne	a2,a7,.L17
	ret
.L20:
	mv	a5,a2
	li	t6,0
	mv	t5,a2
	j	.L8
.L47:
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
.L62:
	beq	a3,zero,.L63
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L62
	ret
.L63:
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
	bne	a2,zero,.L65
	j	.L68
.L67:
	addi	a0,a0,1
	beq	a2,zero,.L68
.L65:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L67
	ret
.L68:
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
	beq	a2,zero,.L78
.L89:
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	addi	a2,a2,-1
	bne	a4,a5,.L88
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L89
.L78:
	li	a0,0
	ret
.L88:
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
	beq	a2,zero,.L97
	mv	a4,a0
.L92:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L92
.L97:
	ret
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
	j	.L100
.L102:
	lbu	a5,0(a0)
	addi	t0,t0,-1
	beq	a5,a1,.L103
.L100:
	mv	a0,t0
	bne	a4,t0,.L102
	li	a0,0
.L103:
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
	beq	a2,zero,.L108
	andi	a1,a1,0xff
	call	memset
.L108:
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
	beq	a5,zero,.L117
.L112:
	th.lbuib	t0,(a1),1,0
	th.sbib	t0,(a0),1,0
	bne	t0,zero,.L112
.L117:
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
	beq	a5,zero,.L125
.L119:
	beq	a5,a1,.L125
	th.lbuib	a5,(a0),1,0
	bne	a5,zero,.L119
.L125:
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
.L129:
	lbu	a5,0(a0)
	beq	a5,a1,.L131
	addi	a0,a0,1
	bne	a5,zero,.L129
	li	a0,0
.L131:
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
	lbu	a3,0(a1)
	lbu	a4,0(a0)
	addi	a1,a1,-1
	li	a5,1
	bne	a4,a3,.L142
.L133:
	beq	a4,zero,.L143
	th.lrbu	a4,a0,a5,0
	addi	a5,a5,1
	th.lrbu	a3,a1,a5,0
	beq	a4,a3,.L133
.L142:
	sext.w	a0,a4
	subw	a0,a0,a3
	ret
.L143:
	li	a0,0
	subw	a0,a0,a3
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
	beq	a5,zero,.L147
	li	a4,0
	addi	t0,a0,1
.L146:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a2,v0
	blt	a2,zero,.L146
	add	t1,t0,a2
	sub	a0,t1,a0
	ret
.L147:
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
	beq	a2,zero,.L159
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L155
	j	.L166
.L156:
	beq	a0,a3,.L165
	bne	a4,a5,.L165
	th.lbuib	a5,(a0),1,0
	beq	a5,zero,.L167
	mv	a1,t0
.L155:
	lbu	a4,0(a1)
	addi	t0,a1,1
	bne	a4,zero,.L156
.L165:
	sext.w	a0,a5
.L154:
	subw	a0,a0,a4
	ret
.L159:
	li	a0,0
	ret
.L167:
	lbu	a4,1(a1)
	li	a0,0
	subw	a0,a0,a4
	ret
.L166:
	lbu	a4,0(a1)
	li	a0,0
	j	.L154
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
	ble	a2,a5,.L172
	srli	a2,a2,1
.L170:
	vsetvli	t0,a2,e8,m1,ta,ma
	vlseg2e8.v	v4,(a0)
	sub	a2,a2,t0
	sh1add	a0,t0,a0
	vmv1r.v	v2,v5
	vmv1r.v	v3,v4
	vsseg2e8.v	v2,(a1)
	sh1add	a1,t0,a1
	bne	a2,zero,.L170
.L172:
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
	addi	a4,a0,-9
	addi	a5,a0,-32
	seqz	t0,a4
	li	a0,1
	th.mvnez	a0,t0,a5
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
	mv	a5,a0
	li	a4,31
	addi	a0,a0,-127
	sgtu	t0,a5,a4
	li	t1,1
	seqz	a0,a0
	th.mveqz	a0,t1,t0
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
	addiw	a4,a0,-9
	addi	a5,a0,-32
	sltiu	t0,a4,5
	li	a0,1
	th.mvnez	a0,t0,a5
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
	bleu	a0,a4,.L192
	addiw	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L196
.L195:
	ret
.L192:
	li	a0,1
	ret
.L196:
	li	t1,-8192
	addiw	t2,t1,-40
	addw	a1,a5,t2
	bleu	a1,a0,.L195
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
	bleu	a0,a4,.L206
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L205
	li	t2,-8192
	addiw	a1,t2,-42
	li	a3,45056
	addw	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L205
	li	a7,-57344
	li	t3,8192
	addw	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L205
	li	a0,-65536
	li	t6,65536
	addiw	a4,a0,4
	li	t0,1048576
	addi	t1,t6,-2
	addw	t2,a5,a4
	addi	a1,t0,3
	andn	a5,t1,a5
	sgtu	a3,t2,a1
	snez	a0,a5
	th.mvnez	a0,zero,a3
.L205:
	ret
.L206:
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
	bleu	a4,a5,.L209
	ori	a0,a0,32
	addiw	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L209:
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
	beq	a5,zero,.L220
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L216
	fgt.d	t1,fa0,fa1
	beq	t1,zero,.L221
	fsub.d	fa0,fa0,fa1
	ret
.L221:
	fmv.d.x	fa0,zero
.L220:
	ret
.L216:
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
	beq	a5,zero,.L230
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L226
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L231
	fsub.s	fa0,fa0,fa1
	ret
.L231:
	fmv.s.x	fa0,zero
.L230:
	ret
.L226:
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
	beq	a3,zero,.L237
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L238
	srli	t1,a5,63
	srli	a2,a4,63
	bne	t1,a2,.L242
	flt.d	t2,fa0,fa1
	beq	t2,zero,.L241
.L237:
	fmv.d.x	fa0,a4
	ret
.L242:
	fmv.d	fa0,fa1
	beq	t1,zero,.L238
.L241:
	ret
.L238:
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
	beq	a3,zero,.L248
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L249
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	bne	a0,a1,.L253
	flt.s	a6,fa0,fa1
	beq	a6,zero,.L252
.L248:
	fmv.s.x	fa0,a4
	ret
.L253:
	fmv.s	fa0,fa1
	beq	a0,zero,.L249
.L252:
	ret
.L249:
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
	bne	a0,zero,.L262
	mv	a2,s3
	mv	a3,s0
	mv	a0,s3
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L261
	srli	a5,s2,63
	srli	a4,s0,63
	bne	a5,a4,.L267
	mv	a2,s3
	mv	a3,s0
	mv	a0,s1
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L263
	mv	s0,s2
.L258:
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
.L267:
	.cfi_restore_state
	beq	a5,zero,.L261
.L262:
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
.L261:
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
.L263:
	.cfi_restore_state
	mv	s1,s3
	j	.L258
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
	beq	a3,zero,.L273
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L274
	srli	t1,a5,63
	srli	a2,a4,63
	beq	t1,a2,.L270
	bne	t1,zero,.L277
.L273:
	fmv.d.x	fa0,a4
	ret
.L270:
	flt.d	t2,fa0,fa1
	fmv.d	fa0,fa1
	bne	t2,zero,.L274
.L277:
	ret
.L274:
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
	beq	a3,zero,.L283
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L284
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	beq	a0,a1,.L280
	bne	a0,zero,.L287
.L283:
	fmv.s.x	fa0,a4
	ret
.L280:
	flt.s	a6,fa0,fa1
	fmv.s	fa0,fa1
	bne	a6,zero,.L284
.L287:
	ret
.L284:
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
	bne	a0,zero,.L294
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L296
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L290
	beq	a5,zero,.L294
.L296:
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
.L290:
	.cfi_restore_state
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L301
.L294:
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
.L301:
	.cfi_restore_state
	mv	s1,s3
	mv	s0,s2
	j	.L294
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
	beq	a5,zero,.L305
	lui	a2,%hi(.LANCHOR0)
	addi	a4,a0,%lo(s.0)
	addi	t0,a2,%lo(.LANCHOR0)
.L304:
	andi	a3,a5,63
	th.lrbu	t1,t0,a3,0
	srliw	a5,a5,6
	th.sbia	t1,(a4),1,0
	bne	a5,zero,.L304
	sb	zero,0(a4)
	addi	a0,a0,%lo(s.0)
	ret
.L305:
	addi	a4,a0,%lo(s.0)
	sb	zero,0(a4)
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
	th.extu	t0,a0,31,0
	lui	a5,%hi(seed)
	sd	t0,%lo(seed)(a5)
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
	beq	a1,zero,.L316
	ld	a5,0(a1)
	th.sdd	a5, a1, (a0), 0, 4
	sd	a0,0(a1)
	ld	t0,0(a0)
	beq	t0,zero,.L315
	sd	a0,8(t0)
.L315:
	ret
.L316:
	vsetivli	zero,2,e64,m1,ta,ma
	vmv.v.i	v1,0
	vse64.v	v1,0(a0)
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
	beq	a5,zero,.L318
	ld	a4,8(a0)
	sd	a4,8(a5)
.L318:
	ld	t0,8(a0)
	beq	t0,zero,.L326
	sd	a5,0(t0)
.L326:
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
	sd	s5,24(sp)
	.cfi_offset 21, -56
	ld	s5,0(a2)
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	s7,8(sp)
	sd	s8,0(sp)
	sd	ra,72(sp)
	sd	s6,16(sp)
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 1, -8
	.cfi_offset 22, -64
	mv	s7,a2
	mv	s3,a0
	mv	s8,a1
	mv	s2,a3
	beq	s5,zero,.L328
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 20, -48
	mv	s0,a1
	mv	s4,a4
	li	s1,0
	j	.L330
.L346:
	add	s0,s0,s2
	beq	s5,s1,.L345
.L330:
	mv	a1,s0
	mv	a0,s3
	jalr	s4
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L346
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s4,32(sp)
	.cfi_restore 20
.L342:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s2,48(sp)
	.cfi_restore 18
	ld	s3,40(sp)
	.cfi_restore 19
	ld	s5,24(sp)
	.cfi_restore 21
	ld	s7,8(sp)
	.cfi_restore 23
	ld	s8,0(sp)
	.cfi_restore 24
	mv	a0,s6
	ld	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L345:
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
	ld	s4,32(sp)
	.cfi_restore 20
.L328:
	addi	a5,s5,1
	mv	s6,s8
	sd	a5,0(s7)
	th.mula	s6,s2,s5
	beq	s2,zero,.L342
	mv	a2,s2
	mv	a1,s3
	mv	a0,s6
	call	memmove
	j	.L342
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
	beq	s5,zero,.L348
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
.L361:
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
.L348:
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
	negw	a5,a0
	max	a0,a5,a0
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
.L371:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L365
	sext.w	a1,a4
	bleu	a5,a2,.L365
	li	t0,43
	beq	a4,t0,.L366
	li	a6,45
	bne	a4,a6,.L384
	lbu	a7,1(a0)
	li	t3,9
	addi	t6,a0,1
	addiw	a4,a7,-48
	bgtu	a4,t3,.L376
	li	a3,1
.L369:
	li	t1,0
	li	t0,9
.L373:
	slliw	a0,t1,2
	th.lbuib	a1,(t6),1,0
	addw	a2,a0,t1
	slliw	a5,a2,1
	subw	t1,a5,a4
	mv	t2,a4
	addiw	a4,a1,-48
	bleu	a4,t0,.L373
	subw	a0,t2,a5
	th.mvnez	a0,t1,a3
	ret
.L365:
	addi	a0,a0,1
	j	.L371
.L384:
	addiw	t4,a1,-48
	li	t5,9
	bgtu	t4,t5,.L376
	mv	t6,a0
	addiw	a4,a4,-48
	li	a3,0
	j	.L369
.L366:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addiw	a4,t1,-48
	li	a3,0
	bleu	a4,t2,.L369
.L376:
	li	a0,0
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
.L392:
	lbu	a5,0(a0)
	addiw	a4,a5,-9
	beq	a5,a3,.L386
	sext.w	a1,a5
	bleu	a4,a2,.L386
	li	t0,43
	beq	a5,t0,.L387
	li	a6,45
	bne	a5,a6,.L405
	lbu	a7,1(a0)
	li	t3,9
	addi	a0,a0,1
	addiw	t6,a7,-48
	bgtu	t6,t3,.L397
	li	a5,1
.L390:
	li	a4,0
	li	t0,9
.L394:
	th.lbuib	a2,(a0),1,0
	sh2add	a3,a4,a4
	slli	t1,a3,1
	sub	a4,t1,t6
	mv	a1,t6
	addiw	t6,a2,-48
	bleu	t6,t0,.L394
	sub	a0,a1,t1
	th.mvnez	a0,a4,a5
	ret
.L386:
	addi	a0,a0,1
	j	.L392
.L405:
	addiw	t4,a1,-48
	li	t5,9
	addiw	t6,a5,-48
	li	a5,0
	bleu	t4,t5,.L390
.L397:
	li	a0,0
	ret
.L387:
	lbu	t1,1(a0)
	li	t2,9
	addi	a0,a0,1
	addiw	t6,t1,-48
	li	a5,0
	bleu	t6,t2,.L390
	j	.L397
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
.L411:
	lbu	a5,0(a0)
	addiw	a4,a5,-9
	beq	a5,a3,.L407
	sext.w	a1,a5
	bleu	a4,a2,.L407
	li	t0,43
	beq	a5,t0,.L408
	li	a6,45
	bne	a5,a6,.L427
	lbu	a7,1(a0)
	li	t3,9
	addi	a0,a0,1
	addiw	t6,a7,-48
	li	a5,1
	bgtu	t6,t3,.L418
.L412:
	li	a4,0
	li	t0,9
.L415:
	th.lbuib	a2,(a0),1,0
	sh2add	a3,a4,a4
	slli	t1,a3,1
	sub	a4,t1,t6
	mv	a1,t6
	addiw	t6,a2,-48
	bleu	t6,t0,.L415
	sub	a0,a1,t1
	th.mvnez	a0,a4,a5
	ret
.L407:
	addi	a0,a0,1
	j	.L411
.L427:
	addiw	t4,a1,-48
	li	t5,9
	addiw	t6,a5,-48
	bgtu	t4,t5,.L418
.L426:
	li	a5,0
	j	.L412
.L408:
	lbu	t1,1(a0)
	li	t2,9
	addi	a0,a0,1
	addiw	t6,t1,-48
	bleu	t6,t2,.L426
.L418:
	li	a0,0
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
	sd	s2,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	beq	a2,zero,.L429
	sd	s0,48(sp)
	sd	s3,24(sp)
	sd	s4,16(sp)
	sd	s5,8(sp)
	sd	s6,0(sp)
	sd	s1,40(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 9, -24
	mv	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
.L432:
	srli	s1,s0,1
	mv	s2,s3
	th.mula	s2,s1,s4
	mv	a0,s5
	addi	s0,s0,-1
	mv	a1,s2
	jalr	s6
	blt	a0,zero,.L433
	beq	a0,zero,.L443
	sub	s0,s0,s1
	add	s3,s2,s4
	bne	s0,zero,.L432
.L444:
	ld	s0,48(sp)
	.cfi_restore 8
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
.L429:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s2,0
	mv	a0,s2
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L433:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	mv	s0,s1
	bne	s0,zero,.L432
	j	.L444
.L443:
	ld	s0,48(sp)
	.cfi_restore 8
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s3,24(sp)
	.cfi_restore 19
	ld	s4,16(sp)
	.cfi_restore 20
	ld	s5,8(sp)
	.cfi_restore 21
	ld	s6,0(sp)
	.cfi_restore 22
	mv	a0,s2
	ld	s2,32(sp)
	.cfi_restore 18
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
	sd	s2,48(sp)
	.cfi_offset 8, -16
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 1, -8
	.cfi_offset 18, -32
	sext.w	s0,a2
	mv	s5,a0
	mv	s3,a1
	mv	s4,a3
	mv	s6,a4
	mv	s7,a5
	beq	s0,zero,.L450
	sd	s1,56(sp)
	.cfi_offset 9, -24
.L459:
	sraiw	s1,s0,1
	mv	s2,s3
	th.mula	s2,s1,s4
	mv	a2,s7
	mv	a0,s5
	addiw	s0,s0,-1
	sraiw	s0,s0,1
	mv	a1,s2
	jalr	s6
	beq	a0,zero,.L463
	ble	a0,zero,.L448
	add	s3,s2,s4
	bne	s0,zero,.L459
.L464:
	ld	s1,56(sp)
	.cfi_restore 9
.L450:
	li	s2,0
.L458:
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
	mv	a0,s2
	ld	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L448:
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
	beq	s1,zero,.L464
	mv	s0,s1
	j	.L459
.L463:
	ld	s1,56(sp)
	.cfi_restore 9
	j	.L458
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
	th.extu	t0,a5,31,0
	slli	t1,a0,32
	or	a0,t0,t1
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
	neg	a5,a0
	max	a0,a5,a0
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
	neg	a5,a0
	max	a0,a5,a0
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
	neg	a5,a0
	max	a0,a5,a0
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
	lw	a5,0(a0)
	beq	a5,zero,.L476
.L473:
	beq	a1,a5,.L481
	th.lwib	a5,(a0),4,0
	bne	a5,zero,.L473
.L476:
	li	a0,0
	ret
.L481:
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
	lw	a3,0(a1)
	lw	a4,0(a0)
	addi	a1,a1,-4
	li	a5,4
	bne	a4,a3,.L484
.L483:
	beq	a4,zero,.L484
	th.lrw	a4,a0,a5,0
	addi	a5,a5,4
	th.lrw	a3,a1,a5,0
	beq	a4,a3,.L483
.L484:
	sgt	t0,a4,a3
	slt	t1,a4,a3
	li	a0,-1
	th.mveqz	a0,t0,t1
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
	li	a5,0
.L492:
	th.lrw	a4,a1,a5,0
	th.srw	a4,a0,a5,0
	addi	a5,a5,4
	bne	a4,zero,.L492
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
	beq	a5,zero,.L497
	li	a3,0
	addi	a4,a0,4
.L496:
	vsetvli	a2,zero,e32,m1,ta,ma
	sh2add	a4,a3,a4
	vle32ff.v	v1,0(a4)
	vmseq.vi	v0,v1,0
	csrr	a3,vl
	vfirst.m	t0,v0
	blt	t0,zero,.L496
	sh2add	t1,t0,a4
	sub	a0,t1,a0
	srai	a0,a0,2
	ret
.L497:
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
	beq	a2,zero,.L507
.L515:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L504
	beq	a5,zero,.L504
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L515
.L507:
	li	a0,0
	ret
.L504:
	lw	t0,0(a0)
	lw	t1,0(a1)
	li	a3,-1
	sgt	a0,t0,t1
	slt	t2,t0,t1
	th.mvnez	a0,a3,t2
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
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	1
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	beq	a2,zero,.L535
.L546:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a5,a4,.L545
	addi	a1,a1,4
	bne	a2,zero,.L546
.L535:
	li	a0,0
	ret
.L545:
	li	a3,-1
	sgt	a0,a5,a4
	slt	t0,a5,a4
	th.mvnez	a0,a3,t0
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
	beq	a2,zero,.L554
	slli	a2,a2,2
	mv	a4,a0
.L549:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L549
.L554:
	ret
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	1
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	beq	a0,a1,.L593
	slli	t1,a2,2
	sub	a4,a0,a1
	addi	t5,a2,-1
	bgeu	a4,t1,.L599
	beq	a2,zero,.L593
	sltiu	t6,t5,127
	bne	t6,zero,.L561
	csrr	t0,vlenb
	srli	a4,t0,3
	addi	a3,a4,-1
	bltu	t5,a3,.L561
	addi	t2,t1,-4
	addi	a6,t1,-8
	add	a5,a0,t2
	add	a7,a1,a6
	sub	t3,a5,a7
	addi	t4,t0,-8
	add	t6,t3,t4
	bleu	t6,t4,.L561
	srli	t2,t0,2
	addi	a4,t2,-1
	bltu	t5,a4,.L575
	sub	a3,t1,t0
	neg	a5,t0
	add	a6,a1,a3
	add	t3,a0,a3
	sub	a7,a2,t2
	li	t0,0
.L563:
	vl1re32.v	v0,0(a6)
	add	t0,t0,t2
	add	a6,a6,a5
	vs1r.v	v0,0(t3)
	add	t3,t3,a5
	bgeu	a7,t0,.L563
	sub	t5,t5,t0
	beq	a2,t0,.L600
.L562:
	csrr	t6,vlenb
	sub	a2,a2,t0
	srli	a3,t6,3
	addi	t4,a3,-1
	addi	t2,a2,-1
	bltu	t2,t4,.L566
	srli	a4,t6,1
	neg	a5,a4
	addi	a7,a5,4
	not	t0,t0
	add	t1,t1,a7
	sh2add	a6,t0,t1
	vsetvli	t2,zero,e32,mf2,ta,ma
	add	t3,a1,a6
	vle32.v	v2,0(t3)
	add	a4,a0,a6
	sub	t4,a2,a3
	vse32.v	v2,0(a4)
	bgeu	t4,a3,.L601
.L567:
	sub	t5,t5,a3
	beq	a2,a3,.L593
.L566:
	slli	a2,t5,2
	li	t5,-4
.L569:
	th.lrw	t6,a1,a2,0
	th.srw	t6,a0,a2,0
	addi	a2,a2,-4
	bne	a2,t5,.L569
	ret
.L577:
	li	t4,0
	li	a2,-1
.L572:
	th.lrw	t3,a1,t4,0
	addi	t5,t5,-1
	th.srw	t3,a0,t4,0
	addi	t4,t4,4
	bne	t5,a2,.L572
.L593:
	ret
.L599:
	beq	a2,zero,.L602
	addi	t0,a1,4
	csrr	a3,vlenb
	sub	t2,a0,t0
	addi	a6,a3,-8
	bleu	t2,a6,.L577
	mv	a7,a0
.L573:
	vsetvli	a5,a2,e8,mf4,ta,ma
	vle32.v	v1,0(a1)
	sub	a2,a2,a5
	sh2add	a1,a5,a1
	vse32.v	v1,0(a7)
	sh2add	a7,a5,a7
	bne	a2,zero,.L573
	ret
.L601:
	add	a3,t3,a5
	vle32.v	v3,0(a3)
	add	a5,a4,a5
	srli	a3,t6,2
	vse32.v	v3,0(a5)
	j	.L567
.L561:
	slli	t1,t5,2
	li	a7,-4
.L570:
	th.lrw	t0,a1,t1,0
	th.srw	t0,a0,t1,0
	addi	t1,t1,-4
	bne	t1,a7,.L570
	ret
.L602:
	ret
.L575:
	li	t0,0
	j	.L562
.L600:
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
	beq	a2,zero,.L610
	vsetvli	a5,zero,e32,m1,ta,ma
	vmv.v.x	v1,a1
	mv	t0,a0
.L605:
	vsetvli	a4,a2,e8,mf4,ta,ma
	vse32.v	v1,0(t0)
	sub	a2,a2,a4
	sh2add	t0,a4,t0
	bne	a2,zero,.L605
.L610:
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
	bgeu	a0,a1,.L613
	beq	a2,zero,.L648
	addi	a6,a2,-1
	sltiu	a7,a6,511
	bne	a7,zero,.L615
	csrr	t4,vlenb
	srli	t3,t4,3
	addi	t5,t3,-1
	bltu	a6,t5,.L615
	addi	t6,a2,-2
	add	a4,a0,t6
	add	a5,a1,a6
	sub	t0,a5,a4
	addi	t1,t4,-2
	add	t2,t0,t1
	bleu	t2,t1,.L615
	addi	a3,t4,-1
	add	t3,a0,a2
	add	t1,a1,a2
	bltu	a6,a3,.L628
	sub	a7,a2,t4
	add	t0,a0,a7
	add	a5,a1,a7
	neg	a4,t4
	sub	t5,a2,t4
	li	t6,0
.L617:
	vl1re8.v	v0,0(t0)
	add	t6,t6,t4
	add	t0,t0,a4
	vs1r.v	v0,0(a5)
	add	a5,a5,a4
	bgeu	t5,t6,.L617
	sub	t4,a2,t6
	sub	t3,t3,t6
	sub	t1,t1,t6
	mv	a5,t4
	beq	a2,t6,.L655
.L616:
	csrr	t2,vlenb
	srli	a7,t2,3
	sub	a6,a6,t6
	addi	a3,a7,-1
	bltu	a6,a3,.L619
	sub	a2,a2,a7
	sub	t6,a2,t6
	add	a0,a0,t6
	add	a1,a1,t6
	neg	t5,a7
	sub	t0,t4,a7
	li	a4,0
	vsetvli	t2,zero,e8,mf8,ta,ma
.L620:
	vle8.v	v2,0(a0)
	add	a4,a4,a7
	add	a0,a0,t5
	vse8.v	v2,0(a1)
	add	a1,a1,t5
	bgeu	t0,a4,.L620
	sub	a5,a5,a4
	sub	t3,t3,a4
	sub	t1,t1,a4
	beq	t4,a4,.L648
.L619:
	not	t4,a5
	add	a7,t3,t4
	add	a6,t1,t4
.L622:
	th.lrbu	a3,a7,a5,0
	th.srb	a3,a6,a5,0
	addi	a5,a5,-1
	bne	a5,zero,.L622
	ret
.L613:
	bne	a0,a1,.L656
.L648:
	ret
.L656:
	beq	a2,zero,.L648
	addi	a5,a0,1
	csrr	a4,vlenb
	sub	t0,a1,a5
	addi	t1,a4,-2
	bleu	t0,t1,.L629
.L626:
	vsetvli	t2,a2,e8,m1,ta,ma
	vle8.v	v1,0(a0)
	sub	a2,a2,t2
	add	a0,a0,t2
	vse8.v	v1,0(a1)
	add	a1,a1,t2
	bne	a2,zero,.L626
	ret
.L615:
	addi	t6,a0,-1
	addi	t5,a1,-1
	j	.L623
.L657:
	addi	a6,a6,-1
.L623:
	th.lrbu	t0,t6,a2,0
	th.srb	t0,t5,a2,0
	mv	a2,a6
	bne	a6,zero,.L657
	ret
.L629:
	li	a6,0
.L625:
	th.lrbu	a3,a0,a6,0
	th.srb	a3,a1,a6,0
	addi	a6,a6,1
	bne	a2,a6,.L625
	ret
.L628:
	mv	a5,a2
	li	t6,0
	mv	t4,a2
	j	.L616
.L655:
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
	rol	a0,a0,a1
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
	li	a5,64
	subw	t0,a5,a1
	rol	a0,a0,t0
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
	rolw	a0,a0,a1
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
	li	a5,32
	subw	t0,a5,a1
	rolw	a0,a0,t0
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
	rol	a0,a0,a1
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
	li	a5,64
	subw	t0,a5,a1
	rol	a0,a0,t0
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
	th.extu	a0,t2,15,0
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
	th.extu	a0,t2,15,0
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
	rev8	a0,a0
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
	th.revw	a0,a0
	sext.w	a0,a0
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
	rev8	a0,a0
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
	j	.L674
.L672:
	beq	a5,a3,.L677
.L674:
	srlw	a4,a0,a5
	andi	t0,a4,1
	addiw	a5,a5,1
	beq	t0,zero,.L672
	mv	a0,a5
	ret
.L677:
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
	beq	a0,zero,.L681
	andi	a0,a0,1
	bne	a0,zero,.L684
	li	a0,1
.L680:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L680
	ret
.L681:
	li	a0,0
.L684:
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
	bne	t0,zero,.L688
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa0,ft0
.L688:
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
	bne	t0,zero,.L693
	lui	t1,%hi(.LC4)
	fld	ft0,%lo(.LC4)(t1)
	fgt.d	a0,fa0,ft0
.L693:
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
	th.ldd	a2, a3, (t0), 0, 4
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
	blt	a0,zero,.L698
	lui	t1,%hi(.LC6)
	addi	t2,t1,%lo(.LC6)
	th.ldd	a2, a3, (t2), 0, 4
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
.L698:
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
	th.sdd	a0, a1, (s0), 0, 4
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
	beq	a5,zero,.L716
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L716
	fli.s	ft0,2.0
	bge	a0,zero,.L705
	fli.s	ft0,0.5
.L705:
	andi	t1,a0,1
	beq	t1,zero,.L706
.L707:
	fmul.s	fa0,fa0,ft0
.L706:
	srliw	t2,a0,31
	addw	a0,t2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L716
	srliw	a1,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a2,a1,a0
	bne	a4,zero,.L707
.L718:
	sraiw	a0,a2,1
	srliw	a1,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a2,a1,a0
	bne	a4,zero,.L707
	j	.L718
.L716:
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
	beq	a5,zero,.L732
	fadd.d	fa5,fa0,fa0
	feq.d	t0,fa5,fa0
	bne	t0,zero,.L732
	fli.d	ft0,2.0
	bge	a0,zero,.L721
	fli.d	ft0,0.5
.L721:
	andi	t1,a0,1
	beq	t1,zero,.L722
.L723:
	fmul.d	fa0,fa0,ft0
.L722:
	srliw	t2,a0,31
	addw	a0,t2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L732
	srliw	a1,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a2,a1,a0
	bne	a4,zero,.L723
.L734:
	sraiw	a0,a2,1
	srliw	a1,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a2,a1,a0
	bne	a4,zero,.L723
	j	.L734
.L732:
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
	bne	a0,zero,.L750
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L750
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	blt	s0,zero,.L753
	lui	a5,%hi(.LC7)
	addi	t0,a5,%lo(.LC7)
	th.ldd	s1, s2, (t0), 0, 4
.L738:
	andi	a0,s0,1
	beq	a0,zero,.L739
.L740:
	mv	a0,s4
	mv	a1,s3
	mv	a2,s1
	mv	a3,s2
	call	__multf3
	mv	s4,a0
	mv	s3,a1
.L739:
	srliw	a1,s0,31
	addw	s0,a1,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L752
.L741:
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
	bne	a4,zero,.L740
	sraiw	s0,a2,1
	j	.L741
.L752:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L750:
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
.L753:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	lui	t1,%hi(.LC8)
	addi	t2,t1,%lo(.LC8)
	th.ldd	s1, s2, (t2), 0, 4
	j	.L738
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
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
.LFE92:
	.size	memxor, .-memxor
	.align	1
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93:
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
	beq	a1,zero,.L791
.L785:
	th.lrbu	a4,a5,a0,0
	bne	a4,zero,.L787
.L791:
	ret
.L787:
	addi	a0,a0,1
	bne	a1,a0,.L785
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
	beq	a3,zero,.L799
.L795:
	mv	a5,a1
	j	.L798
.L797:
	beq	a4,a3,.L801
.L798:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L797
	th.lbuib	a3,(a0),1,0
	bne	a3,zero,.L795
.L799:
	li	a0,0
.L801:
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
.L807:
	lbu	a4,0(a5)
	sub	a3,a4,a1
	th.mveqz	a0,a5,a3
	addi	a5,a5,1
	bne	a4,zero,.L807
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
	mv	a4,a0
	beq	a7,zero,.L822
	li	a3,0
	addi	a5,a1,1
.L811:
	vsetvli	a2,zero,e8,m1,ta,ma
	add	a5,a5,a3
	vle8ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	a3,vl
	vfirst.m	a0,v0
	blt	a0,zero,.L811
	add	t0,a5,a0
	sub	t3,t0,a1
	mv	a0,a4
	addi	t5,t3,-1
	bne	t0,a1,.L831
	ret
.L835:
	addi	a4,a4,1
	beq	t2,zero,.L834
.L831:
	lbu	t2,0(a4)
	bne	t2,a7,.L835
	add	t1,a4,t5
	mv	a2,a1
	mv	t4,a4
	mv	t6,a7
.L813:
	beq	t1,t4,.L815
	bne	t6,t2,.L816
	th.lbuib	t2,(t4),1,0
	lbu	t6,1(a2)
	addi	a6,a2,1
	beq	t2,zero,.L815
	mv	a2,a6
	bne	t6,zero,.L813
.L816:
	addi	a4,a4,1
	j	.L831
.L834:
	li	a0,0
	ret
.L815:
	bne	t2,t6,.L816
.L822:
	mv	a0,a4
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
	bne	a5,zero,.L850
	fgt.d	t0,fa0,fa5
	beq	t0,zero,.L846
	flt.d	t1,fa1,fa5
	bne	t1,zero,.L839
.L846:
	ret
.L839:
	fneg.d	fa0,fa0
	ret
.L850:
	fgt.d	t2,fa1,fa5
	bne	t2,zero,.L839
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
	beq	a3,zero,.L865
	bltu	a1,a3,.L862
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L862
	lbu	t1,0(a2)
	li	t3,1
.L857:
	mv	a4,a0
	th.lbuia	a5,(a4),1,0
	beq	a5,t1,.L868
	mv	a0,a4
.L853:
	bgeu	a7,a0,.L857
.L862:
	li	a0,0
.L865:
	ret
.L868:
	beq	a3,t3,.L865
.L856:
	li	t2,1
	j	.L854
.L855:
	beq	a3,t2,.L865
.L854:
	th.lrbu	a6,a0,t2,0
	th.lrbu	t0,a2,t2,0
	addi	t2,t2,1
	beq	a6,t0,.L855
	bltu	a7,a4,.L862
	mv	a0,a4
	th.lbuia	t4,(a0),1,0
	bne	t1,t4,.L853
	mv	t5,a4
	mv	a4,a0
	mv	a0,t5
	j	.L856
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
	beq	a2,zero,.L874
	call	memmove
.L874:
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
	bne	a5,zero,.L904
	fli.d	fa4,1.0
	li	a7,0
	fge.d	t0,fa0,fa4
	beq	t0,zero,.L905
.L879:
	fli.d	ft5,0.5
	fli.d	ft6,1.0
	li	a6,0
.L885:
	fmul.d	fa0,fa0,ft5
	addiw	a6,a6,1
	fge.d	t3,fa0,ft6
	bne	t3,zero,.L885
	sw	a6,0(a0)
	beq	a7,zero,.L899
.L907:
	fneg.d	fa0,fa0
.L899:
	ret
.L905:
	fli.d	ft0,0.5
	flt.d	t1,fa0,ft0
	beq	t1,zero,.L882
	feq.d	t2,fa0,fa5
	beq	t2,zero,.L891
.L882:
	sw	zero,0(a0)
	ret
.L904:
	fli.d	ft2,-1.0
	fneg.d	ft1,fa0
	fle.d	a1,fa0,ft2
	beq	a1,zero,.L906
	fmv.d	fa0,ft1
	li	a7,1
	j	.L879
.L906:
	lui	a2,%hi(.LC9)
	fld	ft3,%lo(.LC9)(a2)
	fgt.d	a3,fa0,ft3
	beq	a3,zero,.L882
	li	a7,1
.L880:
	fmv.d	fa0,ft1
	fli.d	ft4,0.5
	li	a6,0
.L887:
	fadd.d	fa0,fa0,fa0
	addiw	a6,a6,-1
	flt.d	a4,fa0,ft4
	bne	a4,zero,.L887
	sw	a6,0(a0)
	bne	a7,zero,.L907
	ret
.L891:
	fmv.d	ft1,fa0
	j	.L880
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	1
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L911
.L910:
	th.ext	a4,a5,0,0
	and	t0,a4,a1
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L910
	ret
.L911:
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
	li	t0,32
	li	a4,1
	bltu	a1,a0,.L915
	j	.L941
.L919:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	a0,a1,.L917
	beq	t0,zero,.L918
.L915:
	addiw	t0,t0,-1
	bge	a1,zero,.L919
.L920:
	li	t0,0
.L925:
	sltu	a3,a0,a1
	mv	a7,a4
	subw	a6,a0,a1
	th.mvnez	a7,zero,a3
	or	t1,t0,a7
	th.mveqz	a0,a6,a3
	srliw	a4,a4,1
	sext.w	t0,t1
	sext.w	a0,a0
	srliw	a1,a1,1
	bne	a4,zero,.L925
.L918:
	th.mveqz	a0,t0,a2
	ret
.L917:
	bne	a4,zero,.L920
	li	t0,0
	j	.L918
.L941:
	subw	a5,a0,a1
	sgtu	a1,a1,a0
	th.mveqz	a0,a5,a1
	sext.w	a0,a0
	xori	t0,a1,1
	j	.L918
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	slliw	a5,a0,8
	clzw	t0,a5
	mv	a4,a0
	li	t1,7
	addiw	a0,t0,-1
	th.mveqz	a0,t1,a4
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
	srai	a5,a0,63
	xor	a4,a0,a5
	clz	t0,a4
	sub	t2,a0,a5
	addiw	t1,t0,-1
	li	a0,63
	th.mvnez	a0,t1,t2
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
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L952
.L951:
	th.ext	a4,a5,0,0
	and	t0,a1,a4
	srliw	a5,a5,1
	addw	a0,t0,a0
	slliw	a1,a1,1
	bne	a5,zero,.L951
	ret
.L952:
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
	srliw	a3,a2,3
	andi	a4,a2,-8
	bltu	a0,a1,.L959
	add.uw	a5,a2,a1
	bleu	a0,a5,.L1007
.L959:
	beq	a3,zero,.L958
	addi	t4,a1,8
	csrr	t0,vlenb
	sub	a7,a0,t4
	addi	a6,t0,-16
	bleu	a7,a6,.L962
	th.extu	a3,a3,31,0
	mv	t6,a0
	mv	t5,a1
.L963:
	vsetvli	a5,a3,e8,mf8,ta,ma
	vle64.v	v2,0(t5)
	sub	a3,a3,a5
	sh3add	t5,a5,t5
	vse64.v	v2,0(t6)
	sh3add	t6,a5,t6
	bne	a3,zero,.L963
.L958:
	bleu	a2,a4,.L996
	th.extu	a5,a4,31,0
	addi	a6,a5,1
	add	t4,a1,a6
	add	a3,a0,a5
	csrr	t0,vlenb
	sub	t5,a3,t4
	addi	a7,t0,-2
	bleu	t5,a7,.L966
	subw	a0,a2,a4
	th.extu	a2,a0,31,0
	add	a1,a1,a5
.L967:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a3)
	add	a3,a3,a4
	bne	a2,zero,.L967
	ret
.L1008:
	addi	a6,a6,1
.L966:
	th.lrbu	t6,a1,a5,0
	sext.w	t1,a6
	th.srb	t6,a0,a5,0
	mv	a5,a6
	bltu	t1,a2,.L1008
.L996:
	ret
.L1007:
	addiw	a5,a2,-1
	beq	a2,zero,.L1009
	csrr	t4,vlenb
	srli	t0,t4,3
	addiw	t1,t0,-1
	th.extu	t3,a5,31,0
	bltu	a5,t1,.L969
	li	t2,510
	th.extu	t3,a5,31,0
	bleu	a5,t2,.L969
	addi	a6,t3,-1
	add	a7,a1,a6
	add.uw	t5,a5,a0
	sub	t6,t5,a7
	addi	a3,t4,-2
	add	a4,t6,a3
	bleu	a4,a3,.L969
	addiw	t0,t4,-1
	bltu	a5,t0,.L980
	neg	a7,t4
	addi	t1,a7,1
	add	t5,t3,t1
	add	a6,a1,t5
	add	a4,a0,t5
	subw	t6,a2,t4
	li	t2,0
.L971:
	vl1re8.v	v1,0(a6)
	csrr	a3,vlenb
	addw	t2,t2,a3
	add	a6,a6,a7
	vs1r.v	v1,0(a4)
	add	a4,a4,a7
	bgeu	t6,t2,.L971
	subw	a5,a5,t2
	beq	a2,t2,.L996
	srli	t4,t4,3
	addiw	t0,t4,-1
	subw	a2,a2,t2
	bltu	a5,t0,.L974
.L970:
	csrr	a7,vlenb
	srli	t5,a7,3
	neg	t6,t5
	addi	t1,t6,1
	th.extu	t2,t2,31,0
	add	t3,t3,t1
	sub	a3,t3,t2
	add	a6,a1,a3
	add	a4,a0,a3
	subw	t4,a2,t5
	li	a7,0
	vsetvli	t0,zero,e8,mf8,ta,ma
.L975:
	vle8.v	v0,0(a6)
	addw	a7,a7,t5
	add	a6,a6,t6
	vse8.v	v0,0(a4)
	add	a4,a4,t6
	bgeu	t4,a7,.L975
	subw	a5,a5,a7
	beq	a2,a7,.L996
.L974:
	th.extu	t6,a5,31,0
	li	a2,-1
.L977:
	th.lrbu	t5,a1,t6,0
	th.srb	t5,a0,t6,0
	addi	t6,t6,-1
	bne	t6,a2,.L977
	ret
.L962:
	slli	t1,a3,3
	li	t3,0
.L965:
	th.lrd	t2,a1,t3,0
	th.srd	t2,a0,t3,0
	addi	t3,t3,8
	bne	t3,t1,.L965
	j	.L958
.L969:
	li	t1,-1
.L978:
	th.lrbu	t2,a1,t3,0
	th.srb	t2,a0,t3,0
	addi	t3,t3,-1
	bne	t3,t1,.L978
	ret
.L1009:
	ret
.L980:
	li	t2,0
	j	.L970
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	1
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	srliw	a4,a2,1
	bltu	a0,a1,.L1014
	add.uw	a5,a2,a1
	bleu	a0,a5,.L1055
.L1014:
	beq	a4,zero,.L1013
	addi	t6,a1,2
	csrr	t4,vlenb
	sub	t0,a0,t6
	addi	a3,t4,-4
	bleu	t0,a3,.L1017
	th.extu	a4,a4,31,0
	mv	t5,a0
	mv	a6,a1
.L1018:
	vsetvli	a5,a4,e8,mf2,ta,ma
	vle16.v	v2,0(a6)
	sub	a4,a4,a5
	sh1add	a6,a5,a6
	vse16.v	v2,0(t5)
	sh1add	t5,a5,t5
	bne	a4,zero,.L1018
.L1013:
	andi	t3,a2,1
	beq	t3,zero,.L1048
.L1057:
	addiw	a2,a2,-1
	th.extu	t6,a2,31,0
	th.lrbu	a1,a1,t6,0
	th.srb	a1,a0,t6,0
	ret
.L1055:
	addiw	a5,a2,-1
	beq	a2,zero,.L1056
	csrr	t4,vlenb
	srli	t0,t4,3
	addiw	t1,t0,-1
	th.extu	t3,a5,31,0
	bltu	a5,t1,.L1022
	li	t2,510
	th.extu	t3,a5,31,0
	bgtu	a5,t2,.L1047
.L1022:
	li	t1,-1
.L1030:
	th.lrbu	t2,a1,t3,0
	th.srb	t2,a0,t3,0
	addi	t3,t3,-1
	bne	t3,t1,.L1030
.L1048:
	ret
.L1047:
	addi	a3,t3,-1
	add	a6,a1,a3
	add.uw	a7,a5,a0
	sub	t5,a7,a6
	addi	t6,t4,-2
	add	a4,t5,t6
	bleu	a4,t6,.L1022
	addiw	t0,t4,-1
	bltu	a5,t0,.L1032
	neg	a3,t4
	addi	t1,a3,1
	add	a7,t3,t1
	add	a6,a1,a7
	add	a4,a0,a7
	subw	t5,a2,t4
	li	t2,0
.L1024:
	vl1re8.v	v1,0(a6)
	csrr	t6,vlenb
	addw	t2,t2,t6
	add	a6,a6,a3
	vs1r.v	v1,0(a4)
	add	a4,a4,a3
	bgeu	t5,t2,.L1024
	subw	a5,a5,t2
	beq	a2,t2,.L1048
	srli	t4,t4,3
	addiw	t0,t4,-1
	subw	a2,a2,t2
	bltu	a5,t0,.L1026
.L1023:
	csrr	a3,vlenb
	srli	t5,a3,3
	neg	a7,t5
	addi	t1,a7,1
	th.extu	t2,t2,31,0
	add	t3,t3,t1
	sub	t6,t3,t2
	add	a6,a1,t6
	add	a4,a0,t6
	subw	t4,a2,t5
	li	a3,0
	vsetvli	t0,zero,e8,mf8,ta,ma
.L1027:
	vle8.v	v0,0(a6)
	addw	a3,a3,t5
	add	a6,a6,a7
	vse8.v	v0,0(a4)
	add	a4,a4,a7
	bgeu	t4,a3,.L1027
	subw	a5,a5,a3
	beq	a2,a3,.L1048
.L1026:
	th.extu	a7,a5,31,0
	li	a2,-1
.L1029:
	th.lrbu	t5,a1,a7,0
	th.srb	t5,a0,a7,0
	addi	a7,a7,-1
	bne	a7,a2,.L1029
	ret
.L1017:
	slli	a7,a4,1
	li	t2,0
.L1020:
	th.lrh	t1,a1,t2,0
	th.srh	t1,a0,t2,0
	addi	t2,t2,2
	bne	t2,a7,.L1020
	andi	t3,a2,1
	beq	t3,zero,.L1048
	j	.L1057
.L1056:
	ret
.L1032:
	li	t2,0
	j	.L1023
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	srliw	a3,a2,2
	andi	a4,a2,-4
	bltu	a0,a1,.L1062
	add.uw	a5,a2,a1
	bleu	a0,a5,.L1110
.L1062:
	beq	a3,zero,.L1061
	addi	t4,a1,4
	csrr	t0,vlenb
	sub	a7,a0,t4
	addi	a6,t0,-8
	bleu	a7,a6,.L1065
	th.extu	a3,a3,31,0
	mv	t6,a0
	mv	t5,a1
.L1066:
	vsetvli	a5,a3,e8,mf4,ta,ma
	vle32.v	v2,0(t5)
	sub	a3,a3,a5
	sh2add	t5,a5,t5
	vse32.v	v2,0(t6)
	sh2add	t6,a5,t6
	bne	a3,zero,.L1066
.L1061:
	bleu	a2,a4,.L1099
	th.extu	a5,a4,31,0
	addi	a6,a5,1
	add	t4,a1,a6
	add	a3,a0,a5
	csrr	t0,vlenb
	sub	t5,a3,t4
	addi	a7,t0,-2
	bleu	t5,a7,.L1069
	subw	a0,a2,a4
	th.extu	a2,a0,31,0
	add	a1,a1,a5
.L1070:
	vsetvli	a4,a2,e8,m1,ta,ma
	vle8.v	v3,0(a1)
	sub	a2,a2,a4
	add	a1,a1,a4
	vse8.v	v3,0(a3)
	add	a3,a3,a4
	bne	a2,zero,.L1070
	ret
.L1111:
	addi	a6,a6,1
.L1069:
	th.lrbu	t6,a1,a5,0
	sext.w	t1,a6
	th.srb	t6,a0,a5,0
	mv	a5,a6
	bltu	t1,a2,.L1111
.L1099:
	ret
.L1110:
	addiw	a5,a2,-1
	beq	a2,zero,.L1112
	csrr	t4,vlenb
	srli	t0,t4,3
	addiw	t1,t0,-1
	th.extu	t3,a5,31,0
	bltu	a5,t1,.L1072
	li	t2,510
	th.extu	t3,a5,31,0
	bleu	a5,t2,.L1072
	addi	a6,t3,-1
	add	a7,a1,a6
	add.uw	t5,a5,a0
	sub	t6,t5,a7
	addi	a3,t4,-2
	add	a4,t6,a3
	bleu	a4,a3,.L1072
	addiw	t0,t4,-1
	bltu	a5,t0,.L1083
	neg	a7,t4
	addi	t1,a7,1
	add	t5,t3,t1
	add	a6,a1,t5
	add	a4,a0,t5
	subw	t6,a2,t4
	li	t2,0
.L1074:
	vl1re8.v	v1,0(a6)
	csrr	a3,vlenb
	addw	t2,t2,a3
	add	a6,a6,a7
	vs1r.v	v1,0(a4)
	add	a4,a4,a7
	bgeu	t6,t2,.L1074
	subw	a5,a5,t2
	beq	a2,t2,.L1099
	srli	t4,t4,3
	addiw	t0,t4,-1
	subw	a2,a2,t2
	bltu	a5,t0,.L1077
.L1073:
	csrr	a7,vlenb
	srli	t5,a7,3
	neg	t6,t5
	addi	t1,t6,1
	th.extu	t2,t2,31,0
	add	t3,t3,t1
	sub	a3,t3,t2
	add	a6,a1,a3
	add	a4,a0,a3
	subw	t4,a2,t5
	li	a7,0
	vsetvli	t0,zero,e8,mf8,ta,ma
.L1078:
	vle8.v	v0,0(a6)
	addw	a7,a7,t5
	add	a6,a6,t6
	vse8.v	v0,0(a4)
	add	a4,a4,t6
	bgeu	t4,a7,.L1078
	subw	a5,a5,a7
	beq	a2,a7,.L1099
.L1077:
	th.extu	t6,a5,31,0
	li	a2,-1
.L1080:
	th.lrbu	t5,a1,t6,0
	th.srb	t5,a0,t6,0
	addi	t6,t6,-1
	bne	t6,a2,.L1080
	ret
.L1065:
	slli	t1,a3,2
	li	t3,0
.L1068:
	th.lrw	t2,a1,t3,0
	th.srw	t2,a0,t3,0
	addi	t3,t3,4
	bne	t3,t1,.L1068
	j	.L1061
.L1072:
	li	t1,-1
.L1081:
	th.lrbu	t2,a1,t3,0
	th.srb	t2,a0,t3,0
	addi	t3,t3,-1
	bne	t3,t1,.L1081
	ret
.L1112:
	ret
.L1083:
	li	t2,0
	j	.L1073
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
	srli	a5,a0,15
	sext.w	a4,a0
	bne	a5,zero,.L1122
	seqz	t0,a0
	sraiw	a2,a4,1
	addi	t1,t0,15
	li	a3,14
	th.mvnez	t1,a3,a2
	sraiw	t2,a4,2
	li	a0,13
	th.mvnez	t1,a0,t2
	sraiw	a1,a4,3
	li	a6,12
	th.mvnez	t1,a6,a1
	sraiw	a7,a4,4
	li	t3,11
	th.mvnez	t1,t3,a7
	sraiw	t4,a4,5
	li	t5,10
	th.mvnez	t1,t5,t4
	sraiw	t6,a4,6
	li	a5,9
	th.mvnez	t1,a5,t6
	sraiw	t0,a4,7
	li	a2,8
	th.mvnez	t1,a2,t0
	sraiw	t2,a4,8
	li	a3,7
	sraiw	a0,a4,9
	th.mvnez	t1,a3,t2
	li	a1,6
	th.mvnez	t1,a1,a0
	sraiw	a6,a4,10
	li	a7,5
	sraiw	t3,a4,11
	th.mvnez	t1,a7,a6
	li	t4,4
	sraiw	t5,a4,12
	th.mvnez	t1,t4,t3
	li	t6,3
	sraiw	t0,a4,14
	sraiw	a5,a4,13
	th.mvnez	t1,t6,t5
	li	a4,2
	th.mvnez	t1,a4,a5
	mv	a0,t0
	th.mveqz	a0,t1,t0
	ret
.L1122:
	li	a0,0
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
	bne	a5,zero,.L1141
	andi	t0,a0,2
	bne	t0,zero,.L1142
	andi	t1,a0,4
	bne	t1,zero,.L1143
	andi	t2,a0,8
	bne	t2,zero,.L1144
	andi	a1,a0,16
	bne	a1,zero,.L1145
	andi	a2,a0,32
	bne	a2,zero,.L1146
	andi	a3,a0,64
	bne	a3,zero,.L1147
	andi	a4,a0,128
	bne	a4,zero,.L1148
	andi	a6,a0,256
	bne	a6,zero,.L1149
	andi	a7,a0,512
	bne	a7,zero,.L1150
	andi	t3,a0,1024
	bne	t3,zero,.L1151
	slli	t4,a0,52
	blt	t4,zero,.L1152
	slli	t5,a0,51
	blt	t5,zero,.L1153
	slli	t6,a0,50
	blt	t6,zero,.L1154
	slli	a5,a0,49
	blt	a5,zero,.L1155
	sraiw	a0,a0,15
	seqz	t0,a0
	addi	a0,t0,15
	ret
.L1141:
	li	a0,0
	ret
.L1142:
	li	a0,1
	ret
.L1153:
	li	a0,12
	ret
.L1143:
	li	a0,2
	ret
.L1144:
	li	a0,3
	ret
.L1145:
	li	a0,4
	ret
.L1146:
	li	a0,5
	ret
.L1147:
	li	a0,6
	ret
.L1148:
	li	a0,7
	ret
.L1149:
	li	a0,8
	ret
.L1150:
	li	a0,9
	ret
.L1151:
	li	a0,10
	ret
.L1152:
	li	a0,11
	ret
.L1154:
	li	a0,13
	ret
.L1155:
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
	fli.s	fa5,32768.0
	fge.s	a5,fa0,fa5
	bne	a5,zero,.L1166
	fcvt.l.s a0,fa0,rtz
	ret
.L1166:
	fsub.s	fa0,fa0,fa5
	li	t0,32768
	fcvt.l.s a0,fa0,rtz
	add	a0,a0,t0
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
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
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
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	1
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L1172
.L1171:
	th.ext	a4,a5,0,0
	and	t0,a1,a4
	srliw	a5,a5,1
	addw	a0,t0,a0
	slliw	a1,a1,1
	bne	a5,zero,.L1171
	ret
.L1172:
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
	beq	a4,zero,.L1178
	beq	a1,zero,.L1179
.L1177:
	th.ext	a5,a1,0,0
	and	t0,a4,a5
	srliw	a1,a1,1
	addw	a0,t0,a0
	slliw	a4,a4,1
	bne	a1,zero,.L1177
	ret
.L1178:
	ret
.L1179:
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
	li	t0,32
	li	a4,1
	bltu	a1,a0,.L1183
	j	.L1209
.L1187:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	a0,a1,.L1185
	beq	t0,zero,.L1186
.L1183:
	addiw	t0,t0,-1
	bge	a1,zero,.L1187
.L1188:
	li	t0,0
.L1193:
	sltu	a3,a0,a1
	mv	a7,a4
	subw	a6,a0,a1
	th.mvnez	a7,zero,a3
	or	t1,t0,a7
	th.mveqz	a0,a6,a3
	srliw	a4,a4,1
	sext.w	t0,t1
	sext.w	a0,a0
	srliw	a1,a1,1
	bne	a4,zero,.L1193
.L1186:
	th.mveqz	a0,t0,a2
	ret
.L1185:
	bne	a4,zero,.L1188
	li	t0,0
	j	.L1186
.L1209:
	subw	a5,a0,a1
	sgtu	a1,a1,a0
	th.mveqz	a0,a5,a1
	sext.w	a0,a0
	xori	t0,a1,1
	j	.L1186
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
	bne	a5,zero,.L1214
	fgt.s	a0,fa0,fa1
.L1214:
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
	bne	a5,zero,.L1219
	fgt.d	a0,fa0,fa1
.L1219:
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
	blt	a1,zero,.L1237
	beq	a1,zero,.L1229
	li	a2,0
.L1225:
	li	t1,32
	li	a3,0
	j	.L1228
.L1238:
	beq	t1,zero,.L1227
.L1228:
	th.ext	a4,a1,0,0
	and	t0,a0,a4
	addiw	a5,t1,-1
	sraiw	a1,a1,1
	andi	t1,a5,0xff
	addw	a3,t0,a3
	slliw	a0,a0,1
	bne	a1,zero,.L1238
.L1227:
	negw	a0,a3
	th.mveqz	a0,a3,a2
	ret
.L1237:
	negw	a1,a1
	li	a2,1
	j	.L1225
.L1229:
	li	a0,0
	ret
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
	blt	a0,zero,.L1269
.L1240:
	bge	a1,zero,.L1241
	neg	a1,a1
	mv	a7,a5
.L1241:
	sext.w	t3,a0
	sext.w	a1,a1
	li	a3,32
	li	a4,1
	bgtu	t3,a1,.L1242
	j	.L1267
.L1246:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	t3,a1,.L1244
	beq	a3,zero,.L1258
.L1242:
	addiw	a3,a3,-1
	bge	a1,zero,.L1246
.L1247:
	li	t0,0
.L1252:
	sltu	t1,t3,a1
	mv	a6,a4
	subw	a2,t3,a1
	th.mvnez	a6,zero,t1
	or	t2,t0,a6
	th.mveqz	t3,a2,t1
	srliw	a4,a4,1
	sext.w	t0,t2
	sext.w	t3,t3
	srliw	a1,a1,1
	bne	a4,zero,.L1252
.L1254:
	th.extu	t4,t0,31,0
	neg	a0,t4
	th.mveqz	a0,t4,a7
	ret
.L1244:
	bne	a4,zero,.L1247
.L1258:
	li	t4,0
	neg	a0,t4
	th.mveqz	a0,t4,a7
	ret
.L1269:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1240
.L1267:
	sltu	a0,t3,a1
	xori	t0,a0,1
	j	.L1254
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
	bge	a0,zero,.L1271
	neg	a0,a0
	li	a6,1
.L1271:
	neg	a5,a1
	max	a1,a1,a5
	sext.w	a0,a0
	sext.w	a7,a1
	li	a3,32
	li	t2,1
	bgtu	a0,a7,.L1272
	j	.L1301
.L1276:
	slliw	a7,a7,1
	slliw	t2,t2,1
	bleu	a0,a7,.L1274
	beq	a3,zero,.L1275
.L1272:
	addiw	a3,a3,-1
	bge	a7,zero,.L1276
.L1299:
	subw	t1,a0,a7
	sltu	a2,a0,a7
	th.mveqz	a0,t1,a2
	srliw	t2,t2,1
	sext.w	a0,a0
	srliw	a7,a7,1
	bne	t2,zero,.L1299
.L1275:
	th.extu	t3,a0,31,0
	neg	a0,t3
	th.mveqz	a0,t3,a6
	ret
.L1274:
	beq	t2,zero,.L1275
	subw	t1,a0,a7
	sltu	a2,a0,a7
	th.mveqz	a0,t1,a2
	srliw	t2,t2,1
	sext.w	a0,a0
	srliw	a7,a7,1
	bne	t2,zero,.L1299
	j	.L1275
.L1301:
	subw	a4,a0,a7
	sltu	t0,a0,a7
	th.mveqz	a0,a4,t0
	sext.w	a0,a0
	j	.L1275
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	mv	a6,a0
	sext.w	a5,a1
	sext.w	a3,a0
	bgeu	a1,a0,.L1471
	srli	t1,a1,15
	bne	t1,zero,.L1308
	slliw	a7,a1,1
	th.extu	a5,a7,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1381
	srli	t4,a5,15
	bne	t4,zero,.L1381
	slliw	t5,a1,2
	th.extu	a5,t5,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1383
	srli	t6,a5,15
	bne	t6,zero,.L1383
	slliw	a5,a1,3
	th.extu	a5,a5,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1385
	srli	a0,a5,15
	bne	a0,zero,.L1385
	slliw	a4,a1,4
	th.extu	a5,a4,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1387
	srli	t0,a5,15
	bne	t0,zero,.L1387
	slliw	t1,a1,5
	th.extu	a5,t1,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1389
	srli	t2,a5,15
	bne	t2,zero,.L1389
	slliw	t3,a1,6
	th.extu	a5,t3,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1391
	srli	a7,a5,15
	bne	a7,zero,.L1391
	slliw	t4,a1,7
	th.extu	a5,t4,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1393
	srli	t5,a5,15
	bne	t5,zero,.L1393
	slliw	t6,a1,8
	th.extu	a5,t6,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1395
	srli	a0,a5,15
	bne	a0,zero,.L1395
	slliw	a5,a1,9
	th.extu	a5,a5,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1397
	srli	t0,a5,15
	bne	t0,zero,.L1397
	slliw	a4,a1,10
	th.extu	a5,a4,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1399
	srli	t1,a5,15
	bne	t1,zero,.L1399
	slliw	t2,a1,11
	th.extu	a5,t2,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1401
	srli	t3,a5,15
	bne	t3,zero,.L1401
	slliw	a7,a1,12
	th.extu	a5,a7,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1403
	srli	t4,a5,15
	bne	t4,zero,.L1403
	slliw	t5,a1,13
	th.extu	a5,t5,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1405
	srli	t6,a5,15
	bne	t6,zero,.L1405
	slliw	a0,a1,14
	th.extu	a5,a0,15,0
	sext.w	a4,a5
	bleu	a3,a5,.L1407
	srli	t0,a5,15
	bne	t0,zero,.L1407
	slliw	t1,a1,15
	th.extu	t3,t1,15,0
	bleu	a3,t3,.L1408
	mv	a0,a6
	bne	t3,zero,.L1472
.L1311:
	th.mveqz	a0,t3,a2
	ret
.L1381:
	li	a1,2
.L1310:
	sltu	a3,a3,a4
	subw	t2,a6,a5
	xori	t3,a3,1
	th.extu	a0,t2,15,0
	th.mveqz	a0,a6,t3
	li	t4,0
	beq	t3,zero,.L1379
	th.extu	t4,a1,15,0
.L1379:
	srli	t5,a5,1
	subw	a6,a0,t5
	sgtu	t6,t5,a0
	th.extu	a4,a6,15,0
	xori	t0,t6,1
	srli	a7,a1,1
	th.mvnez	a0,a4,t0
	li	t1,0
	beq	t0,zero,.L1315
	mv	t1,a7
.L1315:
	or	a3,t4,t1
	srli	t2,a1,2
	th.extu	t3,a3,15,0
	srli	t4,a5,2
	beq	t2,zero,.L1311
	sext.w	a7,t4
	sgtu	t5,a7,a0
	subw	t6,a0,t4
	xori	a6,t5,1
	th.extu	a4,t6,15,0
	th.mvnez	a0,a4,a6
	li	a7,0
	beq	a6,zero,.L1319
	mv	a7,t2
.L1319:
	or	t3,t3,a7
	srli	t0,a1,3
	th.extu	t3,t3,15,0
	srli	t1,a5,3
	beq	t0,zero,.L1311
	sext.w	a3,t1
	sgtu	t2,a3,a0
	subw	t4,a0,t1
	xori	t5,t2,1
	th.extu	t6,t4,15,0
	th.mvnez	a0,t6,t5
	li	a7,0
	beq	t5,zero,.L1323
	mv	a7,t0
.L1323:
	or	a6,t3,a7
	srli	a4,a1,4
	th.extu	t3,a6,15,0
	srli	t0,a5,4
	beq	a4,zero,.L1311
	sext.w	t1,t0
	sltu	t2,a0,t1
	subw	a3,a0,t0
	xori	t4,t2,1
	th.extu	t5,a3,15,0
	th.mvnez	a0,t5,t4
	li	a7,0
	beq	t4,zero,.L1327
	mv	a7,a4
.L1327:
	or	t3,t3,a7
	srli	t6,a1,5
	th.extu	t3,t3,15,0
	srli	a4,a5,5
	beq	t6,zero,.L1311
	sext.w	a6,a4
	sltu	t0,a0,a6
	subw	t1,a0,a4
	xori	t2,t0,1
	th.extu	a3,t1,15,0
	th.mvnez	a0,a3,t2
	li	a7,0
	beq	t2,zero,.L1331
	mv	a7,t6
.L1331:
	or	t4,t3,a7
	srli	t5,a1,6
	th.extu	t3,t4,15,0
	srli	t6,a5,6
	beq	t5,zero,.L1311
	sext.w	a4,t6
	sltu	a6,a0,a4
	subw	t0,a0,t6
	xori	t1,a6,1
	th.extu	t2,t0,15,0
	th.mvnez	a0,t2,t1
	li	a7,0
	beq	t1,zero,.L1335
	mv	a7,t5
.L1335:
	or	t3,t3,a7
	srli	t4,a1,7
	th.extu	t3,t3,15,0
	srli	a3,a5,7
	beq	t4,zero,.L1311
	sext.w	t5,a3
	sltu	t6,a0,t5
	subw	a4,a0,a3
	xori	a6,t6,1
	th.extu	t0,a4,15,0
	th.mvnez	a0,t0,a6
	li	a7,0
	beq	a6,zero,.L1339
	mv	a7,t4
.L1339:
	or	t1,t3,a7
	srli	t2,a1,8
	th.extu	t3,t1,15,0
	srli	t4,a5,8
	beq	t2,zero,.L1311
	sext.w	a3,t4
	sltu	t5,a0,a3
	subw	t6,a0,t4
	xori	a4,t5,1
	th.extu	a6,t6,15,0
	th.mvnez	a0,a6,a4
	li	a7,0
	beq	a4,zero,.L1343
	mv	a7,t2
.L1343:
	or	t3,t3,a7
	srli	t0,a1,9
	th.extu	t3,t3,15,0
	srli	t1,a5,9
	beq	t0,zero,.L1311
	sext.w	t2,t1
	sltu	t4,a0,t2
	subw	a3,a0,t1
	xori	t5,t4,1
	th.extu	t6,a3,15,0
	th.mvnez	a0,t6,t5
	li	a7,0
	beq	t5,zero,.L1347
	mv	a7,t0
.L1347:
	or	a4,t3,a7
	srli	t0,a1,10
	th.extu	t3,a4,15,0
	srli	t1,a5,10
	beq	t0,zero,.L1311
	sext.w	a6,t1
	sltu	t2,a0,a6
	subw	t4,a0,t1
	xori	t5,t2,1
	th.extu	a3,t4,15,0
	th.mvnez	a0,a3,t5
	li	a7,0
	beq	t5,zero,.L1351
	mv	a7,t0
.L1351:
	or	t3,t3,a7
	srli	t6,a1,11
	th.extu	t3,t3,15,0
	srli	a4,a5,11
	beq	t6,zero,.L1311
	sext.w	t0,a4
	sltu	t1,a0,t0
	subw	t2,a0,a4
	xori	a6,t1,1
	th.extu	t4,t2,15,0
	th.mvnez	a0,t4,a6
	li	a7,0
	beq	a6,zero,.L1355
	mv	a7,t6
.L1355:
	or	t5,t3,a7
	srli	t6,a1,12
	th.extu	t3,t5,15,0
	srli	a3,a5,12
	beq	t6,zero,.L1311
	sext.w	a4,a3
	sltu	t0,a0,a4
	subw	t1,a0,a3
	xori	t2,t0,1
	th.extu	a6,t1,15,0
	th.mvnez	a0,a6,t2
	li	a7,0
	beq	t2,zero,.L1359
	mv	a7,t6
.L1359:
	or	t3,t3,a7
	srli	t4,a1,13
	th.extu	t3,t3,15,0
	srli	t5,a5,13
	beq	t4,zero,.L1311
	sext.w	t6,t5
	sltu	a4,a0,t6
	subw	a3,a0,t5
	xori	t0,a4,1
	th.extu	t1,a3,15,0
	th.mvnez	a0,t1,t0
	li	a7,0
	beq	t0,zero,.L1363
	mv	a7,t4
.L1363:
	or	t2,t3,a7
	srli	t4,a1,14
	th.extu	t3,t2,15,0
	srli	t5,a5,14
	beq	t4,zero,.L1311
	sext.w	a6,t5
	sltu	t6,a0,a6
	subw	a4,a0,t5
	xori	t0,t6,1
	th.extu	a3,a4,15,0
	th.mvnez	a0,a3,t0
	li	a7,0
	beq	t0,zero,.L1367
	mv	a7,t4
.L1367:
	or	t3,t3,a7
	li	t1,16384
	th.extu	t3,t3,15,0
	srli	a5,a5,15
	beq	a1,t1,.L1311
	sext.w	a1,a5
	sltu	t2,a0,a1
	subw	t4,a0,a5
	xori	t5,t2,1
	th.extu	a6,t4,15,0
	or	t3,t5,t3
	th.mvnez	a0,a6,t5
	th.mveqz	a0,t3,a2
	ret
.L1383:
	li	a1,4
	j	.L1310
.L1385:
	li	a1,8
	j	.L1310
.L1387:
	li	a1,16
	j	.L1310
.L1397:
	li	a1,512
	j	.L1310
.L1389:
	li	a1,32
	j	.L1310
.L1391:
	li	a1,64
	j	.L1310
.L1393:
	li	a1,128
	j	.L1310
.L1395:
	li	a1,256
	j	.L1310
.L1471:
	subw	a4,a0,a1
	sub	t0,a5,a3
	th.extu	a0,a4,15,0
	th.mvnez	a0,a6,t0
	seqz	t3,t0
	j	.L1311
.L1399:
	li	a1,1024
	j	.L1310
.L1401:
	bseti	a1,zero,11
	j	.L1310
.L1403:
	li	a1,4096
	j	.L1310
.L1405:
	li	a1,8192
	j	.L1310
.L1407:
	li	a1,16384
	j	.L1310
.L1472:
	li	a1,32768
	mv	a5,a1
	mv	a4,a1
	j	.L1310
.L1408:
	li	a5,32768
	mv	a1,a5
	mv	a4,a5
	j	.L1310
.L1308:
	subw	t2,a0,a1
	th.extu	a0,t2,15,0
	li	t3,1
	j	.L1311
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	1
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	li	a3,64
	li	t2,1
	bseti	a6,zero,31
	bltu	a1,a0,.L1474
	j	.L1503
.L1478:
	slli	a1,a1,1
	slli	t2,t2,1
	bleu	a0,a1,.L1476
	beq	a3,zero,.L1477
.L1474:
	and	a4,a1,a6
	addiw	a3,a3,-1
	beq	a4,zero,.L1478
.L1479:
	li	a4,0
.L1484:
	sltu	t0,a0,a1
	mv	a7,t2
	sub	t1,a0,a1
	th.mvnez	a7,zero,t0
	srli	t2,t2,1
	or	a4,a4,a7
	th.mveqz	a0,t1,t0
	srli	a1,a1,1
	bne	t2,zero,.L1484
.L1477:
	th.mveqz	a0,a4,a2
	ret
.L1476:
	bne	t2,zero,.L1479
	j	.L1477
.L1503:
	sub	a5,a0,a1
	sgtu	a1,a1,a0
	th.mveqz	a0,a5,a1
	xori	a4,a1,1
	j	.L1477
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
	beq	a5,zero,.L1506
	addiw	a6,a1,-32
	sllw	a2,a0,a6
	li	a1,0
.L1507:
	slli	a7,a2,32
	th.extu	t3,a1,31,0
	or	a0,t3,a7
.L1511:
	ret
.L1506:
	beq	a1,zero,.L1511
	li	t0,32
	subw	t1,t0,a1
	th.ext	a3,a0,63,32
	srlw	t2,a0,t1
	sllw	a0,a3,a1
	or	a2,t2,a0
	sllw	a1,a4,a1
	j	.L1507
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
	beq	a5,zero,.L1513
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1513:
	beq	a2,zero,.L1517
	li	t0,64
	subw	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1517:
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
	beq	a4,zero,.L1519
	th.ext	a6,a0,63,32
	addiw	a7,a1,-32
	sraw	a1,a6,a7
	sraiw	a3,a6,31
.L1520:
	th.extu	t3,a1,31,0
	slli	t4,a3,32
	or	a0,t4,t3
.L1524:
	ret
.L1519:
	beq	a1,zero,.L1524
	li	t0,32
	subw	t1,t0,a1
	th.ext	a0,a0,63,32
	sllw	t2,a0,t1
	srlw	a2,a5,a1
	sraw	a3,a0,a1
	or	a1,t2,a2
	j	.L1520
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
	beq	a5,zero,.L1526
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1526:
	beq	a2,zero,.L1530
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1530:
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
	rev8	a0,a0
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
	th.revw	a0,a0
	sext.w	a0,a0
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
	slliw	t3,a2,1
	li	t5,2
	subw	a6,t5,t3
	srlw	t6,a4,a6
	bexti	a3,t6,1
	addw	a7,t4,a7
	xori	t4,a3,1
	addw	t0,t2,a7
	subw	t1,t5,t6
	andi	t2,t4,0xff
	addw	a5,t3,t0
	th.mveqz	t1,zero,t2
	addw	a0,t1,a5
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
	seqz	a4,a1
	addiw	a5,a4,-1
	th.mvnez	a0,zero,a1
	and	t0,a5,a1
	or	t1,t0,a0
	clz	t2,t1
	slliw	a0,a4,6
	add	a0,a0,t2
	ret
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
	blt	a3,a4,.L1539
	li	a0,2
	bgt	a3,a4,.L1543
	sext.w	t0,a5
	sext.w	a1,a1
	sgtu	a0,t0,a1
	sltu	t1,t0,a1
	li	t2,0
	addi	a0,a0,1
	th.mvnez	a0,t2,t1
	ret
.L1539:
	li	a0,0
.L1543:
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
	blt	a3,a4,.L1546
	li	a0,1
	bgt	a3,a4,.L1549
	sext.w	t0,a5
	sext.w	a1,a1
	sgtu	a0,t0,a1
	sltu	t1,t0,a1
	li	t2,-1
	th.mvnez	a0,t2,t1
	ret
.L1546:
	li	a0,-1
.L1549:
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
	blt	a1,a3,.L1552
	li	a0,2
	bgt	a1,a3,.L1556
	sgtu	a0,a5,a2
	li	t0,0
	sltu	a2,a5,a2
	addi	a0,a0,1
	th.mvnez	a0,t0,a2
	ret
.L1552:
	li	a0,0
.L1556:
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
	th.extu	a1,a0,15,0
	seqz	t0,a1
	slliw	t1,t0,4
	srlw	a5,a0,t1
	andi	a2,a5,0xff
	seqz	t2,a2
	slliw	a0,t2,3
	srlw	a4,a5,a0
	andi	a3,a4,15
	seqz	a6,a3
	slliw	a7,a6,2
	srlw	t3,a4,a7
	andi	t4,t3,3
	seqz	t5,t4
	slliw	t6,t5,1
	srlw	a1,t3,t6
	andi	t0,a1,3
	addw	t1,a0,t1
	not	a2,t0
	srliw	a5,t0,1
	li	t2,2
	addw	a4,a7,t1
	subw	a0,t2,a5
	th.ext	a3,a2,0,0
	addw	a6,t6,a4
	and	a7,a0,a3
	addw	a0,a6,a7
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
	addiw	a4,a5,-1
	and	t0,a4,a0
	th.mvnez	a1,zero,a0
	or	a1,a1,t0
	ctz	t1,a1
	slliw	a0,a5,6
	add	a0,a0,t1
	ret
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	1
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	ctz	a5,a1
	mv	a4,a0
	ctz	a3,a0
	addiw	a0,a5,65
	addiw	t0,a3,1
	th.mveqz	a0,zero,a1
	th.mvnez	a0,t0,a4
	ret
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
	beq	a4,zero,.L1564
	addiw	a7,a1,-32
	th.extu	a6,a0,63,32
	srlw	a3,a6,a7
	li	a1,0
.L1565:
	th.extu	t3,a3,31,0
	slli	t4,a1,32
	or	a0,t4,t3
.L1569:
	ret
.L1564:
	beq	a1,zero,.L1569
	li	t0,32
	subw	t1,t0,a1
	th.extu	a0,a0,63,32
	srlw	a2,a5,a1
	sllw	t2,a0,t1
	srlw	a1,a0,a1
	or	a3,t2,a2
	j	.L1565
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
	beq	a5,zero,.L1571
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1571:
	beq	a2,zero,.L1575
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1575:
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
	th.extu	a2,a0,15,0
	th.extu	a3,a1,15,0
	mulw	a5,a2,a3
	srliw	a0,a0,16
	srliw	a1,a1,16
	srliw	a4,a5,16
	th.mulaw	a4,a3,a0
	th.extu	t0,a5,15,0
	slliw	t1,a4,16
	addw	t2,t1,t0
	srliw	a6,t2,16
	th.mulaw	a6,a2,a1
	srliw	a7,a4,16
	th.extu	t3,t2,15,0
	th.mulaw	a7,a0,a1
	srliw	t4,a6,16
	slliw	t5,a6,16
	addw	t6,t5,t3
	th.extu	a2,t6,31,0
	addw	a3,t4,a7
	slli	a5,a3,32
	or	a0,a2,a5
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
	th.extu	t1,a0,15,0
	th.extu	a2,a1,15,0
	mulw	a5,t1,a2
	srliw	a6,a0,16
	mv	a3,a0
	srliw	a0,a1,16
	th.ext	t3,a1,63,32
	th.ext	a7,a3,63,32
	srliw	a4,a5,16
	th.mulaw	a4,a2,a6
	th.extu	t0,a5,15,0
	slliw	t2,a4,16
	addw	t4,t2,t0
	srliw	t5,t4,16
	th.mulaw	t5,t1,a0
	srliw	t6,a4,16
	th.extu	t1,t4,15,0
	th.mulaw	t6,a6,a0
	srliw	a2,t5,16
	slliw	a5,t5,16
	addw	a6,a5,t1
	th.extu	a0,a6,31,0
	addw	a4,a2,t6
	slli	t0,a4,32
	or	t2,a0,t0
	th.ext	t4,t2,63,32
	th.mulaw	t4,t3,a3
	th.extu	a3,t2,31,0
	th.mulaw	t4,a7,a1
	slli	a1,t4,32
	or	a0,a3,a1
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
	th.extu	a6,a0,31,0
	th.extu	a3,a1,31,0
	mul	a2,a6,a3
	srli	a4,a0,32
	srli	a1,a1,32
	srli	a5,a2,32
	th.mula	a5,a3,a4
	th.extu	t0,a5,31,0
	th.mula	t0,a6,a1
	srli	t1,a5,32
	th.mula	t1,a4,a1
	srli	t2,t0,32
	slli	a0,t0,32
	add.uw	a0,a2,a0
	add	a1,t1,t2
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
	th.extu	t3,a0,31,0
	th.extu	a4,a2,31,0
	mv	a6,a0
	mul	a0,t3,a4
	srli	t1,a6,32
	srli	a7,a2,32
	srli	a5,a0,32
	th.mula	a5,a4,t1
	th.extu	t0,a5,31,0
	th.mula	t0,t3,a7
	srli	t2,a5,32
	th.mula	t2,t1,a7
	srli	t4,t0,32
	slli	t5,t0,32
	add.uw	a0,a0,t5
	add	t6,t2,t4
	th.mula	t6,a6,a3
	th.mula	t6,a2,a1
	mv	a1,t6
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
	xor	a5,a0,a1
	th.ext	a4,a5,63,32
	xor	t0,a5,a4
	sext.w	t1,t0
	srliw	t2,t0,16
	xor	a0,t2,t1
	srliw	a1,a0,8
	xor	a2,a1,a0
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
	andi	a5,a0,1
	fmv.d	fa5,fa0
	fli.d	fa0,1.0
	beq	a5,zero,.L1594
	mv	a1,a0
.L1591:
	fmul.d	fa0,fa0,fa5
.L1589:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1590
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1591
.L1596:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1591
	j	.L1596
.L1590:
	blt	a0,zero,.L1597
	ret
.L1594:
	mv	a1,a0
	j	.L1589
.L1597:
	fli.d	ft0,1.0
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
	andi	a5,a0,1
	fmv.s	fa5,fa0
	fli.s	fa0,1.0
	beq	a5,zero,.L1604
	mv	a1,a0
.L1601:
	fmul.s	fa0,fa0,fa5
.L1599:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1600
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1601
.L1606:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1601
	j	.L1606
.L1600:
	blt	a0,zero,.L1607
	ret
.L1604:
	mv	a1,a0
	j	.L1599
.L1607:
	fli.s	ft0,1.0
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
	bltu	a3,a4,.L1610
	li	a0,2
	bgtu	a3,a4,.L1614
	sext.w	t0,a5
	sext.w	a1,a1
	sgtu	a0,t0,a1
	sltu	t1,t0,a1
	li	t2,0
	addi	a0,a0,1
	th.mvnez	a0,t2,t1
	ret
.L1610:
	li	a0,0
.L1614:
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
	bltu	a3,a4,.L1617
	li	a0,1
	bgtu	a3,a4,.L1620
	sext.w	t0,a5
	sext.w	a1,a1
	sgtu	a0,t0,a1
	sltu	t1,t0,a1
	li	t2,-1
	th.mvnez	a0,t2,t1
	ret
.L1617:
	li	a0,-1
.L1620:
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
	bltu	a1,a3,.L1623
	li	a0,2
	bgtu	a1,a3,.L1627
	sgtu	a0,a5,a2
	li	t0,0
	sltu	a2,a5,a2
	addi	a0,a0,1
	th.mvnez	a0,t0,a2
	ret
.L1623:
	li	a0,0
.L1627:
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
	.align	4
.LC7:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC8:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.srodata.cst8
	.align	3
.LC9:
	.word	0
	.word	-1075838976
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
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
