	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_h1p0_zicond1p0_zicsr2p0_zifencei2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
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
	add	t4,a1,a2
	add	t3,a0,a2
	beq	a2,zero,.L37
	addi	t5,a2,-1
	sltiu	a7,t5,15
	bne	a7,zero,.L40
	csrr	t6,vlenb
	srli	a5,t6,1
	addi	a3,a5,-1
	bltu	t5,a3,.L40
	addi	t0,a2,-2
	add	t1,a1,t0
	add	a4,a0,t5
	sub	t2,a4,t1
	addi	a6,t6,-2
	add	a7,t2,a6
	bleu	a7,a6,.L40
	addi	a5,t6,-1
	bltu	t5,a5,.L18
	sub	t5,a2,t6
	add	a3,a1,t5
	add	a4,a0,t5
	neg	t0,t6
	sub	t1,a2,t6
	li	t2,0
.L6:
	vl1re8.v	v0,0(a3)
	add	t2,t2,t6
	add	a3,a3,t0
	vs1r.v	v0,0(a4)
	add	a4,a4,t0
	bgeu	t1,t2,.L6
	sub	t6,a2,t2
	sub	t3,t3,t2
	sub	t4,t4,t2
	mv	a4,t6
	beq	a2,t2,.L46
.L5:
	csrr	a6,vlenb
	srli	a5,a6,1
	addi	a7,a5,-1
	addi	a2,t6,-1
	bltu	a2,a7,.L8
	sub	t5,t6,a5
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	a1,a1,t5
	vle8.v	v2,0(a1)
	add	t2,a0,t5
	sub	a3,t6,a5
	neg	t1,a5
	vse8.v	v2,0(t2)
	bltu	a3,a5,.L9
	add	a5,a1,t1
	vle8.v	v3,0(a5)
	add	a7,t2,t1
	mv	a5,a6
	vse8.v	v3,0(a7)
.L9:
	sub	a4,a4,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	beq	t6,a5,.L37
.L8:
	sub	t6,t3,a4
.L11:
	lbu	a6,-1(t4)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a6,0(t3)
	bne	t6,t3,.L11
	ret
.L2:
	bne	a0,a1,.L47
.L37:
	ret
.L40:
	lbu	a2,-1(t4)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a2,0(t3)
	bne	a0,t3,.L40
	ret
.L47:
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
	mv	a4,a2
	mv	t6,a2
	j	.L5
.L46:
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
.L60:
	beq	a3,zero,.L61
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L60
	ret
.L61:
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
	bne	a2,zero,.L63
	j	.L66
.L65:
	addi	a0,a0,1
	beq	a2,zero,.L66
.L63:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L65
	ret
.L66:
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
	beq	a2,zero,.L76
.L86:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	bne	a5,a4,.L85
	addi	a1,a1,1
	bne	a2,zero,.L86
.L76:
	li	a0,0
	ret
.L85:
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
	beq	a2,zero,.L94
	mv	a4,a0
.L89:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L89
.L94:
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
	j	.L97
.L99:
	lbu	a5,0(a0)
	addi	t0,t0,-1
	beq	a5,a1,.L100
.L97:
	mv	a0,t0
	bne	a4,t0,.L99
	li	a0,0
.L100:
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
	beq	a2,zero,.L105
	andi	a1,a1,0xff
	call	memset
.L105:
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
	beq	a5,zero,.L114
.L109:
	lbu	t0,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	t0,0(a0)
	bne	t0,zero,.L109
.L114:
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
	beq	a5,zero,.L122
.L116:
	beq	a5,a1,.L122
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L116
.L122:
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
.L126:
	lbu	a5,0(a0)
	beq	a5,a1,.L128
	addi	a0,a0,1
	bne	a5,zero,.L126
	li	a0,0
.L128:
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
.L132:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L135
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L132
.L135:
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
	beq	a5,zero,.L141
	li	a4,0
	addi	t0,a0,1
.L140:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a2,v0
	blt	a2,zero,.L140
	add	t1,t0,a2
	sub	a0,t1,a0
	ret
.L141:
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
	beq	a2,zero,.L153
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L149
	j	.L159
.L161:
	beq	a0,a3,.L148
	addi	a0,a0,1
	bne	a4,a5,.L148
	lbu	a5,0(a0)
	beq	a5,zero,.L160
	mv	a1,t0
.L149:
	lbu	a4,0(a1)
	addi	t0,a1,1
	bne	a4,zero,.L161
.L148:
	sub	a0,a5,a4
	ret
.L153:
	li	a0,0
	ret
.L160:
	lbu	a4,1(a1)
	sub	a0,a5,a4
	ret
.L159:
	lbu	a4,0(a1)
	j	.L148
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
	ble	a2,a5,.L166
	srli	a2,a2,1
.L164:
	vsetvli	t0,a2,e8,m1,ta,ma
	vlseg2e8.v	v4,(a0)
	slli	a4,t0,1
	sub	a2,a2,t0
	add	a0,a0,a4
	vmv1r.v	v2,v5
	vmv1r.v	v3,v4
	vsseg2e8.v	v2,(a1)
	add	a1,a1,a4
	bne	a2,zero,.L164
.L166:
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
	beq	a0,a5,.L172
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L172:
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
	bleu	a0,a5,.L176
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L176:
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
	beq	a0,a5,.L184
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L184:
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
	bleu	a0,a4,.L189
	addi	t0,a0,-127
	li	a3,32
	li	a0,1
	bgtu	t0,a3,.L193
.L192:
	ret
.L189:
	li	a0,1
	ret
.L193:
	li	t1,-8192
	addi	t2,t1,-40
	add	a1,a5,t2
	bleu	a1,a0,.L192
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
	bleu	a0,a4,.L203
	li	t0,8192
	addi	t1,t0,39
	li	a0,1
	bleu	a5,t1,.L202
	li	t2,-8192
	addi	a1,t2,-42
	li	a3,45056
	add	a2,a5,a1
	addi	a6,a3,2005
	bleu	a2,a6,.L202
	li	a7,-57344
	li	t3,8192
	add	t4,a5,a7
	addi	t5,t3,-8
	bleu	t4,t5,.L202
	li	a0,-65536
	addi	t6,a0,4
	li	t0,1048576
	add	a4,a5,t6
	addi	t1,t0,3
	li	a0,0
	bgtu	a4,t1,.L202
	li	t2,65536
	addi	a1,t2,-2
	and	a5,a5,a1
	sub	a3,a5,a1
	snez	a0,a3
.L202:
	ret
.L203:
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
	bleu	a4,a5,.L206
	ori	a0,a0,32
	addi	t0,a0,-97
	sltiu	a0,t0,6
	ret
.L206:
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
	beq	t2,zero,.L217
	feq.d	a0,fa5,fa5
	beq	a0,zero,.L213
	fgt.d	a1,fa0,fa5
	beq	a1,zero,.L218
	fsub.d	fa0,fa0,fa5
.L217:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L218:
	.cfi_restore_state
	fcvt.d.w	fa0,x0
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L213:
	.cfi_restore_state
	fmv.d	fa0,fa5
	j	.L217
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
	beq	t2,zero,.L235
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L236
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L240
	fld	ft1,8(sp)
	lw	t4,8(sp)
	lw	t5,12(sp)
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L230
.L235:
	lw	t4,16(sp)
	lw	t5,20(sp)
.L230:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L240:
	.cfi_restore_state
	lw	t4,16(sp)
	mv	t5,a6
	bne	a3,zero,.L230
.L236:
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
	beq	a3,zero,.L246
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L247
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	bne	a2,t2,.L251
	flt.s	a0,fa0,fa1
	beq	a0,zero,.L250
.L246:
	fmv.s.x	fa0,a4
	ret
.L251:
	fmv.s	fa0,fa1
	beq	a2,zero,.L247
.L250:
	ret
.L247:
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
	bne	a0,zero,.L259
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
	bne	a0,zero,.L253
	li	a5,-2147483648
	and	a4,s1,a5
	and	t0,s5,a5
	beq	a4,t0,.L254
	beq	a4,zero,.L253
.L259:
	mv	s4,s8
	mv	s3,s7
	mv	s2,s6
	mv	s1,s5
.L253:
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
.L254:
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
	bge	a0,zero,.L253
	j	.L259
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
	beq	t2,zero,.L271
	feq.d	a0,ft0,ft0
	beq	a0,zero,.L272
	lw	a2,12(sp)
	lw	a6,20(sp)
	li	a1,-2147483648
	and	a3,a1,a2
	and	a7,a1,a6
	bne	a3,a7,.L276
	fld	ft1,8(sp)
	lw	t4,16(sp)
	mv	t5,a6
	flt.d	t3,ft1,ft0
	beq	t3,zero,.L266
.L272:
	lw	t4,8(sp)
	lw	t5,12(sp)
.L266:
	sw	t4,40(sp)
	sw	t5,44(sp)
	fld	fa0,40(sp)
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L276:
	.cfi_restore_state
	lw	t4,8(sp)
	lw	t5,12(sp)
	bne	a3,zero,.L266
.L271:
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
	beq	a3,zero,.L282
	feq.s	t0,fa1,fa1
	beq	t0,zero,.L283
	li	t1,-2147483648
	and	a2,t1,a5
	and	t2,t1,a4
	beq	a2,t2,.L279
	bne	a2,zero,.L286
.L282:
	fmv.s.x	fa0,a4
	ret
