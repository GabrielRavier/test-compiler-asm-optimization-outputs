	.file	"mini-libc.c"
	.text
	.align	2
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	or	$r4,$r5,$r0
	or	$r5,$r12,$r0
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	2
	.globl	make_tu
	.type	make_tu, @function
make_tu:
.LFB1 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	or	$r4,$r5,$r0
	or	$r5,$r12,$r0
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	2
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2 = .
	.cfi_startproc
	bleu	$r4,$r5,.L4
	beqz	$r6,.L5
	addi.d	$r5,$r5,-1
	addi.d	$r13,$r4,-1
.L6:
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r13,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L6
	jr	$r1
.L4:
	beq	$r4,$r5,.L5
	beqz	$r6,.L5
	or	$r12,$r0,$r0
.L7:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L7
.L5:
	jr	$r1
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	2
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3 = .
	.cfi_startproc
	bstrpick.w	$r6,$r6,7,0
	or	$r13,$r4,$r0
	beqz	$r7,.L12
.L11:
	ld.bu	$r12,$r5,0
	st.b	$r12,$r13,0
	slli.w	$r12,$r12,0
	beq	$r6,$r12,.L12
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	addi.d	$r13,$r13,1
	bnez	$r7,.L11
.L12:
	addi.d	$r4,$r13,1
	maskeqz	$r4,$r4,$r7
	jr	$r1
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	2
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4 = .
	.cfi_startproc
	bstrpick.w	$r5,$r5,7,0
	or	$r12,$r4,$r0
	beqz	$r6,.L20
.L19:
	ld.bu	$r13,$r12,0
	beq	$r5,$r13,.L20
	addi.d	$r12,$r12,1
	addi.d	$r6,$r6,-1
	bnez	$r6,.L19
.L20:
	maskeqz	$r4,$r12,$r6
	jr	$r1
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	2
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5 = .
	.cfi_startproc
	or	$r12,$r5,$r0
	or	$r13,$r4,$r0
	beqz	$r6,.L28
.L27:
	ld.bu	$r15,$r13,0
	ld.bu	$r14,$r12,0
	bne	$r15,$r14,.L28
	addi.d	$r6,$r6,-1
	addi.d	$r13,$r13,1
	addi.d	$r12,$r12,1
	bnez	$r6,.L27
.L28:
	or	$r4,$r0,$r0
	beqz	$r6,.L30
	ld.bu	$r4,$r13,0
	ld.bu	$r12,$r12,0
	sub.w	$r4,$r4,$r12
.L30:
	jr	$r1
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	2
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6 = .
	.cfi_startproc
	beqz	$r6,.L35
	or	$r12,$r0,$r0
.L36:
	ldx.bu	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L36
.L35:
	jr	$r1
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	2
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7 = .
	.cfi_startproc
	bstrpick.w	$r5,$r5,7,0
	addi.d	$r6,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
.L39:
	beq	$r6,$r14,.L43
	ldx.bu	$r12,$r4,$r6
	addi.d	$r13,$r6,-1
	beq	$r5,$r12,.L44
	or	$r6,$r13,$r0
	b	.L39
.L44:
	add.d	$r4,$r4,$r6
	jr	$r1
.L43:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	2
	.globl	memset
	.type	memset, @function
memset:
.LFB8 = .
	.cfi_startproc
	beqz	$r6,.L46
	add.d	$r6,$r4,$r6
	or	$r12,$r4,$r0
	bstrpick.w	$r5,$r5,7,0
.L47:
	st.b	$r5,$r12,0
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L47
.L46:
	jr	$r1
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	2
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9 = .
	.cfi_startproc
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	beqz	$r12,.L50
.L51:
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	bnez	$r12,.L51
.L50:
	jr	$r1
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	2
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10 = .
	.cfi_startproc
	bstrpick.w	$r5,$r5,7,0
	ld.b	$r12,$r4,0
	beqz	$r12,.L58
.L54:
	ld.bu	$r12,$r4,0
	beq	$r5,$r12,.L55
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,0
	bnez	$r12,.L54
.L55:
	jr	$r1
.L58:
	jr	$r1
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	2
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11 = .
	.cfi_startproc
.L61:
	ld.b	$r12,$r4,0
	beq	$r5,$r12,.L60
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,-1
	bnez	$r12,.L61
	or	$r4,$r0,$r0
.L60:
	jr	$r1
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	2
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12 = .
	.cfi_startproc
	ld.b	$r13,$r4,0
	ld.b	$r12,$r5,0
	bne	$r13,$r12,.L66
.L65:
	ld.b	$r12,$r4,0
	beqz	$r12,.L66
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	ld.b	$r13,$r4,0
	ld.b	$r12,$r5,0
	beq	$r13,$r12,.L65
.L66:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	2
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13 = .
	.cfi_startproc
	ld.b	$r12,$r4,0
	beqz	$r12,.L72
	or	$r12,$r4,$r0
.L71:
	addi.d	$r12,$r12,1
	ld.b	$r13,$r12,0
	bnez	$r13,.L71
.L70:
	sub.d	$r4,$r12,$r4
	jr	$r1
.L72:
	or	$r12,$r4,$r0
	b	.L70
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14 = .
	.cfi_startproc
	beqz	$r6,.L79
	ld.bu	$r12,$r4,0
	beqz	$r12,.L76
	addi.d	$r6,$r6,-1
	add.d	$r12,$r4,$r6
.L77:
	ld.bu	$r13,$r5,0
	beqz	$r13,.L76
	beq	$r4,$r12,.L76
	ld.bu	$r14,$r4,0
	bne	$r14,$r13,.L76
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	ld.bu	$r13,$r4,0
	bnez	$r13,.L77
.L76:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	jr	$r1
.L79:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	2
	.globl	swab
	.type	swab, @function
swab:
.LFB15 = .
	.cfi_startproc
	addi.w	$r12,$r0,1			# 0x1
	ble	$r6,$r12,.L81
	addi.d	$r12,$r6,-2
	srli.d	$r12,$r12,1
	addi.d	$r12,$r12,1
	alsl.d	$r12,$r12,$r4,1
.L83:
	ld.b	$r13,$r4,1
	st.b	$r13,$r5,0
	ld.b	$r13,$r4,0
	st.b	$r13,$r5,1
	addi.d	$r5,$r5,2
	addi.d	$r4,$r4,2
	bne	$r4,$r12,.L83
.L81:
	jr	$r1
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	2
	.globl	isalpha
	.type	isalpha, @function
isalpha:
.LFB16 = .
	.cfi_startproc
	ori	$r4,$r4,32
	addi.w	$r4,$r4,-97
	sltui	$r4,$r4,26
	jr	$r1
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	2
	.globl	isascii
	.type	isascii, @function
isascii:
.LFB17 = .
	.cfi_startproc
	sltui	$r4,$r4,128
	jr	$r1
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	2
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18 = .
	.cfi_startproc
	addi.d	$r12,$r4,-9
	sltui	$r12,$r12,1
	xori	$r4,$r4,32
	maskeqz	$r12,$r12,$r4
	addi.w	$r13,$r0,1			# 0x1
	masknez	$r4,$r13,$r4
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	2
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19 = .
	.cfi_startproc
	addi.d	$r12,$r4,-127
	sltui	$r12,$r12,1
	addi.w	$r13,$r0,31			# 0x1f
	sltu	$r4,$r13,$r4
	maskeqz	$r12,$r12,$r4
	addi.w	$r13,$r0,1			# 0x1
	masknez	$r4,$r13,$r4
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	2
	.globl	isdigit
	.type	isdigit, @function
isdigit:
.LFB20 = .
	.cfi_startproc
	addi.w	$r4,$r4,-48
	sltui	$r4,$r4,10
	jr	$r1
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	2
	.globl	isgraph
	.type	isgraph, @function
isgraph:
.LFB21 = .
	.cfi_startproc
	addi.w	$r4,$r4,-33
	sltui	$r4,$r4,94
	jr	$r1
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	2
	.globl	islower
	.type	islower, @function
islower:
.LFB22 = .
	.cfi_startproc
	addi.w	$r4,$r4,-97
	sltui	$r4,$r4,26
	jr	$r1
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	2
	.globl	isprint
	.type	isprint, @function
isprint:
.LFB23 = .
	.cfi_startproc
	addi.w	$r4,$r4,-32
	sltui	$r4,$r4,95
	jr	$r1
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	2
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24 = .
	.cfi_startproc
	addi.w	$r12,$r4,-9
	sltui	$r12,$r12,5
	xori	$r4,$r4,32
	maskeqz	$r12,$r12,$r4
	addi.w	$r13,$r0,1			# 0x1
	masknez	$r4,$r13,$r4
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	2
	.globl	isupper
	.type	isupper, @function
isupper:
.LFB25 = .
	.cfi_startproc
	addi.w	$r4,$r4,-65
	sltui	$r4,$r4,26
	jr	$r1
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	2
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,31			# 0x1f
	bleu	$r4,$r13,.L103
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r13,$r14,.L102
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4056
	add.w	$r13,$r13,$r12
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,7
	sltui	$r12,$r12,3
	addi.w	$r14,$r0,1			# 0x1
	sltu	$r13,$r14,$r13
	maskeqz	$r12,$r12,$r13
	masknez	$r13,$r14,$r13
	or	$r4,$r12,$r13
	jr	$r1
