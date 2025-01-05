	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_h1p0_zicsr2p0_zifencei2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
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
	add	t4,a1,a2
	add	t3,a0,a2
	beq	a2,zero,.L40
	addi	t5,a2,-1
	sltiu	a7,t5,15
	bne	a7,zero,.L42
	csrr	t6,vlenb
	srli	a5,t6,1
	addi	a3,a5,-1
	bltu	t5,a3,.L42
	addi	t0,a2,-2
	add	t1,a1,t0
	add	a4,a0,t5
	sub	t2,a4,t1
	addi	a6,t6,-2
	add	a7,t2,a6
	bleu	a7,a6,.L42
	addi	a5,t6,-1
	bltu	t5,a5,.L21
	sub	t5,a2,t6
	add	a3,a1,t5
	add	a4,a0,t5
	neg	t0,t6
	sub	t1,a2,t6
	li	t2,0
.L9:
	vl1re8.v	v0,0(a3)
	add	t2,t2,t6
	add	a3,a3,t0
	vs1r.v	v0,0(a4)
	add	a4,a4,t0
	bgeu	t1,t2,.L9
	sub	t6,a2,t2
	sub	t3,t3,t2
	sub	t4,t4,t2
	mv	a4,t6
	beq	a2,t2,.L48
.L8:
	csrr	a6,vlenb
	srli	a5,a6,1
	addi	a7,a5,-1
	addi	a2,t6,-1
	bltu	a2,a7,.L11
	sub	t5,t6,a5
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	a1,a1,t5
	vle8.v	v2,0(a1)
	add	t2,a0,t5
	sub	a3,t6,a5
	neg	t1,a5
	vse8.v	v2,0(t2)
	bltu	a3,a5,.L12
	add	a5,a1,t1
	vle8.v	v3,0(a5)
	add	a7,t2,t1
	mv	a5,a6
	vse8.v	v3,0(a7)
.L12:
	sub	a4,a4,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	beq	t6,a5,.L40
.L11:
	sub	t6,t3,a4
.L14:
	lbu	a6,-1(t4)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a6,0(t3)
	bne	t6,t3,.L14
	ret
.L5:
	bne	a0,a1,.L49
.L40:
	ret
.L42:
	lbu	a2,-1(t4)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a2,0(t3)
	bne	a0,t3,.L42
	ret
.L49:
	beq	a2,zero,.L40
	addi	a6,a1,1
	csrr	a5,vlenb
	sub	a3,a0,a6
	addi	t0,a5,-2
	bleu	a3,t0,.L17
	mv	a4,a0
.L18:
	vsetvli	t1,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	sub	a2,a2,t1
	add	a1,a1,t1
	vse8.v	v1,0(a4)
	add	a4,a4,t1
	bne	a2,zero,.L18
	ret
.L17:
	add	a2,a0,a2
	mv	a1,a0
.L19:
	lbu	t2,-1(a6)
	addi	a1,a1,1
	addi	a6,a6,1
	sb	t2,-1(a1)
	bne	a2,a1,.L19
	ret
.L21:
	mv	a4,a2
	mv	t6,a2
	j	.L8
.L48:
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
	lbu	t0,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	t0,0(a0)
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
	lbu	a5,1(a0)
	addi	a0,a0,1
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
.L135:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L143
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L135
	li	a0,0
.L138:
	subw	a0,a0,a4
	ret
.L143:
	sext.w	a0,a5
	j	.L138
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
	addi	a0,a0,1
	bne	a4,a5,.L165
	lbu	a5,0(a0)
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
	slli	a4,t0,1
	sub	a2,a2,t0
	add	a0,a0,a4
	vmv1r.v	v2,v5
	vmv1r.v	v3,v4
	vsseg2e8.v	v2,(a1)
	add	a1,a1,a4
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
	li	a5,32
	beq	a0,a5,.L178
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L178:
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
	bleu	a0,a5,.L182
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L182:
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
	beq	a0,a5,.L190
	addiw	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L190:
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
	bleu	a0,a4,.L195
	addiw	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L199
.L198:
	ret
.L195:
	li	a0,1
	ret
.L199:
	li	t1,-8192
	addiw	t2,t1,-40
	addw	a1,a5,t2
	bleu	a1,a0,.L198
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
	bleu	a0,a4,.L209
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L208
	li	t2,-8192
	addiw	a1,t2,-42
	li	a3,45056
	addw	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L208
	li	a7,-57344
	li	t3,8192
	addw	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L208
	li	a0,-65536
	addiw	t6,a0,4
	li	t0,1048576
	addw	a4,a5,t6
	addi	t1,t0,3
	li	a0,0
	bgtu	a4,t1,.L208
	li	t2,65536
	addi	a1,t2,-2
	and	a5,a5,a1
	sub	a3,a5,a1
	snez	a0,a3
.L208:
	ret
.L209:
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
	bleu	a4,a5,.L212
	ori	a0,a0,32
	addiw	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L212:
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
	beq	a5,zero,.L223
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L219
	fgt.d	t1,fa0,fa1
	beq	t1,zero,.L224
	fsub.d	fa0,fa0,fa1
	ret
.L224:
	fmv.d.x	fa0,zero
.L223:
	ret
.L219:
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
	beq	a5,zero,.L233
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L229
	fgt.s	t1,fa0,fa1
	beq	t1,zero,.L234
	fsub.s	fa0,fa0,fa1
	ret
.L234:
	fmv.s.x	fa0,zero
.L233:
	ret
.L229:
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
	beq	a3,zero,.L240
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L241
	srli	t1,a5,63
	srli	a2,a4,63
	bne	t1,a2,.L245
	flt.d	t2,fa0,fa1
	beq	t2,zero,.L244
.L240:
	fmv.d.x	fa0,a4
	ret
.L245:
	fmv.d	fa0,fa1
	beq	t1,zero,.L241
.L244:
	ret
.L241:
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
	beq	a3,zero,.L251
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L252
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	bne	a0,a1,.L256
	flt.s	a6,fa0,fa1
	beq	a6,zero,.L255
.L251:
	fmv.s.x	fa0,a4
	ret
.L256:
	fmv.s	fa0,fa1
	beq	a0,zero,.L252
.L255:
	ret
.L252:
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
	bne	a0,zero,.L265
	mv	a2,s3
	mv	a3,s0
	mv	a0,s3
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L264
	srli	a5,s2,63
	srli	a4,s0,63
	bne	a5,a4,.L270
	mv	a2,s3
	mv	a3,s0
	mv	a0,s1
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L266
	mv	s0,s2
.L261:
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
.L270:
	.cfi_restore_state
	beq	a5,zero,.L264
.L265:
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
.L264:
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
.L266:
	.cfi_restore_state
	mv	s1,s3
	j	.L261
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
	beq	a3,zero,.L276
	feq.d	t0,fa1,fa1
	beq	t0,zero,.L277
	srli	t1,a5,63
	srli	a2,a4,63
	beq	t1,a2,.L273
	bne	t1,zero,.L280
.L276:
	fmv.d.x	fa0,a4
	ret
.L273:
	flt.d	t2,fa0,fa1
	fmv.d	fa0,fa1
	bne	t2,zero,.L277
.L280:
	ret
.L277:
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
	beq	a3,zero,.L286
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L287
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	sext.w	a0,a2
	sext.w	a1,t2
	beq	a0,a1,.L283
	bne	a0,zero,.L290
.L286:
	fmv.s.x	fa0,a4
	ret
.L283:
	flt.s	a6,fa0,fa1
	fmv.s	fa0,fa1
	bne	a6,zero,.L287
.L290:
	ret
.L287:
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
	bne	a0,zero,.L297
	mv	a2,s1
	mv	a3,s0
	mv	a0,s1
	mv	a1,s0
	call	__unordtf2
	bne	a0,zero,.L299
	srli	a5,s2,63
	srli	a4,s0,63
	beq	a5,a4,.L293
	beq	a5,zero,.L297
.L299:
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
.L293:
	.cfi_restore_state
	mv	a2,s1
	mv	a3,s0
	mv	a0,s3
	mv	a1,s2
	call	__lttf2
	blt	a0,zero,.L304
.L297:
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
.L304:
	.cfi_restore_state
	mv	s1,s3
	mv	s0,s2
	j	.L297
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
	beq	a5,zero,.L308
	lui	a2,%hi(.LANCHOR0)
	addi	a3,a0,%lo(s.0)
	addi	t0,a2,%lo(.LANCHOR0)
.L307:
	andi	a4,a5,63
	add	t1,t0,a4
	lbu	t2,0(t1)
	srliw	a5,a5,6
	addi	a3,a3,1
	sb	t2,-1(a3)
	bne	a5,zero,.L307
	sb	zero,0(a3)
	addi	a0,a0,%lo(s.0)
	ret
.L308:
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
	beq	a1,zero,.L319
	ld	a5,0(a1)
	sd	a1,8(a0)
	sd	a5,0(a0)
	sd	a0,0(a1)
	ld	t0,0(a0)
	beq	t0,zero,.L318
	sd	a0,8(t0)
.L318:
	ret
.L319:
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
	beq	a5,zero,.L321
	ld	a4,8(a0)
	sd	a4,8(a5)
.L321:
	ld	t0,8(a0)
	beq	t0,zero,.L329
	sd	a5,0(t0)
.L329:
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
	beq	s3,zero,.L331
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s6,16(sp)
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 22, -64
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L333
.L349:
	add	s0,s0,s2
	beq	s3,s1,.L348
.L333:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L349
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s6,16(sp)
	.cfi_restore 22
.L345:
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
.L348:
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
.L331:
	mul	t0,s2,s3
	addi	t1,s3,1
	sd	t1,0(s7)
	add	s5,s8,t0
	beq	s2,zero,.L345
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L345
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
	beq	s5,zero,.L351
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
	j	.L353
