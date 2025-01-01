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
.LFB46:
	.cfi_startproc
	mv	a5,a0
	li	a3,32
	j	.L318
.L320:
	addi	a5,a5,1
.L318:
	lbu	a4,0(a5)
	beq	a4,a3,.L320
	addi	a0,a4,-9
	sltiu	a0,a0,5
	bne	a0,zero,.L320
	li	a3,43
	beq	a4,a3,.L327
	li	a3,45
	li	a1,0
	bne	a4,a3,.L322
	li	a1,1
.L321:
	addi	a5,a5,1
.L322:
	lbu	a3,0(a5)
	addi	a3,a3,-48
	li	a4,9
	mv	a2,a4
	bgtu	a3,a4,.L324
.L323:
	slli	a4,a0,2
	add	a4,a4,a0
	slli	a4,a4,1
	addi	a5,a5,1
	sub	a0,a4,a3
	lbu	a3,0(a5)
	addi	a3,a3,-48
	bleu	a3,a2,.L323
.L324:
	bne	a1,zero,.L317
	neg	a0,a0
.L317:
	ret
.L327:
	li	a1,0
	j	.L321
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	mv	a3,a0
	li	a4,32
	j	.L332
.L334:
	addi	a3,a3,1
.L332:
	lbu	a5,0(a3)
	beq	a5,a4,.L334
	addi	a2,a5,-9
	sltiu	a2,a2,5
	bne	a2,zero,.L334
	li	a4,43
	beq	a5,a4,.L335
	li	a4,45
	bne	a5,a4,.L336
	li	a2,1
.L335:
	addi	a3,a3,1
.L336:
	lbu	t0,0(a3)
	addi	t0,t0,-48
	li	a5,9
	li	a0,0
	li	a1,0
	mv	t1,a5
	bgtu	t0,a5,.L338
.L337:
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
	bleu	t0,t1,.L337
.L338:
	bne	a2,zero,.L331
	snez	a5,a0
	neg	a1,a1
	sub	a1,a1,a5
	neg	a0,a0
.L331:
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
	beq	a2,zero,.L345
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L348
.L349:
	mv	s1,a5
.L346:
	beq	s1,zero,.L356
.L348:
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
	blt	a0,zero,.L349
	ble	a0,zero,.L355
	lw	a4,8(sp)
	add	a4,s0,a4
	sw	a4,4(sp)
	addi	a2,s1,-1
	sub	s1,a2,a5
	j	.L346
.L356:
	lw	s1,20(sp)
	.cfi_restore 9
.L345:
	li	s0,0
	j	.L344
.L355:
	.cfi_offset 9, -12
	lw	s1,20(sp)
	.cfi_restore 9