.L279:
	flt.s	a0,fa0,fa1
	fmv.s	fa0,fa1
	bne	a0,zero,.L283
.L286:
	ret
.L283:
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
	bne	a0,zero,.L288
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
	bne	a0,zero,.L294
	li	a5,-2147483648
	and	a4,s8,a5
	and	t0,s1,a5
	beq	a4,t0,.L289
	beq	a4,zero,.L288
.L294:
	mv	s4,s7
	mv	s3,s6
	mv	s2,s5
	mv	s1,s8
.L288:
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
.L289:
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
	bge	a0,zero,.L288
	j	.L294
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
	beq	a0,zero,.L304
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	t0,a3,%lo(.LANCHOR0)
.L303:
	andi	a5,a0,63
	add	t1,t0,a5
	lbu	t2,0(t1)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	t2,-1(a4)
	bne	a0,zero,.L303
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L304:
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
	beq	a1,zero,.L315
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	t0,0(a0)
	beq	t0,zero,.L314
	sw	a0,4(t0)
.L314:
	ret
.L315:
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
	beq	a5,zero,.L317
	lw	a4,4(a0)
	sw	a4,4(a5)
.L317:
	lw	t0,4(a0)
	beq	t0,zero,.L325
	sw	a5,0(t0)
.L325:
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
	beq	s3,zero,.L327
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	mv	s0,a1
	mv	s6,a4
	li	s1,0
	j	.L329
.L345:
	add	s0,s0,s2
	beq	s3,s1,.L344
.L329:
	mv	a1,s0
	mv	a0,s4
	jalr	s6
	mv	s5,s0
	addi	s1,s1,1
	bne	a0,zero,.L345
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s6,16(sp)
	.cfi_restore 22
.L341:
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
.L344:
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
.L327:
	mul	t0,s2,s3
	addi	t1,s3,1
	sw	t1,0(s7)
	add	s5,s8,t0
	beq	s2,zero,.L341
	mv	a2,s2
	mv	a1,s4
	mv	a0,s5
	call	memmove
	j	.L341
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
	beq	s5,zero,.L347
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
	j	.L349
.L361:
	add	s0,s0,s4
	beq	s5,s1,.L360
.L349:
	mv	a1,s0
	mv	a0,s2
	jalr	s3
	mv	s6,s0
	addi	s1,s1,1
	bne	a0,zero,.L361
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
.L360:
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
.L347:
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
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
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
.L370:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L364
	bleu	a5,a2,.L364
	li	t0,43
	beq	a4,t0,.L365
	li	a1,45
	bne	a4,a1,.L383
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t3,a6,-48
	bgtu	t3,a7,.L375
	li	t6,1
.L368:
	li	a0,0
	li	a3,9
.L372:
	slli	a4,a0,2
	lbu	a2,1(t5)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t3
	mv	a4,t3
	addi	t3,a2,-48
	addi	t5,t5,1
	bleu	t3,a3,.L372
	bne	t6,zero,.L380
	sub	a0,a4,a5
	ret
.L364:
	addi	a0,a0,1
	j	.L370
.L383:
	addi	t3,a4,-48
	li	t4,9
	mv	t5,a0
	li	t6,0
	bleu	t3,t4,.L368
.L375:
	li	a0,0
.L380:
	ret
.L365:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t3,t1,-48
	li	t6,0
	bleu	t3,t2,.L368
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
.L389:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L385
	bleu	a5,a2,.L385
	li	t0,43
	beq	a4,t0,.L386
	li	a1,45
	bne	a4,a1,.L404
	lbu	a6,1(a0)
	li	t3,9
	addi	t6,a0,1
	addi	t4,a6,-48
	li	a7,1
	bgtu	t4,t3,.L396
.L390:
	li	a0,0
	li	a3,9
.L393:
	slli	a4,a0,2
	lbu	a2,1(t6)
	add	a0,a4,a0
	slli	a5,a0,1
	sub	a0,a5,t4
	mv	a4,t4
	addi	t4,a2,-48
	addi	t6,t6,1
	bleu	t4,a3,.L393
	bne	a7,zero,.L401
	sub	a0,a4,a5
	ret
.L385:
	addi	a0,a0,1
	j	.L389
.L404:
	addi	t4,a4,-48
	li	t5,9
	mv	t6,a0
	li	a7,0
	bleu	t4,t5,.L390
.L396:
	li	a0,0
.L401:
	ret
.L386:
	lbu	t1,1(a0)
	li	t2,9
	addi	t6,a0,1
	addi	t4,t1,-48
	bgtu	t4,t2,.L396
	li	a7,0
	j	.L390
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
.L412:
	lbu	a4,0(a0)
	addi	a5,a4,-9
	beq	a4,a3,.L406
	bleu	a5,a2,.L406
	li	t0,43
	beq	a4,t0,.L407
	li	a1,45
	bne	a4,a1,.L425
	lbu	a6,1(a0)
	li	a7,9
	addi	t5,a0,1
	addi	t6,a6,-48
	bgtu	t6,a7,.L417
	li	t4,1
.L410:
	li	a0,0
	li	a1,0
	li	a4,9
.L414:
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
	bleu	t6,a4,.L414
	bne	t4,zero,.L422
	sub	a0,t1,a2
	sgtu	t6,a0,t1
	sub	t5,a3,a5
	sub	a1,t5,t6
	ret
.L406:
	addi	a0,a0,1
	j	.L412
.L425:
	addi	t6,a4,-48
	li	t3,9
	mv	t5,a0
	li	t4,0
	bleu	t6,t3,.L410
.L417:
	li	a0,0
	li	a1,0
.L422:
	ret
.L407:
	lbu	t1,1(a0)
	li	t2,9
	addi	t5,a0,1
	addi	t6,t1,-48
	li	t4,0
	bleu	t6,t2,.L410
	j	.L417
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
	beq	a2,zero,.L427
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
.L430:
	srli	s2,s0,1
	mul	s1,s2,s4
	mv	a0,s5
	addi	s0,s0,-1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	blt	a0,zero,.L431
	beq	a0,zero,.L441
	sub	s0,s0,s2
	add	s3,s1,s4
	bne	s0,zero,.L430
.L442:
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
.L427:
	lw	ra,28(sp)
	.cfi_restore 1
	li	s1,0
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L431:
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
	bne	s0,zero,.L430
	j	.L442
.L441:
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
	beq	a2,zero,.L448
	sw	s2,32(sp)
	.cfi_offset 18, -16
.L457:
	srai	s2,s0,1
	mul	s1,s2,s4
	mv	a2,s7
	mv	a0,s5
	addi	s0,s0,-1
	srai	s0,s0,1
	add	s1,s3,s1
	mv	a1,s1
	jalr	s6
	beq	a0,zero,.L461
	ble	a0,zero,.L446
	add	s3,s1,s4
	bne	s0,zero,.L457
.L462:
	lw	s2,32(sp)
	.cfi_restore 18
.L448:
	li	s1,0
.L456:
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
.L446:
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
	beq	s2,zero,.L462
	mv	s0,s2
	j	.L457
.L461:
	lw	s2,32(sp)
	.cfi_restore 18
	j	.L456
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
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
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
	j	.L482
.L484:
	beq	a1,a5,.L483
	addi	a0,a0,4
.L482:
	lw	a5,0(a0)
	bne	a5,zero,.L484
	li	a0,0
	ret
.L483:
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
.L488:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L487
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L488
.L487:
	li	a0,-1
	blt	a5,a4,.L492
	sgt	a0,a5,a4
.L492:
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
.L496:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L496
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
	mv	a3,a0
	lw	a0,0(a0)
	beq	a0,zero,.L505
	li	t0,0
	addi	a5,a3,4
.L500:
	slli	a4,t0,2
	vsetvli	a1,zero,e32,m1,ta,ma
	add	a5,a5,a4
	vle32ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	t0,vl
	vfirst.m	a2,v0
	blt	a2,zero,.L500
	slli	t1,a2,2
	add	t2,a5,t1
	sub	a0,t2,a3
	srai	a0,a0,2
.L505:
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
	beq	a2,zero,.L513
.L520:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L510
	beq	a5,zero,.L510
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L520
.L513:
	li	a0,0
	ret
.L510:
	lw	t0,0(a0)
	lw	t1,0(a1)
	sgt	a0,t0,t1
	blt	t0,t1,.L521
	ret
.L521:
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
	beq	a2,zero,.L526
.L534:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L533
	addi	a0,a0,4
	bne	a2,zero,.L534
.L526:
	li	a0,0
	ret
.L533:
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
	beq	a2,zero,.L541
.L551:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L550
	addi	a1,a1,4
	bne	a2,zero,.L551
.L541:
	li	a0,0
	ret
.L550:
	sgt	a0,a4,a5
	blt	a4,a5,.L552
	ret
.L552:
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
	beq	a2,zero,.L560
	slli	a2,a2,2
	mv	a4,a0
.L555:
	vsetvli	a5,a2,e8,m8,ta,ma
	vle8.v	v8,0(a1)
	sub	a2,a2,a5
	add	a1,a1,a5
	vse8.v	v8,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L555