.L365:
	add	s0,s0,s4
	beq	s5,s1,.L364
.L353:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L365
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
.L364:
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
.L351:
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
.L374:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L368
	sext.w	a1,a4
	bleu	a5,a2,.L368
	li	t0,43
	beq	a4,t0,.L369
	li	a6,45
	bne	a4,a6,.L387
	lbu	a7,1(a0)
	li	t3,9
	addi	a3,a0,1
	addiw	a4,a7,-48
	bgtu	a4,t3,.L379
	li	t6,1
.L372:
	li	a0,0
	li	a1,9
.L376:
	slliw	a5,a0,2
	lbu	a2,1(a3)
	addw	a0,a5,a0
	slliw	t0,a0,1
	subw	a0,t0,a4
	mv	t1,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L376
	bne	t6,zero,.L384
	subw	a0,t1,t0
	ret
.L368:
	addi	a0,a0,1
	j	.L374
.L387:
	addiw	t4,a1,-48
	li	t5,9
	bgtu	t4,t5,.L379
	mv	a3,a0
	addiw	a4,a4,-48
	li	t6,0
	j	.L372
.L369:
	lbu	t1,1(a0)
	li	t2,9
	addi	a3,a0,1
	addiw	a4,t1,-48
	li	t6,0
	bleu	a4,t2,.L372
.L379:
	li	a0,0
.L384:
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
.L395:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L389
	sext.w	a1,a4
	bleu	a5,a2,.L389
	li	t0,43
	beq	a4,t0,.L390
	li	a6,45
	bne	a4,a6,.L408
	lbu	a7,1(a0)
	li	t3,9
	addi	a3,a0,1
	addiw	a4,a7,-48
	bgtu	a4,t3,.L400
	li	t6,1
.L393:
	li	a0,0
	li	a1,9
.L397:
	slli	a5,a0,2
	lbu	a2,1(a3)
	add	a0,a5,a0
	slli	t0,a0,1
	sub	a0,t0,a4
	mv	t1,a4
	addiw	a4,a2,-48
	addi	a3,a3,1
	bleu	a4,a1,.L397
	bne	t6,zero,.L405
	sub	a0,t1,t0
	ret
.L389:
	addi	a0,a0,1
	j	.L395
.L408:
	addiw	t4,a1,-48
	li	t5,9
	bgtu	t4,t5,.L400
	mv	a3,a0
	addiw	a4,a4,-48
	li	t6,0
	j	.L393
.L390:
	lbu	t1,1(a0)
	li	t2,9
	addi	a3,a0,1
	addiw	a4,t1,-48
	li	t6,0
	bleu	a4,t2,.L393
.L400:
	li	a0,0
.L405:
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
.L414:
	lbu	a4,0(a0)
	addiw	a5,a4,-9
	beq	a4,a3,.L410
	sext.w	a1,a4
	bleu	a5,a2,.L410
	li	t0,43
	beq	a4,t0,.L411
	li	a6,45
	bne	a4,a6,.L430
	lbu	a7,1(a0)
	li	t3,9
	addi	t6,a0,1
	addiw	a3,a7,-48
	li	a4,1
	bgtu	a3,t3,.L421
.L415:
	li	a0,0
	li	a1,9
.L418:
	slli	a5,a0,2
	lbu	a2,1(t6)
	add	a0,a5,a0
	slli	t0,a0,1
	sub	a0,t0,a3
	mv	t1,a3
	addiw	a3,a2,-48
	addi	t6,t6,1
	bleu	a3,a1,.L418
	bne	a4,zero,.L426
	sub	a0,t1,t0
	ret
.L410:
	addi	a0,a0,1
	j	.L414
.L430:
	addiw	t4,a1,-48
	li	t5,9
	mv	t6,a0
	addiw	a3,a4,-48
	bgtu	t4,t5,.L421
.L429:
	li	a4,0
	j	.L415
.L411:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addiw	a3,t1,-48
	bleu	a3,t2,.L429
.L421:
	li	a0,0
.L426:
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
	beq	a2,zero,.L432
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
.L435:
	srli	s2,s0,1
	mul	s1,s2,s4
	mv	a0,s5
	addi	s0,s0,-1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L436
	beq	a0,zero,.L446
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L435
.L447:
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
.L432:
	ld	ra,56(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L436:
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
	bne	s0,zero,.L435
	j	.L447
.L446:
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
	beq	s0,zero,.L453
	sd	s2,48(sp)
	.cfi_offset 18, -32
.L462:
	sraiw	s2,s0,1
	mul	s1,s2,s4
	mv	a2,s7
	mv	a0,s5
	addiw	s0,s0,-1
	sraiw	s0,s0,1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L466
	ble	a0,zero,.L451
	add	s3,s1,s4
	bne	s0,zero,.L462
.L467:
	ld	s2,48(sp)
	.cfi_restore 18
.L453:
	li	s1,0
.L461:
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
.L451:
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
	beq	s2,zero,.L467
	mv	s0,s2
	j	.L462
.L466:
	ld	s2,48(sp)
	.cfi_restore 18
	j	.L461
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
	slli	t0,a5,32
	srli	t1,t0,32
	slli	t2,a0,32
	or	a0,t1,t2
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
	j	.L485
.L487:
	beq	a1,a5,.L486
	addi	a0,a0,4
.L485:
	lw	a5,0(a0)
	bne	a5,zero,.L487
	li	a0,0
	ret
.L486:
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
.L491:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L490
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L491
.L490:
	li	a0,-1
	blt	a5,a4,.L495
	sgt	a0,a5,a4
.L495:
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
.L499:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L499
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
	beq	a5,zero,.L504
	li	t1,0
	addi	t0,a0,4
.L503:
	slli	a4,t1,2
	vsetvli	a2,zero,e32,m1,ta,ma
	add	t0,t0,a4
	vle32ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	t1,vl
	vfirst.m	a3,v0
	blt	a3,zero,.L503
	slli	t2,a3,2
	add	a1,t0,t2
	sub	a0,a1,a0
	srai	a0,a0,2
	ret
.L504:
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
	beq	a2,zero,.L514
.L522:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L511
	beq	a5,zero,.L511
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L522
.L514:
	li	a0,0
	ret
.L511:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L523
	ret
.L523:
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
	beq	a2,zero,.L528
.L536:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L535
	addi	a0,a0,4
	bne	a2,zero,.L536
.L528:
	li	a0,0
	ret
.L535:
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
	beq	a2,zero,.L543
.L554:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L553
	addi	a1,a1,4
	bne	a2,zero,.L554
.L543:
	li	a0,0
	ret
.L553:
	sgt	a0,a4,a5
	blt	a4,a5,.L555
	ret
.L555:
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
	beq	a2,zero,.L563
	slli	a2,a2,2
	mv	a4,a0
.L558:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L558
.L563:
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
	beq	a0,a1,.L598
	slli	a5,a2,2
	sub	a4,a0,a1
	addi	t5,a2,-1
	bgeu	a4,a5,.L603
	beq	a2,zero,.L598
	sltiu	a4,t5,8
	bne	a4,zero,.L570
	csrr	t0,vlenb
	srli	t1,t0,2
	addi	a3,t1,-1
	bltu	t5,a3,.L570
	addi	t2,a5,-4
	addi	a6,a5,-8
	add	a7,a0,t2
	add	t3,a1,a6
	sub	t4,a7,t3
	addi	t6,t0,-8
	add	a4,t4,t6
	bleu	a4,t6,.L570
	sub	a5,a5,t0
	add	a3,a1,a5
	neg	t0,t0
	add	a6,a0,a5
	sub	t2,a2,t1
	li	a7,0
.L571:
	vl1re32.v	v0,0(a3)
	add	a7,a7,t1
	add	a3,a3,t0
	vs1r.v	v0,0(a6)
	add	a6,a6,t0
	bgeu	t2,a7,.L571
	sub	t5,t5,a7
	beq	a2,a7,.L598
	slli	a2,t5,2
	add	t4,a1,a2
	add	t6,a0,a2
.L574:
	lw	t1,0(t4)
	mv	t3,t4
	addi	t6,t6,-4
	sw	t1,4(t6)
	addi	t4,t4,-4
	bne	a1,t3,.L574
	ret
.L581:
	addi	t6,a1,4
	mv	t4,a0
.L577:
	li	a2,-1
	j	.L579
.L604:
	addi	t6,t6,4
.L579:
	lw	a1,-4(t6)
	addi	t5,t5,-1
	addi	t4,t4,4
	sw	a1,-4(t4)
	bne	t5,a2,.L604
.L598:
	ret
.L603:
	beq	a2,zero,.L605
	li	t0,5
	bleu	t5,t0,.L581
	addi	t6,a1,4
	csrr	t1,vlenb
	sub	a3,a0,t6
	addi	t2,t1,-8
	bleu	a3,t2,.L582
	mv	t3,a0
.L578:
	vsetvli	a6,a2,e8,mf4,ta,ma
	vle32.v	v1,0(a1)
	slli	a7,a6,2
	sub	a2,a2,a6
	add	a1,a1,a7
	vse32.v	v1,0(t3)
	add	t3,t3,a7
	bne	a2,zero,.L578
	ret
.L570:
	slli	a7,t5,2
	li	t0,-4
.L575:
	add	a4,a1,a7
	lw	t2,0(a4)
	add	a5,a0,a7
	addi	a7,a7,-4
	sw	t2,0(a5)
	bne	a7,t0,.L575
	ret
.L605:
	ret
.L582:
	mv	t4,a0
	j	.L577
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	beq	a2,zero,.L613
	vsetvli	a5,zero,e32,m1,ta,ma
	vmv.v.x	v1,a1
	mv	a4,a0
.L608:
	vsetvli	t0,a2,e8,mf4,ta,ma
	vse32.v	v1,0(a4)
	slli	t1,t0,2
	sub	a2,a2,t0
	add	a4,a4,t1
	bne	a2,zero,.L608
.L613:
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
	bgeu	a0,a1,.L616
	add	t3,a0,a2
	add	t4,a1,a2
	beq	a2,zero,.L651
	addi	a6,a2,-1
	sltiu	a7,a6,15
	bne	a7,zero,.L653
	csrr	t5,vlenb
	srli	t6,t5,1
	addi	a4,t6,-1
	bltu	a6,a4,.L653
	addi	a3,a2,-2
	add	t0,a0,a3
	add	a5,a1,a6
	sub	t1,a5,t0
	addi	t2,t5,-2
	add	a7,t1,t2
	bleu	a7,t2,.L653
	addi	t6,t5,-1
	bltu	a6,t6,.L632
	sub	a4,a2,t5
	add	a3,a0,a4
	add	t2,a1,a4
	neg	t0,t5
	sub	t1,a2,t5
	li	a5,0
.L620:
	vl1re8.v	v0,0(a3)
	add	a5,a5,t5
	add	a3,a3,t0
	vs1r.v	v0,0(t2)
	add	t2,t2,t0
	bgeu	t1,a5,.L620
	sub	a6,a2,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	mv	a4,a6
	beq	a2,a5,.L659
.L619:
	csrr	t5,vlenb
	srli	a5,t5,1
	addi	a7,a5,-1
	addi	a2,a6,-1
	bltu	a2,a7,.L622
	sub	t6,a6,a5
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	a0,a0,t6
	vle8.v	v2,0(a0)
	add	a3,a1,t6
	sub	t1,a6,a5
	neg	a1,a5
	vse8.v	v2,0(a3)
	bltu	t1,a5,.L623
	add	a5,a0,a1
	vle8.v	v3,0(a5)
	add	t2,a3,a1
	mv	a5,t5
	vse8.v	v3,0(t2)
.L623:
	sub	a4,a4,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	beq	a6,a5,.L651
.L622:
	sub	a6,t3,a4
.L625:
	lbu	t5,-1(t3)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	t5,0(t4)
	bne	a6,t3,.L625
	ret
.L616:
	bne	a0,a1,.L660
.L651:
	ret
.L653:
	lbu	a7,-1(t3)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a7,0(t4)
	bne	a0,t3,.L653
	ret
.L660:
	beq	a2,zero,.L651
	addi	t2,a0,1
	csrr	a4,vlenb
	sub	a3,a1,t2
	addi	t0,a4,-2
	bleu	a3,t0,.L628
.L629:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a0)
	sub	a2,a2,a5
	add	a0,a0,a5
	vse8.v	v1,0(a1)
	add	a1,a1,a5
	bne	a2,zero,.L629
	ret
