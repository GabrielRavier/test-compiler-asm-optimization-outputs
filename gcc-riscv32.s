	.file	"mini-libc.c"
	.option nopic
	.attribute arch, "rv32e2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 4
	.text
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	bleu	a0,a1,.L2
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L3
.L4:
	lbu	a4,-1(a1)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a5)
	bne	a0,a5,.L4
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
	or	a5,a1,a0
	andi	a5,a5,3
	addi	a4,a1,1
	bne	a5,zero,.L5
	sub	a5,a0,a4
	sltiu	a5,a5,3
	bne	a5,zero,.L5
	andi	t1,a2,-4
	add	a3,a1,t1
	mv	a5,a0
.L6:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a3,a1,.L6
	add	a5,a0,t1
	sub	a4,a2,t1
	beq	a2,t1,.L3
	lbu	a1,0(a3)
	li	a2,1
	sb	a1,0(a5)
	beq	a4,a2,.L3
	lbu	a1,1(a3)
	li	a2,2
	sb	a1,1(a5)
	beq	a4,a2,.L3
	lbu	a4,2(a3)
	sb	a4,2(a5)
	ret
.L30:
	addi	a4,a1,1
.L5:
	add	a2,a0,a2
	mv	a5,a0
.L9:
	lbu	a3,-1(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a5)
	bne	a5,a2,.L9
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
.L41:
	beq	a3,zero,.L42
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	addi	a0,a0,1
	bne	a5,a2,.L41
	ret
.L42:
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
	bne	a2,zero,.L44
	j	.L47
.L46:
	addi	a0,a0,1
	beq	a2,zero,.L47
.L44:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L46
	ret
.L47:
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
	beq	a2,zero,.L54
.L60:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	bne	a5,a4,.L59
	addi	a1,a1,1
	bne	a2,zero,.L60
.L54:
	li	a0,0
	ret
.L59:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,0(sp)
	sw	ra,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L62
	call	memcpy