.L103:
	addi.w	$r4,$r0,1			# 0x1
.L102:
	jr	$r1
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.globl	iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27 = .
	.cfi_startproc
	addi.w	$r4,$r4,-48
	sltui	$r4,$r4,10
	jr	$r1
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	2
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,254			# 0xfe
	bleu	$r4,$r13,.L114
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L109
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	bleu	$r13,$r14,.L109
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	bleu	$r13,$r14,.L109
	addu16i.d	$r13,$r12,-1
	addi.w	$r13,$r13,4
	lu12i.w	$r14,61440>>12			# 0xf000
	ori	$r14,$r14,4094
	and	$r12,$r12,$r14
	addu16i.d	$r12,$r12,-1
	addi.d	$r12,$r12,2
	sltu	$r12,$r0,$r12
	lu12i.w	$r14,1048576>>12			# 0x100000
	ori	$r14,$r14,3
	sltu	$r13,$r14,$r13
	masknez	$r12,$r12,$r13
	or	$r14,$r0,$r0
	maskeqz	$r13,$r14,$r13
	or	$r4,$r12,$r13
.L109:
	jr	$r1
.L114:
	addi.w	$r12,$r4,1
	andi	$r12,$r12,127
	addi.w	$r4,$r0,32			# 0x20
	sltu	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	2
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29 = .
	.cfi_startproc
	addi.w	$r12,$r4,-48
	ori	$r4,$r4,32
	addi.w	$r4,$r4,-97
	sltui	$r4,$r4,6
	addi.w	$r13,$r0,9			# 0x9
	sltu	$r12,$r13,$r12
	maskeqz	$r4,$r4,$r12
	addi.w	$r13,$r0,1			# 0x1
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.globl	toascii
	.type	toascii, @function
toascii:
.LFB30 = .
	.cfi_startproc
	andi	$r4,$r4,127
	jr	$r1
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	2
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31 = .
	.cfi_startproc
	fmov.d	$f2,$f0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L122
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L120
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L126
	fsub.d	$f0,$f2,$f1
	jr	$r1
.L122:
	jr	$r1
.L126:
	movgr2fr.d	$f0,$r0
.L120:
	jr	$r1
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	2
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32 = .
	.cfi_startproc
	fmov.s	$f2,$f0
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L130
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L128
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L134
	fsub.s	$f0,$f2,$f1
	jr	$r1
.L130:
	jr	$r1
.L134:
	movgr2fr.w	$f0,$r0
.L128:
	jr	$r1
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	2
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,0
	fst.d	$f1,$r3,8
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L140
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L136
	ldptr.d	$r13,$r3,0
	srli.d	$r13,$r13,63
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L137
	ldptr.d	$r12,$r3,0
	bge	$r12,$r0,.L136
	fmov.d	$f0,$f1
	b	.L136
.L137:
	fld.d	$f0,$r3,0
	fld.d	$f2,$r3,8
	fcmp.slt.d	$fcc0,$f0,$f2
	fsel	$f0,$f0,$f2,$fcc0
.L136:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L140:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	b	.L136
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	2
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,8
	fst.s	$f1,$r3,12
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L149
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L145
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L146
	ldptr.w	$r12,$r3,8
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	beqz	$r12,.L145
	fmov.s	$f0,$f1
	b	.L145
.L146:
	fld.s	$f0,$r3,8
	fld.s	$f2,$r3,12
	fcmp.slt.s	$fcc0,$f0,$f2
	fsel	$f0,$f0,$f2,$fcc0
.L145:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L149:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	b	.L145
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	2
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r24,$r4,$r0
	or	$r23,$r5,$r0
	or	$r25,$r6,$r0
	or	$r26,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L159
	or	$r6,$r25,$r0
	or	$r7,$r26,$r0
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L160
	srli.d	$r12,$r23,63
	srli.d	$r13,$r26,63
	beq	$r12,$r13,.L155
	masknez	$r24,$r24,$r12
	maskeqz	$r25,$r25,$r12
	or	$r4,$r24,$r25
	masknez	$r23,$r23,$r12
	maskeqz	$r12,$r26,$r12
	or	$r5,$r23,$r12
.L154:
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
.L155:
	.cfi_restore_state
	or	$r6,$r25,$r0
	or	$r7,$r26,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__lttf2)
	srli.d	$r4,$r4,63
	masknez	$r24,$r24,$r4
	maskeqz	$r25,$r25,$r4
	masknez	$r23,$r23,$r4
	maskeqz	$r12,$r26,$r4
	or	$r4,$r24,$r25
	or	$r5,$r23,$r12
	b	.L154
.L159:
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	b	.L154
.L160:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	b	.L154
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	2
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,0
	fst.d	$f1,$r3,8
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L168
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L164
	ldptr.d	$r13,$r3,0
	srli.d	$r13,$r13,63
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L165
	ldptr.d	$r12,$r3,0
	fmov.d	$f0,$f1
	bge	$r12,$r0,.L164
	fld.d	$f0,$r3,0
	b	.L164
.L165:
	fld.d	$f0,$r3,8
	fld.d	$f1,$r3,0
	fcmp.slt.d	$fcc0,$f1,$f0
	fsel	$f0,$f0,$f1,$fcc0
.L164:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L168:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	b	.L164
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	2
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,8
	fst.s	$f1,$r3,12
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L177
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L173
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L174
	ldptr.w	$r12,$r3,8
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	fmov.s	$f0,$f1
	beqz	$r12,.L173
	fld.s	$f0,$r3,8
	b	.L173
.L174:
	fld.s	$f0,$r3,12
	fld.s	$f1,$r3,8
	fcmp.slt.s	$fcc0,$f1,$f0
	fsel	$f0,$f0,$f1,$fcc0
.L173:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L177:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	b	.L173
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	2
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r25,$r4,$r0
	or	$r26,$r5,$r0
	or	$r24,$r6,$r0
	or	$r23,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L187
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L188
	srli.d	$r12,$r26,63
	srli.d	$r13,$r23,63
	beq	$r12,$r13,.L183
	masknez	$r24,$r24,$r12
	maskeqz	$r25,$r25,$r12
	or	$r4,$r24,$r25
	masknez	$r23,$r23,$r12
	maskeqz	$r12,$r26,$r12
	or	$r5,$r23,$r12
.L182:
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
.L183:
	.cfi_restore_state
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	bl	%plt(__lttf2)
	srli.d	$r4,$r4,63
	masknez	$r24,$r24,$r4
	maskeqz	$r25,$r25,$r4
	masknez	$r23,$r23,$r4
	maskeqz	$r12,$r26,$r4
	or	$r4,$r24,$r25
	or	$r5,$r23,$r12
	b	.L182
.L187:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	b	.L182
.L188:
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	b	.L182
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.section	.rodata
	.align	3
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.text
	.align	2
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39 = .
	.cfi_startproc
	slli.w	$r4,$r4,0
	la.local	$r12,s.0
	beqz	$r4,.L192
	la.local	$r14,digits
.L193:
	andi	$r13,$r4,63
	ldx.b	$r13,$r14,$r13
	st.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bstrpick.d	$r4,$r4,31,6
	bnez	$r4,.L193
.L192:
	st.b	$r0,$r12,0
	la.local	$r4,s.0
	jr	$r1
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	2
	.globl	srand
	.type	srand, @function
srand:
.LFB40 = .
	.cfi_startproc
	addi.w	$r4,$r4,-1
	bstrpick.d	$r4,$r4,31,0
	pcalau12i	$r12,%pc_hi20(seed)
	st.d	$r4,$r12,%pc_lo12(seed)
	jr	$r1
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	2
	.globl	rand
	.type	rand, @function
rand:
.LFB41 = .
	.cfi_startproc
	la.local	$r12,seed
	ldptr.d	$r4,$r12,0
	lu12i.w	$r13,1284861952>>12			# 0x4c957000
	ori	$r13,$r13,3885
	lu32i.d	$r13,0x1f42d00000000>>32
	lu52i.d	$r13,$r13,0x5850000000000000>>52
	mul.d	$r4,$r4,$r13
	addi.d	$r4,$r4,1
	stptr.d	$r4,$r12,0
	srli.d	$r4,$r4,33
	jr	$r1
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	2
	.globl	insque
	.type	insque, @function
insque:
.LFB42 = .
	.cfi_startproc
	beqz	$r5,.L201
	ldptr.d	$r12,$r5,0
	stptr.d	$r12,$r4,0
	st.d	$r5,$r4,8
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L198
	st.d	$r4,$r12,8
.L198:
	jr	$r1
.L201:
	st.d	$r0,$r4,8
	stptr.d	$r0,$r4,0
	jr	$r1
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	2
	.globl	remque
	.type	remque, @function
remque:
.LFB43 = .
	.cfi_startproc
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L203
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L203:
	ld.d	$r12,$r4,8
	beqz	$r12,.L202
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L202:
	jr	$r1
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	2
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44 = .
	.cfi_startproc
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	st.d	$r25,$r3,48
	st.d	$r26,$r3,40
	st.d	$r27,$r3,32
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	or	$r27,$r4,$r0
	or	$r29,$r5,$r0
	or	$r30,$r6,$r0
	or	$r25,$r7,$r0
	ldptr.d	$r26,$r6,0
	beqz	$r26,.L206
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	st.d	$r28,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 28, -56
	or	$r28,$r8,$r0
	or	$r24,$r5,$r0
	or	$r23,$r0,$r0
