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
	beq	a0,a1,.L3
	beq	a2,zero,.L3
	add	a2,a0,a2
	mv	a5,a0
.L5:
	lbu	a4,0(a1)
	addi	a5,a5,1
	addi	a1,a1,1
	sb	a4,-1(a5)
	bne	a2,a5,.L5
.L3:
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
	bne	a3,zero,.L16
	j	.L17
.L18:
	addi	a0,a0,1
	beq	a3,zero,.L17
.L16:
	lbu	a5,0(a1)
	addi	a3,a3,-1
	addi	a1,a1,1
	sb	a5,0(a0)
	bne	a5,a2,.L18
	addi	a0,a0,1
	ret
.L17:
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
	bne	a2,zero,.L27
	j	.L30
.L29:
	addi	a0,a0,1
	beq	a2,zero,.L30
.L27:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	bne	a5,a1,.L29
	ret
.L30:
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
	beq	a2,zero,.L37
.L43:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,1
	bne	a5,a4,.L42
	addi	a1,a1,1
	bne	a2,zero,.L43
.L37:
	li	a0,0
	ret
.L42:
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
	beq	a2,zero,.L45
	call	memcpy
.L45:
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
	j	.L51
.L53:
	lbu	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L50
.L51:
	mv	a0,a2
	bne	a2,a4,.L53
	li	a0,0
.L50:
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
	beq	a2,zero,.L55
	add	a2,a0,a2
	mv	a5,a0
.L56:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a2,a5,.L56
.L55:
	ret
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
	beq	a5,zero,.L62
.L63:
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L63
.L62:
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
	beq	a5,zero,.L75
.L69:
	beq	a5,a1,.L68
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L69
.L68:
	ret
.L75:
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
.L78:
	lbu	a5,0(a0)
	beq	a5,a1,.L77
	addi	a0,a0,1
	bne	a5,zero,.L78
	li	a0,0
.L77:
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
.L83:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L82
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a5,zero,.L83
.L82:
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
	beq	a5,zero,.L88
	mv	a5,a0
.L87:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L87
	sub	a0,a5,a0
	ret
.L88:
	mv	a5,a0
	sub	a0,a5,a0
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
	beq	a2,zero,.L95
	lbu	a5,0(a0)
	beq	a5,zero,.L92
	addi	a2,a2,-1
	add	a3,a0,a2
	j	.L93
.L105:
	beq	a0,a3,.L92
	addi	a0,a0,1
	bne	a4,a5,.L92
	lbu	a5,0(a0)
	addi	a1,a1,1
	beq	a5,zero,.L92
.L93:
	lbu	a4,0(a1)
	bne	a4,zero,.L105
.L92:
	lbu	a4,0(a1)
	sub	a0,a5,a4
	ret
.L95:
	li	a0,0
	ret
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
	ble	a2,a5,.L106
	andi	a2,a2,-2
	add	a3,a0,a2
.L108:
	lbu	a4,1(a0)
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L108
.L106:
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
	beq	a0,a5,.L114
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L114:
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
	bleu	a0,a5,.L117
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L117:
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
	beq	a0,a5,.L124
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L124:
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
	bleu	a0,a4,.L128
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L131
.L126:
	ret
.L128:
	li	a0,1
	ret
.L131:
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L126
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
	bleu	a0,a4,.L140
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L133
	li	a4,-8192
	addi	a4,a4,-42
	li	a3,45056
	add	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L133
	li	a3,-57344
	li	a4,8192
	add	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L133
	li	a4,-65536
	addi	a4,a4,4
	li	a3,1048576
	add	a4,a5,a4
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L133
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L133:
	ret
.L140:
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
	bleu	a4,a5,.L143
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L143:
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
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	mv	a3,a1
	mv	a2,a0
	sw	ra,72(sp)
	.cfi_offset 1, -4
	sw	t1,40(sp)
	sw	t2,44(sp)
	sw	a0,0(sp)
	sw	a1,4(sp)
	call	__unorddf2
	bne	a0,zero,.L148
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	mv	a2,s1
	mv	a3,s0
	call	__unorddf2
	bne	a0,zero,.L149
	lw	a5,0(sp)
	lw	a4,4(sp)
	sw	s1,24(sp)
	sw	a5,32(sp)
	sw	s0,28(sp)
	sw	a4,36(sp)
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	call	__gtdf2
	bgt	a0,zero,.L154
	li	a0,0
	li	a1,0
.L145:
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	sw	a0,8(sp)
	sw	a1,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L154:
	.cfi_restore_state
	lw	a5,0(sp)
	lw	a4,4(sp)
	sw	s1,48(sp)
	sw	a5,56(sp)
	sw	s0,52(sp)
	sw	a4,60(sp)
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	call	__subdf3
	j	.L145