.L560:
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
	beq	a0,a1,.L595
	slli	a5,a2,2
	sub	a4,a0,a1
	addi	t5,a2,-1
	bgeu	a4,a5,.L600
	beq	a2,zero,.L595
	sltiu	a4,t5,8
	bne	a4,zero,.L567
	csrr	t0,vlenb
	srli	t1,t0,2
	addi	a3,t1,-1
	bltu	t5,a3,.L567
	addi	t2,a5,-4
	addi	a6,a5,-8
	add	a7,a0,t2
	add	t3,a1,a6
	sub	t4,a7,t3
	addi	t6,t0,-8
	add	a4,t4,t6
	bleu	a4,t6,.L567
	sub	a5,a5,t0
	add	a3,a1,a5
	neg	t0,t0
	add	a6,a0,a5
	sub	t2,a2,t1
	li	a7,0
.L568:
	vl1re32.v	v0,0(a3)
	add	a7,a7,t1
	add	a3,a3,t0
	vs1r.v	v0,0(a6)
	add	a6,a6,t0
	bgeu	t2,a7,.L568
	sub	t5,t5,a7
	beq	a2,a7,.L595
	slli	a2,t5,2
	add	t4,a1,a2
	add	t6,a0,a2
.L571:
	lw	t1,0(t4)
	mv	t3,t4
	addi	t6,t6,-4
	sw	t1,4(t6)
	addi	t4,t4,-4
	bne	a1,t3,.L571
	ret
.L578:
	addi	t6,a1,4
	mv	t4,a0
.L574:
	li	a2,-1
	j	.L576
.L601:
	addi	t6,t6,4
.L576:
	lw	a1,-4(t6)
	addi	t5,t5,-1
	addi	t4,t4,4
	sw	a1,-4(t4)
	bne	t5,a2,.L601
.L595:
	ret
.L600:
	beq	a2,zero,.L602
	li	t0,5
	bleu	t5,t0,.L578
	addi	t6,a1,4
	csrr	t1,vlenb
	sub	a3,a0,t6
	addi	t2,t1,-8
	bleu	a3,t2,.L579
	mv	t3,a0
.L575:
	vsetvli	a6,a2,e8,mf4,ta,ma
	vle32.v	v1,0(a1)
	slli	a7,a6,2
	sub	a2,a2,a6
	add	a1,a1,a7
	vse32.v	v1,0(t3)
	add	t3,t3,a7
	bne	a2,zero,.L575
	ret
.L567:
	slli	a7,t5,2
	li	t0,-4
.L572:
	add	a4,a1,a7
	lw	t2,0(a4)
	add	a5,a0,a7
	addi	a7,a7,-4
	sw	t2,0(a5)
	bne	a7,t0,.L572
	ret
.L602:
	ret
.L579:
	mv	t4,a0
	j	.L574
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	1
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	beq	a2,zero,.L610
	vsetvli	a5,zero,e32,m1,ta,ma
	vmv.v.x	v1,a1
	mv	a4,a0
.L605:
	vsetvli	t0,a2,e8,mf4,ta,ma
	vse32.v	v1,0(a4)
	slli	t1,t0,2
	sub	a2,a2,t0
	add	a4,a4,t1
	bne	a2,zero,.L605
.L610:
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
	bgeu	a0,a1,.L613
	add	t3,a0,a2
	add	t4,a1,a2
	beq	a2,zero,.L648
	addi	a6,a2,-1
	sltiu	a7,a6,15
	bne	a7,zero,.L650
	csrr	t5,vlenb
	srli	t6,t5,1
	addi	a4,t6,-1
	bltu	a6,a4,.L650
	addi	a3,a2,-2
	add	t0,a0,a3
	add	a5,a1,a6
	sub	t1,a5,t0
	addi	t2,t5,-2
	add	a7,t1,t2
	bleu	a7,t2,.L650
	addi	t6,t5,-1
	bltu	a6,t6,.L629
	sub	a4,a2,t5
	add	a3,a0,a4
	add	t2,a1,a4
	neg	t0,t5
	sub	t1,a2,t5
	li	a5,0
.L617:
	vl1re8.v	v0,0(a3)
	add	a5,a5,t5
	add	a3,a3,t0
	vs1r.v	v0,0(t2)
	add	t2,t2,t0
	bgeu	t1,a5,.L617
	sub	a6,a2,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	mv	a4,a6
	beq	a2,a5,.L656
.L616:
	csrr	t5,vlenb
	srli	a5,t5,1
	addi	a7,a5,-1
	addi	a2,a6,-1
	bltu	a2,a7,.L619
	sub	t6,a6,a5
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	a0,a0,t6
	vle8.v	v2,0(a0)
	add	a3,a1,t6
	sub	t1,a6,a5
	neg	a1,a5
	vse8.v	v2,0(a3)
	bltu	t1,a5,.L620
	add	a5,a0,a1
	vle8.v	v3,0(a5)
	add	t2,a3,a1
	mv	a5,t5
	vse8.v	v3,0(t2)
.L620:
	sub	a4,a4,a5
	sub	t3,t3,a5
	sub	t4,t4,a5
	beq	a6,a5,.L648
.L619:
	sub	a6,t3,a4
.L622:
	lbu	t5,-1(t3)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	t5,0(t4)
	bne	a6,t3,.L622
	ret
.L613:
	bne	a0,a1,.L657
.L648:
	ret
.L650:
	lbu	a7,-1(t3)
	addi	t3,t3,-1
	addi	t4,t4,-1
	sb	a7,0(t4)
	bne	a0,t3,.L650
	ret
.L657:
	beq	a2,zero,.L648
	addi	t2,a0,1
	csrr	a4,vlenb
	sub	a3,a1,t2
	addi	t0,a4,-2
	bleu	a3,t0,.L625
.L626:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a0)
	sub	a2,a2,a5
	add	a0,a0,a5
	vse8.v	v1,0(a1)
	add	a1,a1,a5
	bne	a2,zero,.L626
	ret
.L625:
	add	a0,a0,a2
	j	.L627
.L658:
	addi	t2,t2,1
.L627:
	lbu	t1,-1(t2)
	addi	a1,a1,1
	sb	t1,-1(a1)
	bne	a0,t2,.L658
	ret
.L629:
	mv	a4,a2
	mv	a6,a2
	j	.L616
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
	addi	a5,a2,-32
	blt	a5,zero,.L660
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	sll	t3,a0,a5
	li	t4,0
	blt	a6,zero,.L662
.L665:
	srl	t0,a1,a6
	li	a1,0
	or	a0,t0,t4
	or	a1,a1,t3
	ret
.L660:
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
	bge	a6,zero,.L665
.L662:
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
	blt	a5,zero,.L667
	neg	a2,a2
	andi	t5,a2,63
	addi	a6,t5,-32
	srl	t3,a1,a5
	li	t4,0
	blt	a6,zero,.L669
.L672:
	sll	t0,a0,a6
	li	a0,0
	or	a0,a0,t3
	or	a1,t0,t4
	ret
.L667:
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
	bge	a6,zero,.L672
.L669:
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
	neg	a5,a1
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
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
	neg	a5,a1
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
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
	neg	a5,a1
	srl	t0,a0,a5
	sll	a0,a0,a1
	or	a0,t0,a0
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
	neg	a5,a1
	sll	t0,a0,a5
	srl	a0,a0,a1
	or	a0,t0,a0
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
	slli	a2,t2,16
	srli	a0,a2,16
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
	slli	a2,t2,16
	srli	a0,a2,16
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
	srli	a5,a0,8
	slli	a0,a0,8
	or	t0,a5,a0
	slli	t1,t0,16
	srli	a0,t1,16
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
	.align	1
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
	.align	1
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	li	a5,0
	li	a3,32
	j	.L687
.L685:
	beq	a5,a3,.L690
.L687:
	srl	a4,a0,a5
	andi	t0,a4,1
	addi	a5,a5,1
	beq	t0,zero,.L685
	mv	a0,a5
	ret
.L690:
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
	beq	a0,zero,.L694
	andi	a0,a0,1
	bne	a0,zero,.L697
	li	a0,1
.L693:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L693
	ret
.L694:
	li	a0,0
.L697:
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
	bne	t0,zero,.L701
	lui	t1,%hi(.LC1)
	flw	ft0,%lo(.LC1)(t1)
	fgt.s	a0,fa0,ft0
.L701:
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
	bne	t2,zero,.L706
	lui	a0,%hi(.LC3)
	addi	a1,a0,%lo(.LC3)
	fld	ft0,0(a1)
	fgt.d	a0,fa5,ft0
.L706:
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
	blt	a0,zero,.L713
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
.L713:
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
	beq	a5,zero,.L731
	fadd.s	fa5,fa0,fa0
	feq.s	t0,fa5,fa0
	bne	t0,zero,.L731
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
	beq	a5,zero,.L721
.L722:
	fmul.s	fa0,fa0,ft0
.L721:
	srli	t3,a0,31
	add	a0,t3,a0
	srai	a0,a0,1
	beq	a0,zero,.L731
	srli	t4,a0,31
	andi	t5,a0,1
	fmul.s	ft0,ft0,ft0
	add	t6,t4,a0
	bne	t5,zero,.L722
.L733:
	srai	a0,t6,1
	srli	t4,a0,31
	andi	t5,a0,1
	fmul.s	ft0,ft0,ft0
	add	t6,t4,a0
	bne	t5,zero,.L722
	j	.L733
.L731:
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
	beq	t1,zero,.L747
	fadd.d	fa5,fa0,fa0
	feq.d	t2,fa5,fa0
	bne	t2,zero,.L747
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
	beq	a5,zero,.L737
.L738:
	fmul.d	fa0,fa0,ft0