.L209:
	or	$r5,$r24,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L212
	addi.d	$r23,$r23,1
	add.d	$r24,$r24,$r25
	bne	$r23,$r26,.L209
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ld.d	$r28,$r3,24
	.cfi_restore 28
.L206:
	addi.d	$r12,$r26,1
	stptr.d	$r12,$r30,0
	mul.d	$r26,$r25,$r26
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	add.d	$r4,$r29,$r26
	bl	%plt(memcpy)
.L208:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r25,$r3,48
	.cfi_restore 25
	ld.d	$r26,$r3,40
	.cfi_restore 26
	ld.d	$r27,$r3,32
	.cfi_restore 27
	ld.d	$r29,$r3,16
	.cfi_restore 29
	ld.d	$r30,$r3,8
	.cfi_restore 30
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
.L212:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	mul.d	$r23,$r23,$r25
	add.d	$r4,$r29,$r23
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ld.d	$r28,$r3,24
	.cfi_restore 28
	b	.L208
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45 = .
	.cfi_startproc
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	stptr.d	$r29,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 29, -64
	ldptr.d	$r29,$r6,0
	beqz	$r29,.L217
	st.d	$r23,$r3,48
	st.d	$r24,$r3,40
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	st.d	$r28,$r3,8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	or	$r26,$r4,$r0
	or	$r28,$r5,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	or	$r24,$r5,$r0
	or	$r23,$r0,$r0
.L216:
	or	$r5,$r24,$r0
	or	$r4,$r26,$r0
	jirl	$r1,$r27,0
	beqz	$r4,.L220
	addi.d	$r23,$r23,1
	add.d	$r24,$r24,$r25
	bne	$r23,$r29,.L216
	or	$r4,$r0,$r0
	ld.d	$r23,$r3,48
	.cfi_remember_state
	.cfi_restore 23
	ld.d	$r24,$r3,40
	.cfi_restore 24
	ld.d	$r25,$r3,32
	.cfi_restore 25
	ld.d	$r26,$r3,24
	.cfi_restore 26
	ld.d	$r27,$r3,16
	.cfi_restore 27
	ld.d	$r28,$r3,8
	.cfi_restore 28
	b	.L214
.L220:
	.cfi_restore_state
	mul.d	$r23,$r23,$r25
	add.d	$r4,$r28,$r23
	ld.d	$r23,$r3,48
	.cfi_restore 23
	ld.d	$r24,$r3,40
	.cfi_restore 24
	ld.d	$r25,$r3,32
	.cfi_restore 25
	ld.d	$r26,$r3,24
	.cfi_restore 26
	ld.d	$r27,$r3,16
	.cfi_restore 27
	ld.d	$r28,$r3,8
	.cfi_restore 28
.L214:
	ld.d	$r1,$r3,56
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
.L217:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L214
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
.LFB46 = .
	.cfi_startproc
	srai.w	$r12,$r4,31
	xor	$r4,$r4,$r12
	sub.w	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	2
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	b	.L223
.L224:
	addi.d	$r23,$r23,1
.L223:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L224
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L230
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L226
	addi.w	$r4,$r0,1			# 0x1
.L225:
	addi.d	$r23,$r23,1
.L226:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L227
.L228:
	alsl.w	$r12,$r12,$r12,2
	slli.w	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.w	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L228
.L227:
	or	$r13,$r12,$r0
	sub.w	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
	ld.d	$r1,$r3,8
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
.L230:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L225
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB48 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	b	.L237
.L238:
	addi.d	$r23,$r23,1
.L237:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L238
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L244
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L240
	addi.w	$r4,$r0,1			# 0x1
.L239:
	addi.d	$r23,$r23,1
.L240:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L241
.L242:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L242
.L241:
	or	$r13,$r12,$r0
	sub.d	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
	ld.d	$r1,$r3,8
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
.L244:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L239
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	b	.L251
.L252:
	addi.d	$r23,$r23,1
.L251:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L252
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L258
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L254
	addi.w	$r4,$r0,1			# 0x1
.L253:
	addi.d	$r23,$r23,1
.L254:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L255
.L256:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L256
.L255:
	or	$r13,$r12,$r0
	sub.d	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
	ld.d	$r1,$r3,8
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
.L258:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L253
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50 = .
	.cfi_startproc
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r24,$r3,40
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	st.d	$r28,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	or	$r28,$r4,$r0
	or	$r26,$r5,$r0
	or	$r24,$r6,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	or	$r4,$r0,$r0
	beqz	$r6,.L265
	st.d	$r23,$r3,48
	.cfi_offset 23, -16
	b	.L268
.L274:
	srli.d	$r24,$r24,1
.L267:
	beqz	$r24,.L273
.L268:
	srli.d	$r23,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r5,$r23,$r0
	or	$r4,$r28,$r0
	jirl	$r1,$r27,0
	blt	$r4,$r0,.L274
	ble	$r4,$r0,.L270
	add.d	$r26,$r23,$r25
	srli.d	$r12,$r24,1
	addi.d	$r24,$r24,-1
	sub.d	$r24,$r24,$r12
	b	.L267
.L273:
	or	$r4,$r0,$r0
	ld.d	$r23,$r3,48
	.cfi_restore 23
.L265:
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r24,$r3,40
	.cfi_restore 24
	ld.d	$r25,$r3,32
	.cfi_restore 25
	ld.d	$r26,$r3,24
	.cfi_restore 26
	ld.d	$r27,$r3,16
	.cfi_restore 27
	ld.d	$r28,$r3,8
	.cfi_restore 28
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
.L270:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	or	$r4,$r23,$r0
	ld.d	$r23,$r3,48
	.cfi_restore 23
	b	.L265
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	2
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51 = .
	.cfi_startproc
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r24,$r3,40
	.cfi_offset 1, -8
	.cfi_offset 24, -24
	slli.w	$r24,$r6,0
	beqz	$r24,.L279
	st.d	$r23,$r3,48
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	st.d	$r28,$r3,8
	stptr.d	$r29,$r3,0
	.cfi_offset 23, -16
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r27,$r4,$r0
	or	$r26,$r7,$r0
	or	$r28,$r8,$r0
	or	$r29,$r9,$r0
	or	$r25,$r5,$r0
	b	.L278
.L277:
	srai.w	$r24,$r24,1
	beqz	$r24,.L283
.L278:
	srai.w	$r23,$r24,1
	mul.d	$r23,$r23,$r26
	add.d	$r23,$r25,$r23
	or	$r6,$r29,$r0
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L280
	ble	$r4,$r0,.L277
	add.d	$r25,$r23,$r26
	addi.w	$r24,$r24,-1
	b	.L277
.L283:
	or	$r4,$r0,$r0
	ld.d	$r23,$r3,48
	.cfi_restore 23
	ld.d	$r25,$r3,32
	.cfi_restore 25
	ld.d	$r26,$r3,24
	.cfi_restore 26
	ld.d	$r27,$r3,16
	.cfi_restore 27
	ld.d	$r28,$r3,8
	.cfi_restore 28
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	b	.L276
.L279:
	or	$r4,$r0,$r0
	b	.L276
.L280:
	.cfi_offset 23, -16
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r4,$r23,$r0
	ld.d	$r23,$r3,48
	.cfi_restore 23
	ld.d	$r25,$r3,32
	.cfi_restore 25
	ld.d	$r26,$r3,24
	.cfi_restore 26
	ld.d	$r27,$r3,16
	.cfi_restore 27
	ld.d	$r28,$r3,8
	.cfi_restore 28
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
.L276:
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r24,$r3,40
	.cfi_restore 24
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.globl	div
	.type	div, @function
div:
.LFB52 = .
	.cfi_startproc
	div.w	$r12,$r4,$r5
	mod.w	$r5,$r4,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r12,31,0
	bstrins.d	$r4,$r5,63,32
	jr	$r1
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	2
	.globl	imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	2
	.globl	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	div.d	$r4,$r4,$r5
	mod.d	$r5,$r12,$r5
	jr	$r1
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	2
	.globl	labs
	.type	labs, @function
labs:
.LFB55 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	2
	.globl	ldiv
	.type	ldiv, @function
ldiv:
.LFB56 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	div.d	$r4,$r4,$r5
	mod.d	$r5,$r12,$r5
	jr	$r1
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	2
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB57 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	2
	.globl	lldiv
	.type	lldiv, @function
lldiv:
.LFB58 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	div.d	$r4,$r4,$r5
	mod.d	$r5,$r12,$r5
	jr	$r1
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	2
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59 = .
	.cfi_startproc
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L293
.L292:
	ldptr.w	$r12,$r4,0
	beq	$r5,$r12,.L293
	addi.d	$r4,$r4,4
	ldptr.w	$r12,$r4,0
	bnez	$r12,.L292
.L293:
	ldptr.w	$r12,$r4,0
	maskeqz	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	2
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	ldptr.w	$r14,$r4,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L300
.L299:
	ldptr.w	$r13,$r12,0
	beqz	$r13,.L300
	ldptr.w	$r13,$r5,0
	beqz	$r13,.L300
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	beq	$r14,$r13,.L299
.L300:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L302
	slt	$r4,$r13,$r14
