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
	addi	a1,a1,-1
	addi	a5,a5,-1
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a0,a5,.L4
	ret
.L2:
	beq	a0,a1,.L3
	beq	a2,zero,.L3
	add	a2,a0,a2
	mv	a5,a0
.L5:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a1)
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
	beq	a3,zero,.L20
.L16:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	beq	a5,a2,.L27
	addi	a3,a3,-1
	addi	a1,a1,1
	addi	a0,a0,1
	bne	a3,zero,.L16
.L20:
	li	a0,0
	ret
.L27:
	beq	a3,zero,.L20
	addi	a0,a0,1
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
	beq	a2,zero,.L34
.L29:
	lbu	a5,0(a0)
	beq	a5,a1,.L37
	addi	a0,a0,1
	addi	a2,a2,-1
	bne	a2,zero,.L29
.L34:
	li	a0,0
	ret
.L37:
	beq	a2,zero,.L34
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
	j	.L50
.L41:
	addi	a2,a2,-1
	addi	a0,a0,1
	addi	a1,a1,1
.L50:
	beq	a2,zero,.L43
	lbu	a4,0(a0)
	lbu	a5,0(a1)
	beq	a4,a5,.L41
	beq	a2,zero,.L43
	sub	a0,a4,a5
	ret
.L43:
	li	a0,0
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
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	beq	a2,zero,.L52
	call	memcpy
.L52:
	mv	a0,s0
	lw	ra,4(sp)
	.cfi_restore 1
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
	andi	a1,a1,0xff
	addi	a2,a2,-1
	add	a2,a0,a2
	addi	a4,a0,-1
.L58:
	beq	a2,a4,.L61
	mv	a0,a2
	addi	a2,a2,-1
	lbu	a5,0(a0)
	bne	a5,a1,.L58
	ret
.L61:
	li	a0,0
.L57:
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
	j	.L76
.L71:
	addi	a1,a1,1
	addi	a0,a0,1
.L76:
	lbu	a5,0(a1)
	sb	a5,0(a0)
	bne	a5,zero,.L71
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
	andi	a1,a1,0xff
	lbu	a5,0(a0)
	beq	a5,zero,.L84
.L78:
	beq	a5,a1,.L77
	addi	a0,a0,1
	lbu	a5,0(a0)
	bne	a5,zero,.L78
.L77:
	ret
.L84:
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
.L87:
	lbu	a5,0(a0)
	beq	a5,a1,.L86
	addi	a0,a0,1
	bne	a5,zero,.L87
	li	a0,0
.L86:
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
	j	.L94
.L92:
	addi	a0,a0,1
	addi	a1,a1,1
.L94:
	lbu	a5,0(a0)
	lbu	a4,0(a1)
	bne	a5,a4,.L91
	bne	a5,zero,.L92
.L91:
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
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L97
.L96:
	sub	a0,a5,a0
	ret
.L98:
	mv	a5,a0
	j	.L96
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
.L103:
	lbu	a4,0(a1)
	beq	a4,zero,.L102
	beq	a0,a3,.L102
	bne	a4,a5,.L102
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,0(a0)
	bne	a5,zero,.L103
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
	ble	a2,a5,.L115
	andi	a2,a2,-2
	add	a4,a0,a2
.L117:
	lbu	a5,1(a0)
	sb	a5,0(a1)
	lbu	a5,0(a0)
	sb	a5,1(a1)
	addi	a1,a1,2
	addi	a0,a0,2
	bne	a0,a4,.L117
.L115:
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
	beq	a0,a5,.L123
	addi	a0,a0,-9
	seqz	a0,a0
	ret
.L123:
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
	bleu	a0,a5,.L126
	addi	a0,a0,-127
	seqz	a0,a0
	ret
.L126:
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
	beq	a0,a5,.L133
	addi	a0,a0,-9
	sltiu	a0,a0,5
	ret
.L133:
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
	mv	a5,a0
	li	a4,31
	bleu	a0,a4,.L137
	addi	a4,a0,-127
	li	a3,32
	li	a0,1
	bleu	a4,a3,.L135
	li	a4,-8192
	addi	a4,a4,-40
	add	a4,a5,a4
	bleu	a4,a0,.L135
	li	a4,-65536
	addi	a4,a4,7
	add	a5,a5,a4
	sltiu	a0,a5,3
	ret
.L137:
	li	a0,1
.L135:
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
	mv	a5,a0
	li	a4,254
	bleu	a0,a4,.L148
	li	a4,8192
	addi	a4,a4,39
	li	a0,1
	bleu	a5,a4,.L141
	li	a4,-8192
	addi	a4,a4,-42
	add	a4,a5,a4
	li	a3,45056
	addi	a3,a3,2005
	bleu	a4,a3,.L141
	li	a3,-57344
	add	a3,a5,a3
	li	a4,8192
	addi	a4,a4,-8
	bleu	a3,a4,.L141
	li	a4,-65536
	addi	a4,a4,4
	add	a4,a5,a4
	li	a3,1048576
	addi	a3,a3,3
	li	a0,0
	bgtu	a4,a3,.L141
	li	a4,65536
	addi	a4,a4,-2
	and	a5,a5,a4
	sub	a5,a5,a4
	snez	a0,a5
.L141:
	ret
.L148:
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
	bleu	a4,a5,.L151
	ori	a0,a0,32
	addi	a0,a0,-97
	sltiu	a0,a0,6
	ret