.L628:
	add	a0,a0,a2
	j	.L630
.L661:
	addi	t2,t2,1
.L630:
	lbu	t1,-1(t2)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a0,t2,.L661
	ret
.L632:
	mv	a4,a2
	mv	a6,a2
	j	.L619
.L659:
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
	j	.L678
.L676:
	beq	a5,a3,.L681
.L678:
	srlw	a4,a0,a5
	andi	t0,a4,1
	addiw	a5,a5,1
	beq	t0,zero,.L676
	mv	a0,a5
	ret
.L681:
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
	beq	a0,zero,.L685
	andi	a0,a0,1
	bne	a0,zero,.L688
	li	a0,1
.L684:
	sraiw	a5,a5,1
	andi	a4,a5,1
	addiw	a0,a0,1
	beq	a4,zero,.L684
	ret
.L685:
	li	a0,0
.L688:
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
	bne	t0,zero,.L692
	lui	t1,%hi(.LC2)
	flw	ft0,%lo(.LC2)(t1)
	fgt.s	a0,fa0,ft0
.L692:
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
	bne	t0,zero,.L697
	lui	t1,%hi(.LC4)
	fld	ft0,%lo(.LC4)(t1)
	fgt.d	a0,fa0,ft0
.L697:
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
	ld	a2,0(t0)
	ld	a3,8(t0)
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
	blt	a0,zero,.L702
	lui	t1,%hi(.LC6)
	addi	t2,t1,%lo(.LC6)
	ld	a2,0(t2)
	ld	a3,8(t2)
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
.L702:
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
	beq	a5,zero,.L720
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L720
	blt	a0,zero,.L722
	lui	t1,%hi(.LC7)
	flw	ft0,%lo(.LC7)(t1)
.L709:
	andi	a1,a0,1
	beq	a1,zero,.L710
.L711:
	fmul.s	fa0,fa0,ft0
.L710:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L720
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L711
.L723:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.s	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L711
	j	.L723
.L720:
	ret
.L722:
	lui	t2,%hi(.LC8)
	flw	ft0,%lo(.LC8)(t2)
	j	.L709
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
	beq	a5,zero,.L737
	fadd.d	fa5,fa0,fa0
	feq.d	t0,fa5,fa0
	bne	t0,zero,.L737
	blt	a0,zero,.L739
	lui	t1,%hi(.LC9)
	fld	ft0,%lo(.LC9)(t1)
.L726:
	andi	a1,a0,1
	beq	a1,zero,.L727
.L728:
	fmul.d	fa0,fa0,ft0
.L727:
	srliw	a2,a0,31
	addw	a0,a2,a0
	sraiw	a0,a0,1
	beq	a0,zero,.L737
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L728
.L740:
	sraiw	a0,a6,1
	srliw	a3,a0,31
	andi	a4,a0,1
	fmul.d	ft0,ft0,ft0
	addw	a6,a3,a0
	bne	a4,zero,.L728
	j	.L740
.L737:
	ret
.L739:
	lui	t2,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t2)
	j	.L726
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
	bne	a0,zero,.L756
	mv	a2,s4
	mv	a3,s3
	mv	a0,s4
	mv	a1,s3
	call	__addtf3
	mv	a2,s4
	mv	a3,s3
	call	__netf2
	beq	a0,zero,.L756
	sd	s1,24(sp)
	sd	s2,16(sp)
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	blt	s0,zero,.L759
	lui	a5,%hi(.LC11)
	addi	t0,a5,%lo(.LC11)
	ld	s1,0(t0)
	ld	s2,8(t0)
.L744:
	andi	a0,s0,1
	beq	a0,zero,.L745
.L746:
	mv	a0,s4
	mv	a1,s3
	mv	a2,s1
	mv	a3,s2
	call	__multf3
	mv	s4,a0
	mv	s3,a1
.L745:
	srliw	a1,s0,31
	addw	s0,a1,s0
	sraiw	s0,s0,1
	beq	s0,zero,.L758
.L747:
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
	bne	a4,zero,.L746
	sraiw	s0,a2,1
	j	.L747
.L758:
	ld	s1,24(sp)
	.cfi_restore 9
	ld	s2,16(sp)
	.cfi_restore 18
.L756:
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
.L759:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	lui	t1,%hi(.LC12)
	addi	t2,t1,%lo(.LC12)
	ld	s1,0(t2)
	ld	s2,8(t2)
	j	.L744
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	beq	a2,zero,.L767
	mv	a4,a0
	mv	a3,a0
.L762:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	vle8.v	v2,0(a3)
	sub	a2,a2,a5
	add	a1,a1,a5
	add	a3,a3,a5
	vxor.vv	v0,v1,v2
	vse8.v	v0,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L762
.L767:
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
	beq	a5,zero,.L776
	li	a4,0
	addi	t0,a0,1
.L771:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a6,v0
	blt	a6,zero,.L771
	add	t2,t0,a6
.L786:
	beq	a2,zero,.L773
.L789:
	lbu	t1,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t1,0(t2)
	beq	t1,zero,.L788
	addi	t2,t2,1
	bne	a2,zero,.L789
.L773:
	sb	zero,0(t2)
	ret
.L788:
	ret
.L776:
	mv	t2,a0
	j	.L786
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
	beq	a1,zero,.L797
.L791:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L793
.L797:
	ret
.L793:
	addi	a0,a0,1
	bne	a1,a0,.L791
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
	beq	a3,zero,.L805
.L812:
	mv	a5,a1
	j	.L804
.L803:
	beq	a4,a3,.L807
.L804:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L803
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L812
.L805:
	li	a0,0
.L807:
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
.L816:
	lbu	a4,0(a5)
	mv	a0,a3
	bne	a4,a1,.L815
	mv	a0,a5
.L815:
	addi	a5,a5,1
	mv	a3,a0
	bne	a4,zero,.L816
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
	beq	a7,zero,.L832
	li	a4,0
	addi	a5,a1,1
.L821:
	vsetvli	a2,zero,e8,m1,ta,ma
	add	a5,a5,a4
	vle8ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a0,v0
	blt	a0,zero,.L821
	add	t0,a5,a0
	sub	t3,t0,a1
	mv	a0,a3
	addi	t5,t3,-1
	bne	t0,a1,.L841
	ret
.L845:
	addi	a3,a3,1
	beq	t2,zero,.L844
.L841:
	lbu	t2,0(a3)
	bne	t2,a7,.L845
	add	t1,a3,t5
	mv	a2,a1
	mv	t4,a3
	mv	t6,a7
.L823:
	beq	t1,t4,.L825
	addi	t4,t4,1
	bne	t6,t2,.L826
	lbu	t2,0(t4)
	lbu	t6,1(a2)
	addi	a6,a2,1
	beq	t2,zero,.L825
	mv	a2,a6
	bne	t6,zero,.L823
.L826:
	addi	a3,a3,1
	j	.L841
.L844:
	li	a0,0
	ret
.L825:
	bne	t2,t6,.L826
.L832:
	mv	a0,a3
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
	bne	a5,zero,.L860
	fgt.d	t0,fa0,fa5
	beq	t0,zero,.L856
	flt.d	t1,fa1,fa5
	bne	t1,zero,.L849
.L856:
	ret