.L302:
	jr	$r1
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	2
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61 = .
	.cfi_startproc
	or	$r12,$r0,$r0
	addi.d	$r14,$r4,-4
.L306:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r13,$r14,$r12
	bnez	$r13,.L306
	jr	$r1
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	2
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62 = .
	.cfi_startproc
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L311
	or	$r12,$r4,$r0
.L310:
	addi.d	$r12,$r12,4
	ldptr.w	$r13,$r12,0
	bnez	$r13,.L310
.L309:
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
.L311:
	or	$r12,$r4,$r0
	b	.L309
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	beqz	$r6,.L315
.L314:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L315
	beqz	$r14,.L315
	ldptr.w	$r13,$r5,0
	beqz	$r13,.L315
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L314
.L315:
	or	$r4,$r0,$r0
	beqz	$r6,.L317
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L317
	slt	$r4,$r13,$r14
.L317:
	jr	$r1
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64 = .
	.cfi_startproc
	beqz	$r6,.L323
.L322:
	ldptr.w	$r12,$r4,0
	beq	$r5,$r12,.L323
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	bnez	$r6,.L322
.L323:
	maskeqz	$r4,$r4,$r6
	jr	$r1
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	beqz	$r6,.L330
.L329:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L330
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L329
.L330:
	or	$r4,$r0,$r0
	beqz	$r6,.L332
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L332
	slt	$r4,$r13,$r14
.L332:
	jr	$r1
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66 = .
	.cfi_startproc
	addi.d	$r12,$r6,-1
	beqz	$r6,.L337
	or	$r6,$r12,$r0
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
.L338:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	bne	$r6,$r14,.L338
.L337:
	jr	$r1
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67 = .
	.cfi_startproc
	beq	$r4,$r5,.L341
	sub.d	$r12,$r4,$r5
	slli.d	$r13,$r6,2
	bltu	$r12,$r13,.L342
	addi.d	$r12,$r6,-1
	beqz	$r6,.L348
	or	$r6,$r12,$r0
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
.L343:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	bne	$r6,$r14,.L343
.L341:
	jr	$r1
.L348:
	jr	$r1
.L342:
	beqz	$r6,.L341
	addi.d	$r6,$r6,-1
	slli.d	$r12,$r6,2
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
.L344:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,-4
	bne	$r12,$r14,.L344
	jr	$r1
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	2
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68 = .
	.cfi_startproc
	addi.d	$r12,$r6,-1
	beqz	$r6,.L350
	or	$r6,$r12,$r0
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
.L351:
	addi.d	$r12,$r12,4
	st.w	$r5,$r12,-4
	addi.d	$r6,$r6,-1
	bne	$r6,$r13,.L351
.L350:
	jr	$r1
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	2
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69 = .
	.cfi_startproc
	bgeu	$r4,$r5,.L354
	beqz	$r6,.L353
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
.L356:
	ldx.b	$r12,$r4,$r6
	stx.b	$r12,$r5,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L356
	jr	$r1
.L354:
	beq	$r4,$r5,.L353
	beqz	$r6,.L353
	or	$r12,$r0,$r0
.L357:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L357
.L353:
	jr	$r1
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	2
	.globl	rotl64
	.type	rotl64, @function
rotl64:
.LFB70 = .
	.cfi_startproc
	sub.w	$r5,$r0,$r5
	rotr.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	2
	.globl	rotr64
	.type	rotr64, @function
rotr64:
.LFB71 = .
	.cfi_startproc
	rotr.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	2
	.globl	rotl32
	.type	rotl32, @function
rotl32:
.LFB72 = .
	.cfi_startproc
	sub.w	$r5,$r0,$r5
	rotr.w	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	2
	.globl	rotr32
	.type	rotr32, @function
rotr32:
.LFB73 = .
	.cfi_startproc
	rotr.w	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	2
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74 = .
	.cfi_startproc
	sll.d	$r12,$r4,$r5
	sub.w	$r5,$r0,$r5
	srl.d	$r4,$r4,$r5
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75 = .
	.cfi_startproc
	srl.d	$r12,$r4,$r5
	sub.w	$r5,$r0,$r5
	sll.d	$r4,$r4,$r5
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76 = .
	.cfi_startproc
	sll.w	$r13,$r4,$r5
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,15,0
	jr	$r1
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	2
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77 = .
	.cfi_startproc
	srl.w	$r13,$r4,$r5
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,15,0
	jr	$r1
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	2
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78 = .
	.cfi_startproc
	sll.w	$r13,$r4,$r5
	addi.w	$r12,$r0,8			# 0x8
	sub.w	$r12,$r12,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,7,0
	jr	$r1
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	2
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79 = .
	.cfi_startproc
	srl.w	$r13,$r4,$r5
	addi.w	$r12,$r0,8			# 0x8
	sub.w	$r12,$r12,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,7,0
	jr	$r1
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	2
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80 = .
	.cfi_startproc
	srli.d	$r12,$r4,8
	bstrpick.w	$r4,$r4,7,0
	slli.d	$r4,$r4,8
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	2
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81 = .
	.cfi_startproc
	bstrpick.d	$r14,$r4,31,24
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r4,$r12
	srli.d	$r12,$r12,8
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	and	$r13,$r4,$r13
	slli.w	$r13,$r13,8
	slli.w	$r4,$r4,24
	or	$r4,$r4,$r13
	slli.w	$r4,$r4,0
	or	$r4,$r4,$r14
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	2
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82 = .
	.cfi_startproc
	srli.d	$r13,$r4,56
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xffff000000000000>>32
	lu52i.d	$r12,$r12,0xf0000000000000>>52
	and	$r12,$r4,$r12
	srli.d	$r12,$r12,40
	or	$r12,$r12,$r13
	or	$r13,$r0,$r0
	lu32i.d	$r13,0xff0000000000>>32
	and	$r13,$r4,$r13
	srli.d	$r13,$r13,24
	or	$r12,$r12,$r13
	or	$r13,$r0,$r0
	lu32i.d	$r13,0xff00000000>>32
	and	$r13,$r4,$r13
	srli.d	$r13,$r13,8
	or	$r12,$r12,$r13
	lu12i.w	$r13,-16777216>>12			# 0xffffffffff000000
	lu32i.d	$r13,0>>32
	and	$r13,$r4,$r13
	slli.d	$r13,$r13,8
	or	$r12,$r12,$r13
	lu12i.w	$r13,16711680>>12			# 0xff0000
	and	$r13,$r4,$r13
	slli.d	$r13,$r13,24
	or	$r12,$r12,$r13
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	and	$r13,$r4,$r13
	slli.d	$r13,$r13,40
	or	$r12,$r12,$r13
	slli.d	$r4,$r4,56
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	2
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83 = .
	.cfi_startproc
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,32			# 0x20
.L376:
	srl.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	bnez	$r13,.L378
	addi.w	$r12,$r12,1
	bne	$r12,$r14,.L376
	or	$r4,$r0,$r0
	jr	$r1
.L378:
	addi.w	$r4,$r12,1
	jr	$r1
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	2
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	beqz	$r4,.L382
	andi	$r13,$r4,1
	addi.w	$r4,$r0,1			# 0x1
	bnez	$r13,.L380
	addi.w	$r13,$r0,1			# 0x1
.L381:
	srai.w	$r12,$r12,1
	addi.w	$r4,$r13,1
	or	$r13,$r4,$r0
	andi	$r14,$r12,1
	beqz	$r14,.L381
	jr	$r1
.L382:
	or	$r4,$r0,$r0
.L380:
	jr	$r1
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85 = .
	.cfi_startproc
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L386
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L386:
	jr	$r1
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86 = .
	.cfi_startproc
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC4)
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L389
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L389:
	jr	$r1
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r23,$r3,16
	st.d	$r24,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	or	$r24,$r4,$r0
	or	$r23,$r5,$r0
	la.local	$r12,.LC8
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L394
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__gttf2)
	slt	$r4,$r0,$r4
.L392:
	ld.d	$r1,$r3,24
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
.L394:
	.cfi_restore_state
	addi.w	$r4,$r0,1			# 0x1
	b	.L392
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	movgr2fr.d	$f0,$r5
	ffint.d.w	$f0,$f0
	bl	%plt(__extenddftf2)
	stptr.d	$r4,$r23,0
	st.d	$r5,$r23,8
	ld.d	$r1,$r3,8
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L399
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L399
	slti	$r12,$r4,0
	la.local	$r13,.LC11
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC10
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.s	$f1,$r12,0
	b	.L402
.L401:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L399
	fmul.s	$f1,$f1,$f1
.L402:
	andi	$r12,$r4,1
	beqz	$r12,.L401
	fmul.s	$f0,$f0,$f1
	b	.L401
.L399:
	jr	$r1
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	2
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90 = .
	.cfi_startproc
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L405
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L405
	slti	$r12,$r4,0
	la.local	$r13,.LC13
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC12
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.d	$f1,$r12,0
	b	.L408
.L407:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L405
	fmul.d	$f1,$f1,$f1
.L408:
	andi	$r12,$r4,1
	beqz	$r12,.L407
	fmul.d	$f0,$f0,$f1
	b	.L407
