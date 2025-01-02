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
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	mv	t1,a3
	li	a3,-2147483648
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	sw	ra,40(sp)
	.cfi_offset 1, -4
	and	a1,a1,a3
	and	a3,t1,a3
	mv	s1,a0
	mv	t0,a2
	beq	a1,a3,.L174
	beq	a1,zero,.L173
.L183:
	mv	s1,t0
	mv	s0,t1
.L173:
	lw	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a1,s0
	lw	s0,36(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
.L174:
	.cfi_restore_state
	sw	t1,4(sp)
	sw	a2,0(sp)
	sw	a0,8(sp)
	sw	s0,12(sp)
	sw	a2,20(sp)
	lw	a3,4(sp)
	lw	a2,0(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	sw	t1,16(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	call	__ltdf2
	lw	t1,16(sp)
	lw	t0,20(sp)
	blt	a0,zero,.L183
	lw	ra,40(sp)
	.cfi_restore 1
	mv	a1,s0
	lw	s0,36(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	li	a5,-2147483648
	sw	s0,4(sp)
	sw	s1,0(sp)
	and	a4,a5,a0
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	and	a5,a5,a1
	mv	s0,a0
	mv	s1,a1
	beq	a4,a5,.L186
	beq	a4,zero,.L185
	mv	a0,a1
.L185:
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
.L186:
	.cfi_restore_state
	call	__ltsf2
	mv	a5,s1
	blt	a0,zero,.L189
	mv	a5,s0
.L189:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,12
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
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	lw	a5,12(a2)
	sw	s1,60(sp)
	.cfi_offset 9, -12
	lw	s1,12(a1)
	mv	a4,a1
	li	a1,-2147483648
	sw	s0,64(sp)
	sw	ra,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	and	a0,s1,a1
	and	a1,a5,a1
	lw	t1,0(a4)
	lw	a3,4(a4)
	lw	t2,0(a2)
	lw	t0,4(a2)
	lw	a4,8(a4)
	lw	a2,8(a2)
	beq	a0,a1,.L197
	beq	a0,zero,.L199
.L201:
	mv	t1,t2
	mv	a3,t0
	mv	a4,a2
	mv	s1,a5
.L199:
	sw	s1,12(s0)
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	sw	t1,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	mv	a0,s0
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L197:
	.cfi_restore_state
	addi	a1,sp,28
	addi	a0,sp,44
	sw	t2,28(sp)
	sw	t2,12(sp)
	sw	t0,32(sp)
	sw	t0,8(sp)
	sw	a2,36(sp)
	sw	a2,4(sp)
	sw	a5,40(sp)
	sw	a5,0(sp)
	sw	t1,44(sp)
	sw	t1,24(sp)
	sw	a3,48(sp)
	sw	a3,20(sp)
	sw	a4,52(sp)
	sw	a4,16(sp)
	sw	s1,56(sp)
	call	__lttf2
	lw	a5,0(sp)
	lw	a2,4(sp)
	lw	t0,8(sp)
	lw	t2,12(sp)
	blt	a0,zero,.L201
	lw	t1,24(sp)
	lw	a3,20(sp)
	lw	a4,16(sp)
	mv	t2,t1
	mv	t0,a3
	mv	a2,a4
	mv	a5,s1
	mv	t1,t2
	mv	a3,t0
	mv	a4,a2
	mv	s1,a5
	j	.L199
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	s0,36(sp)
	.cfi_offset 8, -8
	mv	s0,a3
	li	a3,-2147483648
	sw	s1,32(sp)
	mv	t1,a1
	sw	ra,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	and	a1,a1,a3
	and	a3,s0,a3
	mv	t0,a0
	mv	s1,a2
	beq	a1,a3,.L210
	beq	a1,zero,.L209
.L219:
	mv	s1,t0
	mv	s0,t1
.L209:
	lw	ra,40(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a1,s0
	lw	s0,36(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
	.cfi_def_cfa_offset 0
	jr	ra
.L210:
	.cfi_restore_state
	sw	t1,12(sp)
	sw	a2,0(sp)
	sw	a0,8(sp)
	sw	s0,4(sp)
	sw	a0,20(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	sw	t1,16(sp)
	sw	a4,24(sp)
	sw	a5,28(sp)
	call	__ltdf2
	lw	t1,16(sp)
	lw	t0,20(sp)
	blt	a0,zero,.L219
	lw	ra,40(sp)
	.cfi_restore 1
	mv	a1,s0
	lw	s0,36(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
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
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	li	a5,-2147483648
	sw	s0,4(sp)
	sw	s1,0(sp)
	and	a4,a5,a0
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	and	a5,a5,a1
	mv	s1,a0
	mv	s0,a1
	beq	a4,a5,.L222
	mv	a0,a1
	beq	a4,zero,.L221
	mv	a0,s1
.L221:
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
.L222:
	.cfi_restore_state
	call	__ltsf2
	mv	a5,s1
	blt	a0,zero,.L225
	mv	a5,s0
.L225:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,12
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
	mv	a3,a1
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	lw	a4,12(a1)
	sw	s0,64(sp)
	sw	s1,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lw	s1,12(a2)
	lw	a0,8(a3)
	li	a5,-2147483648
	and	a1,a4,a5
	sw	ra,68(sp)
	.cfi_offset 1, -4
	and	a5,s1,a5
	sw	a0,0(sp)
	lw	t2,0(a3)
	lw	t0,4(a3)
	lw	t1,0(a2)
	lw	a3,4(a2)
	lw	a2,8(a2)
	beq	a1,a5,.L233
	beq	a1,zero,.L235
	mv	t1,t2
	mv	a3,t0
	mv	a2,a0
	mv	s1,a4
.L235:
	sw	s1,12(s0)
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	sw	t1,0(s0)
	sw	a3,4(s0)
	sw	a2,8(s0)
	mv	a0,s0
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L233:
	.cfi_restore_state
	sw	a0,52(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	sw	t2,44(sp)
	sw	t2,12(sp)
	sw	t0,48(sp)
	sw	t0,8(sp)
	sw	a4,56(sp)
	sw	a4,4(sp)
	sw	t1,28(sp)
	sw	t1,24(sp)
	sw	a3,32(sp)
	sw	a3,20(sp)
	sw	a2,36(sp)
	sw	a2,16(sp)
	sw	s1,40(sp)
	call	__lttf2
	lw	a4,4(sp)
	lw	t0,8(sp)
	lw	t2,12(sp)
	blt	a0,zero,.L240
	lw	t1,24(sp)
	lw	a3,20(sp)
	lw	a2,16(sp)
	mv	t2,t1
	mv	t0,a3
	mv	a5,a2
	mv	a4,s1
.L237:
	mv	t1,t2
	mv	a3,t0
	mv	a2,a5
	mv	s1,a4
	j	.L235
.L240:
	lw	a5,0(sp)
	j	.L237
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
	beq	a0,zero,.L248
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	a3,a3,%lo(.LANCHOR0)
.L247:
	andi	a5,a0,63
	add	a5,a3,a5
	lbu	a5,0(a5)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	a5,-1(a4)
	bne	a0,zero,.L247
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L248:
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
	beq	a1,zero,.L259
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L253
	sw	a0,4(a5)
.L253:
	ret
.L259:
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
	beq	a5,zero,.L261
	lw	a4,4(a0)
	sw	a4,4(a5)
.L261:
	lw	a4,4(a0)
	beq	a4,zero,.L260
	sw	a5,0(a4)
.L260:
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
	beq	a5,zero,.L270
	sw	s1,28(sp)
	.cfi_offset 9, -12
	li	s0,0
	mv	s1,a1
	j	.L272
.L287:
	lw	a5,12(sp)
	add	s1,s1,a5
	lw	a5,8(sp)
	beq	a5,s0,.L286
.L272:
	lw	a0,4(sp)
	lw	a5,16(sp)
	mv	a1,s1
	sw	s1,0(sp)
	jalr	a5
	addi	s0,s0,1
	bne	a0,zero,.L287
	lw	s1,28(sp)
	.cfi_restore 9
.L269:
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	a0,0(sp)
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L286:
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
.L270:
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
	beq	s0,zero,.L269
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
	beq	a5,zero,.L289
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	li	s0,0
	mv	s1,a1
	j	.L291
.L302:
	lw	a5,16(sp)
	add	s1,s1,a5
	lw	a5,12(sp)
	beq	a5,s0,.L301
.L291:
	lw	a0,4(sp)
	lw	a5,8(sp)
	mv	a1,s1
	sw	s1,0(sp)
	jalr	a5
	addi	s0,s0,1
	bne	a0,zero,.L302
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
.L301:
	.cfi_restore_state
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L289:
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
.L311:
	lbu	a2,0(a0)
	addi	a5,a2,-9
	beq	a2,a4,.L305
	bleu	a5,a3,.L305
	li	a5,43
	beq	a2,a5,.L306
	li	a5,45
	bne	a2,a5,.L321
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	bgtu	a3,a5,.L316
	li	t0,1
.L309:
	li	a0,0
	li	a1,9
.L313:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	t1,a3
	addi	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L313
	bne	t0,zero,.L304
	sub	a0,t1,a5
	ret
.L305:
	addi	a0,a0,1
	j	.L311
.L321:
	addi	a3,a2,-48
	li	a5,9
	mv	a4,a0
	li	t0,0
	bleu	a3,a5,.L309
.L316:
	li	a0,0
.L304:
	ret
.L306:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	li	t0,0
	bleu	a3,a5,.L309
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
.L327:
	lbu	a2,0(a0)
	addi	a5,a2,-9
	beq	a2,a4,.L323
	bleu	a5,a3,.L323
	li	a5,43
	beq	a2,a5,.L324
	li	a5,45
	bne	a2,a5,.L339
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	li	t0,1
	bgtu	a3,a5,.L334
.L328:
	li	a0,0
	li	a1,9
.L331:
	slli	a5,a0,2
	lbu	a2,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a3
	mv	t1,a3
	addi	a3,a2,-48
	addi	a4,a4,1
	bleu	a3,a1,.L331
	bne	t0,zero,.L322
	sub	a0,t1,a5
	ret
.L323:
	addi	a0,a0,1
	j	.L327
.L339:
	addi	a3,a2,-48
	li	a5,9
	mv	a4,a0
	li	t0,0
	bleu	a3,a5,.L328
.L334:
	li	a0,0
.L322:
	ret
.L324:
	lbu	a2,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,a2,-48
	bgtu	a3,a5,.L334
	li	t0,0
	j	.L328
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
.L347:
	lbu	t1,0(a0)
	addi	a5,t1,-9
	beq	t1,a4,.L341
	bleu	a5,a3,.L341
	li	a5,43
	beq	t1,a5,.L342
	li	a5,45
	bne	t1,a5,.L361
	lbu	t1,1(a0)
	li	a5,9
	addi	a2,a0,1
	addi	a3,t1,-48
	bgtu	a3,a5,.L352
	li	a5,1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	a5,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
.L345:
	li	a0,0
	li	a1,0
	li	s1,9
.L349:
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
	bleu	a3,s1,.L349
	lw	a4,0(sp)
	bne	a4,zero,.L360
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
.L341:
	.cfi_def_cfa_offset 12
	addi	a0,a0,1
	j	.L347
.L361:
	addi	a3,t1,-48
	li	a5,9
	sw	zero,0(sp)
	mv	a2,a0
	bgtu	a3,a5,.L352
.L359:
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	j	.L345
.L360:
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L342:
	.cfi_def_cfa_offset 12
	lbu	t1,1(a0)
	li	a5,9
	sw	zero,0(sp)
	addi	a3,t1,-48
	addi	a2,a0,1
	bleu	a3,a5,.L359
.L352:
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
	beq	a2,zero,.L363
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
.L366:
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
	blt	a0,zero,.L367
	beq	a0,zero,.L376
	lw	a4,8(sp)
	sub	s1,a2,a5
	add	a4,s0,a4
	sw	a4,4(sp)
	bne	s1,zero,.L366
.L377:
	lw	s1,20(sp)
	.cfi_restore 9
.L363:
	li	s0,0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L367:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a5
	bne	s1,zero,.L366
	j	.L377
.L376:
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
	beq	a2,zero,.L383
.L379:
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
	beq	a0,zero,.L378
	lw	a5,0(sp)
	ble	a0,zero,.L381
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	bne	s1,zero,.L379
.L383:
	li	s0,0
.L378:
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
.L381:
	.cfi_restore_state
	beq	a5,zero,.L383
	mv	s1,a5
	j	.L379
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
	j	.L410
.L412:
	beq	a1,a5,.L411
	addi	a0,a0,4
.L410:
	lw	a5,0(a0)
	bne	a5,zero,.L412
	li	a0,0
	ret
.L411:
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
.L416:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L415
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a5,zero,.L416
.L415:
	li	a0,-1
	blt	a5,a4,.L413
	sgt	a0,a5,a4
.L413:
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
.L421:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L421
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
	beq	a5,zero,.L426
	mv	a5,a0
.L425:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L425
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L426:
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
	beq	a2,zero,.L434
.L438:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L431
	beq	a5,zero,.L431
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L438
.L434:
	li	a0,0
	ret
.L431:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L439
	ret
.L439:
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
	beq	a2,zero,.L444
.L449:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L448
	addi	a0,a0,4
	bne	a2,zero,.L449
.L444:
	li	a0,0
	ret
.L448:
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
	beq	a2,zero,.L456
.L462:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L461
	addi	a1,a1,4
	bne	a2,zero,.L462
.L456:
	li	a0,0
	ret
.L461:
	sgt	a0,a4,a5
	blt	a4,a5,.L463
	ret
.L463:
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
	beq	a2,zero,.L465
	slli	a2,a2,2
	call	memcpy
.L465:
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
	beq	a0,a1,.L478
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L484
	beq	a2,zero,.L478
	slli	a5,a5,2
	li	a2,-4
.L475:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L475
	ret
.L484:
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L485
.L473:
	lw	a3,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	a3,0(a4)
	addi	a4,a4,4
	bne	a5,t1,.L473
.L478:
	ret
.L485:
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
	beq	a2,zero,.L487
	mv	a4,a0
	li	a3,-1
.L488:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L488
.L487:
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
	bgeu	a0,a1,.L494
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L493
.L496:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L496
	ret
.L494:
	bne	a0,a1,.L522
.L493:
	ret
.L522:
	beq	a2,zero,.L493
	addi	a5,a2,-1
	li	a4,6
	bleu	a5,a4,.L520
	or	a5,a1,a0
	andi	a5,a5,3
	bne	a5,zero,.L520
	addi	a5,a0,1
	sub	a4,a1,a5
	sltiu	a4,a4,3
	bne	a4,zero,.L497
	andi	t1,a2,-4
	add	a3,a0,t1
	mv	a5,a1
.L498:
	lw	a4,0(a0)
	addi	a0,a0,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a3,a0,.L498
	add	a1,a1,t1
	sub	a5,a2,t1
	beq	a2,t1,.L493
	lbu	a2,0(a3)
	li	a4,1
	sb	a2,0(a1)
	beq	a5,a4,.L493
	lbu	a2,1(a3)
	li	a4,2
	sb	a2,1(a1)
	beq	a5,a4,.L493
	lbu	a5,2(a3)
	sb	a5,2(a1)
	ret
.L520:
	addi	a5,a0,1
.L497:
	add	a2,a0,a2
	j	.L501
.L523:
	addi	a5,a5,1
.L501:
	lbu	a4,-1(a5)
	addi	a1,a1,1
	sb	a4,-1(a1)
	bne	a5,a2,.L523
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
	blt	a4,zero,.L525
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	sll	a4,a0,a4
	li	a3,0
	blt	a5,zero,.L527
.L529:
	srl	a0,a1,a5
	li	a1,0
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L525:
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
	bge	a5,zero,.L529
.L527:
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
	blt	a4,zero,.L531
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	srl	a4,a1,a4
	li	a3,0
	blt	a5,zero,.L533
.L535:
	sll	a1,a0,a5
	li	a0,0
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L531:
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
	bge	a5,zero,.L535
.L533:
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
	j	.L550
.L548:
	beq	a5,a3,.L552
.L550:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	beq	a4,zero,.L548
	mv	a0,a5
	ret
.L552:
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
	beq	a0,zero,.L556
	andi	a0,a0,1
	bne	a0,zero,.L553
	li	a0,1
.L555:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L555
	ret
.L556:
	li	a0,0
.L553:
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
	beq	a0,zero,.L565
	blt	s0,zero,.L580
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
.L567:
	andi	a5,s0,1
	beq	a5,zero,.L568
.L569:
	mv	a0,s1
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s1,a0
.L568:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L565
	mv	a0,a1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L569
.L581:
	mv	a0,a1
	srai	s0,a5,1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L569
	j	.L581
.L565:
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
.L580:
	.cfi_restore_state
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	j	.L567
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
	beq	a0,zero,.L583
	lw	a5,48(sp)
	blt	a5,zero,.L599
	lui	a3,%hi(.LC3)
	lw	s0,%lo(.LC3)(a3)
	lw	s1,%lo(.LC3+4)(a3)
.L585:
	andi	a3,a5,1
	beq	a3,zero,.L586
.L587:
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
.L586:
	srli	a3,a5,31
	add	a5,a3,a5
	srai	a5,a5,1
	beq	a5,zero,.L583
	mv	a0,s0
	mv	a1,s1
	mv	s0,a5
	sw	t0,32(sp)
	mv	s1,a4
.L588:
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
	bne	a3,zero,.L597
	srai	s0,a4,1
	j	.L588
.L583:
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
.L599:
	.cfi_restore_state
	lui	a3,%hi(.LC4)
	lw	s0,%lo(.LC4)(a3)
	lw	s1,%lo(.LC4+4)(a3)
	j	.L585
.L597:
	mv	a5,s0
	mv	a4,s1
	lw	t0,32(sp)
	mv	s0,a0
	mv	s1,a1
	j	.L587
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
	beq	a0,zero,.L601
	li	s1,0
	li	a5,0
	li	a4,0
	li	a3,1073610752
	blt	s0,zero,.L603
	li	a3,1073741824
.L603:
	andi	a2,s0,1
	beq	a2,zero,.L604
.L605:
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
.L604:
	srli	a2,s0,31
	add	a2,a2,s0
	srai	s0,a2,1
	beq	s0,zero,.L601
	mv	a0,s1
	sw	t2,4(sp)
	sw	t0,8(sp)
	mv	s1,t1
.L606:
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
	bne	a1,zero,.L615
	srai	s0,a2,1
	j	.L606
.L615:
	mv	t1,s1
	lw	t2,4(sp)
	lw	t0,8(sp)
	mv	s1,a0
	j	.L605
.L601:
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
	beq	a2,zero,.L618
	addi	a5,a2,-1
	li	a4,3
	bleu	a5,a4,.L619
	or	a5,a0,a1
	and	a5,a5,a4
	bne	a5,zero,.L619
	andi	t0,a2,-4
	add	t1,a1,t0
	mv	a5,a0
.L620:
	lw	a3,0(a5)
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	xor	a4,a4,a3
	sw	a4,-4(a5)
	bne	t1,a1,.L620
	add	a5,a0,t0
	sub	a3,a2,t0
	beq	a2,t0,.L618
	lbu	a4,0(a5)
	lbu	a1,0(t1)
	li	a2,1
	xor	a4,a4,a1
	sb	a4,0(a5)
	beq	a3,a2,.L618
	lbu	a1,1(a5)
	lbu	a4,1(t1)
	li	a2,2
	xor	a4,a4,a1
	sb	a4,1(a5)
	beq	a3,a2,.L618
	lbu	a3,2(a5)
	lbu	a4,2(t1)
	xor	a4,a4,a3
	sb	a4,2(a5)
	ret
.L619:
	add	a2,a1,a2
	mv	a5,a0
.L622:
	lbu	a3,0(a5)
	lbu	a4,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L622
.L618:
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
	beq	a5,zero,.L636
	mv	a5,a0
.L631:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L631
.L642:
	beq	a2,zero,.L633
.L644:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L643
	addi	a5,a5,1
	bne	a2,zero,.L644
.L633:
	sb	zero,0(a5)
	ret
.L643:
	ret
.L636:
	mv	a5,a0
	j	.L642
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
	beq	a1,zero,.L653
.L646:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L648
	ret
.L648:
	addi	a0,a0,1
	bne	a1,a0,.L646
	ret
.L653:
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
	beq	a3,zero,.L659
.L663:
	mv	a5,a1
	j	.L658
.L657:
	beq	a4,a3,.L656
.L658:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L657
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L663
.L659:
	li	a0,0
.L656:
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
.L666:
	lbu	a4,0(a5)
	bne	a1,a4,.L665
	mv	a0,a5
.L665:
	addi	a5,a5,1
	bne	a4,zero,.L666
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
	beq	t0,zero,.L679
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	mv	a5,a1
.L670:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L670
	sub	s0,a5,a1
	mv	a0,a3
	addi	s0,s0,-1
	bne	a5,a1,.L678
	j	.L668
.L693:
	addi	a3,a3,1
	beq	a5,zero,.L692
.L678:
	lbu	a5,0(a3)
	bne	a5,t0,.L693
	add	t2,a3,s0
	mv	a0,a1
	mv	a4,a3
	mv	a2,t0
.L672:
	beq	a4,t2,.L674
	addi	a4,a4,1
	bne	a5,a2,.L675
	lbu	a5,0(a4)
	lbu	a2,1(a0)
	addi	t1,a0,1
	beq	a5,zero,.L674
	mv	a0,t1
	bne	a2,zero,.L672
.L675:
	addi	a3,a3,1
	j	.L678
.L692:
	li	a0,0
.L668:
	lw	s0,0(sp)
	.cfi_remember_state
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L674:
	.cfi_restore_state
	bne	a5,a2,.L675
	lw	s0,0(sp)
	.cfi_restore 8
	mv	a0,a3
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L679:
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
	blt	a0,zero,.L705
	lw	a5,12(sp)
	li	a2,0
	li	a3,0
	sw	a5,16(sp)
	lw	a5,0(sp)
	lw	a0,16(sp)
	sw	a5,20(sp)
	lw	a1,20(sp)
	call	__gtdf2
	ble	a0,zero,.L698
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L697
.L698:
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
.L705:
	.cfi_restore_state
	sw	s1,32(sp)
	sw	s0,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	li	a2,0
	li	a3,0
	call	__gtdf2
	ble	a0,zero,.L698
.L697:
	lw	a4,0(sp)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,0(sp)
	j	.L698
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	beq	a3,zero,.L723
	bltu	a1,a3,.L715
	sub	a1,a1,a3
	add	t1,a0,a1
	bgtu	a0,t1,.L715
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	lbu	s0,0(a2)
	addi	a3,a3,-1
	addi	t2,a2,1
.L712:
	lbu	a5,0(a0)
	addi	t0,a0,1
	beq	a5,s0,.L726
	mv	a0,t0
.L708:
	bgeu	t1,a0,.L712
.L717:
	li	a0,0
.L706:
	lw	s0,4(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L726:
	.cfi_restore_state
	mv	a4,t2
	beq	a3,zero,.L706
.L711:
	mv	a5,t0
	add	s1,t0,a3
	j	.L709
.L710:
	beq	a5,s1,.L706
.L709:
	lbu	a1,0(a5)
	lbu	a2,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a1,a2,.L710
	bgtu	t0,t1,.L717
	lbu	a5,0(t0)
	addi	a0,t0,1
	bne	a5,s0,.L708
	mv	a5,t0
	mv	a4,t2
	mv	t0,a0
	mv	a0,a5
	j	.L711
.L715:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	.cfi_restore 9
	li	a0,0
	ret
.L723:
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
	beq	a2,zero,.L728
	call	memmove
.L728:
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
	blt	a0,zero,.L757
	sw	s1,24(sp)
	sw	s0,28(sp)
	lui	a3,%hi(.LC9)
	lw	a2,%lo(.LC9)(a3)
	lw	a0,24(sp)
	lw	a1,28(sp)
	lw	a3,%lo(.LC9+4)(a3)
	call	__gedf2
	sw	zero,60(sp)
	blt	a0,zero,.L758
.L736:
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
.L742:
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
	bge	a0,zero,.L742
	mv	s1,a5
	mv	s0,a4
.L743:
	lw	a5,56(sp)
	lw	a4,60(sp)
	sw	t0,0(a5)
	mv	a5,s0
	beq	a4,zero,.L733
	li	a3,-2147483648
	xor	a5,s0,a3
.L733:
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
.L758:
	.cfi_restore_state
	lui	a3,%hi(.LC4)
	sw	s1,40(sp)
	sw	s0,44(sp)
	lw	a2,%lo(.LC4)(a3)
	lw	a0,40(sp)
	lw	a1,44(sp)
	lw	a3,%lo(.LC4+4)(a3)
	call	__ltdf2
	bge	a0,zero,.L739
	sw	s1,76(sp)
	sw	s0,80(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	li	a2,0
	li	a3,0
	call	__nedf2
	bne	a0,zero,.L748
.L739:
	lw	a5,56(sp)
	sw	zero,0(a5)
	mv	a5,s0
	j	.L733
.L757:
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
	bgt	a0,zero,.L759
	li	a5,1
	lw	s0,24(sp)
	sw	a5,60(sp)
	j	.L736
.L759:
	lui	a3,%hi(.LC8)
	sw	s1,60(sp)
	sw	s0,64(sp)
	lw	a2,%lo(.LC8)(a3)
	lw	a0,60(sp)
	lw	a1,64(sp)
	lw	a3,%lo(.LC8+4)(a3)
	call	__gtdf2
	ble	a0,zero,.L739
	li	a5,1
	sw	a5,60(sp)
.L737:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	s0,24(sp)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,40(sp)
	li	t0,0
	sw	a5,44(sp)
	mv	a4,s1
	mv	a5,s0
.L744:
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
	blt	a0,zero,.L744
	mv	s1,a4
	mv	s0,a5
	j	.L743
.L748:
	sw	s0,24(sp)
	j	.L737
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
	beq	a5,zero,.L764
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
.L763:
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
	bne	t2,zero,.L763
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L764:
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
	bltu	a1,a4,.L771
	j	.L772
.L775:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L773
	beq	a0,zero,.L774
.L771:
	addi	a0,a0,-1
	bge	a1,zero,.L775
.L772:
	li	a0,0
.L777:
	bltu	a4,a1,.L776
	sub	a4,a4,a1
	or	a0,a0,a5
.L776:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L777
.L774:
	bne	a2,zero,.L787
.L770:
	ret
.L773:
	bne	a5,zero,.L772
	li	a0,0
	beq	a2,zero,.L770
.L787:
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
	beq	a0,zero,.L790
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
.L790:
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
	beq	a5,a3,.L804
.L799:
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
.L804:
	bne	a4,a5,.L799
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
	beq	a4,zero,.L808
.L807:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L807
	ret
.L808:
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
	bltu	a0,a1,.L814
	add	a5,a1,a2
	bleu	a0,a5,.L844
.L814:
	beq	t0,zero,.L845
	slli	t0,t0,3
	add	t0,t0,a1
	mv	a5,a1
	mv	a4,a0
.L817:
	lw	t1,0(a5)
	lw	t2,4(a5)
	addi	a5,a5,8
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a4,a4,8
	bne	a5,t0,.L817
	bleu	a2,a3,.L841
	sub	t2,a2,a3
	addi	a4,t2,-1
	li	a5,6
	bleu	a4,a5,.L846
	addi	t1,a3,1
	add	t1,a1,t1
	add	a4,a0,a3
	sub	t1,a4,t1
	sltiu	t1,t1,3
	add	a5,a1,a3
	bne	t1,zero,.L819
	or	t1,a5,a4
	andi	t1,t1,3
	bne	t1,zero,.L819
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	andi	s0,t2,-4
	add	t0,a5,s0
.L820:
	lw	t1,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	t1,-4(a4)
	bne	a5,t0,.L820
	add	a3,a3,s0
	beq	t2,s0,.L810
	add	a5,a1,a3
	lbu	t1,0(a5)
	add	a4,a0,a3
	addi	a5,a3,1
	sb	t1,0(a4)
	bleu	a2,a5,.L810
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	a3,a3,2
	sb	a4,0(a5)
	bleu	a2,a3,.L810
	add	a1,a1,a3
	lbu	a5,0(a1)
	add	a0,a0,a3
	sb	a5,0(a0)
.L810:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L844:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L847
.L815:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L815
	ret
.L845:
	add	a4,a0,a3
	add	a5,a1,a3
	beq	a2,zero,.L848
.L819:
	add	a1,a1,a2
.L822:
	lbu	a3,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,.L822
	ret
.L841:
	ret
.L848:
	ret
.L847:
	ret
.L846:
	add	a4,a0,a3
	add	a5,a1,a3
	j	.L819
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
	bltu	a0,a1,.L853
	add	a5,a1,a2
	bleu	a0,a5,.L881
.L853:
	beq	t0,zero,.L876
	addi	a5,t0,-1
	li	a4,8
	bleu	a5,a4,.L856
	or	a5,a1,a0
	andi	a5,a5,3
	bne	a5,zero,.L856
	addi	a5,a1,2
	beq	a0,a5,.L856
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	andi	t2,a2,-4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	add	t1,a1,t2
	srli	s0,a2,2
	mv	a5,a1
	mv	a4,a0
.L857:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L857
	slli	a5,s0,1
	beq	t0,a5,.L852
	add	a5,a1,t2
	lh	a5,0(a5)
	add	t2,a0,t2
	sh	a5,0(t2)
.L852:
	andi	a5,a2,1
	beq	a5,zero,.L849
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
.L849:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L881:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L882
.L854:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L854
	ret
.L856:
	slli	t0,t0,1
	add	t0,t0,a1
	mv	a5,a1
	mv	a4,a0
.L859:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	t0,a5,.L859
.L876:
	andi	a5,a2,1
	beq	a5,zero,.L877
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
.L877:
	ret
.L882:
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
	bltu	a0,a1,.L887
	add	a5,a1,a2
	bleu	a0,a5,.L917
.L887:
	beq	t1,zero,.L918
	slli	t1,t1,2
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L890:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L890
	bleu	a2,t0,.L914
	sub	t2,a2,t0
	addi	a4,t2,-1
	li	a5,6
	bleu	a4,a5,.L919
	addi	a3,t0,1
	add	a3,a1,a3
	add	a4,a0,t0
	sub	a3,a4,a3
	sltiu	a3,a3,3
	add	a5,a1,t0
	bne	a3,zero,.L892
	or	a3,a5,a4
	andi	a3,a3,3
	bne	a3,zero,.L892
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	s0,0(sp)
	.cfi_offset 8, -4
	andi	s0,t2,-4
	add	t1,a5,s0
.L893:
	lw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	sw	a3,-4(a4)
	bne	a5,t1,.L893
	add	t0,t0,s0
	beq	t2,s0,.L883
	add	a5,a1,t0
	lbu	a3,0(a5)
	add	a4,a0,t0
	addi	a5,t0,1
	sb	a3,0(a4)
	bleu	a2,a5,.L883
	add	a4,a1,a5
	lbu	a4,0(a4)
	add	a5,a0,a5
	addi	t0,t0,2
	sb	a4,0(a5)
	bleu	a2,t0,.L883
	add	a1,a1,t0
	lbu	a5,0(a1)
	add	a0,a0,t0
	sb	a5,0(a0)
.L883:
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L917:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L920
.L888:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L888
	ret
.L918:
	add	a4,a0,t0
	add	a5,a1,t0
	beq	a2,zero,.L921
.L892:
	add	a1,a1,a2
.L895:
	lbu	a3,0(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	sb	a3,-1(a4)
	bne	a5,a1,.L895
	ret
.L914:
	ret
.L921:
	ret
.L920:
	ret
.L919:
	add	a4,a0,t0
	add	a5,a1,t0
	j	.L892
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
	bne	a4,zero,.L937
	srai	a0,a0,14
	bne	a0,zero,.L934
	srai	a4,a5,13
	bne	a4,zero,.L938
	srai	a4,a5,12
	bne	a4,zero,.L939
	srai	a4,a5,11
	bne	a4,zero,.L940
	srai	a4,a5,10
	bne	a4,zero,.L941
	srai	a4,a5,9
	bne	a4,zero,.L942
	srai	a4,a5,8
	bne	a4,zero,.L943
	srai	a4,a5,7
	bne	a4,zero,.L944
	srai	a4,a5,6
	bne	a4,zero,.L945
	srai	a4,a5,5
	bne	a4,zero,.L946
	srai	a4,a5,4
	bne	a4,zero,.L947
	srai	a4,a5,3
	bne	a4,zero,.L948
	srai	a4,a5,2
	bne	a4,zero,.L949
	srai	a4,a5,1
	bne	a4,zero,.L950
	seqz	a0,a5
	addi	a0,a0,15
	ret
.L950:
	li	a0,14
.L934:
	ret
.L937:
	li	a0,0
	ret
.L948:
	li	a0,12
	ret
.L938:
	li	a0,2
	ret
.L939:
	li	a0,3
	ret
.L940:
	li	a0,4
	ret
.L941:
	li	a0,5
	ret
.L942:
	li	a0,6
	ret
.L943:
	li	a0,7
	ret
.L944:
	li	a0,8
	ret
.L945:
	li	a0,9
	ret
.L946:
	li	a0,10
	ret
.L947:
	li	a0,11
	ret
.L949:
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
	bne	a5,zero,.L955
	andi	a5,a0,2
	bne	a5,zero,.L956
	andi	a5,a0,4
	bne	a5,zero,.L957
	andi	a5,a0,8
	bne	a5,zero,.L958
	andi	a5,a0,16
	bne	a5,zero,.L959
	andi	a5,a0,32
	bne	a5,zero,.L960
	andi	a5,a0,64
	bne	a5,zero,.L961
	andi	a5,a0,128
	bne	a5,zero,.L962
	andi	a5,a0,256
	bne	a5,zero,.L963
	andi	a5,a0,512
	bne	a5,zero,.L964
	andi	a5,a0,1024
	bne	a5,zero,.L965
	slli	a4,a0,20
	li	a5,4096
	blt	a4,zero,.L966
	and	a5,a0,a5
	bne	a5,zero,.L967
	slli	a5,a0,18
	blt	a5,zero,.L968
	slli	a5,a0,17
	blt	a5,zero,.L969
	srai	a0,a0,15
	seqz	a0,a0
	addi	a0,a0,15
	ret
.L955:
	li	a0,0
	ret
.L956:
	li	a0,1
	ret
.L967:
	li	a0,12
	ret
.L957:
	li	a0,2
	ret
.L958:
	li	a0,3
	ret
.L959:
	li	a0,4
	ret
.L960:
	li	a0,5
	ret
.L961:
	li	a0,6
	ret
.L962:
	li	a0,7
	ret
.L963:
	li	a0,8
	ret
.L964:
	li	a0,9
	ret
.L965:
	li	a0,10
	ret
.L966:
	li	a0,11
	ret
.L968:
	li	a0,13
	ret
.L969:
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
	bge	a0,zero,.L978
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
.L978:
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
	beq	a4,zero,.L984
.L983:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L983
	ret
.L984:
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
	beq	a4,zero,.L989
	beq	a1,zero,.L990
.L988:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	srli	a1,a1,1
	add	a0,a0,a5
	slli	a4,a4,1
	bne	a1,zero,.L988
	ret
.L989:
	ret
.L990:
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
	bgtu	a4,a1,.L993
	j	.L994
.L997:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L995
	beq	a0,zero,.L996
.L993:
	addi	a0,a0,-1
	bge	a1,zero,.L997
.L994:
	li	a0,0
.L999:
	bltu	a4,a1,.L998
	sub	a4,a4,a1
	or	a0,a0,a5
.L998:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L999
.L996:
	bne	a2,zero,.L1009
.L992:
	ret
.L995:
	bne	a5,zero,.L994
	li	a0,0
	beq	a2,zero,.L992
.L1009:
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
	blt	a0,zero,.L1013
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
.L1013:
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
	blt	a0,zero,.L1018
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
.L1018:
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
	blt	a1,zero,.L1038
	beq	a1,zero,.L1030
	li	a2,0
.L1026:
	li	a4,32
	li	a0,0
	j	.L1029
.L1039:
	beq	a4,zero,.L1028
.L1029:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	addi	a4,a4,-1
	srai	a1,a1,1
	andi	a4,a4,0xff
	add	a0,a0,a5
	slli	a3,a3,1
	bne	a1,zero,.L1039
.L1028:
	beq	a2,zero,.L1024
	neg	a0,a0
	ret
.L1030:
	li	a0,0
.L1024:
	ret
.L1038:
	neg	a1,a1
	li	a2,1
	j	.L1026
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
	blt	a0,zero,.L1059
.L1041:
	bge	a1,zero,.L1042
	neg	a1,a1
	mv	a2,a5
.L1042:
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L1043
	j	.L1044
.L1046:
	beq	a4,zero,.L1047
.L1043:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L1046
.L1047:
	li	a0,0
	beq	a5,zero,.L1045
.L1044:
	li	a0,0
.L1049:
	bltu	a3,a1,.L1048
	sub	a3,a3,a1
	or	a0,a0,a5
.L1048:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1049
.L1045:
	beq	a2,zero,.L1040
	neg	a0,a0
.L1040:
	ret
.L1059:
	neg	a0,a0
	li	a5,0
	li	a2,1
	j	.L1041
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
	bge	a0,zero,.L1061
	neg	a0,a0
	li	a2,1
.L1061:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L1062
	j	.L1068
.L1065:
	beq	a4,zero,.L1066
.L1062:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L1065
.L1066:
	beq	a5,zero,.L1064
.L1068:
	srli	a5,a5,1
	bltu	a3,a1,.L1067
	sub	a3,a3,a1
.L1067:
	srli	a1,a1,1
	bne	a5,zero,.L1068
	mv	a0,a3
.L1064:
	beq	a2,zero,.L1060
	neg	a0,a0
.L1060:
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
	bgeu	a1,a0,.L1192
	slli	a5,a1,16
	srai	a5,a5,16
	blt	a5,zero,.L1081
	slli	a5,a1,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1082
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1083
	slli	a5,a1,2
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1084
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1085
	slli	a5,a1,3
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1086
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1087
	slli	a5,a1,4
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1088
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1089
	slli	a5,a1,5
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1090
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1091
	slli	a5,a1,6
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1092
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1093
	slli	a5,a1,7
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1094
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1095
	slli	a5,a1,8
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1096
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1097
	slli	a5,a1,9
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1098
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1099
	slli	a5,a1,10
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1100
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1101
	slli	a5,a1,11
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1102
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1103
	slli	a5,a1,12
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1104
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1105
	slli	a5,a1,13
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1106
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1107
	slli	a5,a1,14
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	a0,a5,.L1108
	slli	a4,a5,16
	srai	a4,a4,16
	blt	a4,zero,.L1109
	slli	a1,a1,15
	slli	a3,a1,16
	srli	a3,a3,16
	bleu	a0,a3,.L1110
	bne	a3,zero,.L1193
.L1111:
	bne	a2,zero,.L1150
	mv	a0,a3
	ret
.L1150:
	ret
.L1098:
	bltu	a0,a5,.L1144
	sub	a0,a0,a5
	li	a1,512
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
.L1113:
	srli	t1,a1,2
	srli	a4,a5,2
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1114
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1114:
	srli	t1,a1,3
	srli	a4,a5,3
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1115
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1115:
	srli	t1,a1,4
	srli	a4,a5,4
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1116
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1116:
	srli	t1,a1,5
	srli	a4,a5,5
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1117
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1117:
	srli	t1,a1,6
	srli	a4,a5,6
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1118
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1118:
	srli	t1,a1,7
	srli	a4,a5,7
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1119
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1119:
	srli	t1,a1,8
	srli	a4,a5,8
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1120
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1120:
	srli	t1,a1,9
	srli	a4,a5,9
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1121
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1121:
	srli	t1,a1,10
	srli	a4,a5,10
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1122
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1122:
	srli	t1,a1,11
	srli	a4,a5,11
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1123
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1123:
	srli	t1,a1,12
	srli	a4,a5,12
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1124
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1124:
	srli	t1,a1,13
	srli	a4,a5,13
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1125
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1125:
	srli	t1,a1,14
	srli	a4,a5,14
	beq	t1,zero,.L1111
	bltu	a0,a4,.L1126
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
.L1126:
	li	a4,16384
	srli	a5,a5,15
	beq	a1,a4,.L1111
	bltu	a0,a5,.L1134
	sub	a5,a0,a5
	slli	a0,a5,16
	srli	a0,a0,16
	ori	a3,a3,1
	j	.L1111
.L1193:
	li	a5,-32768
	add	a3,a0,a5
	slli	a0,a3,16
	li	a5,32768
	li	a4,16384
	srli	a0,a0,16
	mv	t1,a4
	mv	a1,a5
	mv	a3,a5
.L1131:
	bltu	a0,a4,.L1113
	sub	a4,a0,a4
	slli	a0,a4,16
	srli	a0,a0,16
	or	a3,a3,t1
	j	.L1113
.L1134:
	li	a0,0
	j	.L1111
.L1192:
	li	a3,0
	bne	a1,a0,.L1111
	li	a3,1
	li	a0,0
	j	.L1111
.L1081:
	sub	a1,a0,a1
	slli	a0,a1,16
	srli	a0,a0,16
	li	a3,1
	j	.L1111
.L1082:
	bltu	a0,a5,.L1136
	sub	a0,a0,a5
	li	a1,2
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1083:
	sub	a0,a0,a5
	slli	a4,a1,17
	slli	a0,a0,16
	li	a1,2
	srli	a0,a0,16
	srli	a4,a4,17
	mv	a3,a1
	li	t1,1
	j	.L1131
.L1084:
	bltu	a0,a5,.L1137
	sub	a0,a0,a5
	li	a1,4
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1085:
	sub	a0,a0,a5
	li	a1,4
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,2
	j	.L1131
.L1086:
	bltu	a0,a5,.L1138
	sub	a0,a0,a5
	li	a1,8
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1087:
	sub	a0,a0,a5
	li	a1,8
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,4
	j	.L1131
.L1088:
	bltu	a0,a5,.L1139
	sub	a0,a0,a5
	li	a1,16
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1089:
	sub	a0,a0,a5
	li	a1,16
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,8
	j	.L1131
.L1090:
	bltu	a0,a5,.L1140
	sub	a0,a0,a5
	li	a1,32
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1091:
	sub	a0,a0,a5
	li	a1,32
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,16
	j	.L1131
.L1092:
	bltu	a0,a5,.L1141
	sub	a0,a0,a5
	li	a1,64
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1093:
	sub	a0,a0,a5
	li	a1,64
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,32
	j	.L1131
.L1094:
	bltu	a0,a5,.L1142
	sub	a0,a0,a5
	li	a1,128
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1095:
	sub	a0,a0,a5
	li	a1,128
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,64
	j	.L1131
.L1097:
	sub	a0,a0,a5
	li	a1,256
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,128
	j	.L1131
.L1099:
	sub	a0,a0,a5
	li	a1,512
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,256
	j	.L1131
.L1136:
	li	a1,2
.L1130:
	srli	t1,a1,1
	srli	a4,a5,1
	li	a3,0
	j	.L1131
.L1101:
	sub	a0,a0,a5
	li	a1,1024
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,512
	j	.L1131
.L1137:
	li	a1,4
	j	.L1130
.L1103:
	li	a1,4096
	sub	a0,a0,a5
	addi	a1,a1,-2048
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,1024
	j	.L1131
.L1105:
	li	t1,4096
	sub	a0,a0,a5
	mv	a1,t1
	slli	a0,a0,16
	srli	a0,a0,16
	addi	t1,t1,-2048
	mv	a3,a1
	srli	a4,a5,1
	j	.L1131
.L1138:
	li	a1,8
	j	.L1130
.L1107:
	sub	a0,a0,a5
	li	a1,8192
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,4096
	j	.L1131
.L1139:
	li	a1,16
	j	.L1130
.L1109:
	sub	a0,a0,a5
	li	a1,16384
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	srli	a4,a5,1
	li	t1,8192
	j	.L1131
.L1140:
	li	a1,32
	j	.L1130
.L1141:
	li	a1,64
	j	.L1130
.L1110:
	slli	a5,a0,16
	srai	a5,a5,16
	blt	a5,zero,.L1135
	li	a5,32768
	mv	a1,a5
	j	.L1130
.L1142:
	li	a1,128
	j	.L1130
.L1096:
	bltu	a0,a5,.L1143
	sub	a0,a0,a5
	li	a1,256
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1135:
	li	a5,32768
	mv	a1,a5
	mv	a3,a5
	li	a0,0
	j	.L1113
.L1143:
	li	a1,256
	j	.L1130
.L1106:
	bltu	a0,a5,.L1148
	sub	a0,a0,a5
	li	a1,8192
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1100:
	bltu	a0,a5,.L1145
	sub	a0,a0,a5
	li	a1,1024
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1148:
	li	a1,8192
	j	.L1130
.L1145:
	li	a1,1024
	j	.L1130
.L1144:
	li	a1,512
	j	.L1130
.L1104:
	bltu	a0,a5,.L1147
	sub	a0,a0,a5
	li	a1,4096
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1102:
	li	a1,4096
	bltu	a0,a5,.L1146
	sub	a0,a0,a5
	addi	a1,a1,-2048
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1108:
	bltu	a0,a5,.L1149
	sub	a0,a0,a5
	li	a1,16384
	slli	a0,a0,16
	srli	a0,a0,16
	mv	a3,a1
	j	.L1113
.L1147:
	li	a1,4096
	j	.L1130
.L1146:
	addi	a1,a1,-2048
	j	.L1130
.L1149:
	li	a1,16384
	j	.L1130
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
	bgtu	a4,a1,.L1195
	j	.L1196
.L1199:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L1197
	beq	a0,zero,.L1198
.L1195:
	addi	a0,a0,-1
	bge	a1,zero,.L1199
.L1196:
	li	a0,0
.L1201:
	bltu	a4,a1,.L1200
	sub	a4,a4,a1
	or	a0,a0,a5
.L1200:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1201
.L1198:
	bne	a2,zero,.L1211
.L1194:
	ret
.L1197:
	bne	a5,zero,.L1196
	li	a0,0
	beq	a2,zero,.L1194
.L1211:
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
	beq	a5,zero,.L1213
	addi	a1,a2,-32
	sll	a1,a0,a1
	li	a0,0
	ret
.L1213:
	beq	a2,zero,.L1215
	li	a5,32
	sub	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
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
	addi	a0,a2,-32
	sra	a0,a1,a0
	srai	a1,a1,31
	ret
.L1218:
	beq	a2,zero,.L1220
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
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
	beq	a3,zero,.L1226
	li	a0,0
.L1226:
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
	blt	a1,a3,.L1229
	li	a0,2
	bgt	a1,a3,.L1227
	li	a0,0
	bltu	a5,a2,.L1227
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1229:
	li	a0,0
.L1227:
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
	blt	a1,a3,.L1235
	li	a0,1
	bgt	a1,a3,.L1233
	li	a0,-1
	bltu	a5,a2,.L1233
	sgtu	a0,a5,a2
	ret
.L1235:
	li	a0,-1
.L1233:
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
	beq	a5,zero,.L1240
	addi	a0,a2,-32
	srl	a0,a1,a0
	li	a1,0
	ret
.L1240:
	beq	a2,zero,.L1242
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1242:
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
	beq	a5,zero,.L1259
	lui	a5,%hi(.LC9)
	lw	s1,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	sw	a5,52(sp)
.L1256:
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
.L1254:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	beq	s0,zero,.L1255
	sw	a1,32(sp)
.L1257:
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
	bne	a3,zero,.L1260
	srai	s0,a5,1
	j	.L1257
.L1260:
	lw	a1,32(sp)
	j	.L1256
.L1255:
	lw	a5,48(sp)
	bge	a5,zero,.L1253
	lw	a5,52(sp)
	sw	s1,56(sp)
	sw	a1,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lw	a0,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	call	__divdf3
	mv	s1,a0
.L1253:
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
.L1259:
	.cfi_restore_state
	lui	a5,%hi(.LC9)
	lw	s1,%lo(.LC9)(a5)
	lw	a1,%lo(.LC9+4)(a5)
	sw	a5,52(sp)
	j	.L1254
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
	beq	a5,zero,.L1268
	lui	a5,%hi(.LC12)
	lw	s0,%lo(.LC12)(a5)
	sw	a5,8(sp)
.L1265:
	mv	a0,s0
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s0,a0
.L1263:
	srli	a4,s1,31
	add	a5,a4,s1
	srai	s1,a5,1
	beq	s1,zero,.L1264
	mv	a0,a1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1265
.L1270:
	mv	a0,a1
	srai	s1,a4,1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1265
	j	.L1270
.L1264:
	lw	a5,4(sp)
	bge	a5,zero,.L1262
	lw	a5,8(sp)
	mv	a1,s0
	lw	a0,%lo(.LC12)(a5)
	call	__divsf3
	mv	s0,a0
.L1262:
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
.L1268:
	.cfi_restore_state
	lui	a5,%hi(.LC12)
	lw	s0,%lo(.LC12)(a5)
	sw	a5,8(sp)
	j	.L1263
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
	bltu	a1,a3,.L1273
	li	a0,2
	bgtu	a1,a3,.L1271
	li	a0,0
	bltu	a5,a2,.L1271
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1273:
	li	a0,0
.L1271:
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
	bltu	a1,a3,.L1279
	li	a0,1
	bgtu	a1,a3,.L1277
	li	a0,-1
	bltu	a5,a2,.L1277
	sgtu	a0,a5,a2
	ret
.L1279:
	li	a0,-1
.L1277:
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
	.globl	__gesf2
	.globl	__umodsi3
	.globl	__floatundisf
	.globl	__floatundidf
	.globl	__floatunsisf
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
	.globl	__lttf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__subdf3
	.globl	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