.L849:
	fneg.d	fa0,fa0
	ret
.L860:
	fgt.d	t2,fa1,fa5
	bne	t2,zero,.L849
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
	beq	a3,zero,.L877
	bltu	a1,a3,.L872
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L872
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L867:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L878
	mv	a0,t1
.L863:
	bleu	a0,a7,.L867
.L872:
	li	a0,0
.L877:
	ret
.L878:
	mv	t5,a2
	beq	a3,zero,.L877
.L866:
	mv	t2,t1
	add	t6,t1,a3
	j	.L864
.L865:
	beq	t2,t6,.L877
.L864:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L865
	bgtu	t1,a7,.L872
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L863
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L866
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
	beq	a2,zero,.L884
	call	memmove
.L884:
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
	bne	a5,zero,.L914
	lui	t5,%hi(.LC15)
	fld	fa4,%lo(.LC15)(t5)
	li	t4,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L915
.L889:
	lui	t6,%hi(.LC10)
	fld	ft5,%lo(.LC10)(t6)
	fld	ft6,%lo(.LC15)(t5)
	li	a7,0
.L895:
	fmul.d	fa0,fa0,ft5
	addiw	a7,a7,1
	fge.d	a5,fa0,ft6
	bne	a5,zero,.L895
	sw	a7,0(a0)
	beq	t4,zero,.L909
.L917:
	fneg.d	fa0,fa0
.L909:
	ret
.L915:
	lui	t0,%hi(.LC10)
	fld	ft0,%lo(.LC10)(t0)
	flt.d	t1,fa0,ft0
	beq	t1,zero,.L892
	feq.d	t2,fa0,fa5
	beq	t2,zero,.L901
.L892:
	sw	zero,0(a0)
	ret
.L914:
	lui	a1,%hi(.LC13)
	fld	ft2,%lo(.LC13)(a1)
	fneg.d	ft1,fa0
	fle.d	a2,fa0,ft2
	beq	a2,zero,.L916
	fmv.d	fa0,ft1
	li	t4,1
	lui	t5,%hi(.LC15)
	j	.L889
.L916:
	lui	a3,%hi(.LC14)
	fld	ft3,%lo(.LC14)(a3)
	fgt.d	a6,fa0,ft3
	beq	a6,zero,.L892
	li	t4,1
	lui	t0,%hi(.LC10)
.L890:
	fmv.d	fa0,ft1
	fld	ft4,%lo(.LC10)(t0)
	li	a7,0
.L897:
	fadd.d	fa0,fa0,fa0
	addiw	a7,a7,-1
	flt.d	t3,fa0,ft4
	bne	t3,zero,.L897
	sw	a7,0(a0)
	bne	t4,zero,.L917
	ret
.L901:
	fmv.d	ft1,fa0
	j	.L890
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
	beq	a4,zero,.L921
.L920:
	andi	a5,a4,1
	neg	t0,a5
	and	t1,t0,a1
	srli	a4,a4,1
	add	a0,a0,t1
	slli	a1,a1,1
	bne	a4,zero,.L920
	ret
.L921:
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
	bltu	a1,a5,.L925
	j	.L954
.L929:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L927
	beq	a0,zero,.L928
.L925:
	addiw	a0,a0,-1
	bge	a1,zero,.L929
.L930:
	li	a0,0
.L935:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L932
	mv	a5,a7
.L932:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L934
	mv	t0,t2
.L934:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L935
.L928:
	bne	a2,zero,.L955
.L952:
	ret
.L927:
	bne	t2,zero,.L930
	li	a0,0
	beq	a2,zero,.L952
.L955:
	mv	a0,a5
	ret
.L954:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L938
	mv	a5,a1
.L938:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L928
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	beq	a0,zero,.L958
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
.L958:
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
	beq	a5,a4,.L966
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
.L966:
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
	beq	a4,zero,.L975
.L974:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L974
	ret
.L975:
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
	srliw	a5,a2,3
	andi	a3,a2,-8
	bltu	a0,a1,.L982
	slli	a4,a2,32
	srli	t0,a4,32
	add	t1,a1,t0
	bleu	a0,t1,.L1029
.L982:
	beq	a5,zero,.L981
	addiw	a4,a5,-1
	li	t3,8
	bleu	a4,t3,.L985
	add	t2,a1,t3
	csrr	a6,vlenb
	sub	t0,a0,t2
	addi	t5,a6,-16
	bleu	t0,t5,.L985
	slli	a5,a5,32
	srli	t6,a5,32
	mv	a4,a0
	mv	a7,a1
.L986:
	vsetvli	t4,t6,e8,mf8,ta,ma
	vle64.v	v3,0(a7)
	slli	t1,t4,3
	sub	t6,t6,t4
	add	a7,a7,t1
	vse64.v	v3,0(a4)
	add	a4,a4,t1
	bne	t6,zero,.L986
.L981:
	bleu	a2,a3,.L1019
	slli	a5,a3,32
	srli	a5,a5,32
	addi	a6,a5,1
	csrr	t4,vlenb
	add	a4,a0,a5
	add	t1,a1,a6
	addi	t6,t4,-2
	sub	t3,a4,t1
	mv	t4,a4
	bleu	t3,t6,.L989
	subw	a2,a2,a3
	slli	a3,a2,32
	srli	a7,a3,32
	add	a1,a1,a5
.L990:
	vsetvli	a0,a7,e8,m1,ta,ma
	vle8.v	v4,0(a1)
	sub	a7,a7,a0
	add	a1,a1,a0
	vse8.v	v4,0(a4)
	add	a4,a4,a0
	bne	a7,zero,.L990
	ret
.L1030:
	add	t4,a0,a6
	addi	a6,a6,1
.L989:
	add	t2,a1,a5
	lbu	t0,0(t2)
	sext.w	t5,a6
	mv	a5,a6
	sb	t0,0(t4)
	bgtu	a2,t5,.L1030
.L1019:
	ret
.L1029:
	addiw	t5,a2,-1
	mv	a5,t5
	beq	a2,zero,.L1031
	csrr	t3,vlenb
	srli	t2,t3,1
	slli	a7,t5,32
	addiw	a6,t2,-1
	srli	t0,a7,32
	bltu	t5,a6,.L992
	slli	t6,t5,32
	li	t4,14
	srli	t0,t6,32
	bleu	t5,t4,.L992
	addi	a3,t0,-1
	add	t2,a1,a3
	add	a4,a0,t0
	addi	t1,t3,-2
	sub	a6,a4,t2
	add	a7,a6,t1
	bleu	a7,t1,.L992
	addiw	t4,t3,-1
	bltu	t5,t4,.L1003
	neg	t1,t3
	addi	a5,t1,1
	add	t2,t0,a5
	add	a3,a1,t2
	add	a7,a0,t2
	subw	a4,a2,t3
	li	t6,0
.L994:
	vl1re8.v	v1,0(a3)
	csrr	a6,vlenb
	addw	t6,t6,a6
	add	a3,a3,t1
	vs1r.v	v1,0(a7)
	add	a7,a7,t1
	bgeu	a4,t6,.L994
	subw	a5,t5,t6
	beq	a2,t6,.L1019
	subw	a2,a2,t6
	srli	t5,t3,1
	addiw	t3,t5,-1
	addiw	t4,a2,-1
	bltu	t4,t3,.L997
.L993:
	csrr	t2,vlenb
	srli	t1,t2,1
	neg	t3,t1
	slli	t6,t6,32
	addi	a6,t3,1
	srli	a4,t6,32
	add	t0,t0,a6
	sub	t5,t0,a4
	vsetvli	a3,zero,e8,mf2,ta,ma
	add	a7,a1,t5
	vle8.v	v0,0(a7)
	add	t4,a0,t5
	subw	t6,a2,t1
	sext.w	t1,t1
	mv	a6,t1
	vse8.v	v0,0(t4)
	bltu	t6,t1,.L998
	add	a4,a7,t3
	vle8.v	v2,0(a4)
	add	t3,t4,t3
	sext.w	a6,t2
	vse8.v	v2,0(t3)
.L998:
	subw	a5,a5,a6
	beq	a2,a6,.L1019
.L997:
	slli	a2,a5,32
	srli	a3,a2,32
	li	t2,-1
.L1000:
	add	t0,a1,a3
	lbu	t5,0(t0)
	add	a7,a0,a3
	addi	a3,a3,-1
	sb	t5,0(a7)
	bne	a3,t2,.L1000
	ret
.L985:
	slli	t3,a5,3
	add	t2,t3,a1
	mv	t5,a1
	mv	a6,a0
.L988:
	ld	t0,0(t5)
	addi	t5,t5,8
	addi	a6,a6,8
	sd	t0,-8(a6)
	bne	t5,t2,.L988
	j	.L981
.L992:
	add	a0,a0,t0
	add	t1,a1,t0
.L1001:
	lbu	t4,0(t1)
	mv	t6,t1
	addi	a0,a0,-1
	sb	t4,1(a0)
	addi	t1,t1,-1
	bne	a1,t6,.L1001
	ret
.L1031:
	ret
.L1003:
	li	t6,0
	j	.L993
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
	bltu	a0,a1,.L1036
	slli	a5,a2,32
	srli	t0,a5,32
	add	t1,a1,t0
	bleu	a0,t1,.L1076
.L1036:
	beq	a4,zero,.L1035
	addi	t1,a1,2
	csrr	t2,vlenb
	sub	a5,a0,t1
	addi	a3,t2,-4
	bleu	a5,a3,.L1039
	slli	t4,a4,32
	srli	t3,t4,32
	mv	t5,a0
	mv	a6,a1
.L1040:
	vsetvli	t6,t3,e8,mf2,ta,ma
	vle16.v	v3,0(a6)
	slli	t0,t6,1
	sub	t3,t3,t6
	add	a6,a6,t0
	vse16.v	v3,0(t5)
	add	t5,t5,t0
	bne	t3,zero,.L1040