.L344:
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
	beq	a2,zero,.L358
	sw	s1,24(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	j	.L361
.L360:
	mv	s1,a4
	beq	a4,zero,.L371
.L361:
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
	beq	a0,zero,.L370
	lw	a4,0(sp)
	ble	a0,zero,.L360
	lw	a5,8(sp)
	add	a5,s0,a5
	sw	a5,4(sp)
	addi	s1,s1,-1
	srai	a4,s1,1
	j	.L360
.L371:
	lw	s1,24(sp)
	.cfi_restore 9
.L358:
	li	s0,0
	j	.L357
.L370:
	.cfi_offset 9, -12
	lw	s1,24(sp)
	.cfi_restore 9
.L357:
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
.LFB53:
	.cfi_startproc
	srai	a5,a0,31
	xor	a0,a5,a0
	sub	a0,a0,a5
	ret
	.cfi_endproc
.LFE53:
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
.LFB55:
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
.LFE55:
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
	j	.L392
.L386:
	addi	a0,a0,4
.L392:
	lw	a5,0(a0)
	beq	a5,zero,.L389
	bne	a1,a5,.L386
	beq	a5,zero,.L389
.L383:
	ret
.L389:
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
	j	.L403
.L396:
	addi	a0,a0,4
	addi	a1,a1,4
.L403:
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L395
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
.L405:
	addi	a1,a1,4
	addi	a5,a5,4
	lw	a4,-4(a1)
	sw	a4,-4(a5)
	bne	a4,zero,.L405
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
	beq	a5,zero,.L410
	mv	a5,a0
.L409:
	addi	a5,a5,4
	lw	a4,0(a5)
	bne	a4,zero,.L409
.L408:
	sub	a0,a5,a0
	srai	a0,a0,2
	ret
.L410:
	mv	a5,a0
	j	.L408
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
.L425:
	beq	a2,zero,.L417
	lw	a5,0(a0)
	lw	a4,0(a1)
	bne	a5,a4,.L414
	beq	a5,zero,.L414
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
	j	.L425
.L414:
	beq	a2,zero,.L417
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a0,-1
	blt	a4,a5,.L412
	sgt	a0,a4,a5
	ret
.L417:
	li	a0,0
.L412:
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
	j	.L435
.L429:
	addi	a2,a2,-1
	addi	a0,a0,4
.L435:
	beq	a2,zero,.L432
	lw	a5,0(a0)
	bne	a5,a1,.L429
	beq	a2,zero,.L432
.L426:
	ret
.L432:
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
	j	.L449
.L439:
	addi	a2,a2,-1
	addi	a0,a0,4
	addi	a1,a1,4
.L449:
	beq	a2,zero,.L441
	lw	a4,0(a0)
	lw	a5,0(a1)
	beq	a4,a5,.L439
	beq	a2,zero,.L441
	li	a0,-1
	blt	a4,a5,.L436
	sgt	a0,a4,a5
	ret
.L441:
	li	a0,0
.L436:
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
	beq	a2,zero,.L451
	slli	a2,a2,2
	call	memcpy
.L451:
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
	beq	a0,a1,.L457
	addi	a5,a2,-1
	sub	a4,a0,a1
	slli	a3,a2,2
	bltu	a4,a3,.L458
	mv	a4,a0
	li	t1,-1
	beq	a2,zero,.L468
.L459:
	addi	a1,a1,4
	addi	a4,a4,4
	lw	a3,-4(a1)
	sw	a3,-4(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L459
.L457:
	ret
.L468:
	ret
.L458:
	beq	a2,zero,.L457
	slli	a5,a5,2
	li	a2,-4
.L460:
	add	a4,a1,a5
	lw	a3,0(a4)
	add	a4,a0,a5
	sw	a3,0(a4)
	addi	a5,a5,-4
	bne	a5,a2,.L460
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
	beq	a2,zero,.L470
	mv	a4,a0
	li	a3,-1
.L471:
	addi	a4,a4,4
	sw	a1,-4(a4)
	addi	a5,a5,-1
	bne	a5,a3,.L471
.L470:
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
	bgeu	a0,a1,.L477
	add	a5,a0,a2
	add	a1,a1,a2
	beq	a2,zero,.L476
.L479:
	addi	a5,a5,-1
	addi	a1,a1,-1
	lbu	a4,0(a5)
	sb	a4,0(a1)
	bne	a0,a5,.L479
	ret
.L477:
	beq	a0,a1,.L476
	beq	a2,zero,.L476
	add	a2,a0,a2
.L480:
	addi	a0,a0,1
	addi	a1,a1,1
	lbu	a5,-1(a0)
	sb	a5,-1(a1)
	bne	a2,a0,.L480
.L476:
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
	blt	a5,zero,.L490
	sll	a5,a0,a5
	li	a3,0
.L491:
	neg	a2,a2
	andi	a2,a2,63
	addi	a4,a2,-32
	blt	a4,zero,.L492
	srl	a0,a1,a4
	li	a1,0
.L493:
	or	a0,a0,a3
	or	a1,a1,a5
	ret
.L490:
	srli	a4,a0,1
	li	a5,31
	sub	a5,a5,a2
	srl	a4,a4,a5
	sll	a5,a1,a2
	or	a5,a4,a5
	sll	a3,a0,a2
	j	.L491
.L492:
	slli	a4,a1,1
	li	t1,31
	sub	t1,t1,a2
	sll	a4,a4,t1
	srl	a0,a0,a2
	or	a0,a4,a0
	srl	a1,a1,a2
	j	.L493
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
	blt	a4,zero,.L495
	srl	a4,a1,a4
	li	a3,0
.L496:
	neg	a2,a2
	andi	a2,a2,63
	addi	a5,a2,-32
	blt	a5,zero,.L497
	sll	a1,a0,a5
	li	a0,0
.L498:
	or	a0,a0,a4
	or	a1,a1,a3
	ret
.L495:
	slli	a5,a1,1
	li	a4,31
	sub	a4,a4,a2
	sll	a5,a5,a4
	srl	a4,a0,a2
	or	a4,a5,a4
	srl	a3,a1,a2
	j	.L496
.L497:
	srli	a5,a0,1
	li	t1,31
	sub	t1,t1,a2
	srl	a5,a5,t1
	sll	a1,a1,a2
	or	a1,a5,a1
	sll	a0,a0,a2
	j	.L498
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
.LFB72:
	.cfi_startproc
	sll	a5,a0,a1
	neg	a1,a1
	srl	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	srl	a5,a0,a1
	neg	a1,a1
	sll	a0,a0,a1
	or	a0,a0,a5
	ret
	.cfi_endproc
.LFE73:
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
.L513:
	srl	a4,a0,a5
	andi	a4,a4,1
	addi	a5,a5,1
	bne	a4,zero,.L515
	bne	a5,a3,.L513
	li	a0,0
	ret
.L515:
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
	beq	a0,zero,.L519
	andi	a0,a0,1
	bne	a0,zero,.L516
	li	a0,1
.L518:
	srai	a5,a5,1
	addi	a0,a0,1
	andi	a4,a5,1
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
	blt	a0,zero,.L525
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2)(a5)
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L522:
	lw	ra,4(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L525:
	.cfi_restore_state
	li	a0,1
	j	.L522
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
	blt	a0,zero,.L530
	lui	a5,%hi(.LC4)
	lw	a2,%lo(.LC4)(a5)
	lw	a3,%lo(.LC4+4)(a5)
	sw	s1,0(sp)
	sw	s0,4(sp)
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gtdf2
	sgt	a0,a0,zero
.L527:
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
.L530:
	.cfi_restore_state
	li	a0,1
	j	.L527
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
	blt	a0,zero,.L535
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
.L532:
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
.L535:
	.cfi_restore_state
	li	a0,1
	j	.L532
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
	bne	a0,zero,.L540
	mv	a1,s1
	mv	a0,s1
	call	__addsf3
	mv	a1,s1
	call	__nesf2
	beq	a0,zero,.L540
	blt	s0,zero,.L554
	lui	a5,%hi(.LC7)
	lw	a1,%lo(.LC7)(a5)
	j	.L544
.L554:
	lui	a5,%hi(.LC8)
	lw	a1,%lo(.LC8)(a5)
	j	.L544
.L543:
	srli	a5,s0,31
	add	a5,a5,s0
	srai	s0,a5,1
	beq	s0,zero,.L540
	mv	a0,a1
	call	__mulsf3
	mv	a1,a0
.L544:
	andi	a5,s0,1
	beq	a5,zero,.L543
	sw	a1,0(sp)
	mv	a0,s1
	call	__mulsf3
	mv	s1,a0
	lw	a1,0(sp)
	j	.L543
.L540:
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
	bne	a0,zero,.L556
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
	beq	a0,zero,.L556
	blt	s0,zero,.L571
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	j	.L560
.L571:
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	j	.L560
.L559:
	srli	a3,s0,31
	add	a3,a3,s0
	srai	s0,a3,1
	beq	s0,zero,.L556
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
.L560:
	andi	a3,s0,1
	beq	a3,zero,.L559
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
	j	.L559
.L556:
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
	bne	a0,zero,.L573
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
	beq	a0,zero,.L573
	li	t0,0
	li	t1,0
	li	a3,0
	li	a4,1073610752
	blt	s0,zero,.L577
	li	a4,1073741824
	j	.L577
.L576:
	srli	a2,s0,31
	add	a5,a2,s0
	srai	s0,a5,1
	beq	s0,zero,.L573
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
.L577:
	andi	a2,s0,1
	beq	a2,zero,.L576
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
	j	.L576
.L573:
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
	beq	a2,zero,.L588
	add	a2,a1,a2
	mv	a5,a0
.L589:
	addi	a1,a1,1
	addi	a5,a5,1
	lbu	a4,-1(a5)
	lbu	a3,-1(a1)
	xor	a4,a4,a3
	sb	a4,-1(a5)
	bne	a2,a1,.L589
.L588:
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
	beq	a5,zero,.L601
	mv	a5,a0
.L596:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L596
	j	.L608
.L601:
	mv	a5,a0
	j	.L608
.L599:
	addi	a1,a1,1
	addi	a5,a5,1
	addi	a2,a2,-1
.L608:
	beq	a2,zero,.L603
	lbu	a4,0(a1)
	sb	a4,0(a5)
	bne	a4,zero,.L599
	bne	a2,zero,.L600
.L603:
	sb	zero,0(a5)
.L600:
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
	beq	a1,zero,.L616
.L610:
	add	a4,a5,a0
	lbu	a4,0(a4)
	bne	a4,zero,.L612
.L609:
	ret
.L616:
	ret
.L612:
	addi	a0,a0,1
	bne	a1,a0,.L610
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
.L625:
	lbu	a3,0(a0)
	beq	a3,zero,.L622
	mv	a5,a1
.L621:
	lbu	a4,0(a5)
	beq	a4,zero,.L626
	addi	a5,a5,1
	bne	a4,a3,.L621
.L619:
	ret
.L626:
	addi	a0,a0,1
	j	.L625
.L622:
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
	j	.L629
.L628:
	addi	a5,a5,1
	beq	a4,zero,.L632
.L629:
	lbu	a4,0(a5)
	bne	a4,a1,.L628
	mv	a0,a5
	j	.L628
.L632:
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
	beq	t1,zero,.L634
.L635:
	addi	a5,a5,1
	lbu	a4,0(a5)
	bne	a4,zero,.L635
.L634:
	sub	t2,a5,a1
	addi	t2,t2,-1
	bne	a5,a1,.L642
.L636:
	ret
.L645:
	mv	a3,a1
	j	.L638
.L641:
	beq	a0,zero,.L636
	lbu	a4,0(a0)
	beq	a4,zero,.L645
	add	t0,a0,t2
	mv	a3,a1
	mv	a5,a0
.L639:
	lbu	a2,0(a3)
	beq	a2,zero,.L638
	beq	a5,t0,.L638
	bne	a2,a4,.L638
	addi	a5,a5,1
	addi	a3,a3,1
	lbu	a4,0(a5)
	bne	a4,zero,.L639
.L638:
	lbu	a5,0(a3)
	beq	a5,a4,.L636
	addi	a0,a0,1
.L642:
	lbu	a5,0(a0)
	beq	a5,t1,.L641
	addi	a0,a0,1
	bne	a5,zero,.L642
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
	blt	a0,zero,.L667
.L658:
	li	a2,0
	li	a3,0
	sw	s1,8(sp)
	sw	s0,12(sp)
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__gtdf2
	ble	a0,zero,.L661
	li	a2,0
	li	a3,0
	lw	a5,16(sp)
	sw	a5,24(sp)
	lw	a5,20(sp)
	sw	a5,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__ltdf2
	blt	a0,zero,.L660
.L661:
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
.L667:
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
	ble	a0,zero,.L658
.L660:
	li	a5,-2147483648
	xor	s0,s0,a5
	j	.L661
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
	beq	a3,zero,.L676
	bltu	a1,a3,.L677
	addi	sp,sp,-8
	.cfi_def_cfa_offset 8
	sw	s0,4(sp)
	.cfi_offset 8, -4
	sub	a1,a1,a3
	add	s0,a0,a1
	bgtu	a0,s0,.L678
	sw	s1,0(sp)
	.cfi_offset 9, -8
	lbu	s1,0(a2)
	j	.L675
.L697:
	beq	a5,zero,.L695
	beq	t0,t1,.L695
.L670:
	bgtu	t2,s0,.L696
.L675:
	lbu	a5,0(t2)
	mv	a0,t2
	addi	t2,t2,1
	bne	a5,s1,.L670
	addi	a4,a2,1
	addi	a5,a3,-1
	beq	a5,zero,.L695
	mv	a1,t2
.L671:
	lbu	t0,0(a1)
	lbu	t1,0(a4)
	bne	t0,t1,.L697
	addi	a5,a5,-1
	addi	a1,a1,1
	addi	a4,a4,1
	bne	a5,zero,.L671
.L695:
	lw	s1,0(sp)
	.cfi_restore 9
.L668:
	lw	s0,4(sp)
	.cfi_restore 8
	addi	sp,sp,8
	.cfi_def_cfa_offset 0
	jr	ra
.L696:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	li	a0,0
	lw	s1,0(sp)
	.cfi_restore 9
	j	.L668
.L676:
	.cfi_def_cfa_offset 0
	.cfi_restore 8
	ret
.L677:
	li	a0,0
	ret
.L678:
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -4
	li	a0,0
	j	.L668
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
	beq	a2,zero,.L699
	call	memmove
.L699:
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
	blt	a0,zero,.L732
	sw	zero,56(sp)
.L705:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	mv	a0,s0
	mv	a1,s1
	call	__gedf2
	blt	a0,zero,.L728
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
.L709:
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
	bge	a0,zero,.L709
.L710:
	lw	a5,60(sp)
	sw	a4,0(a5)
	lw	a5,56(sp)
	beq	a5,zero,.L714
	li	a5,-2147483648
	xor	s1,s1,a5
.L714:
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
.L732:
	.cfi_restore_state
	li	a5,-2147483648
	xor	s1,s1,a5
	li	a5,1
	sw	a5,56(sp)
	j	.L705
.L728:
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
	bge	a0,zero,.L710
	li	a2,0
	li	a3,0
	sw	s0,24(sp)
	sw	s1,28(sp)
	lw	a0,24(sp)
	lw	a1,28(sp)
	call	__nedf2
	li	a4,0
	beq	a0,zero,.L710
	lw	t1,8(sp)
	lw	a2,%lo(.LC10)(t1)
	lw	a3,%lo(.LC10+4)(t1)
	sw	a2,40(sp)
	sw	a3,44(sp)
	mv	a5,s0
	mv	t0,s1
.L713:
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
	blt	a0,zero,.L713
	j	.L710
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
	beq	a1,zero,.L737
	li	a1,0
.L736:
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
	bne	a5,zero,.L736
	ret
.L737:
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
	bgeu	a1,a0,.L756
.L740:
	blt	a1,zero,.L741
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L741
	addi	a3,a3,-1
	bne	a3,zero,.L740
.L749:
	li	a0,0
.L743:
	bne	a2,zero,.L757
.L739:
	ret
.L741:
	beq	a5,zero,.L749
.L756:
	li	a0,0
	j	.L745
.L744:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L743
.L745:
	bltu	a4,a1,.L744
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L744
.L757:
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
	beq	a0,zero,.L760
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
.L760:
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
	beq	a5,a3,.L774
.L769:
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
.L774:
	bne	a4,a5,.L769
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
	beq	a4,zero,.L778
.L777:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L777
	ret
.L778:
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
	bltu	a0,a1,.L781
	add	a5,a1,a2
	bgtu	a0,a5,.L781
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L794
.L782:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L782
.L780:
	ret
.L794:
	ret
.L781:
	beq	a3,zero,.L784
	mv	a5,a1
	mv	a4,a0
	slli	a3,a3,3
	add	a3,a3,a1
.L785:
	lw	t1,0(a5)
	lw	t2,4(a5)
	sw	t1,0(a4)
	sw	t2,4(a4)
	addi	a5,a5,8
	addi	a4,a4,8
	bne	a5,a3,.L785
.L784:
	bleu	a2,t0,.L780
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L786:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L786
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
	bltu	a0,a1,.L796
	add	a5,a1,a2
	bgtu	a0,a5,.L796
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L810
.L797:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L797
.L795:
	ret
.L810:
	ret
.L796:
	beq	t1,zero,.L799
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,1
	add	t1,t1,a1
.L800:
	lh	a3,0(a5)
	sh	a3,0(a4)
	addi	a5,a5,2
	addi	a4,a4,2
	bne	a5,t1,.L800
.L799:
	andi	a5,a2,1
	beq	a5,zero,.L795
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
	bltu	a0,a1,.L812
	add	a5,a1,a2
	bgtu	a0,a5,.L812
	addi	a5,a2,-1
	li	t1,-1
	beq	a2,zero,.L825
.L813:
	add	a4,a1,a5
	lbu	a3,0(a4)
	add	a4,a0,a5
	sb	a3,0(a4)
	addi	a5,a5,-1
	bne	a5,t1,.L813
.L811:
	ret
.L825:
	ret
.L812:
	beq	t1,zero,.L815
	mv	a5,a1
	mv	a4,a0
	slli	t1,t1,2
	add	t1,t1,a1
.L816:
	lw	a3,0(a5)
	sw	a3,0(a4)
	addi	a5,a5,4
	addi	a4,a4,4
	bne	a5,t1,.L816
.L815:
	bleu	a2,t0,.L811
	add	a5,a1,t0
	add	a0,a0,t0
	add	a1,a1,a2
.L817:
	lbu	a4,0(a5)
	sb	a4,0(a0)
	addi	a5,a5,1
	addi	a0,a0,1
	bne	a5,a1,.L817
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
.L840:
	sub	a5,a3,a0
	sra	a5,a4,a5
	andi	a5,a5,1
	bne	a5,zero,.L838
	addi	a0,a0,1
	bne	a0,a2,.L840
.L838:
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
.L844:
	sra	a5,a4,a0
	andi	a5,a5,1
	bne	a5,zero,.L842
	addi	a0,a0,1
	bne	a0,a3,.L844
.L842:
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
	bge	a0,zero,.L853
	mv	a0,s0
	call	__fixsfsi
.L846:
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
.L853:
	.cfi_restore_state
	mv	a1,s1
	mv	a0,s0
	call	__subsf3
	call	__fixsfsi
	li	a5,32768
	add	a0,a0,a5
	j	.L846
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
.L855:
	sra	a4,a0,a5
	andi	a4,a4,1
	add	a3,a3,a4
	addi	a5,a5,1
	bne	a5,a2,.L855
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
.L858:
	sra	a4,a3,a5
	andi	a4,a4,1
	add	a0,a0,a4
	addi	a5,a5,1
	bne	a5,a2,.L858
	ret
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L863
.L862:
	andi	a5,a4,1
	neg	a5,a5
	and	a5,a5,a1
	add	a0,a0,a5
	srli	a4,a4,1
	slli	a1,a1,1
	bne	a4,zero,.L862
	ret
.L863:
	ret
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	mv	a4,a0
	li	a0,0
	beq	a4,zero,.L868
	beq	a1,zero,.L869
.L867:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a4
	add	a0,a0,a5
	slli	a4,a4,1
	srli	a1,a1,1
	bne	a1,zero,.L867
	ret
.L868:
	ret
.L869:
	ret
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	mv	a4,a0
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L888
.L872:
	blt	a1,zero,.L873
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L873
	addi	a3,a3,-1
	bne	a3,zero,.L872
.L881:
	li	a0,0
.L875:
	bne	a2,zero,.L889
.L871:
	ret
.L873:
	beq	a5,zero,.L881
.L888:
	li	a0,0
	j	.L877
.L876:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L875
.L877:
	bltu	a4,a1,.L876
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L876
.L889:
	mv	a0,a4
	ret
	.cfi_endproc
.LFE121:
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
	blt	a0,zero,.L893
	mv	a1,s1
	mv	a0,s0
	call	__gtsf2
	sgt	a0,a0,zero
.L890:
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
.L893:
	.cfi_restore_state
	li	a0,-1
	j	.L890
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
	blt	a0,zero,.L898
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
.L895:
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
.L898:
	.cfi_restore_state
	li	a0,-1
	j	.L895
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
	blt	a1,zero,.L918
.L905:
	beq	a1,zero,.L910
	li	a4,32
	li	a0,0
.L907:
	andi	a5,a1,1
	neg	a5,a5
	and	a5,a5,a3
	add	a0,a0,a5
	slli	a3,a3,1
	srai	a1,a1,1
	beq	a1,zero,.L906
	addi	a4,a4,-1
	andi	a4,a4,0xff
	bne	a4,zero,.L907
.L906:
	beq	a2,zero,.L904
	neg	a0,a0
.L904:
	ret
.L918:
	neg	a1,a1
	li	a2,1
	j	.L905
.L910:
	li	a0,0
	j	.L906
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
.L920:
	blt	a1,zero,.L940
.L921:
	mv	a3,a0
	bleu	a0,a1,.L929
	li	a4,32
	li	a5,1
.L923:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a0,a1,.L922
	addi	a4,a4,-1
	bne	a4,zero,.L923
.L930:
	li	a4,0
.L924:
	mv	a0,a4
	beq	a2,zero,.L919
	neg	a0,a4
.L919:
	ret
.L939:
	neg	a0,a0
	li	a2,1
	j	.L920
.L940:
	neg	a1,a1
	xori	a2,a2,1
	j	.L921
.L929:
	li	a5,1
	j	.L938
.L922:
	beq	a5,zero,.L930
.L938:
	li	a4,0
	j	.L926
.L941:
	sub	a3,a3,a1
	or	a4,a4,a5
.L925:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L924
.L926:
	bltu	a3,a1,.L925
	j	.L941
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
	blt	a0,zero,.L962
.L943:
	mv	a3,a0
	srai	a5,a1,31
	xor	a1,a5,a1
	sub	a1,a1,a5
	bleu	a0,a1,.L951
	li	a4,32
	li	a5,1
.L945:
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a0,a1,.L961
	addi	a4,a4,-1
	bne	a4,zero,.L945
.L946:
	mv	a0,a3
	beq	a2,zero,.L942
	neg	a0,a3
.L942:
	ret
.L962:
	neg	a0,a0
	li	a2,1
	j	.L943
.L951:
	li	a5,1
	j	.L956
.L963:
	sub	a3,a3,a1
.L947:
	srli	a5,a5,1
	srli	a1,a1,1
.L961:
	beq	a5,zero,.L946
.L956:
	bltu	a3,a1,.L947
	j	.L963
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
	bgeu	a1,a0,.L981
.L965:
	slli	a3,a1,16
	srai	a3,a3,16
	blt	a3,zero,.L966
	slli	a1,a1,1
	slli	a1,a1,16
	srli	a1,a1,16
	slli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	bleu	t1,a1,.L966
	addi	a4,a4,-1
	bne	a4,zero,.L965
.L974:
	li	a0,0
.L968:
	bne	a2,zero,.L982
.L971:
	ret
.L966:
	beq	a5,zero,.L974
.L981:
	li	a0,0
	j	.L970
.L969:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L968
.L970:
	bltu	t1,a1,.L969
	sub	t1,t1,a1
	slli	t1,t1,16
	srli	t1,t1,16
	or	a0,a5,a0
	slli	a0,a0,16
	srli	a0,a0,16
	j	.L969
.L982:
	mv	a0,t1
	ret
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	mv	a4,a0
	li	a3,32
	li	a5,1
	bgeu	a1,a0,.L1000
.L984:
	blt	a1,zero,.L985
	slli	a1,a1,1
	slli	a5,a5,1
	bleu	a4,a1,.L985
	addi	a3,a3,-1
	bne	a3,zero,.L984
.L993:
	li	a0,0
.L987:
	bne	a2,zero,.L1001
.L983:
	ret
.L985:
	beq	a5,zero,.L993
.L1000:
	li	a0,0
	j	.L989
.L988:
	srli	a5,a5,1
	srli	a1,a1,1
	beq	a5,zero,.L987
.L989:
	bltu	a4,a1,.L988
	sub	a4,a4,a1
	or	a0,a0,a5
	j	.L988
.L1001:
	mv	a0,a4
	ret
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	mv	a5,a0
	andi	a4,a2,32
	beq	a4,zero,.L1003
	addi	a2,a2,-32
	sll	a1,a0,a2
	li	a0,0
	ret
.L1003:
	beq	a2,zero,.L1006
	sll	a0,a0,a2
	li	a4,32
	sub	a4,a4,a2
	srl	a5,a5,a4
	sll	a1,a1,a2
	or	a1,a5,a1
	ret
.L1006:
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
	beq	a5,zero,.L1008
	srai	a4,a1,31
	addi	a2,a2,-32
	sra	a0,a1,a2
.L1009:
	mv	a1,a4
.L1010:
	ret
.L1008:
	beq	a2,zero,.L1010
	sra	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L1009
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
	beq	a2,zero,.L1016
	li	a0,0
.L1016:
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
	blt	a1,a3,.L1019
	li	a0,2
	bgt	a1,a3,.L1017
	li	a0,0
	bltu	a5,a2,.L1017
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1019:
	li	a0,0
.L1017:
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
	blt	a1,a3,.L1024
	li	a5,2
	bgt	a1,a3,.L1024
	li	a5,0
	bltu	a0,a2,.L1024
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1024:
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
	beq	a5,zero,.L1031
	addi	a2,a2,-32
	srl	a0,a1,a2
	li	a4,0
.L1032:
	mv	a1,a4
.L1033:
	ret
.L1031:
	beq	a2,zero,.L1033
	srl	a4,a1,a2
	li	a5,32
	sub	a5,a5,a2
	sll	a5,a1,a5
	srl	a2,a0,a2
	or	a0,a5,a2
	j	.L1032
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
	j	.L1047
.L1045:
	srli	a3,s0,31
	add	a5,a3,s0
	srai	s0,a5,1
	beq	s0,zero,.L1046
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
.L1047:
	andi	a3,s0,1
	beq	a3,zero,.L1045
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
	j	.L1045
.L1046:
	lw	a2,52(sp)
	lw	t2,32(sp)
	mv	t0,s1
	blt	a2,zero,.L1053
.L1044:
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
.L1053:
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
	j	.L1044
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
	j	.L1057
.L1055:
	srli	a3,s1,31
	add	a5,a3,s1
	srai	s1,a5,1
	beq	s1,zero,.L1056
	mv	a1,a4
	mv	a0,a4
	call	__mulsf3
	mv	a4,a0
.L1057:
	andi	a3,s1,1
	beq	a3,zero,.L1055
	mv	a1,a4
	sw	a4,0(sp)
	mv	a0,s0
	call	__mulsf3
	mv	s0,a0
	lw	a4,0(sp)
	j	.L1055
.L1056:
	lw	a5,4(sp)
	blt	a5,zero,.L1063
.L1054:
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
.L1063:
	.cfi_restore_state
	mv	a1,s0
	lui	a5,%hi(.LC15)
	lw	a0,%lo(.LC15)(a5)
	call	__divsf3
	mv	s0,a0
	j	.L1054
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
	bltu	a1,a3,.L1066
	li	a0,2
	bgtu	a1,a3,.L1064
	li	a0,0
	bltu	a5,a2,.L1064
	sgtu	a0,a5,a2
	addi	a0,a0,1
	ret
.L1066:
	li	a0,0
.L1064:
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
	bltu	a1,a3,.L1071
	li	a5,2
	bgtu	a1,a3,.L1071
	li	a5,0
	bltu	a0,a2,.L1071
	sgtu	a5,a0,a2
	addi	a5,a5,1
.L1071:
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