.L405:
	jr	$r1
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	2
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r26,$r3,8
	stptr.d	$r27,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	or	$r27,$r4,$r0
	or	$r26,$r5,$r0
	or	$r23,$r6,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L411
	or	$r6,$r27,$r0
	or	$r7,$r26,$r0
	or	$r4,$r27,$r0
	or	$r5,$r26,$r0
	bl	%plt(__addtf3)
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	or	$r4,$r27,$r0
	or	$r5,$r26,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L411
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	blt	$r23,$r0,.L420
	la.local	$r12,.LC14
	ldptr.d	$r25,$r12,0
	ld.d	$r24,$r12,8
	b	.L415
.L420:
	la.local	$r12,.LC15
	ldptr.d	$r25,$r12,0
	ld.d	$r24,$r12,8
	b	.L415
.L414:
	srli.w	$r12,$r23,31
	add.w	$r12,$r12,$r23
	srai.w	$r23,$r12,1
	beqz	$r23,.L419
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__multf3)
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
.L415:
	andi	$r12,$r23,1
	beqz	$r12,.L414
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r27,$r0
	or	$r5,$r26,$r0
	bl	%plt(__multf3)
	or	$r27,$r4,$r0
	or	$r26,$r5,$r0
	b	.L414
.L419:
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
.L411:
	or	$r4,$r27,$r0
	or	$r5,$r26,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	2
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92 = .
	.cfi_startproc
	beqz	$r6,.L422
	or	$r12,$r0,$r0
.L423:
	ldx.b	$r14,$r5,$r12
	ldx.b	$r13,$r4,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L423
.L422:
	jr	$r1
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	2
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r23,$r3,16
	st.d	$r24,$r3,8
	stptr.d	$r25,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	or	$r23,$r6,$r0
	bl	strlen
	add.d	$r12,$r25,$r4
	beqz	$r23,.L427
.L426:
	ld.b	$r13,$r24,0
	st.b	$r13,$r12,0
	beqz	$r13,.L427
	addi.d	$r24,$r24,1
	addi.d	$r12,$r12,1
	addi.d	$r23,$r23,-1
	bnez	$r23,.L426
.L427:
	bnez	$r23,.L429
	st.b	$r0,$r12,0
.L429:
	or	$r4,$r25,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
	ldptr.d	$r25,$r3,0
	.cfi_restore 25
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	2
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r5,.L438
.L433:
	ldx.b	$r13,$r12,$r4
	bnez	$r13,.L435
.L434:
	jr	$r1
.L438:
	jr	$r1
.L435:
	addi.d	$r4,$r4,1
	bne	$r4,$r5,.L433
	jr	$r1
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95 = .
	.cfi_startproc
	ld.b	$r12,$r4,0
	beqz	$r12,.L447
.L440:
	or	$r12,$r5,$r0
.L443:
	ld.b	$r13,$r12,0
	beqz	$r13,.L448
	addi.d	$r12,$r12,1
	ld.b	$r14,$r12,-1
	ld.b	$r13,$r4,0
	bne	$r14,$r13,.L443
.L441:
	jr	$r1
.L447:
	or	$r4,$r0,$r0
	jr	$r1
.L448:
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,0
	bnez	$r12,.L440
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	2
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
.L451:
	ld.b	$r12,$r13,0
	xor	$r12,$r5,$r12
	maskeqz	$r4,$r4,$r12
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	addi.d	$r13,$r13,1
	ld.b	$r12,$r13,-1
	bnez	$r12,.L451
	jr	$r1
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	2
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	or	$r23,$r4,$r0
	or	$r24,$r5,$r0
	or	$r4,$r5,$r0
	bl	strlen
	beqz	$r4,.L458
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r25,$r4,$r0
	ld.b	$r26,$r24,0
.L456:
	or	$r5,$r26,$r0
	or	$r4,$r23,$r0
	bl	strchr
	or	$r23,$r4,$r0
	beqz	$r4,.L461
	or	$r6,$r25,$r0
	or	$r5,$r24,$r0
	or	$r4,$r23,$r0
	bl	strncmp
	beqz	$r4,.L459
	addi.d	$r23,$r23,1
	b	.L456
.L461:
	or	$r4,$r0,$r0
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	b	.L455
.L458:
	or	$r4,$r23,$r0
.L455:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
.L459:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r4,$r23,$r0
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	b	.L455
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98 = .
	.cfi_startproc
	movgr2fr.d	$f2,$r0
	fcmp.slt.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L475
.L463:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L466
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L465
.L466:
	jr	$r1
.L475:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L463
.L465:
	fneg.d	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	2
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	or	$r23,$r4,$r0
	sub.d	$r24,$r5,$r7
	add.d	$r24,$r4,$r24
	beqz	$r7,.L477
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L477
	bgtu	$r23,$r24,.L477
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	stptr.d	$r27,$r3,0
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	ld.b	$r26,$r6,0
	addi.d	$r27,$r6,1
	addi.d	$r25,$r7,-1
	b	.L479
.L478:
	addi.d	$r23,$r23,1
	bltu	$r24,$r23,.L486
.L479:
	ld.b	$r12,$r23,0
	bne	$r12,$r26,.L478
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	addi.d	$r4,$r23,1
	bl	memcmp
	bnez	$r4,.L478
	or	$r4,$r23,$r0
	ld.d	$r25,$r3,16
	.cfi_remember_state
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
	b	.L477
.L486:
	.cfi_restore_state
	or	$r4,$r0,$r0
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
.L477:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	2
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r6,$r0
	bl	%plt(memcpy)
	add.d	$r4,$r4,$r23
	ld.d	$r1,$r3,8
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	2
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101 = .
	.cfi_startproc
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L511
	or	$r13,$r0,$r0
.L490:
	or	$r12,$r0,$r0
	pcalau12i	$r14,%pc_hi20(.LC16)
	fld.d	$f1,$r14,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L509
	pcalau12i	$r14,%pc_hi20(.LC13)
	fld.d	$f2,$r14,%pc_lo12(.LC13)
.L494:
	addi.w	$r12,$r12,1
	fmul.d	$f0,$f0,$f2
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L494
.L495:
	stptr.w	$r12,$r4,0
	beqz	$r13,.L498
	fneg.d	$f0,$f0
.L498:
	jr	$r1
.L511:
	fneg.d	$f0,$f0
	addi.w	$r13,$r0,1			# 0x1
	b	.L490
.L509:
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L510
	or	$r12,$r0,$r0
	movgr2fr.d	$f1,$r0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L495
	pcalau12i	$r14,%pc_hi20(.LC13)
	fld.d	$f1,$r14,%pc_lo12(.LC13)
.L497:
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L497
	b	.L495
.L510:
	or	$r12,$r0,$r0
	b	.L495
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	beqz	$r4,.L515
	or	$r4,$r0,$r0
.L514:
	andi	$r12,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.d	$r4,$r4,$r12
	slli.d	$r5,$r5,1
	srli.d	$r13,$r13,1
	bnez	$r13,.L514
	jr	$r1
.L515:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	2
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103 = .
	.cfi_startproc
	addi.w	$r12,$r0,1			# 0x1
	bgeu	$r5,$r4,.L519
.L518:
	blt	$r5,$r0,.L519
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L519
	bnez	$r12,.L518
.L519:
	or	$r13,$r0,$r0
	bnez	$r12,.L520
.L521:
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
	jr	$r1
.L523:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	beqz	$r12,.L521
.L520:
	bltu	$r4,$r5,.L523
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
	b	.L523
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104 = .
	.cfi_startproc
	srai.w	$r12,$r4,7
	ext.w.b	$r12,$r12
	xor	$r12,$r12,$r4
	slli.w	$r4,$r12,8
	clz.w	$r4,$r4
	addi.w	$r4,$r4,-1
	maskeqz	$r4,$r4,$r12
	addi.w	$r13,$r0,7			# 0x7
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r12,$r12,$r4
	clz.d	$r4,$r12
	addi.w	$r4,$r4,-1
	maskeqz	$r4,$r4,$r12
	addi.w	$r13,$r0,63			# 0x3f
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	beqz	$r4,.L541
	or	$r4,$r0,$r0
.L540:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r4,$r12
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L540
	jr	$r1
.L541:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107 = .
	.cfi_startproc
	srli.w	$r15,$r6,3
	bstrpick.d	$r14,$r6,31,3
	addi.w	$r13,$r0,-8			# 0xfffffffffffffff8
	and	$r13,$r6,$r13
	bgeu	$r4,$r5,.L544
.L547:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,3
	or	$r12,$r0,$r0
	beqz	$r14,.L546
.L550:
	ldx.d	$r14,$r5,$r12
	stx.d	$r14,$r4,$r12
	addi.d	$r12,$r12,8
	bne	$r12,$r15,.L550
.L546:
	bleu	$r6,$r13,.L543
	bstrpick.d	$r12,$r13,31,0
.L551:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L551
	jr	$r1
.L544:
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bltu	$r12,$r4,.L547
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L558
.L552:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L552
.L543:
	jr	$r1
.L558:
	jr	$r1
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	2
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108 = .
	.cfi_startproc
	srli.w	$r14,$r6,1
	bstrpick.d	$r13,$r6,31,1
	bgeu	$r4,$r5,.L560