.L1035:
	andi	a3,a2,1
	beq	a3,zero,.L1070
.L1078:
	addiw	a2,a2,-1
	slli	t4,a2,32
	srli	t6,t4,32
	add	a1,a1,t6
	lbu	t3,0(a1)
	add	a0,a0,t6
	sb	t3,0(a0)
	ret
.L1076:
	addiw	t5,a2,-1
	mv	a5,t5
	beq	a2,zero,.L1077
	csrr	t3,vlenb
	srli	t2,t3,1
	slli	a6,t5,32
	addiw	a3,t2,-1
	srli	t6,a6,32
	bltu	t5,a3,.L1044
	slli	t4,t5,32
	li	a7,14
	srli	t6,t4,32
	bgtu	t5,a7,.L1069
.L1044:
	add	a0,a0,t6
	add	a7,a1,t6
.L1052:
	lbu	t5,0(a7)
	mv	a4,a7
	addi	a0,a0,-1
	sb	t5,1(a0)
	addi	a7,a7,-1
	bne	a1,a4,.L1052
.L1070:
	ret
.L1069:
	addi	a4,t6,-1
	add	t1,a1,a4
	add	t2,a0,t6
	addi	t0,t3,-2
	sub	a3,t2,t1
	add	a6,a3,t0
	bleu	a6,t0,.L1044
	addiw	a7,t3,-1
	bltu	t5,a7,.L1054
	neg	a4,t3
	addi	a5,a4,1
	add	t4,t6,a5
	add	a3,a1,t4
	add	a6,a0,t4
	subw	t1,a2,t3
	li	t0,0
.L1046:
	vl1re8.v	v1,0(a3)
	csrr	t2,vlenb
	addw	t0,t0,t2
	add	a3,a3,a4
	vs1r.v	v1,0(a6)
	add	a6,a6,a4
	bgeu	t1,t0,.L1046
	subw	a5,t5,t0
	beq	a2,t0,.L1070
	subw	a2,a2,t0
	srli	t5,t3,1
	addiw	t3,t5,-1
	addiw	a7,a2,-1
	bltu	a7,t3,.L1048
.L1045:
	csrr	t4,vlenb
	srli	t1,t4,1
	neg	t2,t1
	slli	t0,t0,32
	addi	a3,t2,1
	srli	a4,t0,32
	add	t6,t6,a3
	sub	a6,t6,a4
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	t3,a1,a6
	vle8.v	v0,0(t3)
	add	a4,a0,a6
	sext.w	a7,t1
	subw	t5,a2,t1
	mv	a3,a7
	vse8.v	v0,0(a4)
	bltu	t5,a7,.L1049
	add	t1,t3,t2
	vle8.v	v2,0(t1)
	add	t2,a4,t2
	sext.w	a3,t4
	vse8.v	v2,0(t2)
.L1049:
	subw	a5,a5,a3
	beq	a2,a3,.L1070
.L1048:
	slli	a2,a5,32
	srli	t0,a2,32
	li	t4,-1
.L1051:
	add	t6,a1,t0
	lbu	a6,0(t6)
	add	t3,a0,t0
	addi	t0,t0,-1
	sb	a6,0(t3)
	bne	t0,t4,.L1051
	ret
.L1039:
	slli	a4,a4,1
	add	a7,a4,a1
	mv	t2,a1
	mv	a5,a0
.L1042:
	lh	t1,0(t2)
	addi	t2,t2,2
	addi	a5,a5,2
	sh	t1,-2(a5)
	bne	a7,t2,.L1042
	andi	a3,a2,1
	beq	a3,zero,.L1070
	j	.L1078
.L1077:
	ret
.L1054:
	li	t0,0
	j	.L1045
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	srliw	a5,a2,2
	andi	a3,a2,-4
	bltu	a0,a1,.L1083
	slli	a4,a2,32
	srli	t0,a4,32
	add	t1,a1,t0
	bleu	a0,t1,.L1130
.L1083:
	beq	a5,zero,.L1082
	addiw	a4,a5,-1
	li	t3,2
	bleu	a4,t3,.L1086
	addi	t2,a1,4
	csrr	a6,vlenb
	sub	t0,a0,t2
	addi	t5,a6,-8
	bleu	t0,t5,.L1086
	slli	a5,a5,32
	srli	t6,a5,32
	mv	a4,a0
	mv	a7,a1
.L1087:
	vsetvli	t4,t6,e8,mf4,ta,ma
	vle32.v	v3,0(a7)
	slli	t1,t4,2
	sub	t6,t6,t4
	add	a7,a7,t1
	vse32.v	v3,0(a4)
	add	a4,a4,t1
	bne	t6,zero,.L1087
.L1082:
	bleu	a2,a3,.L1120
	slli	a5,a3,32
	srli	a5,a5,32
	addi	a6,a5,1
	csrr	t4,vlenb
	add	a4,a0,a5
	add	t1,a1,a6
	addi	t6,t4,-2
	sub	t3,a4,t1
	mv	t4,a4
	bleu	t3,t6,.L1090
	subw	a2,a2,a3
	slli	a3,a2,32
	srli	a7,a3,32
	add	a1,a1,a5
.L1091:
	vsetvli	a0,a7,e8,m1,ta,ma
	vle8.v	v4,0(a1)
	sub	a7,a7,a0
	add	a1,a1,a0
	vse8.v	v4,0(a4)
	add	a4,a4,a0
	bne	a7,zero,.L1091
	ret
.L1131:
	add	t4,a0,a6
	addi	a6,a6,1
.L1090:
	add	t2,a1,a5
	lbu	t0,0(t2)
	sext.w	t5,a6
	mv	a5,a6
	sb	t0,0(t4)
	bgtu	a2,t5,.L1131
.L1120:
	ret
.L1130:
	addiw	t5,a2,-1
	mv	a5,t5
	beq	a2,zero,.L1132
	csrr	t3,vlenb
	srli	t2,t3,1
	slli	a7,t5,32
	addiw	a6,t2,-1
	srli	t0,a7,32
	bltu	t5,a6,.L1093
	slli	t6,t5,32
	li	t4,14
	srli	t0,t6,32
	bleu	t5,t4,.L1093
	addi	a3,t0,-1
	add	t2,a1,a3
	add	a4,a0,t0
	addi	t1,t3,-2
	sub	a6,a4,t2
	add	a7,a6,t1
	bleu	a7,t1,.L1093
	addiw	t4,t3,-1
	bltu	t5,t4,.L1104
	neg	t1,t3
	addi	a5,t1,1
	add	t2,t0,a5
	add	a3,a1,t2
	add	a7,a0,t2
	subw	a4,a2,t3
	li	t6,0
.L1095:
	vl1re8.v	v1,0(a3)
	csrr	a6,vlenb
	addw	t6,t6,a6
	add	a3,a3,t1
	vs1r.v	v1,0(a7)
	add	a7,a7,t1
	bgeu	a4,t6,.L1095
	subw	a5,t5,t6
	beq	a2,t6,.L1120
	subw	a2,a2,t6
	srli	t5,t3,1
	addiw	t3,t5,-1
	addiw	t4,a2,-1
	bltu	t4,t3,.L1098
.L1094:
	csrr	t2,vlenb
	srli	t1,t2,1
	neg	t3,t1
	slli	t6,t6,32
	addi	a6,t3,1
	srli	a4,t6,32
	add	t0,t0,a6
	sub	t5,t0,a4
	vsetvli	a3,zero,e8,mf2,ta,ma
	add	a7,a1,t5
	vle8.v	v0,0(a7)
	add	t4,a0,t5
	subw	t6,a2,t1
	sext.w	t1,t1
	mv	a6,t1
	vse8.v	v0,0(t4)
	bltu	t6,t1,.L1099
	add	a4,a7,t3
	vle8.v	v2,0(a4)
	add	t3,t4,t3
	sext.w	a6,t2
	vse8.v	v2,0(t3)
.L1099:
	subw	a5,a5,a6
	beq	a2,a6,.L1120
.L1098:
	slli	a2,a5,32
	srli	a3,a2,32
	li	t2,-1
.L1101:
	add	t0,a1,a3
	lbu	t5,0(t0)
	add	a7,a0,a3
	addi	a3,a3,-1
	sb	t5,0(a7)
	bne	a3,t2,.L1101
	ret
.L1086:
	slli	t3,a5,2
	add	t2,t3,a1
	mv	t5,a1
	mv	a6,a0
.L1089:
	lw	t0,0(t5)
	addi	t5,t5,4
	addi	a6,a6,4
	sw	t0,-4(a6)
	bne	t5,t2,.L1089
	j	.L1082
.L1093:
	add	a0,a0,t0
	add	t1,a1,t0
.L1102:
	lbu	t4,0(t1)
	mv	t6,t1
	addi	a0,a0,-1
	sb	t4,1(a0)
	addi	t1,t1,-1
	bne	a1,t6,.L1102
	ret
.L1132:
	ret
.L1104:
	li	t6,0
	j	.L1094
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
	bne	a3,zero,.L1142
	sraiw	a0,a5,14
	bne	a0,zero,.L1157
	sraiw	t0,a5,13
	bne	t0,zero,.L1143
	sraiw	t1,a5,12
	bne	t1,zero,.L1144
	sraiw	t2,a5,11
	bne	t2,zero,.L1145
	sraiw	a0,a5,10
	bne	a0,zero,.L1146
	sraiw	a1,a5,9
	bne	a1,zero,.L1147
	sraiw	a2,a5,8
	bne	a2,zero,.L1148
	sraiw	a6,a5,7
	bne	a6,zero,.L1149
	sraiw	a7,a5,6
	bne	a7,zero,.L1150
	sraiw	t3,a5,5
	bne	t3,zero,.L1151
	sraiw	t4,a5,4
	bne	t4,zero,.L1152
	sraiw	t5,a5,3
	bne	t5,zero,.L1153
	sraiw	t6,a5,2
	bne	t6,zero,.L1154
	sraiw	a3,a5,1
	bne	a3,zero,.L1155
	seqz	a4,a4
	addi	a0,a4,15
	ret