.L737:
	srli	t5,a0,31
	add	a0,t5,a0
	srai	a0,a0,1
	beq	a0,zero,.L747
	srli	t6,a0,31
	andi	t0,a0,1
	fmul.d	ft0,ft0,ft0
	add	t1,t6,a0
	bne	t0,zero,.L738
.L750:
	srai	a0,t1,1
	srli	t6,a0,31
	andi	t0,a0,1
	fmul.d	ft0,ft0,ft0
	add	t1,t6,a0
	bne	t0,zero,.L738
	j	.L750
.L747:
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
	bne	a0,zero,.L752
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
	beq	a0,zero,.L752
	sw	s1,100(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	.cfi_offset 9, -12
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	blt	s0,zero,.L768
	lui	t0,%hi(.LC10)
	addi	t1,t0,%lo(.LC10)
	lw	s1,0(t1)
	lw	s7,4(t1)
	lw	s8,8(t1)
	lw	s9,12(t1)
.L754:
	andi	a1,s0,1
	beq	a1,zero,.L755
.L756:
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
.L755:
	srli	a6,s0,31
	add	s0,a6,s0
	srai	s0,s0,1
	beq	s0,zero,.L767
.L757:
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
	bne	a7,zero,.L756
	srai	s0,t3,1
	j	.L757
.L767:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
.L752:
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
.L768:
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
	j	.L754
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	1
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L776
	mv	a4,a0
	mv	a3,a0
.L771:
	vsetvli	a5,a2,e8,m1,ta,ma
	vle8.v	v1,0(a1)
	vle8.v	v2,0(a3)
	sub	a2,a2,a5
	add	a1,a1,a5
	add	a3,a3,a5
	vxor.vv	v0,v1,v2
	vse8.v	v0,0(a4)
	add	a4,a4,a5
	bne	a2,zero,.L771
.L776:
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
	beq	a5,zero,.L785
	li	a4,0
	addi	t0,a0,1
.L780:
	vsetvli	a3,zero,e8,m1,ta,ma
	add	t0,t0,a4
	vle8ff.v	v1,0(t0)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a6,v0
	blt	a6,zero,.L780
	add	t2,t0,a6
.L795:
	beq	a2,zero,.L782
.L798:
	lbu	t1,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	t1,0(t2)
	beq	t1,zero,.L797
	addi	t2,t2,1
	bne	a2,zero,.L798
.L782:
	sb	zero,0(t2)
	ret
.L797:
	ret
.L785:
	mv	t2,a0
	j	.L795
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
	beq	a1,zero,.L806
.L800:
	add	a4,a5,a0
	lbu	t0,0(a4)
	bne	t0,zero,.L802
.L806:
	ret
.L802:
	addi	a0,a0,1
	bne	a1,a0,.L800
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
	beq	a3,zero,.L814
.L821:
	mv	a5,a1
	j	.L813
.L812:
	beq	a4,a3,.L816
.L813:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L812
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L821
.L814:
	li	a0,0
.L816:
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
.L823:
	lbu	a3,0(a4)
	sub	a5,a3,a1
	czero.nez	t0,a4,a5
	czero.eqz	a0,a0,a5
	add	a0,a0,t0
	addi	a4,a4,1
	bne	a3,zero,.L823
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
	beq	a7,zero,.L838
	li	a4,0
	addi	a5,a1,1
.L827:
	vsetvli	a2,zero,e8,m1,ta,ma
	add	a5,a5,a4
	vle8ff.v	v1,0(a5)
	vmseq.vi	v0,v1,0
	csrr	a4,vl
	vfirst.m	a0,v0
	blt	a0,zero,.L827
	add	t0,a5,a0
	sub	t3,t0,a1
	mv	a0,a3
	addi	t5,t3,-1
	bne	t0,a1,.L847
	ret
.L851:
	addi	a3,a3,1
	beq	t2,zero,.L850
.L847:
	lbu	t2,0(a3)
	bne	t2,a7,.L851
	add	t1,a3,t5
	mv	a2,a1
	mv	t4,a3
	mv	t6,a7
.L829:
	beq	t1,t4,.L831
	addi	t4,t4,1
	bne	t6,t2,.L832
	lbu	t2,0(t4)
	lbu	t6,1(a2)
	addi	a6,a2,1
	beq	t2,zero,.L831
	mv	a2,a6
	bne	t6,zero,.L829
.L832:
	addi	a3,a3,1
	j	.L847
.L850:
	li	a0,0
	ret
.L831:
	bne	t2,t6,.L832
.L838:
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
	bne	a0,zero,.L867
	fgt.d	a1,fa0,fa4
	beq	a1,zero,.L862
	flt.d	a2,fa5,fa4
	bne	a2,zero,.L855
.L862:
	addi	sp,sp,32
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L867:
	.cfi_restore_state
	fgt.d	a3,fa5,fa4
	beq	a3,zero,.L862
.L855:
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
	beq	a3,zero,.L884
	bltu	a1,a3,.L879
	sub	a1,a1,a3
	add	a7,a0,a1
	bgtu	a0,a7,.L879
	lbu	t4,0(a2)
	addi	a3,a3,-1
	addi	a2,a2,1
.L874:
	lbu	a5,0(a0)
	addi	t1,a0,1
	beq	a5,t4,.L885
	mv	a0,t1
.L870:
	bgeu	a7,a0,.L874
.L879:
	li	a0,0
.L884:
	ret
.L885:
	mv	t5,a2
	beq	a3,zero,.L884
.L873:
	mv	t2,t1
	add	t6,t1,a3
	j	.L871
.L872:
	beq	t2,t6,.L884
.L871:
	lbu	a6,0(t2)
	lbu	t0,0(t5)
	addi	t2,t2,1
	addi	t5,t5,1
	beq	a6,t0,.L872
	bgtu	t1,a7,.L879
	lbu	a4,0(t1)
	addi	a0,t1,1
	bne	a4,t4,.L870
	mv	t3,t1
	mv	t5,a2
	mv	t1,a0
	mv	a0,t3
	j	.L873
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
	beq	a2,zero,.L891
	call	memmove
.L891:
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
	bne	t1,zero,.L922
	lui	t2,%hi(.LC14)
	addi	a1,t2,%lo(.LC14)
	fld	fa4,0(a1)
	li	a3,0
	fge.d	a4,fa0,fa4
	beq	a4,zero,.L923
.L896:
	lui	a2,%hi(.LC9)
	addi	a6,a2,%lo(.LC9)
	fld	ft5,0(a6)
	fld	ft6,0(a1)
	li	t1,0
.L902:
	fmul.d	fa0,fa0,ft5
	addi	t1,t1,1
	fge.d	a7,fa0,ft6
	bne	a7,zero,.L902
	sw	t1,0(a0)
	beq	a3,zero,.L916
.L925:
	fneg.d	fa0,fa0
.L916:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L923:
	.cfi_restore_state
	lui	a1,%hi(.LC9)
	addi	a2,a1,%lo(.LC9)
	fld	ft0,0(a2)
	flt.d	a6,fa0,ft0
	beq	a6,zero,.L899
	feq.d	a7,fa0,fa5
	beq	a7,zero,.L908
.L899:
	sw	zero,0(a0)
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L922:
	.cfi_restore_state
	lui	a3,%hi(.LC12)
	addi	t3,a3,%lo(.LC12)
	fld	ft2,0(t3)
	fneg.d	ft1,fa0
	fle.d	t4,fa0,ft2
	beq	t4,zero,.L924
	lui	a4,%hi(.LC14)
	fmv.d	fa0,ft1
	addi	a1,a4,%lo(.LC14)
	li	a3,1
	j	.L896
.L924:
	lui	t5,%hi(.LC13)
	addi	t6,t5,%lo(.LC13)
	fld	ft3,0(t6)
	fgt.d	a5,fa0,ft3
	beq	a5,zero,.L899
	lui	t0,%hi(.LC9)
	addi	a2,t0,%lo(.LC9)
	li	a3,1
.L897:
	fmv.d	fa0,ft1
	fld	ft4,0(a2)
	li	t1,0
.L904:
	fadd.d	fa0,fa0,fa0
	addi	t1,t1,-1
	flt.d	t2,fa0,ft4
	bne	t2,zero,.L904
	sw	t1,0(a0)
	bne	a3,zero,.L925
	j	.L916
.L908:
	fmv.d	ft1,fa0
	j	.L897
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
	beq	a5,zero,.L930
.L929:
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
	bne	a4,zero,.L929
	ret
.L930:
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
	bltu	a1,a0,.L934
	j	.L954
.L938:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L936
	beq	t0,zero,.L937
.L934:
	addi	t0,t0,-1
	bge	a1,zero,.L938
.L939:
	li	t0,0
.L940:
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
	bne	a4,zero,.L940
.L937:
	czero.nez	a1,t0,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,a1
	ret
.L936:
	bne	a4,zero,.L939
	li	t0,0
	j	.L937
.L954:
	sgtu	a3,a1,a0
	xori	t0,a3,1
	sub	a5,a0,a1
	czero.eqz	t1,a5,t0
	czero.nez	a0,a0,t0
	add	a0,a0,t1
	j	.L937
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	1
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L958
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
.L958:
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
	srai	a3,a1,31
	mv	a5,a0
	mv	a4,a1
	xor	a0,a0,a3
	xor	a1,a1,a3
	beq	a5,a3,.L974
.L968:
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
.L974:
	bne	a4,a5,.L968
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
	beq	a5,zero,.L978
.L977:
	andi	a4,a5,1
	czero.eqz	t0,a1,a4
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L977
	ret
.L978:
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
	srli	a4,a2,3
	andi	t1,a2,-8
	bltu	a0,a1,.L985
	add	a5,a1,a2
	bleu	a0,a5,.L1029
.L985:
	beq	a4,zero,.L984
	addi	a6,a4,-1
	li	a7,8
	bleu	a6,a7,.L988
	add	t3,a1,a7
	csrr	t4,vlenb
	sub	t5,a0,t3
	addi	t6,t4,-16
	bleu	t5,t6,.L988
	mv	a3,a0
	mv	a5,a1
.L989:
	vsetvli	t0,a4,e8,mf8,ta,ma
	vle64.v	v3,0(a5)
	slli	t2,t0,3
	sub	a4,a4,t0
	add	a5,a5,t2
	vse64.v	v3,0(a3)
	add	a3,a3,t2
	bne	a4,zero,.L989
.L984:
	bleu	a2,t1,.L1021
	addi	t0,t1,1
	add	a0,a0,t1
	add	t2,a1,t0
	csrr	a4,vlenb
	sub	a5,a0,t2
	addi	a3,a4,-2
	bleu	a5,a3,.L992
	sub	a2,a2,t1
	add	a1,a1,t1
.L993:
	vsetvli	t1,a2,e8,m1,ta,ma
	vle8.v	v4,0(a1)
	sub	a2,a2,t1
	add	a1,a1,t1
	vse8.v	v4,0(a0)
	add	a0,a0,t1
	bne	a2,zero,.L993
	ret
.L1029:
	addi	a5,a2,-1
	beq	a2,zero,.L1030
	csrr	a7,vlenb
	srli	a4,a7,1
	addi	t0,a4,-1
	bltu	a5,t0,.L1022
	sltiu	t2,a5,15
	beq	t2,zero,.L1020
.L1022:
	add	a3,a0,a5
.L996:
	li	t1,-1
	j	.L1005
.L1031:
	add	a3,a0,a5
.L1005:
	add	t0,a1,a5
	lbu	t2,0(t0)
	addi	a5,a5,-1
	sb	t2,0(a3)
	bne	a5,t1,.L1031
.L1021:
	ret
.L1020:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	a3,a0,a5
	sub	t3,a3,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L996
	addi	t6,a7,-1
	bltu	a5,t6,.L997
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a4,a0,t1
	neg	t0,a7
	sub	t2,a2,a7
	li	a3,0
.L998:
	vl1re8.v	v1,0(a6)
	add	a3,a3,a7
	add	a6,a6,t0
	vs1r.v	v1,0(a4)
	add	a4,a4,t0
	bgeu	t2,a3,.L998
	sub	a5,a5,a3
	beq	a2,a3,.L1021
	sub	a2,a2,a3
	srli	a7,a7,1
	addi	t3,a7,-1
	addi	t4,a2,-1
	bltu	t4,t3,.L1001
.L997:
	csrr	t5,vlenb
	srli	t3,t5,1
	sub	t6,a2,t3
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	t1,a1,t6
	vle8.v	v0,0(t1)
	add	t2,a0,t6
	sub	a3,a2,t3
	neg	a6,t3
	vse8.v	v0,0(t2)
	bltu	a3,t3,.L1002
	add	a4,t1,a6
	vle8.v	v2,0(a4)
	add	a7,t2,a6
	mv	t3,t5
	vse8.v	v2,0(a7)
.L1002:
	sub	a5,a5,t3
	beq	a2,t3,.L1021
.L1001:
	li	a2,-1
.L1004:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t6,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t6)
	bne	a5,a2,.L1004
	ret