.L563:
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r14,$r14,1
	or	$r12,$r0,$r0
	beqz	$r13,.L562
.L566:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r12,$r14,.L566
.L562:
	andi	$r12,$r6,1
	beqz	$r12,.L559
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
.L560:
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bltu	$r12,$r4,.L563
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L572
.L567:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L567
.L559:
	jr	$r1
.L572:
	jr	$r1
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	2
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109 = .
	.cfi_startproc
	srli.w	$r15,$r6,2
	bstrpick.d	$r14,$r6,31,2
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	and	$r13,$r6,$r13
	bgeu	$r4,$r5,.L574
.L577:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,2
	or	$r12,$r0,$r0
	beqz	$r14,.L576
.L580:
	ldx.w	$r14,$r5,$r12
	stx.w	$r14,$r4,$r12
	addi.d	$r12,$r12,4
	bne	$r12,$r15,.L580
.L576:
	bleu	$r6,$r13,.L573
	bstrpick.d	$r12,$r13,31,0
.L581:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L581
	jr	$r1
.L574:
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bltu	$r12,$r4,.L577
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L588
.L582:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L582
.L573:
	jr	$r1
.L588:
	jr	$r1
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	2
	.globl	__modi
	.type	__modi, @function
__modi:
.LFB110 = .
	.cfi_startproc
	mod.w	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	2
	.globl	__uitod
	.type	__uitod, @function
__uitod:
.LFB111 = .
	.cfi_startproc
	bstrpick.d	$r4,$r4,31,0
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	2
	.globl	__uitof
	.type	__uitof, @function
__uitof:
.LFB112 = .
	.cfi_startproc
	bstrpick.d	$r4,$r4,31,0
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	2
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113 = .
	.cfi_startproc
	blt	$r4,$r0,.L594
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
.L594:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	fadd.d	$f0,$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	2
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114 = .
	.cfi_startproc
	blt	$r4,$r0,.L597
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
.L597:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	fadd.s	$f0,$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	2
	.globl	__umodi
	.type	__umodi, @function
__umodi:
.LFB115 = .
	.cfi_startproc
	mod.wu	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	2
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116 = .
	.cfi_startproc
	or	$r13,$r0,$r0
	addi.w	$r14,$r0,15			# 0xf
	addi.w	$r15,$r0,16			# 0x10
.L601:
	sub.w	$r12,$r14,$r13
	sra.w	$r12,$r4,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L600
	addi.w	$r13,$r13,1
	bne	$r13,$r15,.L601
.L600:
	or	$r4,$r13,$r0
	jr	$r1
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117 = .
	.cfi_startproc
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,16			# 0x10
.L605:
	sra.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	bnez	$r13,.L604
	addi.w	$r12,$r12,1
	bne	$r12,$r14,.L605
.L604:
	or	$r4,$r12,$r0
	jr	$r1
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118 = .
	.cfi_startproc
	pcalau12i	$r12,%pc_hi20(.LC19)
	fld.s	$f1,$r12,%pc_lo12(.LC19)
	fcmp.sge.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L613
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
.L613:
	fsub.s	$f0,$f0,$f1
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	lu12i.w	$r12,32768>>12			# 0x8000
	add.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119 = .
	.cfi_startproc
	or	$r14,$r4,$r0
	or	$r4,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
.L615:
	sra.w	$r13,$r14,$r12
	andi	$r13,$r13,1
	add.w	$r4,$r13,$r4
	addi.w	$r12,$r12,1
	bne	$r12,$r15,.L615
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120 = .
	.cfi_startproc
	or	$r14,$r4,$r0
	or	$r4,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
.L618:
	sra.w	$r13,$r14,$r12
	andi	$r13,$r13,1
	add.w	$r4,$r13,$r4
	addi.w	$r12,$r12,1
	bne	$r12,$r15,.L618
	jr	$r1
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	beqz	$r4,.L623
	or	$r4,$r0,$r0
.L622:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r4,$r12
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L622
	jr	$r1
.L623:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122 = .
	.cfi_startproc
	or	$r14,$r4,$r0
	beqz	$r4,.L628
	or	$r4,$r0,$r0
	or	$r13,$r0,$r0
	bnez	$r5,.L627
	jr	$r1
.L630:
	or	$r13,$r12,$r0
.L627:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r4,$r12,$r0
	slli.w	$r14,$r14,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r5,.L630
	jr	$r1
.L628:
	or	$r4,$r0,$r0
.L626:
	jr	$r1
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123 = .
	.cfi_startproc
	addi.w	$r12,$r0,1			# 0x1
	bgeu	$r5,$r4,.L633
.L632:
	blt	$r5,$r0,.L633
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L633
	bnez	$r12,.L632
.L633:
	or	$r13,$r0,$r0
	bnez	$r12,.L634
.L635:
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
	jr	$r1
.L637:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	beqz	$r12,.L635
.L634:
	bltu	$r4,$r5,.L637
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
	b	.L637
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124 = .
	.cfi_startproc
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L647
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L647:
	jr	$r1
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125 = .
	.cfi_startproc
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L650
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L650:
	jr	$r1
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.globl	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126 = .
	.cfi_startproc
	mul.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.globl	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127 = .
	.cfi_startproc
	mul.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128 = .
	.cfi_startproc
	or	$r15,$r0,$r0
	blt	$r5,$r0,.L664
.L655:
	or	$r14,$r0,$r0
	beqz	$r5,.L656
	addi.w	$r13,$r0,32			# 0x20
.L657:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r4,$r12
	add.w	$r14,$r14,$r12
	slli.w	$r4,$r4,1
	srai.w	$r5,$r5,1
	beqz	$r5,.L656
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	bnez	$r13,.L657
.L656:
	sub.w	$r4,$r0,$r14
	maskeqz	$r4,$r4,$r15
	masknez	$r15,$r14,$r15
	or	$r4,$r4,$r15
	jr	$r1
.L664:
	sub.w	$r5,$r0,$r5
	addi.w	$r15,$r0,1			# 0x1
	b	.L655
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r0,$r0
	blt	$r4,$r0,.L671
.L666:
	blt	$r5,$r0,.L672
.L667:
	or	$r6,$r0,$r0
	slli.w	$r5,$r5,0
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r12,$r4,31,0
	sub.d	$r4,$r0,$r12
	maskeqz	$r4,$r4,$r23
	masknez	$r23,$r12,$r23
	or	$r4,$r4,$r23
	ld.d	$r1,$r3,8
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
.L671:
	.cfi_restore_state
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L666
.L672:
	sub.d	$r5,$r0,$r5
	xori	$r23,$r23,1
	b	.L667
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r0,$r0
	blt	$r4,$r0,.L678
.L674:
	srai.d	$r12,$r5,63
	xor	$r5,$r12,$r5
	addi.w	$r6,$r0,1			# 0x1
	sub.w	$r5,$r5,$r12
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r12,$r4,31,0
	sub.d	$r4,$r0,$r12
	maskeqz	$r4,$r4,$r23
	masknez	$r23,$r12,$r23
	or	$r4,$r4,$r23
	ld.d	$r1,$r3,8
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
.L678:
	.cfi_restore_state
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L674
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131 = .
	.cfi_startproc
	or	$r12,$r5,$r0
	or	$r14,$r4,$r0
	addi.w	$r15,$r0,16			# 0x10
	addi.w	$r13,$r0,1			# 0x1
	slli.w	$r17,$r4,0
	bleu	$r4,$r5,.L681
.L680:
	ext.w.h	$r16,$r12
	blt	$r16,$r0,.L681
	slli.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r13,$r13,1
	bstrpick.w	$r13,$r13,15,0
	slli.w	$r16,$r12,0
	bleu	$r17,$r16,.L681
	addi.w	$r15,$r15,-1
	bnez	$r15,.L680
.L681:
	or	$r16,$r0,$r0
	bnez	$r13,.L682
.L683:
	maskeqz	$r14,$r14,$r6
	masknez	$r6,$r16,$r6
	or	$r4,$r14,$r6
	jr	$r1
.L685:
	srli.d	$r13,$r13,1
	srli.d	$r12,$r12,1
	beqz	$r13,.L683
.L682:
	slli.w	$r15,$r14,0
	bltu	$r15,$r12,.L685
	sub.w	$r14,$r14,$r12
	bstrpick.w	$r14,$r14,15,0
	or	$r16,$r16,$r13
	b	.L685
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132 = .
	.cfi_startproc
	addi.w	$r12,$r0,1			# 0x1
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	lu32i.d	$r14,0>>32
	bgeu	$r5,$r4,.L696
.L695:
	and	$r13,$r5,$r14
	bnez	$r13,.L696
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L696
	bnez	$r12,.L695
.L696:
	or	$r13,$r0,$r0
	bnez	$r12,.L697
.L698:
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
	jr	$r1
.L700:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	beqz	$r12,.L698
.L697:
	bltu	$r4,$r5,.L700
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
	b	.L700
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L710
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,31,0
	sll.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,63,32
	jr	$r1
.L710:
	beqz	$r5,.L712
	sll.w	$r13,$r4,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	srai.d	$r13,$r12,32
	sll.w	$r13,$r13,$r5
	sub.w	$r5,$r0,$r5
	srl.w	$r12,$r12,$r5
	or	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	bstrins.d	$r4,$r12,63,32