.L151:
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
	sw	ra,72(sp)
	sw	s0,68(sp)
	sw	s1,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	t1,40(sp)
	sw	t2,44(sp)
	mv	s1,a2
	mv	s0,a3
	sw	a0,0(sp)
	sw	a1,4(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L156
	sw	s1,16(sp)
	sw	s0,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	mv	a0,s1
	mv	a1,s0
	call	__unorddf2
	bne	a0,zero,.L157
	sw	s1,24(sp)
	sw	s0,28(sp)
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a5,0(sp)
	sw	a5,32(sp)
	lw	a4,4(sp)
	sw	a4,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	call	__gtdf2
	ble	a0,zero,.L160
	sw	s1,48(sp)
	sw	s0,52(sp)
	lw	a2,48(sp)
	lw	a3,52(sp)
	lw	a5,0(sp)
	sw	a5,56(sp)
	lw	a4,4(sp)
	sw	a4,60(sp)
	lw	a0,56(sp)
	lw	a1,60(sp)
	call	__subdf3
.L153:
	sw	a0,8(sp)
	sw	a1,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L156:
	.cfi_restore_state
	lw	a0,0(sp)
	lw	a1,4(sp)
	j	.L153
.L157:
	mv	a0,s1
	mv	a1,s0
	j	.L153
.L160:
	li	a0,0
	li	a1,0
	j	.L153
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L165
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L166
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	ble	a0,zero,.L169
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
.L162:
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
.L165:
	.cfi_restore_state
	mv	a0,s0
	j	.L162
.L166:
	mv	a0,s1
	j	.L162
.L169:
	mv	a0,zero
	j	.L162
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
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	sw	a2,12(sp)
	sw	a3,0(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L179
	lw	a0,12(sp)
	lw	a1,0(sp)
	sw	a0,16(sp)
	sw	a1,20(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__unorddf2
	bne	a0,zero,.L171
	li	a5,-2147483648
	and	a4,s0,a5
	lw	a3,0(sp)
	and	a5,a3,a5
	beq	a4,a5,.L173
	beq	a4,zero,.L171
.L179:
	lw	s1,12(sp)
	lw	s0,0(sp)
.L171:
	sw	s1,4(sp)
	sw	s0,8(sp)
	lw	a0,4(sp)
	lw	a1,8(sp)
	lw	ra,56(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
	.cfi_def_cfa_offset 0
	jr	ra
.L173:
	.cfi_restore_state
	lw	a4,12(sp)
	lw	a5,0(sp)
	sw	a4,32(sp)
	sw	a5,36(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	sw	s1,40(sp)
	sw	s0,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	call	__ltdf2
	bge	a0,zero,.L171
	j	.L179
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L189
	mv	a1,s0
	mv	a0,s0
	call	__unordsf2
	bne	a0,zero,.L190
	li	a5,-2147483648
	and	a4,a5,s1
	and	a5,a5,s0
	beq	a4,a5,.L185
	mv	a0,s0
	bne	a4,zero,.L183
.L190:
	mv	a0,s1
	j	.L183
.L185:
	mv	a1,s0
	mv	a0,s1
	call	__ltsf2
	blt	a0,zero,.L189
	mv	s0,s1
.L189:
	mv	a0,s0
.L183:
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
	sw	ra,68(sp)
	sw	s0,64(sp)
	sw	s1,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	lw	t0,0(a1)
	lw	t1,4(a1)
	lw	a3,8(a1)
	lw	a4,12(a1)
	lw	a5,0(a2)
	sw	a5,0(sp)
	lw	a1,4(a2)
	sw	a1,4(sp)
	lw	a0,8(a2)
	sw	a0,8(sp)
	lw	s0,12(a2)
	sw	t0,44(sp)
	sw	t1,48(sp)
	sw	a3,52(sp)
	sw	a4,56(sp)
	sw	t0,28(sp)
	sw	t0,24(sp)
	sw	t1,32(sp)
	sw	t1,20(sp)
	sw	a3,36(sp)
	sw	a3,16(sp)
	sw	a4,40(sp)
	sw	a4,12(sp)
	addi	a1,sp,28
	addi	a2,sp,44
	mv	a0,a2
	call	__unordtf2
	bne	a0,zero,.L202
	lw	a5,0(sp)
	sw	a5,44(sp)
	lw	a4,4(sp)
	sw	a4,48(sp)
	lw	a3,8(sp)
	sw	a3,52(sp)
	sw	s0,56(sp)
	sw	a5,28(sp)
	sw	a4,32(sp)
	sw	a3,36(sp)
	sw	s0,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__unordtf2
	lw	a4,12(sp)
	lw	a3,16(sp)
	lw	t1,20(sp)
	lw	t0,24(sp)
	bne	a0,zero,.L196
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s0,a2
	beq	a1,a2,.L197
	beq	a1,zero,.L196
.L202:
	lw	t0,0(sp)
	lw	t1,4(sp)
	lw	a3,8(sp)
	mv	a4,s0
.L196:
	sw	t0,0(s1)
	sw	t1,4(s1)
	sw	a3,8(s1)
	sw	a4,12(s1)
	mv	a0,s1
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L197:
	.cfi_restore_state
	sw	t0,44(sp)
	sw	t0,24(sp)
	sw	t1,48(sp)
	sw	t1,20(sp)
	sw	a3,52(sp)
	sw	a3,16(sp)
	sw	a4,56(sp)
	sw	a4,12(sp)
	lw	a5,0(sp)
	sw	a5,28(sp)
	lw	a5,4(sp)
	sw	a5,32(sp)
	lw	a5,8(sp)
	sw	a5,36(sp)
	sw	s0,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	blt	a0,zero,.L202
	lw	t0,24(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	lw	a4,12(sp)
	j	.L196
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
	sw	ra,56(sp)
	sw	s0,52(sp)
	sw	s1,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,28(sp)
	mv	s1,a1
	sw	a2,0(sp)
	mv	s0,a3
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L215
	lw	a1,0(sp)
	sw	a1,12(sp)
	sw	s0,16(sp)
	lw	a2,12(sp)
	lw	a3,16(sp)
	sw	a1,20(sp)
	sw	s0,24(sp)
	lw	a0,20(sp)
	lw	a1,24(sp)
	call	__unorddf2
	bne	a0,zero,.L217
	li	a5,-2147483648
	and	a4,s1,a5
	and	a5,s0,a5
	beq	a4,a5,.L211
	beq	a4,zero,.L215
.L217:
	lw	a5,28(sp)
	mv	t0,s1
	j	.L209
.L211:
	lw	a4,0(sp)
	sw	a4,32(sp)
	sw	s0,36(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	lw	a4,28(sp)
	sw	a4,40(sp)
	sw	s1,44(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	call	__ltdf2
	blt	a0,zero,.L217
.L215:
	lw	a5,0(sp)
	mv	t0,s0
.L209:
	sw	a5,4(sp)
	sw	t0,8(sp)
	lw	a0,4(sp)
	lw	a1,8(sp)
	lw	ra,56(sp)
	.cfi_restore 1
	lw	s0,52(sp)
	.cfi_restore 8
	lw	s1,48(sp)
	.cfi_restore 9
	addi	sp,sp,60
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L227
	mv	a1,s1
	mv	a0,s1
	call	__unordsf2
	bne	a0,zero,.L228
	li	a5,-2147483648
	and	a4,a5,s0
	and	a5,a5,s1
	beq	a4,a5,.L223
	mv	a0,s0
	bne	a4,zero,.L221
.L227:
	mv	a0,s1
	j	.L221
.L223:
	mv	a1,s1
	mv	a0,s0
	call	__ltsf2
	blt	a0,zero,.L228
	mv	s0,s1
.L228:
	mv	a0,s0
.L221:
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
	sw	ra,68(sp)
	sw	s0,64(sp)
	sw	s1,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lw	a5,0(a1)
	lw	a0,4(a1)
	lw	t1,8(a1)
	lw	a4,12(a1)
	lw	t2,0(a2)
	sw	t2,20(sp)
	lw	t0,4(a2)
	sw	t0,16(sp)
	lw	a3,8(a2)
	sw	a3,12(sp)
	lw	s1,12(a2)
	sw	a5,44(sp)
	sw	a0,48(sp)
	sw	t1,52(sp)
	sw	a4,56(sp)
	sw	a5,0(sp)
	sw	a5,28(sp)
	sw	a0,4(sp)
	sw	a0,32(sp)
	sw	t1,8(sp)
	sw	t1,36(sp)
	sw	a4,40(sp)
	sw	a4,24(sp)
	addi	a1,sp,28
	addi	a4,sp,44
	mv	a0,a4
	call	__unordtf2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	bne	a0,zero,.L234
	sw	t2,44(sp)
	sw	t0,48(sp)
	sw	a3,52(sp)
	sw	s1,56(sp)
	sw	t2,28(sp)
	sw	t0,32(sp)
	sw	a3,36(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a4,sp,44
	mv	a0,a4
	call	__unordtf2
	lw	a4,24(sp)
	bne	a0,zero,.L240
	li	a2,-2147483648
	and	a1,a4,a2
	and	a2,s1,a2
	lw	a3,12(sp)
	lw	t0,16(sp)
	lw	t2,20(sp)
	beq	a1,a2,.L235
	beq	a1,zero,.L234
.L240:
	lw	t2,0(sp)
	lw	t0,4(sp)
	lw	a3,8(sp)
.L247:
	mv	s1,a4
.L234:
	sw	t2,0(s0)
	sw	t0,4(s0)
	sw	a3,8(s0)
	sw	s1,12(s0)
	mv	a0,s0
	lw	ra,68(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,64(sp)
	.cfi_restore 8
	lw	s1,60(sp)
	.cfi_restore 9
	addi	sp,sp,72
	.cfi_def_cfa_offset 0
	jr	ra
.L235:
	.cfi_restore_state
	lw	a5,0(sp)
	sw	a5,44(sp)
	lw	a5,4(sp)
	sw	a5,48(sp)
	lw	a5,8(sp)
	sw	a5,52(sp)
	sw	a4,56(sp)
	sw	a4,12(sp)
	sw	t2,28(sp)
	sw	t2,24(sp)
	sw	t0,32(sp)
	sw	t0,20(sp)
	sw	a3,36(sp)
	sw	a3,16(sp)
	sw	s1,40(sp)
	addi	a1,sp,28
	addi	a0,sp,44
	call	__lttf2
	lw	a4,12(sp)
	blt	a0,zero,.L240
	lw	t2,24(sp)
	lw	t0,20(sp)
	lw	a3,16(sp)
	mv	a4,s1
	j	.L247
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
	addi	a4,a2,%lo(s.0)
	beq	a0,zero,.L249
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
.L250:
	andi	a5,a0,63
	add	a5,a3,a5
	lbu	a5,0(a5)
	sb	a5,0(a4)
	addi	a4,a4,1
	srli	a0,a0,6
	bne	a0,zero,.L250
.L249:
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
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	lui	s0,%hi(seed)
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	lw	a0,%lo(seed)(s0)
	lw	a1,%lo(seed+4)(s0)
	call	__muldi3
	addi	a5,a0,1
	sltu	a0,a5,a0
	add	a0,a0,a1
	sw	a5,%lo(seed)(s0)
	sw	a0,%lo(seed+4)(s0)
	srli	a0,a0,1
	lw	ra,4(sp)
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
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
	beq	a1,zero,.L262
	lw	a5,0(a1)
	sw	a5,0(a0)
	sw	a1,4(a0)
	sw	a0,0(a1)
	lw	a5,0(a0)
	beq	a5,zero,.L256
	sw	a0,4(a5)
.L256:
	ret
.L262:
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
	beq	a5,zero,.L264
	lw	a4,4(a0)
	sw	a4,4(a5)
.L264:
	lw	a5,4(a0)
	beq	a5,zero,.L263
	lw	a4,0(a0)
	sw	a4,0(a5)
.L263:
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,4(sp)
	sw	a1,20(sp)
	sw	a2,24(sp)
	sw	a3,12(sp)
	sw	a4,16(sp)
	lw	a5,0(a2)
	sw	a5,8(sp)
	beq	a5,zero,.L273
	sw	s1,28(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	li	s0,0
.L275:
	sw	s1,0(sp)
	mv	a1,s1
	lw	a0,4(sp)
	lw	a5,16(sp)
	jalr	a5
	beq	a0,zero,.L288
	addi	s0,s0,1
	lw	a5,12(sp)
	add	s1,s1,a5
	lw	a5,8(sp)
	bne	a5,s0,.L275
	lw	s1,28(sp)
	.cfi_restore 9
.L273:
	lw	a1,8(sp)
	addi	a5,a1,1
	lw	a4,24(sp)
	sw	a5,0(a4)
	lw	s0,12(sp)
	mv	a0,s0
	call	__mulsi3
	lw	a4,20(sp)
	add	a4,a4,a0
	sw	a4,0(sp)
	beq	s0,zero,.L272
	mv	a2,s0
	lw	a1,4(sp)
	mv	a0,a4
	call	memmove
	j	.L272
.L288:
	.cfi_offset 9, -12
	lw	s1,28(sp)
	.cfi_restore 9
.L272:
	lw	a0,0(sp)
	lw	ra,36(sp)
	.cfi_restore 1
	lw	s0,32(sp)
	.cfi_restore 8
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,4(sp)
	sw	a3,16(sp)
	sw	a4,8(sp)
	lw	a5,0(a2)
	sw	a5,12(sp)
	beq	a5,zero,.L290
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	li	s1,0
.L292:
	sw	s0,0(sp)
	mv	a1,s0
	lw	a0,4(sp)
	lw	a5,8(sp)
	jalr	a5
	beq	a0,zero,.L301
	addi	s1,s1,1
	lw	a5,16(sp)
	add	s0,s0,a5
	lw	a5,12(sp)
	bne	a5,s1,.L292
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L290:
	sw	zero,0(sp)
	j	.L289
.L301:
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.L289:
	lw	a0,0(sp)
	lw	ra,28(sp)
	.cfi_restore 1
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
	mv	a5,a0
	li	a3,32
	j	.L304
.L306:
	addi	a5,a5,1
.L304:
	lbu	a4,0(a5)
	beq	a4,a3,.L306
	addi	a0,a4,-9
	sltiu	a0,a0,5
	bne	a0,zero,.L306
	li	a3,43
	beq	a4,a3,.L313
	li	a3,45
	li	a1,0
	bne	a4,a3,.L308
	li	a1,1
.L307:
	addi	a5,a5,1
.L308:
	lbu	a3,0(a5)
	addi	a3,a3,-48
	li	a4,9
	mv	a2,a4
	bgtu	a3,a4,.L310
.L309:
	slli	a4,a0,2
	add	a4,a4,a0
	slli	a4,a4,1
	addi	a5,a5,1
	sub	a0,a4,a3
	lbu	a3,0(a5)
	addi	a3,a3,-48
	bleu	a3,a2,.L309
.L310:
	bne	a1,zero,.L303
	neg	a0,a0
.L303:
	ret
.L313:
	li	a1,0
	j	.L307
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
	mv	a3,a0
	li	a4,32
	j	.L319
.L321:
	addi	a3,a3,1
.L319:
	lbu	a5,0(a3)
	beq	a5,a4,.L321
	addi	a2,a5,-9
	sltiu	a2,a2,5
	bne	a2,zero,.L321
	li	a4,43
	beq	a5,a4,.L322
	li	a4,45
	bne	a5,a4,.L323
	li	a2,1
.L322:
	addi	a3,a3,1
.L323:
	lbu	t0,0(a3)
	addi	t0,t0,-48
	li	a5,9
	li	a0,0
	li	a1,0
	mv	t1,a5
	bgtu	t0,a5,.L325
.L324:
	srli	a5,a0,30
	slli	t2,a1,2
	or	t2,a5,t2
	slli	a5,a0,2
	add	a4,a5,a0
	sltu	a5,a4,a5
	add	t2,t2,a1
	add	a5,a5,t2
	srli	a1,a4,31
	slli	a5,a5,1
	or	a5,a1,a5
	slli	a4,a4,1
	addi	a3,a3,1
	srai	a1,t0,31
	sub	a0,a4,t0
	sgtu	a4,a0,a4
	sub	a5,a5,a1
	sub	a1,a5,a4
	lbu	t0,0(a3)
	addi	t0,t0,-48
	bleu	t0,t1,.L324
.L325:
	bne	a2,zero,.L318
	snez	a5,a0
	neg	a1,a1
	sub	a1,a1,a5
	neg	a0,a0
.L318:
	ret
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	beq	a2,zero,.L332
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L335
.L336:
	mv	s1,a5
.L333:
	beq	s1,zero,.L343
.L335:
	srli	a5,s1,1
	lw	a1,8(sp)
	mv	a0,a5
	sw	a5,0(sp)
	call	__mulsi3
	lw	a5,4(sp)
	add	s0,a5,a0
	mv	a1,s0
	lw	a0,12(sp)
	lw	a5,16(sp)
	jalr	a5
	lw	a5,0(sp)
	blt	a0,zero,.L336
	ble	a0,zero,.L342
	lw	a4,8(sp)
	add	a4,s0,a4
	sw	a4,4(sp)
	addi	a2,s1,-1
	sub	s1,a2,a5
	j	.L333
.L343:
	lw	s1,20(sp)
	.cfi_restore 9
.L332:
	li	s0,0
	j	.L331
.L342:
	.cfi_offset 9, -12
	lw	s1,20(sp)
	.cfi_restore 9
.L331:
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_restore 1
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
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	sw	a0,12(sp)
	sw	a1,4(sp)
	sw	a3,8(sp)
	sw	a4,16(sp)
	sw	a5,20(sp)
	beq	a2,zero,.L345
	sw	s1,24(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L348
.L347:
	mv	s1,a4
	beq	a4,zero,.L358
.L348:
	srai	a4,s1,1
	lw	a1,8(sp)
	mv	a0,a4
	sw	a4,0(sp)
	call	__mulsi3
	lw	a4,4(sp)
	add	s0,a4,a0
	lw	a2,20(sp)
	mv	a1,s0
	lw	a0,12(sp)
	lw	a5,16(sp)
	jalr	a5
	beq	a0,zero,.L357
	lw	a4,0(sp)
	ble	a0,zero,.L347
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	addi	s1,s1,-1
	srai	a4,s1,1
	j	.L347
.L358:
	lw	s1,24(sp)
	.cfi_restore 9
.L345:
	li	s0,0
	j	.L344
.L357:
	.cfi_offset 9, -12
	lw	s1,24(sp)
	.cfi_restore 9
.L344:
	mv	a0,s0
	lw	ra,32(sp)
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__divsi3
	sw	a0,0(sp)
	mv	a1,s1
	mv	a0,s0
	call	__modsi3
	mv	a1,a0
	lw	a0,0(sp)
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	sgtu	a5,a0,a5
	sub	a1,a1,a4
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
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a2
	mv	a2,a3
	mv	a3,a4
	sw	a2,8(sp)
	sw	a4,4(sp)
	mv	a0,a1
	sw	a1,0(sp)
	mv	a1,s1
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	lw	a2,8(sp)
	lw	a3,4(sp)
	lw	a5,0(sp)
	mv	a0,a5
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
	lw	ra,20(sp)
	.cfi_restore 1
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
	addi	sp,sp,-24
	.cfi_def_cfa_offset 24
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__divsi3
	sw	a0,0(sp)
	mv	a1,s1
	mv	a0,s0
	call	__modsi3
	mv	a1,a0
	lw	a0,0(sp)
	lw	ra,20(sp)
	.cfi_restore 1
	lw	s0,16(sp)
	.cfi_restore 8
	lw	s1,12(sp)
	.cfi_restore 9
	addi	sp,sp,24
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
	sgtu	a5,a0,a5
	sub	a1,a1,a4
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
	sw	ra,20(sp)
	sw	s0,16(sp)
	sw	s1,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a2
	mv	a2,a3
	mv	a3,a4
	sw	a2,8(sp)
	sw	a4,4(sp)
	mv	a0,a1
	sw	a1,0(sp)
	mv	a1,s1
	call	__divdi3
	sw	a0,0(s0)
	sw	a1,4(s0)
	lw	a2,8(sp)
	lw	a3,4(sp)
	lw	a5,0(sp)
	mv	a0,a5
	mv	a1,s1
	call	__moddi3
	sw	a0,8(s0)
	sw	a1,12(s0)
	mv	a0,s0
	lw	ra,20(sp)
	.cfi_restore 1
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
	j	.L379
.L373:
	addi	a0,a0,4
.L379:
	lw	a5,0(a0)
	beq	a5,zero,.L376
	bne	a1,a5,.L373
	beq	a5,zero,.L376
.L370:
	ret
.L376:
	li	a0,0
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
	j	.L390
.L383:
	addi	a0,a0,4
	addi	a1,a1,4
.L390:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L382
	beq	a5,zero,.L382
	bne	a4,zero,.L383
.L382:
	li	a0,-1
	blt	a5,a4,.L380
	sgt	a0,a5,a4
.L380:
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
.L392:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L392
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
	beq	a5,zero,.L397
	mv	a5,a0
.L396:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L396
.L395:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L397:
	mv	a5,a0
	j	.L395
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
.L412:
	beq	a2,zero,.L404
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L401
	beq	a5,zero,.L401
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	j	.L412
.L401:
	beq	a2,zero,.L404
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L399
	sgt	a0,a4,a5
	ret
.L404:
	li	a0,0
.L399:
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
	j	.L422
.L416:
	addi	a2,a2,-1
	addi	a0,a0,4
.L422:
	beq	a2,zero,.L419
	lw	a5,0(a0)
	bne	a5,a1,.L416
	beq	a2,zero,.L419
.L413:
	ret
.L419:
	li	a0,0
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
	j	.L436
.L426:
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
.L436:
	beq	a2,zero,.L428
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L426
	beq	a2,zero,.L428
	li	a0,-1
	blt	a4,a5,.L423
	sgt	a0,a4,a5
	ret
.L428:
	li	a0,0
.L423:
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
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	beq	a2,zero,.L438
	slli	a2,a2,2
	call	memcpy
.L438:
	mv	a0,s0
	lw	ra,4(sp)
	.cfi_restore 1
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
	beq	a0,a1,.L444
	addi	a5,a2,-1
	sub	a4,a0,a1
	slli	a3,a2,2
	bltu	a4,a3,.L445
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L455
.L446:
	addi	a1,a1,4
	addi	a4,a4,4
	lw	a3,-4(a1)
	sw	a3,-4(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L446
.L444:
	ret
.L455:
	ret
.L445:
	beq	a2,zero,.L444
	slli	a5,a5,2
	li	a2,-4
.L447:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L447
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
	beq	a2,zero,.L457
	mv	a4,a0
	li	a3,-1
.L458:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L458
.L457:
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
	bgeu	a0,a1,.L464
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L463
.L466:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L466
	ret
.L464:
	beq	a0,a1,.L463
	beq	a2,zero,.L463
	add	a2,a0,a2
.L467:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a2,a0,.L467
.L463:
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
	addi	a5,a2,-32
	blt	a5,zero,.L477
	sll	a5,a0,a5
	li	a3,0
.L478:
	neg	a2,a2
	andi	a2,a2,63
	addi	a4,a2,-32
	blt	a4,zero,.L479
	srl	a0,a1,a4
	li	a1,0
.L480:
	or	a0,a0,a3
	or	a1,a1,a5
	ret
.L477:
	srli	a4,a0,1
	li	a5,31
	sub	a5,a5,a2
	srl	a4,a4,a5
	sll	a5,a1,a2
	or	a5,a4,a5
	sll	a3,a0,a2
	j	.L478
.L479:
	slli	a4,a1,1
	li	t1,31
	sub	t1,t1,a2
	sll	a4,a4,t1
	srl	a0,a0,a2
	or	a0,a4,a0
	srl	a1,a1,a2
	j	.L480
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
	blt	a4,zero,.L482
	srl	a4,a1,a4
	li	a3,0
.L483:
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	blt	a5,zero,.L484
	sll	a1,a0,a5
	li	a0,0
.L485:
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L482:
	slli	a5,a1,1
	li	a4,31
	sub	a4,a4,a2
	sll	a5,a5,a4
	srl	a4,a0,a2
	or	a4,a5,a4
	srl	a3,a1,a2
	j	.L483
.L484:
	srli	a5,a0,1
	li	t1,31
	sub	t1,t1,a2
	srl	a5,a5,t1
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
	j	.L485
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
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
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
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
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
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
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
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
	sll	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,15
	srl	a0,a0,a1
	or	a0,a5,a0
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
	srl	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,15
	sll	a0,a0,a1
	or	a0,a5,a0
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
	sll	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,7
	srl	a0,a0,a1
	or	a0,a5,a0
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
	srl	a5,a0,a1
	neg	a1,a1
	andi	a1,a1,7
	sll	a0,a0,a1
	or	a0,a5,a0
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
	slli	a5,a0,24
	srli	a4,a0,24
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,8
	li	a4,16711680
	and	a0,a0,a4
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
	mv	a5,a0
	slli	a3,a0,24
	srli	a0,a1,24
	srli	a4,a1,8
	li	t1,65536
	addi	t1,t1,-256
	and	a4,a4,t1
	or	a0,a0,a4
	slli	a2,a1,8
	srli	a4,a5,24
	or	a4,a2,a4
	li	a2,16711680
	and	a4,a4,a2
	or	a0,a0,a4
	slli	a4,a1,24
	slli	a1,a5,8
	srli	t0,a5,24
	or	a3,a3,t0
	srli	a5,a5,8
	or	a5,a5,a4
	and	a5,a5,t1
	or	a5,a3,a5
	and	a1,a1,a2
	or	a0,a0,a4
	or	a1,a5,a1
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
.L500:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	bne	a4,zero,.L502
	bne	a5,a3,.L500
	li	a0,0
	ret
.L502:
	mv	a0,a5
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
	beq	a0,zero,.L506
	andi	a0,a0,1
	bne	a0,zero,.L503
	li	a0,1
.L505:
	srai	a5,a5,1
	addi	a0,a0,1
	andi	a4,a5,1
	beq	a4,zero,.L505
	ret
.L506:
	li	a0,0
.L503:
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
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	ra,4(sp)
	sw	s0,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	lui	a5,%hi(.LC1)
	lw	a1,%lo(.LC1)(a5)
	call	__ltsf2
	blt	a0,zero,.L512
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L509:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L512:
	.cfi_restore_state
	li	a0,1
	j	.L509
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	addi	sp,sp,-20
	.cfi_def_cfa_offset 20
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__ltdf2
	blt	a0,zero,.L517
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	sgt	a0,a0,zero
.L514:
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L517:
	.cfi_restore_state
	li	a0,1
	j	.L514
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
	sw	ra,52(sp)
	sw	s0,48(sp)
	sw	s1,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	lw	a2,0(a0)
	lw	a3,4(a0)
	lw	a4,8(a0)
	lw	s1,12(a0)
	lui	a5,%hi(.LC5)
	li	s0,-1
	lw	a0,%lo(.LC5+4)(a5)
	lw	a1,%lo(.LC5+8)(a5)
	lw	a5,%lo(.LC5+12)(a5)
	sw	a2,28(sp)
	sw	a2,8(sp)
	sw	a3,32(sp)
	sw	a3,4(sp)
	sw	a4,36(sp)
	sw	a4,0(sp)
	sw	s1,40(sp)
	sw	s0,12(sp)
	sw	a0,16(sp)
	sw	a1,20(sp)
	sw	a5,24(sp)
	addi	a1,sp,12
	addi	a0,sp,28
	call	__lttf2
	blt	a0,zero,.L522
	lui	a5,%hi(.LC6)
	lw	a0,%lo(.LC6+4)(a5)
	lw	a1,%lo(.LC6+8)(a5)
	lw	a5,%lo(.LC6+12)(a5)
	sw	a0,16(sp)
	sw	a1,20(sp)
	sw	a5,24(sp)
	addi	a1,sp,12
	addi	a0,sp,28
	call	__gttf2
	sgt	a0,a0,zero
.L519:
	lw	ra,52(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,48(sp)
	.cfi_restore 8
	lw	s1,44(sp)
	.cfi_restore 9
	addi	sp,sp,56
	.cfi_def_cfa_offset 0
	jr	ra
.L522:
	.cfi_restore_state
	li	a0,1
	j	.L519
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
	sw	ra,20(sp)
	sw	s0,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
	call	__floatsidf
	mv	a2,a1
	mv	a1,a0
	mv	a0,sp
	call	__extenddftf2
	lw	a5,0(sp)
	sw	a5,0(s0)
	lw	a5,4(sp)
	sw	a5,4(s0)
	lw	a5,8(sp)
	sw	a5,8(s0)
	lw	a5,12(sp)
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
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	mv	a1,a0
	call	__unordsf2
	bne	a0,zero,.L527
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L527
	blt	s0,zero,.L541
	lui	a5,%hi(.LC7)
	lw	a1,%lo(.LC7)(a5)
	j	.L531
.L541:
	lui	a5,%hi(.LC8)
	lw	a1,%lo(.LC8)(a5)
	j	.L531
.L530:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L527
	mv	a0,a1
	call	__mulsf3
	mv	a1,a0
.L531:
	andi	a5,s0,1
	beq	a5,zero,.L530
	sw	a1,0(sp)
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
	lw	a1,0(sp)
	j	.L530
.L527:
	mv	a0,s1
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
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a4,60(sp)
	sw	a5,64(sp)
	mv	s1,a0
	mv	s0,a2
	sw	a1,16(sp)
	mv	a2,a0
	mv	a3,a1
	call	__unorddf2
	bne	a0,zero,.L543
	lw	a1,16(sp)
	mv	a2,s1
	mv	a3,a1
	sw	s1,36(sp)
	sw	a1,40(sp)
	lw	a0,36(sp)
	lw	a1,40(sp)
	call	__adddf3
	sw	s1,44(sp)
	lw	a5,16(sp)
	sw	a5,48(sp)
	lw	a2,44(sp)
	lw	a3,48(sp)
	call	__nedf2
	beq	a0,zero,.L543
	blt	s0,zero,.L558
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L547
.L558:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	j	.L547
.L546:
	srli	a3,s0,31
	add	a3,a3,s0
	srai	s0,a3,1
	beq	s0,zero,.L543
	sw	a4,0(sp)
	sw	a5,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	a4,8(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
.L547:
	andi	a3,s0,1
	beq	a3,zero,.L546
	sw	a4,20(sp)
	sw	a4,44(sp)
	sw	a5,24(sp)
	sw	a5,36(sp)
	lw	a2,20(sp)
	lw	a3,24(sp)
	sw	s1,28(sp)
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a0,28(sp)
	lw	a1,32(sp)
	call	__muldf3
	mv	s1,a0
	sw	a1,16(sp)
	lw	a4,44(sp)
	lw	a5,36(sp)
	j	.L546
.L543:
	sw	s1,52(sp)
	lw	a5,16(sp)
	sw	a5,56(sp)
	lw	a0,52(sp)
	lw	a1,56(sp)
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
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
	sw	ra,104(sp)
	sw	s0,100(sp)
	sw	s1,96(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,28(sp)
	lw	s1,0(a1)
	lw	a5,4(a1)
	lw	a4,8(a1)
	lw	a3,12(a1)
	mv	s0,a2
	sw	s1,80(sp)
	sw	a5,84(sp)
	sw	a4,88(sp)
	sw	a3,92(sp)
	sw	s1,64(sp)
	sw	a5,0(sp)
	sw	a5,68(sp)
	sw	a4,4(sp)
	sw	a4,72(sp)
	sw	a3,8(sp)
	sw	a3,76(sp)
	addi	a1,sp,64
	addi	a0,sp,80
	call	__unordtf2
	bne	a0,zero,.L560
	lw	a5,0(sp)
	lw	a4,4(sp)
	lw	a3,8(sp)
	sw	s1,48(sp)
	sw	a5,52(sp)
	sw	a4,56(sp)
	sw	a3,60(sp)
	addi	a2,sp,48
	addi	a1,sp,64
	addi	a0,sp,80
	call	__addtf3
	lw	a4,80(sp)
	sw	a4,64(sp)
	lw	a4,84(sp)
	sw	a4,68(sp)
	lw	a4,88(sp)
	sw	a4,72(sp)
	lw	a4,92(sp)
	sw	a4,76(sp)
	sw	s1,48(sp)
	lw	a5,0(sp)
	sw	a5,52(sp)
	lw	a4,4(sp)
	sw	a4,56(sp)
	lw	a3,8(sp)
	sw	a3,60(sp)
	addi	a1,sp,48
	addi	a0,sp,64
	call	__netf2
	beq	a0,zero,.L560
	li	t0,0
	li	t1,0
	li	a3,0
	li	a4,1073610752
	blt	s0,zero,.L564
	li	a4,1073741824
	j	.L564
.L563:
	srli	a2,s0,31
	add	a5,a2,s0
	srai	s0,a5,1
	beq	s0,zero,.L560
	sw	t0,64(sp)
	sw	t1,68(sp)
	sw	a3,72(sp)
	sw	a4,76(sp)
	sw	t0,48(sp)
	sw	t1,52(sp)
	sw	a3,56(sp)
	sw	a4,60(sp)
	addi	a2,sp,48
	addi	a1,sp,64
	addi	a0,sp,80
	call	__multf3
	lw	t0,80(sp)
	lw	t1,84(sp)
	lw	a3,88(sp)
	lw	a4,92(sp)
.L564:
	andi	a2,s0,1
	beq	a2,zero,.L563
	sw	s1,48(sp)
	lw	a5,0(sp)
	sw	a5,52(sp)
	lw	a5,4(sp)
	sw	a5,56(sp)
	lw	a5,8(sp)
	sw	a5,60(sp)
	sw	t0,32(sp)
	sw	t0,24(sp)
	sw	t1,36(sp)
	sw	t1,20(sp)
	sw	a3,40(sp)
	sw	a3,16(sp)
	sw	a4,44(sp)
	sw	a4,12(sp)
	addi	a2,sp,32
	addi	a1,sp,48
	addi	a0,sp,64
	call	__multf3
	lw	s1,64(sp)
	lw	a5,68(sp)
	sw	a5,0(sp)
	lw	a5,72(sp)
	sw	a5,4(sp)
	lw	a5,76(sp)
	sw	a5,8(sp)
	lw	t0,24(sp)
	lw	t1,20(sp)
	lw	a3,16(sp)
	lw	a4,12(sp)
	j	.L563
.L560:
	lw	a5,28(sp)
	sw	s1,0(a5)
	lw	a4,0(sp)
	sw	a4,4(a5)
	lw	a4,4(sp)
	sw	a4,8(a5)
	lw	a4,8(sp)
	sw	a4,12(a5)
	mv	a0,a5
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
	beq	a2,zero,.L575
	add	a2,a1,a2
	mv	a5,a0
.L576:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a5)
	lbu	a3,-1(a1)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L576
.L575:
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
	beq	a5,zero,.L588
	mv	a5,a0
.L583:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L583
	j	.L595
.L588:
	mv	a5,a0
	j	.L595
.L586:
	addi	a1,a1,1
	addi	a5,a5,1
	addi	a2,a2,-1
.L595:
	beq	a2,zero,.L590
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a4,zero,.L586
	bne	a2,zero,.L587
.L590:
	sb	zero,0(a5)
.L587:
	ret
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
	beq	a1,zero,.L603
.L597:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L599
.L596:
	ret
.L603:
	ret
.L599:
	addi	a0,a0,1
	bne	a1,a0,.L597
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
.L612:
	lbu	a3,0(a0)
	beq	a3,zero,.L609
	mv	a5,a1
.L608:
	lbu	a4,0(a5)
	beq	a4,zero,.L613
	addi	a5,a5,1
	bne	a4,a3,.L608
.L606:
	ret
.L613:
	addi	a0,a0,1
	j	.L612
.L609:
	li	a0,0
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
	j	.L616
.L615:
	addi	a5,a5,1
	beq	a4,zero,.L619
.L616:
	lbu	a4,0(a5)
	bne	a4,a1,.L615
	mv	a0,a5
	j	.L615
.L619:
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
	beq	t1,zero,.L621
.L622:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L622
.L621:
	sub	t2,a5,a1
	addi	t2,t2,-1
	bne	a5,a1,.L629
.L623:
	ret
.L632:
	mv	a3,a1
	j	.L625
.L628:
	beq	a0,zero,.L623
	lbu	a4,0(a0)
	beq	a4,zero,.L632
	add	t0,a0,t2
	mv	a3,a1
	mv	a5,a0
.L626:
	lbu	a2,0(a3)
	beq	a2,zero,.L625
	beq	a5,t0,.L625
	bne	a2,a4,.L625
	addi	a5,a5,1
	addi	a3,a3,1
	lbu	a4,0(a5)
	bne	a4,zero,.L626
.L625:
	lbu	a5,0(a3)
	beq	a5,a4,.L623
	addi	a0,a0,1
.L629:
	lbu	a5,0(a0)
	beq	a5,t1,.L628
	addi	a0,a0,1
	bne	a5,zero,.L629
	li	a0,0
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
	sw	ra,48(sp)
	sw	s0,44(sp)
	sw	s1,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a1
	sw	a2,16(sp)
	sw	a3,20(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L654
.L645:
	li	a2,0
	li	a3,0
	sw	s1,8(sp)
	sw	s0,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	ble	a0,zero,.L648
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,24(sp)
	lw	a5,20(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__ltdf2
	blt	a0,zero,.L647
.L648:
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	lw	ra,48(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,44(sp)
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,52
	.cfi_def_cfa_offset 0
	jr	ra
.L654:
	.cfi_restore_state
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,32(sp)
	lw	a5,20(sp)
	sw	a5,36(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	call	__gtdf2
	ble	a0,zero,.L645
.L647:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L648
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
	beq	a3,zero,.L663
	bltu	a1,a3,.L664
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,4(sp)
	.cfi_offset 8, -4
	sub	a1,a1,a3
	add	s0,a0,a1
	bgtu	a0,s0,.L665
	sw	s1,0(sp)
	.cfi_offset 9, -8
	lbu	s1,0(a2)
	j	.L662
.L684:
	beq	a5,zero,.L682
	beq	t0,t1,.L682
.L657:
	bgtu	t2,s0,.L683
.L662:
	lbu	a5,0(t2)
	mv	a0,t2
	addi	t2,t2,1
	bne	a5,s1,.L657
	addi	a4,a2,1
	addi	a5,a3,-1
	beq	a5,zero,.L682
	mv	a1,t2
.L658:
	lbu	t0,0(a1)
	lbu	t1,0(a4)
	bne	t0,t1,.L684
	addi	a5,a5,-1
	addi	a1,a1,1
	addi	a4,a4,1
	bne	a5,zero,.L658
.L682:
	lw	s1,0(sp)
	.cfi_restore 9
.L655:
	lw	s0,4(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L683:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	li	a0,0
	lw	s1,0(sp)
	.cfi_restore 9
	j	.L655
.L663:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	ret
.L664:
	li	a0,0
	ret
.L665:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -4
	li	a0,0
	j	.L655
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	mv	s0,a2
	beq	a2,zero,.L686
	call	memmove
.L686:
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
	addi	sp,sp,-100
	.cfi_def_cfa_offset 100
	sw	ra,96(sp)
	sw	s0,92(sp)
	sw	s1,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	t1,8(sp)
	sw	t2,12(sp)
	mv	s0,a0
	mv	s1,a1
	sw	a2,60(sp)
	li	a2,0
	li	a3,0
	call	__ltdf2
	blt	a0,zero,.L719
	sw	zero,56(sp)
.L692:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	mv	a0,s0
	mv	a1,s1
	call	__gedf2
	blt	a0,zero,.L715
	li	a4,0
	lui	t1,%hi(.LC10)
	lw	a2,%lo(.LC10)(t1)
	lw	a3,%lo(.LC10+4)(t1)
	sw	a2,40(sp)
	sw	a3,44(sp)
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	sw	a2,32(sp)
	sw	a3,36(sp)
	mv	a5,s0
	mv	t0,s1
.L696:
	addi	a4,a4,1
	sw	a4,24(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	a0,a5
	mv	a1,t0
	sw	a5,16(sp)
	sw	t0,20(sp)
	call	__muldf3
	sw	a0,8(sp)
	sw	a1,0(sp)
	lw	a2,32(sp)
	lw	a3,36(sp)
	mv	s0,a0
	mv	s1,a1
	call	__gedf2
	mv	t0,s1
	mv	a5,s0
	lw	a4,24(sp)
	bge	a0,zero,.L696
.L697:
	lw	a5,60(sp)
	sw	a4,0(a5)
	lw	a5,56(sp)
	beq	a5,zero,.L701
	li	a5,-2147483648
	xor	s1,s1,a5
.L701:
	sw	s0,48(sp)
	sw	s1,52(sp)
	lw	a0,48(sp)
	lw	a1,52(sp)
	lw	ra,96(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,92(sp)
	.cfi_restore 8
	lw	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,100
	.cfi_def_cfa_offset 0
	jr	ra
.L719:
	.cfi_restore_state
	li	a5,-2147483648
	xor	s1,s1,a5
	li	a5,1
	sw	a5,56(sp)
	j	.L692
.L715:
	lui	t1,%hi(.LC10)
	lw	a2,%lo(.LC10)(t1)
	lw	a3,%lo(.LC10+4)(t1)
	sw	t1,8(sp)
	sw	s0,16(sp)
	sw	s1,20(sp)
	lw	a0,16(sp)
	lw	a1,20(sp)
	call	__ltdf2
	li	a4,0
	bge	a0,zero,.L697
	li	a2,0
	li	a3,0
	sw	s0,24(sp)
	sw	s1,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__nedf2
	li	a4,0
	beq	a0,zero,.L697
	lw	t1,8(sp)
	lw	a2,%lo(.LC10)(t1)
	lw	a3,%lo(.LC10+4)(t1)
	sw	a2,40(sp)
	sw	a3,44(sp)
	mv	a5,s0
	mv	t0,s1
.L700:
	addi	a4,a4,-1
	sw	a4,32(sp)
	sw	a5,0(sp)
	sw	t0,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	mv	a0,a5
	mv	a1,t0
	sw	a5,24(sp)
	sw	t0,28(sp)
	call	__adddf3
	sw	a0,16(sp)
	sw	a1,8(sp)
	lw	a2,40(sp)
	lw	a3,44(sp)
	mv	s0,a0
	mv	s1,a1
	call	__ltdf2
	mv	t0,s1
	mv	a5,s0
	lw	a4,32(sp)
	blt	a0,zero,.L700
	j	.L697
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	mv	a4,a0
	mv	t0,a1
	or	a1,a1,a0
	li	a0,0
	beq	a1,zero,.L724
	li	a1,0
.L723:
	andi	a5,a4,1
	neg	t1,a5
	mv	a5,t1
	and	t1,t1,a2
	and	a5,a5,a3
	add	t1,a0,t1
	sltu	t2,t1,a0
	add	a5,a1,a5
	mv	a0,t1
	add	a1,t2,a5
	srli	a5,a2,31
	slli	a3,a3,1
	or	a3,a5,a3
	slli	a2,a2,1
	slli	a5,t0,31
	srli	a4,a4,1
	or	a4,a5,a4
	srli	t0,t0,1
	or	a5,a4,t0
	bne	a5,zero,.L723
	ret
.L724:
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
	bgeu	a1,a0,.L743
.L727:
	blt	a1,zero,.L728
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L728
	addi	a3,a3,-1
	bne	a3,zero,.L727
.L736:
	li	a0,0
.L730:
	bne	a2,zero,.L744
.L726:
	ret
.L728:
	beq	a5,zero,.L736
.L743:
	li	a0,0
	j	.L732
.L731:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L730
.L732:
	bltu	a4,a1,.L731
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L731
.L744:
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
	beq	a0,zero,.L747
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	slli	a0,a0,8
	call	__clzsi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L747:
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
	mv	a5,a0
	mv	a4,a1
	srai	a3,a1,31
	xor	a0,a0,a3
	xor	a1,a1,a3
	beq	a5,a3,.L761
.L756:
	addi	sp,sp,-4
	.cfi_def_cfa_offset 4
	sw	ra,0(sp)
	.cfi_offset 1, -4
	call	__clzdi2
	addi	a0,a0,-1
	lw	ra,0(sp)
	.cfi_restore 1
	addi	sp,sp,4
	.cfi_def_cfa_offset 0
	jr	ra
.L761:
	bne	a4,a5,.L756
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
	beq	a4,zero,.L765
.L764:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L764
	ret
.L765:
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
	andi	t0,a2,-8
	bltu	a0,a1,.L768
	add	a5,a1,a2
	bgtu	a0,a5,.L768
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L781
.L769:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L769
.L767:
	ret
.L781:
	ret
.L768:
	beq	a3,zero,.L771
	mv	a5,a1
	mv	a4,a0
	slli	a3,a3,3
	add	a3,a3,a1
.L772:
	lw	t1,0(a5)
	lw	t2,4(a5)
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a5,a5,8
	addi	a4,a4,8
	bne	a5,a3,.L772
.L771:
	bleu	a2,t0,.L767
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L773:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L773
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
	bltu	a0,a1,.L783
	add	a5,a1,a2
	bgtu	a0,a5,.L783
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L797
.L784:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L784
.L782:
	ret
.L797:
	ret
.L783:
	beq	t1,zero,.L786
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
.L787:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,t1,.L787
.L786:
	andi	a5,a2,1
	beq	a5,zero,.L782
	add	a1,a1,a2
	lbu	a5,-1(a1)
	add	a0,a0,a2
	sb	a5,-1(a0)
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
	bltu	a0,a1,.L799
	add	a5,a1,a2
	bgtu	a0,a5,.L799
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L812
.L800:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L800
.L798:
	ret
.L812:
	ret
.L799:
	beq	t1,zero,.L802
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,2
	add	t1,t1,a1
.L803:
	lw	a3,0(a5)
	sw	a3,0(a4)
	addi	a5,a5,4
	addi	a4,a4,4
	bne	a5,t1,.L803
.L802:
	bleu	a2,t0,.L798
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L804:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L804
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
	li	a0,0
	li	a3,15
	li	a2,16
.L827:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L825
	addi	a0,a0,1
	bne	a0,a2,.L827
.L825:
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
	li	a0,0
	li	a3,16
.L831:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L829
	addi	a0,a0,1
	bne	a0,a3,.L831
.L829:
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	lui	a5,%hi(.LC14)
	lw	s1,%lo(.LC14)(a5)
	mv	a1,s1
	call	__gesf2
	bge	a0,zero,.L840
	mv	a0,s0
	call	__fixsfsi
.L833:
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
.L840:
	.cfi_restore_state
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L833
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
.L842:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
	bne	a5,a2,.L842
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
	li	a0,0
	li	a5,0
	li	a2,16
.L845:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
	bne	a5,a2,.L845
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
	beq	a4,zero,.L850
.L849:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L849
	ret
.L850:
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
	beq	a4,zero,.L855
	beq	a1,zero,.L856
.L854:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	add	a0,a0,a5
	slli	a4,a4,1
	srli	a1,a1,1
	bne	a1,zero,.L854
	ret
.L855:
	ret
.L856:
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
	bleu	a0,a1,.L875
.L859:
	blt	a1,zero,.L860
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L860
	addi	a3,a3,-1
	bne	a3,zero,.L859
.L868:
	li	a0,0
.L862:
	bne	a2,zero,.L876
.L858:
	ret
.L860:
	beq	a5,zero,.L868
.L875:
	li	a0,0
	j	.L864
.L863:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L862
.L864:
	bltu	a4,a1,.L863
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L863
.L876:
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
	sw	ra,8(sp)
	sw	s0,4(sp)
	sw	s1,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	call	__ltsf2
	blt	a0,zero,.L880
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L877:
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
.L880:
	.cfi_restore_state
	li	a0,-1
	j	.L877
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
	sw	ra,32(sp)
	sw	s0,28(sp)
	sw	s1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	sw	a0,16(sp)
	sw	a1,20(sp)
	mv	s1,a2
	mv	s0,a3
	call	__ltdf2
	blt	a0,zero,.L885
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	lw	a5,16(sp)
	sw	a5,8(sp)
	lw	a5,20(sp)
	sw	a5,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	sgt	a0,a0,zero
.L882:
	lw	ra,32(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,28(sp)
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,36
	.cfi_def_cfa_offset 0
	jr	ra
.L885:
	.cfi_restore_state
	li	a0,-1
	j	.L882
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
	sw	ra,0(sp)
	.cfi_offset 1, -4
	mv	a2,a1
	srai	a3,a1,31
	srai	a1,a0,31
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
	sw	ra,0(sp)
	.cfi_offset 1, -4
	mv	a2,a1
	li	a3,0
	li	a1,0
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
	blt	a1,zero,.L905
.L892:
	beq	a1,zero,.L897
	li	a4,32
	li	a0,0
.L894:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	add	a0,a0,a5
	slli	a3,a3,1
	srai	a1,a1,1
	beq	a1,zero,.L893
	addi	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L894
.L893:
	beq	a2,zero,.L891
	neg	a0,a0
.L891:
	ret
.L905:
	neg	a1,a1
	li	a2,1
	j	.L892
.L897:
	li	a0,0
	j	.L893
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
	blt	a0,zero,.L926
.L907:
	blt	a1,zero,.L927
.L908:
	mv	a3,a0
	bleu	a0,a1,.L916
	li	a4,32
	li	a5,1
.L910:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a0,a1,.L909
	addi	a4,a4,-1
	bne	a4,zero,.L910
.L917:
	li	a4,0
.L911:
	mv	a0,a4
	beq	a2,zero,.L906
	neg	a0,a4
.L906:
	ret
.L926:
	neg	a0,a0
	li	a2,1
	j	.L907
.L927:
	neg	a1,a1
	xori	a2,a2,1
	j	.L908
.L916:
	li	a5,1
	j	.L925
.L909:
	beq	a5,zero,.L917
.L925:
	li	a4,0
	j	.L913
.L928:
	sub	a3,a3,a1
	or	a4,a4,a5
.L912:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L911
.L913:
	bltu	a3,a1,.L912
	j	.L928
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
	blt	a0,zero,.L949
.L930:
	mv	a3,a0
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	bleu	a0,a1,.L938
	li	a4,32
	li	a5,1
.L932:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a0,a1,.L948
	addi	a4,a4,-1
	bne	a4,zero,.L932
.L933:
	mv	a0,a3
	beq	a2,zero,.L929
	neg	a0,a3
.L929:
	ret
.L949:
	neg	a0,a0
	li	a2,1
	j	.L930
.L938:
	li	a5,1
	j	.L943
.L950:
	sub	a3,a3,a1
.L934:
	srli	a5,a5,1
	srli	a1,a1,1
.L948:
	beq	a5,zero,.L933
.L943:
	bltu	a3,a1,.L934
	j	.L950
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	mv	t1,a0
	li	a4,16
	li	a5,1
	bgeu	a1,a0,.L968
.L952:
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L953
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	t1,a1,.L953
	addi	a4,a4,-1
	bne	a4,zero,.L952
.L961:
	li	a0,0
.L955:
	bne	a2,zero,.L969
.L958:
	ret
.L953:
	beq	a5,zero,.L961
.L968:
	li	a0,0
	j	.L957
.L956:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L955
.L957:
	bltu	t1,a1,.L956
	sub	t1,t1,a1
	slli	t1,t1,16
	srli	t1,t1,16
	or	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
	j	.L956
.L969:
	mv	a0,t1
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
	bleu	a0,a1,.L987
.L971:
	blt	a1,zero,.L972
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L972
	addi	a3,a3,-1
	bne	a3,zero,.L971
.L980:
	li	a0,0
.L974:
	bne	a2,zero,.L988
.L970:
	ret
.L972:
	beq	a5,zero,.L980
.L987:
	li	a0,0
	j	.L976
.L975:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L974
.L976:
	bltu	a4,a1,.L975
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L975
.L988:
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
	mv	a5,a0
	andi	a4,a2,32
	beq	a4,zero,.L990
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L990:
	beq	a2,zero,.L993
	sll	a0,a0,a2
	li	a4,32
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a1,a1,a2
	or	a1,a5,a1
	ret
.L993:
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
	beq	a5,zero,.L995
	srai	a4,a1,31
	addi	a2,a2,-32
	sra	a0,a1,a2
.L996:
	mv	a1,a4
.L997:
	ret
.L995:
	beq	a2,zero,.L997
	sra	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L996
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	mv	a5,a0
	srli	a0,a1,24
	slli	a3,a5,24
	srli	a4,a1,8
	li	t1,65536
	addi	t1,t1,-256
	and	a4,a4,t1
	or	a0,a0,a4
	slli	a2,a1,8
	srli	a4,a5,24
	or	a4,a2,a4
	li	a2,16711680
	and	a4,a4,a2
	or	a0,a0,a4
	slli	a4,a1,24
	slli	a1,a5,8
	srli	t0,a5,24
	or	a3,a3,t0
	srli	a5,a5,8
	or	a5,a5,a4
	and	a5,a5,t1
	or	a5,a3,a5
	and	a1,a1,a2
	or	a0,a0,a4
	or	a1,a5,a1
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
	srli	a5,a0,24
	slli	a4,a0,24
	or	a5,a5,a4
	srli	a4,a0,8
	li	a3,65536
	addi	a3,a3,-256
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,8
	li	a4,16711680
	and	a0,a0,a4
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
	srl	a5,a0,a5
	li	a4,65536
	addi	a4,a4,-256
	and	a4,a5,a4
	seqz	a4,a4
	slli	a4,a4,3
	li	a2,8
	sub	a2,a2,a4
	srl	a5,a5,a2
	add	a4,a4,a3
	andi	a3,a5,240
	seqz	a3,a3
	slli	a3,a3,2
	li	a2,4
	sub	a2,a2,a3
	srl	a5,a5,a2
	add	a3,a3,a4
	andi	a4,a5,12
	seqz	a4,a4
	slli	a4,a4,1
	li	a0,2
	sub	a2,a0,a4
	srl	a5,a5,a2
	srli	a2,a5,1
	andi	a2,a2,1
	sub	a0,a0,a5
	beq	a2,zero,.L1003
	li	a0,0
.L1003:
	add	a4,a4,a3
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
	blt	a1,a3,.L1006
	li	a0,2
	bgt	a1,a3,.L1004
	li	a0,0
	bltu	a5,a2,.L1004
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1006:
	li	a0,0
.L1004:
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
	blt	a1,a3,.L1011
	li	a5,2
	bgt	a1,a3,.L1011
	li	a5,0
	bltu	a0,a2,.L1011
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1011:
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
	slli	a3,a0,16
	srli	a3,a3,16
	seqz	a3,a3
	slli	a3,a3,4
	srl	a5,a0,a3
	andi	a4,a5,255
	seqz	a4,a4
	slli	a4,a4,3
	srl	a5,a5,a4
	add	a4,a4,a3
	andi	a0,a5,15
	seqz	a0,a0
	slli	a0,a0,2
	srl	a5,a5,a0
	add	a3,a0,a4
	andi	a4,a5,3
	seqz	a4,a4
	slli	a4,a4,1
	srl	a5,a5,a4
	andi	a5,a5,3
	not	a0,a5
	andi	a0,a0,1
	srli	a5,a5,1
	li	a2,2
	sub	a2,a2,a5
	neg	a5,a0
	and	a5,a5,a2
	add	a0,a4,a3
	add	a0,a5,a0
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
	beq	a5,zero,.L1018
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a4,0
.L1019:
	mv	a1,a4
.L1020:
	ret
.L1018:
	beq	a2,zero,.L1020
	srl	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L1019
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	slli	a2,a0,16
	srli	a2,a2,16
	slli	a3,a1,16
	srli	a3,a3,16
	sw	a1,16(sp)
	mv	a1,a3
	sw	a3,4(sp)
	mv	a0,a2
	sw	a2,12(sp)
	call	__mulsi3
	mv	s0,a0
	srli	t1,a0,16
	sw	t1,0(sp)
	srli	a5,s1,16
	mv	a1,a5
	sw	a5,8(sp)
	lw	a3,4(sp)
	mv	a0,a3
	call	__mulsi3
	lw	t1,0(sp)
	add	s1,a0,t1
	slli	s0,s0,16
	srli	s0,s0,16
	slli	a3,s1,16
	add	s0,s0,a3
	srli	a3,a3,16
	sw	a3,0(sp)
	lw	a4,16(sp)
	srli	a1,a4,16
	sw	a1,4(sp)
	lw	a2,12(sp)
	mv	a0,a2
	call	__mulsi3
	lw	a3,0(sp)
	add	a3,a0,a3
	slli	s0,s0,16
	srli	s0,s0,16
	slli	a4,a3,16
	sw	a3,0(sp)
	add	s0,s0,a4
	srli	s1,s1,16
	lw	a1,4(sp)
	lw	a5,8(sp)
	mv	a0,a5
	call	__mulsi3
	add	s1,s1,a0
	lw	a3,0(sp)
	srli	a1,a3,16
	mv	a0,s0
	add	a1,s1,a1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
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
	addi	sp,sp,-44
	.cfi_def_cfa_offset 44
	sw	ra,40(sp)
	sw	s0,36(sp)
	sw	s1,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s1,a0
	sw	a1,4(sp)
	mv	s0,a2
	sw	a3,8(sp)
	slli	t1,a0,16
	srli	t1,t1,16
	slli	a5,a2,16
	srli	a5,a5,16
	mv	a1,a5
	sw	a5,20(sp)
	mv	a0,t1
	sw	t1,16(sp)
	call	__mulsi3
	srli	a3,a0,16
	sw	a0,12(sp)
	sw	a3,0(sp)
	srli	a2,s1,16
	mv	a1,a2
	sw	a2,28(sp)
	lw	a5,20(sp)
	mv	a0,a5
	call	__mulsi3
	lw	a3,0(sp)
	add	a5,a0,a3
	lw	a4,12(sp)
	slli	a4,a4,16
	srli	a4,a4,16
	slli	a1,a5,16
	sw	a5,24(sp)
	add	a3,a4,a1
	sw	a3,12(sp)
	srli	a4,a1,16
	sw	a4,0(sp)
	srli	a1,s0,16
	sw	a1,20(sp)
	lw	t1,16(sp)
	mv	a0,t1
	call	__mulsi3
	lw	a4,0(sp)
	add	a4,a0,a4
	lw	a3,12(sp)
	slli	a3,a3,16
	srli	a3,a3,16
	slli	a0,a4,16
	sw	a4,16(sp)
	add	a5,a3,a0
	sw	a5,0(sp)
	lw	a5,24(sp)
	srli	a5,a5,16
	sw	a5,12(sp)
	lw	a1,20(sp)
	lw	a2,28(sp)
	mv	a0,a2
	call	__mulsi3
	lw	a5,12(sp)
	add	a5,a5,a0
	lw	a4,16(sp)
	srli	a4,a4,16
	add	a5,a5,a4
	sw	a5,12(sp)
	lw	a1,8(sp)
	mv	a0,s1
	call	__mulsi3
	lw	a5,12(sp)
	add	s1,a0,a5
	lw	a1,4(sp)
	mv	a0,s0
	call	__mulsi3
	mv	a1,a0
	lw	a0,0(sp)
	add	a1,s1,a1
	lw	ra,40(sp)
	.cfi_restore 1
	lw	s0,36(sp)
	.cfi_restore 8
	lw	s1,32(sp)
	.cfi_restore 9
	addi	sp,sp,44
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
	neg	a0,a0
	sub	a1,a1,a5
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
	andi	a5,a5,15
	li	a0,28672
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
	andi	a5,a5,15
	li	a0,28672
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
	slli	a4,a1,31
	srli	a5,a0,1
	or	a5,a4,a5
	srli	a3,a1,1
	li	a4,1431654400
	addi	a4,a4,1365
	and	a5,a5,a4
	and	a4,a3,a4
	sub	a5,a0,a5
	sgtu	a0,a5,a0
	sub	a1,a1,a4
	sub	a1,a1,a0
	slli	a4,a1,30
	srli	a3,a5,2
	or	a3,a4,a3
	srli	a2,a1,2
	li	a4,858992640
	addi	a4,a4,819
	and	a3,a3,a4
	and	a2,a2,a4
	and	a5,a5,a4
	and	a1,a1,a4
	add	a5,a3,a5
	sltu	a3,a5,a3
	add	a4,a2,a1
	add	a3,a3,a4
	slli	a2,a3,28
	srli	a4,a5,4
	or	a4,a2,a4
	srli	a2,a3,4
	add	a5,a4,a5
	sltu	a4,a5,a4
	add	a3,a2,a3
	add	a4,a4,a3
	li	a3,252645376
	addi	a3,a3,-241
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
	srli	a5,a0,1
	li	a4,1431654400
	addi	a4,a4,1365
	and	a5,a5,a4
	sub	a0,a0,a5
	srli	a4,a0,2
	li	a5,858992640
	addi	a5,a5,819
	and	a4,a4,a5
	and	a0,a0,a5
	add	a4,a4,a0
	srli	a5,a4,4
	add	a5,a5,a4
	li	a4,252645376
	addi	a4,a4,-241
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
	mv	t1,a0
	mv	s0,a2
	lui	a5,%hi(.LC13)
	lw	t2,%lo(.LC13)(a5)
	lw	t0,%lo(.LC13+4)(a5)
	sw	a2,52(sp)
	sw	t2,32(sp)
	mv	a4,a1
	mv	s1,t0
	j	.L1034
.L1032:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	beq	s0,zero,.L1033
	sw	t1,0(sp)
	sw	a4,4(sp)
	lw	a2,0(sp)
	lw	a3,4(sp)
	sw	t1,8(sp)
	sw	a4,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__muldf3
	mv	t1,a0
	mv	a4,a1
.L1034:
	andi	a3,s0,1
	beq	a3,zero,.L1032
	sw	t1,16(sp)
	sw	t1,40(sp)
	sw	a4,20(sp)
	sw	a4,36(sp)
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a5,32(sp)
	sw	a5,24(sp)
	sw	s1,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__muldf3
	sw	a0,32(sp)
	mv	s1,a1
	lw	t1,40(sp)
	lw	a4,36(sp)
	j	.L1032
.L1033:
	lw	a2,52(sp)
	lw	t2,32(sp)
	mv	t0,s1
	blt	a2,zero,.L1040
.L1031:
	sw	t2,44(sp)
	sw	t0,48(sp)
	lw	a0,44(sp)
	lw	a1,48(sp)
	lw	ra,72(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,68(sp)
	.cfi_restore 8
	lw	s1,64(sp)
	.cfi_restore 9
	addi	sp,sp,76
	.cfi_def_cfa_offset 0
	jr	ra
.L1040:
	.cfi_restore_state
	sw	t2,56(sp)
	sw	s1,60(sp)
	lw	a2,56(sp)
	lw	a3,60(sp)
	lui	a5,%hi(.LC13)
	lw	a0,%lo(.LC13)(a5)
	lw	a1,%lo(.LC13+4)(a5)
	call	__divdf3
	mv	t2,a0
	mv	t0,a1
	j	.L1031
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
	sw	ra,16(sp)
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	a4,a0
	sw	a1,4(sp)
	mv	s1,a1
	lui	a5,%hi(.LC15)
	lw	s0,%lo(.LC15)(a5)
	j	.L1044
.L1042:
	srli	a3,s1,31
	add	a5,a3,s1
	srai	s1,a5,1
	beq	s1,zero,.L1043
	mv	a1,a4
	mv	a0,a4
	call	__mulsf3
	mv	a4,a0
.L1044:
	andi	a3,s1,1
	beq	a3,zero,.L1042
	mv	a1,a4
	sw	a4,0(sp)
	mv	a0,s0
	call	__mulsf3
	mv	s0,a0
	lw	a4,0(sp)
	j	.L1042
.L1043:
	lw	a5,4(sp)
	blt	a5,zero,.L1050
.L1041:
	mv	a0,s0
	lw	ra,16(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,12(sp)
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,20
	.cfi_def_cfa_offset 0
	jr	ra
.L1050:
	.cfi_restore_state
	mv	a1,s0
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	mv	s0,a0
	j	.L1041
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
	bltu	a1,a3,.L1053
	li	a0,2
	bgtu	a1,a3,.L1051
	li	a0,0
	bltu	a5,a2,.L1051
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1053:
	li	a0,0
.L1051:
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
	bltu	a1,a3,.L1058
	li	a5,2
	bgtu	a1,a3,.L1058
	li	a5,0
	bltu	a0,a2,.L1058
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1058:
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