.L988:
	slli	a6,a4,3
	add	t3,a6,a1
	mv	t5,a1
	mv	t6,a0
.L991:
	lw	t4,0(t5)
	lw	a7,4(t5)
	addi	t5,t5,8
	sw	t4,0(t6)
	sw	a7,4(t6)
	addi	t6,t6,8
	bne	t3,t5,.L991
	j	.L984
.L992:
	add	t4,a1,t1
	add	a6,a1,a2
.L995:
	lbu	t3,0(t4)
	addi	t4,t4,1
	addi	a0,a0,1
	sb	t3,-1(a0)
	bne	a6,t4,.L995
	ret
.L1030:
	ret
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
	bltu	a0,a1,.L1036
	add	a5,a1,a2
	bleu	a0,a5,.L1075
.L1036:
	beq	a4,zero,.L1035
	addi	a6,a1,2
	csrr	a7,vlenb
	sub	t3,a0,a6
	addi	t4,a7,-4
	bleu	t3,t4,.L1039
	mv	a3,a0
	mv	t0,a1
.L1040:
	vsetvli	t5,a4,e8,mf2,ta,ma
	vle16.v	v3,0(t0)
	slli	t6,t5,1
	sub	a4,a4,t5
	add	t0,t0,t6
	vse16.v	v3,0(a3)
	add	a3,a3,t6
	bne	a4,zero,.L1040
.L1035:
	andi	t3,a2,1
	beq	t3,zero,.L1069
.L1078:
	add	a1,a1,a2
	lbu	t4,-1(a1)
	add	a0,a0,a2
	sb	t4,-1(a0)
	ret
.L1075:
	addi	a5,a2,-1
	beq	a2,zero,.L1076
	csrr	a7,vlenb
	srli	a4,a7,1
	addi	t0,a4,-1
	bltu	a5,t0,.L1070
	sltiu	t1,a5,15
	beq	t1,zero,.L1068
.L1070:
	add	t2,a0,a5
.L1044:
	li	t6,-1
	j	.L1052
.L1077:
	add	t2,a0,a5
.L1052:
	add	t0,a1,a5
	lbu	t1,0(t0)
	addi	a5,a5,-1
	sb	t1,0(t2)
	bne	a5,t6,.L1077
.L1069:
	ret
.L1068:
	addi	t2,a2,-2
	add	a6,a1,t2
	add	t2,a0,a5
	sub	t3,t2,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1044
	addi	a3,a7,-1
	bltu	a5,a3,.L1045
	sub	t6,a2,a7
	add	a6,a1,t6
	add	a4,a0,t6
	neg	t0,a7
	sub	t1,a2,a7
	li	t2,0
.L1046:
	vl1re8.v	v1,0(a6)
	add	t2,t2,a7
	add	a6,a6,t0
	vs1r.v	v1,0(a4)
	add	a4,a4,t0
	bgeu	t1,t2,.L1046
	sub	a5,a5,t2
	beq	a2,t2,.L1069
	sub	a2,a2,t2
	srli	a7,a7,1
	addi	t3,a7,-1
	addi	t4,a2,-1
	bltu	t4,t3,.L1048
.L1045:
	csrr	t5,vlenb
	srli	t3,t5,1
	sub	a3,a2,t3
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	t6,a1,a3
	vle8.v	v0,0(t6)
	add	t1,a0,a3
	sub	t2,a2,t3
	neg	a6,t3
	vse8.v	v0,0(t1)
	bltu	t2,t3,.L1049
	add	a4,t6,a6
	vle8.v	v2,0(a4)
	add	a7,t1,a6
	mv	t3,t5
	vse8.v	v2,0(a7)
.L1049:
	sub	a5,a5,t3
	beq	a2,t3,.L1069
.L1048:
	li	a2,-1
.L1051:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	a3,a0,a5
	addi	a5,a5,-1
	sb	t5,0(a3)
	bne	a5,a2,.L1051
	ret
.L1039:
	slli	t1,a4,1
	add	t2,t1,a1
	mv	a5,a1
	mv	a7,a0
.L1042:
	lh	a6,0(a5)
	addi	a5,a5,2
	addi	a7,a7,2
	sh	a6,-2(a7)
	bne	t2,a5,.L1042
	andi	t3,a2,1
	beq	t3,zero,.L1069
	j	.L1078
.L1076:
	ret
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	1
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	srli	a4,a2,2
	andi	t1,a2,-4
	bltu	a0,a1,.L1083
	add	a5,a1,a2
	bleu	a0,a5,.L1127
.L1083:
	beq	a4,zero,.L1082
	addi	a6,a4,-1
	li	a7,2
	bleu	a6,a7,.L1086
	addi	t3,a1,4
	csrr	t4,vlenb
	sub	t5,a0,t3
	addi	t6,t4,-8
	bleu	t5,t6,.L1086
	mv	a3,a0
	mv	a5,a1
.L1087:
	vsetvli	t0,a4,e8,mf4,ta,ma
	vle32.v	v3,0(a5)
	slli	t2,t0,2
	sub	a4,a4,t0
	add	a5,a5,t2
	vse32.v	v3,0(a3)
	add	a3,a3,t2
	bne	a4,zero,.L1087
.L1082:
	bleu	a2,t1,.L1119
	addi	t6,t1,1
	add	a0,a0,t1
	add	t0,a1,t6
	csrr	a4,vlenb
	sub	t2,a0,t0
	addi	a5,a4,-2
	bleu	t2,a5,.L1090
	sub	a2,a2,t1
	add	a1,a1,t1
.L1091:
	vsetvli	t1,a2,e8,m1,ta,ma
	vle8.v	v4,0(a1)
	sub	a2,a2,t1
	add	a1,a1,t1
	vse8.v	v4,0(a0)
	add	a0,a0,t1
	bne	a2,zero,.L1091
	ret
.L1127:
	addi	a5,a2,-1
	beq	a2,zero,.L1128
	csrr	a7,vlenb
	srli	a4,a7,1
	addi	t0,a4,-1
	bltu	a5,t0,.L1120
	sltiu	t2,a5,15
	beq	t2,zero,.L1118