.L148:
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L145
.L149:
	mv	a0,s1
	mv	a1,s0
	j	.L145
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
	sw	s1,0(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	mv	a1,a0
	sw	s0,4(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	call	__unordsf2
	bne	a0,zero,.L158
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L159
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	bgt	a0,zero,.L164
	mv	a0,zero
.L155:
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
.L164:
	.cfi_restore_state
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
.L158:
	.cfi_restore_state
	mv	a0,s0
	j	.L155
.L159:
	mv	a0,s1
	j	.L155
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	addi	sp,sp,-68
	.cfi_def_cfa_offset 68
	sw	a0,0(sp)
	sw	a1,4(sp)
	sw	s0,60(sp)
	sw	s1,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	lw	a3,4(sp)
	lw	a2,0(sp)
	sw	ra,64(sp)
	.cfi_offset 1, -4
	sw	a0,16(sp)
	sw	a1,36(sp)
	call	__unorddf2
	bne	a0,zero,.L165
	sw	s1,20(sp)
	sw	s1,28(sp)
	sw	s0,24(sp)
	sw	s0,32(sp)
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	call	__unorddf2
	lw	a5,36(sp)
	bne	a0,zero,.L172
	li	a4,-2147483648
	and	a3,a5,a4
	and	a4,s0,a4
	beq	a3,a4,.L167
	bne	a3,zero,.L165
.L172:
	lw	s1,16(sp)
	mv	s0,a5
.L165:
	sw	s0,12(sp)
	lw	ra,64(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,60(sp)
	.cfi_restore 8
	sw	s1,8(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,68
	.cfi_def_cfa_offset 0
	jr	ra
.L167:
	.cfi_restore_state
	lw	a4,16(sp)
	sw	s1,40(sp)
	sw	s0,44(sp)
	sw	a4,48(sp)
	sw	a5,52(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	sw	a5,0(sp)
	call	__ltdf2
	blt	a0,zero,.L165
	lw	a5,0(sp)
	lw	s1,16(sp)
	mv	s0,a5
	j	.L165
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
	sw	s0,4(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	mv	a1,a0
	sw	s1,0(sp)
	sw	ra,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s1,a0
	call	__unordsf2
	bne	a0,zero,.L183
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L184
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	bne	a4,a5,.L189
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	blt	a0,zero,.L183
	mv	s0,s1
.L183:
	mv	a0,s0
.L177:
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
.L189:
	.cfi_restore_state
	mv	a0,s0
	bne	a4,zero,.L177
.L184:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,0(sp)
	.cfi_restore 9
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
	lw	a3,8(a1)
	lw	a4,12(a1)
	lw	t0,0(a1)
	lw	t1,4(a1)
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	t0,44(sp)
	sw	t0,28(sp)
	sw	t1,48(sp)
	sw	t1,32(sp)
	sw	a3,52(sp)
	sw	a3,36(sp)
	sw	a4,56(sp)
	sw	a4,40(sp)
	lw	a5,0(a2)
	sw	a3,16(sp)
	sw	a4,12(sp)
	lw	a3,8(a2)
	lw	a4,4(a2)
	sw	s1,60(sp)
	addi	a1,sp,28
	.cfi_offset 9, -12
	mv	s1,a0
	addi	a0,sp,44
	sw	s0,64(sp)
	sw	ra,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	lw	s0,12(a2)
	sw	t0,24(sp)
	sw	t1,20(sp)
	sw	a5,0(sp)
	sw	a4,4(sp)
	sw	a3,8(sp)
	call	__unordtf2
	bne	a0,zero,.L197
	lw	a4,4(sp)
	lw	a3,8(sp)
	lw	a5,0(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	sw	a4,48(sp)
	sw	a3,52(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	a5,44(sp)
	sw	s0,56(sp)
	sw	a5,28(sp)
	sw	s0,40(sp)
	call	__unordtf2
	lw	a4,12(sp)
	lw	a3,16(sp)
	lw	t1,20(sp)
	lw	t0,24(sp)
	bne	a0,zero,.L191
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s0,a2
	bne	a1,a2,.L204
	lw	a5,0(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	sw	a5,28(sp)
	lw	a5,4(sp)
	sw	t0,44(sp)
	sw	t0,24(sp)
	sw	a5,32(sp)
	lw	a5,8(sp)
	sw	t1,48(sp)
	sw	t1,20(sp)
	sw	a3,52(sp)
	sw	a3,16(sp)
	sw	a4,56(sp)
	sw	a4,12(sp)
	sw	a5,36(sp)
	sw	s0,40(sp)
	call	__lttf2
	blt	a0,zero,.L197
	lw	t0,24(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	lw	a4,12(sp)
.L191:
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	sw	t0,0(s1)
	sw	t1,4(s1)
	sw	a3,8(s1)
	sw	a4,12(s1)
	mv	a0,s1
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L204:
	.cfi_restore_state
	beq	a1,zero,.L191
.L197:
	lw	t0,0(sp)
	lw	t1,4(sp)
	lw	a3,8(sp)
	mv	a4,s0
	j	.L191
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	addi	sp,sp,-68
	.cfi_def_cfa_offset 68
	sw	a0,0(sp)
	sw	a1,4(sp)
	sw	s0,60(sp)
	sw	s1,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a3
	mv	s1,a2
	lw	a3,4(sp)
	lw	a2,0(sp)
	sw	ra,64(sp)
	.cfi_offset 1, -4
	sw	a0,36(sp)
	sw	a1,32(sp)
	call	__unorddf2
	bne	a0,zero,.L211
	sw	s1,16(sp)
	sw	s1,24(sp)
	sw	s0,20(sp)
	sw	s0,28(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	lw	a5,32(sp)
	bne	a0,zero,.L213
	li	a4,-2147483648
	and	a3,a5,a4
	and	a4,s0,a4
	beq	a3,a4,.L207
	bne	a3,zero,.L213
.L211:
	mv	a4,s1
	mv	a5,s0
.L205:
	lw	ra,64(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,60(sp)
	.cfi_restore 8
	sw	a4,8(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,68
	.cfi_def_cfa_offset 0
	jr	ra
.L207:
	.cfi_restore_state
	lw	a4,36(sp)
	sw	a5,52(sp)
	sw	s1,40(sp)
	sw	a4,48(sp)
	sw	s0,44(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	sw	a5,0(sp)
	call	__ltdf2
	lw	a5,0(sp)
	bge	a0,zero,.L211
.L213:
	lw	a4,36(sp)
	j	.L205
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
	sw	s1,0(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	mv	a1,a0
	sw	s0,4(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	call	__unordsf2
	bne	a0,zero,.L223
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L224
	li	a5,-2147483648
	and	a4,a5,s0
	and	a5,a5,s1
	bne	a4,a5,.L229
	mv	a1,s1
	mv	a0,s0
	call	__ltsf2
	blt	a0,zero,.L224
	mv	s0,s1
.L224:
	mv	a0,s0
.L217:
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
.L229:
	.cfi_restore_state
	mv	a0,s0
	bne	a4,zero,.L217
.L223:
	lw	ra,8(sp)
	.cfi_restore 1
	lw	s0,4(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,0(sp)
	.cfi_restore 9
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
	lw	a3,4(a1)
	lw	a5,0(a1)
	lw	t1,8(a1)
	lw	a4,12(a1)
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	a5,44(sp)
	sw	a5,28(sp)
	sw	a3,48(sp)
	sw	a3,32(sp)
	sw	t1,52(sp)
	sw	t1,36(sp)
	sw	a4,56(sp)
	sw	a4,40(sp)
	lw	t2,0(a2)
	lw	t0,4(a2)
	sw	a3,4(sp)
	lw	a3,8(a2)
	sw	s0,64(sp)
	addi	a1,sp,28
	.cfi_offset 8, -8
	mv	s0,a0
	addi	a0,sp,44
	sw	s1,60(sp)
	sw	t2,20(sp)
	sw	t0,16(sp)
	sw	a3,12(sp)
	.cfi_offset 9, -12
	lw	s1,12(a2)
	sw	ra,68(sp)
	.cfi_offset 1, -4
	sw	a5,0(sp)
	sw	t1,8(sp)
	sw	a4,24(sp)
	call	__unordtf2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	bne	a0,zero,.L231
	addi	a1,sp,28
	addi	a0,sp,44
	sw	t2,44(sp)
	sw	t0,48(sp)
	sw	a3,52(sp)
	sw	s1,56(sp)
	sw	t2,28(sp)
	sw	t0,32(sp)
	sw	a3,36(sp)
	sw	s1,40(sp)
	call	__unordtf2
	lw	a4,24(sp)
	bne	a0,zero,.L237
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s1,a2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	beq	a1,a2,.L232
	beq	a1,zero,.L231
.L237:
	lw	t2,0(sp)
	lw	t0,4(sp)
	lw	a3,8(sp)
	mv	s1,a4
.L231:
	sw	s1,12(s0)
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	sw	t2,0(s0)
	sw	t0,4(s0)
	sw	a3,8(s0)
	mv	a0,s0
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L232:
	.cfi_restore_state
	lw	a5,0(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	sw	a5,44(sp)
	lw	a5,4(sp)
	sw	a4,56(sp)
	sw	a4,12(sp)
	sw	a5,48(sp)
	lw	a5,8(sp)
	sw	t2,28(sp)
	sw	t2,24(sp)
	sw	a5,52(sp)
	sw	t0,32(sp)
	sw	t0,20(sp)
	sw	a3,36(sp)
	sw	a3,16(sp)
	sw	s1,40(sp)
	call	__lttf2
	lw	a4,12(sp)
	blt	a0,zero,.L237
	mv	a4,s1
	lw	t2,24(sp)
	lw	t0,20(sp)
	lw	a3,16(sp)
	mv	s1,a4
	j	.L231
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
	mv	s0,a1
	li	s1,0
	j	.L291
.L302:
	lw	a5,16(sp)
	add	s0,s0,a5
	lw	a5,12(sp)
	beq	a5,s1,.L301
.L291:
	lw	a0,4(sp)
	lw	a5,8(sp)
	mv	a1,s0
	sw	s0,0(sp)
	jalr	a5
	addi	s1,s1,1
	bne	a0,zero,.L302
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L288:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,0(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L301:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L289:
	sw	zero,0(sp)
	j	.L288
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
	li	a2,4
.L311:
	lbu	a3,0(a0)
	addi	a5,a3,-9
	beq	a3,a4,.L305
	bleu	a5,a2,.L305
	li	a5,43
	beq	a3,a5,.L306
	li	a5,45
	bne	a3,a5,.L322
	lbu	a3,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a2,a3,-48
	bgtu	a2,a5,.L316
	li	t1,1
.L309:
	li	a0,0
	li	a1,9
.L313:
	slli	a5,a0,2
	lbu	a3,1(a4)
	add	a5,a5,a0
	slli	a5,a5,1
	sub	a0,a5,a2
	addi	a2,a3,-48
	addi	a4,a4,1
	bleu	a2,a1,.L313
	bne	t1,zero,.L304
.L310:
	neg	a0,a0
	ret
.L305:
	addi	a0,a0,1
	j	.L311
.L322:
	addi	a2,a3,-48
	li	a5,9
	mv	a4,a0
	li	t1,0
	bleu	a2,a5,.L309
	li	a0,0
	j	.L310
.L316:
	li	a0,0
.L304:
	ret
.L306:
	lbu	a3,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a2,a3,-48
	li	t1,0
	bleu	a2,a5,.L309
	li	a0,0
	j	.L310
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	tail	atoi
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	li	a4,32
	li	a3,4
.L331:
	lbu	t0,0(a0)
	addi	a5,t0,-9
	beq	t0,a4,.L325
	bleu	a5,a3,.L325
	li	a5,43
	beq	t0,a5,.L326
	li	a5,45
	bne	t0,a5,.L342
	lbu	t0,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,t0,-48
	bgtu	a3,a5,.L336
	li	t1,1
.L329:
	li	a0,0
	li	a1,0
	li	a2,9
.L333:
	srli	t2,a0,30
	slli	t0,a1,2
	slli	a5,a0,2
	add	a0,a5,a0
	or	t0,t2,t0
	add	t0,t0,a1
	sltu	a5,a0,a5
	addi	a4,a4,1
	add	a5,a5,t0
	lbu	t0,0(a4)
	srli	t2,a0,31
	slli	a1,a0,1
	slli	a5,a5,1
	or	a5,t2,a5
	sub	a0,a1,a3
	srai	t2,a3,31
	sub	a5,a5,t2
	sgtu	a1,a0,a1
	addi	a3,t0,-48
	sub	a1,a5,a1
	bleu	a3,a2,.L333
	bne	t1,zero,.L324
.L330:
	snez	a5,a0
	neg	a1,a1
	sub	a1,a1,a5
	neg	a0,a0
	ret
.L325:
	addi	a0,a0,1
	j	.L331
.L342:
	addi	a3,t0,-48
	li	a5,9
	mv	a4,a0
	li	t1,0
	bleu	a3,a5,.L329
.L341:
	li	a0,0
	li	a1,0
	j	.L330
.L336:
	li	a0,0
	li	a1,0
.L324:
	ret
.L326:
	lbu	t0,1(a0)
	li	a5,9
	addi	a4,a0,1
	addi	a3,t0,-48
	li	t1,0
	bleu	a3,a5,.L329
	j	.L341
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
	beq	a2,zero,.L344
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
.L347:
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
	blt	a0,zero,.L348
	ble	a0,zero,.L354
	lw	a4,8(sp)
	sub	s1,a2,a5
	add	a4,s0,a4
	sw	a4,4(sp)
	bne	s1,zero,.L347
.L355:
	lw	s1,20(sp)
	.cfi_restore 9
.L344:
	li	s0,0
	j	.L343
.L348:
	.cfi_offset 9, -12
	mv	s1,a5
	bne	s1,zero,.L347
	j	.L355
.L354:
	lw	s1,20(sp)
	.cfi_restore 9
.L343:
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
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
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	beq	a2,zero,.L357
	sw	s1,24(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L360
.L371:
	lw	a5,0(sp)
	ble	a0,zero,.L359
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	srai	a5,s1,1
.L359:
	mv	s1,a5
	beq	a5,zero,.L370
.L360:
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
	addi	s1,s1,-1
	jalr	a5
	bne	a0,zero,.L371
	lw	s1,24(sp)
	.cfi_restore 9
.L356:
	lw	ra,32(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L370:
	.cfi_def_cfa_offset 36
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,24(sp)
	.cfi_restore 9
.L357:
	li	s0,0
	j	.L356
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
	j	.L390
.L392:
	beq	a1,a5,.L391
	addi	a0,a0,4
.L390:
	lw	a5,0(a0)
	bne	a5,zero,.L392
	li	a0,0
	ret
.L391:
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
.L396:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L395
	addi	a0,a0,4
	addi	a1,a1,4
	beq	a5,zero,.L395
	bne	a4,zero,.L396
.L395:
	li	a0,-1
	blt	a5,a4,.L393
	sgt	a0,a5,a4
.L393:
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
.L404:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L404
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
	beq	a5,zero,.L409
	mv	a5,a0
.L408:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L408
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L409:
	mv	a5,a0
	sub	a0,a5,a0
	srai	a0,a0,2
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
	beq	a2,zero,.L417
.L421:
	lw	a5,0(a0)
	lw	a4,0(a1)
	addi	a2,a2,-1
	bne	a5,a4,.L414
	beq	a5,zero,.L414
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L421
.L417:
	li	a0,0
	ret
.L414:
	lw	a4,0(a0)
	lw	a5,0(a1)
	sgt	a0,a4,a5
	blt	a4,a5,.L422
	ret
.L422:
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
	beq	a2,zero,.L427
.L432:
	lw	a5,0(a0)
	addi	a2,a2,-1
	beq	a5,a1,.L431
	addi	a0,a0,4
	bne	a2,zero,.L432
.L427:
	li	a0,0
	ret
.L431:
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
	beq	a2,zero,.L439
.L445:
	lw	a4,0(a0)
	lw	a5,0(a1)
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a4,a5,.L444
	addi	a1,a1,4
	bne	a2,zero,.L445
.L439:
	li	a0,0
	ret
.L444:
	sgt	a0,a4,a5
	blt	a4,a5,.L446
	ret
.L446:
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
	beq	a2,zero,.L448
	slli	a2,a2,2
	call	memcpy
.L448:
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
	beq	a0,a1,.L454
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L465
	beq	a2,zero,.L454
	slli	a5,a5,2
	li	a2,-4
.L457:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L457
	ret
.L465:
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L466
.L456:
	lw	a3,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	a3,0(a4)
	addi	a4,a4,4
	bne	a5,t1,.L456
.L454:
	ret
.L466:
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
	beq	a2,zero,.L468
	mv	a4,a0
	li	a3,-1
.L469:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L469
.L468:
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
	bgeu	a0,a1,.L475
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L474
.L477:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L477
	ret
.L475:
	beq	a0,a1,.L474
	beq	a2,zero,.L474
	add	a2,a0,a2
.L478:
	lbu	a5,0(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	sb	a5,-1(a1)
	bne	a2,a0,.L478
.L474:
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
	blt	a4,zero,.L488
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	sll	a4,a0,a4
	li	a3,0
	blt	a5,zero,.L490
.L492:
	srl	a0,a1,a5
	li	a1,0
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L488:
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
	bge	a5,zero,.L492
.L490:
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
	blt	a4,zero,.L494
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	srl	a4,a1,a4
	li	a3,0
	blt	a5,zero,.L496
.L498:
	sll	a1,a0,a5
	li	a0,0
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L494:
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
	bge	a5,zero,.L498
.L496:
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
	j	.L513
.L511:
	beq	a5,a3,.L515
.L513:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	beq	a4,zero,.L511
	mv	a0,a5
	ret
.L515:
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
	beq	a0,zero,.L519
	andi	a0,a0,1
	bne	a0,zero,.L516
	li	a0,1
.L518:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L518
	ret
.L519:
	li	a0,0
.L516:
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
	lw	a1,%lo(.LC1)(a5)
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,0(sp)
	sw	ra,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	call	__ltsf2
	blt	a0,zero,.L525
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	sgt	a0,a0,zero
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L525:
	.cfi_restore_state
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	li	a0,1
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
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
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	s0,12(sp)
	sw	s1,8(sp)
	sw	ra,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s1,a0
	mv	s0,a1
	call	__ltdf2
	blt	a0,zero,.L530
	sw	s1,0(sp)
	sw	s0,4(sp)
	lui	a5,%hi(.LC4)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	call	__gtdf2
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L530:
	.cfi_restore_state
	lw	ra,16(sp)
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	li	a0,1
	addi	sp,sp,20
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
	addi	sp,sp,-56
	.cfi_def_cfa_offset 56
	lw	a2,0(a0)
	lw	a3,4(a0)
	lw	a4,8(a0)
	sw	s1,44(sp)
	.cfi_offset 9, -12
	lw	s1,12(a0)
	li	a5,-65536
	sw	s0,48(sp)
	addi	a5,a5,-1
	.cfi_offset 8, -8
	li	s0,-1
	addi	a0,sp,28
	addi	a1,sp,12
	sw	ra,52(sp)
	.cfi_offset 1, -4
	sw	a2,28(sp)
	sw	a2,8(sp)
	sw	a3,32(sp)
	sw	a3,4(sp)
	sw	a4,36(sp)
	sw	a4,0(sp)
	sw	s1,40(sp)
	sw	a5,24(sp)
	sw	s0,12(sp)
	sw	s0,16(sp)
	sw	s0,20(sp)
	call	__lttf2
	blt	a0,zero,.L535
	li	a5,2147418112
	add	a5,a5,s0
	addi	a1,sp,12
	addi	a0,sp,28
	sw	a5,24(sp)
	call	__gttf2
	lw	ra,52(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	lw	s1,44(sp)
	.cfi_restore 9
	sgt	a0,a0,zero
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
.L535:
	.cfi_restore_state
	lw	ra,52(sp)
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	lw	s1,44(sp)
	.cfi_restore 9
	li	a0,1
	addi	sp,sp,56
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
	call	__unordsf2
	bne	a0,zero,.L540
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L540
	blt	s0,zero,.L555
	lui	a5,%hi(.LC7)
	lw	a1,%lo(.LC7)(a5)
.L542:
	andi	a5,s0,1
	beq	a5,zero,.L543
.L544:
	mv	a0,s1
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s1,a0
.L543:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L540
	mv	a0,a1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L544
.L556:
	mv	a0,a1
	srai	s0,a5,1
	call	__mulsf3
	srli	a5,s0,31
	andi	a4,s0,1
	add	a5,a5,s0
	mv	a1,a0
	bne	a4,zero,.L544
	j	.L556
.L540:
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
.L555:
	.cfi_restore_state
	lui	a5,%hi(.LC8)
	lw	a1,%lo(.LC8)(a5)
	j	.L542
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	mv	a5,a2
	mv	a3,a1
	mv	a2,a0
	sw	ra,76(sp)
	sw	a0,60(sp)
	sw	a1,56(sp)
	sw	a5,64(sp)
	.cfi_offset 1, -4
	call	__unorddf2
	lw	a4,56(sp)
	lw	t0,60(sp)
	bne	a0,zero,.L558
	sw	t0,32(sp)
	sw	a4,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	mv	a2,t0
	mv	a3,a4
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,t0
	mv	s1,a4
	sw	t0,56(sp)
	sw	a4,60(sp)
	call	__adddf3
	sw	s0,48(sp)
	sw	s1,52(sp)
	lw	a2,48(sp)
	lw	a3,52(sp)
	sw	s1,32(sp)
	call	__nedf2
	mv	a4,s1
	mv	t0,s0
	beq	a0,zero,.L575
	lw	a5,64(sp)
	blt	a5,zero,.L576
	lui	a3,%hi(.LC9)
	lw	s0,%lo(.LC9)(a3)
	lw	s1,%lo(.LC9+4)(a3)
.L560:
	andi	a3,a5,1
	beq	a3,zero,.L561
.L562:
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
.L561:
	srli	a3,a5,31
	add	a5,a3,a5
	srai	a5,a5,1
	beq	a5,zero,.L575
	mv	a0,s0
	mv	a1,s1
	mv	s0,a5
	sw	t0,32(sp)
	mv	s1,a4
.L563:
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
	bne	a3,zero,.L572
	srai	s0,a4,1
	j	.L563
.L575:
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.L558:
	lw	ra,76(sp)
	.cfi_restore 1
	sw	t0,40(sp)
	sw	a4,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L572:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	a5,s0
	mv	a4,s1
	lw	t0,32(sp)
	mv	s0,a0
	mv	s1,a1
	j	.L562
.L576:
	lui	a3,%hi(.LC10)
	lw	s0,%lo(.LC10)(a3)
	lw	s1,%lo(.LC10+4)(a3)
	j	.L560
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
	addi	a1,sp,52
	addi	a0,sp,68
	sw	s0,88(sp)
	sw	t2,68(sp)
	sw	t2,52(sp)
	sw	t2,12(sp)
	sw	t0,72(sp)
	sw	t0,56(sp)
	sw	t0,8(sp)
	sw	t1,76(sp)
	sw	t1,60(sp)
	sw	t1,4(sp)
	sw	ra,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	sw	s1,0(sp)
	sw	s1,80(sp)
	sw	s1,64(sp)
	sw	a5,16(sp)
	mv	s0,a2
	call	__unordtf2
	lw	t1,4(sp)
	lw	t0,8(sp)
	lw	t2,12(sp)
	bne	a0,zero,.L578
	addi	a2,sp,36
	addi	a1,sp,52
	addi	a0,sp,68
	sw	t2,36(sp)
	sw	t0,40(sp)
	sw	t1,44(sp)
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
	beq	a0,zero,.L578
	li	s1,0
	li	a5,0
	li	a4,0
	li	a3,1073610752
	blt	s0,zero,.L580
	li	a3,1073741824
.L580:
	andi	a2,s0,1
	beq	a2,zero,.L581
.L582:
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
.L581:
	srli	a2,s0,31
	add	a2,a2,s0
	srai	s0,a2,1
	beq	s0,zero,.L578
	mv	a0,s1
	sw	t2,4(sp)
	sw	t0,8(sp)
	mv	s1,t1
.L583:
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
	bne	a1,zero,.L592
	srai	s0,a2,1
	j	.L583
.L578:
	lw	a5,16(sp)
	lw	a4,0(sp)
	lw	ra,92(sp)
	.cfi_remember_state
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
.L592:
	.cfi_restore_state
	mv	t1,s1
	lw	t2,4(sp)
	lw	t0,8(sp)
	mv	s1,a0
	j	.L582
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	beq	a2,zero,.L595
	add	a2,a1,a2
	mv	a5,a0
.L596:
	lbu	a4,0(a5)
	lbu	a3,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L596
.L595:
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
	beq	a5,zero,.L608
	mv	a5,a0
.L603:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L603
.L614:
	beq	a2,zero,.L605
.L616:
	lbu	a4,0(a1)
	addi	a2,a2,-1
	addi	a1,a1,1
	sb	a4,0(a5)
	beq	a4,zero,.L615
	addi	a5,a5,1
	bne	a2,zero,.L616
.L605:
	sb	zero,0(a5)
	ret
.L615:
	ret
.L608:
	mv	a5,a0
	j	.L614
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
	beq	a1,zero,.L625
.L618:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L620
	ret
.L620:
	addi	a0,a0,1
	bne	a1,a0,.L618
	ret
.L625:
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
	beq	a3,zero,.L631
.L635:
	mv	a5,a1
	j	.L630
.L629:
	beq	a4,a3,.L628
.L630:
	lbu	a4,0(a5)
	addi	a5,a5,1
	bne	a4,zero,.L629
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L635
.L631:
	li	a0,0
.L628:
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
.L638:
	lbu	a4,0(a5)
	bne	a1,a4,.L637
	mv	a0,a5
.L637:
	addi	a5,a5,1
	bne	a4,zero,.L638
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
	lbu	t1,0(a1)
	mv	a4,a0
	beq	t1,zero,.L651
	mv	a5,a1
.L642:
	lbu	a3,1(a5)
	addi	a5,a5,1
	bne	a3,zero,.L642
	sub	t2,a5,a1
	mv	a0,a4
	addi	t2,t2,-1
	bne	a5,a1,.L648
	ret
.L662:
	addi	a4,a4,1
	beq	a5,zero,.L661
.L648:
	lbu	a5,0(a4)
	bne	a5,t1,.L662
	add	t0,a4,t2
	mv	a2,a1
	mv	a3,a4
	j	.L644
.L663:
	beq	t0,a3,.L645
	addi	a3,a3,1
	bne	a0,a5,.L645
	lbu	a5,0(a3)
	addi	a2,a2,1
	beq	a5,zero,.L645
.L644:
	lbu	a0,0(a2)
	bne	a0,zero,.L663
.L645:
	lbu	a3,0(a2)
	beq	a3,a5,.L651
	addi	a4,a4,1
	j	.L648
.L661:
	li	a0,0
	ret
.L651:
	mv	a0,a4
.L640:
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
	blt	a0,zero,.L675
	lw	a5,12(sp)
	li	a2,0
	li	a3,0
	sw	a5,16(sp)
	lw	a5,0(sp)
	lw	a0,16(sp)
	sw	a5,20(sp)
	lw	a1,20(sp)
	call	__gtdf2
	ble	a0,zero,.L668
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L667
.L668:
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
.L675:
	.cfi_restore_state
	sw	s1,32(sp)
	sw	s0,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	li	a2,0
	li	a3,0
	call	__gtdf2
	ble	a0,zero,.L668
.L667:
	lw	a4,0(sp)
	li	a5,-2147483648
	xor	a5,a4,a5
	sw	a5,0(sp)
	j	.L668
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	mv	t1,a0
	beq	a3,zero,.L682
	bltu	a1,a3,.L684
	sub	a1,a1,a3
	add	t2,a0,a1
	bgtu	a0,t2,.L684
	addi	sp,sp,-12
	.cfi_def_cfa_offset 12
	sw	s1,4(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -8
	.cfi_offset 8, -4
	lbu	s0,0(a2)
	add	t0,a0,a3
	li	s1,1
	mv	a1,a2
	j	.L681
.L678:
	addi	t0,t0,1
	bltu	t2,t1,.L691
.L681:
	lbu	a5,0(t1)
	mv	a0,t1
	addi	t1,t1,1
	bne	a5,s0,.L678
	addi	a4,a1,1
	beq	a3,s1,.L676
	mv	a5,t1
	sw	a0,0(sp)
.L679:
	lbu	a0,0(a5)
	lbu	a2,0(a4)
	addi	a5,a5,1
	addi	a4,a4,1
	bne	a0,a2,.L678
	bne	a5,t0,.L679
	lw	a0,0(sp)
.L676:
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L691:
	.cfi_restore_state
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,12
	.cfi_def_cfa_offset 0
	jr	ra
.L682:
	ret
.L684:
	li	a0,0
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
	beq	a2,zero,.L693
	call	memmove
.L693:
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
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	mv	a4,a2
	li	a3,0
	li	a2,0
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	mv	s0,a0
	sw	a1,8(sp)
	sw	a4,52(sp)
	call	__ltdf2
	lw	a5,8(sp)
	blt	a0,zero,.L723
	sw	a5,16(sp)
	sw	s0,12(sp)
	lui	s1,%hi(.LC15)
	lw	a0,12(sp)
	lw	a1,16(sp)
	lw	a2,%lo(.LC15)(s1)
	lw	a3,%lo(.LC15+4)(s1)
	sw	a5,8(sp)
	call	__gedf2
	sw	zero,56(sp)
	lw	a5,8(sp)
	blt	a0,zero,.L724
.L701:
	lui	a4,%hi(.LC10)
	lw	a3,%lo(.LC10)(a4)
	lw	a4,%lo(.LC10+4)(a4)
	mv	t1,s0
	sw	a3,36(sp)
	sw	a4,40(sp)
	lw	a3,%lo(.LC15)(s1)
	lw	a4,%lo(.LC15+4)(s1)
	li	s1,0
	sw	a3,28(sp)
	sw	a4,32(sp)
	mv	t2,s1
	mv	t0,a5
.L707:
	lw	a2,36(sp)
	lw	a3,40(sp)
	addi	t2,t2,1
	mv	a0,t1
	mv	a1,t0
	sw	t1,20(sp)
	sw	t0,24(sp)
	sw	t2,12(sp)
	call	__muldf3
	lw	a2,28(sp)
	lw	a3,32(sp)
	mv	s0,a0
	mv	s1,a1
	sw	a0,8(sp)
	sw	a1,0(sp)
	call	__gedf2
	lw	t2,12(sp)
	mv	t0,s1
	mv	t1,s0
	bge	a0,zero,.L707
	lw	a4,52(sp)
	lw	a3,56(sp)
	mv	a5,t0
	sw	t2,0(a4)
	mv	a4,t0
	beq	a3,zero,.L698
.L703:
	li	a4,-2147483648
	xor	a4,a5,a4
.L698:
	sw	s0,44(sp)
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	sw	a4,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
	lw	s1,100(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.L724:
	.cfi_restore_state
	lui	a4,%hi(.LC10)
	sw	a5,32(sp)
	sw	s0,28(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	lw	a2,%lo(.LC10)(a4)
	lw	a3,%lo(.LC10+4)(a4)
	sw	a4,12(sp)
	call	__ltdf2
	lw	a5,8(sp)
	bge	a0,zero,.L704
	sw	a5,80(sp)
	sw	s0,76(sp)
	lw	a0,76(sp)
	lw	a1,80(sp)
	li	a2,0
	li	a3,0
	call	__nedf2
	lw	a5,8(sp)
	lw	a4,12(sp)
	bne	a0,zero,.L713
.L704:
	lw	a4,52(sp)
	sw	zero,0(a4)
	mv	a4,a5
	j	.L698
.L723:
	lui	a4,%hi(.LC13)
	sw	s0,20(sp)
	sw	a5,24(sp)
	lw	a2,%lo(.LC13)(a4)
	lw	a3,%lo(.LC13+4)(a4)
	lw	a0,20(sp)
	lw	a1,24(sp)
	li	a4,-2147483648
	xor	s1,a5,a4
	call	__ledf2
	bgt	a0,zero,.L725
	li	a4,1
	mv	a5,s1
	sw	a4,56(sp)
	lui	s1,%hi(.LC15)
	j	.L701
.L725:
	lw	a5,8(sp)
	sw	s0,36(sp)
	lw	a0,36(sp)
	sw	a5,40(sp)
	lui	a5,%hi(.LC14)
	lw	a1,40(sp)
	lw	a2,%lo(.LC14)(a5)
	lw	a3,%lo(.LC14+4)(a5)
	call	__gtdf2
	bgt	a0,zero,.L711
	lw	a5,52(sp)
	sw	zero,0(a5)
	mv	a5,s1
	j	.L703
.L711:
	li	a5,1
	sw	a5,56(sp)
	lui	a4,%hi(.LC10)
.L702:
	lw	a5,%lo(.LC10+4)(a4)
	lw	a4,%lo(.LC10)(a4)
	mv	t1,s0
	sw	a5,40(sp)
	mv	a5,s1
	li	s1,0
	sw	a4,36(sp)
	mv	t2,s1
	mv	t0,a5
.L709:
	sw	t1,0(sp)
	sw	t0,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	addi	t2,t2,-1
	mv	a0,t1
	mv	a1,t0
	sw	t1,28(sp)
	sw	t0,32(sp)
	sw	t2,20(sp)
	call	__adddf3
	lw	a2,36(sp)
	lw	a3,40(sp)
	mv	s0,a0
	mv	s1,a1
	sw	a0,12(sp)
	sw	a1,8(sp)
	call	__ltdf2
	lw	t2,20(sp)
	mv	t0,s1
	mv	t1,s0
	blt	a0,zero,.L709
	lw	a4,52(sp)
	lw	a3,56(sp)
	mv	a5,t0
	sw	t2,0(a4)
	mv	a4,t0
	bne	a3,zero,.L703
	j	.L698
.L713:
	mv	s1,a5
	j	.L702
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
	beq	a5,zero,.L730
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
.L729:
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
	bne	t2,zero,.L729
	lw	s0,4(sp)
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L730:
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
	bltu	a1,a4,.L737
	j	.L738
.L741:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L752
	beq	a0,zero,.L740
.L737:
	addi	a0,a0,-1
	bge	a1,zero,.L741
.L738:
	li	a0,0
.L743:
	bltu	a4,a1,.L742
	sub	a4,a4,a1
	or	a0,a0,a5
.L742:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L743
.L740:
	bne	a2,zero,.L753
	ret
.L752:
	li	a0,0
	beq	a5,zero,.L740
	li	a0,0
	j	.L743
.L753:
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
	beq	a0,zero,.L756
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
.L756:
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
	beq	a5,a3,.L770
.L765:
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
.L770:
	bne	a4,a5,.L765
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
	beq	a4,zero,.L774
.L773:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L773
	ret
.L774:
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
	andi	a5,a2,-8
	bltu	a0,a1,.L777
	add	a4,a1,a2
	bleu	a0,a4,.L790
.L777:
	beq	t0,zero,.L780
	slli	t0,t0,3
	add	t0,t0,a1
	mv	a4,a1
	mv	a3,a0
.L781:
	lw	t1,0(a4)
	lw	t2,4(a4)
	addi	a4,a4,8
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a3,a3,8
	bne	a4,t0,.L781
.L780:
	bleu	a2,a5,.L776
	add	a0,a0,a5
	add	a5,a1,a5
	add	a1,a1,a2
.L782:
	lbu	a4,0(a5)
	addi	a5,a5,1
	addi	a0,a0,1
	sb	a4,-1(a0)
	bne	a5,a1,.L782
	ret
.L790:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L791
.L778:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L778
.L776:
	ret
.L791:
	ret
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	srli	t1,a2,1
	bltu	a0,a1,.L793
	add	a5,a1,a2
	bleu	a0,a5,.L807
.L793:
	beq	t1,zero,.L796
	slli	t1,t1,1
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L797:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,t1,.L797
.L796:
	andi	a5,a2,1
	beq	a5,zero,.L792
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
	ret
.L807:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L808
.L794:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L794
.L792:
	ret
.L808:
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
	srli	t0,a2,2
	andi	a5,a2,-4
	bltu	a0,a1,.L810
	add	a4,a1,a2
	bleu	a0,a4,.L823
.L810:
	beq	t0,zero,.L813
	slli	t0,t0,2
	add	t0,t0,a1
	mv	a4,a1
	mv	a3,a0
.L814:
	lw	t1,0(a4)
	addi	a4,a4,4
	addi	a3,a3,4
	sw	t1,-4(a3)
	bne	a4,t0,.L814
.L813:
	bleu	a2,a5,.L809
	add	a0,a0,a5
	add	a5,a1,a5
	add	a1,a1,a2
.L815:
	lbu	a4,0(a5)
	addi	a5,a5,1
	addi	a0,a0,1
	sb	a4,-1(a0)
	bne	a5,a1,.L815
	ret
.L823:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L824
.L811:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L811
.L809:
	ret
.L824:
	ret
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
	mv	a4,a0
	li	a3,15
	li	a0,0
	li	a2,16
.L839:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L837
	addi	a0,a0,1
	bne	a0,a2,.L839
.L837:
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
	mv	a4,a0
	li	a3,16
	li	a0,0
.L843:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L841
	addi	a0,a0,1
	bne	a0,a3,.L843
.L841:
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
	lui	a5,%hi(.LC16)
	sw	s1,0(sp)
	.cfi_offset 9, -12
	lw	s1,%lo(.LC16)(a5)
	sw	s0,4(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	a1,s1
	mv	s0,a0
	call	__gesf2
	bge	a0,zero,.L852
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
.L852:
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
	li	a3,0
	li	a5,0
	li	a2,16
.L854:
	sra	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	add	a3,a3,a4
	bne	a5,a2,.L854
	andi	a0,a3,1
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
	mv	a3,a0
	li	a5,0
	li	a0,0
	li	a2,16
.L857:
	sra	a4,a3,a5
	andi	a4,a4,1
	addi	a5,a5,1
	add	a0,a0,a4
	bne	a5,a2,.L857
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
	beq	a4,zero,.L862
.L861:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L861
	ret
.L862:
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
	beq	a4,zero,.L867
	beq	a1,zero,.L868
.L866:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	srli	a1,a1,1
	add	a0,a0,a5
	slli	a4,a4,1
	bne	a1,zero,.L866
	ret
.L867:
	ret
.L868:
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
	bgtu	a4,a1,.L871
	j	.L872
.L875:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L873
	beq	a0,zero,.L874
.L871:
	addi	a0,a0,-1
	bge	a1,zero,.L875
.L872:
	li	a0,0
.L877:
	bltu	a4,a1,.L876
	sub	a4,a4,a1
	or	a0,a0,a5
.L876:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L877
.L874:
	bne	a2,zero,.L887
.L870:
	ret
.L873:
	bne	a5,zero,.L872
	li	a0,0
	beq	a2,zero,.L870
.L887:
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
	blt	a0,zero,.L891
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
.L891:
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
	blt	a0,zero,.L896
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
.L896:
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
	blt	a1,zero,.L916
	beq	a1,zero,.L908
	li	a2,0
.L904:
	li	a4,32
	li	a0,0
	j	.L907
.L917:
	beq	a4,zero,.L906
.L907:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	addi	a4,a4,-1
	srai	a1,a1,1
	andi	a4,a4,0xff
	add	a0,a0,a5
	slli	a3,a3,1
	bne	a1,zero,.L917
.L906:
	beq	a2,zero,.L902
	neg	a0,a0
	ret
.L908:
	li	a0,0
.L902:
	ret
.L916:
	neg	a1,a1
	li	a2,1
	j	.L904
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	li	a2,0
	blt	a0,zero,.L939
.L919:
	bge	a1,zero,.L920
	neg	a1,a1
	xori	a2,a2,1
.L920:
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L921
	j	.L922
.L925:
	beq	a4,zero,.L924
.L921:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L925
.L924:
	li	a0,0
	beq	a5,zero,.L923
.L922:
	li	a0,0
.L927:
	bgtu	a1,a3,.L926
	sub	a3,a3,a1
	or	a0,a0,a5
.L926:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L927
.L923:
	beq	a2,zero,.L918
	neg	a0,a0
.L918:
	ret
.L939:
	neg	a0,a0
	li	a2,1
	j	.L919
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
	bge	a0,zero,.L941
	neg	a0,a0
	li	a2,1
.L941:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	mv	a3,a0
	li	a4,32
	li	a5,1
	bgtu	a0,a1,.L942
	j	.L948
.L946:
	beq	a4,zero,.L960
.L942:
	slli	a1,a1,1
	addi	a4,a4,-1
	slli	a5,a5,1
	bgtu	a0,a1,.L946
.L960:
	beq	a5,zero,.L961
.L948:
	srli	a5,a5,1
	bltu	a3,a1,.L947
	sub	a3,a3,a1
.L947:
	srli	a1,a1,1
	bne	a5,zero,.L948
.L961:
	mv	a0,a3
	beq	a2,zero,.L940
	neg	a0,a3
.L940:
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
	mv	a4,a0
	li	a5,1
	li	a0,16
	bgeu	a1,a4,.L964
.L963:
	slli	a3,a1,16
	srai	a3,a3,16
	slli	t0,a1,1
	slli	t1,a5,1
	addi	a0,a0,-1
	blt	a3,zero,.L964
	slli	a1,t0,16
	slli	a5,t1,16
	srli	a1,a1,16
	srli	a5,a5,16
	bleu	a4,a1,.L976
	bne	a0,zero,.L963
.L972:
	li	a0,0
	bne	a2,zero,.L977
.L970:
	ret
.L976:
	beq	a5,zero,.L972
.L964:
	li	a0,0
.L969:
	or	a3,a5,a0
	sub	t1,a4,a1
	srli	a5,a5,1
	bltu	a4,a1,.L968
	slli	a4,t1,16
	slli	a0,a3,16
	srli	a4,a4,16
	srli	a0,a0,16
.L968:
	srli	a1,a1,1
	bne	a5,zero,.L969
	beq	a2,zero,.L970
.L977:
	mv	a0,a4
	ret
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
	bgtu	a4,a1,.L979
	j	.L980
.L983:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L981
	beq	a0,zero,.L982
.L979:
	addi	a0,a0,-1
	bge	a1,zero,.L983
.L980:
	li	a0,0
.L985:
	bltu	a4,a1,.L984
	sub	a4,a4,a1
	or	a0,a0,a5
.L984:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L985
.L982:
	bne	a2,zero,.L995
.L978:
	ret
.L981:
	bne	a5,zero,.L980
	li	a0,0
	beq	a2,zero,.L978
.L995:
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
	beq	a5,zero,.L997
	addi	a1,a2,-32
	sll	a1,a0,a1
	li	a0,0
	ret
.L997:
	beq	a2,zero,.L999
	li	a5,32
	sub	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L999:
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
	beq	a5,zero,.L1002
	addi	a0,a2,-32
	sra	a0,a1,a0
	srai	a1,a1,31
	ret
.L1002:
	beq	a2,zero,.L1004
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1004:
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
	beq	a3,zero,.L1010
	li	a0,0
.L1010:
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
	blt	a1,a3,.L1013
	li	a0,2
	bgt	a1,a3,.L1011
	li	a0,0
	bltu	a5,a2,.L1011
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1013:
	li	a0,0
.L1011:
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
	li	a5,0
	blt	a1,a3,.L1018
	li	a5,2
	bgt	a1,a3,.L1018
	li	a5,0
	bltu	a0,a2,.L1018
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1018:
	addi	a0,a5,-1
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
	beq	a5,zero,.L1025
	addi	a0,a2,-32
	srl	a0,a1,a0
	li	a1,0
	ret
.L1025:
	beq	a2,zero,.L1027
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1027:
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
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a2,48(sp)
	andi	a5,a2,1
	mv	a4,a0
	mv	t1,a1
	beq	a5,zero,.L1044
	lui	a5,%hi(.LC15)
	lw	s1,%lo(.LC15)(a5)
	lw	a1,%lo(.LC15+4)(a5)
	mv	s0,a2
	sw	a5,52(sp)
.L1041:
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
.L1039:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	beq	s0,zero,.L1040
	sw	a1,32(sp)
.L1042:
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
	bne	a3,zero,.L1045
	srai	s0,a5,1
	j	.L1042
.L1045:
	lw	a1,32(sp)
	j	.L1041
.L1040:
	lw	a5,48(sp)
	bge	a5,zero,.L1038
	lw	a5,52(sp)
	sw	s1,56(sp)
	sw	a1,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lw	a0,%lo(.LC15)(a5)
	lw	a1,%lo(.LC15+4)(a5)
	call	__divdf3
	mv	s1,a0
.L1038:
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
.L1044:
	.cfi_restore_state
	lui	a5,%hi(.LC15)
	lw	s1,%lo(.LC15)(a5)
	lw	a1,%lo(.LC15+4)(a5)
	lw	s0,48(sp)
	sw	a5,52(sp)
	j	.L1039
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
	beq	a5,zero,.L1053
	lui	a5,%hi(.LC17)
	lw	s0,%lo(.LC17)(a5)
	sw	a5,8(sp)
.L1050:
	mv	a0,s0
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s0,a0
.L1048:
	srli	a4,s1,31
	add	a5,a4,s1
	srai	s1,a5,1
	beq	s1,zero,.L1049
	mv	a0,a1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1050
.L1055:
	mv	a0,a1
	srai	s1,a4,1
	call	__mulsf3
	srli	a4,s1,31
	andi	a3,s1,1
	add	a4,a4,s1
	mv	a1,a0
	bne	a3,zero,.L1050
	j	.L1055
.L1049:
	lw	a5,4(sp)
	bge	a5,zero,.L1047
	lw	a5,8(sp)
	mv	a1,s0
	lw	a0,%lo(.LC17)(a5)
	call	__divsf3
	mv	s0,a0
.L1047:
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
.L1053:
	.cfi_restore_state
	lui	a5,%hi(.LC17)
	lw	s0,%lo(.LC17)(a5)
	lw	s1,4(sp)
	sw	a5,8(sp)
	j	.L1048
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
	bltu	a1,a3,.L1058
	li	a0,2
	bgtu	a1,a3,.L1056
	li	a0,0
	bltu	a5,a2,.L1056
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1058:
	li	a0,0
.L1056:
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
	li	a5,0
	bltu	a1,a3,.L1063
	li	a5,2
	bgtu	a1,a3,.L1063
	li	a5,0
	bltu	a0,a2,.L1063
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1063:
	addi	a0,a5,-1
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
	.globl	__gttf2
	.globl	__moddi3
	.globl	__divdi3
	.globl	__modsi3
	.globl	__divsi3
	.globl	__mulsi3
	.globl	__muldi3
	.globl	__lttf2
	.globl	__unordtf2
	.globl	__ltsf2
	.globl	__ltdf2
	.globl	__subsf3
	.globl	__gtsf2
	.globl	__unordsf2
	.globl	__subdf3
	.globl	__gtdf2
	.globl	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