.L1155:
	li	a0,14
.L1157:
	ret
.L1142:
	li	a0,0
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
	bne	a5,zero,.L1161
	andi	t0,a0,2
	bne	t0,zero,.L1162
	andi	t1,a0,4
	bne	t1,zero,.L1163
	andi	t2,a0,8
	bne	t2,zero,.L1164
	andi	a1,a0,16
	bne	a1,zero,.L1165
	andi	a2,a0,32
	bne	a2,zero,.L1166
	andi	a3,a0,64
	bne	a3,zero,.L1167
	andi	a4,a0,128
	bne	a4,zero,.L1168
	andi	a6,a0,256
	bne	a6,zero,.L1169
	andi	a7,a0,512
	bne	a7,zero,.L1170
	andi	t3,a0,1024
	bne	t3,zero,.L1171
	slli	t5,a0,52
	li	t4,4096
	blt	t5,zero,.L1172
	and	t6,a0,t4
	bne	t6,zero,.L1173
	slli	a5,a0,50
	blt	a5,zero,.L1174
	slli	t0,a0,49
	blt	t0,zero,.L1175
	sraiw	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L1161:
	li	a0,0
	ret
.L1162:
	li	a0,1
	ret
.L1173:
	li	a0,12
	ret
.L1163:
	li	a0,2
	ret
.L1164:
	li	a0,3
	ret
.L1165:
	li	a0,4
	ret
.L1166:
	li	a0,5
	ret
.L1167:
	li	a0,6
	ret
.L1168:
	li	a0,7
	ret
.L1169:
	li	a0,8
	ret
.L1170:
	li	a0,9
	ret
.L1171:
	li	a0,10
	ret
.L1172:
	li	a0,11
	ret
.L1174:
	li	a0,13
	ret
.L1175:
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
	bne	t0,zero,.L1186
	fcvt.l.s a0,fa0,rtz
	ret
.L1186:
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
	vsetivli	zero,4,e32,m1,ta,ma
	vid.v	v3
	vmv.v.x	v1,a0
	vadd.vi	v5,v3,4
	vadd.vi	v2,v3,8
	vsra.vv	v4,v1,v3
	vsra.vv	v0,v1,v5
	vsra.vv	v6,v1,v2
	vand.vi	v7,v4,1
	vand.vi	v8,v0,1
	vadd.vi	v9,v3,12
	vand.vi	v10,v6,1
	vadd.vv	v11,v7,v8
	vsra.vv	v12,v1,v9
	li	a4,0
	vadd.vv	v13,v10,v11
	vand.vi	v14,v12,1
	vmv.s.x	v15,a4
	vadd.vv	v16,v14,v13
	vredsum.vs	v17,v16,v15
	vmv.x.s	a0,v17
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
	vsetivli	zero,4,e32,m1,ta,ma
	vid.v	v3
	vmv.v.x	v1,a0
	vadd.vi	v5,v3,4
	vadd.vi	v2,v3,8
	vsra.vv	v4,v1,v3
	vsra.vv	v0,v1,v5
	vsra.vv	v6,v1,v2
	vand.vi	v7,v4,1
	vand.vi	v8,v0,1
	vadd.vi	v9,v3,12
	vand.vi	v10,v6,1
	vadd.vv	v11,v7,v8
	vsra.vv	v12,v1,v9
	li	a4,0
	vadd.vv	v13,v10,v11
	vand.vi	v14,v12,1
	vmv.s.x	v15,a4
	vadd.vv	v16,v14,v13
	vredsum.vs	v17,v16,v15
	vmv.x.s	a0,v17
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
	beq	a4,zero,.L1192
.L1191:
	andi	a5,a4,1
	negw	t0,a5
	and	t1,a1,t0
	srliw	a4,a4,1
	addw	a0,t1,a0
	slliw	a1,a1,1
	bne	a4,zero,.L1191
	ret
.L1192:
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
	beq	a4,zero,.L1198
	beq	a1,zero,.L1199
.L1197:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a4,t0
	srliw	a1,a1,1
	addw	a0,t1,a0
	slliw	a4,a4,1
	bne	a1,zero,.L1197
	ret
.L1198:
	ret
.L1199:
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
	bltu	a1,a5,.L1203
	j	.L1232
.L1207:
	slliw	a1,a1,1
	slliw	t2,t2,1
	bleu	a5,a1,.L1205
	beq	a0,zero,.L1206
.L1203:
	addiw	a0,a0,-1
	bge	a1,zero,.L1207
.L1208:
	li	a0,0
.L1213:
	sltu	a3,a5,a1
	xori	a6,a3,1
	subw	a7,a5,a1
	bne	a3,zero,.L1210
	mv	a5,a7
.L1210:
	sext.w	a5,a5
	li	t0,0
	beq	a6,zero,.L1212
	mv	t0,t2
.L1212:
	or	t1,a0,t0
	srliw	t2,t2,1
	sext.w	a0,t1
	srliw	a1,a1,1
	bne	t2,zero,.L1213
.L1206:
	bne	a2,zero,.L1233
.L1230:
	ret
.L1205:
	bne	t2,zero,.L1208
	li	a0,0
	beq	a2,zero,.L1230
.L1233:
	mv	a0,a5
	ret
.L1232:
	sgtu	a4,a1,a5
	xori	a0,a4,1
	subw	a1,a5,a1
	bne	a4,zero,.L1216
	mv	a5,a1
.L1216:
	sext.w	a5,a5
	sext.w	a0,a0
	j	.L1206
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
	bne	a5,zero,.L1237
	fgt.s	a0,fa0,fa1
.L1237:
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
	bne	a5,zero,.L1242
	fgt.d	a0,fa0,fa1
.L1242:
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
	blt	a1,zero,.L1261
	beq	a1,zero,.L1252
	li	a2,0
.L1248:
	li	t2,32
	li	a0,0
	j	.L1251
.L1262:
	beq	t2,zero,.L1250
.L1251:
	andi	a5,a1,1
	negw	t0,a5
	and	t1,a3,t0
	addiw	a4,t2,-1
	sraiw	a1,a1,1
	andi	t2,a4,0xff
	addw	a0,t1,a0
	slliw	a3,a3,1
	bne	a1,zero,.L1262
.L1250:
	beq	a2,zero,.L1260
	negw	a0,a0
	ret
.L1252:
	li	a0,0
.L1260:
	ret
.L1261:
	negw	a1,a1
	li	a2,1
	j	.L1248
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
	blt	a0,zero,.L1294
.L1264:
	bge	a1,zero,.L1265
	neg	a1,a1
	mv	a7,a5
.L1265:
	sext.w	t2,a0
	sext.w	a1,a1
	li	a3,32
	li	a4,1
	bgtu	t2,a1,.L1266
	j	.L1293
.L1270:
	slliw	a1,a1,1
	slliw	a4,a4,1
	bleu	t2,a1,.L1268
	beq	a3,zero,.L1282
.L1266:
	addiw	a3,a3,-1
	bge	a1,zero,.L1270
.L1271:
	li	a0,0
.L1276:
	sltu	t1,t2,a1
	xori	a2,t1,1
	subw	a6,t2,a1
	bne	t1,zero,.L1273
	mv	t2,a6
.L1273:
	sext.w	t2,t2
	li	t3,0
	beq	a2,zero,.L1275
	mv	t3,a4
.L1275:
	or	t4,a0,t3
	srliw	a4,a4,1
	sext.w	a0,t4
	srliw	a1,a1,1
	bne	a4,zero,.L1276
.L1278:
	slli	t5,a0,32
	srli	a0,t5,32
.L1269:
	beq	a7,zero,.L1291
	neg	a0,a0
	ret
.L1291:
	ret
.L1268:
	bne	a4,zero,.L1271
.L1282:
	li	a0,0
	j	.L1269
.L1294:
	neg	a0,a0
	li	a5,0
	li	a7,1
	j	.L1264
.L1293:
	sltu	t0,t2,a1
	xori	a0,t0,1
	j	.L1278
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
	bge	a0,zero,.L1296
	neg	a0,a0
	li	a6,1
.L1296:
	srai	a5,a1,63
	xor	a1,a5,a1
	sext.w	a0,a0
	subw	a7,a1,a5
	li	t0,32
	li	t1,1
	bgtu	a0,a7,.L1297
	j	.L1328
.L1301:
	slliw	a7,a7,1
	slliw	t1,t1,1
	bleu	a0,a7,.L1329
	beq	t0,zero,.L1300
.L1297:
	addiw	t0,t0,-1
	bge	a7,zero,.L1301
	j	.L1326
.L1329:
	beq	t1,zero,.L1300
.L1326:
	srliw	t1,t1,1
	subw	a2,a0,a7
	mv	t2,a0
	bltu	a0,a7,.L1304
	mv	t2,a2
.L1304:
	sext.w	a0,t2
	srliw	a7,a7,1
	bne	t1,zero,.L1326
.L1300:
	slli	t3,a0,32
	srli	a0,t3,32
	beq	a6,zero,.L1325
	neg	a0,a0
	ret
.L1325:
	ret
.L1328:
	subw	a3,a0,a7
	mv	a4,a0
	bltu	a0,a7,.L1308
	mv	a4,a3