.L1120:
	add	a3,a0,a5
.L1094:
	li	t1,-1
	j	.L1103
.L1129:
	add	a3,a0,a5
.L1103:
	add	t0,a1,a5
	lbu	t2,0(t0)
	addi	a5,a5,-1
	sb	t2,0(a3)
	bne	a5,t1,.L1129
.L1119:
	ret
.L1118:
	addi	a3,a2,-2
	add	a6,a1,a3
	add	a3,a0,a5
	sub	t3,a3,a6
	addi	t4,a7,-2
	add	t5,t3,t4
	bleu	t5,t4,.L1094
	addi	t6,a7,-1
	bltu	a5,t6,.L1095
	sub	t1,a2,a7
	add	a6,a1,t1
	add	a4,a0,t1
	neg	t0,a7
	sub	t2,a2,a7
	li	a3,0
.L1096:
	vl1re8.v	v1,0(a6)
	add	a3,a3,a7
	add	a6,a6,t0
	vs1r.v	v1,0(a4)
	add	a4,a4,t0
	bgeu	t2,a3,.L1096
	sub	a5,a5,a3
	beq	a2,a3,.L1119
	sub	a2,a2,a3
	srli	a7,a7,1
	addi	t3,a7,-1
	addi	t4,a2,-1
	bltu	t4,t3,.L1099
.L1095:
	csrr	t5,vlenb
	srli	t3,t5,1
	sub	t6,a2,t3
	vsetvli	t0,zero,e8,mf2,ta,ma
	add	t1,a1,t6
	vle8.v	v0,0(t1)
	add	t2,a0,t6
	sub	a3,a2,t3
	neg	a6,t3
	vse8.v	v0,0(t2)
	bltu	a3,t3,.L1100
	add	a4,t1,a6
	vle8.v	v2,0(a4)
	add	a7,t2,a6
	mv	t3,t5
	vse8.v	v2,0(a7)
.L1100:
	sub	a5,a5,t3
	beq	a2,t3,.L1119
.L1099:
	li	a2,-1
.L1102:
	add	t4,a1,a5
	lbu	t5,0(t4)
	add	t6,a0,a5
	addi	a5,a5,-1
	sb	t5,0(t6)
	bne	a5,a2,.L1102
	ret
.L1086:
	slli	a6,a4,2
	add	a7,a6,a1
	mv	t4,a1
	mv	t5,a0
.L1089:
	lw	t3,0(t4)
	addi	t4,t4,4
	addi	t5,t5,4
	sw	t3,-4(t5)
	bne	a7,t4,.L1089
	j	.L1082
.L1090:
	add	a7,a1,t1
	add	a3,a1,a2
.L1093:
	lbu	a6,0(a7)
	addi	a7,a7,1
	addi	a0,a0,1
	sb	a6,-1(a0)
	bne	a3,a7,.L1093
	ret
.L1128:
	ret
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
	bne	a4,zero,.L1141
	srai	a0,a0,14
	bne	a0,zero,.L1156
	srai	t0,a5,13
	bne	t0,zero,.L1142
	srai	t1,a5,12
	bne	t1,zero,.L1143
	srai	t2,a5,11
	bne	t2,zero,.L1144
	srai	a0,a5,10
	bne	a0,zero,.L1145
	srai	a1,a5,9
	bne	a1,zero,.L1146
	srai	a2,a5,8
	bne	a2,zero,.L1147
	srai	a3,a5,7
	bne	a3,zero,.L1148
	srai	a6,a5,6
	bne	a6,zero,.L1149
	srai	a7,a5,5
	bne	a7,zero,.L1150
	srai	t3,a5,4
	bne	t3,zero,.L1151
	srai	t4,a5,3
	bne	t4,zero,.L1152
	srai	t5,a5,2
	bne	t5,zero,.L1153
	srai	t6,a5,1
	bne	t6,zero,.L1154
	seqz	a5,a5
	addi	a0,a5,15
	ret
.L1154:
	li	a0,14
.L1156:
	ret
.L1141:
	li	a0,0
	ret
.L1152:
	li	a0,12
	ret
.L1142:
	li	a0,2
	ret
.L1143:
	li	a0,3
	ret
.L1144:
	li	a0,4
	ret
.L1145:
	li	a0,5
	ret
.L1146:
	li	a0,6
	ret
.L1147:
	li	a0,7
	ret
.L1148:
	li	a0,8
	ret
.L1149:
	li	a0,9
	ret
.L1150:
	li	a0,10
	ret
.L1151:
	li	a0,11
	ret
.L1153:
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
	bne	a5,zero,.L1160
	andi	t0,a0,2
	bne	t0,zero,.L1161
	andi	t1,a0,4
	bne	t1,zero,.L1162
	andi	t2,a0,8
	bne	t2,zero,.L1163
	andi	a1,a0,16
	bne	a1,zero,.L1164
	andi	a2,a0,32
	bne	a2,zero,.L1165
	andi	a3,a0,64
	bne	a3,zero,.L1166
	andi	a4,a0,128
	bne	a4,zero,.L1167
	andi	a6,a0,256
	bne	a6,zero,.L1168
	andi	a7,a0,512
	bne	a7,zero,.L1169
	andi	t3,a0,1024
	bne	t3,zero,.L1170
	slli	t5,a0,20
	li	t4,4096
	blt	t5,zero,.L1171
	and	t6,a0,t4
	bne	t6,zero,.L1172
	slli	a5,a0,18
	blt	a5,zero,.L1173
	slli	t0,a0,17
	blt	t0,zero,.L1174
	srai	a0,a0,15
	seqz	t1,a0
	addi	a0,t1,15
	ret
.L1160:
	li	a0,0
	ret
.L1161:
	li	a0,1
	ret
.L1172:
	li	a0,12
	ret
.L1162:
	li	a0,2
	ret
.L1163:
	li	a0,3
	ret
.L1164:
	li	a0,4
	ret
.L1165:
	li	a0,5
	ret
.L1166:
	li	a0,6
	ret
.L1167:
	li	a0,7
	ret
.L1168:
	li	a0,8
	ret
.L1169:
	li	a0,9
	ret
.L1170:
	li	a0,10
	ret
.L1171:
	li	a0,11
	ret
.L1173:
	li	a0,13
	ret
.L1174:
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
	bne	t0,zero,.L1185
	fcvt.w.s a0,fa0,rtz
	ret
.L1185:
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
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	1
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
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
	beq	a5,zero,.L1191
.L1190:
	andi	a4,a5,1
	czero.eqz	t0,a1,a4
	srli	a5,a5,1
	add	a0,a0,t0
	slli	a1,a1,1
	bne	a5,zero,.L1190
	ret
.L1191:
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
	beq	a4,zero,.L1197
	beq	a1,zero,.L1198
.L1196:
	andi	a5,a1,1
	czero.eqz	t0,a4,a5
	srli	a1,a1,1
	add	a0,a0,t0
	slli	a4,a4,1
	bne	a1,zero,.L1196
	ret
.L1197:
	ret
.L1198:
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
	bgtu	a0,a1,.L1202
	j	.L1222
.L1206:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L1204
	beq	a3,zero,.L1205
.L1202:
	addi	a3,a3,-1
	bge	a1,zero,.L1206
.L1207:
	li	a3,0
.L1208:
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
	bne	a4,zero,.L1208
.L1205:
	czero.nez	t5,a3,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,t5
	ret
.L1204:
	bne	a4,zero,.L1207
	li	a3,0
	j	.L1205
.L1222:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	czero.nez	t0,a5,a1
	czero.eqz	a0,a0,a1
	add	a0,a0,t0
	xori	a3,a1,1
	j	.L1205
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
	bne	a5,zero,.L1227
	fgt.s	a0,fa0,fa1
.L1227:
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
	bne	t2,zero,.L1232
	fgt.d	a0,fa4,fa5
.L1232:
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
	blt	a1,zero,.L1253
	beq	a1,zero,.L1244
	li	a2,0
.L1240:
	li	t1,32
	li	a0,0
	j	.L1243
.L1254:
	beq	t1,zero,.L1242
.L1243:
	andi	a4,a1,1
	czero.eqz	t0,a3,a4
	addi	a5,t1,-1
	srai	a1,a1,1
	andi	t1,a5,0xff
	add	a0,a0,t0
	slli	a3,a3,1
	bne	a1,zero,.L1254
.L1242:
	beq	a2,zero,.L1252
	neg	a0,a0
	ret
.L1244:
	li	a0,0
.L1252:
	ret
.L1253:
	neg	a1,a1
	li	a2,1
	j	.L1240
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
	blt	a0,zero,.L1282
.L1256:
	bge	a1,zero,.L1257
	neg	a1,a1
	mv	a6,a5
.L1257:
	mv	t3,a0
	mv	t4,a1
	li	a4,32
	li	a3,1
	bgtu	a0,a1,.L1258
	j	.L1280
.L1262:
	beq	a4,zero,.L1263
.L1258:
	slli	t4,t4,1
	addi	a4,a4,-1
	slli	a3,a3,1
	bgtu	a0,t4,.L1262
.L1263:
	li	a0,0
	beq	a3,zero,.L1261
.L1260:
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
	bne	a3,zero,.L1260
.L1261:
	beq	a6,zero,.L1277
	neg	a0,a0
	ret
.L1277:
	ret