.L712:
	jr	$r1
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L715
	or	$r4,$r0,$r0
	sll.d	$r5,$r12,$r6
	jr	$r1
.L715:
	beqz	$r6,.L717
	sll.d	$r4,$r4,$r6
	sll.d	$r5,$r5,$r6
	sub.w	$r6,$r0,$r6
	srl.d	$r12,$r12,$r6
	or	$r5,$r12,$r5
.L717:
	jr	$r1
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	2
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L720
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	sra.w	$r12,$r12,$r5
	bstrins.d	$r4,$r12,31,0
	jr	$r1
.L720:
	beqz	$r5,.L722
	srai.d	$r13,$r4,32
	sra.w	$r14,$r13,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r14,63,32
	sub.w	$r14,$r0,$r5
	sll.w	$r13,$r13,$r14
	srl.w	$r5,$r12,$r5
	or	$r13,$r13,$r5
	slli.w	$r13,$r13,0
	bstrins.d	$r4,$r13,31,0
.L722:
	jr	$r1
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136 = .
	.cfi_startproc
	or	$r12,$r5,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L725
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
.L725:
	beqz	$r6,.L727
	sra.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L727:
	jr	$r1
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	2
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137 = .
	.cfi_startproc
	srli.d	$r19,$r4,56
	srli.d	$r18,$r4,40
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r18,$r18,$r12
	srli.d	$r17,$r4,24
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r17,$r17,$r12
	srli.d	$r16,$r4,8
	lu12i.w	$r12,-16777216>>12			# 0xffffffffff000000
	lu32i.d	$r12,0>>32
	and	$r16,$r16,$r12
	slli.d	$r15,$r4,8
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff00000000>>32
	and	$r15,$r15,$r12
	slli.d	$r14,$r4,24
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff0000000000>>32
	and	$r14,$r14,$r12
	slli.d	$r13,$r4,40
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xffff000000000000>>32
	lu52i.d	$r12,$r12,0xf0000000000000>>52
	and	$r13,$r13,$r12
	slli.d	$r12,$r4,56
	or	$r12,$r12,$r19
	or	$r12,$r12,$r18
	or	$r12,$r12,$r17
	or	$r12,$r12,$r16
	or	$r12,$r12,$r15
	or	$r12,$r12,$r14
	or	$r4,$r12,$r13
	jr	$r1
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138 = .
	.cfi_startproc
	srli.w	$r14,$r4,24
	srli.w	$r12,$r4,8
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	and	$r13,$r13,$r12
	slli.w	$r15,$r4,8
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r12,$r15
	slli.w	$r4,$r4,24
	or	$r4,$r4,$r14
	slli.w	$r4,$r4,0
	or	$r4,$r4,$r13
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139 = .
	.cfi_startproc
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,4095
	sltu	$r13,$r13,$r4
	xori	$r13,$r13,1
	slli.w	$r13,$r13,4
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r13
	srl.w	$r12,$r4,$r12
	lu12i.w	$r4,61440>>12			# 0xf000
	ori	$r4,$r4,3840
	and	$r4,$r4,$r12
	sltui	$r4,$r4,1
	slli.w	$r4,$r4,3
	addi.w	$r14,$r0,8			# 0x8
	sub.w	$r14,$r14,$r4
	srl.w	$r12,$r12,$r14
	add.w	$r13,$r4,$r13
	andi	$r14,$r12,240
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,2
	addi.w	$r15,$r0,4			# 0x4
	sub.w	$r15,$r15,$r14
	srl.w	$r12,$r12,$r15
	add.w	$r13,$r13,$r14
	andi	$r14,$r12,12
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,1
	addi.w	$r4,$r0,2			# 0x2
	sub.w	$r15,$r4,$r14
	srl.w	$r12,$r12,$r15
	add.w	$r13,$r13,$r14
	xori	$r14,$r12,2
	bstrpick.d	$r14,$r14,1,1
	sub.w	$r4,$r4,$r12
	sub.w	$r12,$r0,$r14
	and	$r4,$r4,$r12
	add.w	$r4,$r13,$r4
	jr	$r1
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140 = .
	.cfi_startproc
	sltui	$r12,$r5,1
	sub.d	$r13,$r0,$r12
	addi.d	$r12,$r12,-1
	and	$r5,$r12,$r5
	and	$r4,$r13,$r4
	or	$r5,$r5,$r4
	clz.d	$r5,$r5
	andi	$r4,$r13,64
	add.d	$r4,$r5,$r4
	jr	$r1
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	2
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	blt	$r14,$r13,.L735
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L734
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L734
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
	jr	$r1
.L735:
	or	$r4,$r0,$r0
.L734:
	jr	$r1
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	.cfi_offset 1, -8
	bl	__cmpdi2
	addi.w	$r4,$r4,-1
	ld.d	$r1,$r3,8
	.cfi_restore 1
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	blt	$r5,$r7,.L743
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L742
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L742
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
.L743:
	or	$r4,$r0,$r0
.L742:
	jr	$r1
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	2
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144 = .
	.cfi_startproc
	bstrpick.w	$r13,$r4,15,0
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,4
	srl.w	$r12,$r4,$r13
	bstrpick.w	$r4,$r12,7,0
	sltui	$r4,$r4,1
	slli.w	$r4,$r4,3
	srl.w	$r12,$r12,$r4
	add.w	$r13,$r4,$r13
	andi	$r14,$r12,15
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,2
	srl.w	$r12,$r12,$r14
	add.w	$r13,$r13,$r14
	andi	$r14,$r12,3
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,1
	srl.w	$r12,$r12,$r14
	andi	$r12,$r12,3
	add.w	$r13,$r13,$r14
	nor	$r14,$r0,$r12
	andi	$r14,$r14,1
	srli.w	$r12,$r12,1
	addi.w	$r4,$r0,2			# 0x2
	sub.w	$r4,$r4,$r12
	sub.w	$r12,$r0,$r14
	and	$r4,$r4,$r12
	add.w	$r4,$r13,$r4
	jr	$r1
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145 = .
	.cfi_startproc
	sltui	$r13,$r4,1
	sub.d	$r13,$r0,$r13
	and	$r5,$r13,$r5
	andn	$r12,$r4,$r13
	or	$r12,$r12,$r5
	ctz.d	$r12,$r12
	andi	$r4,$r13,64
	add.d	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	2
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146 = .
	.cfi_startproc
	bnez	$r4,.L750
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
.L750:
	ctz.d	$r4,$r4
	addi.d	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	2
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L754
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,63,32
	bstrpick.d	$r12,$r12,63,32
	srl.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,31,0
	jr	$r1
.L754:
	beqz	$r5,.L756
	bstrpick.d	$r13,$r4,63,32
	srl.w	$r13,$r13,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrpick.d	$r13,$r12,63,32
	sub.w	$r14,$r0,$r5
	sll.w	$r13,$r13,$r14
	srl.w	$r5,$r12,$r5
	or	$r12,$r13,$r5
	slli.w	$r12,$r12,0
	bstrins.d	$r4,$r12,31,0
.L756:
	jr	$r1
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148 = .
	.cfi_startproc
	or	$r12,$r5,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L759
	or	$r5,$r0,$r0
	srl.d	$r4,$r12,$r6
	jr	$r1
.L759:
	beqz	$r6,.L761
	srl.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L761:
	jr	$r1
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	bstrpick.w	$r13,$r4,15,0
	bstrpick.w	$r14,$r5,15,0
	mul.w	$r15,$r13,$r14
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r15,31,0
	srli.w	$r15,$r4,16
	bstrpick.w	$r16,$r4,15,0
	bstrins.d	$r4,$r16,31,0
	srli.w	$r12,$r12,16
	mul.w	$r14,$r12,$r14
	add.w	$r14,$r14,$r15
	slli.w	$r15,$r14,16
	add.w	$r15,$r15,$r4
	bstrins.d	$r4,$r15,31,0
	bstrpick.d	$r14,$r14,31,16
	bstrins.d	$r4,$r14,63,32
	srli.w	$r14,$r4,16
	bstrpick.w	$r15,$r4,15,0
	bstrins.d	$r4,$r15,31,0
	srli.w	$r5,$r5,16
	mul.w	$r13,$r13,$r5
	add.w	$r13,$r13,$r14
	slli.w	$r14,$r13,16
	add.w	$r14,$r14,$r4
	bstrins.d	$r4,$r14,31,0
	srai.d	$r14,$r4,32
	srli.w	$r13,$r13,16
	add.w	$r13,$r13,$r14
	bstrins.d	$r4,$r13,63,32
	srai.d	$r13,$r4,32
	mul.w	$r12,$r12,$r5
	add.w	$r12,$r12,$r13
	bstrins.d	$r4,$r12,63,32
	jr	$r1
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r23,$r4,$r0
	or	$r24,$r5,$r0
	slli.w	$r25,$r4,0
	slli.w	$r26,$r5,0
	or	$r5,$r26,$r0
	or	$r4,$r25,$r0
	bl	__muldsi3
	srai.d	$r12,$r4,32
	srai.d	$r23,$r23,32
	mul.w	$r23,$r23,$r26
	srai.d	$r24,$r24,32
	mul.w	$r24,$r24,$r25
	add.w	$r23,$r23,$r24
	add.w	$r23,$r23,$r12
	bstrins.d	$r4,$r23,63,32
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151 = .
	.cfi_startproc
	bstrpick.d	$r15,$r4,31,0
	bstrpick.d	$r16,$r5,31,0
	mul.d	$r14,$r15,$r16
	srli.d	$r12,$r14,32
	srli.d	$r13,$r4,32
	mul.d	$r16,$r13,$r16
	add.d	$r12,$r12,$r16
	srli.d	$r16,$r12,32
	bstrpick.d	$r12,$r12,31,0
	bstrpick.d	$r14,$r14,31,0
	srli.d	$r5,$r5,32
	mul.d	$r15,$r15,$r5
	add.d	$r12,$r12,$r15
	slli.d	$r4,$r12,32
	srli.d	$r12,$r12,32
	add.d	$r12,$r12,$r16
	mul.d	$r5,$r13,$r5
	add.d	$r4,$r4,$r14
	add.d	$r5,$r5,$r12
	jr	$r1
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	2
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r26,$r4,$r0
	or	$r23,$r5,$r0
	or	$r25,$r6,$r0
	or	$r24,$r7,$r0
	or	$r5,$r6,$r0
	bl	__mulddi3
	mul.d	$r23,$r23,$r25
	mul.d	$r24,$r24,$r26
	add.d	$r23,$r23,$r24
	add.d	$r5,$r23,$r5
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	2
	.globl	__negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153 = .
	.cfi_startproc
	sub.d	$r4,$r0,$r4
	jr	$r1
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	2
	.globl	__negti2
	.type	__negti2, @function