.L1308:
	sext.w	a0,a4
	j	.L1300
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
	bgeu	a1,a0,.L1515
	slliw	a4,a1,16
	sraiw	a6,a4,16
	slli	t3,a6,32
	blt	t3,zero,.L1335
	slliw	t6,a1,1
	slli	a5,t6,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1408
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1408
	slliw	a0,a1,2
	slli	a4,a0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1410
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1410
	slliw	t5,a1,3
	slli	t6,t5,48
	srli	a5,t6,48
	sext.w	a4,a5
	bleu	a7,a5,.L1412
	slliw	t0,a5,16
	sraiw	t1,t0,16
	slli	t2,t1,32
	blt	t2,zero,.L1412
	slliw	a5,a1,4
	slli	a0,a5,48
	srli	a5,a0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1414
	slliw	a6,a5,16
	sraiw	t3,a6,16
	slli	t4,t3,32
	blt	t4,zero,.L1414
	slliw	a4,a1,5
	slli	t5,a4,48
	srli	a5,t5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1416
	slliw	t6,a5,16
	sraiw	t0,t6,16
	slli	t1,t0,32
	blt	t1,zero,.L1416
	slliw	t2,a1,6
	slli	a5,t2,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1418
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1418
	slliw	t4,a1,7
	slli	a4,t4,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1420
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1420
	slliw	t1,a1,8
	slli	t2,t1,48
	srli	a5,t2,48
	sext.w	a4,a5
	bleu	a7,a5,.L1422
	slliw	a0,a5,16
	sraiw	a6,a0,16
	slli	t3,a6,32
	blt	t3,zero,.L1422
	slliw	a5,a1,9
	slli	t4,a5,48
	srli	a5,t4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1424
	slliw	t5,a5,16
	sraiw	t6,t5,16
	slli	t0,t6,32
	blt	t0,zero,.L1424
	slliw	a4,a1,10
	slli	t1,a4,48
	srli	a5,t1,48
	sext.w	a4,a5
	bleu	a7,a5,.L1426
	slliw	t2,a5,16
	sraiw	a0,t2,16
	slli	a6,a0,32
	blt	a6,zero,.L1426
	slliw	t3,a1,11
	slli	a5,t3,48
	srli	a5,a5,48
	sext.w	a4,a5
	bleu	a7,a5,.L1428
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1428
	slliw	t0,a1,12
	slli	a4,t0,48
	srli	a5,a4,48
	sext.w	a4,a5
	bleu	a7,a5,.L1430
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1430
	slliw	a6,a1,13
	slli	t3,a6,48
	srli	a5,t3,48
	sext.w	a4,a5
	bleu	a7,a5,.L1432
	slliw	t4,a5,16
	sraiw	t5,t4,16
	slli	t6,t5,32
	blt	t6,zero,.L1432
	slliw	a5,a1,14
	slli	t0,a5,48
	srli	a5,t0,48
	sext.w	a4,a5
	bleu	a7,a5,.L1434
	slliw	t1,a5,16
	sraiw	t2,t1,16
	slli	a0,t2,32
	blt	a0,zero,.L1434
	slliw	a1,a1,15
	slli	t3,a1,48
	srli	t5,t3,48
	bleu	a7,t5,.L1435
	li	a6,32768
	mv	a0,a3
	mv	a5,a6
	mv	a4,a6
	bne	t5,zero,.L1337
.L1338:
	bne	a2,zero,.L1512
.L1528:
	mv	a0,t5
	ret
.L1408:
	li	a6,2
.L1337:
	subw	t4,a3,a5
	slli	t5,t4,48
	srli	t6,t5,48
	bltu	a7,a4,.L1404
	mv	a3,t6
.L1404:
	slli	t0,a3,48
	srli	t2,t0,48
	li	t1,0
	bltu	a7,a4,.L1406
	mv	t1,a6
.L1406:
	srli	a4,a5,1
	subw	a0,t2,a4
	slli	t3,a0,48
	slli	a7,t1,48
	srli	a1,a7,48
	srli	t4,a6,1
	srli	t5,t3,48
	sext.w	t6,a4
	sext.w	a3,t2
	mv	a0,t2
	bgtu	a4,t2,.L1340
	mv	a0,t5
.L1340:
	slli	t0,a0,48
	srli	a0,t0,48
	li	t2,0
	bgtu	t6,a3,.L1342
	mv	t2,t4
.L1342:
	or	t1,a1,t2
	slli	a1,t1,48
	srli	a7,a6,2
	srli	t5,a1,48
	srli	t4,a5,2
	beq	a7,zero,.L1338
	sext.w	t3,t4
	sext.w	t6,a0
	subw	a4,a0,t4
	sgtu	a3,t3,t6
	slli	t0,a4,48
	srli	t2,t0,48
	xori	t1,a3,1
	bne	a3,zero,.L1344
	mv	a0,t2
.L1344:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1346
	mv	a1,a7
.L1346:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,3
	srli	t5,t4,48
	srli	t3,a5,3
	beq	a7,zero,.L1338
	sext.w	t6,a0
	sext.w	a4,t3
	subw	t0,a0,t3
	sltu	a3,t6,a4
	slli	t2,t0,48
	srli	a1,t2,48
	xori	t1,a3,1
	bne	a3,zero,.L1348
	mv	a0,a1
.L1348:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1350
	mv	t4,a7
.L1350:
	or	t5,t5,t4
	slli	t3,t5,48
	srli	a7,a6,4
	srli	t5,t3,48
	srli	t6,a5,4
	beq	a7,zero,.L1338
	sext.w	a4,a0
	sext.w	a3,t6
	subw	t2,a0,t6
	sltu	t0,a4,a3
	slli	a1,t2,48
	srli	t4,a1,48
	xori	t1,t0,1
	bne	t0,zero,.L1352
	mv	a0,t4
.L1352:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1354
	mv	t3,a7
.L1354:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,5
	srli	t5,t6,48
	srli	a4,a5,5
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t0,a4
	subw	a1,a0,a4
	sltu	t2,a3,t0
	slli	t4,a1,48
	srli	t3,t4,48
	xori	t1,t2,1
	bne	t2,zero,.L1356
	mv	a0,t3
.L1356:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1358
	mv	t6,a7
.L1358:
	or	t5,t5,t6
	slli	a4,t5,48
	srli	a7,a6,6
	srli	t5,a4,48
	srli	t0,a5,6
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t2,t0
	subw	t4,a0,t0
	sltu	a1,a3,t2
	slli	t3,t4,48
	srli	t6,t3,48
	xori	t1,a1,1
	bne	a1,zero,.L1360
	mv	a0,t6
.L1360:
	slli	a0,a0,48
	srli	a0,a0,48
	li	a4,0
	beq	t1,zero,.L1362
	mv	a4,a7
.L1362:
	or	t5,t5,a4
	slli	t0,t5,48
	srli	a7,a6,7
	srli	t5,t0,48
	srli	t2,a5,7
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	a1,t2
	subw	t3,a0,t2
	sltu	t4,a3,a1
	slli	t6,t3,48
	srli	a4,t6,48
	xori	t1,t4,1
	beq	t4,zero,.L1516
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	bne	t1,zero,.L1517
.L1366:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,8
	srli	t5,t2,48
	srli	a1,a5,8
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t4,a1
	subw	t6,a0,a1
	sltu	t3,a3,t4
	slli	a4,t6,48
	srli	t0,a4,48
	xori	t1,t3,1
	beq	t3,zero,.L1518
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	bne	t1,zero,.L1519
.L1370:
	or	t5,t5,t2
	slli	a1,t5,48
	srli	a7,a6,9
	srli	t5,a1,48
	srli	t4,a5,9
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t3,t4
	subw	a4,a0,t4
	sltu	t6,a3,t3
	slli	t0,a4,48
	srli	t2,t0,48
	xori	t1,t6,1
	beq	t6,zero,.L1520
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	bne	t1,zero,.L1521
.L1374:
	or	t5,t5,a1
	slli	t4,t5,48
	srli	a7,a6,10
	srli	t5,t4,48
	srli	t3,a5,10
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t6,t3
	subw	a4,a0,t3
	sltu	t0,a3,t6
	slli	t2,a4,48
	srli	a1,t2,48
	xori	t1,t0,1
	beq	t0,zero,.L1522
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	bne	t1,zero,.L1523
.L1378:
	or	t5,t5,t4
	slli	t3,t5,48
	srli	a7,a6,11
	srli	t5,t3,48
	srli	t6,a5,11
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t0,t6
	subw	a4,a0,t6
	sltu	t2,a3,t0
	slli	a1,a4,48
	srli	t4,a1,48
	xori	t1,t2,1
	beq	t2,zero,.L1524
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	bne	t1,zero,.L1525
.L1382:
	or	t5,t5,t3
	slli	t6,t5,48
	srli	a7,a6,12
	srli	t5,t6,48
	srli	t0,a5,12
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t2,t0
	subw	a4,a0,t0
	sltu	a1,a3,t2
	slli	t4,a4,48
	srli	t3,t4,48
	xori	t1,a1,1
	beq	a1,zero,.L1526
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	bne	t1,zero,.L1527
.L1386:
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	beq	a7,zero,.L1338
.L1529:
	sext.w	a3,a0
	sext.w	a1,t2
	subw	a4,a0,t2
	sltu	t4,a3,a1
	slli	t3,a4,48
	srli	t6,t3,48
	xori	t1,t4,1
	bne	t4,zero,.L1388
	mv	a0,t6
.L1388:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1390
	mv	t0,a7
.L1390:
	or	t5,t5,t0
	slli	t2,t5,48
	srli	a7,a6,14
	srli	t5,t2,48
	srli	a1,a5,14
	beq	a7,zero,.L1338
	sext.w	a3,a0
	sext.w	t4,a1
	subw	a4,a0,a1
	sltu	t3,a3,t4
	slli	t6,a4,48
	srli	t0,t6,48
	xori	t1,t3,1
	bne	t3,zero,.L1392
	mv	a0,t0
.L1392:
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1394
	mv	t2,a7