.L62:
	lw	ra,4(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	add	a2,a0,a2
	addi	a4,a0,-1
	andi	a1,a1,0xff
	j	.L68
.L70:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L67
.L68:
	mv	a0,a2
	bne	a2,a4,.L70
	li	a0,0
.L67:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,0(sp)
	sw	ra,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L74
	andi	a1,a1,0xff
	call	memset
.L74:
	lw	ra,4(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	beq	a5,zero,.L77
.L78:
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L78
.L77:
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
	beq	a5,zero,.L90
.L84:
	beq	a5,a1,.L83
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L84
.L83:
	ret
.L90:
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
.L93:
	lbu	a5,0(a0)
	beq	a5,a1,.L92
	addi	a0,a0,1
	bne	a5,zero,.L93
	li	a0,0
.L92:
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
.L98:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L97
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L98
.L97:
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
	beq	a5,zero,.L104
	mv	a5,a0
.L103:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L103
	sub	a0,a5,a0
	ret
.L104:
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
	beq	a2,zero,.L114
	lbu	a5,0(a0)
	addi	a2,a2,-1
	add	a3,a0,a2
	bne	a5,zero,.L110
	j	.L117
.L119:
	beq	a0,a3,.L109
	addi	a0,a0,1
	bne	a4,a5,.L109
	lbu	a5,0(a0)
	beq	a5,zero,.L118
	mv	a1,a2
.L110:
	lbu	a4,0(a1)
	addi	a2,a1,1
	bne	a4,zero,.L119
.L109:
	sub	a0,a5,a4
	ret
.L114:
	li	a0,0
	ret
.L118:
	lbu	a4,1(a1)
	sub	a0,a5,a4
	ret
.L117:
	lbu	a4,0(a1)
	j	.L109
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
	ble	a2,a5,.L120
	andi	a2,a2,-2
	add	a3,a0,a2
.L122:
	lbu	a4,1(a0)
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L122
.L120:
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
	addi	a0,a0,-97
	sltiu	a0,a0,26
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
	beq	a0,a5,.L128
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L128:
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
	bleu	a0,a5,.L131
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L131:
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
	beq	a0,a5,.L138
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L138:
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
	bleu	a0,a4,.L142
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L145
.L140:
	ret
.L142:
	li	a0,1
	ret
.L145:
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L140
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
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
	bleu	a0,a4,.L154
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L147
	li	a4,-8192
	addi	a4,a4,-42
	li	a3,45056
	add	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L147
	li	a3,-57344
	li	a4,8192
	add	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L147
	li	a4,-65536
	addi	a4,a4,4
	li	a3,1048576
	add	a4,a5,a4
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
.L154:
	addi	a0,a0,1
	andi	a0,a0,127
	sltiu	a0,a0,33
	seqz	a0,a0
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
	bleu	a4,a5,.L157
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L157:
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
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	s0,36(sp)
	sw	s1,32(sp)
	sw	ra,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	sw	a0,8(sp)
	sw	a1,12(sp)
	mv	s1,a2
	mv	s0,a3
	call	__gtdf2
	ble	a0,zero,.L164
	lw	a5,8(sp)
	sw	s1,16(sp)
	sw	s0,20(sp)
	sw	a5,24(sp)
	lw	a5,12(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__subdf3
.L159:
	lw	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	sw	a0,0(sp)
	sw	a1,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
.L164:
	.cfi_restore_state
	li	a0,0
	li	a1,0
	j	.L159
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	s0,4(sp)
	sw	s1,0(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a0
	mv	s1,a1
	call	__gtsf2
	ble	a0,zero,.L171
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L171:
	.cfi_restore_state
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	mv	a0,zero
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	li	a3,0
	li	a2,0
	sw	ra,56(sp)
	.cfi_offset 1, -4
	sw	t1,16(sp)
	sw	t2,20(sp)
	sw	a1,12(sp)
	sw	a0,8(sp)
	call	__ltdf2
	mv	a5,a0
	srli	a5,a5,31
	mv	a0,s1
	mv	a1,s0
	li	a2,0
	li	a3,0
	sb	a5,16(sp)
	call	__ltdf2
	lbu	a5,16(sp)
	srli	a0,a0,31
	andi	a5,a5,0xff
	beq	a5,a0,.L174
	lw	a5,8(sp)
	li	a2,0
	li	a3,0
	sw	a5,24(sp)
	lw	a5,12(sp)
	lw	a0,24(sp)
	sw	a5,28(sp)
	lw	a1,28(sp)
	call	__ltdf2
	mv	a4,s1
	mv	a5,s0
	blt	a0,zero,.L173
	lw	a4,8(sp)
	lw	a5,12(sp)
.L173:
	lw	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	sw	a4,0(sp)
	sw	a5,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
.L174:
	.cfi_restore_state
	lw	a4,8(sp)
	lw	a5,12(sp)
	sw	s1,32(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	sw	s0,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	sw	a4,16(sp)
	sw	a5,8(sp)
	call	__gedf2
	lw	a5,8(sp)
	lw	a4,16(sp)
	bge	a0,zero,.L173
	mv	a4,s1
	mv	a5,s0
	j	.L173
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	s0,12(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	mv	a1,zero
	sw	ra,16(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	sw	a0,4(sp)
	call	__ltsf2
	mv	s1,a0
	srli	a4,s1,31
	mv	a0,s0
	mv	a1,zero
	sb	a4,0(sp)
	call	__ltsf2
	lbu	a4,0(sp)
	srli	a0,a0,31
	andi	a4,a4,0xff
	beq	a4,a0,.L185
	mv	a4,s0
	blt	s1,zero,.L184
	lw	a4,4(sp)
.L184:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	mv	a0,a4
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L185:
	.cfi_restore_state
	lw	a4,4(sp)
	mv	a1,s0
	mv	a0,a4
	sw	a4,0(sp)
	call	__gesf2
	lw	a4,0(sp)
	bge	a0,zero,.L184
	lw	ra,16(sp)
	.cfi_restore 1
	mv	a4,s0
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	mv	a0,a4
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	lw	t0,0(a1)
	lw	t1,4(a1)
	lw	a3,8(a1)
	sw	s1,64(sp)
	.cfi_offset 9, -12
	lw	s1,12(a1)
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	sw	zero,40(sp)
	sw	zero,44(sp)
	sw	a3,56(sp)
	sw	s1,60(sp)
	lw	a5,0(a2)
	lw	a4,4(a2)
	sw	a3,20(sp)
	lw	a3,8(a2)
	lw	a2,12(a2)
	sw	s0,68(sp)
	addi	a1,sp,32
	.cfi_offset 8, -8
	mv	s0,a0
	addi	a0,sp,48
	sw	t0,28(sp)
	sw	t1,24(sp)
	sw	ra,72(sp)
	.cfi_offset 1, -4
	sw	a5,0(sp)
	sw	a4,4(sp)
	sw	a3,8(sp)
	sw	a2,12(sp)
	call	__lttf2
	lw	a1,12(sp)
	lw	a3,8(sp)
	lw	a5,0(sp)
	lw	a4,4(sp)
	mv	a2,a0
	srli	a2,a2,31
	sw	a1,60(sp)
	addi	a0,sp,48
	addi	a1,sp,32
	sw	a3,56(sp)
	sb	a2,16(sp)
	sw	a5,48(sp)
	sw	a4,52(sp)
	call	__lttf2
	lw	a3,20(sp)
	lw	t1,24(sp)
	lbu	a2,16(sp)
	lw	t0,28(sp)
	srli	a0,a0,31
	andi	a2,a2,0xff
	sw	t0,48(sp)
	sw	t0,24(sp)
	sw	t1,52(sp)
	sw	t1,20(sp)
	sw	a3,56(sp)
	sw	a3,16(sp)
	sw	s1,60(sp)
	beq	a2,a0,.L196
	addi	a1,sp,32
	addi	a0,sp,48
	call	__lttf2
	lw	a3,16(sp)
	lw	t1,20(sp)
	lw	t0,24(sp)
	blt	a0,zero,.L205
.L201:
	sw	s1,12(s0)
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	sw	t0,0(s0)
	sw	t1,4(s0)
	sw	a3,8(s0)
	mv	a0,s0
	lw	s0,68(sp)
	.cfi_restore 8
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L196:
	.cfi_restore_state
	lw	a3,8(sp)
	lw	a5,0(sp)
	lw	a4,4(sp)
	lw	a2,12(sp)
	addi	a1,sp,32
	addi	a0,sp,48
	sw	a3,40(sp)
	sw	a5,32(sp)
	sw	a4,36(sp)
	sw	a2,44(sp)
	call	__getf2
	lw	a3,16(sp)
	lw	t1,20(sp)
	lw	t0,24(sp)
	bge	a0,zero,.L201
.L205:
	lw	t0,0(sp)
	lw	t1,4(sp)
	lw	a3,8(sp)
	lw	s1,12(sp)
	j	.L201
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-60
	.cfi_def_cfa_offset 60
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	li	a3,0
	li	a2,0
	sw	ra,56(sp)
	.cfi_offset 1, -4
	sw	t1,16(sp)
	sw	t2,20(sp)
	sw	a1,12(sp)
	sw	a0,8(sp)
	call	__ltdf2
	mv	a5,a0
	srli	a5,a5,31
	mv	a0,s1
	mv	a1,s0
	li	a2,0
	li	a3,0
	sb	a5,16(sp)
	call	__ltdf2
	lbu	a5,16(sp)
	srli	a0,a0,31
	andi	a5,a5,0xff
	beq	a5,a0,.L207
	lw	a5,8(sp)
	lw	a3,12(sp)
	li	a2,0
	sw	a5,24(sp)
	sw	a3,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a3,0
	call	__ltdf2
	lw	a4,8(sp)
	lw	a5,12(sp)
	blt	a0,zero,.L206
.L215:
	mv	a4,s1
	mv	a5,s0
.L206:
	lw	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	sw	a4,0(sp)
	sw	a5,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
.L207:
	.cfi_restore_state
	lw	a4,8(sp)
	lw	a5,12(sp)
	sw	s1,32(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	sw	s0,36(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	sw	a4,16(sp)
	sw	a5,8(sp)
	call	__ledf2
	lw	a5,8(sp)
	lw	a4,16(sp)
	bgt	a0,zero,.L215
	j	.L206
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	s1,8(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	mv	a1,zero
	sw	ra,16(sp)
	sw	s0,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	call	__ltsf2
	mv	a5,a0
	srli	a4,a5,31
	mv	a0,s1
	mv	a1,zero
	sb	a4,3(sp)
	sw	a5,4(sp)
	call	__ltsf2
	lbu	a4,3(sp)
	srli	a0,a0,31
	andi	a4,a4,0xff
	beq	a4,a0,.L218
	lw	a5,4(sp)
	blt	a5,zero,.L217
.L226:
	mv	s0,s1
.L217:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L218:
	.cfi_restore_state
	mv	a0,s0
	mv	a1,s1
	call	__lesf2
	bgt	a0,zero,.L226
	lw	ra,16(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	lw	a4,0(a1)
	lw	a3,4(a1)
	lw	t1,8(a1)
	lw	a1,12(a1)
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	t1,56(sp)
	sw	a1,60(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	sw	zero,40(sp)
	sw	zero,44(sp)
	mv	a5,a0
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,4(a2)
	lw	s1,0(a2)
	sw	a5,28(sp)
	lw	a5,8(a2)
	lw	a2,12(a2)
	sw	a1,20(sp)
	addi	a0,sp,48
	addi	a1,sp,32
	sw	ra,72(sp)
	.cfi_offset 1, -4
	sw	a4,8(sp)
	sw	a3,12(sp)
	sw	t1,16(sp)
	sw	a5,0(sp)
	sw	a2,4(sp)
	call	__lttf2
	lw	a5,0(sp)
	lw	a2,4(sp)
	mv	a4,a0
	srli	a4,a4,31
	addi	a1,sp,32
	addi	a0,sp,48
	sw	a5,56(sp)
	sb	a4,24(sp)
	sw	s1,48(sp)
	sw	s0,52(sp)
	sw	a2,60(sp)
	call	__lttf2
	lbu	a4,24(sp)
	lw	a5,28(sp)
	srli	a0,a0,31
	andi	a4,a4,0xff
	sw	a5,24(sp)
	beq	a4,a0,.L230
	lw	a1,20(sp)
	lw	a4,8(sp)
	lw	a3,12(sp)
	lw	t1,16(sp)
	sw	a1,60(sp)
	addi	a0,sp,48
	addi	a1,sp,32
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	t1,56(sp)
	call	__lttf2
	lw	a5,24(sp)
	blt	a0,zero,.L239
.L235:
	lw	a4,0(sp)
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	sw	s0,4(a5)
	sw	a4,8(a5)
	lw	a4,4(sp)
	lw	s0,68(sp)
	.cfi_restore 8
	sw	s1,0(a5)
	sw	a4,12(a5)
	lw	s1,64(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L230:
	.cfi_restore_state
	lw	a5,0(sp)
	lw	a4,12(sp)
	lw	a3,16(sp)
	sw	a5,56(sp)
	lw	a5,4(sp)
	lw	a2,20(sp)
	addi	a1,sp,32
	sw	a5,60(sp)
	lw	a5,8(sp)
	addi	a0,sp,48
	sw	s1,48(sp)
	sw	a5,32(sp)
	sw	s0,52(sp)
	sw	a4,36(sp)
	sw	a3,40(sp)
	sw	a2,44(sp)
	call	__letf2
	lw	a5,24(sp)
	ble	a0,zero,.L235
	lw	a3,16(sp)
	lw	a2,20(sp)
	lw	s1,8(sp)
	lw	s0,12(sp)
	sw	a3,0(sp)
	sw	a2,4(sp)
	j	.L235
.L239:
	lw	t1,16(sp)
	lw	a1,20(sp)
	lw	s1,8(sp)
	lw	s0,12(sp)
	sw	t1,0(sp)
	sw	a1,4(sp)
	j	.L235
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
	beq	a0,zero,.L243
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	a3,a3,%lo(.LANCHOR0)
.L242:
	andi	a5,a0,63
	add	a5,a3,a5
	lbu	a5,0(a5)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	a5,-1(a4)
	bne	a0,zero,.L242
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L243:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,0(sp)
	lui	a5,%hi(.LC0)
	.cfi_offset 8, -8
	lui	s0,%hi(seed)
	lw	a0,%lo(seed)(s0)
	lw	a1,%lo(seed+4)(s0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	sw	ra,4(sp)
	.cfi_offset 1, -4
	call	__muldi3
	addi	a5,a0,1
	sltu	a0,a5,a0
	add	a0,a0,a1
	sw	a0,%lo(seed+4)(s0)
	lw	ra,4(sp)
	.cfi_restore 1
	sw	a5,%lo(seed)(s0)
	lw	s0,0(sp)
	.cfi_restore 8
	srli	a0,a0,1
	addi	sp,sp,8
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
	beq	a1,zero,.L254
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L248
	sw	a0,4(a5)
.L248:
	ret
.L254:
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
	beq	a5,zero,.L256
	lw	a4,4(a0)
	sw	a4,4(a5)
.L256:
	lw	a4,4(a0)
	beq	a4,zero,.L255
	sw	a5,0(a4)
.L255:
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
	lw	a5,0(a2)
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	sw	a2,24(sp)
	sw	a5,8(sp)
	sw	a0,4(sp)
	sw	a1,20(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	beq	a5,zero,.L265
	sw	s1,28(sp)
	.cfi_offset 9, -12
	li	s0,0
	mv	s1,a1
	j	.L267
.L282:
	lw	a5,12(sp)
	add	s1,s1,a5
	lw	a5,8(sp)
	beq	a5,s0,.L281
.L267:
	lw	a0,4(sp)
	lw	a5,16(sp)
	mv	a1,s1
	sw	s1,0(sp)
	jalr	a5
	addi	s0,s0,1
	bne	a0,zero,.L282
	lw	s1,28(sp)
	.cfi_restore 9
.L264:
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	a0,0(sp)
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L281:
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
.L265:
	lw	a1,8(sp)
	lw	a4,24(sp)
	lw	s0,12(sp)
	addi	a5,a1,1
	sw	a5,0(a4)
	mv	a0,s0
	call	__mulsi3
	lw	a4,20(sp)
	add	a4,a4,a0
	sw	a4,0(sp)
	beq	s0,zero,.L264
	lw	a1,4(sp)
	mv	a2,s0
	mv	a0,a4
	call	memmove
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	a0,0(sp)
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	lw	a5,0(a2)
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	a5,12(sp)
	sw	a0,4(sp)
	sw	a3,16(sp)
	sw	a4,8(sp)
	.cfi_offset 1, -4
	beq	a5,zero,.L284
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	li	s0,0
	mv	s1,a1
	j	.L286
.L297:
	lw	a5,16(sp)
	add	s1,s1,a5
	lw	a5,12(sp)
	beq	a5,s0,.L296
.L286:
	lw	a0,4(sp)
	lw	a5,8(sp)
	mv	a1,s1
	sw	s1,0(sp)
	jalr	a5
	addi	s0,s0,1
	bne	a0,zero,.L297
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,0(sp)
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L296:
	.cfi_restore_state
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L284:
	lw	ra,28(sp)
	.cfi_restore 1
	sw	zero,0(sp)
	lw	a0,0(sp)
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
	li	a4,32
	li	a3,4
.L306:
	lbu	a2,0(a0)
	addi	a5,a2,-9
	beq	a2,a4,.L300
	bleu	a5,a3,.L300
	li	a5,43
	beq	a2,a5,.L301
	li	a5,45
	bne	a2,a5,.L316
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	bgtu	a3,a5,.L311
	li	t0,1
.L304:
	li	a0,0
	li	a1,9
.L308:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	t1,a3
	addi	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L308
	bne	t0,zero,.L299
	sub	a0,t1,a5
	ret
.L300:
	addi	a0,a0,1
	j	.L306
.L316:
	addi	a3,a2,-48
	li	a5,9
	mv	a4,a0
	li	t0,0
	bleu	a3,a5,.L304
.L311:
	li	a0,0
.L299:
	ret
.L301:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	li	t0,0
	bleu	a3,a5,.L304
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
	li	a4,32
	li	a3,4
.L322:
	lbu	a2,0(a0)
	addi	a5,a2,-9
	beq	a2,a4,.L318
	bleu	a5,a3,.L318
	li	a5,43
	beq	a2,a5,.L319
	li	a5,45
	bne	a2,a5,.L334
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	li	t0,1
	bgtu	a3,a5,.L329
.L323:
	li	a0,0
	li	a1,9
.L326:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	t1,a3
	addi	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L326
	bne	t0,zero,.L317
	sub	a0,t1,a5
	ret
.L318:
	addi	a0,a0,1
	j	.L322
.L334:
	addi	a3,a2,-48
	li	a5,9
	mv	a4,a0
	li	t0,0
	bleu	a3,a5,.L323
.L329:
	li	a0,0
.L317:
	ret
.L319:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	bgtu	a3,a5,.L329
	li	t0,0
	j	.L323
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	li	a4,32
	li	a3,4
.L342:
	lbu	t1,0(a0)
	addi	a5,t1,-9
	beq	t1,a4,.L336
	bleu	a5,a3,.L336
	li	a5,43
	beq	t1,a5,.L337
	li	a5,45
	bne	t1,a5,.L356
	lbu	t1,1(a0)
	li	a5,9
	addi	a2,a0,1
	addi	a3,t1,-48
	bgtu	a3,a5,.L347
	li	a5,1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	a5,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
.L340:
	li	a0,0
	li	a1,0
	li	s1,9
.L344:
	srli	t1,a0,30
	slli	a4,a1,2
	slli	a5,a0,2
	add	a0,a5,a0
	or	a4,t1,a4
	add	a4,a4,a1
	sltu	a5,a0,a5
	add	a5,a5,a4
	lbu	t1,1(a2)
	srli	a4,a0,31
	slli	t0,a0,1
	slli	a5,a5,1
	or	a5,a4,a5
	srai	t2,a3,31
	sub	a0,t0,a3
	sub	a1,a5,t2
	mv	s0,a3
	sgtu	a4,a0,t0
	addi	a3,t1,-48
	addi	a2,a2,1
	sub	a1,a1,a4
	bleu	a3,s1,.L344
	lw	a4,0(sp)
	bne	a4,zero,.L355
	sub	t0,s0,t0
	sgtu	s0,t0,s0
	sub	t2,t2,a5
	sub	a1,t2,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,t0
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L336:
	.cfi_def_cfa_offset 12
	addi	a0,a0,1
	j	.L342
.L356:
	addi	a3,t1,-48
	li	a5,9
	sw	zero,0(sp)
	mv	a2,a0
	bgtu	a3,a5,.L347
.L354:
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	j	.L340
.L355:
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L337:
	.cfi_def_cfa_offset 12
	lbu	t1,1(a0)
	li	a5,9
	sw	zero,0(sp)
	addi	a3,t1,-48
	addi	a2,a0,1
	bleu	a3,a5,.L354
.L347:
	li	a0,0
	li	a1,0
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
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
	sw	s0,24(sp)
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	beq	a2,zero,.L358
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
.L361:
	lw	a1,8(sp)
	srli	a5,s1,1
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a5,4(sp)
	add	s0,a5,a0
	lw	a5,16(sp)
	lw	a0,12(sp)
	mv	a1,s0
	jalr	a5
	lw	a5,0(sp)
	addi	a2,s1,-1
	blt	a0,zero,.L362
	beq	a0,zero,.L371
	lw	a4,8(sp)
	sub	s1,a2,a5
	add	a4,s0,a4
	sw	a4,4(sp)
	bne	s1,zero,.L361
.L372:
	lw	s1,20(sp)
	.cfi_restore 9
.L358:
	li	s0,0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L362:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a5
	bne	s1,zero,.L361
	j	.L372
.L371:
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
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
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	s1,24(sp)
	sw	ra,32(sp)
	sw	s0,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	mv	s1,a2
	beq	a2,zero,.L378
.L374:
	lw	a1,8(sp)
	srai	a5,s1,1
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a4,4(sp)
	lw	a2,20(sp)
	lw	a5,16(sp)
	add	s0,a4,a0
	lw	a0,12(sp)
	mv	a1,s0
	jalr	a5
	addi	t1,s1,-1
	srai	s1,t1,1
	beq	a0,zero,.L373
	lw	a5,0(sp)
	ble	a0,zero,.L376
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	bne	s1,zero,.L374
.L378:
	li	s0,0
.L373:
	lw	ra,32(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L376:
	.cfi_restore_state
	beq	a5,zero,.L378
	mv	s1,a5
	j	.L374
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	call	__divsi3
	mv	a5,a0
	mv	a1,s0
	mv	a0,s1
	mv	s0,a5
	call	__modsi3
	lw	ra,16(sp)
	.cfi_restore 1
	mv	a1,a0
	mv	a0,s0
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
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
	sub	a1,a1,a4
	sgtu	a5,a0,a5
	sub	a1,a1,a5
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	s1,12(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	sw	s0,16(sp)
	mv	a2,a3
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a3,a4
	sw	a1,0(sp)
	mv	a0,a1
	mv	a1,s1
	sw	ra,20(sp)
	.cfi_offset 1, -4
	sw	a2,8(sp)
	sw	a4,4(sp)
	call	__divdi3
	lw	a5,0(sp)
	lw	a2,8(sp)
	lw	a3,4(sp)
	sw	a0,0(s0)
	sw	a1,4(s0)
	mv	a0,a5
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	lw	ra,20(sp)
	.cfi_restore 1
	sw	a1,12(s0)
	mv	a0,s0
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	call	__divsi3
	mv	a5,a0
	mv	a1,s0
	mv	a0,s1
	mv	s0,a5
	call	__modsi3
	lw	ra,16(sp)
	.cfi_restore 1
	mv	a1,a0
	mv	a0,s0
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
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
	sub	a1,a1,a4
	sgtu	a5,a0,a5
	sub	a1,a1,a5
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	s1,12(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	sw	s0,16(sp)
	mv	a2,a3
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a3,a4
	sw	a1,0(sp)
	mv	a0,a1
	mv	a1,s1
	sw	ra,20(sp)
	.cfi_offset 1, -4
	sw	a2,8(sp)
	sw	a4,4(sp)
	call	__divdi3
	lw	a5,0(sp)
	lw	a2,8(sp)
	lw	a3,4(sp)
	sw	a0,0(s0)
	sw	a1,4(s0)
	mv	a0,a5
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	lw	ra,20(sp)
	.cfi_restore 1
	sw	a1,12(s0)
	mv	a0,s0
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	j	.L405
.L407:
	beq	a1,a5,.L406
	addi	a0,a0,4
.L405:
	lw	a5,0(a0)
	bne	a5,zero,.L407
	li	a0,0
	ret
.L406:
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
.L411:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L410
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L411
.L410:
	li	a0,-1
	blt	a5,a4,.L408
	sgt	a0,a5,a4
.L408:
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
.L416:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L416
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
	beq	a5,zero,.L421
	mv	a5,a0
.L420:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L420
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L421:
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
	beq	a2,zero,.L429
.L433:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L426
	beq	a5,zero,.L426
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L433
.L429:
	li	a0,0
	ret
.L426:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L434
	ret
.L434:
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
	beq	a2,zero,.L439
.L444:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L443
	addi	a0,a0,4
	bne	a2,zero,.L444
.L439:
	li	a0,0
	ret
.L443:
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
	beq	a2,zero,.L451
.L457:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L456
	addi	a1,a1,4
	bne	a2,zero,.L457
.L451:
	li	a0,0
	ret
.L456:
	sgt	a0,a4,a5
	blt	a4,a5,.L458
	ret
.L458:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,0(sp)
	sw	ra,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	beq	a2,zero,.L460
	slli	a2,a2,2
	call	memcpy
.L460:
	lw	ra,4(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
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
	beq	a0,a1,.L473
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L479
	beq	a2,zero,.L473
	slli	a5,a5,2
	li	a2,-4
.L470:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L470
	ret
.L479:
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L480
.L468:
	lw	a3,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	a3,0(a4)
	addi	a4,a4,4
	bne	a5,t1,.L468
.L473:
	ret
.L480:
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
	beq	a2,zero,.L482
	mv	a4,a0
	li	a3,-1
.L483:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L483
.L482:
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
	bgeu	a0,a1,.L489
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L488
.L491:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L491
	ret
.L489:
	bne	a0,a1,.L517
.L488:
	ret
.L517:
	beq	a2,zero,.L488
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L515
	or	a5,a1,a0
	andi	a5,a5,3
	bne	a5,zero,.L515
	addi	a5,a0,1
	sub	a4,a1,a5
	sltiu	a4,a4,3
	bne	a4,zero,.L492
	andi	t1,a2,-4
	add	a3,a0,t1
	mv	a5,a1
.L493:
	lw	a4,0(a0)
	addi	a0,a0,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a3,a0,.L493
	add	a1,a1,t1
	sub	a5,a2,t1
	beq	a2,t1,.L488
	lbu	a2,0(a3)
	li	a4,1
	sb	a2,0(a1)
	beq	a5,a4,.L488
	lbu	a2,1(a3)
	li	a4,2
	sb	a2,1(a1)
	beq	a5,a4,.L488
	lbu	a5,2(a3)
	sb	a5,2(a1)
	ret
.L515:
	addi	a5,a0,1
.L492:
	add	a2,a0,a2
	j	.L496
.L518:
	addi	a5,a5,1
.L496:
	lbu	a4,-1(a5)
	addi	a1,a1,1
	sb	a4,-1(a1)
	bne	a5,a2,.L518
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
	addi	a4,a2,-32
	blt	a4,zero,.L520
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	sll	a4,a0,a4
	li	a3,0
	blt	a5,zero,.L522
.L524:
	srl	a0,a1,a5
	li	a1,0
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L520:
	li	a4,31
	sub	a4,a4,a2
	srli	a5,a0,1
	srl	a5,a5,a4
	sll	a3,a0,a2
	sll	a4,a1,a2
	neg	a2,a2
	andi	a2,a2,63
	or	a4,a5,a4
	addi	a5,a2,-32
	bge	a5,zero,.L524
.L522:
	li	a5,31
	sub	a5,a5,a2
	slli	t1,a1,1
	srl	a0,a0,a2
	sll	t1,t1,a5
	srl	a1,a1,a2
	or	a0,t1,a0
	or	a0,a0,a3
	or	a1,a1,a4
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
	addi	a4,a2,-32
	blt	a4,zero,.L526
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	srl	a4,a1,a4
	li	a3,0
	blt	a5,zero,.L528
.L530:
	sll	a1,a0,a5
	li	a0,0
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L526:
	li	a4,31
	sub	a4,a4,a2
	slli	a5,a1,1
	sll	a5,a5,a4
	srl	a3,a1,a2
	srl	a4,a0,a2
	neg	a2,a2
	andi	a2,a2,63
	or	a4,a5,a4
	addi	a5,a2,-32
	bge	a5,zero,.L530
.L528:
	li	a5,31
	sub	a5,a5,a2
	srli	t1,a0,1
	sll	a1,a1,a2
	srl	t1,t1,a5
	sll	a0,a0,a2
	or	a1,t1,a1
	or	a0,a0,a4
	or	a1,a1,a3
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
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a5,a0
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
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a5,a0
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
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a5,a0
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
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a5,a0
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
	andi	a5,a5,15
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a0,a5
	slli	a0,a0,16
	srli	a0,a0,16
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
	andi	a5,a5,15
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a0,a5
	slli	a0,a0,16
	srli	a0,a0,16
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
	andi	a5,a5,7
	srl	a5,a0,a5
	sll	a0,a0,a1
	or	a0,a0,a5
	andi	a0,a0,0xff
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
	andi	a5,a5,7
	sll	a5,a0,a5
	srl	a0,a0,a1
	or	a0,a0,a5
	andi	a0,a0,0xff
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
	or	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
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
	srli	a2,a0,24
	slli	a5,a0,24
	srli	a4,a0,8
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a2
	li	a3,16711680
	slli	a0,a0,8
	or	a5,a5,a4
	and	a0,a0,a3
	or	a0,a5,a0
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
	li	t2,65536
	mv	a5,a0
	addi	t2,t2,-256
	srli	a3,a1,8
	slli	a4,a1,8
	slli	a0,a1,24
	srli	t0,a5,24
	srli	a2,a5,8
	and	a3,a3,t2
	srli	a1,a1,24
	li	t1,16711680
	or	t0,a4,t0
	or	a2,a2,a0
	slli	a4,a5,24
	or	a3,a1,a3
	srli	a1,a5,24
	and	t0,t0,t1
	and	a2,a2,t2
	or	a4,a4,a1
	slli	a5,a5,8
	or	a3,a3,t0
	or	a1,a4,a2
	and	a5,a5,t1
	or	a0,a3,a0
	or	a1,a1,a5
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
	j	.L545
.L543:
	beq	a5,a3,.L547
.L545:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	beq	a4,zero,.L543
	mv	a0,a5
	ret
.L547:
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
	beq	a0,zero,.L551
	andi	a0,a0,1
	bne	a0,zero,.L548
	li	a0,1
.L550:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L550
	ret
.L551:
	li	a0,0
.L548:
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
	li	a0,0
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
	li	a0,0
	ret
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	s0,16(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	sw	ra,20(sp)
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
	lw	ra,20(sp)
	.cfi_restore 1
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	lw	s0,16(sp)
	.cfi_restore 8
	addi	sp,sp,24
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	mv	a1,a0
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s1,a0
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L560
	blt	s0,zero,.L575
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
.L562:
	andi	a5,s0,1
	beq	a5,zero,.L563
.L564:
	mv	a0,s1
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s1,a0
.L563:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L560
	mv	a0,a1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L564
.L576:
	mv	a0,a1
	srai	s0,a5,1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L564
	j	.L576
.L560:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L575:
	.cfi_restore_state
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	j	.L562
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	mv	a5,a2
	mv	a3,a1
	mv	a2,a0
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a5,48(sp)
	sw	a0,44(sp)
	sw	a1,32(sp)
	call	__adddf3
	lw	t0,44(sp)
	lw	a4,32(sp)
	mv	a2,t0
	mv	a3,a4
	mv	s0,t0
	mv	s1,a4
	call	__nedf2
	mv	a4,s1
	mv	t0,s0
	beq	a0,zero,.L578
	lw	a5,48(sp)
	blt	a5,zero,.L594
	lui	a3,%hi(.LC3)
	lw	s0,%lo(.LC3)(a3)
	lw	s1,%lo(.LC3+4)(a3)
.L580:
	andi	a3,a5,1
	beq	a3,zero,.L581
.L582:
	sw	t0,24(sp)
	sw	a4,28(sp)
	sw	s0,16(sp)
	sw	s1,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	sw	a5,32(sp)
	call	__muldf3
	lw	a5,32(sp)
	mv	t0,a0
	mv	a4,a1
.L581:
	srli	a3,a5,31
	add	a5,a3,a5
	srai	a5,a5,1
	beq	a5,zero,.L578
	mv	a0,s0
	mv	a1,s1
	mv	s0,a5
	sw	t0,32(sp)
	mv	s1,a4
.L583:
	sw	a0,0(sp)
	sw	a1,4(sp)
	sw	a0,8(sp)
	sw	a1,12(sp)
	lw	a3,4(sp)
	lw	a2,0(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	srli	a4,s0,31
	andi	a3,s0,1
	add	a4,a4,s0
	bne	a3,zero,.L592
	srai	s0,a4,1
	j	.L583
.L578:
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	sw	t0,36(sp)
	sw	a4,40(sp)
	lw	a0,36(sp)
	lw	a1,40(sp)
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L594:
	.cfi_restore_state
	lui	a3,%hi(.LC4)
	lw	s0,%lo(.LC4)(a3)
	lw	s1,%lo(.LC4+4)(a3)
	j	.L580
.L592:
	mv	a5,s0
	mv	a4,s1
	lw	t0,32(sp)
	mv	s0,a0
	mv	s1,a1
	j	.L582
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	lw	t2,0(a1)
	lw	t0,4(a1)
	lw	t1,8(a1)
	sw	s1,84(sp)
	.cfi_offset 9, -12
	lw	s1,12(a1)
	mv	a5,a0
	sw	s0,88(sp)
	addi	a0,sp,68
	addi	a1,sp,52
	.cfi_offset 8, -8
	mv	s0,a2
	addi	a2,sp,36
	sw	ra,92(sp)
	.cfi_offset 1, -4
	sw	t2,52(sp)
	sw	t2,36(sp)
	sw	t2,12(sp)
	sw	t0,56(sp)
	sw	t0,40(sp)
	sw	t0,8(sp)
	sw	t1,60(sp)
	sw	t1,44(sp)
	sw	t1,4(sp)
	sw	a5,16(sp)
	sw	s1,0(sp)
	sw	s1,64(sp)
	sw	s1,48(sp)
	call	__addtf3
	lw	t2,12(sp)
	lw	t0,8(sp)
	lw	t1,4(sp)
	lw	a2,68(sp)
	lw	a3,72(sp)
	lw	a4,76(sp)
	lw	a5,80(sp)
	addi	a1,sp,36
	addi	a0,sp,52
	sw	t2,36(sp)
	sw	t0,40(sp)
	sw	t1,44(sp)
	sw	s1,48(sp)
	sw	a2,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	sw	a5,64(sp)
	call	__netf2
	lw	t1,4(sp)
	lw	t0,8(sp)
	lw	t2,12(sp)
	beq	a0,zero,.L596
	li	s1,0
	li	a5,0
	li	a4,0
	li	a3,1073610752
	blt	s0,zero,.L598
	li	a3,1073741824
.L598:
	andi	a2,s0,1
	beq	a2,zero,.L599
.L600:
	lw	a2,0(sp)
	addi	a1,sp,36
	addi	a0,sp,52
	sw	a2,48(sp)
	addi	a2,sp,20
	sw	t2,36(sp)
	sw	t0,40(sp)
	sw	t1,44(sp)
	sw	a5,24(sp)
	sw	a5,12(sp)
	sw	a4,28(sp)
	sw	a4,8(sp)
	sw	a3,32(sp)
	sw	a3,4(sp)
	sw	s1,20(sp)
	call	__multf3
	lw	a5,64(sp)
	lw	t2,52(sp)
	lw	t0,56(sp)
	sw	a5,0(sp)
	lw	t1,60(sp)
	lw	a5,12(sp)
	lw	a4,8(sp)
	lw	a3,4(sp)
.L599:
	srli	a2,s0,31
	add	a2,a2,s0
	srai	s0,a2,1
	beq	s0,zero,.L596
	mv	a0,s1
	sw	t2,4(sp)
	sw	t0,8(sp)
	mv	s1,t1
.L601:
	sw	a0,52(sp)
	sw	a0,36(sp)
	addi	a2,sp,36
	addi	a1,sp,52
	addi	a0,sp,68
	sw	a5,56(sp)
	sw	a4,60(sp)
	sw	a3,64(sp)
	sw	a5,40(sp)
	sw	a4,44(sp)
	sw	a3,48(sp)
	call	__multf3
	srli	a5,s0,31
	andi	a1,s0,1
	add	a2,a5,s0
	lw	a0,68(sp)
	lw	a5,72(sp)
	lw	a4,76(sp)
	lw	a3,80(sp)
	bne	a1,zero,.L610
	srai	s0,a2,1
	j	.L601
.L610:
	mv	t1,s1
	lw	t2,4(sp)
	lw	t0,8(sp)
	mv	s1,a0
	j	.L600
.L596:
	lw	a5,16(sp)
	lw	a4,0(sp)
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	sw	t2,0(a5)
	sw	t0,4(a5)
	sw	t1,8(a5)
	sw	a4,12(a5)
	lw	s1,84(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,96
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
	beq	a2,zero,.L613
	addi	a5,a2,-1
	li	a4,3
	bleu	a5,a4,.L614
	or	a5,a0,a1
	and	a5,a5,a4
	bne	a5,zero,.L614
	andi	t0,a2,-4
	add	t1,a1,t0
	mv	a5,a0
.L615:
	lw	a3,0(a5)
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	xor	a4,a4,a3
	sw	a4,-4(a5)
	bne	t1,a1,.L615
	add	a5,a0,t0
	sub	a3,a2,t0
	beq	a2,t0,.L613
	lbu	a4,0(a5)
	lbu	a1,0(t1)
	li	a2,1
	xor	a4,a4,a1
	sb	a4,0(a5)
	beq	a3,a2,.L613
	lbu	a1,1(a5)
	lbu	a4,1(t1)
	li	a2,2
	xor	a4,a4,a1
	sb	a4,1(a5)
	beq	a3,a2,.L613
	lbu	a3,2(a5)
	lbu	a4,2(t1)
	xor	a4,a4,a3
	sb	a4,2(a5)
	ret
.L614:
	add	a2,a1,a2
	mv	a5,a0
.L617:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L617
.L613:
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
	beq	a5,zero,.L631
	mv	a5,a0
.L626:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L626
.L637:
	beq	a2,zero,.L628
.L639:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L638
	addi	a5,a5,1
	bne	a2,zero,.L639
.L628:
	sb	zero,0(a5)
	ret
.L638:
	ret
.L631:
	mv	a5,a0
	j	.L637
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
	beq	a1,zero,.L648
.L641:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L643
	ret
.L643:
	addi	a0,a0,1
	bne	a1,a0,.L641
	ret
.L648:
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
	beq	a3,zero,.L654
.L658:
	mv	a5,a1
	j	.L653
.L652:
	beq	a4,a3,.L651
.L653:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L652
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L658
.L654:
	li	a0,0
.L651:
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
	li	a0,0
.L661:
	lbu	a4,0(a5)
	bne	a1,a4,.L660
	mv	a0,a5
.L660:
	addi	a5,a5,1
	bne	a4,zero,.L661
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
	lbu	t0,0(a1)
	mv	a3,a0
	beq	t0,zero,.L674
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	mv	a5,a1
.L665:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L665
	sub	s0,a5,a1
	mv	a0,a3
	addi	s0,s0,-1
	bne	a5,a1,.L673
	j	.L663
.L688:
	addi	a3,a3,1
	beq	a5,zero,.L687
.L673:
	lbu	a5,0(a3)
	bne	a5,t0,.L688
	add	t2,a3,s0
	mv	a0,a1
	mv	a4,a3
	mv	a2,t0
.L667:
	beq	a4,t2,.L669
	addi	a4,a4,1
	bne	a5,a2,.L670
	lbu	a5,0(a4)
	lbu	a2,1(a0)
	addi	t1,a0,1
	beq	a5,zero,.L669
	mv	a0,t1
	bne	a2,zero,.L667
.L670:
	addi	a3,a3,1
	j	.L673
.L687:
	li	a0,0
.L663:
	lw	s0,0(sp)
	.cfi_remember_state
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L669:
	.cfi_restore_state
	bne	a5,a2,.L670
	lw	s0,0(sp)
	.cfi_restore 8
	mv	a0,a3
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L674:
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
	addi	sp,sp,-52
	.cfi_def_cfa_offset 52
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	li	a3,0
	li	a2,0
	sw	ra,48(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	sw	a1,0(sp)
	call	__ltdf2
	blt	a0,zero,.L700
	lw	a5,12(sp)
	li	a2,0
	li	a3,0
	sw	a5,16(sp)
	lw	a5,0(sp)
	lw	a0,16(sp)
	sw	a5,20(sp)
	lw	a1,20(sp)
	call	__gtdf2
	ble	a0,zero,.L693
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L692
.L693:
	lw	a5,12(sp)
	lw	ra,48(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	sw	a5,4(sp)
	lw	a5,0(sp)
	lw	a0,4(sp)
	lw	s1,40(sp)
	.cfi_restore 9
	sw	a5,8(sp)
	lw	a1,8(sp)
	addi	sp,sp,52
	.cfi_def_cfa_offset 0
	jr	ra
.L700:
	.cfi_restore_state
	sw	s1,32(sp)
	sw	s0,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	li	a2,0
	li	a3,0
	call	__gtdf2
	ble	a0,zero,.L693
.L692:
	lw	a4,0(sp)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,0(sp)
	j	.L693
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L718
	bltu	a1,a3,.L710
	sub	a1,a1,a3
	add	t1,a0,a1
	bgtu	a0,t1,.L710
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	lbu	s0,0(a2)
	addi	a3,a3,-1
	addi	t2,a2,1
.L707:
	lbu	a5,0(a0)
	addi	t0,a0,1
	beq	a5,s0,.L721
	mv	a0,t0
.L703:
	bgeu	t1,a0,.L707
.L712:
	li	a0,0
.L701:
	lw	s0,4(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L721:
	.cfi_restore_state
	mv	a4,t2
	beq	a3,zero,.L701
.L706:
	mv	a5,t0
	add	s1,t0,a3
	j	.L704
.L705:
	beq	a5,s1,.L701
.L704:
	lbu	a1,0(a5)
	lbu	a2,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a1,a2,.L705
	bgtu	t0,t1,.L712
	lbu	a5,0(t0)
	addi	a0,t0,1
	bne	a5,s0,.L703
	mv	a5,t0
	mv	a4,t2
	mv	t0,a0
	mv	a0,a5
	j	.L706
.L710:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	.cfi_restore 9
	li	a0,0
	ret
.L718:
	ret
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	s0,4(sp)
	sw	s1,0(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a2
	mv	s1,a0
	beq	a2,zero,.L723
	call	memmove
.L723:
	add	a0,s1,s0
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
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
	addi	sp,sp,-104
	.cfi_def_cfa_offset 104
	mv	t0,a2
	li	a3,0
	li	a2,0
	sw	s0,96(sp)
	sw	s1,92(sp)
	sw	ra,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s1,a0
	mv	s0,a1
	sw	t0,56(sp)
	call	__ltdf2
	blt	a0,zero,.L754
	sw	s1,24(sp)
	sw	s0,28(sp)
	lui	a3,%hi(.LC9)
	lw	a2,%lo(.LC9)(a3)
	lw	a0,24(sp)
	lw	a1,28(sp)
	lw	a3,%lo(.LC9+4)(a3)
	call	__gedf2
	sw	zero,60(sp)
	blt	a0,zero,.L755
.L731:
	lui	a2,%hi(.LC4)
	lw	a4,%lo(.LC4)(a2)
	lw	a5,%lo(.LC4+4)(a2)
	lui	a3,%hi(.LC3)
	sw	a4,40(sp)
	sw	a5,44(sp)
	lw	a4,%lo(.LC3)(a3)
	lw	a5,%lo(.LC3+4)(a3)
	li	t0,0
	sw	a4,32(sp)
	sw	a5,36(sp)
	mv	a4,s0
	mv	a5,s1
.L737:
	sw	a5,0(sp)
	sw	a4,4(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	addi	t0,t0,1
	sw	t0,24(sp)
	sw	a4,16(sp)
	sw	a5,8(sp)
	call	__muldf3
	lw	t2,8(sp)
	lw	t1,16(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	mv	a5,a0
	mv	a4,a1
	mv	a0,t2
	mv	a1,t1
	sw	a5,16(sp)
	sw	a4,8(sp)
	call	__gedf2
	lw	a4,8(sp)
	lw	a5,16(sp)
	lw	t0,24(sp)
	bge	a0,zero,.L737
	mv	s1,a5
	mv	s0,a4
.L738:
	lw	a5,56(sp)
	lw	a4,60(sp)
	sw	t0,0(a5)
	mv	a5,s0
	beq	a4,zero,.L728
	li	a3,-2147483648
	xor	a5,s0,a3
.L728:
	lw	ra,100(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,96(sp)
	.cfi_restore 8
	sw	s1,48(sp)
	sw	a5,52(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	lw	s1,92(sp)
	.cfi_restore 9
	addi	sp,sp,104
	.cfi_def_cfa_offset 0
	jr	ra
.L755:
	.cfi_restore_state
	lui	a3,%hi(.LC4)
	sw	s1,40(sp)
	sw	s0,44(sp)
	lw	a2,%lo(.LC4)(a3)
	lw	a0,40(sp)
	lw	a1,44(sp)
	lw	a3,%lo(.LC4+4)(a3)
	call	__ltdf2
	bge	a0,zero,.L751
	sw	s1,76(sp)
	sw	s0,80(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	li	a2,0
	li	a3,0
	call	__nedf2
	bne	a0,zero,.L743
.L751:
	lw	a5,56(sp)
	sw	zero,0(a5)
	mv	a5,s0
	j	.L728
.L754:
	lui	a3,%hi(.LC7)
	sw	s1,32(sp)
	sw	s0,36(sp)
	lw	a2,%lo(.LC7)(a3)
	lw	a0,32(sp)
	lw	a1,36(sp)
	lw	a3,%lo(.LC7+4)(a3)
	li	t1,-2147483648
	xor	a4,s0,t1
	sw	a4,24(sp)
	call	__ledf2
	bgt	a0,zero,.L756
	li	a5,1
	lw	s0,24(sp)
	sw	a5,60(sp)
	j	.L731
.L756:
	lui	a3,%hi(.LC8)
	sw	s1,60(sp)
	sw	s0,64(sp)
	lw	a2,%lo(.LC8)(a3)
	lw	a0,60(sp)
	lw	a1,64(sp)
	lw	a3,%lo(.LC8+4)(a3)
	call	__gtdf2
	ble	a0,zero,.L751
	li	a5,1
	sw	a5,60(sp)
.L732:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	s0,24(sp)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,40(sp)
	li	t0,0
	sw	a5,44(sp)
	mv	a4,s1
	mv	a5,s0
.L739:
	sw	a4,8(sp)
	sw	a4,16(sp)
	sw	a5,12(sp)
	sw	a5,20(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	addi	t0,t0,-1
	sw	t0,32(sp)
	sw	a5,24(sp)
	sw	a4,0(sp)
	call	__adddf3
	lw	t2,0(sp)
	lw	t1,24(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	a4,a0
	mv	a5,a1
	mv	a0,t2
	mv	a1,t1
	sw	a4,24(sp)
	sw	a5,0(sp)
	call	__ltdf2
	lw	a5,0(sp)
	lw	a4,24(sp)
	lw	t0,32(sp)
	blt	a0,zero,.L739
	mv	s1,a4
	mv	s0,a5
	j	.L738
.L743:
	sw	s0,24(sp)
	j	.L732
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
	beq	a5,zero,.L761
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	mv	t1,a0
	mv	t0,a1
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	li	a0,0
	li	a1,0
.L760:
	andi	a5,t1,1
	neg	a4,a5
	slli	t2,t0,31
	and	a4,a4,a2
	srli	t1,t1,1
	neg	a5,a5
	add	a4,a0,a4
	and	a5,a5,a3
	or	t1,t2,t1
	srli	t0,t0,1
	sltu	s0,a4,a0
	srli	s1,a2,31
	add	a5,a1,a5
	slli	a3,a3,1
	or	t2,t1,t0
	mv	a0,a4
	add	a1,s0,a5
	or	a3,s1,a3
	slli	a2,a2,1
	bne	t2,zero,.L760
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L761:
	li	a0,0
	li	a1,0
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
	mv	a4,a0
	li	a5,1
	li	a0,32
	bltu	a1,a4,.L768
	j	.L769
.L772:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L770
	beq	a0,zero,.L771
.L768:
	addi	a0,a0,-1
	bge	a1,zero,.L772
.L769:
	li	a0,0
.L774:
	bltu	a4,a1,.L773
	sub	a4,a4,a1
	or	a0,a0,a5
.L773:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L774
.L771:
	bne	a2,zero,.L784
.L767:
	ret
.L770:
	bne	a5,zero,.L769
	li	a0,0
	beq	a2,zero,.L767
.L784:
	mv	a0,a4
	ret
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	beq	a0,zero,.L787
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	slli	a0,a0,8
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__clzsi2
	lw	ra,0(sp)
	.cfi_restore 1
	addi	a0,a0,-1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L787:
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
	beq	a5,a3,.L801
.L796:
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__clzdi2
	lw	ra,0(sp)
	.cfi_restore 1
	addi	a0,a0,-1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L801:
	bne	a4,a5,.L796
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
	beq	a4,zero,.L805
.L804:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L804
	ret
.L805:
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
	srli	t0,a2,3
	andi	a3,a2,-8
	bltu	a0,a1,.L811
	add	a5,a1,a2
	bleu	a0,a5,.L841
.L811:
	beq	t0,zero,.L842
	slli	t0,t0,3
	add	t0,t0,a1
	mv	a5,a1
	mv	a4,a0
.L814:
	lw	t1,0(a5)
	lw	t2,4(a5)
	addi	a5,a5,8
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a4,a4,8
	bne	a5,t0,.L814
	bleu	a2,a3,.L838
	sub	t2,a2,a3
	addi	a4,t2,-1
	li	a5,6
	bleu	a4,a5,.L843
	addi	t1,a3,1
	add	t1,a1,t1
	add	a4,a0,a3
	sub	t1,a4,t1
	sltiu	t1,t1,3
	add	a5,a1,a3
	bne	t1,zero,.L816
	or	t1,a5,a4
	andi	t1,t1,3
	bne	t1,zero,.L816
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	andi	s0,t2,-4
	add	t0,a5,s0
.L817:
	lw	t1,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	t1,-4(a4)
	bne	a5,t0,.L817
	add	a3,a3,s0
	beq	t2,s0,.L807
	add	a5,a1,a3
	lbu	t1,0(a5)
	add	a4,a0,a3
	addi	a5,a3,1
	sb	t1,0(a4)
	bleu	a2,a5,.L807
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a3,a3,2
	sb	a4,0(a5)
	bleu	a2,a3,.L807
	add	a1,a1,a3
	lbu	a5,0(a1)
	add	a0,a0,a3
	sb	a5,0(a0)
.L807:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L841:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L844
.L812:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L812
	ret
.L842:
	add	a4,a0,a3
	add	a5,a1,a3
	beq	a2,zero,.L845
.L816:
	add	a1,a1,a2
.L819:
	lbu	a3,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,.L819
	ret
.L838:
	ret
.L845:
	ret
.L844:
	ret
.L843:
	add	a4,a0,a3
	add	a5,a1,a3
	j	.L816
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	srli	t0,a2,1
	bltu	a0,a1,.L850
	add	a5,a1,a2
	bleu	a0,a5,.L878
.L850:
	beq	t0,zero,.L873
	addi	a5,t0,-1
	li	a4,8
	bleu	a5,a4,.L853
	or	a5,a1,a0
	andi	a5,a5,3
	bne	a5,zero,.L853
	addi	a5,a1,2
	beq	a0,a5,.L853
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	andi	t2,a2,-4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	add	t1,a1,t2
	srli	s0,a2,2
	mv	a5,a1
	mv	a4,a0
.L854:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L854
	slli	a5,s0,1
	beq	t0,a5,.L849
	add	a5,a1,t2
	lh	a5,0(a5)
	add	t2,a0,t2
	sh	a5,0(t2)
.L849:
	andi	a5,a2,1
	beq	a5,zero,.L846
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
.L846:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L878:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L879
.L851:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L851
	ret
.L853:
	slli	t0,t0,1
	add	t0,t0,a1
	mv	a5,a1
	mv	a4,a0
.L856:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	t0,a5,.L856
.L873:
	andi	a5,a2,1
	beq	a5,zero,.L874
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
.L874:
	ret
.L879:
	ret
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	srli	t1,a2,2
	andi	t0,a2,-4
	bltu	a0,a1,.L884
	add	a5,a1,a2
	bleu	a0,a5,.L914
.L884:
	beq	t1,zero,.L915
	slli	t1,t1,2
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L887:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L887
	bleu	a2,t0,.L911
	sub	t2,a2,t0
	addi	a4,t2,-1
	li	a5,6
	bleu	a4,a5,.L916
	addi	a3,t0,1
	add	a3,a1,a3
	add	a4,a0,t0
	sub	a3,a4,a3
	sltiu	a3,a3,3
	add	a5,a1,t0
	bne	a3,zero,.L889
	or	a3,a5,a4
	andi	a3,a3,3
	bne	a3,zero,.L889
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	andi	s0,t2,-4
	add	t1,a5,s0
.L890:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L890
	add	t0,t0,s0
	beq	t2,s0,.L880
	add	a5,a1,t0
	lbu	a3,0(a5)
	add	a4,a0,t0
	addi	a5,t0,1
	sb	a3,0(a4)
	bleu	a2,a5,.L880
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	t0,t0,2
	sb	a4,0(a5)
	bleu	a2,t0,.L880
	add	a1,a1,t0
	lbu	a5,0(a1)
	add	a0,a0,t0
	sb	a5,0(a0)
.L880:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L914:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L917
.L885:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L885
	ret
.L915:
	add	a4,a0,t0
	add	a5,a1,t0
	beq	a2,zero,.L918
.L889:
	add	a1,a1,a2
.L892:
	lbu	a3,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,.L892
	ret
.L911:
	ret
.L918:
	ret
.L917:
	ret
.L916:
	add	a4,a0,t0
	add	a5,a1,t0
	j	.L889
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__modsi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatunsidf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatunsisf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatundidf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__floatundisf
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__umodsi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	bne	a4,zero,.L934
	srai	a0,a0,14
	bne	a0,zero,.L931
	srai	a4,a5,13
	bne	a4,zero,.L935
	srai	a4,a5,12
	bne	a4,zero,.L936
	srai	a4,a5,11
	bne	a4,zero,.L937
	srai	a4,a5,10
	bne	a4,zero,.L938
	srai	a4,a5,9
	bne	a4,zero,.L939
	srai	a4,a5,8
	bne	a4,zero,.L940
	srai	a4,a5,7
	bne	a4,zero,.L941
	srai	a4,a5,6
	bne	a4,zero,.L942
	srai	a4,a5,5
	bne	a4,zero,.L943
	srai	a4,a5,4
	bne	a4,zero,.L944
	srai	a4,a5,3
	bne	a4,zero,.L945
	srai	a4,a5,2
	bne	a4,zero,.L946
	srai	a4,a5,1
	bne	a4,zero,.L947
	seqz	a0,a5
	addi	a0,a0,15
	ret
.L947:
	li	a0,14
.L931:
	ret
.L934:
	li	a0,0
	ret
.L945:
	li	a0,12
	ret
.L935:
	li	a0,2
	ret
.L936:
	li	a0,3
	ret
.L937:
	li	a0,4
	ret
.L938:
	li	a0,5
	ret
.L939:
	li	a0,6
	ret
.L940:
	li	a0,7
	ret
.L941:
	li	a0,8
	ret
.L942:
	li	a0,9
	ret
.L943:
	li	a0,10
	ret
.L944:
	li	a0,11
	ret
.L946:
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
	bne	a5,zero,.L952
	andi	a5,a0,2
	bne	a5,zero,.L953
	andi	a5,a0,4
	bne	a5,zero,.L954
	andi	a5,a0,8
	bne	a5,zero,.L955
	andi	a5,a0,16
	bne	a5,zero,.L956
	andi	a5,a0,32
	bne	a5,zero,.L957
	andi	a5,a0,64
	bne	a5,zero,.L958
	andi	a5,a0,128
	bne	a5,zero,.L959
	andi	a5,a0,256
	bne	a5,zero,.L960
	andi	a5,a0,512
	bne	a5,zero,.L961
	andi	a5,a0,1024
	bne	a5,zero,.L962
	slli	a4,a0,20
	li	a5,4096
	blt	a4,zero,.L963
	and	a5,a0,a5
	bne	a5,zero,.L964
	slli	a5,a0,18
	blt	a5,zero,.L965
	slli	a5,a0,17
	blt	a5,zero,.L966
	srai	a0,a0,15
	seqz	a0,a0
	addi	a0,a0,15
	ret
.L952:
	li	a0,0
	ret
.L953:
	li	a0,1
	ret
.L964:
	li	a0,12
	ret
.L954:
	li	a0,2
	ret
.L955:
	li	a0,3
	ret
.L956:
	li	a0,4
	ret
.L957:
	li	a0,5
	ret
.L958:
	li	a0,6
	ret
.L959:
	li	a0,7
	ret
.L960:
	li	a0,8
	ret
.L961:
	li	a0,9
	ret
.L962:
	li	a0,10
	ret
.L963:
	li	a0,11
	ret
.L965:
	li	a0,13
	ret
.L966:
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	lui	a5,%hi(.LC11)
	sw	s1,0(sp)
	.cfi_offset 9, -12
	lw	s1,%lo(.LC11)(a5)
	sw	s0,4(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	a1,s1
	mv	s0,a0
	call	__gesf2
	bge	a0,zero,.L975
	mv	a0,s0
	call	__fixsfsi
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L975:
	.cfi_restore_state
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	li	a5,32768
	lw	s1,0(sp)
	.cfi_restore 9
	add	a0,a0,a5
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
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
	andi	a3,a0,1
	srai	a4,a0,2
	andi	a5,a5,1
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,3
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,4
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,5
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,6
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,7
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,8
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,9
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,10
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,11
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,12
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,13
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,14
	add	a5,a5,a3
	andi	a4,a4,1
	add	a5,a5,a4
	srai	a0,a0,15
	add	a0,a5,a0
	andi	a0,a0,1
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
	andi	a3,a0,1
	srai	a4,a0,2
	andi	a5,a5,1
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,3
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,4
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,5
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,6
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,7
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,8
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,9
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,10
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,11
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,12
	add	a5,a5,a3
	andi	a4,a4,1
	srai	a3,a0,13
	add	a5,a5,a4
	andi	a3,a3,1
	srai	a4,a0,14
	add	a5,a5,a3
	andi	a4,a4,1
	add	a5,a5,a4
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
	beq	a4,zero,.L981
.L980:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L980
	ret
.L981:
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
	beq	a4,zero,.L986
	beq	a1,zero,.L987
.L985:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	srli	a1,a1,1
	add	a0,a0,a5
	slli	a4,a4,1
	bne	a1,zero,.L985
	ret
.L986:
	ret
.L987:
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
	mv	a4,a0
	li	a5,1
	li	a0,32
	bgtu	a4,a1,.L990
	j	.L991
.L994:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L992
	beq	a0,zero,.L993
.L990:
	addi	a0,a0,-1
	bge	a1,zero,.L994
.L991:
	li	a0,0
.L996:
	bltu	a4,a1,.L995
	sub	a4,a4,a1
	or	a0,a0,a5
.L995:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L996
.L993:
	bne	a2,zero,.L1006
.L989:
	ret
.L992:
	bne	a5,zero,.L991
	li	a0,0
	beq	a2,zero,.L989
.L1006:
	mv	a0,a4
	ret
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	s0,4(sp)
	sw	s1,0(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a0
	mv	s1,a1
	call	__ltsf2
	blt	a0,zero,.L1010
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	lw	ra,8(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L1010:
	.cfi_restore_state
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	li	a0,-1
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	addi	sp,sp,-36
	.cfi_def_cfa_offset 36
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	ra,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	sw	a0,16(sp)
	sw	a1,20(sp)
	mv	s1,a2
	mv	s0,a3
	call	__ltdf2
	blt	a0,zero,.L1015
	lw	a5,16(sp)
	sw	s1,0(sp)
	sw	s0,4(sp)
	sw	a5,8(sp)
	lw	a5,20(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	lw	ra,32(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L1015:
	.cfi_restore_state
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	li	a0,-1
	addi	sp,sp,36
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	mv	a2,a1
	srai	a3,a1,31
	srai	a1,a0,31
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__muldi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	mv	a2,a1
	li	a3,0
	li	a1,0
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__muldi3
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
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
	blt	a1,zero,.L1035
	beq	a1,zero,.L1027
	li	a2,0
.L1023:
	li	a4,32
	li	a0,0
	j	.L1026
.L1036:
	beq	a4,zero,.L1025
.L1026:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	addi	a4,a4,-1
	srai	a1,a1,1
	andi	a4,a4,0xff
	add	a0,a0,a5
	slli	a3,a3,1
	bne	a1,zero,.L1036
.L1025:
	beq	a2,zero,.L1021
	neg	a0,a0
	ret
.L1027:
	li	a0,0
.L1021:
	ret
.L1035:
	neg	a1,a1
	li	a2,1
	j	.L1023
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
	li	a2,0
	blt	a0,zero,.L1056
.L1038:
	bge	a1,zero,.L1039
	neg	a1,a1
	mv	a2,a5
.L1039:
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L1040
	j	.L1041
.L1043:
	beq	a4,zero,.L1044
.L1040:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L1043
.L1044:
	li	a0,0
	beq	a5,zero,.L1042
.L1041:
	li	a0,0
.L1046:
	bltu	a3,a1,.L1045
	sub	a3,a3,a1
	or	a0,a0,a5
.L1045:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1046
.L1042:
	beq	a2,zero,.L1037
	neg	a0,a0
.L1037:
	ret
.L1056:
	neg	a0,a0
	li	a5,0
	li	a2,1
	j	.L1038
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	li	a2,0
	bge	a0,zero,.L1058
	neg	a0,a0
	li	a2,1
.L1058:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L1059
	j	.L1065
.L1062:
	beq	a4,zero,.L1063
.L1059:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L1062
.L1063:
	beq	a5,zero,.L1061
.L1065:
	srli	a5,a5,1
	bltu	a3,a1,.L1064
	sub	a3,a3,a1
.L1064:
	srli	a1,a1,1
	bne	a5,zero,.L1065
	mv	a0,a3
.L1061:
	beq	a2,zero,.L1057
	neg	a0,a0
.L1057:
	ret
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	bgeu	a1,a0,.L1189
	slli	a5,a1,16
	srai	a5,a5,16
	blt	a5,zero,.L1078
	slli	a5,a1,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1079
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1080
	slli	a5,a1,2
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1081
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1082
	slli	a5,a1,3
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1083
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1084
	slli	a5,a1,4
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1085
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1086
	slli	a5,a1,5
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1087
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1088
	slli	a5,a1,6
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1089
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1090
	slli	a5,a1,7
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1091
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1092
	slli	a5,a1,8
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1093
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1094
	slli	a5,a1,9
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1095
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1096
	slli	a5,a1,10
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1097
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1098
	slli	a5,a1,11
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1099
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1100
	slli	a5,a1,12
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1101
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1102
	slli	a5,a1,13
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1103
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1104
	slli	a5,a1,14
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1105
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1106
	slli	a1,a1,15
	slli	a3,a1,16
	srli	a3,a3,16
	bleu	a0,a3,.L1107
	bne	a3,zero,.L1190
.L1108:
	bne	a2,zero,.L1147
	mv	a0,a3
	ret
.L1147:
	ret
.L1095:
	bltu	a0,a5,.L1141
	sub	a0,a0,a5
	li	a1,512
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
.L1110:
	srli	t1,a1,2
	srli	a4,a5,2
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1111
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1111:
	srli	t1,a1,3
	srli	a4,a5,3
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1112
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1112:
	srli	t1,a1,4
	srli	a4,a5,4
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1113
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1113:
	srli	t1,a1,5
	srli	a4,a5,5
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1114
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1114:
	srli	t1,a1,6
	srli	a4,a5,6
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1115
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1115:
	srli	t1,a1,7
	srli	a4,a5,7
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1116
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1116:
	srli	t1,a1,8
	srli	a4,a5,8
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1117
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1117:
	srli	t1,a1,9
	srli	a4,a5,9
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1118
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1118:
	srli	t1,a1,10
	srli	a4,a5,10
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1119
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1119:
	srli	t1,a1,11
	srli	a4,a5,11
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1120
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1120:
	srli	t1,a1,12
	srli	a4,a5,12
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1121
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1121:
	srli	t1,a1,13
	srli	a4,a5,13
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1122
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1122:
	srli	t1,a1,14
	srli	a4,a5,14
	beq	t1,zero,.L1108
	bltu	a0,a4,.L1123
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1123:
	li	a4,16384
	srli	a5,a5,15
	beq	a1,a4,.L1108
	bltu	a0,a5,.L1131
	sub	a5,a0,a5
	slli	a0,a5,16
	srli	a0,a0,16
	ori	a3,a3,1
	j	.L1108
.L1190:
	li	a5,-32768
	add	a3,a0,a5
	slli	a0,a3,16
	li	a5,32768
	li	a4,16384
	srli	a0,a0,16
	mv	t1,a4
	mv	a1,a5
	mv	a3,a5
.L1128:
	bltu	a0,a4,.L1110
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
	j	.L1110
.L1131:
	li	a0,0
	j	.L1108
.L1189:
	li	a3,0
	bne	a1,a0,.L1108
	li	a3,1
	li	a0,0
	j	.L1108
.L1078:
	sub	a1,a0,a1
	slli	a0,a1,16
	srli	a0,a0,16
	li	a3,1
	j	.L1108
.L1079:
	bltu	a0,a5,.L1133
	sub	a0,a0,a5
	li	a1,2
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1080:
	sub	a0,a0,a5
	slli	a4,a1,17
	slli	a0,a0,16
	li	a1,2
	srli	a0,a0,16
	srli	a4,a4,17
	mv	a3,a1
	li	t1,1
	j	.L1128
.L1081:
	bltu	a0,a5,.L1134
	sub	a0,a0,a5
	li	a1,4
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1082:
	sub	a0,a0,a5
	li	a1,4
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,2
	j	.L1128
.L1083:
	bltu	a0,a5,.L1135
	sub	a0,a0,a5
	li	a1,8
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1084:
	sub	a0,a0,a5
	li	a1,8
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,4
	j	.L1128
.L1085:
	bltu	a0,a5,.L1136
	sub	a0,a0,a5
	li	a1,16
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1086:
	sub	a0,a0,a5
	li	a1,16
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,8
	j	.L1128
.L1087:
	bltu	a0,a5,.L1137
	sub	a0,a0,a5
	li	a1,32
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1088:
	sub	a0,a0,a5
	li	a1,32
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,16
	j	.L1128
.L1089:
	bltu	a0,a5,.L1138
	sub	a0,a0,a5
	li	a1,64
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1090:
	sub	a0,a0,a5
	li	a1,64
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,32
	j	.L1128
.L1091:
	bltu	a0,a5,.L1139
	sub	a0,a0,a5
	li	a1,128
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1092:
	sub	a0,a0,a5
	li	a1,128
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,64
	j	.L1128
.L1094:
	sub	a0,a0,a5
	li	a1,256
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,128
	j	.L1128
.L1096:
	sub	a0,a0,a5
	li	a1,512
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,256
	j	.L1128
.L1133:
	li	a1,2
.L1127:
	srli	t1,a1,1
	srli	a4,a5,1
	li	a3,0
	j	.L1128
.L1098:
	sub	a0,a0,a5
	li	a1,1024
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,512
	j	.L1128
.L1134:
	li	a1,4
	j	.L1127
.L1100:
	li	a1,4096
	sub	a0,a0,a5
	addi	a1,a1,-2048
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,1024
	j	.L1128
.L1102:
	li	t1,4096
	sub	a0,a0,a5
	mv	a1,t1
	slli	a0,a0,16
	srli	a0,a0,16
	addi	t1,t1,-2048
	mv	a3,a1
	srli	a4,a5,1
	j	.L1128
.L1135:
	li	a1,8
	j	.L1127
.L1104:
	sub	a0,a0,a5
	li	a1,8192
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,4096
	j	.L1128
.L1136:
	li	a1,16
	j	.L1127
.L1106:
	sub	a0,a0,a5
	li	a1,16384
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,8192
	j	.L1128
.L1137:
	li	a1,32
	j	.L1127
.L1138:
	li	a1,64
	j	.L1127
.L1107:
	slli	a5,a0,16
	srai	a5,a5,16
	blt	a5,zero,.L1132
	li	a5,32768
	mv	a1,a5
	j	.L1127
.L1139:
	li	a1,128
	j	.L1127
.L1093:
	bltu	a0,a5,.L1140
	sub	a0,a0,a5
	li	a1,256
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1132:
	li	a5,32768
	mv	a1,a5
	mv	a3,a5
	li	a0,0
	j	.L1110
.L1140:
	li	a1,256
	j	.L1127
.L1103:
	bltu	a0,a5,.L1145
	sub	a0,a0,a5
	li	a1,8192
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1097:
	bltu	a0,a5,.L1142
	sub	a0,a0,a5
	li	a1,1024
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1145:
	li	a1,8192
	j	.L1127
.L1142:
	li	a1,1024
	j	.L1127
.L1141:
	li	a1,512
	j	.L1127
.L1101:
	bltu	a0,a5,.L1144
	sub	a0,a0,a5
	li	a1,4096
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1099:
	li	a1,4096
	bltu	a0,a5,.L1143
	sub	a0,a0,a5
	addi	a1,a1,-2048
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1105:
	bltu	a0,a5,.L1146
	sub	a0,a0,a5
	li	a1,16384
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1110
.L1144:
	li	a1,4096
	j	.L1127
.L1143:
	addi	a1,a1,-2048
	j	.L1127
.L1146:
	li	a1,16384
	j	.L1127
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	mv	a4,a0
	li	a5,1
	li	a0,32
	bgtu	a4,a1,.L1192
	j	.L1193
.L1196:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L1194
	beq	a0,zero,.L1195
.L1192:
	addi	a0,a0,-1
	bge	a1,zero,.L1196
.L1193:
	li	a0,0
.L1198:
	bltu	a4,a1,.L1197
	sub	a4,a4,a1
	or	a0,a0,a5
.L1197:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1198
.L1195:
	bne	a2,zero,.L1208
.L1191:
	ret
.L1194:
	bne	a5,zero,.L1193
	li	a0,0
	beq	a2,zero,.L1191
.L1208:
	mv	a0,a4
	ret
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
	beq	a5,zero,.L1210
	addi	a1,a2,-32
	sll	a1,a0,a1
	li	a0,0
	ret
.L1210:
	beq	a2,zero,.L1212
	li	a5,32
	sub	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L1212:
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
	beq	a5,zero,.L1215
	addi	a0,a2,-32
	sra	a0,a1,a0
	srai	a1,a1,31
	ret
.L1215:
	beq	a2,zero,.L1217
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1217:
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
	li	t2,65536
	mv	a5,a0
	addi	t2,t2,-256
	srli	a3,a1,8
	slli	a4,a1,8
	slli	a0,a1,24
	srli	t0,a5,24
	srli	a2,a5,8
	and	a3,a3,t2
	srli	a1,a1,24
	li	t1,16711680
	or	t0,a4,t0
	or	a2,a2,a0
	slli	a4,a5,24
	or	a3,a1,a3
	srli	a1,a5,24
	and	t0,t0,t1
	and	a2,a2,t2
	or	a4,a4,a1
	slli	a5,a5,8
	or	a3,a3,t0
	or	a1,a4,a2
	and	a5,a5,t1
	or	a0,a3,a0
	or	a1,a1,a5
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
	slli	a2,a0,24
	srli	a5,a0,24
	srli	a4,a0,8
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a2
	li	a3,16711680
	slli	a0,a0,8
	or	a5,a5,a4
	and	a0,a0,a3
	or	a0,a5,a0
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
	li	a3,65536
	sltu	a3,a0,a3
	slli	a3,a3,4
	li	a5,16
	sub	a5,a5,a3
	li	a4,65536
	srl	a5,a0,a5
	addi	a4,a4,-256
	and	a4,a5,a4
	seqz	a4,a4
	slli	a4,a4,3
	li	a2,8
	sub	a2,a2,a4
	srl	a5,a5,a2
	andi	a1,a5,240
	seqz	a1,a1
	slli	a1,a1,2
	li	a2,4
	sub	a2,a2,a1
	srl	a5,a5,a2
	andi	a2,a5,12
	seqz	a2,a2
	li	a0,2
	slli	a2,a2,1
	sub	t1,a0,a2
	srl	a5,a5,t1
	srli	t1,a5,1
	add	a4,a4,a3
	andi	a3,t1,1
	add	a4,a1,a4
	sub	a0,a0,a5
	beq	a3,zero,.L1223
	li	a0,0
.L1223:
	add	a4,a2,a4
	add	a0,a0,a4
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
	blt	a1,a3,.L1226
	li	a0,2
	bgt	a1,a3,.L1224
	li	a0,0
	bltu	a5,a2,.L1224
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1226:
	li	a0,0
.L1224:
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
	blt	a1,a3,.L1232
	li	a0,1
	bgt	a1,a3,.L1230
	li	a0,-1
	bltu	a5,a2,.L1230
	sgtu	a0,a5,a2
	ret
.L1232:
	li	a0,-1
.L1230:
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
	slli	t0,a0,16
	srli	t0,t0,16
	seqz	t0,t0
	slli	t0,t0,4
	srl	a5,a0,t0
	andi	a2,a5,255
	seqz	a2,a2
	slli	a2,a2,3
	srl	a5,a5,a2
	andi	a3,a5,15
	seqz	a3,a3
	slli	a3,a3,2
	srl	a5,a5,a3
	andi	a4,a5,3
	seqz	a4,a4
	slli	a4,a4,1
	srl	a5,a5,a4
	andi	a5,a5,3
	not	t1,a5
	add	a2,a2,t0
	srli	a5,a5,1
	li	a1,2
	andi	t1,t1,1
	add	a3,a3,a2
	neg	t1,t1
	sub	a1,a1,a5
	add	a0,a4,a3
	and	a1,t1,a1
	add	a0,a1,a0
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
	beq	a5,zero,.L1237
	addi	a0,a2,-32
	srl	a0,a1,a0
	li	a1,0
	ret
.L1237:
	beq	a2,zero,.L1239
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1239:
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	slli	a5,a0,16
	sw	s1,12(sp)
	srli	a5,a5,16
	.cfi_offset 9, -12
	mv	s1,a1
	slli	a1,a1,16
	sw	a0,8(sp)
	srli	a1,a1,16
	mv	a0,a5
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a5,4(sp)
	sw	a1,0(sp)
	call	__mulsi3
	lw	a4,8(sp)
	lw	a1,0(sp)
	mv	s0,a0
	srli	a4,a4,16
	srli	a3,s0,16
	mv	a0,a1
	mv	a1,a4
	sw	a4,8(sp)
	sw	a3,0(sp)
	call	__mulsi3
	lw	a3,0(sp)
	lw	a5,4(sp)
	srli	a1,s1,16
	slli	s0,s0,16
	add	s1,a0,a3
	srli	s0,s0,16
	mv	a0,a5
	slli	a5,s1,16
	add	s0,s0,a5
	srli	a5,a5,16
	sw	a1,4(sp)
	sw	a5,0(sp)
	call	__mulsi3
	lw	a5,0(sp)
	lw	a4,8(sp)
	lw	a1,4(sp)
	add	a5,a0,a5
	slli	s0,s0,16
	mv	a0,a4
	srli	s0,s0,16
	slli	a4,a5,16
	sw	a5,0(sp)
	add	s0,s0,a4
	call	__mulsi3
	lw	a5,0(sp)
	srli	s1,s1,16
	add	s1,s1,a0
	lw	ra,20(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,16(sp)
	.cfi_restore 8
	srli	a5,a5,16
	add	a1,s1,a5
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	slli	a5,a2,16
	slli	t1,a0,16
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	srli	t1,t1,16
	srli	a5,a5,16
	sw	s1,28(sp)
	mv	a4,a1
	.cfi_offset 9, -12
	mv	s1,a0
	mv	a1,a5
	mv	a0,t1
	sw	ra,36(sp)
	sw	s0,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	t1,16(sp)
	mv	s0,a2
	sw	a3,8(sp)
	sw	a5,0(sp)
	sw	a4,4(sp)
	call	__mulsi3
	lw	a5,0(sp)
	srli	a2,s1,16
	mv	a4,a0
	mv	a1,a2
	mv	a0,a5
	srli	a5,a4,16
	sw	a2,24(sp)
	sw	a4,12(sp)
	sw	a5,0(sp)
	call	__mulsi3
	lw	a4,12(sp)
	lw	a5,0(sp)
	lw	t1,16(sp)
	slli	a3,a4,16
	add	a5,a0,a5
	slli	a4,a5,16
	srli	a3,a3,16
	srli	a1,s0,16
	mv	a0,t1
	add	a3,a3,a4
	srli	a4,a4,16
	sw	a5,20(sp)
	sw	a1,16(sp)
	sw	a3,12(sp)
	sw	a4,0(sp)
	call	__mulsi3
	lw	a3,12(sp)
	lw	a4,0(sp)
	lw	a2,24(sp)
	lw	a5,20(sp)
	lw	a1,16(sp)
	add	a4,a0,a4
	slli	a3,a3,16
	srli	a3,a3,16
	mv	a0,a2
	srli	a5,a5,16
	slli	a2,a4,16
	sw	a5,12(sp)
	add	a5,a3,a2
	sw	a4,16(sp)
	sw	a5,0(sp)
	call	__mulsi3
	lw	a4,16(sp)
	lw	a5,12(sp)
	lw	a1,8(sp)
	srli	a4,a4,16
	add	a5,a5,a0
	mv	a0,s1
	add	s1,a5,a4
	call	__mulsi3
	lw	a1,4(sp)
	mv	a5,a0
	mv	a0,s0
	add	s1,a5,s1
	call	__mulsi3
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	mv	a1,a0
	add	a1,s1,a1
	lw	a0,0(sp)
	lw	s1,28(sp)
	.cfi_restore 9
	addi	sp,sp,40
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
	xor	a5,a5,a1
	srli	a4,a5,8
	xor	a4,a4,a5
	srli	a5,a4,4
	xor	a5,a5,a4
	li	a0,28672
	andi	a5,a5,15
	addi	a0,a0,-1642
	sra	a0,a0,a5
	andi	a0,a0,1
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
	xor	a5,a5,a0
	srli	a0,a5,8
	xor	a0,a0,a5
	srli	a5,a0,4
	xor	a5,a5,a0
	li	a0,28672
	andi	a5,a5,15
	addi	a0,a0,-1642
	sra	a0,a0,a5
	andi	a0,a0,1
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
	slli	a3,a1,31
	srli	a5,a0,1
	li	a4,1431654400
	or	a5,a3,a5
	addi	a4,a4,1365
	srli	a3,a1,1
	and	a5,a5,a4
	sub	a5,a0,a5
	and	a4,a3,a4
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	sub	a1,a1,a0
	slli	a2,a1,30
	srli	a3,a5,2
	li	a4,858992640
	addi	a4,a4,819
	or	a3,a2,a3
	and	a3,a3,a4
	srli	a2,a1,2
	and	a5,a5,a4
	add	a5,a3,a5
	and	a1,a1,a4
	and	a4,a2,a4
	add	a4,a4,a1
	sltu	a3,a5,a3
	add	a3,a3,a4
	slli	a2,a3,28
	srli	a4,a5,4
	or	a4,a2,a4
	add	a5,a4,a5
	srli	a2,a3,4
	add	a2,a2,a3
	sltu	a4,a5,a4
	li	a3,252645376
	addi	a3,a3,-241
	add	a4,a4,a2
	and	a5,a5,a3
	and	a4,a4,a3
	add	a4,a4,a5
	srli	a5,a4,16
	add	a5,a5,a4
	srli	a0,a5,8
	add	a0,a0,a5
	andi	a0,a0,127
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
	addi	a4,a4,1365
	and	a5,a5,a4
	sub	a0,a0,a5
	li	a5,858992640
	addi	a5,a5,819
	srli	a4,a0,2
	and	a4,a4,a5
	and	a0,a0,a5
	add	a4,a4,a0
	srli	a5,a4,4
	li	a3,252645376
	add	a5,a5,a4
	addi	a4,a3,-241
	and	a5,a5,a4
	srli	a4,a5,16
	add	a5,a4,a5
	srli	a0,a5,8
	add	a0,a0,a5
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
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	s0,68(sp)
	sw	ra,72(sp)
	sw	s1,64(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	sw	a2,48(sp)
	andi	a5,a2,1
	mv	a4,a0
	mv	t1,a1
	mv	s0,a2
	beq	a5,zero,.L1256
	lui	a5,%hi(.LC9)
	lw	s1,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	sw	a5,52(sp)
.L1253:
	sw	a4,16(sp)
	sw	s1,24(sp)
	sw	t1,20(sp)
	sw	a1,28(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	sw	a4,36(sp)
	sw	t1,32(sp)
	call	__muldf3
	lw	t1,32(sp)
	lw	a4,36(sp)
	mv	s1,a0
.L1251:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	beq	s0,zero,.L1252
	sw	a1,32(sp)
.L1254:
	sw	a4,0(sp)
	sw	a4,8(sp)
	sw	t1,4(sp)
	sw	t1,12(sp)
	lw	a3,4(sp)
	lw	a2,0(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	srli	a5,s0,31
	andi	a3,s0,1
	add	a5,a5,s0
	mv	a4,a0
	mv	t1,a1
	bne	a3,zero,.L1257
	srai	s0,a5,1
	j	.L1254
.L1257:
	lw	a1,32(sp)
	j	.L1253
.L1252:
	lw	a5,48(sp)
	bge	a5,zero,.L1250
	lw	a5,52(sp)
	sw	s1,56(sp)
	sw	a1,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lw	a0,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	call	__divdf3
	mv	s1,a0
.L1250:
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	sw	s1,40(sp)
	sw	a1,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L1256:
	.cfi_restore_state
	lui	a5,%hi(.LC9)
	lw	s1,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	sw	a5,52(sp)
	j	.L1251
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	s1,12(sp)
	sw	a1,4(sp)
	andi	a5,a1,1
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s1,a1
	mv	a1,a0
	beq	a5,zero,.L1265
	lui	a5,%hi(.LC12)
	lw	s0,%lo(.LC12)(a5)
	sw	a5,8(sp)
.L1262:
	mv	a0,s0
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s0,a0
.L1260:
	srli	a4,s1,31
	add	a5,a4,s1
	srai	s1,a5,1
	beq	s1,zero,.L1261
	mv	a0,a1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1262
.L1267:
	mv	a0,a1
	srai	s1,a4,1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1262
	j	.L1267
.L1261:
	lw	a5,4(sp)
	bge	a5,zero,.L1259
	lw	a5,8(sp)
	mv	a1,s0
	lw	a0,%lo(.LC12)(a5)
	call	__divsf3
	mv	s0,a0
.L1259:
	lw	ra,20(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
	.cfi_def_cfa_offset 0
	jr	ra
.L1265:
	.cfi_restore_state
	lui	a5,%hi(.LC12)
	lw	s0,%lo(.LC12)(a5)
	sw	a5,8(sp)
	j	.L1260
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
	bltu	a1,a3,.L1270
	li	a0,2
	bgtu	a1,a3,.L1268
	li	a0,0
	bltu	a5,a2,.L1268
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1270:
	li	a0,0
.L1268:
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
	bltu	a1,a3,.L1276
	li	a0,1
	bgtu	a1,a3,.L1274
	li	a0,-1
	bltu	a5,a2,.L1274
	sgtu	a0,a5,a2
	ret
.L1276:
	li	a0,-1
.L1274:
	ret
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	1284865837
	.word	1481765933
	.set	.LC1,.LC3+4
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC2:
	.word	1056964608
	.section	.srodata.cst8
	.align	3
.LC3:
	.word	0
	.word	1073741824
	.align	3
.LC4:
	.word	0
	.word	1071644672
	.align	3
.LC7:
	.word	0
	.word	-1074790400
	.align	3
.LC8:
	.word	0
	.word	-1075838976
	.align	3
.LC9:
	.word	0
	.word	1072693248
	.align	3
.LC10:
	.word	0
	.word	1070596096
	.section	.srodata.cst4
	.align	2
.LC11:
	.word	1191182336
	.align	2
.LC12:
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
	.globl	__divsf3
	.globl	__divdf3
	.globl	__fixsfsi
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
	.globl	__floatunsidf
	.globl	__clzdi2
	.globl	__clzsi2
	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__muldf3
	.globl	__nedf2
	.globl	__adddf3
	.globl	__mulsf3
	.globl	__nesf2
	.globl	__addsf3
	.globl	__extenddftf2
	.globl	__floatsidf
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__letf2
	.globl	__lesf2
	.globl	__ledf2
	.globl	__getf2
	.globl	__lttf2
	.globl	__gesf2
	.globl	__ltsf2
	.globl	__gedf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__subdf3
	.globl	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