.L1282:
	neg	a0,a0
	li	a5,0
	li	a6,1
	j	.L1256
.L1280:
	sltu	a0,a0,a1
	seqz	a0,a0
	j	.L1261
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
	bge	a0,zero,.L1284
	neg	a0,a0
	li	a6,1
.L1284:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a5,a1,a5
	mv	t2,a0
	li	a2,32
	li	t4,1
	bgtu	a0,a5,.L1285
	j	.L1306
.L1289:
	beq	a2,zero,.L1290
.L1285:
	slli	a5,a5,1
	addi	a2,a2,-1
	slli	t4,t4,1
	bgtu	a0,a5,.L1289
.L1290:
	beq	t4,zero,.L1288
.L1287:
	sltu	a0,t2,a5
	sub	t3,t2,a5
	xori	a7,a0,1
	czero.eqz	t5,t3,a7
	czero.nez	t6,t2,a7
	srli	t4,t4,1
	add	t2,t6,t5
	srli	a5,a5,1
	bne	t4,zero,.L1287
	mv	a0,t2
.L1288:
	beq	a6,zero,.L1303
	neg	a0,a0
	ret
.L1303:
	ret
.L1306:
	sltu	t0,a0,a5
	sub	a4,a0,a5
	czero.eqz	a3,a0,t0
	czero.nez	t1,a4,t0
	add	t2,a3,t1
	mv	a0,t2
	j	.L1288
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	1
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	bgeu	a1,a0,.L1391
	slli	a6,a1,16
	srai	a7,a6,16
	blt	a7,zero,.L1311
	slli	a5,a1,1
	slli	t0,a5,16
	srli	t3,t0,16
	bleu	a0,t3,.L1318
	slli	t1,t3,16
	srai	t2,t1,16
	blt	t2,zero,.L1318
	slli	a3,a1,2
	slli	a4,a3,16
	srli	t3,a4,16
	bleu	a0,t3,.L1320
	slli	a6,t3,16
	srai	a7,a6,16
	blt	a7,zero,.L1320
	slli	t3,a1,3
	slli	t4,t3,16
	srli	t3,t4,16
	bleu	a0,t3,.L1322
	slli	t5,t3,16
	srai	t6,t5,16
	blt	t6,zero,.L1322
	slli	a5,a1,4
	slli	t0,a5,16
	srli	t3,t0,16
	bleu	a0,t3,.L1324
	slli	t1,t3,16
	srai	t2,t1,16
	blt	t2,zero,.L1324
	slli	a3,a1,5
	slli	a4,a3,16
	srli	t3,a4,16
	bleu	a0,t3,.L1326
	slli	a6,t3,16
	srai	a7,a6,16
	blt	a7,zero,.L1326
	slli	t3,a1,6
	slli	t4,t3,16
	srli	t3,t4,16
	bleu	a0,t3,.L1328
	slli	t5,t3,16
	srai	t6,t5,16
	blt	t6,zero,.L1328
	slli	a5,a1,7
	slli	t0,a5,16
	srli	t3,t0,16
	bleu	a0,t3,.L1330
	slli	t1,t3,16
	srai	t2,t1,16
	blt	t2,zero,.L1330
	slli	a3,a1,8
	slli	a4,a3,16
	srli	t3,a4,16
	bleu	a0,t3,.L1332
	slli	a6,t3,16
	srai	a7,a6,16
	blt	a7,zero,.L1332
	slli	t3,a1,9
	slli	t4,t3,16
	srli	t3,t4,16
	bleu	a0,t3,.L1334
	slli	t5,t3,16
	srai	t6,t5,16
	blt	t6,zero,.L1334
	slli	a5,a1,10
	slli	t0,a5,16
	srli	t3,t0,16
	bleu	a0,t3,.L1336
	slli	t1,t3,16
	srai	t2,t1,16
	blt	t2,zero,.L1336
	slli	a3,a1,11
	slli	a4,a3,16
	srli	t3,a4,16
	bleu	a0,t3,.L1338
	slli	a6,t3,16
	srai	a7,a6,16
	blt	a7,zero,.L1338
	slli	t3,a1,12
	slli	t4,t3,16
	srli	t3,t4,16
	bleu	a0,t3,.L1340
	slli	t5,t3,16
	srai	t6,t5,16
	blt	t6,zero,.L1340
	slli	a5,a1,13
	slli	t0,a5,16
	srli	t3,t0,16
	bleu	a0,t3,.L1342
	slli	t1,t3,16
	srai	t2,t1,16
	blt	t2,zero,.L1342
	slli	a3,a1,14
	slli	a4,a3,16
	srli	t3,a4,16
	bleu	a0,t3,.L1344
	slli	a6,t3,16
	srai	a7,a6,16
	blt	a7,zero,.L1344
	slli	a1,a1,15
	slli	t5,a1,16
	srli	t6,t5,16
	bleu	a0,t6,.L1345
	li	t4,32768
	mv	t5,a0
	mv	t3,t4
	bne	t6,zero,.L1313
.L1314:
	czero.eqz	a7,t5,a2
	czero.nez	a2,t6,a2
	add	a0,a2,a7
	ret
.L1318:
	li	t4,2
.L1313:
	sub	t6,a0,t3
	sltu	t1,a0,t3
	slli	a5,t6,16
	xori	t2,t1,1
	srli	t0,a5,16
	czero.eqz	a4,t0,t2
	czero.nez	a0,a0,t2
	add	a3,a0,a4
	slli	a6,a3,16
	srli	t5,a6,16
	srli	a5,t3,1
	sub	a7,t5,a5
	sgtu	t2,a5,t5
	slli	t0,a7,16
	czero.nez	a1,t4,t1
	xori	a4,t2,1
	srli	t1,t0,16
	czero.eqz	a3,t1,a4
	czero.nez	a6,t5,a4
	srli	t6,t4,1
	add	t5,a6,a3
	czero.nez	a0,t6,t2
	srli	a7,t4,2
	slli	t6,t5,16
	srli	t5,t6,16
	or	t6,a1,a0
	srli	a1,t3,2
	beq	a7,zero,.L1314
	sub	a5,t5,a1
	sgtu	t2,a1,t5
	slli	t0,a5,16
	xori	a4,t2,1
	srli	t1,t0,16
	czero.nez	a6,t5,a4
	czero.eqz	a3,t1,a4
	add	a0,a6,a3
	czero.eqz	a1,a7,a4
	slli	t5,a0,16
	srli	a7,t4,3
	srli	t5,t5,16
	or	t6,t6,a1
	srli	a5,t3,3
	beq	a7,zero,.L1314
	sub	t0,t5,a5
	sltu	a4,t5,a5
	slli	t1,t0,16
	xori	a3,a4,1
	srli	t2,t1,16
	czero.nez	a0,t5,a3
	czero.eqz	a6,t2,a3
	add	a1,a0,a6
	czero.eqz	t0,a7,a3
	slli	t5,a1,16
	srli	a7,t4,4
	srli	t5,t5,16
	or	t6,t6,t0
	srli	a5,t3,4
	beq	a7,zero,.L1314
	sub	t1,t5,a5
	sltu	a3,t5,a5
	slli	t2,t1,16
	xori	a6,a3,1
	srli	a4,t2,16
	czero.nez	a1,t5,a6
	czero.eqz	a0,a4,a6
	add	t0,a1,a0
	czero.eqz	t1,a7,a6
	slli	t5,t0,16
	srli	a7,t4,5
	srli	t5,t5,16
	or	t6,t6,t1
	srli	a5,t3,5
	beq	a7,zero,.L1314
	sub	t2,t5,a5
	sltu	a3,t5,a5
	slli	a4,t2,16
	xori	a1,a3,1
	srli	a6,a4,16
	czero.nez	t0,t5,a1
	czero.eqz	a0,a6,a1
	add	t1,t0,a0
	czero.eqz	t2,a7,a1
	slli	t5,t1,16
	srli	a7,t4,6
	srli	t5,t5,16
	or	t6,t6,t2
	srli	a5,t3,6
	beq	a7,zero,.L1314
	sub	a4,t5,a5
	sltu	a3,t5,a5
	slli	a6,a4,16
	xori	t0,a3,1
	srli	a1,a6,16
	czero.nez	t1,t5,t0
	czero.eqz	a0,a1,t0
	add	t2,t1,a0
	czero.eqz	a4,a7,t0
	slli	t5,t2,16
	srli	a7,t4,7
	srli	t5,t5,16
	or	t6,t6,a4
	srli	a5,t3,7
	beq	a7,zero,.L1314
	sub	a6,t5,a5
	sltu	a3,t5,a5
	slli	a1,a6,16
	xori	t1,a3,1
	srli	t0,a1,16
	czero.nez	t2,t5,t1
	czero.eqz	a0,t0,t1
	add	a4,t2,a0
	czero.eqz	a6,a7,t1
	slli	t5,a4,16
	srli	a7,t4,8
	srli	t5,t5,16
	or	t6,t6,a6
	srli	a5,t3,8
	beq	a7,zero,.L1314
	sub	a1,t5,a5
	sltu	a3,t5,a5
	slli	t0,a1,16
	xori	t2,a3,1
	srli	t1,t0,16
	czero.nez	a4,t5,t2
	czero.eqz	a0,t1,t2
	add	a6,a4,a0
	czero.eqz	a1,a7,t2
	slli	t5,a6,16
	srli	a7,t4,9
	srli	t5,t5,16
	or	t6,t6,a1
	srli	a5,t3,9
	beq	a7,zero,.L1314
	sub	t0,t5,a5
	sltu	a3,t5,a5
	slli	t1,t0,16
	xori	a4,a3,1
	srli	t2,t1,16
	czero.nez	a6,t5,a4
	czero.eqz	a0,t2,a4
	add	a1,a6,a0
	czero.eqz	t0,a7,a4
	slli	t5,a1,16
	srli	a7,t4,10
	srli	t5,t5,16
	or	t6,t6,t0
	srli	a5,t3,10
	beq	a7,zero,.L1314
	sub	t1,t5,a5
	sltu	a3,t5,a5
	slli	t2,t1,16
	xori	a6,a3,1
	srli	a4,t2,16
	czero.nez	a1,t5,a6
	czero.eqz	a0,a4,a6
	add	t0,a1,a0
	czero.eqz	t1,a7,a6
	slli	t5,t0,16
	srli	a7,t4,11
	srli	t5,t5,16
	or	t6,t6,t1
	srli	a5,t3,11
	beq	a7,zero,.L1314
	sub	t2,t5,a5
	sltu	a3,t5,a5
	slli	a4,t2,16
	xori	a1,a3,1
	srli	a6,a4,16
	czero.nez	t0,t5,a1
	czero.eqz	a0,a6,a1
	add	t1,t0,a0
	czero.eqz	t2,a7,a1
	slli	t5,t1,16
	srli	a7,t4,12
	srli	t5,t5,16
	or	t6,t6,t2
	srli	a5,t3,12
	beq	a7,zero,.L1314
	sub	a4,t5,a5
	sltu	a3,t5,a5
	slli	a6,a4,16
	xori	t0,a3,1
	srli	a1,a6,16
	czero.nez	t1,t5,t0
	czero.eqz	a0,a1,t0
	add	t2,t1,a0
	czero.eqz	a4,a7,t0
	slli	t5,t2,16
	srli	a7,t4,13
	srli	t5,t5,16
	or	t6,t6,a4
	srli	a5,t3,13
	beq	a7,zero,.L1314
	sub	a6,t5,a5
	sltu	a3,t5,a5
	slli	a1,a6,16
	xori	t1,a3,1
	srli	t0,a1,16
	czero.nez	t2,t5,t1
	czero.eqz	a0,t0,t1
	add	a4,t2,a0
	czero.eqz	a6,a7,t1
	slli	t5,a4,16
	srli	a7,t4,14
	srli	t5,t5,16
	or	t6,t6,a6
	srli	a5,t3,14
	beq	a7,zero,.L1314
	sub	a1,t5,a5
	slli	t0,a1,16
	sltu	a3,t5,a5
	xori	t2,a3,1
	srli	t1,t0,16
	czero.nez	a4,t5,t2
	czero.eqz	a0,t1,t2
	add	a6,a4,a0
	czero.eqz	a7,a7,t2
	slli	t5,a6,16
	li	a1,16384
	srli	t3,t3,15
	srli	t5,t5,16
	or	t6,t6,a7
	beq	t4,a1,.L1314
	sub	t4,t5,t3
	sltu	t1,t5,t3
	slli	a5,t4,16
	xori	t2,t1,1
	srli	t0,a5,16
	czero.nez	a0,t5,t2
	czero.eqz	a3,t0,t2
	add	a4,a0,a3
	slli	a6,a4,16
	srli	t5,a6,16
	or	t6,t2,t6
	czero.eqz	a7,t5,a2
	czero.nez	a2,t6,a2
	add	a0,a2,a7
	ret