.L1394:
	or	t5,t5,t2
	slli	a1,t5,48
	li	a7,16384
	srli	t5,a1,48
	srli	a5,a5,15
	beq	a6,a7,.L1338
	sext.w	a6,a0
	sext.w	a3,a5
	subw	t3,a0,a5
	sltu	t4,a6,a3
	slli	a4,t3,48
	srli	t6,a4,48
	xori	t0,t4,1
	bne	t4,zero,.L1396
	mv	a0,t6
.L1396:
	slli	t1,a0,48
	srli	a0,t1,48
	or	t5,t0,t5
	beq	a2,zero,.L1528
.L1512:
	ret
.L1517:
	mv	t0,a7
	j	.L1366
.L1516:
	mv	a0,a4
	slli	a0,a0,48
	srli	a0,a0,48
	li	t0,0
	beq	t1,zero,.L1366
	j	.L1517
.L1519:
	mv	t2,a7
	j	.L1370
.L1518:
	mv	a0,t0
	slli	a0,a0,48
	srli	a0,a0,48
	li	t2,0
	beq	t1,zero,.L1370
	j	.L1519
.L1521:
	mv	a1,a7
	j	.L1374
.L1520:
	mv	a0,t2
	slli	a0,a0,48
	srli	a0,a0,48
	li	a1,0
	beq	t1,zero,.L1374
	j	.L1521
.L1523:
	mv	t4,a7
	j	.L1378
.L1522:
	mv	a0,a1
	slli	a0,a0,48
	srli	a0,a0,48
	li	t4,0
	beq	t1,zero,.L1378
	j	.L1523
.L1525:
	mv	t3,a7
	j	.L1382
.L1524:
	mv	a0,t4
	slli	a0,a0,48
	srli	a0,a0,48
	li	t3,0
	beq	t1,zero,.L1382
	j	.L1525
.L1527:
	mv	t6,a7
	or	t5,t5,t6
	slli	t0,t5,48
	srli	a7,a6,13
	srli	t5,t0,48
	srli	t2,a5,13
	bne	a7,zero,.L1529
	j	.L1338
.L1526:
	mv	a0,t3
	slli	a0,a0,48
	srli	a0,a0,48
	li	t6,0
	beq	t1,zero,.L1386
	j	.L1527
.L1410:
	li	a6,4
	j	.L1337
.L1412:
	li	a6,8
	j	.L1337
.L1414:
	li	a6,16
	j	.L1337
.L1424:
	li	a6,512
	j	.L1337
.L1416:
	li	a6,32
	j	.L1337
.L1418:
	li	a6,64
	j	.L1337
.L1420:
	li	a6,128
	j	.L1337
.L1422:
	li	a6,256
	j	.L1337
.L1515:
	subw	a1,a0,a1
	slli	t0,a1,48
	srli	t1,t0,48
	bne	a5,a7,.L1333
	mv	a3,t1
.L1333:
	sub	t2,a5,a7
	slli	a0,a3,48
	seqz	t5,t2
	srli	a0,a0,48
	j	.L1338
.L1426:
	li	a6,1024
	j	.L1337
.L1428:
	li	a1,4096
	addi	a6,a1,-2048
	j	.L1337
.L1430:
	li	a6,4096
	j	.L1337
.L1432:
	li	a6,8192
	j	.L1337
.L1434:
	li	a6,16384
	j	.L1337
.L1435:
	li	a5,32768
	mv	a6,a5
	mv	a4,a5
	j	.L1337
.L1335:
	subw	a3,a0,a1
	slli	t4,a3,48
	srli	a0,t4,48
	li	t5,1
	j	.L1338
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
	bltu	a1,a0,.L1531
	j	.L1561
.L1535:
	slli	a1,a1,1
	slli	t4,t4,1
	bleu	a5,a1,.L1533
	beq	a3,zero,.L1534
.L1531:
	and	a0,a1,t0
	addiw	a3,a3,-1
	beq	a0,zero,.L1535
.L1536:
	li	a0,0
.L1541:
	sltu	t1,a5,a1
	xori	t2,t1,1
	neg	a7,t2
	and	t3,t4,a7
	sub	t5,a5,a1
	srli	t4,t4,1
	bne	t1,zero,.L1538
	mv	a5,t5
.L1538:
	or	a0,a0,t3
	srli	a1,a1,1
	bne	t4,zero,.L1541
.L1534:
	bne	a2,zero,.L1563
.L1559:
	ret
.L1533:
	bne	t4,zero,.L1536
	beq	a2,zero,.L1559
.L1563:
	mv	a0,a5
	ret
.L1561:
	sgtu	a4,a1,a0
	sub	a1,a0,a1
	xori	a0,a4,1
	bne	a4,zero,.L1534
	mv	a5,a1
	j	.L1534
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
	beq	a5,zero,.L1565
	addiw	a6,a1,-32
	sllw	a2,a0,a6
	li	a1,0
.L1566:
	slli	a7,a1,32
	srli	t3,a7,32
	slli	t4,a2,32
	or	a0,t3,t4
.L1570:
	ret
.L1565:
	beq	a1,zero,.L1570
	li	t0,32
	subw	t1,t0,a1
	srai	a3,a0,32
	srlw	t2,a0,t1
	sllw	a0,a3,a1
	or	a2,t2,a0
	sllw	a1,a4,a1
	j	.L1566
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
	beq	a5,zero,.L1572
	addiw	a2,a2,-64
	sll	a1,a0,a2
	li	a0,0
	ret
.L1572:
	beq	a2,zero,.L1576
	li	t0,64
	subw	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1576:
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
	beq	a4,zero,.L1578
	srai	a6,a0,32
	addiw	a7,a1,-32
	sraw	a1,a6,a7
	sraiw	a3,a6,31
.L1579:
	slli	t3,a1,32
	srli	t4,t3,32
	slli	t5,a3,32
	or	a0,t5,t4
.L1583:
	ret
.L1578:
	beq	a1,zero,.L1583
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	sllw	t2,a0,t1
	srlw	a2,a5,a1
	sraw	a3,a0,a1
	or	a1,t2,a2
	j	.L1579
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
	beq	a5,zero,.L1585
	addiw	a2,a2,-64
	sra	a0,a1,a2
	srai	a1,a1,63
	ret
.L1585:
	beq	a2,zero,.L1589
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1589:
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
	beq	t4,zero,.L1594
	li	t1,0
.L1594:
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
	blt	a3,a4,.L1599
	li	a0,2
	bgt	a3,a4,.L1603
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1603
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1599:
	li	a0,0
.L1603:
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
	blt	a3,a4,.L1606
	li	a0,1
	bgt	a3,a4,.L1609
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1609
	sgtu	a0,t0,a1
	ret
.L1606:
	li	a0,-1
.L1609:
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
	blt	a1,a3,.L1612
	li	a0,2
	bgt	a1,a3,.L1616
	li	a0,0
	bltu	a5,a2,.L1616
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1612:
	li	a0,0
.L1616:
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
	bne	a0,zero,.L1621
	bne	a1,zero,.L1627
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1621:
	.cfi_restore_state
	call	__ctzdi2
	ld	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	addiw	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L1627:
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
	beq	a4,zero,.L1629
	addiw	a7,a1,-32
	srli	a6,a0,32
	srlw	a3,a6,a7
	li	a1,0
.L1630:
	slli	t3,a3,32
	srli	t4,t3,32
	slli	t5,a1,32
	or	a0,t5,t4
.L1634:
	ret
.L1629:
	beq	a1,zero,.L1634
	li	t0,32
	subw	t1,t0,a1
	srai	a0,a0,32
	srlw	a2,a5,a1
	sllw	t2,a0,t1
	srlw	a1,a0,a1
	or	a3,t2,a2
	j	.L1630
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
	beq	a5,zero,.L1636
	addiw	a2,a2,-64
	srl	a0,a1,a2
	li	a1,0
	ret
.L1636:
	beq	a2,zero,.L1640
	li	t0,64
	subw	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1640:
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
	beq	a5,zero,.L1659
	mv	a1,a0
.L1656:
	fmul.d	fa0,fa0,fa5
.L1654:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1655
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1656
.L1661:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.d	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1656
	j	.L1661
.L1655:
	blt	a0,zero,.L1662
	ret
.L1659:
	mv	a1,a0
	j	.L1654
.L1662:
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
	beq	a5,zero,.L1669
	mv	a1,a0
.L1666:
	fmul.s	fa0,fa0,fa5
.L1664:
	srliw	a4,a1,31
	addw	t0,a4,a1
	sraiw	a1,t0,1
	beq	a1,zero,.L1665
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1666
.L1671:
	sraiw	a1,t2,1
	srliw	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	addw	t2,t1,a1
	bne	a3,zero,.L1666
	j	.L1671
.L1665:
	blt	a0,zero,.L1672
	ret
.L1669:
	mv	a1,a0
	j	.L1664
.L1672:
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
	bltu	a3,a4,.L1675
	li	a0,2
	bgtu	a3,a4,.L1679
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,0
	bltu	t0,a1,.L1679
	sgtu	t1,t0,a1
	addi	a0,t1,1
	ret
.L1675:
	li	a0,0
.L1679:
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
	bltu	a3,a4,.L1682
	li	a0,1
	bgtu	a3,a4,.L1685
	sext.w	t0,a5
	sext.w	a1,a1
	li	a0,-1
	bltu	t0,a1,.L1685
	sgtu	a0,t0,a1
	ret
.L1682:
	li	a0,-1
.L1685:
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
	bltu	a1,a3,.L1688
	li	a0,2
	bgtu	a1,a3,.L1692
	li	a0,0
	bltu	a5,a2,.L1692
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1688:
	li	a0,0
.L1692:
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
	.set	.LC7,.LC11+12
	.section	.srodata.cst4
	.align	2
.LC8:
	.word	1056964608
	.set	.LC9,.LC11+8
	.section	.srodata.cst8
	.align	3
.LC10:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC12:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.srodata.cst8
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
