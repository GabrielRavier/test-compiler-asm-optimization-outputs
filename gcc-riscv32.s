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
	j	.L20
.L18:
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	beq	a3,zero,.L20
.L16:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,a2,.L18
	beq	a3,zero,.L20
	addi	a0,a0,1
	ret
.L20:
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
	bne	a2,zero,.L28
	j	.L33
.L30:
	addi	a2,a2,-1
	addi	a0,a0,1
	beq	a2,zero,.L33
.L28:
	lbu	a5,0(a0)
	bne	a5,a1,.L30
	beq	a2,zero,.L33
	ret
.L33:
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
	beq	a2,zero,.L41
.L50:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L49
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
	bne	a2,zero,.L50
.L41:
	li	a0,0
	ret
.L49:
	beq	a2,zero,.L41
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
	beq	a2,zero,.L52
	call	memcpy
.L52:
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
.L58:
	beq	a2,a4,.L61
	lbu	a5,0(a2)
	mv	a0,a2
	addi	a2,a2,-1
	bne	a5,a1,.L58
	ret
.L61:
	li	a0,0
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
	beq	a2,zero,.L63
	add	a2,a0,a2
	mv	a5,a0
.L64:
	sb	a1,0(a5)
	addi	a5,a5,1
	bne	a2,a5,.L64
.L63:
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
	beq	a5,zero,.L70
.L71:
	lbu	a5,1(a1)
	addi	a1,a1,1
	addi	a0,a0,1
	sb	a5,0(a0)
	bne	a5,zero,.L71
.L70:
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
	beq	a5,zero,.L83
.L77:
	beq	a5,a1,.L76
	lbu	a5,1(a0)
	addi	a0,a0,1
	bne	a5,zero,.L77
.L76:
	ret
.L83:
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
.L86:
	lbu	a5,0(a0)
	beq	a5,a1,.L85
	addi	a0,a0,1
	bne	a5,zero,.L86
	li	a0,0
.L85:
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
	j	.L93
.L94:
	beq	a5,zero,.L90
	addi	a0,a0,1
	addi	a1,a1,1
.L93:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	beq	a5,a4,.L94
.L90:
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
	beq	a5,zero,.L98
	mv	a5,a0
.L97:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L97
	sub	a0,a5,a0
	ret
.L98:
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
	beq	a2,zero,.L105
	lbu	a5,0(a0)
	beq	a5,zero,.L102
	addi	a2,a2,-1
	add	a3,a0,a2
	j	.L103