.L1320:
	li	t4,4
	j	.L1313
.L1322:
	li	t4,8
	j	.L1313
.L1324:
	li	t4,16
	j	.L1313
.L1334:
	li	t4,512
	j	.L1313
.L1326:
	li	t4,32
	j	.L1313
.L1328:
	li	t4,64
	j	.L1313
.L1330:
	li	t4,128
	j	.L1313
.L1332:
	li	t4,256
	j	.L1313
.L1391:
	sub	a5,a0,a1
	slli	t0,a5,16
	sub	a1,a1,a0
	srli	t1,t0,16
	czero.eqz	a0,a0,a1
	czero.nez	t2,t1,a1
	add	a3,a0,t2
	slli	a4,a3,16
	srli	t5,a4,16
	seqz	t6,a1
	j	.L1314
.L1336:
	li	t4,1024
	j	.L1313
.L1338:
	li	a1,4096
	addi	t4,a1,-2048
	j	.L1313
.L1340:
	li	t4,4096
	j	.L1313
.L1342:
	li	t4,8192
	j	.L1313
.L1344:
	li	t4,16384
	j	.L1313
.L1345:
	li	t3,32768
	mv	t4,t3
	j	.L1313
.L1311:
	sub	t3,a0,a1
	slli	t4,t3,16
	srli	t5,t4,16
	li	t6,1
	j	.L1314
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
	bgtu	a0,a1,.L1393
	j	.L1413
.L1397:
	slli	a1,a1,1
	slli	a4,a4,1
	bleu	a0,a1,.L1395
	beq	a3,zero,.L1396
.L1393:
	addi	a3,a3,-1
	bge	a1,zero,.L1397
.L1398:
	li	a3,0
.L1399:
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
	bne	a4,zero,.L1399
.L1396:
	czero.nez	t5,a3,a2
	czero.eqz	a2,a0,a2
	add	a0,a2,t5
	ret
.L1395:
	bne	a4,zero,.L1398
	li	a3,0
	j	.L1396
.L1413:
	sub	a5,a0,a1
	sltu	a1,a0,a1
	czero.nez	t0,a5,a1
	czero.eqz	a0,a0,a1
	add	a0,a0,t0
	xori	a3,a1,1
	j	.L1396
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
	beq	a5,zero,.L1416
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1416:
	beq	a2,zero,.L1420
	li	t0,32
	sub	t1,t0,a2
	srl	t2,a0,t1
	sll	a1,a1,a2
	or	a1,t2,a1
	sll	a0,a0,a2
.L1420:
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
	beq	a5,zero,.L1422
	addi	a2,a2,-32
	sra	a0,a1,a2
	srai	a1,a1,31
	ret
.L1422:
	beq	a2,zero,.L1426
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	sra	a1,a1,a2
.L1426:
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
	.align	1
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
	blt	a1,a3,.L1432
	li	a0,2
	bgt	a1,a3,.L1436
	li	a0,0
	bltu	a5,a2,.L1436
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1432:
	li	a0,0
.L1436:
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
	blt	a1,a3,.L1439
	li	a0,1
	bgt	a1,a3,.L1442
	li	a0,-1
	bltu	a5,a2,.L1442
	sgtu	a0,a5,a2
	ret
.L1439:
	li	a0,-1
.L1442:
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
	add	t2,a7,t2
	not	a2,a5
	srli	a7,a5,1
	li	a6,2
	andi	a0,a2,1
	add	a4,t4,t2
	sub	a6,a6,a7
	add	a3,t0,a4
	czero.eqz	t3,a6,a0
	add	a0,t3,a3
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
	beq	a5,zero,.L1445
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a1,0
	ret
.L1445:
	beq	a2,zero,.L1449
	li	t0,32
	sub	t1,t0,a2
	sll	t2,a1,t1
	srl	a0,a0,a2
	or	a0,t2,a0
	srl	a1,a1,a2
.L1449:
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
	.align	1
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
	addi	a6,a0,-1642
	andi	a3,a2,15
	sra	a7,a6,a3
	andi	a0,a7,1
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
	sra	a6,a4,a3
	andi	a0,a6,1
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
	beq	t1,zero,.L1463
	mv	t3,a0
.L1460:
	fmul.d	fa0,fa0,fa5
.L1458:
	srli	a4,t3,31
	add	a1,a4,t3
	srai	t3,a1,1
	beq	t3,zero,.L1459
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1460
.L1466:
	srai	t3,a7,1
	srli	a6,t3,31
	andi	a3,t3,1
	fmul.d	fa5,fa5,fa5
	add	a7,a6,t3
	bne	a3,zero,.L1460
	j	.L1466
.L1459:
	bge	a0,zero,.L1464
	fld	ft0,0(t2)
	fdiv.d	fa0,ft0,fa0
.L1464:
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.L1463:
	.cfi_restore_state
	mv	t3,a0
	j	.L1458
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
	beq	a5,zero,.L1473
	mv	a1,a0
.L1470:
	fmul.s	fa0,fa0,fa5
.L1468:
	srli	a4,a1,31
	add	t0,a4,a1
	srai	a1,t0,1
	beq	a1,zero,.L1469
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1470
.L1475:
	srai	a1,t2,1
	srli	t1,a1,31
	andi	a3,a1,1
	fmul.s	fa5,fa5,fa5
	add	t2,t1,a1
	bne	a3,zero,.L1470
	j	.L1475
.L1469:
	blt	a0,zero,.L1476
	ret
.L1473:
	mv	a1,a0
	j	.L1468
.L1476:
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
	bltu	a1,a3,.L1479
	li	a0,2
	bgtu	a1,a3,.L1483
	li	a0,0
	bltu	a5,a2,.L1483
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1479:
	li	a0,0
.L1483:
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
	bltu	a1,a3,.L1486
	li	a0,1
	bgtu	a1,a3,.L1489
	li	a0,-1
	bltu	a5,a2,.L1489
	sgtu	a0,a5,a2
	ret
.L1486:
	li	a0,-1
.L1489:
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