__negti2:
.LFB154 = .
	.cfi_startproc
	sltu	$r12,$r0,$r4
	sub.d	$r5,$r0,$r5
	sub.d	$r4,$r0,$r4
	sub.d	$r5,$r5,$r12
	jr	$r1
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	2
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155 = .
	.cfi_startproc
	srai.d	$r12,$r4,32
	slli.w	$r4,$r4,0
	xor	$r12,$r12,$r4
	srli.w	$r13,$r12,16
	xor	$r12,$r12,$r13
	srli.w	$r13,$r12,8
	xor	$r12,$r12,$r13
	srli.w	$r13,$r12,4
	xor	$r12,$r12,$r13
	andi	$r12,$r12,15
	lu12i.w	$r4,24576>>12			# 0x6000
	ori	$r4,$r4,2454
	sra.w	$r4,$r4,$r12
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156 = .
	.cfi_startproc
	xor	$r5,$r5,$r4
	srai.d	$r12,$r5,32
	slli.w	$r5,$r5,0
	xor	$r12,$r12,$r5
	srli.w	$r13,$r12,16
	xor	$r12,$r12,$r13
	srli.w	$r13,$r12,8
	xor	$r12,$r12,$r13
	srli.w	$r13,$r12,4
	xor	$r12,$r12,$r13
	andi	$r12,$r12,15
	lu12i.w	$r4,24576>>12			# 0x6000
	ori	$r4,$r4,2454
	sra.w	$r4,$r4,$r12
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	2
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157 = .
	.cfi_startproc
	srli.w	$r12,$r4,16
	xor	$r4,$r12,$r4
	srli.w	$r12,$r4,8
	xor	$r4,$r4,$r12
	srli.w	$r12,$r4,4
	xor	$r4,$r4,$r12
	andi	$r4,$r4,15
	lu12i.w	$r12,24576>>12			# 0x6000
	ori	$r12,$r12,2454
	sra.w	$r4,$r12,$r4
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158 = .
	.cfi_startproc
	srli.d	$r12,$r4,1
	lu12i.w	$r13,1431654400>>12			# 0x55555000
	ori	$r13,$r13,1365
	bstrins.d	$r13,$r13,63,32
	and	$r12,$r12,$r13
	sub.d	$r4,$r4,$r12
	srli.d	$r12,$r4,2
	lu12i.w	$r13,858992640>>12			# 0x33333000
	ori	$r13,$r13,819
	bstrins.d	$r13,$r13,63,32
	and	$r12,$r12,$r13
	and	$r4,$r4,$r13
	add.d	$r4,$r12,$r4
	srli.d	$r12,$r4,4
	add.d	$r4,$r12,$r4
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	and	$r4,$r4,$r12
	srli.d	$r13,$r4,32
	add.w	$r13,$r13,$r4
	srli.w	$r12,$r13,16
	add.w	$r12,$r12,$r13
	srli.w	$r4,$r12,8
	add.w	$r4,$r4,$r12
	andi	$r4,$r4,127
	jr	$r1
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159 = .
	.cfi_startproc
	srli.w	$r13,$r4,1
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	and	$r12,$r12,$r13
	sub.w	$r4,$r4,$r12
	srli.w	$r13,$r4,2
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	and	$r13,$r12,$r13
	and	$r12,$r12,$r4
	add.w	$r13,$r13,$r12
	srli.w	$r12,$r13,4
	add.w	$r12,$r12,$r13
	lu12i.w	$r13,252641280>>12			# 0xf0f0000
	ori	$r13,$r13,3855
	and	$r12,$r12,$r13
	srli.w	$r13,$r12,16
	add.w	$r12,$r13,$r12
	srli.w	$r4,$r12,8
	add.w	$r4,$r4,$r12
	andi	$r4,$r4,63
	jr	$r1
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160 = .
	.cfi_startproc
	slli.d	$r13,$r5,63
	srli.d	$r12,$r4,1
	or	$r12,$r13,$r12
	srli.d	$r13,$r5,1
	lu12i.w	$r14,1431654400>>12			# 0x55555000
	ori	$r14,$r14,1365
	bstrins.d	$r14,$r14,63,32
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	sub.d	$r12,$r4,$r12
	sltu	$r4,$r4,$r12
	sub.d	$r5,$r5,$r13
	sub.d	$r5,$r5,$r4
	slli.d	$r13,$r5,62
	srli.d	$r14,$r12,2
	or	$r14,$r13,$r14
	srli.d	$r13,$r5,2
	lu12i.w	$r15,858992640>>12			# 0x33333000
	ori	$r15,$r15,819
	bstrins.d	$r15,$r15,63,32
	and	$r14,$r14,$r15
	and	$r13,$r13,$r15
	and	$r12,$r12,$r15
	and	$r5,$r5,$r15
	add.d	$r12,$r14,$r12
	sltu	$r14,$r12,$r14
	add.d	$r13,$r13,$r5
	add.d	$r14,$r14,$r13
	slli.d	$r15,$r14,60
	srli.d	$r13,$r12,4
	or	$r13,$r15,$r13
	srli.d	$r15,$r14,4
	add.d	$r12,$r13,$r12
	sltu	$r13,$r12,$r13
	add.d	$r14,$r15,$r14
	add.d	$r13,$r13,$r14
	lu12i.w	$r14,252641280>>12			# 0xf0f0000
	ori	$r14,$r14,3855
	bstrins.d	$r14,$r14,63,32
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	add.d	$r13,$r13,$r12
	srli.d	$r12,$r13,32
	add.w	$r13,$r12,$r13
	srli.w	$r12,$r13,16
	add.w	$r12,$r12,$r13
	srli.w	$r4,$r12,8
	add.w	$r4,$r4,$r12
	bstrpick.w	$r4,$r4,7,0
	jr	$r1
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	2
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161 = .
	.cfi_startproc
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f1,$r12,%pc_lo12(.LC16)
	b	.L780
.L778:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L779
	fmul.d	$f0,$f0,$f0
.L780:
	andi	$r12,$r4,1
	beqz	$r12,.L778
	fmul.d	$f1,$f1,$f0
	b	.L778
.L779:
	fmov.d	$f0,$f1
	beqz	$r13,.L781
	frecip.d	$f0,$f1
.L781:
	jr	$r1
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	2
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162 = .
	.cfi_startproc
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC21)
	fld.s	$f1,$r12,%pc_lo12(.LC21)
	b	.L786
.L784:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L785
	fmul.s	$f0,$f0,$f0
.L786:
	andi	$r12,$r4,1
	beqz	$r12,.L784
	fmul.s	$f1,$f1,$f0
	b	.L784
.L785:
	fmov.s	$f0,$f1
	beqz	$r13,.L787
	frecip.s	$f0,$f1
.L787:
	jr	$r1
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	2
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	bltu	$r14,$r13,.L791
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L790
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L790
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
	jr	$r1
.L791:
	or	$r4,$r0,$r0
.L790:
	jr	$r1
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r1,$r3,8
	.cfi_offset 1, -8
	bl	__ucmpdi2
	addi.w	$r4,$r4,-1
	ld.d	$r1,$r3,8
	.cfi_restore 1
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	bltu	$r5,$r7,.L799
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L798
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L798
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
.L799:
	or	$r4,$r0,$r0
.L798:
	jr	$r1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC4:
	.word	-1
	.word	-1048577
	.align	3
.LC5:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC8:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC9:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.set	.LC10,.LC14+12
	.section	.rodata.cst4
	.align	2
.LC11:
	.word	1056964608
	.set	.LC12,.LC14+8
	.section	.rodata.cst8
	.align	3
.LC13:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC14:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC15:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.rodata.cst8
	.align	3
.LC16:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC19:
	.word	1191182336
	.align	2
.LC21:
	.word	1065353216


	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