.L115:
	beq	a0,a3,.L102
	bne	a4,a5,.L102
	lbu	a5,1(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	beq	a5,zero,.L102
.L103:
	lbu	a4,0(a1)
	bne	a4,zero,.L115
.L102:
	lbu	a4,0(a1)
	sub	a0,a5,a4
	ret
.L105:
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
	ble	a2,a5,.L116
	andi	a2,a2,-2
	add	a3,a0,a2
.L118:
	lbu	a4,1(a0)
	lbu	a5,0(a0)
	addi	a0,a0,2
	sb	a4,0(a1)
	sb	a5,1(a1)
	addi	a1,a1,2
	bne	a0,a3,.L118
.L116:
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
	beq	a0,a5,.L124
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L124:
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
	bleu	a0,a5,.L127
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L127:
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
	beq	a0,a5,.L134
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L134:
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
	bleu	a0,a4,.L138
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bgtu	a4,a3,.L141
.L136:
	ret
.L138:
	li	a0,1
	ret
.L141:
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L136
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
	bleu	a0,a4,.L150
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L143
	li	a4,-8192
	addi	a4,a4,-42
	li	a3,45056
	add	a4,a5,a4
	addi	a3,a3,2005
	bleu	a4,a3,.L143
	li	a3,-57344
	li	a4,8192
	add	a3,a5,a3
	addi	a4,a4,-8
	bleu	a3,a4,.L143
	li	a4,-65536
	addi	a4,a4,4
	li	a3,1048576
	add	a4,a5,a4
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L143
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L143:
	ret
.L150:
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
	bleu	a4,a5,.L153
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L153:
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
	bne	a0,zero,.L158
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	mv	a2,s1
	mv	a3,s0
	call	__unorddf2
	bne	a0,zero,.L159
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
	bgt	a0,zero,.L164
	li	a0,0
	li	a1,0
.L155:
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
.L164:
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
	j	.L155
.L158:
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L155
.L159:
	mv	a0,s1
	mv	a1,s0
	j	.L155
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
	bne	a0,zero,.L168
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L169
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	bgt	a0,zero,.L174
	mv	a0,zero
.L165:
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
.L174:
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
.L168:
	.cfi_restore_state
	mv	a0,s0
	j	.L165
.L169:
	mv	a0,s1
	j	.L165
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
	bne	a0,zero,.L175
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
	bne	a0,zero,.L182
	li	a4,-2147483648
	and	a3,a5,a4
	and	a4,s0,a4
	beq	a3,a4,.L177
	bne	a3,zero,.L175
.L182:
	lw	s1,16(sp)
	mv	s0,a5
.L175:
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
.L177:
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
	blt	a0,zero,.L175
	lw	a5,0(sp)
	lw	s1,16(sp)
	mv	s0,a5
	j	.L175
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
	bne	a0,zero,.L193
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L194
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	bne	a4,a5,.L199
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	blt	a0,zero,.L193
	mv	s0,s1
.L193:
	mv	a0,s0
.L187:
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
.L199:
	.cfi_restore_state
	mv	a0,s0
	bne	a4,zero,.L187
.L194:
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
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	s1,60(sp)
	sw	ra,68(sp)
	sw	s0,64(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	lw	a3,8(a1)
	lw	a4,12(a1)
	lw	t0,0(a1)
	lw	t1,4(a1)
	sw	a3,52(sp)
	sw	t0,44(sp)
	sw	t0,28(sp)
	sw	t1,48(sp)
	sw	t1,32(sp)
	sw	a3,36(sp)
	sw	a4,56(sp)
	sw	a4,40(sp)
	lw	a5,0(a2)
	sw	a3,16(sp)
	sw	a4,12(sp)
	lw	a3,8(a2)
	lw	a4,4(a2)
	mv	s1,a0
	addi	a1,sp,28
	addi	a0,sp,44
	lw	s0,12(a2)
	sw	t0,24(sp)
	sw	t1,20(sp)
	sw	a5,0(sp)
	sw	a4,4(sp)
	sw	a3,8(sp)
	call	__unordtf2
	bne	a0,zero,.L207
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
	bne	a0,zero,.L201
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s0,a2
	bne	a1,a2,.L214
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
	blt	a0,zero,.L207
	lw	t0,24(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	lw	a4,12(sp)
.L201:
	sw	t0,0(s1)
	sw	t1,4(s1)
	sw	a3,8(s1)
	sw	a4,12(s1)
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L214:
	.cfi_restore_state
	beq	a1,zero,.L201
.L207:
	lw	t0,0(sp)
	lw	t1,4(sp)
	lw	a3,8(sp)
	mv	a4,s0
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
	bne	a0,zero,.L221
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
	bne	a0,zero,.L223
	li	a4,-2147483648
	and	a3,a5,a4
	and	a4,s0,a4
	beq	a3,a4,.L217
	bne	a3,zero,.L223
.L221:
	mv	a4,s1
	mv	a5,s0
.L215:
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
.L217:
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
	bge	a0,zero,.L221
.L223:
	lw	a4,36(sp)
	j	.L215
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
	bne	a0,zero,.L233
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L234
	li	a5,-2147483648
	and	a4,a5,s0
	and	a5,a5,s1
	bne	a4,a5,.L239
	mv	a1,s1
	mv	a0,s0
	call	__ltsf2
	blt	a0,zero,.L234
	mv	s0,s1
.L234:
	mv	a0,s0
.L227:
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
.L239:
	.cfi_restore_state
	mv	a0,s0
	bne	a4,zero,.L227
.L233:
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
	addi	sp,sp,-72
	.cfi_def_cfa_offset 72
	sw	s0,64(sp)
	sw	ra,68(sp)
	sw	s1,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	lw	a3,4(a1)
	lw	a5,0(a1)
	lw	t1,8(a1)
	lw	a4,12(a1)
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
	mv	s0,a0
	addi	a1,sp,28
	addi	a0,sp,44
	sw	t2,20(sp)
	sw	t0,16(sp)
	sw	a3,12(sp)
	lw	s1,12(a2)
	sw	a5,0(sp)
	sw	t1,8(sp)
	sw	a4,24(sp)
	call	__unordtf2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	bne	a0,zero,.L241
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
	bne	a0,zero,.L247
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s1,a2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	beq	a1,a2,.L242
	beq	a1,zero,.L241
.L247:
	lw	t2,0(sp)
	lw	t0,4(sp)
	lw	a3,8(sp)
	mv	s1,a4
.L241:
	sw	t2,0(s0)
	sw	t0,4(s0)
	sw	a3,8(s0)
	sw	s1,12(s0)
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L242:
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
	blt	a0,zero,.L247
	mv	a4,s1
	lw	t2,24(sp)
	lw	t0,20(sp)
	lw	a3,16(sp)
	mv	s1,a4
	j	.L241
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
	beq	a0,zero,.L258
	lui	a3,%hi(.LANCHOR0)
	addi	a4,a2,%lo(s.0)
	addi	a3,a3,%lo(.LANCHOR0)
.L257:
	andi	a5,a0,63
	add	a5,a3,a5
	lbu	a5,0(a5)
	srli	a0,a0,6
	addi	a4,a4,1
	sb	a5,-1(a4)
	bne	a0,zero,.L257
	sb	zero,0(a4)
	addi	a0,a2,%lo(s.0)
	ret
.L258:
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
	beq	a1,zero,.L269
	lw	a5,0(a1)
	sw	a1,4(a0)
	sw	a5,0(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L263
	sw	a0,4(a5)
.L263:
	ret
.L269:
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
	beq	a5,zero,.L271
	lw	a4,4(a0)
	sw	a4,4(a5)
.L271:
	lw	a5,4(a0)
	beq	a5,zero,.L270
	lw	a4,0(a0)
	sw	a4,0(a5)
.L270:
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
	addi	sp,sp,-40
	.cfi_def_cfa_offset 40
	sw	ra,36(sp)
	sw	s0,32(sp)
	lw	a5,0(a2)
	sw	a2,24(sp)
	sw	a0,4(sp)
	sw	a5,8(sp)
	sw	a1,20(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	beq	a5,zero,.L280
	sw	s1,28(sp)
	.cfi_offset 9, -12
	li	s0,0
	mv	s1,a1
	j	.L282
.L297:
	lw	a5,12(sp)
	addi	s0,s0,1
	add	s1,s1,a5
	lw	a5,8(sp)
	beq	a5,s0,.L296
.L282:
	lw	a0,4(sp)
	lw	a5,16(sp)
	mv	a1,s1
	sw	s1,0(sp)
	jalr	a5
	bne	a0,zero,.L297
	lw	s1,28(sp)
	.cfi_restore 9
.L279:
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
	lw	a0,0(sp)
	addi	sp,sp,40
	.cfi_def_cfa_offset 0
	jr	ra
.L296:
	.cfi_def_cfa_offset 40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
.L280:
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
	beq	s0,zero,.L279
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
	beq	a5,zero,.L299
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	li	s1,0
	j	.L301
.L312:
	lw	a5,16(sp)
	addi	s1,s1,1
	add	s0,s0,a5
	lw	a5,12(sp)
	beq	a5,s1,.L311
.L301:
	lw	a0,4(sp)
	lw	a5,8(sp)
	mv	a1,s0
	sw	s0,0(sp)
	jalr	a5
	bne	a0,zero,.L312
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L298:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,0(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L311:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L299:
	sw	zero,0(sp)
	j	.L298
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
	mv	a5,a0
	li	a3,32
.L315:
	lbu	a4,0(a5)
	beq	a4,a3,.L317
	addi	a0,a4,-9
	sltiu	a0,a0,5
	beq	a0,zero,.L328
.L317:
	addi	a5,a5,1
	j	.L315
.L328:
	li	a3,43
	beq	a4,a3,.L324
	li	a3,45
	li	t1,0
	beq	a4,a3,.L329
.L319:
	lbu	a2,0(a5)
	li	a1,9
	addi	a3,a2,-48
	bgtu	a3,a1,.L321
.L320:
	slli	a4,a0,2
	lbu	a2,1(a5)
	add	a4,a4,a0
	slli	a4,a4,1
	sub	a0,a4,a3
	addi	a3,a2,-48
	addi	a5,a5,1
	bleu	a3,a1,.L320
.L321:
	bne	t1,zero,.L314
	neg	a0,a0
.L314:
	ret
.L329:
	li	t1,1
	addi	a5,a5,1
	j	.L319
.L324:
	li	t1,0
	addi	a5,a5,1
	j	.L319
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
	mv	a4,a0
	li	a3,32
.L332:
	lbu	a5,0(a4)
	beq	a5,a3,.L334
	addi	a2,a5,-9
	sltiu	a2,a2,5
	beq	a2,zero,.L344
.L334:
	addi	a4,a4,1
	j	.L332
.L344:
	li	a3,43
	beq	a5,a3,.L335
	li	a3,45
	beq	a5,a3,.L345
.L336:
	lbu	t0,0(a4)
	li	t1,9
	li	a0,0
	addi	a3,t0,-48
	li	a1,0
	bgtu	a3,t1,.L338
.L337:
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
	bleu	a3,t1,.L337
.L338:
	bne	a2,zero,.L331
	snez	a5,a0
	neg	a1,a1
	sub	a1,a1,a5
	neg	a0,a0
.L331:
	ret
.L345:
	li	a2,1
.L335:
	addi	a4,a4,1
	j	.L336
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
	beq	a2,zero,.L347
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
.L350:
	lw	a1,8(sp)
	srli	a5,s1,1
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a4,4(sp)
	lw	a5,16(sp)
	add	s0,a4,a0
	lw	a0,12(sp)
	mv	a1,s0
	jalr	a5
	lw	a5,0(sp)
	blt	a0,zero,.L351
	ble	a0,zero,.L357
	addi	a2,s1,-1
	sub	s1,a2,a5
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	bne	s1,zero,.L350
.L358:
	lw	s1,20(sp)
	.cfi_restore 9
.L347:
	li	s0,0
	j	.L346
.L351:
	.cfi_offset 9, -12
	mv	s1,a5
	bne	s1,zero,.L350
	j	.L358
.L357:
	lw	s1,20(sp)
	.cfi_restore 9
.L346:
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
	beq	a2,zero,.L360
	sw	s1,24(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L363
.L374:
	lw	a5,0(sp)
	ble	a0,zero,.L362
	lw	a4,8(sp)
	addi	s1,s1,-1
	srai	a5,s1,1
	add	a4,s0,a4
	sw	a4,4(sp)
.L362:
	mv	s1,a5
	beq	a5,zero,.L373
.L363:
	lw	a1,8(sp)
	srai	a5,s1,1
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a5,4(sp)
	lw	a2,20(sp)
	add	s0,a5,a0
	lw	a0,12(sp)
	lw	a5,16(sp)
	mv	a1,s0
	jalr	a5
	bne	a0,zero,.L374
	lw	s1,24(sp)
	.cfi_restore 9
.L359:
	lw	ra,32(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L373:
	.cfi_def_cfa_offset 36
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s1,24(sp)
	.cfi_restore 9
.L360:
	li	s0,0
	j	.L359
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
	sw	a1,12(s0)
	lw	ra,20(sp)
	.cfi_restore 1
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
	sw	a1,12(s0)
	lw	ra,20(sp)
	.cfi_restore 1
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
	j	.L395
.L398:
	beq	a1,a5,.L397
	addi	a0,a0,4
.L395:
	lw	a5,0(a0)
	bne	a5,zero,.L398
.L392:
	li	a0,0
	ret
.L397:
	beq	a1,zero,.L392
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
	j	.L409
.L410:
	beq	a5,zero,.L401
	beq	a4,zero,.L401
	addi	a0,a0,4
	addi	a1,a1,4
.L409:
	lw	a5,0(a0)
	lw	a4,0(a1)
	beq	a5,a4,.L410
.L401:
	li	a0,-1
	blt	a5,a4,.L399
	sgt	a0,a5,a4
.L399:
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
.L412:
	lw	a4,0(a1)
	addi	a1,a1,4
	addi	a5,a5,4
	sw	a4,-4(a5)
	bne	a4,zero,.L412
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
	beq	a5,zero,.L417
	mv	a5,a0
.L416:
	lw	a4,4(a5)
	addi	a5,a5,4
	bne	a4,zero,.L416
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L417:
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
	beq	a2,zero,.L424
.L433:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L421
	beq	a5,zero,.L421
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L433
.L424:
	li	a0,0
.L419:
	ret
.L421:
	beq	a2,zero,.L424
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L419
	sgt	a0,a4,a5
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
	beq	a2,zero,.L440
.L446:
	lw	a5,0(a0)
	beq	a5,a1,.L445
	addi	a2,a2,-1
	addi	a0,a0,4
	bne	a2,zero,.L446
.L440:
	li	a0,0
	ret
.L445:
	beq	a2,zero,.L440
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
	beq	a2,zero,.L452
.L462:
	lw	a4,0(a0)
	lw	a5,0(a1)
	bne	a4,a5,.L461
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	bne	a2,zero,.L462
.L452:
	li	a0,0
.L447:
	ret
.L461:
	beq	a2,zero,.L452
	li	a0,-1
	blt	a4,a5,.L447
	sgt	a0,a4,a5
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
	beq	a2,zero,.L464
	slli	a2,a2,2
	call	memcpy
.L464:
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
	beq	a0,a1,.L470
	sub	a3,a0,a1
	slli	a4,a2,2
	addi	a5,a2,-1
	bgeu	a3,a4,.L481
	beq	a2,zero,.L470
	slli	a5,a5,2
	li	a2,-4
.L473:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-4
	sw	a3,0(a4)
	bne	a5,a2,.L473
	ret
.L481:
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L482
.L472:
	lw	a3,0(a1)
	addi	a5,a5,-1
	addi	a1,a1,4
	sw	a3,0(a4)
	addi	a4,a4,4
	bne	a5,t1,.L472
.L470:
	ret
.L482:
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
	beq	a2,zero,.L484
	mv	a4,a0
	li	a3,-1
.L485:
	addi	a5,a5,-1
	sw	a1,0(a4)
	addi	a4,a4,4
	bne	a5,a3,.L485
.L484:
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
	bgeu	a0,a1,.L491
	add	a1,a1,a2
	add	a5,a0,a2
	beq	a2,zero,.L490
.L493:
	lbu	a4,-1(a5)
	addi	a5,a5,-1
	addi	a1,a1,-1
	sb	a4,0(a1)
	bne	a0,a5,.L493
	ret
.L491:
	beq	a0,a1,.L490
	beq	a2,zero,.L490
	add	a2,a0,a2
.L494:
	lbu	a5,0(a0)
	addi	a0,a0,1
	addi	a1,a1,1
	sb	a5,-1(a1)
	bne	a2,a0,.L494
.L490:
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
	blt	a4,zero,.L504
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	sll	a4,a0,a4
	li	a3,0
	blt	a5,zero,.L506
.L508:
	srl	a0,a1,a5
	li	a1,0
	or	a0,a0,a3
	or	a1,a1,a4
	ret
.L504:
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
	bge	a5,zero,.L508
.L506:
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
	blt	a4,zero,.L510
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	srl	a4,a1,a4
	li	a3,0
	blt	a5,zero,.L512
.L514:
	sll	a1,a0,a5
	li	a0,0
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L510:
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
	bge	a5,zero,.L514
.L512:
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
	j	.L529
.L527:
	beq	a5,a3,.L531
.L529:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	beq	a4,zero,.L527
	mv	a0,a5
	ret
.L531:
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
	beq	a0,zero,.L535
	andi	a0,a0,1
	bne	a0,zero,.L532
	li	a0,1
.L534:
	srai	a5,a5,1
	andi	a4,a5,1
	addi	a0,a0,1
	beq	a4,zero,.L534
	ret
.L535:
	li	a0,0
.L532:
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
	blt	a0,zero,.L541
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
.L541:
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
	blt	a0,zero,.L546
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
.L546:
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
	sw	s0,48(sp)
	sw	ra,52(sp)
	sw	s1,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	lw	a2,0(a0)
	lw	a3,4(a0)
	lw	a4,8(a0)
	lw	s1,12(a0)
	li	a5,-65536
	li	s0,-1
	addi	a5,a5,-1
	addi	a0,sp,28
	addi	a1,sp,12
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
	blt	a0,zero,.L551
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
.L551:
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
	sw	a2,0(s0)
	sw	a3,4(s0)
	sw	a4,8(s0)
	sw	a5,12(s0)
	lw	ra,20(sp)
	.cfi_restore 1
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
	bne	a0,zero,.L556
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L556
	blt	s0,zero,.L570
	lui	a5,%hi(.LC7)
	lw	a1,%lo(.LC7)(a5)
	j	.L560
.L571:
	mv	a0,a1
	call	__mulsf3
	mv	a1,a0
.L560:
	andi	a5,s0,1
	beq	a5,zero,.L559
	mv	a0,s1
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s1,a0
.L559:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	bne	s0,zero,.L571
.L556:
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
.L570:
	.cfi_restore_state
	lui	a5,%hi(.LC8)
	lw	a1,%lo(.LC8)(a5)
	j	.L560
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
	sw	s0,72(sp)
	mv	a3,a1
	.cfi_offset 8, -8
	mv	s0,a2
	mv	a2,a0
	sw	s1,68(sp)
	sw	ra,76(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	sw	a4,60(sp)
	sw	a5,64(sp)
	mv	s1,a0
	sw	a1,16(sp)
	call	__unorddf2
	bne	a0,zero,.L573
	lw	a3,16(sp)
	sw	s1,36(sp)
	lw	a0,36(sp)
	sw	a3,40(sp)
	lw	a1,40(sp)
	mv	a2,s1
	call	__adddf3
	lw	a3,16(sp)
	sw	s1,44(sp)
	lw	a2,44(sp)
	sw	a3,48(sp)
	lw	a3,48(sp)
	call	__nedf2
	beq	a0,zero,.L573
	blt	s0,zero,.L588
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L577
.L589:
	sw	a4,0(sp)
	sw	a4,8(sp)
	sw	a5,4(sp)
	sw	a5,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
.L577:
	andi	a3,s0,1
	beq	a3,zero,.L576
	sw	a5,24(sp)
	sw	a5,36(sp)
	lw	a5,16(sp)
	sw	a4,20(sp)
	sw	s1,28(sp)
	sw	a5,32(sp)
	lw	a2,20(sp)
	lw	a3,24(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	sw	a4,44(sp)
	call	__muldf3
	lw	a4,44(sp)
	lw	a5,36(sp)
	mv	s1,a0
	sw	a1,16(sp)
.L576:
	srli	a3,s0,31
	add	a3,a3,s0
	srai	s0,a3,1
	bne	s0,zero,.L589
.L573:
	lw	a5,16(sp)
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	sw	s1,52(sp)
	sw	a5,56(sp)
	lw	a0,52(sp)
	lw	a1,56(sp)
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L588:
	.cfi_restore_state
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	j	.L577
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	addi	sp,sp,-108
	.cfi_def_cfa_offset 108
	sw	s0,100(sp)
	sw	ra,104(sp)
	sw	s1,96(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	lw	a4,4(a1)
	lw	a3,8(a1)
	lw	s1,0(a1)
	lw	a1,12(a1)
	addi	t1,sp,64
	mv	a5,a0
	sw	a1,92(sp)
	sw	a1,8(sp)
	sw	a1,76(sp)
	addi	a0,sp,80
	mv	a1,t1
	sw	s1,80(sp)
	sw	s1,64(sp)
	sw	a4,84(sp)
	sw	a4,0(sp)
	sw	a4,68(sp)
	sw	a3,88(sp)
	sw	a3,4(sp)
	sw	a3,72(sp)
	sw	a5,28(sp)
	mv	s0,a2
	call	__unordtf2
	bne	a0,zero,.L591
	lw	a1,8(sp)
	lw	a4,0(sp)
	lw	a3,4(sp)
	addi	a0,sp,64
	sw	a1,60(sp)
	addi	a2,sp,48
	mv	a1,a0
	addi	a0,sp,80
	sw	a4,52(sp)
	sw	a3,56(sp)
	sw	s1,48(sp)
	call	__addtf3
	lw	a5,0(sp)
	lw	a1,80(sp)
	lw	a2,84(sp)
	sw	a5,52(sp)
	lw	a5,4(sp)
	lw	a3,88(sp)
	lw	a4,92(sp)
	sw	a5,56(sp)
	lw	a5,8(sp)
	sw	a1,64(sp)
	addi	a0,sp,64
	addi	a1,sp,48
	sw	s1,48(sp)
	sw	a5,60(sp)
	sw	a2,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	call	__netf2
	beq	a0,zero,.L591
	li	t0,0
	li	t1,0
	li	a3,0
	li	a4,1073610752
	blt	s0,zero,.L595
	li	a4,1073741824
	j	.L595
.L605:
	addi	a2,sp,48
	addi	a1,sp,64
	addi	a0,sp,80
	sw	t0,64(sp)
	sw	t1,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	call	__multf3
	lw	t0,80(sp)
	lw	t1,84(sp)
	lw	a3,88(sp)
	lw	a4,92(sp)
.L595:
	andi	a2,s0,1
	beq	a2,zero,.L594
	lw	a5,0(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	sw	a5,52(sp)
	lw	a5,4(sp)
	addi	a0,sp,64
	sw	s1,48(sp)
	sw	a5,56(sp)
	lw	a5,8(sp)
	sw	t0,32(sp)
	sw	t0,24(sp)
	sw	a5,60(sp)
	sw	t1,36(sp)
	sw	t1,20(sp)
	sw	a3,40(sp)
	sw	a3,16(sp)
	sw	a4,44(sp)
	sw	a4,12(sp)
	call	__multf3
	lw	a5,68(sp)
	lw	s1,64(sp)
	lw	t0,24(sp)
	sw	a5,0(sp)
	lw	a5,72(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	sw	a5,4(sp)
	lw	a5,76(sp)
	lw	a4,12(sp)
	sw	a5,8(sp)
.L594:
	srli	a2,s0,31
	add	a5,a2,s0
	srai	s0,a5,1
	bne	s0,zero,.L605
.L591:
	lw	a5,28(sp)
	lw	a4,0(sp)
	sw	s1,0(a5)
	sw	a4,4(a5)
	lw	a4,4(sp)
	mv	a0,a5
	sw	a4,8(a5)
	lw	a4,8(sp)
	sw	a4,12(a5)
	lw	ra,104(sp)
	.cfi_restore 1
	lw	s0,100(sp)
	.cfi_restore 8
	lw	s1,96(sp)
	.cfi_restore 9
	addi	sp,sp,108
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
	beq	a2,zero,.L607
	add	a2,a1,a2
	mv	a5,a0
.L608:
	lbu	a4,0(a5)
	lbu	a3,0(a1)
	addi	a1,a1,1
	addi	a5,a5,1
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L608
.L607:
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
	beq	a5,zero,.L620
	mv	a5,a0
.L615:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L615
.L627:
	beq	a2,zero,.L622
.L629:
	lbu	a4,0(a1)
	sb	a4,0(a5)
	beq	a4,zero,.L628
	addi	a2,a2,-1
	addi	a1,a1,1
	addi	a5,a5,1
	bne	a2,zero,.L629
.L622:
	sb	zero,0(a5)
.L619:
	ret
.L628:
	bne	a2,zero,.L619
	sb	zero,0(a5)
	ret
.L620:
	mv	a5,a0
	j	.L627
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
	beq	a1,zero,.L638
.L631:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L633
	ret
.L633:
	addi	a0,a0,1
	bne	a1,a0,.L631
	ret
.L638:
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
	beq	a3,zero,.L644
.L648:
	mv	a5,a1
	j	.L643
.L642:
	addi	a5,a5,1
	beq	a4,a3,.L641
.L643:
	lbu	a4,0(a5)
	bne	a4,zero,.L642
	lbu	a3,1(a0)
	addi	a0,a0,1
	bne	a3,zero,.L648
.L644:
	li	a0,0
.L641:
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
.L651:
	lbu	a4,0(a5)
	bne	a4,a1,.L650
	mv	a0,a5
.L650:
	addi	a5,a5,1
	bne	a4,zero,.L651
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
	mv	a5,a1
	beq	t1,zero,.L655
.L656:
	lbu	a4,1(a5)
	addi	a5,a5,1
	bne	a4,zero,.L656
.L655:
	sub	t2,a5,a1
	addi	t2,t2,-1
	bne	a5,a1,.L663
	ret
.L679:
	addi	a0,a0,1
	beq	a5,zero,.L678
.L663:
	lbu	a5,0(a0)
	bne	a5,t1,.L679
	beq	a0,zero,.L657
	mv	a3,t1
	beq	t1,zero,.L666
	add	t0,a0,t2
	mv	a4,a1
	mv	a5,a0
	j	.L660
.L680:
	beq	a5,t0,.L659
	bne	a2,a3,.L659
	lbu	a3,1(a5)
	addi	a5,a5,1
	addi	a4,a4,1
	beq	a3,zero,.L659
.L660:
	lbu	a2,0(a4)
	bne	a2,zero,.L680
.L659:
	lbu	a5,0(a4)
	beq	a5,a3,.L657
	addi	a0,a0,1
	j	.L663
.L678:
	li	a0,0
	ret
.L657:
	ret
.L666:
	mv	a4,a1
	j	.L659
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
	sw	s1,40(sp)
	mv	t1,a2
	.cfi_offset 9, -12
	mv	s1,a3
	li	a2,0
	li	a3,0
	sw	s0,44(sp)
	sw	ra,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	sw	a0,8(sp)
	mv	s0,a1
	sw	t1,20(sp)
	call	__ltdf2
	blt	a0,zero,.L691
.L682:
	lw	a5,8(sp)
	sw	s0,16(sp)
	lw	a1,16(sp)
	sw	a5,12(sp)
	lw	a0,12(sp)
	li	a2,0
	li	a3,0
	call	__gtdf2
	ble	a0,zero,.L685
	lw	a5,20(sp)
	sw	s1,28(sp)
	lw	a1,28(sp)
	sw	a5,24(sp)
	lw	a0,24(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L684
.L685:
	lw	a5,8(sp)
	sw	s0,4(sp)
	lw	ra,48(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	sw	a5,0(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
	.cfi_def_cfa_offset 0
	jr	ra
.L691:
	.cfi_restore_state
	lw	a5,20(sp)
	sw	s1,36(sp)
	lw	a1,36(sp)
	sw	a5,32(sp)
	lw	a0,32(sp)
	li	a2,0
	li	a3,0
	call	__gtdf2
	ble	a0,zero,.L682
.L684:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L685
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	mv	t2,a0
	beq	a3,zero,.L700
	bltu	a1,a3,.L701
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sub	a1,a1,a3
	sw	s0,4(sp)
	.cfi_offset 8, -4
	add	s0,a0,a1
	bgtu	a0,s0,.L702
	sw	s1,0(sp)
	.cfi_offset 9, -8
	lbu	s1,0(a2)
.L699:
	lbu	a5,0(t2)
	mv	a0,t2
	addi	t2,t2,1
	beq	a5,s1,.L720
.L694:
	bleu	t2,s0,.L699
	lw	s0,4(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,0(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L720:
	.cfi_restore_state
	addi	a5,a3,-1
	addi	a4,a2,1
	beq	a5,zero,.L719
	mv	a1,t2
	j	.L695
.L697:
	addi	a5,a5,-1
	addi	a1,a1,1
	addi	a4,a4,1
	beq	a5,zero,.L719
.L695:
	lbu	t0,0(a1)
	lbu	t1,0(a4)
	beq	t0,t1,.L697
	beq	a5,zero,.L719
	bne	t0,t1,.L694
.L719:
	lw	s1,0(sp)
	.cfi_restore 9
.L692:
	lw	s0,4(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L700:
	ret
.L701:
	li	a0,0
	ret
.L702:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -4
	li	a0,0
	j	.L692
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
	beq	a2,zero,.L722
	call	memmove
.L722:
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
	addi	sp,sp,-108
	.cfi_def_cfa_offset 108
	mv	t1,a2
	li	a3,0
	li	a2,0
	sw	s0,100(sp)
	sw	s1,96(sp)
	sw	ra,104(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a0
	mv	s1,a1
	sw	t1,60(sp)
	call	__ltdf2
	blt	a0,zero,.L756
	sw	zero,56(sp)
.L728:
	lui	a4,%hi(.LC13)
	sw	s0,0(sp)
	sw	s1,4(sp)
	lw	a2,%lo(.LC13)(a4)
	lw	a3,%lo(.LC13+4)(a4)
	lw	a0,0(sp)
	lw	a1,4(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	call	__gedf2
	lui	a5,%hi(.LC10)
	blt	a0,zero,.L751
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	mv	t1,s0
	sw	a4,40(sp)
	sw	a5,44(sp)
	li	a5,0
	mv	t2,a5
	mv	t0,s1
.L732:
	lw	a2,40(sp)
	lw	a3,44(sp)
	addi	t2,t2,1
	mv	a0,t1
	mv	a1,t0
	sw	t1,24(sp)
	sw	t0,28(sp)
	sw	t2,16(sp)
	call	__muldf3
	lw	a2,32(sp)
	lw	a3,36(sp)
	mv	s0,a0
	mv	s1,a1
	sw	a0,8(sp)
	sw	a1,0(sp)
	call	__gedf2
	lw	t2,16(sp)
	mv	t0,s1
	mv	t1,s0
	bge	a0,zero,.L732
.L755:
	mv	a5,t2
.L733:
	lw	a4,60(sp)
	sw	a5,0(a4)
	lw	a5,56(sp)
	beq	a5,zero,.L737
	li	a5,-2147483648
	xor	s1,s1,a5
.L737:
	sw	s0,48(sp)
	lw	ra,104(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,100(sp)
	.cfi_restore 8
	sw	s1,52(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	lw	s1,96(sp)
	.cfi_restore 9
	addi	sp,sp,108
	.cfi_def_cfa_offset 0
	jr	ra
.L756:
	.cfi_restore_state
	li	a5,-2147483648
	xor	s1,s1,a5
	li	a5,1
	sw	a5,56(sp)
	j	.L728
.L751:
	sw	s0,16(sp)
	sw	s1,20(sp)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	lw	a0,16(sp)
	lw	a1,20(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	call	__ltdf2
	li	a5,0
	bge	a0,zero,.L733
	sw	s0,24(sp)
	sw	s1,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	li	a2,0
	li	a3,0
	call	__nedf2
	li	a5,0
	beq	a0,zero,.L733
	mv	t2,a5
	mv	t1,s0
	mv	t0,s1
.L736:
	sw	t1,8(sp)
	sw	t0,12(sp)
	lw	a2,8(sp)
	lw	a3,12(sp)
	addi	t2,t2,-1
	mv	a0,t1
	mv	a1,t0
	sw	t1,32(sp)
	sw	t0,36(sp)
	sw	t2,24(sp)
	call	__adddf3
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	s0,a0
	mv	s1,a1
	sw	a0,16(sp)
	sw	a1,0(sp)
	call	__ltdf2
	lw	t2,24(sp)
	mv	t0,s1
	mv	t1,s0
	blt	a0,zero,.L736
	j	.L755
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
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L784
.L768:
	blt	a1,zero,.L769
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L769
	addi	a3,a3,-1
	bne	a3,zero,.L768
.L777:
	li	a0,0
	bne	a2,zero,.L785
.L767:
	ret
.L769:
	beq	a5,zero,.L777
.L784:
	li	a0,0
.L773:
	bltu	a4,a1,.L772
	sub	a4,a4,a1
	or	a0,a0,a5
.L772:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L773
	beq	a2,zero,.L767
.L785:
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
	beq	a0,zero,.L788
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
.L788:
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
	beq	a5,a3,.L802
.L797:
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
.L802:
	bne	a4,a5,.L797
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
	beq	a4,zero,.L806
.L805:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L805
	ret
.L806:
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
	bltu	a0,a1,.L809
	add	a4,a1,a2
	bleu	a0,a4,.L822
.L809:
	beq	t0,zero,.L812
	slli	t0,t0,3
	add	t0,t0,a1
	mv	a4,a1
	mv	a3,a0
.L813:
	lw	t1,0(a4)
	lw	t2,4(a4)
	addi	a4,a4,8
	sw	t1,0(a3)
	sw	t2,4(a3)
	addi	a3,a3,8
	bne	a4,t0,.L813
.L812:
	bleu	a2,a5,.L808
	add	a0,a0,a5
	add	a5,a1,a5
	add	a1,a1,a2
.L814:
	lbu	a4,0(a5)
	addi	a5,a5,1
	addi	a0,a0,1
	sb	a4,-1(a0)
	bne	a5,a1,.L814
	ret
.L822:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L823
.L810:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L810
.L808:
	ret
.L823:
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
	bltu	a0,a1,.L825
	add	a5,a1,a2
	bleu	a0,a5,.L839
.L825:
	beq	t1,zero,.L828
	slli	t1,t1,1
	add	t1,t1,a1
	mv	a5,a1
	mv	a4,a0
.L829:
	lh	a3,0(a5)
	addi	a5,a5,2
	addi	a4,a4,2
	sh	a3,-2(a4)
	bne	a5,t1,.L829
.L828:
	andi	a5,a2,1
	beq	a5,zero,.L824
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
	ret
.L839:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L840
.L826:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L826
.L824:
	ret
.L840:
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
	bltu	a0,a1,.L842
	add	a4,a1,a2
	bleu	a0,a4,.L855
.L842:
	beq	t0,zero,.L845
	slli	t0,t0,2
	add	t0,t0,a1
	mv	a4,a1
	mv	a3,a0
.L846:
	lw	t1,0(a4)
	addi	a4,a4,4
	addi	a3,a3,4
	sw	t1,-4(a3)
	bne	a4,t0,.L846
.L845:
	bleu	a2,a5,.L841
	add	a0,a0,a5
	add	a5,a1,a5
	add	a1,a1,a2
.L847:
	lbu	a4,0(a5)
	addi	a5,a5,1
	addi	a0,a0,1
	sb	a4,-1(a0)
	bne	a5,a1,.L847
	ret
.L855:
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L856
.L843:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	addi	a5,a5,-1
	sb	a3,0(a4)
	bne	a5,t1,.L843
.L841:
	ret
.L856:
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
.L871:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L869
	addi	a0,a0,1
	bne	a0,a2,.L871
.L869:
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
.L875:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L873
	addi	a0,a0,1
	bne	a0,a3,.L875
.L873:
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
	lui	a5,%hi(.LC14)
	sw	s1,0(sp)
	.cfi_offset 9, -12
	lw	s1,%lo(.LC14)(a5)
	sw	s0,4(sp)
	sw	ra,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	a1,s1
	mv	s0,a0
	call	__gesf2
	bge	a0,zero,.L884
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
.L884:
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
.L886:
	sra	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	add	a3,a3,a4
	bne	a5,a2,.L886
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
.L889:
	sra	a4,a3,a5
	andi	a4,a4,1
	addi	a5,a5,1
	add	a0,a0,a4
	bne	a5,a2,.L889
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
	beq	a4,zero,.L894
.L893:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	srli	a4,a4,1
	add	a0,a0,a5
	slli	a1,a1,1
	bne	a4,zero,.L893
	ret
.L894:
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
	beq	a4,zero,.L899
	beq	a1,zero,.L900
.L898:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	srli	a1,a1,1
	add	a0,a0,a5
	slli	a4,a4,1
	bne	a1,zero,.L898
	ret
.L899:
	ret
.L900:
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
	li	a3,32
	li	a5,1
	bleu	a0,a1,.L919
.L903:
	blt	a1,zero,.L904
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L904
	addi	a3,a3,-1
	bne	a3,zero,.L903
.L912:
	li	a0,0
	bne	a2,zero,.L920
.L902:
	ret
.L904:
	beq	a5,zero,.L912
.L919:
	li	a0,0
.L908:
	bltu	a4,a1,.L907
	sub	a4,a4,a1
	or	a0,a0,a5
.L907:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L908
	beq	a2,zero,.L902
.L920:
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
	blt	a0,zero,.L924
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
.L924:
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
	blt	a0,zero,.L929
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
.L929:
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
	li	a2,0
	blt	a1,zero,.L949
.L936:
	beq	a1,zero,.L941
	li	a4,32
	li	a0,0
	j	.L938
.L950:
	addi	a4,a4,-1
	andi	a4,a4,0xff
	beq	a4,zero,.L937
.L938:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	srai	a1,a1,1
	add	a0,a0,a5
	slli	a3,a3,1
	bne	a1,zero,.L950
.L937:
	beq	a2,zero,.L935
	neg	a0,a0
.L935:
	ret
.L949:
	neg	a1,a1
	li	a2,1
	j	.L936
.L941:
	li	a0,0
	j	.L937
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
	blt	a0,zero,.L971
.L952:
	bge	a1,zero,.L953
	neg	a1,a1
	xori	a2,a2,1
.L953:
	mv	a3,a0
	bleu	a0,a1,.L961
	li	a4,32
	li	a5,1
	j	.L955
.L972:
	addi	a4,a4,-1
	beq	a4,zero,.L962
.L955:
	slli	a1,a1,1
	slli	a5,a5,1
	bgtu	a0,a1,.L972
	beq	a5,zero,.L962
	li	a0,0
.L958:
	bltu	a3,a1,.L957
	sub	a3,a3,a1
	or	a0,a0,a5
.L957:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L958
.L956:
	beq	a2,zero,.L951
	neg	a0,a0
.L951:
	ret
.L971:
	neg	a0,a0
	li	a2,1
	j	.L952
.L962:
	li	a0,0
	j	.L956
.L961:
	li	a5,1
	li	a0,0
	j	.L958
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
	bge	a0,zero,.L974
	neg	a0,a0
	li	a2,1
.L974:
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	mv	a3,a0
	bleu	a0,a1,.L982
	li	a4,32
	li	a5,1
	j	.L976
.L993:
	addi	a4,a4,-1
	beq	a4,zero,.L977
.L976:
	slli	a1,a1,1
	slli	a5,a5,1
	bgtu	a0,a1,.L993
	beq	a5,zero,.L977
.L987:
	bltu	a3,a1,.L978
	sub	a3,a3,a1
.L978:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L987
.L977:
	mv	a0,a3
	beq	a2,zero,.L973
	neg	a0,a3
.L973:
	ret
.L982:
	li	a5,1
	j	.L987
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
	li	a3,16
	li	a5,1
	bgeu	a1,a0,.L1011
.L995:
	slli	a0,a1,16
	srai	a0,a0,16
	blt	a0,zero,.L996
	slli	a1,a1,1
	slli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a1,a1,16
	srli	a5,a5,16
	bleu	a4,a1,.L996
	addi	a3,a3,-1
	bne	a3,zero,.L995
.L1004:
	li	a0,0
	bne	a2,zero,.L1012
.L1001:
	ret
.L996:
	beq	a5,zero,.L1004
.L1011:
	li	a0,0
.L1000:
	bltu	a4,a1,.L999
	sub	a4,a4,a1
	or	a0,a5,a0
	slli	a4,a4,16
	slli	a0,a0,16
	srli	a4,a4,16
	srli	a0,a0,16
.L999:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1000
	beq	a2,zero,.L1001
.L1012:
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
	li	a3,32
	li	a5,1
	bleu	a0,a1,.L1030
.L1014:
	blt	a1,zero,.L1015
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L1015
	addi	a3,a3,-1
	bne	a3,zero,.L1014
.L1023:
	li	a0,0
	bne	a2,zero,.L1031
.L1013:
	ret
.L1015:
	beq	a5,zero,.L1023
.L1030:
	li	a0,0
.L1019:
	bltu	a4,a1,.L1018
	sub	a4,a4,a1
	or	a0,a0,a5
.L1018:
	srli	a5,a5,1
	srli	a1,a1,1
	bne	a5,zero,.L1019
	beq	a2,zero,.L1013
.L1031:
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
	beq	a5,zero,.L1033
	addi	a1,a2,-32
	sll	a1,a0,a1
	li	a0,0
	ret
.L1033:
	beq	a2,zero,.L1035
	li	a5,32
	sub	a5,a5,a2
	srl	a5,a0,a5
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
.L1035:
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
	beq	a5,zero,.L1038
	addi	a0,a2,-32
	sra	a0,a1,a0
	srai	a1,a1,31
	ret
.L1038:
	beq	a2,zero,.L1040
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	sra	a1,a1,a2
.L1040:
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
	beq	a3,zero,.L1046
	li	a0,0
.L1046:
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
	blt	a1,a3,.L1049
	li	a0,2
	bgt	a1,a3,.L1047
	li	a0,0
	bltu	a5,a2,.L1047
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1049:
	li	a0,0
.L1047:
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
	blt	a1,a3,.L1054
	li	a5,2
	bgt	a1,a3,.L1054
	li	a5,0
	bltu	a0,a2,.L1054
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1054:
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
	beq	a5,zero,.L1061
	addi	a0,a2,-32
	srl	a0,a1,a0
	li	a1,0
	ret
.L1061:
	beq	a2,zero,.L1063
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a0,a0,a2
	or	a0,a5,a0
	srl	a1,a1,a2
.L1063:
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
	lui	a5,%hi(.LC13)
	lw	t0,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	addi	sp,sp,-76
	.cfi_def_cfa_offset 76
	sw	s0,68(sp)
	sw	s1,64(sp)
	sw	ra,72(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	t1,a0
	mv	s0,a2
	sw	a2,52(sp)
	sw	t0,32(sp)
	mv	a4,a1
	mv	s1,a3
	j	.L1077
.L1083:
	sw	t1,0(sp)
	sw	t1,8(sp)
	sw	a4,4(sp)
	sw	a4,12(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	t1,a0
	mv	a4,a1
.L1077:
	andi	a3,s0,1
	beq	a3,zero,.L1075
	lw	a5,32(sp)
	sw	t1,16(sp)
	sw	a4,20(sp)
	sw	s1,28(sp)
	sw	a5,24(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	sw	t1,40(sp)
	sw	a4,36(sp)
	call	__muldf3
	lw	t1,40(sp)
	lw	a4,36(sp)
	sw	a0,32(sp)
	mv	s1,a1
.L1075:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	bne	s0,zero,.L1083
	lw	a2,52(sp)
	lw	t0,32(sp)
	mv	a3,s1
	bge	a2,zero,.L1074
	sw	t0,56(sp)
	lui	a5,%hi(.LC13)
	sw	s1,60(sp)
	lw	a3,60(sp)
	lw	a2,56(sp)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	mv	t0,a0
	mv	a3,a1
.L1074:
	lw	ra,72(sp)
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	sw	t0,44(sp)
	sw	a3,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	lui	a5,%hi(.LC15)
	sw	s0,12(sp)
	sw	s1,8(sp)
	sw	a1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a1
	lw	s0,%lo(.LC15)(a5)
	sw	ra,16(sp)
	.cfi_offset 1, -4
	mv	a1,a0
	j	.L1087
.L1093:
	mv	a0,a1
	call	__mulsf3
	mv	a1,a0
.L1087:
	andi	a4,s1,1
	beq	a4,zero,.L1085
	mv	a0,s0
	sw	a1,0(sp)
	call	__mulsf3
	lw	a1,0(sp)
	mv	s0,a0
.L1085:
	srli	a4,s1,31
	add	a5,a4,s1
	srai	s1,a5,1
	bne	s1,zero,.L1093
	lw	a5,4(sp)
	bge	a5,zero,.L1084
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	mv	a1,s0
	call	__divsf3
	mv	s0,a0
.L1084:
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
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	mv	a5,a0
	bltu	a1,a3,.L1096
	li	a0,2
	bgtu	a1,a3,.L1094
	li	a0,0
	bltu	a5,a2,.L1094
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1096:
	li	a0,0
.L1094:
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
	bltu	a1,a3,.L1101
	li	a5,2
	bgtu	a1,a3,.L1101
	li	a5,0
	bltu	a0,a2,.L1101
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1101:
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
	.word	1072693248
	.section	.srodata.cst4
	.align	2
.LC14:
	.word	1191182336
	.align	2
.LC15:
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
