	.file	"mini-libc.c"
	.text
	.align	2
	.align	3
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
	.align	3
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
	.align	3
	.globl	memmove
	.type	memmove, @function
memmove:
.LFB2 = .
	.cfi_startproc
	bleu	$r4,$r5,.L5
	beqz	$r6,.L6
	addi.d	$r5,$r5,-1
	addi.d	$r13,$r4,-1
	.align	3
.L7:
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r13,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L7
	jr	$r1
	.align	5
.L5:
	beq	$r4,$r5,.L6
	beqz	$r6,.L6
	or	$r12,$r0,$r0
	.align	3
.L8:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L8
.L6:
	jr	$r1
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	2
	.align	3
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB3 = .
	.cfi_startproc
	bstrpick.w	$r6,$r6,7,0
	.align	3
.L27:
	beqz	$r7,.L28
	ld.bu	$r12,$r5,0
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	st.b	$r12,$r4,0
	addi.d	$r4,$r4,1
	bne	$r12,$r6,.L27
	jr	$r1
	.align	5
.L28:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	2
	.align	3
	.globl	memchr
	.type	memchr, @function
memchr:
.LFB4 = .
	.cfi_startproc
	bstrpick.w	$r5,$r5,7,0
	bnez	$r6,.L30
	b	.L33
	.align	5
.L32:
	addi.d	$r4,$r4,1
	beqz	$r6,.L33
.L30:
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r5,.L32
	jr	$r1
	.align	5
.L33:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	2
	.align	3
	.globl	memcmp
	.type	memcmp, @function
memcmp:
.LFB5 = .
	.cfi_startproc
	beqz	$r6,.L40
	.align	3
.L47:
	ld.bu	$r13,$r4,0
	ld.bu	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L46
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	bnez	$r6,.L47
.L40:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L46:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	2
	.align	3
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB6 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	stptr.d	$r23,$r3,0
	st.d	$r1,$r3,8
	.cfi_offset 23, -16
	.cfi_offset 1, -8
	or	$r23,$r4,$r0
	beqz	$r6,.L49
	bl	%plt(memcpy)
.L49:
	ld.d	$r1,$r3,8
	.cfi_restore 1
	or	$r4,$r23,$r0
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	2
	.align	3
	.globl	memrchr
	.type	memrchr, @function
memrchr:
.LFB7 = .
	.cfi_startproc
	addi.d	$r6,$r6,-1
	bstrpick.w	$r5,$r5,7,0
	add.d	$r6,$r4,$r6
	addi.d	$r13,$r4,-1
	b	.L55
	.align	5
.L57:
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	beq	$r12,$r5,.L54
.L55:
	or	$r4,$r6,$r0
	bne	$r6,$r13,.L57
	or	$r4,$r0,$r0
.L54:
	jr	$r1
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	2
	.align	3
	.globl	memset
	.type	memset, @function
memset:
.LFB8 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	stptr.d	$r23,$r3,0
	st.d	$r1,$r3,8
	.cfi_offset 23, -16
	.cfi_offset 1, -8
	or	$r23,$r4,$r0
	beqz	$r6,.L61
	bstrpick.w	$r5,$r5,7,0
	bl	%plt(memset)
.L61:
	ld.d	$r1,$r3,8
	.cfi_restore 1
	or	$r4,$r23,$r0
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	2
	.align	3
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9 = .
	.cfi_startproc
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	beqz	$r12,.L64
	.align	3
.L65:
	ld.b	$r12,$r5,1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	st.b	$r12,$r4,0
	bnez	$r12,.L65
.L64:
	jr	$r1
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	2
	.align	3
	.globl	strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10 = .
	.cfi_startproc
	ld.b	$r12,$r4,0
	bstrpick.w	$r5,$r5,7,0
	bnez	$r12,.L71
	jr	$r1
	.align	5
.L73:
	ld.b	$r12,$r4,1
	addi.d	$r4,$r4,1
	beqz	$r12,.L70
.L71:
	bstrpick.w	$r12,$r12,7,0
	bne	$r12,$r5,.L73
.L70:
	jr	$r1
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	2
	.align	3
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB11 = .
	.cfi_startproc
	.align	3
.L79:
	ld.b	$r12,$r4,0
	beq	$r12,$r5,.L78
	addi.d	$r4,$r4,1
	bnez	$r12,.L79
	or	$r4,$r0,$r0
.L78:
	jr	$r1
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	2
	.align	3
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB12 = .
	.cfi_startproc
	ld.b	$r14,$r5,0
	ld.b	$r13,$r4,0
	addi.w	$r12,$r0,1			# 0x1
	addi.d	$r5,$r5,-1
	bne	$r13,$r14,.L88
	.align	3
.L82:
	beqz	$r13,.L83
	ldx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	ldx.b	$r14,$r5,$r12
	beq	$r13,$r14,.L82
.L88:
	bstrpick.w	$r13,$r13,7,0
.L83:
	bstrpick.w	$r4,$r14,7,0
	sub.w	$r4,$r13,$r4
	jr	$r1
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	2
	.align	3
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB13 = .
	.cfi_startproc
	ld.bu	$r12,$r4,0
	beqz	$r12,.L92
	or	$r12,$r4,$r0
	.align	3
.L91:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L91
	sub.d	$r4,$r12,$r4
	jr	$r1
	.align	5
.L92:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.align	3
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14 = .
	.cfi_startproc
	beqz	$r6,.L102
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	add.d	$r14,$r4,$r6
	bnez	$r12,.L98
	b	.L106
	.align	5
.L99:
	beq	$r14,$r4,.L105
	addi.d	$r4,$r4,1
	bne	$r13,$r12,.L105
	ld.bu	$r12,$r4,0
	beqz	$r12,.L107
	or	$r5,$r15,$r0
.L98:
	ld.bu	$r13,$r5,0
	addi.d	$r15,$r5,1
	bnez	$r13,.L99
.L105:
	slli.w	$r4,$r12,0
.L97:
	sub.w	$r4,$r4,$r13
	jr	$r1
	.align	5
.L102:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L107:
	ld.bu	$r13,$r5,1
	or	$r4,$r0,$r0
	sub.w	$r4,$r4,$r13
	jr	$r1
.L106:
	ld.bu	$r13,$r5,0
	or	$r4,$r0,$r0
	b	.L97
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	2
	.align	3
	.globl	swab
	.type	swab, @function
swab:
.LFB15 = .
	.cfi_startproc
	addi.w	$r12,$r0,1			# 0x1
	ble	$r6,$r12,.L108
	srli.d	$r6,$r6,1
	alsl.d	$r14,$r6,$r4,1
	.align	3
.L110:
	ld.bu	$r13,$r4,1
	ld.bu	$r12,$r4,0
	addi.d	$r4,$r4,2
	st.b	$r13,$r5,0
	st.b	$r12,$r5,1
	addi.d	$r5,$r5,2
	bne	$r4,$r14,.L110
.L108:
	jr	$r1
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	2
	.align	3
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
	.align	3
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
	.align	3
	.globl	isblank
	.type	isblank, @function
isblank:
.LFB18 = .
	.cfi_startproc
	addi.d	$r13,$r4,-9
	xori	$r12,$r4,32
	sltui	$r13,$r13,1
	sltui	$r4,$r12,1
	maskeqz	$r12,$r13,$r12
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	2
	.align	3
	.globl	iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19 = .
	.cfi_startproc
	addi.d	$r13,$r4,-127
	addi.w	$r12,$r0,31			# 0x1f
	sltu	$r12,$r12,$r4
	sltui	$r13,$r13,1
	sltui	$r4,$r12,1
	maskeqz	$r12,$r13,$r12
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	2
	.align	3
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
	.align	3
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
	.align	3
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
	.align	3
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
	.align	3
	.globl	isspace
	.type	isspace, @function
isspace:
.LFB24 = .
	.cfi_startproc
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r13,$r4,-9
	sltui	$r13,$r13,5
	xor	$r4,$r4,$r14
	addi.w	$r12,$r0,1			# 0x1
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	2
	.align	3
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
	.align	3
	.globl	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26 = .
	.cfi_startproc
	addi.w	$r13,$r0,31			# 0x1f
	or	$r12,$r4,$r0
	bleu	$r4,$r13,.L130
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r13,$r14,.L133
	jr	$r1
	.align	5
.L130:
	addi.w	$r4,$r0,1			# 0x1
	jr	$r1
	.align	5
.L133:
	lu12i.w	$r14,-12288>>12			# 0xffffffffffffd000
	ori	$r14,$r14,4056
	addu16i.d	$r13,$r12,-1
	addi.w	$r13,$r13,7
	add.w	$r12,$r12,$r14
	sltu	$r12,$r4,$r12
	sltui	$r13,$r13,3
	maskeqz	$r13,$r13,$r12
	masknez	$r12,$r4,$r12
	or	$r4,$r13,$r12
	jr	$r1
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	2
	.align	3
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
	.align	3
	.globl	iswprint
	.type	iswprint, @function
iswprint:
.LFB28 = .
	.cfi_startproc
	addi.w	$r13,$r0,254			# 0xfe
	or	$r12,$r4,$r0
	bleu	$r4,$r13,.L142
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L137
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L137
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L137
	lu12i.w	$r15,61440>>12			# 0xf000
	ori	$r15,$r15,4094
	addu16i.d	$r4,$r12,-1
	and	$r12,$r12,$r15
	lu12i.w	$r14,1048576>>12			# 0x100000
	addu16i.d	$r12,$r12,-1
	ori	$r14,$r14,3
	addi.w	$r4,$r4,4
	addi.d	$r12,$r12,2
	sltu	$r4,$r14,$r4
	or	$r13,$r0,$r0
	sltu	$r12,$r0,$r12
	maskeqz	$r13,$r13,$r4
	masknez	$r4,$r12,$r4
	or	$r4,$r4,$r13
.L137:
	jr	$r1
	.align	5
.L142:
	addi.w	$r12,$r4,1
	andi	$r12,$r12,127
	addi.w	$r4,$r0,32			# 0x20
	sltu	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	2
	.align	3
	.globl	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29 = .
	.cfi_startproc
	ori	$r13,$r4,32
	addi.w	$r12,$r0,9			# 0x9
	addi.w	$r4,$r4,-48
	addi.w	$r13,$r13,-97
	sltu	$r12,$r12,$r4
	sltui	$r13,$r13,6
	addi.w	$r14,$r0,1			# 0x1
	masknez	$r14,$r14,$r12
	maskeqz	$r4,$r13,$r12
	or	$r4,$r4,$r14
	jr	$r1
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	2
	.align	3
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
	.align	3
	.globl	fdim
	.type	fdim, @function
fdim:
.LFB31 = .
	.cfi_startproc
	fcmp.cun.d	$fcc0,$f0,$f0
	fmov.d	$f2,$f0
	bcnez	$fcc0,.L150
	fcmp.cun.d	$fcc0,$f1,$f1
	fmov.d	$f0,$f1
	bcnez	$fcc0,.L147
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L154
	fsub.d	$f0,$f2,$f1
	jr	$r1
	.align	5
.L154:
	movgr2fr.d	$f0,$r0
.L147:
	jr	$r1
	.align	5
.L150:
	jr	$r1
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	2
	.align	3
	.globl	fdimf
	.type	fdimf, @function
fdimf:
.LFB32 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	fmov.s	$f2,$f0
	bcnez	$fcc0,.L158
	fcmp.cun.s	$fcc0,$f1,$f1
	fmov.s	$f0,$f1
	bcnez	$fcc0,.L155
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L162
	fsub.s	$f0,$f2,$f1
	jr	$r1
	.align	5
.L162:
	movgr2fr.w	$f0,$r0
.L155:
	jr	$r1
	.align	5
.L158:
	jr	$r1
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	2
	.align	3
	.globl	fmax
	.type	fmax, @function
fmax:
.LFB33 = .
	.cfi_startproc
	fcmp.cun.d	$fcc0,$f0,$f0
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f1,$r3,8
	bcnez	$fcc0,.L166
	fcmp.cun.d	$fcc0,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc0,.L163
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L165
	fst.d	$f1,$r3,0
	beqz	$r12,.L170
.L163:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L165:
	.cfi_restore_state
	fld.d	$f0,$r3,0
	fld.d	$f1,$r3,8
	fcmp.slt.d	$fcc0,$f0,$f1
	fmov.d	$f0,$f1
	fld.d	$f1,$r3,0
	fsel	$f0,$f1,$f0,$fcc0
	fst.d	$f0,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L166:
	.cfi_restore_state
	fld.d	$f0,$r3,8
.L170:
	fst.d	$f0,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	2
	.align	3
	.globl	fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f1,$r3,12
	bcnez	$fcc0,.L174
	fcmp.cun.s	$fcc0,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc0,.L171
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L173
	fst.s	$f1,$r3,8
	beqz	$r12,.L178
.L171:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L173:
	.cfi_restore_state
	fld.s	$f0,$r3,8
	fld.s	$f1,$r3,12
	fcmp.slt.s	$fcc0,$f0,$f1
	fmov.s	$f0,$f1
	fld.s	$f1,$r3,8
	fsel	$f0,$f1,$f0,$fcc0
	fst.s	$f0,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L174:
	.cfi_restore_state
	fld.s	$f0,$r3,12
.L178:
	fst.s	$f0,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	2
	.align	3
	.globl	fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	or	$r23,$r7,$r0
	or	$r24,$r6,$r0
	or	$r7,$r5,$r0
	or	$r6,$r4,$r0
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	st.d	$r1,$r3,40
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 1, -8
	or	$r26,$r4,$r0
	or	$r25,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L185
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L186
	srli.d	$r12,$r25,63
	srli.d	$r13,$r23,63
	bne	$r12,$r13,.L191
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L185
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L185:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L179:
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
	.align	5
.L191:
	.cfi_restore_state
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	maskeqz	$r24,$r24,$r12
	masknez	$r26,$r26,$r12
	maskeqz	$r23,$r23,$r12
	masknez	$r12,$r25,$r12
	or	$r4,$r24,$r26
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r5,$r23,$r12
	ld.d	$r23,$r3,32
	.cfi_restore 23
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L186:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L179
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	2
	.align	3
	.globl	fmin
	.type	fmin, @function
fmin:
.LFB36 = .
	.cfi_startproc
	fcmp.cun.d	$fcc0,$f0,$f0
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f1,$r3,8
	bcnez	$fcc0,.L195
	fcmp.cun.d	$fcc0,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc0,.L192
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L194
	bnez	$r12,.L192
	fst.d	$f1,$r3,0
.L192:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L194:
	.cfi_restore_state
	fld.d	$f0,$r3,0
	fld.d	$f1,$r3,8
	fcmp.slt.d	$fcc0,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc0
	fst.d	$f0,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L195:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	fst.d	$f0,$r3,0
	b	.L192
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	2
	.align	3
	.globl	fminf
	.type	fminf, @function
fminf:
.LFB37 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f1,$r3,12
	bcnez	$fcc0,.L202
	fcmp.cun.s	$fcc0,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc0,.L199
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L201
	bnez	$r12,.L199
	fst.s	$f1,$r3,8
.L199:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L201:
	.cfi_restore_state
	fld.s	$f0,$r3,8
	fld.s	$f1,$r3,12
	fcmp.slt.s	$fcc0,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc0
	fst.s	$f0,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L202:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	fst.s	$f0,$r3,8
	b	.L199
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	2
	.align	3
	.globl	fminl
	.type	fminl, @function
fminl:
.LFB38 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r25,$r7,$r0
	or	$r26,$r6,$r0
	or	$r7,$r5,$r0
	or	$r6,$r4,$r0
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r1,$r3,40
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 1, -8
	or	$r24,$r4,$r0
	or	$r23,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L212
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L213
	srli.d	$r12,$r23,63
	srli.d	$r13,$r25,63
	bne	$r12,$r13,.L218
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L213
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L213:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L206:
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
	.align	5
.L218:
	.cfi_restore_state
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	maskeqz	$r24,$r24,$r12
	masknez	$r6,$r26,$r12
	maskeqz	$r23,$r23,$r12
	masknez	$r7,$r25,$r12
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ld.d	$r25,$r3,16
	.cfi_restore 25
	or	$r4,$r24,$r6
	or	$r5,$r23,$r7
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L212:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L206
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	2
	.align	3
	.globl	l64a
	.type	l64a, @function
l64a:
.LFB39 = .
	.cfi_startproc
	slli.w	$r4,$r4,0
	la.local	$r12,.LANCHOR0
	beqz	$r4,.L220
	la.local	$r14,.LANCHOR1
	.align	3
.L221:
	andi	$r13,$r4,63
	ldx.bu	$r13,$r14,$r13
	bstrpick.d	$r4,$r4,31,6
	addi.d	$r12,$r12,1
	st.b	$r13,$r12,-1
	bnez	$r4,.L221
.L220:
	st.b	$r0,$r12,0
	la.local	$r4,.LANCHOR0
	jr	$r1
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.align	2
	.align	3
	.globl	srand
	.type	srand, @function
srand:
.LFB40 = .
	.cfi_startproc
	addi.w	$r4,$r4,-1
	pcalau12i	$r12,%pc_hi20(.LANCHOR0+8)
	bstrpick.d	$r4,$r4,31,0
	st.d	$r4,$r12,%pc_lo12(.LANCHOR0+8)
	jr	$r1
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	2
	.align	3
	.globl	rand
	.type	rand, @function
rand:
.LFB41 = .
	.cfi_startproc
	la.local	$r12,.LANCHOR0
	lu12i.w	$r13,1284861952>>12			# 0x4c957000
	ld.d	$r4,$r12,8
	ori	$r13,$r13,3885
	lu32i.d	$r13,0x1f42d00000000>>32
	lu52i.d	$r13,$r13,0x5850000000000000>>52
	mul.d	$r4,$r4,$r13
	addi.d	$r4,$r4,1
	st.d	$r4,$r12,8
	srli.d	$r4,$r4,33
	jr	$r1
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	2
	.align	3
	.globl	insque
	.type	insque, @function
insque:
.LFB42 = .
	.cfi_startproc
	beqz	$r5,.L233
	ldptr.d	$r12,$r5,0
	st.d	$r5,$r4,8
	stptr.d	$r12,$r4,0
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L227
	st.d	$r4,$r12,8
.L227:
	jr	$r1
	.align	5
.L233:
	st.d	$r0,$r4,8
	stptr.d	$r0,$r4,0
	jr	$r1
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	2
	.align	3
	.globl	remque
	.type	remque, @function
remque:
.LFB43 = .
	.cfi_startproc
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L235
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L235:
	ld.d	$r13,$r4,8
	beqz	$r13,.L234
	stptr.d	$r12,$r13,0
.L234:
	jr	$r1
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	2
	.align	3
	.globl	lsearch
	.type	lsearch, @function
lsearch:
.LFB44 = .
	.cfi_startproc
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r26,$r3,40
	.cfi_offset 26, -40
	ldptr.d	$r26,$r6,0
	st.d	$r25,$r3,48
	st.d	$r27,$r3,32
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	st.d	$r1,$r3,72
	st.d	$r28,$r3,24
	.cfi_offset 25, -32
	.cfi_offset 27, -48
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	.cfi_offset 1, -8
	.cfi_offset 28, -56
	or	$r29,$r6,$r0
	or	$r27,$r4,$r0
	or	$r30,$r5,$r0
	or	$r25,$r7,$r0
	beqz	$r26,.L244
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	stptr.d	$r31,$r3,0
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 31, -80
	or	$r23,$r5,$r0
	or	$r31,$r8,$r0
	or	$r24,$r0,$r0
	b	.L246
	.align	5
.L261:
	add.d	$r23,$r23,$r25
	beq	$r26,$r24,.L260
.L246:
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r31,0
	or	$r28,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L261
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
.L243:
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
	or	$r4,$r28,$r0
	ld.d	$r28,$r3,24
	.cfi_restore 28
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L260:
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
	.cfi_offset 31, -80
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
.L244:
	mul.d	$r28,$r25,$r26
	addi.d	$r26,$r26,1
	stptr.d	$r26,$r29,0
	add.d	$r28,$r30,$r28
	beqz	$r25,.L243
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	or	$r4,$r28,$r0
	bl	%plt(memmove)
	b	.L243
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	2
	.align	3
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45 = .
	.cfi_startproc
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r28,$r3,8
	.cfi_offset 28, -56
	ldptr.d	$r28,$r6,0
	st.d	$r1,$r3,56
	stptr.d	$r29,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 29, -64
	beqz	$r28,.L263
	st.d	$r23,$r3,48
	st.d	$r24,$r3,40
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	or	$r25,$r4,$r0
	or	$r27,$r7,$r0
	or	$r26,$r8,$r0
	or	$r23,$r5,$r0
	or	$r24,$r0,$r0
	b	.L265
	.align	5
.L276:
	add.d	$r23,$r23,$r27
	beq	$r28,$r24,.L275
.L265:
	or	$r5,$r23,$r0
	or	$r4,$r25,$r0
	jirl	$r1,$r26,0
	or	$r29,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L276
	ld.d	$r1,$r3,56
	.cfi_remember_state
	.cfi_restore 1
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
	or	$r4,$r29,$r0
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L275:
	.cfi_restore_state
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
.L263:
	ld.d	$r1,$r3,56
	.cfi_restore 1
	or	$r29,$r0,$r0
	ld.d	$r28,$r3,8
	.cfi_restore 28
	or	$r4,$r29,$r0
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	2
	.align	3
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
	.align	3
	.globl	atoi
	.type	atoi, @function
atoi:
.LFB47 = .
	.cfi_startproc
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r15,$r0,4			# 0x4
.L285:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L279
	bleu	$r12,$r15,.L279
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L280
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L296
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L286
	addi.w	$r18,$r0,1			# 0x1
.L283:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L287:
	ld.b	$r13,$r12,1
	alsl.w	$r4,$r4,$r4,2
	slli.w	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.w	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L287
	sub.w	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L286:
	jr	$r1
	.align	5
.L279:
	addi.d	$r4,$r4,1
	b	.L285
	.align	5
.L296:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L283
.L295:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L280:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r18,$r0,$r0
	bleu	$r14,$r15,.L283
	b	.L295
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	2
	.align	3
	.globl	atol
	.type	atol, @function
atol:
.LFB48 = .
	.cfi_startproc
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r15,$r0,4			# 0x4
.L304:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L298
	bleu	$r12,$r15,.L298
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L299
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L315
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L297
	addi.w	$r18,$r0,1			# 0x1
.L302:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L306:
	ld.b	$r13,$r12,1
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.d	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L306
	sub.d	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L297:
	jr	$r1
	.align	5
.L298:
	addi.d	$r4,$r4,1
	b	.L304
	.align	5
.L315:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L302
.L314:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L299:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r18,$r0,$r0
	bleu	$r14,$r15,.L302
	b	.L314
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	2
	.align	3
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB171 = .
	.cfi_startproc
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r15,$r0,4			# 0x4
.L321:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L317
	bleu	$r12,$r15,.L317
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L318
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L334
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	addi.w	$r18,$r0,1			# 0x1
	bgtu	$r14,$r15,.L333
.L322:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L325:
	ld.b	$r13,$r12,1
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.d	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L325
	sub.d	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L316:
	jr	$r1
	.align	5
.L317:
	addi.d	$r4,$r4,1
	b	.L321
	.align	5
.L334:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L322
.L333:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L318:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L316
	or	$r18,$r0,$r0
	b	.L322
	.cfi_endproc
.LFE171:
	.size	atoll, .-atoll
	.align	2
	.align	3
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50 = .
	.cfi_startproc
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r24,$r3,40
	.cfi_offset 1, -8
	.cfi_offset 24, -24
	beqz	$r6,.L336
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
	or	$r23,$r6,$r0
	or	$r28,$r4,$r0
	or	$r26,$r5,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	.align	3
.L339:
	srli.d	$r29,$r23,1
	mul.d	$r24,$r29,$r25
	or	$r4,$r28,$r0
	addi.d	$r23,$r23,-1
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r27,0
	blt	$r4,$r0,.L340
	beqz	$r4,.L349
	sub.d	$r23,$r23,$r29
	add.d	$r26,$r24,$r25
	bnez	$r23,.L339
.L350:
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
.L336:
	ld.d	$r1,$r3,56
	.cfi_restore 1
	or	$r24,$r0,$r0
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,40
	.cfi_restore 24
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L340:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r23,$r29,$r0
	bnez	$r23,.L339
	b	.L350
	.align	5
.L349:
	ld.d	$r1,$r3,56
	.cfi_restore 1
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
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,40
	.cfi_restore 24
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	2
	.align	3
	.globl	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51 = .
	.cfi_startproc
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r23,$r3,64
	st.d	$r1,$r3,72
	st.d	$r24,$r3,56
	.cfi_offset 23, -16
	.cfi_offset 1, -8
	.cfi_offset 24, -24
	slli.w	$r23,$r6,0
	beqz	$r23,.L355
	st.d	$r25,$r3,48
	st.d	$r26,$r3,40
	st.d	$r27,$r3,32
	st.d	$r28,$r3,24
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	or	$r29,$r4,$r0
	or	$r26,$r5,$r0
	or	$r25,$r7,$r0
	or	$r28,$r8,$r0
	or	$r27,$r9,$r0
	.align	3
.L352:
	srai.d	$r30,$r23,1
	mul.d	$r24,$r30,$r25
	or	$r6,$r27,$r0
	or	$r4,$r29,$r0
	addi.w	$r23,$r23,-1
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L364
	ble	$r4,$r0,.L356
	srai.d	$r23,$r23,1
	add.d	$r26,$r24,$r25
	bnez	$r23,.L352
.L365:
	ld.d	$r25,$r3,48
	.cfi_restore 25
	ld.d	$r26,$r3,40
	.cfi_restore 26
	ld.d	$r27,$r3,32
	.cfi_restore 27
	ld.d	$r28,$r3,24
	.cfi_restore 28
	ld.d	$r29,$r3,16
	.cfi_restore 29
	ld.d	$r30,$r3,8
	.cfi_restore 30
.L355:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	or	$r24,$r0,$r0
	ld.d	$r23,$r3,64
	.cfi_restore 23
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,56
	.cfi_restore 24
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L356:
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
	or	$r23,$r30,$r0
	bnez	$r23,.L352
	b	.L365
	.align	5
.L364:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r25,$r3,48
	.cfi_restore 25
	ld.d	$r26,$r3,40
	.cfi_restore 26
	ld.d	$r27,$r3,32
	.cfi_restore 27
	ld.d	$r28,$r3,24
	.cfi_restore 28
	ld.d	$r29,$r3,16
	.cfi_restore 29
	ld.d	$r30,$r3,8
	.cfi_restore 30
	ld.d	$r23,$r3,64
	.cfi_restore 23
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,56
	.cfi_restore 24
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	2
	.align	3
	.globl	div
	.type	div, @function
div:
.LFB52 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	div.w	$r13,$r12,$r5
	mod.w	$r12,$r12,$r5
	bstrins.d	$r4,$r13,31,0
	bstrins.d	$r4,$r12,63,32
	jr	$r1
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	2
	.align	3
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
	.align	3
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
	.align	3
	.globl	labs
	.type	labs, @function
labs:
.LFB167 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE167:
	.size	labs, .-labs
	.align	2
	.align	3
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
	.align	3
	.globl	llabs
	.type	llabs, @function
llabs:
.LFB169 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE169:
	.size	llabs, .-llabs
	.align	2
	.align	3
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
	.align	3
	.globl	wcschr
	.type	wcschr, @function
wcschr:
.LFB59 = .
	.cfi_startproc
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L377
	.align	3
.L374:
	beq	$r5,$r12,.L379
	ldptr.w	$r12,$r4,4
	addi.d	$r4,$r4,4
	bnez	$r12,.L374
.L377:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L379:
	jr	$r1
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	2
	.align	3
	.globl	wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60 = .
	.cfi_startproc
	ldptr.w	$r14,$r5,0
	ldptr.w	$r13,$r4,0
	addi.w	$r12,$r0,4			# 0x4
	addi.d	$r5,$r5,-4
	bne	$r13,$r14,.L382
	.align	3
.L381:
	beqz	$r13,.L382
	ldx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r14,$r5,$r12
	beq	$r13,$r14,.L381
.L382:
	slt	$r4,$r13,$r14
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	slt	$r13,$r14,$r13
	masknez	$r13,$r13,$r4
	maskeqz	$r4,$r12,$r4
	or	$r4,$r13,$r4
	jr	$r1
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	2
	.align	3
	.globl	wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61 = .
	.cfi_startproc
	or	$r12,$r0,$r0
	.align	3
.L389:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bnez	$r13,.L389
	jr	$r1
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	2
	.align	3
	.globl	wcslen
	.type	wcslen, @function
wcslen:
.LFB62 = .
	.cfi_startproc
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L394
	or	$r12,$r4,$r0
	.align	3
.L393:
	ldptr.w	$r13,$r12,4
	addi.d	$r12,$r12,4
	bnez	$r13,.L393
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
	.align	5
.L394:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.align	3
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63 = .
	.cfi_startproc
	beqz	$r6,.L402
	.align	3
.L407:
	ldptr.w	$r12,$r5,0
	ldptr.w	$r13,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r13,.L399
	beqz	$r12,.L399
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L407
.L402:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L399:
	ldptr.w	$r12,$r4,0
	ldptr.w	$r14,$r5,0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	slt	$r13,$r12,$r14
	slt	$r4,$r14,$r12
	masknez	$r4,$r4,$r13
	maskeqz	$r13,$r15,$r13
	or	$r4,$r4,$r13
	jr	$r1
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	2
	.align	3
	.globl	wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64 = .
	.cfi_startproc
	beqz	$r6,.L412
	.align	3
.L417:
	ldptr.w	$r12,$r4,0
	addi.d	$r6,$r6,-1
	beq	$r12,$r5,.L416
	addi.d	$r4,$r4,4
	bnez	$r6,.L417
.L412:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L416:
	jr	$r1
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	2
	.align	3
	.globl	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65 = .
	.cfi_startproc
	beqz	$r6,.L424
	.align	3
.L431:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L430
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L431
.L424:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L430:
	ldptr.w	$r12,$r4,0
	ldptr.w	$r14,$r5,0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	slt	$r13,$r12,$r14
	slt	$r4,$r14,$r12
	masknez	$r4,$r4,$r13
	maskeqz	$r13,$r15,$r13
	or	$r4,$r4,$r13
	jr	$r1
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	2
	.align	3
	.globl	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	stptr.d	$r23,$r3,0
	st.d	$r1,$r3,8
	.cfi_offset 23, -16
	.cfi_offset 1, -8
	or	$r23,$r4,$r0
	beqz	$r6,.L433
	slli.d	$r6,$r6,2
	bl	%plt(memcpy)
.L433:
	ld.d	$r1,$r3,8
	.cfi_restore 1
	or	$r4,$r23,$r0
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	2
	.align	3
	.globl	wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67 = .
	.cfi_startproc
	beq	$r4,$r5,.L451
	slli.d	$r12,$r6,2
	sub.d	$r13,$r4,$r5
	addi.d	$r14,$r6,-1
	bgeu	$r13,$r12,.L458
	beqz	$r6,.L451
	addi.w	$r13,$r0,15			# 0xf
	bleu	$r14,$r13,.L443
	addi.d	$r12,$r12,-104
	add.d	$r13,$r5,$r12
	addi.w	$r16,$r0,15			# 0xf
	add.d	$r12,$r4,$r12
	.align	3
.L444:
	ldptr.w	$r15,$r13,100
	preld	8,$r12,0
	addi.d	$r12,$r12,-64
	preld	0,$r13,0
	addi.d	$r13,$r13,-64
	st.w	$r15,$r12,164
	ldptr.w	$r15,$r13,160
	addi.d	$r14,$r14,-16
	st.w	$r15,$r12,160
	ldptr.w	$r15,$r13,156
	st.w	$r15,$r12,156
	ldptr.w	$r15,$r13,152
	st.w	$r15,$r12,152
	ldptr.w	$r15,$r13,148
	st.w	$r15,$r12,148
	ldptr.w	$r15,$r13,144
	st.w	$r15,$r12,144
	ldptr.w	$r15,$r13,140
	st.w	$r15,$r12,140
	ldptr.w	$r15,$r13,136
	st.w	$r15,$r12,136
	ldptr.w	$r15,$r13,132
	st.w	$r15,$r12,132
	ldptr.w	$r15,$r13,128
	st.w	$r15,$r12,128
	ldptr.w	$r15,$r13,124
	st.w	$r15,$r12,124
	ldptr.w	$r15,$r13,120
	st.w	$r15,$r12,120
	ldptr.w	$r15,$r13,116
	st.w	$r15,$r12,116
	ldptr.w	$r15,$r13,112
	st.w	$r15,$r12,112
	ldptr.w	$r15,$r13,108
	st.w	$r15,$r12,108
	ldptr.w	$r15,$r13,104
	st.w	$r15,$r12,104
	bgtu	$r14,$r16,.L444
.L443:
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	.align	3
.L445:
	ldx.w	$r12,$r5,$r14
	stx.w	$r12,$r4,$r14
	addi.d	$r14,$r14,-4
	bne	$r14,$r13,.L445
	jr	$r1
	.align	5
.L458:
	beqz	$r6,.L459
	addi.w	$r13,$r0,15			# 0xf
	or	$r12,$r4,$r0
	bleu	$r14,$r13,.L446
	addi.w	$r15,$r0,15			# 0xf
	.align	3
.L447:
	ldptr.w	$r13,$r5,0
	preld	8,$r12,116
	addi.d	$r12,$r12,64
	preld	0,$r5,116
	addi.d	$r5,$r5,64
	st.w	$r13,$r12,-64
	ldptr.w	$r13,$r5,-60
	addi.d	$r14,$r14,-16
	st.w	$r13,$r12,-60
	ldptr.w	$r13,$r5,-56
	st.w	$r13,$r12,-56
	ldptr.w	$r13,$r5,-52
	st.w	$r13,$r12,-52
	ldptr.w	$r13,$r5,-48
	st.w	$r13,$r12,-48
	ldptr.w	$r13,$r5,-44
	st.w	$r13,$r12,-44
	ldptr.w	$r13,$r5,-40
	st.w	$r13,$r12,-40
	ldptr.w	$r13,$r5,-36
	st.w	$r13,$r12,-36
	ldptr.w	$r13,$r5,-32
	st.w	$r13,$r12,-32
	ldptr.w	$r13,$r5,-28
	st.w	$r13,$r12,-28
	ldptr.w	$r13,$r5,-24
	st.w	$r13,$r12,-24
	ldptr.w	$r13,$r5,-20
	st.w	$r13,$r12,-20
	ldptr.w	$r13,$r5,-16
	st.w	$r13,$r12,-16
	ldptr.w	$r13,$r5,-12
	st.w	$r13,$r12,-12
	ldptr.w	$r13,$r5,-8
	st.w	$r13,$r12,-8
	ldptr.w	$r13,$r5,-4
	st.w	$r13,$r12,-4
	bgtu	$r14,$r15,.L447
.L446:
	addi.d	$r14,$r14,1
	or	$r13,$r0,$r0
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	.align	3
.L448:
	ldx.w	$r15,$r5,$r13
	stx.w	$r15,$r12,$r13
	addi.d	$r13,$r13,4
	bne	$r14,$r13,.L448
.L451:
	jr	$r1
	.align	5
.L459:
	jr	$r1
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	2
	.align	3
	.globl	wmemset
	.type	wmemset, @function
wmemset:
.LFB68 = .
	.cfi_startproc
	addi.d	$r13,$r6,-1
	beqz	$r6,.L461
	addi.w	$r14,$r0,15			# 0xf
	or	$r12,$r4,$r0
	bleu	$r13,$r14,.L462
	.align	3
.L463:
	stptr.w	$r5,$r12,0
	st.w	$r5,$r12,4
	st.w	$r5,$r12,8
	st.w	$r5,$r12,12
	st.w	$r5,$r12,16
	st.w	$r5,$r12,20
	st.w	$r5,$r12,24
	st.w	$r5,$r12,28
	st.w	$r5,$r12,32
	st.w	$r5,$r12,36
	st.w	$r5,$r12,40
	st.w	$r5,$r12,44
	st.w	$r5,$r12,48
	st.w	$r5,$r12,52
	st.w	$r5,$r12,56
	st.w	$r5,$r12,60
	addi.d	$r13,$r13,-16
	preld	8,$r12,160
	addi.d	$r12,$r12,64
	bgtu	$r13,$r14,.L463
.L462:
	addi.d	$r13,$r13,1
	bstrpick.d	$r13,$r13,31,0
	alsl.d	$r13,$r13,$r0,2
	add.d	$r13,$r12,$r13
	.align	3
.L464:
	addi.d	$r12,$r12,4
	st.w	$r5,$r12,-4
	bne	$r12,$r13,.L464
.L461:
	jr	$r1
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	2
	.align	3
	.globl	bcopy
	.type	bcopy, @function
bcopy:
.LFB69 = .
	.cfi_startproc
	bgeu	$r4,$r5,.L472
	beqz	$r6,.L471
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
	.align	3
.L474:
	ldx.b	$r12,$r4,$r6
	stx.b	$r12,$r5,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L474
	jr	$r1
	.align	5
.L472:
	beq	$r4,$r5,.L471
	beqz	$r6,.L471
	or	$r12,$r0,$r0
	.align	3
.L475:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L475
.L471:
	jr	$r1
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	2
	.align	3
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
	.align	3
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
	.align	3
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
	.align	3
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
	.align	3
	.globl	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB173 = .
	.cfi_startproc
	sub.w	$r5,$r0,$r5
	rotr.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.align	2
	.align	3
	.globl	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175 = .
	.cfi_startproc
	rotr.d	$r4,$r4,$r5
	jr	$r1
	.cfi_endproc
.LFE175:
	.size	rotr_sz, .-rotr_sz
	.align	2
	.align	3
	.globl	rotl16
	.type	rotl16, @function
rotl16:
.LFB76 = .
	.cfi_startproc
	andi	$r5,$r5,15
	sub.d	$r12,$r0,$r5
	andi	$r12,$r12,15
	sll.w	$r5,$r4,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r5,$r4
	bstrpick.w	$r4,$r4,15,0
	jr	$r1
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	2
	.align	3
	.globl	rotr16
	.type	rotr16, @function
rotr16:
.LFB77 = .
	.cfi_startproc
	andi	$r5,$r5,15
	sub.d	$r12,$r0,$r5
	andi	$r12,$r12,15
	srl.w	$r5,$r4,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r5,$r4
	bstrpick.w	$r4,$r4,15,0
	jr	$r1
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	2
	.align	3
	.globl	rotl8
	.type	rotl8, @function
rotl8:
.LFB78 = .
	.cfi_startproc
	andi	$r5,$r5,7
	sub.d	$r12,$r0,$r5
	andi	$r12,$r12,7
	sll.w	$r5,$r4,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r5,$r4
	bstrpick.w	$r4,$r4,7,0
	jr	$r1
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	2
	.align	3
	.globl	rotr8
	.type	rotr8, @function
rotr8:
.LFB79 = .
	.cfi_startproc
	andi	$r5,$r5,7
	sub.d	$r12,$r0,$r5
	andi	$r12,$r12,7
	srl.w	$r5,$r4,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r5,$r4
	bstrpick.w	$r4,$r4,7,0
	jr	$r1
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	2
	.align	3
	.globl	bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80 = .
	.cfi_startproc
	revb.2h	$r4,$r4
	bstrpick.w	$r4,$r4,15,0
	jr	$r1
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	2
	.align	3
	.globl	bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81 = .
	.cfi_startproc
	revb.2h	$r4,$r4
	rotri.w	$r4,$r4,16
	jr	$r1
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	2
	.align	3
	.globl	bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82 = .
	.cfi_startproc
	revb.4h	$r4,$r4
	revh.d	$r4,$r4
	jr	$r1
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	2
	.align	3
	.globl	ffs
	.type	ffs, @function
ffs:
.LFB83 = .
	.cfi_startproc
	or	$r13,$r0,$r0
	addi.w	$r14,$r0,32			# 0x20
	b	.L500
	.align	5
.L498:
	beq	$r13,$r14,.L502
.L500:
	srl.w	$r12,$r4,$r13
	andi	$r12,$r12,1
	addi.w	$r13,$r13,1
	beqz	$r12,.L498
	or	$r4,$r13,$r0
	jr	$r1
	.align	5
.L502:
	or	$r4,$r0,$r0
	jr	$r1
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	2
	.align	3
	.globl	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	beqz	$r4,.L506
	andi	$r4,$r4,1
	bnez	$r4,.L504
	addi.w	$r4,$r0,1			# 0x1
	.align	3
.L505:
	srai.d	$r12,$r12,1
	andi	$r13,$r12,1
	addi.w	$r4,$r4,1
	beqz	$r13,.L505
	jr	$r1
	.align	5
.L506:
	or	$r4,$r0,$r0
.L504:
	jr	$r1
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.align	3
	.globl	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85 = .
	.cfi_startproc
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	addi.w	$r4,$r0,1			# 0x1
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L510
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L510:
	jr	$r1
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	2
	.align	3
	.globl	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86 = .
	.cfi_startproc
	pcalau12i	$r12,%pc_hi20(.LC4)
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	addi.w	$r4,$r0,1			# 0x1
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L513
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L513:
	jr	$r1
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.align	3
	.globl	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87 = .
	.cfi_startproc
	la.local	$r12,.LC8
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r23,$r3,16
	st.d	$r24,$r3,8
	st.d	$r1,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 1, -8
	or	$r24,$r4,$r0
	or	$r23,$r5,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L518
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__gttf2)
	ld.d	$r1,$r3,24
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
	slt	$r4,$r0,$r4
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L518:
	.cfi_restore_state
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
	addi.w	$r4,$r0,1			# 0x1
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.align	3
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88 = .
	.cfi_startproc
	movgr2fr.d	$f0,$r5
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	ffint.d.w	$f0,$f0
	stptr.d	$r23,$r3,0
	st.d	$r1,$r3,8
	.cfi_offset 23, -16
	.cfi_offset 1, -8
	or	$r23,$r4,$r0
	bl	%plt(__extenddftf2)
	ld.d	$r1,$r3,8
	.cfi_restore 1
	stptr.d	$r4,$r23,0
	st.d	$r5,$r23,8
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.align	3
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L523
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L523
	pcalau12i	$r12,%pc_hi20(.LC10)
	fld.s	$f1,$r12,%pc_lo12(.LC10)
	bge	$r4,$r0,.L524
	pcalau12i	$r12,%pc_hi20(.LC11)
	fld.s	$f1,$r12,%pc_lo12(.LC11)
.L524:
	andi	$r12,$r4,1
	beqz	$r12,.L525
	.align	3
.L526:
	fmul.s	$f0,$f0,$f1
.L525:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L523
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L526
.L535:
	srai.d	$r4,$r12,1
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L526
	b	.L535
	.align	5
.L523:
	jr	$r1
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	2
	.align	3
	.globl	ldexp
	.type	ldexp, @function
ldexp:
.LFB90 = .
	.cfi_startproc
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L537
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L537
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	bge	$r4,$r0,.L538
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
.L538:
	andi	$r12,$r4,1
	beqz	$r12,.L539
	.align	3
.L540:
	fmul.d	$f0,$f0,$f1
.L539:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L537
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L540
.L549:
	srai.d	$r4,$r12,1
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L540
	b	.L549
	.align	5
.L537:
	jr	$r1
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	2
	.align	3
	.globl	ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r23,$r3,32
	or	$r7,$r5,$r0
	.cfi_offset 23, -16
	or	$r23,$r6,$r0
	or	$r6,$r4,$r0
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r1,$r3,40
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 1, -8
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L551
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__addtf3)
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L551
	blt	$r23,$r0,.L566
	la.local	$r12,.LC14
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
.L553:
	andi	$r12,$r23,1
	beqz	$r12,.L554
	.align	3
.L555:
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	bl	%plt(__multf3)
	ld.d	$r6,$r3,8
	ldptr.d	$r7,$r3,0
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
.L554:
	srli.w	$r12,$r23,31
	add.w	$r23,$r12,$r23
	srai.d	$r23,$r23,1
	beqz	$r23,.L551
.L556:
	or	$r4,$r6,$r0
	or	$r5,$r7,$r0
	bl	%plt(__multf3)
	srli.w	$r12,$r23,31
	andi	$r13,$r23,1
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	add.w	$r12,$r12,$r23
	bnez	$r13,.L555
	srai.d	$r23,$r12,1
	b	.L556
	.align	5
.L551:
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L566:
	.cfi_restore_state
	la.local	$r12,.LC15
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L553
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	2
	.align	3
	.globl	memxor
	.type	memxor, @function
memxor:
.LFB92 = .
	.cfi_startproc
	beqz	$r6,.L568
	or	$r12,$r0,$r0
	.align	3
.L569:
	ldx.bu	$r13,$r4,$r12
	ldx.bu	$r14,$r5,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L569
.L568:
	jr	$r1
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	2
	.align	3
	.globl	strncat
	.type	strncat, @function
strncat:
.LFB93 = .
	.cfi_startproc
	ld.bu	$r13,$r4,0
	or	$r12,$r4,$r0
	beqz	$r13,.L579
	.align	3
.L576:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L576
	.align	3
.L579:
	beqz	$r6,.L578
	ld.b	$r13,$r5,0
	addi.d	$r12,$r12,1
	addi.d	$r6,$r6,-1
	st.b	$r13,$r12,-1
	addi.d	$r5,$r5,1
	bnez	$r13,.L579
	jr	$r1
	.align	5
.L578:
	st.b	$r0,$r12,0
	jr	$r1
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	2
	.align	3
	.globl	strnlen
	.type	strnlen, @function
strnlen:
.LFB94 = .
	.cfi_startproc
	or	$r12,$r0,$r0
	beqz	$r5,.L588
.L589:
	ldx.bu	$r13,$r4,$r12
	bnez	$r13,.L591
.L588:
	or	$r4,$r12,$r0
	jr	$r1
	.align	5
.L591:
	addi.d	$r12,$r12,1
	bne	$r5,$r12,.L589
	b	.L588
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	2
	.align	3
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95 = .
	.cfi_startproc
	ld.b	$r14,$r4,0
	beqz	$r14,.L600
.L596:
	or	$r12,$r5,$r0
	b	.L599
	.align	5
.L598:
	beq	$r13,$r14,.L597
.L599:
	ld.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bnez	$r13,.L598
	ld.b	$r14,$r4,1
	addi.d	$r4,$r4,1
	bnez	$r14,.L596
.L600:
	or	$r4,$r0,$r0
.L597:
	jr	$r1
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	2
	.align	3
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB96 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	.align	3
.L604:
	ld.b	$r13,$r12,0
	xor	$r14,$r5,$r13
	masknez	$r15,$r12,$r14
	maskeqz	$r4,$r4,$r14
	or	$r4,$r4,$r15
	addi.d	$r12,$r12,1
	bnez	$r13,.L604
	jr	$r1
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	2
	.align	3
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB97 = .
	.cfi_startproc
	ld.b	$r17,$r5,0
	or	$r13,$r4,$r0
	beqz	$r17,.L617
	or	$r12,$r5,$r0
	.align	3
.L608:
	ld.bu	$r14,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r14,.L608
	sub.d	$r19,$r12,$r5
	or	$r4,$r13,$r0
	bstrpick.w	$r20,$r17,7,0
	addi.d	$r19,$r19,-1
	bne	$r12,$r5,.L614
	jr	$r1
	.align	5
.L628:
	addi.d	$r13,$r13,1
	beqz	$r12,.L627
.L614:
	ld.b	$r12,$r13,0
	bne	$r12,$r17,.L628
	or	$r15,$r20,$r0
	add.d	$r18,$r13,$r19
	or	$r14,$r5,$r0
	or	$r12,$r13,$r0
	b	.L610
	.align	5
.L629:
	beq	$r12,$r18,.L611
	addi.d	$r12,$r12,1
	bne	$r16,$r15,.L611
	ld.bu	$r15,$r12,0
	addi.d	$r14,$r14,1
	beqz	$r15,.L611
.L610:
	ld.bu	$r16,$r14,0
	bnez	$r16,.L629
.L611:
	ld.bu	$r12,$r14,0
	beq	$r12,$r15,.L617
	addi.d	$r13,$r13,1
	b	.L614
	.align	5
.L627:
	or	$r4,$r0,$r0
	jr	$r1
.L617:
	or	$r4,$r13,$r0
.L606:
	jr	$r1
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.align	3
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98 = .
	.cfi_startproc
	movgr2fr.d	$f2,$r0
	fcmp.slt.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L640
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L634
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L633
.L634:
	jr	$r1
	.align	5
.L640:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L634
.L633:
	fneg.d	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	2
	.align	3
	.globl	memmem
	.type	memmem, @function
memmem:
.LFB99 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	beqz	$r7,.L641
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L641
	sub.d	$r5,$r5,$r7
	add.d	$r16,$r13,$r5
	bgtu	$r13,$r16,.L641
	ld.b	$r17,$r6,0
	addi.w	$r18,$r0,1			# 0x1
	.align	3
.L646:
	ld.b	$r12,$r13,0
	or	$r4,$r13,$r0
	addi.d	$r13,$r13,1
	beq	$r12,$r17,.L652
.L643:
	bgeu	$r16,$r13,.L646
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L652:
	beq	$r7,$r18,.L653
	addi.w	$r12,$r0,1			# 0x1
	b	.L644
	.align	5
.L645:
	beq	$r7,$r12,.L654
.L644:
	ldx.bu	$r15,$r4,$r12
	ldx.bu	$r14,$r6,$r12
	addi.d	$r12,$r12,1
	beq	$r15,$r14,.L645
	b	.L643
	.align	5
.L641:
	jr	$r1
	.align	5
.L654:
	jr	$r1
.L653:
	jr	$r1
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	2
	.align	3
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r23,$r3,16
	st.d	$r24,$r3,8
	st.d	$r1,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 1, -8
	or	$r23,$r6,$r0
	or	$r24,$r4,$r0
	beqz	$r6,.L656
	bl	%plt(memmove)
.L656:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	add.d	$r4,$r24,$r23
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	2
	.align	3
	.globl	frexp
	.type	frexp, @function
frexp:
.LFB101 = .
	.cfi_startproc
	movgr2fr.d	$f3,$r0
	fcmp.slt.d	$fcc0,$f0,$f3
	bcnez	$fcc0,.L684
	pcalau12i	$r12,%pc_hi20(.LC18)
	fld.d	$f2,$r12,%pc_lo12(.LC18)
	or	$r14,$r0,$r0
	fcmp.sge.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L685
.L664:
	pcalau12i	$r13,%pc_hi20(.LC13)
	fld.d	$f1,$r13,%pc_lo12(.LC13)
	or	$r12,$r0,$r0
	.align	3
.L670:
	fmul.d	$f0,$f0,$f1
	addi.w	$r12,$r12,1
	fcmp.sge.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L670
	stptr.w	$r12,$r4,0
	beqz	$r14,.L661
.L687:
	fneg.d	$f0,$f0
.L661:
	jr	$r1
	.align	5
.L685:
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L667
	fcmp.cune.d	$fcc0,$f0,$f3
	bcnez	$fcc0,.L676
.L667:
	stptr.w	$r0,$r4,0
	jr	$r1
	.align	5
.L684:
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f1,$r12,%pc_lo12(.LC16)
	fneg.d	$f2,$f0
	fcmp.sle.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L686
	pcalau12i	$r12,%pc_hi20(.LC18)
	fmov.d	$f0,$f2
	addi.w	$r14,$r0,1			# 0x1
	fld.d	$f2,$r12,%pc_lo12(.LC18)
	b	.L664
	.align	5
.L686:
	pcalau12i	$r12,%pc_hi20(.LC17)
	fld.d	$f1,$r12,%pc_lo12(.LC17)
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L667
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	addi.w	$r14,$r0,1			# 0x1
.L665:
	fmov.d	$f0,$f2
	or	$r12,$r0,$r0
	.align	3
.L672:
	fadd.d	$f0,$f0,$f0
	addi.w	$r12,$r12,-1
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L672
	stptr.w	$r12,$r4,0
	bnez	$r14,.L687
	jr	$r1
.L676:
	fmov.d	$f2,$f0
	b	.L665
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	2
	.align	3
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r13,.L691
	.align	3
.L690:
	andi	$r12,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r12,$r5
	srli.d	$r13,$r13,1
	add.d	$r4,$r4,$r12
	slli.d	$r5,$r5,1
	bnez	$r13,.L690
	jr	$r1
	.align	5
.L691:
	jr	$r1
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	2
	.align	3
	.globl	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103 = .
	.cfi_startproc
	addi.w	$r13,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bltu	$r5,$r4,.L694
	b	.L695
	.align	5
.L698:
	slli.w	$r5,$r15,0
	slli.w	$r12,$r14,0
	bleu	$r4,$r5,.L696
	beqz	$r13,.L697
.L694:
	slli.w	$r15,$r5,1
	slli.w	$r14,$r12,1
	addi.w	$r13,$r13,-1
	bge	$r5,$r0,.L698
.L695:
	or	$r13,$r0,$r0
	.align	3
.L700:
	or	$r14,$r12,$r13
	bstrpick.d	$r12,$r12,31,1
	bltu	$r4,$r5,.L699
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r14,0
.L699:
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L700
.L697:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L696:
	bnez	$r12,.L695
	or	$r13,$r0,$r0
	b	.L697
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.align	3
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104 = .
	.cfi_startproc
	srai.w	$r13,$r4,7
	ext.w.b	$r13,$r13
	xor	$r12,$r4,$r13
	or	$r4,$r12,$r0
	slli.w	$r12,$r12,8
	clz.w	$r12,$r12
	addi.w	$r12,$r12,-1
	addi.w	$r14,$r0,7			# 0x7
	masknez	$r14,$r14,$r4
	maskeqz	$r4,$r12,$r4
	or	$r4,$r4,$r14
	jr	$r1
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.align	3
	.globl	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105 = .
	.cfi_startproc
	srai.d	$r12,$r4,63
	xor	$r12,$r12,$r4
	clz.d	$r14,$r12
	addi.w	$r13,$r0,63			# 0x3f
	masknez	$r4,$r13,$r12
	addi.w	$r13,$r14,-1
	maskeqz	$r12,$r13,$r12
	or	$r4,$r12,$r4
	jr	$r1
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.align	3
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r13,.L719
	.align	3
.L718:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L718
	jr	$r1
	.align	5
.L719:
	jr	$r1
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	2
	.align	3
	.globl	__cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107 = .
	.cfi_startproc
	addi.w	$r12,$r0,-8			# 0xfffffffffffffff8
	srli.w	$r19,$r6,3
	bstrpick.d	$r20,$r6,31,3
	and	$r14,$r6,$r12
	bltu	$r4,$r5,.L725
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L739
.L725:
	beqz	$r20,.L724
	addi.w	$r12,$r0,8			# 0x8
	or	$r15,$r0,$r0
	bleu	$r20,$r12,.L728
	addi.w	$r15,$r0,-8			# 0xfffffffffffffff8
	addi.w	$r19,$r19,-9
	and	$r19,$r19,$r15
	addi.d	$r12,$r5,200
	or	$r13,$r4,$r0
	or	$r16,$r0,$r0
	addi.w	$r15,$r19,8
	.align	3
.L729:
	ld.d	$r18,$r12,-200
	addi.d	$r13,$r13,64
	preld	0,$r12,0
	addi.d	$r12,$r12,64
	st.d	$r18,$r13,-64
	ld.d	$r18,$r12,-256
	or	$r17,$r16,$r0
	addi.w	$r16,$r16,8
	st.d	$r18,$r13,-56
	ld.d	$r18,$r12,-248
	st.d	$r18,$r13,-48
	ld.d	$r18,$r12,-240
	st.d	$r18,$r13,-40
	ld.d	$r18,$r12,-232
	st.d	$r18,$r13,-32
	ld.d	$r18,$r12,-224
	st.d	$r18,$r13,-24
	ld.d	$r18,$r12,-216
	st.d	$r18,$r13,-16
	ld.d	$r18,$r12,-208
	st.d	$r18,$r13,-8
	bne	$r17,$r19,.L729
.L728:
	bstrpick.d	$r12,$r15,31,0
	alsl.d	$r12,$r12,$r0,3
	.align	3
.L730:
	ldx.d	$r13,$r5,$r12
	addi.w	$r15,$r15,1
	stx.d	$r13,$r4,$r12
	addi.d	$r12,$r12,8
	bltu	$r15,$r20,.L730
.L724:
	bleu	$r6,$r14,.L721
	bstrpick.d	$r12,$r14,31,0
	.align	3
.L731:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L731
	jr	$r1
	.align	5
.L739:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L740
	.align	3
.L732:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L732
.L721:
	jr	$r1
.L740:
	jr	$r1
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	2
	.align	3
	.globl	__cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108 = .
	.cfi_startproc
	srli.w	$r14,$r6,1
	bstrpick.d	$r13,$r6,31,1
	bltu	$r4,$r5,.L745
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L758
.L745:
	bstrpick.d	$r14,$r14,31,0
	or	$r12,$r0,$r0
	slli.d	$r14,$r14,1
	beqz	$r13,.L744
	.align	3
.L748:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r14,$r12,.L748
.L744:
	andi	$r12,$r6,1
	beqz	$r12,.L741
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
	.align	5
.L758:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L759
	.align	3
.L750:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L750
.L741:
	jr	$r1
.L759:
	jr	$r1
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	2
	.align	3
	.globl	__cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109 = .
	.cfi_startproc
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	srli.w	$r20,$r6,2
	bstrpick.d	$r19,$r6,31,2
	and	$r14,$r6,$r12
	bltu	$r4,$r5,.L764
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L778
.L764:
	beqz	$r19,.L763
	addi.w	$r12,$r0,16			# 0x10
	or	$r15,$r0,$r0
	bleu	$r19,$r12,.L767
	addi.w	$r15,$r0,-16			# 0xfffffffffffffff0
	addi.w	$r20,$r20,-17
	and	$r20,$r20,$r15
	addi.d	$r13,$r5,100
	addi.d	$r12,$r4,100
	or	$r16,$r0,$r0
	addi.w	$r15,$r20,16
	.align	3
.L768:
	ldptr.w	$r18,$r13,-100
	preld	8,$r12,0
	addi.d	$r12,$r12,64
	preld	0,$r13,0
	addi.d	$r13,$r13,64
	st.w	$r18,$r12,-164
	ldptr.w	$r18,$r13,-160
	or	$r17,$r16,$r0
	addi.w	$r16,$r16,16
	st.w	$r18,$r12,-160
	ldptr.w	$r18,$r13,-156
	st.w	$r18,$r12,-156
	ldptr.w	$r18,$r13,-152
	st.w	$r18,$r12,-152
	ldptr.w	$r18,$r13,-148
	st.w	$r18,$r12,-148
	ldptr.w	$r18,$r13,-144
	st.w	$r18,$r12,-144
	ldptr.w	$r18,$r13,-140
	st.w	$r18,$r12,-140
	ldptr.w	$r18,$r13,-136
	st.w	$r18,$r12,-136
	ldptr.w	$r18,$r13,-132
	st.w	$r18,$r12,-132
	ldptr.w	$r18,$r13,-128
	st.w	$r18,$r12,-128
	ldptr.w	$r18,$r13,-124
	st.w	$r18,$r12,-124
	ldptr.w	$r18,$r13,-120
	st.w	$r18,$r12,-120
	ldptr.w	$r18,$r13,-116
	st.w	$r18,$r12,-116
	ldptr.w	$r18,$r13,-112
	st.w	$r18,$r12,-112
	ldptr.w	$r18,$r13,-108
	st.w	$r18,$r12,-108
	ldptr.w	$r18,$r13,-104
	st.w	$r18,$r12,-104
	bne	$r17,$r20,.L768
.L767:
	bstrpick.d	$r12,$r15,31,0
	alsl.d	$r12,$r12,$r0,2
	.align	3
.L769:
	ldx.w	$r13,$r5,$r12
	addi.w	$r15,$r15,1
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bltu	$r15,$r19,.L769
.L763:
	bleu	$r6,$r14,.L760
	bstrpick.d	$r12,$r14,31,0
	.align	3
.L770:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L770
	jr	$r1
	.align	5
.L778:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L779
	.align	3
.L771:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L771
.L760:
	jr	$r1
.L779:
	jr	$r1
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	2
	.align	3
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
	.align	3
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
	.align	3
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
	.align	3
	.globl	__ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113 = .
	.cfi_startproc
	blt	$r4,$r0,.L785
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.align	5
.L785:
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
	.align	3
	.globl	__ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114 = .
	.cfi_startproc
	blt	$r4,$r0,.L788
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.align	5
.L788:
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
	.align	3
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
	.align	3
	.globl	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116 = .
	.cfi_startproc
	srli.d	$r14,$r4,15
	or	$r13,$r4,$r0
	slli.w	$r12,$r4,0
	bnez	$r14,.L793
	srli.d	$r4,$r12,14
	bnez	$r4,.L792
	srli.d	$r14,$r12,13
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r14,.L792
	srli.d	$r14,$r12,12
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r14,.L792
	srli.d	$r14,$r12,11
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r14,.L792
	srli.d	$r14,$r12,10
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r14,.L792
	srli.d	$r14,$r12,9
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r14,.L792
	srli.d	$r14,$r12,8
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r14,.L792
	srli.d	$r14,$r12,7
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r14,.L792
	srli.d	$r14,$r12,6
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r14,.L792
	srli.d	$r14,$r12,5
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r14,.L792
	srli.d	$r14,$r12,4
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r14,.L792
	srli.d	$r14,$r12,3
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r14,.L792
	srli.d	$r14,$r12,2
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r14,.L792
	srli.d	$r12,$r12,1
	addi.w	$r4,$r0,14			# 0xe
	bnez	$r12,.L792
	sltui	$r4,$r13,1
	addi.d	$r4,$r4,15
	jr	$r1
.L793:
	or	$r4,$r0,$r0
.L792:
	jr	$r1
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	2
	.align	3
	.globl	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117 = .
	.cfi_startproc
	andi	$r13,$r4,1
	or	$r12,$r4,$r0
	bnez	$r13,.L811
	andi	$r13,$r4,2
	addi.w	$r4,$r0,1			# 0x1
	bnez	$r13,.L810
	andi	$r13,$r12,4
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r13,.L810
	andi	$r13,$r12,8
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r13,.L810
	andi	$r13,$r12,16
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r13,.L810
	andi	$r13,$r12,32
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r13,.L810
	andi	$r13,$r12,64
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r13,.L810
	andi	$r13,$r12,128
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r13,.L810
	andi	$r13,$r12,256
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r13,.L810
	andi	$r13,$r12,512
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r13,.L810
	andi	$r13,$r12,1024
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r13,.L810
	andi	$r13,$r12,2048
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r13,.L810
	bstrpick.d	$r13,$r12,12,12
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r13,.L810
	bstrpick.d	$r13,$r12,13,13
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r13,.L810
	bstrpick.d	$r13,$r12,14,14
	addi.w	$r4,$r0,14			# 0xe
	bnez	$r13,.L810
	srli.d	$r12,$r12,15
	sltui	$r4,$r12,1
	addi.d	$r4,$r4,15
	jr	$r1
.L811:
	or	$r4,$r0,$r0
.L810:
	jr	$r1
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.align	3
	.globl	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118 = .
	.cfi_startproc
	pcalau12i	$r12,%pc_hi20(.LC21)
	fld.s	$f1,$r12,%pc_lo12(.LC21)
	fcmp.sge.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L833
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
	.align	5
.L833:
	fsub.s	$f0,$f0,$f1
	lu12i.w	$r12,32768>>12			# 0x8000
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	add.d	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.align	3
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119 = .
	.cfi_startproc
	la.local	$r14,.LC23
	vreplgr2vr.w	$vr0,$r4
	vrepli.w	$vr1,1
	vrepli.w	$vr4,1
	la.local	$r15,.LC22
	vld	$vr3,$r14,0
	vsra.w	$vr3,$vr0,$vr3
	vand.v	$vr3,$vr3,$vr1
	la.local	$r13,.LC24
	vld	$vr2,$r15,0
	vsra.w	$vr2,$vr0,$vr2
	vand.v	$vr2,$vr2,$vr1
	la.local	$r12,.LC25
	vadd.w	$vr2,$vr2,$vr3
	vld	$vr1,$r13,0
	vsra.w	$vr1,$vr0,$vr1
	vld	$vr3,$r12,0
	vand.v	$vr1,$vr1,$vr4
	vsra.w	$vr0,$vr0,$vr3
	vadd.w	$vr1,$vr1,$vr2
	vand.v	$vr0,$vr0,$vr4
	vadd.w	$vr0,$vr0,$vr1
	vhaddw.d.w	$vr0,$vr0,$vr0
	vhaddw.q.d	$vr0,$vr0,$vr0
	vpickve2gr.w	$r4,$vr0,0
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	2
	.align	3
	.globl	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120 = .
	.cfi_startproc
	la.local	$r14,.LC23
	vreplgr2vr.w	$vr0,$r4
	vrepli.w	$vr1,1
	vrepli.w	$vr4,1
	la.local	$r15,.LC22
	vld	$vr3,$r14,0
	vsra.w	$vr3,$vr0,$vr3
	vand.v	$vr3,$vr3,$vr1
	la.local	$r13,.LC24
	vld	$vr2,$r15,0
	vsra.w	$vr2,$vr0,$vr2
	vand.v	$vr2,$vr2,$vr1
	la.local	$r12,.LC25
	vadd.w	$vr2,$vr2,$vr3
	vld	$vr1,$r13,0
	vsra.w	$vr1,$vr0,$vr1
	vld	$vr3,$r12,0
	vand.v	$vr1,$vr1,$vr4
	vsra.w	$vr0,$vr0,$vr3
	vadd.w	$vr1,$vr1,$vr2
	vand.v	$vr0,$vr0,$vr4
	vadd.w	$vr0,$vr0,$vr1
	vhaddw.d.w	$vr0,$vr0,$vr0
	vhaddw.q.d	$vr0,$vr0,$vr0
	vpickve2gr.w	$r4,$vr0,0
	slli.w	$r4,$r4,0
	jr	$r1
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.align	3
	.globl	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r13,.L839
	.align	3
.L838:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L838
	jr	$r1
	.align	5
.L839:
	jr	$r1
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.align	3
	.globl	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r13,.L842
	beqz	$r5,.L842
	.align	3
.L843:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	slli.w	$r14,$r13,1
	bstrpick.d	$r5,$r5,31,1
	slli.w	$r13,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r5,.L843
	jr	$r1
	.align	5
.L842:
	jr	$r1
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.align	3
	.globl	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123 = .
	.cfi_startproc
	addi.w	$r13,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bltu	$r5,$r4,.L849
	b	.L850
	.align	5
.L853:
	slli.w	$r5,$r15,0
	slli.w	$r12,$r14,0
	bleu	$r4,$r5,.L851
	beqz	$r13,.L852
.L849:
	slli.w	$r15,$r5,1
	slli.w	$r14,$r12,1
	addi.w	$r13,$r13,-1
	bge	$r5,$r0,.L853
.L850:
	or	$r13,$r0,$r0
	.align	3
.L855:
	or	$r14,$r12,$r13
	bstrpick.d	$r12,$r12,31,1
	bltu	$r4,$r5,.L854
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r14,0
.L854:
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L855
.L852:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L851:
	bnez	$r12,.L850
	or	$r13,$r0,$r0
	b	.L852
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.align	3
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124 = .
	.cfi_startproc
	fcmp.slt.s	$fcc0,$f0,$f1
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	bcnez	$fcc0,.L866
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L866:
	jr	$r1
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.align	3
	.globl	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125 = .
	.cfi_startproc
	fcmp.slt.d	$fcc0,$f0,$f1
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	bcnez	$fcc0,.L869
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L869:
	jr	$r1
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.align	3
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
	.align	3
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
	.align	3
	.globl	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128 = .
	.cfi_startproc
	or	$r14,$r4,$r0
	blt	$r5,$r0,.L887
	or	$r4,$r0,$r0
	beqz	$r5,.L876
	or	$r16,$r0,$r0
.L875:
	addi.w	$r13,$r0,32			# 0x20
	or	$r4,$r0,$r0
	b	.L878
	.align	5
.L888:
	beqz	$r13,.L877
.L878:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r14,$r12
	addi.w	$r13,$r13,-1
	slli.w	$r15,$r14,1
	srai.d	$r5,$r5,1
	bstrpick.w	$r13,$r13,7,0
	slli.w	$r14,$r15,0
	add.w	$r4,$r12,$r4
	bnez	$r5,.L888
.L877:
	sub.w	$r12,$r0,$r4
	masknez	$r4,$r4,$r16
	maskeqz	$r16,$r12,$r16
	or	$r4,$r16,$r4
.L876:
	jr	$r1
	.align	5
.L887:
	sub.w	$r5,$r0,$r5
	addi.w	$r16,$r0,1			# 0x1
	b	.L875
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.align	3
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129 = .
	.cfi_startproc
	or	$r17,$r0,$r0
	blt	$r4,$r0,.L908
.L890:
	bge	$r5,$r0,.L891
	sub.d	$r5,$r0,$r5
	xori	$r17,$r17,1
.L891:
	slli.w	$r13,$r4,0
	slli.w	$r5,$r5,0
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bgtu	$r13,$r5,.L892
	b	.L893
	.align	5
.L896:
	slli.w	$r5,$r16,0
	slli.w	$r12,$r15,0
	bleu	$r13,$r5,.L894
	beqz	$r14,.L903
.L892:
	slli.w	$r16,$r5,1
	slli.w	$r15,$r12,1
	addi.w	$r14,$r14,-1
	bge	$r5,$r0,.L896
.L893:
	or	$r14,$r0,$r0
	.align	3
.L898:
	bltu	$r13,$r5,.L897
	sub.w	$r13,$r13,$r5
	or	$r14,$r12,$r14
.L897:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L898
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r12,$r0,$r14
	maskeqz	$r4,$r12,$r17
	masknez	$r14,$r14,$r17
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L894:
	bnez	$r12,.L893
.L903:
	or	$r14,$r0,$r0
	sub.d	$r12,$r0,$r14
	maskeqz	$r4,$r12,$r17
	masknez	$r14,$r14,$r17
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L908:
	sub.d	$r4,$r0,$r4
	addi.w	$r17,$r0,1			# 0x1
	b	.L890
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.align	3
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130 = .
	.cfi_startproc
	or	$r18,$r0,$r0
	bge	$r4,$r0,.L910
	sub.d	$r4,$r0,$r4
	addi.w	$r18,$r0,1			# 0x1
.L910:
	srai.d	$r12,$r5,63
	xor	$r5,$r12,$r5
	slli.w	$r13,$r4,0
	sub.w	$r12,$r5,$r12
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bgtu	$r13,$r12,.L911
	b	.L917
	.align	5
.L915:
	slli.w	$r12,$r17,0
	slli.w	$r14,$r16,0
	bleu	$r13,$r12,.L931
	beqz	$r15,.L914
.L911:
	slli.w	$r17,$r12,1
	slli.w	$r16,$r14,1
	addi.w	$r15,$r15,-1
	bge	$r12,$r0,.L915
	b	.L917
	.align	5
.L931:
	beqz	$r14,.L914
	.align	3
.L917:
	sltu	$r16,$r13,$r12
	sub.w	$r15,$r13,$r12
	masknez	$r15,$r15,$r16
	maskeqz	$r13,$r13,$r16
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r12,$r12,31,1
	or	$r13,$r15,$r13
	bnez	$r14,.L917
.L914:
	bstrpick.d	$r13,$r13,31,0
	sub.d	$r12,$r0,$r13
	maskeqz	$r4,$r12,$r18
	masknez	$r13,$r13,$r18
	or	$r4,$r4,$r13
	jr	$r1
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	2
	.align	3
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131 = .
	.cfi_startproc
	slli.w	$r12,$r5,0
	slli.w	$r13,$r4,0
	bgeu	$r5,$r4,.L1047
	srli.d	$r12,$r5,15
	bnez	$r12,.L935
	slli.w	$r12,$r5,1
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L936
	srli.d	$r14,$r12,15
	bnez	$r14,.L937
	slli.w	$r12,$r5,2
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L938
	srli.d	$r14,$r12,15
	bnez	$r14,.L939
	slli.w	$r12,$r5,3
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L940
	srli.d	$r14,$r12,15
	bnez	$r14,.L941
	slli.w	$r12,$r5,4
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L942
	srli.d	$r14,$r12,15
	bnez	$r14,.L943
	slli.w	$r12,$r5,5
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L944
	srli.d	$r14,$r12,15
	bnez	$r14,.L945
	slli.w	$r12,$r5,6
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L946
	srli.d	$r14,$r12,15
	bnez	$r14,.L947
	slli.w	$r12,$r5,7
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L948
	srli.d	$r14,$r12,15
	bnez	$r14,.L949
	slli.w	$r12,$r5,8
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L950
	srli.d	$r14,$r12,15
	bnez	$r14,.L951
	slli.w	$r12,$r5,9
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L952
	srli.d	$r14,$r12,15
	bnez	$r14,.L953
	slli.w	$r12,$r5,10
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L954
	srli.d	$r14,$r12,15
	bnez	$r14,.L955
	slli.w	$r12,$r5,11
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L956
	srli.d	$r14,$r12,15
	bnez	$r14,.L957
	slli.w	$r12,$r5,12
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L958
	srli.d	$r14,$r12,15
	bnez	$r14,.L959
	slli.w	$r12,$r5,13
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L960
	srli.d	$r14,$r12,15
	bnez	$r14,.L961
	slli.w	$r12,$r5,14
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L962
	srli.d	$r14,$r12,15
	bnez	$r14,.L963
	slli.w	$r5,$r5,15
	bstrpick.w	$r14,$r5,15,0
	bleu	$r13,$r14,.L964
	bnez	$r14,.L1048
.L965:
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r14,$r6
	or	$r4,$r4,$r6
	jr	$r1
.L952:
	bltu	$r13,$r14,.L998
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,512			# 0x200
	addi.w	$r14,$r0,512			# 0x200
	bstrpick.w	$r4,$r4,15,0
	.align	3
.L967:
	srli.d	$r16,$r15,2
	srli.d	$r13,$r12,2
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L968
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L968:
	srli.d	$r16,$r15,3
	srli.d	$r13,$r12,3
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L969
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L969:
	srli.d	$r16,$r15,4
	srli.d	$r13,$r12,4
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L970
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L970:
	srli.d	$r16,$r15,5
	srli.d	$r13,$r12,5
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L971
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L971:
	srli.d	$r16,$r15,6
	srli.d	$r13,$r12,6
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L972
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L972:
	srli.d	$r16,$r15,7
	srli.d	$r13,$r12,7
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L973
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L973:
	srli.d	$r16,$r15,8
	srli.d	$r13,$r12,8
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L974
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L974:
	srli.d	$r16,$r15,9
	srli.d	$r13,$r12,9
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L975
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L975:
	srli.d	$r16,$r15,10
	srli.d	$r13,$r12,10
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L976
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L976:
	srli.d	$r16,$r15,11
	srli.d	$r13,$r12,11
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L977
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L977:
	srli.d	$r16,$r15,12
	srli.d	$r13,$r12,12
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L978
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L978:
	srli.d	$r16,$r15,13
	srli.d	$r13,$r12,13
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L979
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L979:
	srli.d	$r16,$r15,14
	srli.d	$r13,$r12,14
	beqz	$r16,.L965
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L980
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L980:
	lu12i.w	$r13,16384>>12			# 0x4000
	srli.d	$r12,$r12,15
	beq	$r15,$r13,.L965
	slli.w	$r13,$r4,0
	bltu	$r13,$r12,.L988
	sub.w	$r12,$r4,$r12
	ori	$r14,$r14,1
	bstrpick.w	$r4,$r12,15,0
	b	.L965
.L988:
	or	$r4,$r0,$r0
	b	.L965
.L1047:
	xor	$r12,$r12,$r13
	maskeqz	$r4,$r4,$r12
	sltui	$r14,$r12,1
	b	.L965
.L935:
	sub.w	$r5,$r4,$r5
	addi.w	$r14,$r0,1			# 0x1
	bstrpick.w	$r4,$r5,15,0
	b	.L965
.L936:
	bltu	$r13,$r14,.L990
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,2			# 0x2
	addi.w	$r14,$r0,2			# 0x2
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L937:
	sub.w	$r4,$r4,$r12
	bstrpick.d	$r5,$r5,14,0
	addi.w	$r16,$r0,1			# 0x1
	addi.w	$r15,$r0,2			# 0x2
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,2			# 0x2
	.align	3
.L985:
	slli.w	$r13,$r4,0
	bltu	$r13,$r5,.L967
	sub.w	$r5,$r4,$r5
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r5,15,0
	b	.L967
.L938:
	bltu	$r13,$r14,.L991
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,4			# 0x4
	addi.w	$r14,$r0,4			# 0x4
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L939:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,2			# 0x2
	addi.w	$r15,$r0,4			# 0x4
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,4			# 0x4
	b	.L985
.L940:
	bltu	$r13,$r14,.L992
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,8			# 0x8
	addi.w	$r14,$r0,8			# 0x8
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L941:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,4			# 0x4
	addi.w	$r15,$r0,8			# 0x8
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,8			# 0x8
	b	.L985
.L942:
	bltu	$r13,$r14,.L993
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,16			# 0x10
	addi.w	$r14,$r0,16			# 0x10
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L943:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,8			# 0x8
	addi.w	$r15,$r0,16			# 0x10
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,16			# 0x10
	b	.L985
.L944:
	bltu	$r13,$r14,.L994
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,32			# 0x20
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L945:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,16			# 0x10
	addi.w	$r15,$r0,32			# 0x20
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,32			# 0x20
	b	.L985
.L946:
	bltu	$r13,$r14,.L995
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,64			# 0x40
	addi.w	$r14,$r0,64			# 0x40
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L947:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,32			# 0x20
	addi.w	$r15,$r0,64			# 0x40
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,64			# 0x40
	b	.L985
.L948:
	bltu	$r13,$r14,.L996
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,128			# 0x80
	addi.w	$r14,$r0,128			# 0x80
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L949:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,64			# 0x40
	addi.w	$r15,$r0,128			# 0x80
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,128			# 0x80
	b	.L985
.L951:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,128			# 0x80
	addi.w	$r15,$r0,256			# 0x100
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,256			# 0x100
	b	.L985
.L953:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,256			# 0x100
	addi.w	$r15,$r0,512			# 0x200
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,512			# 0x200
	b	.L985
.L990:
	addi.w	$r15,$r0,2			# 0x2
	.align	3
.L984:
	srli.d	$r16,$r15,1
	srli.d	$r5,$r12,1
	or	$r14,$r0,$r0
	b	.L985
.L955:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,512			# 0x200
	addi.w	$r15,$r0,1024			# 0x400
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,1024			# 0x400
	b	.L985
.L957:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,1024			# 0x400
	ori	$r15,$r0,2048			# 0x800
	bstrpick.w	$r4,$r4,15,0
	ori	$r14,$r0,2048			# 0x800
	b	.L985
.L991:
	addi.w	$r15,$r0,4			# 0x4
	b	.L984
.L992:
	addi.w	$r15,$r0,8			# 0x8
	b	.L984
.L959:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	ori	$r16,$r0,2048			# 0x800
	lu12i.w	$r15,4096>>12			# 0x1000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,4096>>12			# 0x1000
	b	.L985
.L961:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	lu12i.w	$r16,4096>>12			# 0x1000
	lu12i.w	$r15,8192>>12			# 0x2000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,8192>>12			# 0x2000
	b	.L985
.L993:
	addi.w	$r15,$r0,16			# 0x10
	b	.L984
.L963:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	lu12i.w	$r16,8192>>12			# 0x2000
	lu12i.w	$r15,16384>>12			# 0x4000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,16384>>12			# 0x4000
	b	.L985
.L994:
	addi.w	$r15,$r0,32			# 0x20
	b	.L984
.L995:
	addi.w	$r15,$r0,64			# 0x40
	b	.L984
.L964:
	srli.d	$r12,$r4,15
	bnez	$r12,.L989
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	b	.L984
.L1048:
	lu12i.w	$r13,-32768>>12			# 0xffffffffffff8000
	add.w	$r13,$r4,$r13
	lu12i.w	$r5,16384>>12			# 0x4000
	lu12i.w	$r16,16384>>12			# 0x4000
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	lu12i.w	$r14,32768>>12			# 0x8000
	bstrpick.w	$r4,$r13,15,0
	b	.L985
.L996:
	addi.w	$r15,$r0,128			# 0x80
	b	.L984
.L950:
	bltu	$r13,$r14,.L997
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,256			# 0x100
	addi.w	$r14,$r0,256			# 0x100
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L989:
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	lu12i.w	$r14,32768>>12			# 0x8000
	or	$r4,$r0,$r0
	b	.L967
.L997:
	addi.w	$r15,$r0,256			# 0x100
	b	.L984
.L954:
	bltu	$r13,$r14,.L999
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,1024			# 0x400
	addi.w	$r14,$r0,1024			# 0x400
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L962:
	bltu	$r13,$r14,.L1003
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,16384>>12			# 0x4000
	lu12i.w	$r14,16384>>12			# 0x4000
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L999:
	addi.w	$r15,$r0,1024			# 0x400
	b	.L984
.L1003:
	lu12i.w	$r15,16384>>12			# 0x4000
	b	.L984
.L998:
	addi.w	$r15,$r0,512			# 0x200
	b	.L984
.L960:
	bltu	$r13,$r14,.L1002
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,8192>>12			# 0x2000
	lu12i.w	$r14,8192>>12			# 0x2000
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L958:
	bltu	$r13,$r14,.L1001
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,4096>>12			# 0x1000
	lu12i.w	$r14,4096>>12			# 0x1000
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L956:
	bltu	$r13,$r14,.L1000
	sub.w	$r4,$r4,$r12
	ori	$r15,$r0,2048			# 0x800
	ori	$r14,$r0,2048			# 0x800
	bstrpick.w	$r4,$r4,15,0
	b	.L967
.L1002:
	lu12i.w	$r15,8192>>12			# 0x2000
	b	.L984
.L1001:
	lu12i.w	$r15,4096>>12			# 0x1000
	b	.L984
.L1000:
	ori	$r15,$r0,2048			# 0x800
	b	.L984
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.align	3
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132 = .
	.cfi_startproc
	lu12i.w	$r15,-2147483648>>12			# 0xffffffff80000000
	addi.w	$r14,$r0,64			# 0x40
	addi.w	$r12,$r0,1			# 0x1
	lu32i.d	$r15,0>>32
	bltu	$r5,$r4,.L1050
	b	.L1051
	.align	5
.L1054:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L1052
	beqz	$r14,.L1053
.L1050:
	and	$r13,$r5,$r15
	addi.w	$r14,$r14,-1
	beqz	$r13,.L1054
.L1051:
	or	$r13,$r0,$r0
	.align	3
.L1056:
	bltu	$r4,$r5,.L1055
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L1055:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	bnez	$r12,.L1056
.L1053:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L1052:
	beqz	$r12,.L1053
	or	$r13,$r0,$r0
	b	.L1056
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.align	3
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133 = .
	.cfi_startproc
	andi	$r13,$r5,32
	beqz	$r13,.L1070
	sll.w	$r5,$r4,$r5
	or	$r13,$r0,$r0
.L1071:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	bstrins.d	$r4,$r5,63,32
.L1069:
	jr	$r1
	.align	5
.L1070:
	beqz	$r5,.L1069
	sub.w	$r15,$r0,$r5
	srai.d	$r14,$r4,32
	sll.w	$r14,$r14,$r5
	srl.w	$r12,$r4,$r15
	or	$r12,$r12,$r14
	sll.w	$r13,$r4,$r5
	slli.w	$r5,$r12,0
	b	.L1071
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	2
	.align	3
	.globl	__ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134 = .
	.cfi_startproc
	andi	$r14,$r6,64
	or	$r12,$r4,$r0
	beqz	$r14,.L1076
	sll.d	$r5,$r4,$r6
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L1076:
	beqz	$r6,.L1078
	sub.w	$r14,$r0,$r6
	sll.d	$r5,$r5,$r6
	srl.d	$r12,$r12,$r14
	sll.d	$r4,$r4,$r6
	or	$r5,$r12,$r5
.L1078:
	jr	$r1
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	2
	.align	3
	.globl	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135 = .
	.cfi_startproc
	andi	$r13,$r5,32
	beqz	$r13,.L1082
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	sra.w	$r12,$r12,$r5
.L1083:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r12,31,0
.L1081:
	jr	$r1
	.align	5
.L1082:
	beqz	$r5,.L1081
	srai.d	$r13,$r4,32
	sub.w	$r14,$r0,$r5
	sll.w	$r14,$r13,$r14
	srl.w	$r12,$r4,$r5
	or	$r12,$r14,$r12
	sra.w	$r13,$r13,$r5
	slli.w	$r12,$r12,0
	b	.L1083
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.align	3
	.globl	__ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136 = .
	.cfi_startproc
	andi	$r14,$r6,64
	or	$r12,$r5,$r0
	beqz	$r14,.L1088
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
	.align	5
.L1088:
	beqz	$r6,.L1090
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	sll.d	$r12,$r12,$r14
	sra.d	$r5,$r5,$r6
	or	$r4,$r12,$r4
.L1090:
	jr	$r1
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	2
	.align	3
	.globl	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137 = .
	.cfi_startproc
	revb.4h	$r4,$r4
	revh.d	$r4,$r4
	jr	$r1
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.align	3
	.globl	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138 = .
	.cfi_startproc
	revb.2h	$r4,$r4
	rotri.w	$r4,$r4,16
	jr	$r1
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.align	3
	.globl	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139 = .
	.cfi_startproc
	lu12i.w	$r14,61440>>12			# 0xf000
	ori	$r14,$r14,4095
	sltu	$r14,$r14,$r4
	xori	$r14,$r14,1
	slli.w	$r14,$r14,4
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r14
	lu12i.w	$r13,61440>>12			# 0xf000
	srl.w	$r12,$r4,$r12
	ori	$r13,$r13,3840
	and	$r13,$r13,$r12
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,3
	addi.w	$r17,$r0,8			# 0x8
	sub.w	$r17,$r17,$r13
	srl.w	$r12,$r12,$r17
	add.w	$r13,$r13,$r14
	andi	$r14,$r12,240
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,2
	addi.w	$r16,$r0,4			# 0x4
	sub.w	$r16,$r16,$r14
	srl.w	$r12,$r12,$r16
	add.w	$r14,$r14,$r13
	andi	$r13,$r12,12
	sltui	$r13,$r13,1
	addi.w	$r15,$r0,2			# 0x2
	slli.w	$r13,$r13,1
	sub.w	$r16,$r15,$r13
	srl.w	$r12,$r12,$r16
	sub.w	$r4,$r15,$r12
	andi	$r12,$r12,2
	add.w	$r13,$r13,$r14
	masknez	$r4,$r4,$r12
	add.w	$r4,$r4,$r13
	jr	$r1
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	2
	.align	3
	.globl	__clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140 = .
	.cfi_startproc
	sltui	$r13,$r5,1
	addi.w	$r12,$r13,-1
	masknez	$r4,$r4,$r5
	and	$r12,$r12,$r5
	or	$r12,$r12,$r4
	slli.d	$r13,$r13,6
	clz.d	$r12,$r12
	add.d	$r4,$r13,$r12
	jr	$r1
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	2
	.align	3
	.globl	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141 = .
	.cfi_startproc
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r12,$r4,$r0
	blt	$r14,$r13,.L1099
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L1098
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1098
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1099:
	or	$r4,$r0,$r0
.L1098:
	jr	$r1
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.align	3
	.globl	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142 = .
	.cfi_startproc
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r12,$r4,$r0
	blt	$r14,$r13,.L1105
	addi.w	$r4,$r0,1			# 0x1
	bgt	$r14,$r13,.L1104
	slli.w	$r5,$r5,0
	slli.w	$r12,$r12,0
	sltu	$r4,$r12,$r5
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	sltu	$r12,$r5,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
	jr	$r1
	.align	5
.L1105:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1104:
	jr	$r1
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.align	3
	.globl	__cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	blt	$r5,$r7,.L1110
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L1109
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1109
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1110:
	or	$r4,$r0,$r0
.L1109:
	jr	$r1
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	2
	.align	3
	.globl	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144 = .
	.cfi_startproc
	bstrpick.w	$r14,$r4,15,0
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,4
	srl.w	$r12,$r4,$r14
	bstrpick.w	$r13,$r12,7,0
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,3
	srl.w	$r12,$r12,$r13
	add.w	$r14,$r13,$r14
	andi	$r13,$r12,15
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,2
	srl.w	$r12,$r12,$r13
	andi	$r4,$r12,3
	sltui	$r4,$r4,1
	slli.w	$r4,$r4,1
	srl.w	$r12,$r12,$r4
	add.w	$r13,$r13,$r14
	andi	$r12,$r12,3
	add.w	$r4,$r4,$r13
	nor	$r13,$r0,$r12
	andi	$r13,$r13,1
	srli.w	$r12,$r12,1
	addi.w	$r15,$r0,2			# 0x2
	sub.w	$r15,$r15,$r12
	sub.w	$r12,$r0,$r13
	and	$r12,$r12,$r15
	add.w	$r4,$r4,$r12
	jr	$r1
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.align	3
	.globl	__ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145 = .
	.cfi_startproc
	sltui	$r12,$r4,1
	addi.w	$r13,$r12,-1
	and	$r13,$r13,$r4
	masknez	$r5,$r5,$r4
	or	$r5,$r5,$r13
	slli.d	$r12,$r12,6
	ctz.d	$r5,$r5
	add.d	$r4,$r12,$r5
	jr	$r1
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	2
	.align	3
	.globl	__ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146 = .
	.cfi_startproc
	bnez	$r4,.L1117
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
	.align	5
.L1117:
	ctz.d	$r4,$r4
	addi.w	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	2
	.align	3
	.globl	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147 = .
	.cfi_startproc
	andi	$r13,$r5,32
	beqz	$r13,.L1121
	bstrpick.d	$r12,$r4,63,32
	or	$r13,$r0,$r0
	srl.w	$r5,$r12,$r5
.L1122:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r5,31,0
.L1120:
	jr	$r1
	.align	5
.L1121:
	beqz	$r5,.L1120
	bstrpick.d	$r13,$r4,63,32
	sub.w	$r14,$r0,$r5
	srl.w	$r12,$r4,$r5
	sll.w	$r14,$r13,$r14
	or	$r12,$r14,$r12
	srl.w	$r13,$r13,$r5
	slli.w	$r5,$r12,0
	b	.L1122
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.align	3
	.globl	__lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148 = .
	.cfi_startproc
	andi	$r14,$r6,64
	or	$r12,$r5,$r0
	beqz	$r14,.L1127
	srl.d	$r4,$r5,$r6
	or	$r5,$r0,$r0
	jr	$r1
	.align	5
.L1127:
	beqz	$r6,.L1129
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r5,$r5,$r6
	or	$r4,$r12,$r4
.L1129:
	jr	$r1
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	2
	.align	3
	.globl	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149 = .
	.cfi_startproc
	or	$r14,$r4,$r0
	bstrpick.w	$r12,$r14,15,0
	bstrpick.w	$r13,$r5,15,0
	mul.w	$r15,$r12,$r13
	srli.w	$r14,$r14,16
	srli.w	$r5,$r5,16
	or	$r4,$r0,$r0
	mul.w	$r13,$r13,$r14
	srli.w	$r17,$r15,16
	bstrpick.d	$r16,$r15,15,0
	mul.w	$r14,$r14,$r5
	add.w	$r13,$r13,$r17
	slli.w	$r15,$r13,16
	add.w	$r15,$r15,$r16
	srli.w	$r13,$r13,16
	mul.w	$r12,$r12,$r5
	add.w	$r13,$r13,$r14
	srli.w	$r14,$r15,16
	bstrpick.d	$r15,$r15,15,0
	add.w	$r12,$r12,$r14
	slli.w	$r14,$r12,16
	add.w	$r14,$r14,$r15
	srli.w	$r12,$r12,16
	add.w	$r12,$r12,$r13
	bstrins.d	$r4,$r14,31,0
	bstrins.d	$r4,$r12,63,32
	jr	$r1
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	2
	.align	3
	.globl	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150 = .
	.cfi_startproc
	bstrpick.w	$r12,$r4,15,0
	bstrpick.w	$r13,$r5,15,0
	mul.w	$r16,$r12,$r13
	srli.w	$r14,$r4,16
	srli.w	$r17,$r5,16
	srai.d	$r18,$r4,32
	or	$r15,$r0,$r0
	mul.w	$r13,$r13,$r14
	srli.w	$r19,$r16,16
	mul.w	$r12,$r12,$r17
	add.w	$r13,$r13,$r19
	mul.w	$r17,$r14,$r17
	srai.d	$r14,$r5,32
	mul.w	$r14,$r4,$r14
	mul.w	$r5,$r5,$r18
	bstrpick.d	$r18,$r16,15,0
	slli.w	$r16,$r13,16
	add.w	$r16,$r16,$r18
	srli.w	$r13,$r13,16
	add.w	$r13,$r13,$r17
	srli.w	$r17,$r16,16
	add.w	$r12,$r12,$r17
	slli.w	$r17,$r12,16
	bstrpick.d	$r16,$r16,15,0
	add.w	$r16,$r17,$r16
	srli.w	$r12,$r12,16
	add.w	$r12,$r12,$r13
	bstrins.d	$r15,$r16,31,0
	bstrins.d	$r15,$r12,63,32
	srai.d	$r12,$r15,32
	add.w	$r12,$r14,$r12
	or	$r4,$r15,$r0
	add.w	$r5,$r5,$r12
	bstrins.d	$r4,$r5,63,32
	jr	$r1
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.align	3
	.globl	__mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151 = .
	.cfi_startproc
	mulw.d.wu	$r13,$r4,$r5
	srli.d	$r14,$r4,32
	srli.d	$r15,$r5,32
	mulw.d.wu	$r5,$r5,$r14
	mulw.d.wu	$r12,$r4,$r15
	mulw.d.wu	$r14,$r14,$r15
	srli.d	$r15,$r13,32
	add.d	$r5,$r5,$r15
	bstrpick.d	$r15,$r5,31,0
	add.d	$r12,$r12,$r15
	srli.d	$r5,$r5,32
	bstrpick.d	$r13,$r13,31,0
	slli.d	$r4,$r12,32
	srli.d	$r12,$r12,32
	add.d	$r4,$r13,$r4
	add.d	$r5,$r5,$r14
	add.d	$r5,$r5,$r12
	jr	$r1
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	2
	.align	3
	.globl	__multi3
	.type	__multi3, @function
__multi3:
.LFB152 = .
	.cfi_startproc
	mulw.d.wu	$r14,$r4,$r6
	srli.d	$r15,$r4,32
	srli.d	$r16,$r6,32
	mulw.d.wu	$r13,$r6,$r15
	mulw.d.wu	$r12,$r4,$r16
	mulw.d.wu	$r15,$r15,$r16
	srli.d	$r16,$r14,32
	add.d	$r13,$r13,$r16
	mul.d	$r7,$r4,$r7
	bstrpick.d	$r4,$r14,31,0
	bstrpick.d	$r14,$r13,31,0
	add.d	$r12,$r12,$r14
	srli.d	$r13,$r13,32
	srli.d	$r14,$r12,32
	add.d	$r13,$r13,$r15
	add.d	$r13,$r13,$r14
	slli.d	$r12,$r12,32
	add.d	$r4,$r4,$r12
	mul.d	$r5,$r6,$r5
	add.d	$r7,$r7,$r13
	add.d	$r5,$r7,$r5
	jr	$r1
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	2
	.align	3
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
	.align	3
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
	.align	3
	.globl	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155 = .
	.cfi_startproc
	srai.d	$r12,$r4,32
	xor	$r12,$r12,$r4
	srli.w	$r14,$r12,16
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	andi	$r12,$r12,15
	sra.w	$r4,$r13,$r12
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156 = .
	.cfi_startproc
	xor	$r5,$r4,$r5
	srai.d	$r12,$r5,32
	xor	$r12,$r12,$r5
	srli.w	$r14,$r12,16
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	andi	$r12,$r12,15
	sra.w	$r4,$r13,$r12
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	2
	.align	3
	.globl	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157 = .
	.cfi_startproc
	srli.w	$r12,$r4,16
	xor	$r12,$r12,$r4
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	andi	$r12,$r12,15
	sra.w	$r4,$r13,$r12
	andi	$r4,$r4,1
	jr	$r1
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	2
	.align	3
	.globl	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158 = .
	.cfi_startproc
	lu12i.w	$r13,1431654400>>12			# 0x55555000
	ori	$r13,$r13,1365
	bstrins.d	$r13,$r13,63,32
	srli.d	$r12,$r4,1
	and	$r12,$r12,$r13
	lu12i.w	$r14,858992640>>12			# 0x33333000
	sub.d	$r4,$r4,$r12
	ori	$r14,$r14,819
	bstrins.d	$r14,$r14,63,32
	srli.d	$r13,$r4,2
	and	$r13,$r13,$r14
	and	$r4,$r4,$r14
	add.d	$r13,$r13,$r4
	lu12i.w	$r15,252641280>>12			# 0xf0f0000
	srli.d	$r12,$r13,4
	ori	$r15,$r15,3855
	bstrins.d	$r15,$r15,63,32
	add.d	$r12,$r12,$r13
	and	$r12,$r12,$r15
	srli.d	$r13,$r12,32
	add.w	$r13,$r13,$r12
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
	.align	3
	.globl	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159 = .
	.cfi_startproc
	lu12i.w	$r13,1431654400>>12			# 0x55555000
	srli.w	$r15,$r4,1
	ori	$r13,$r13,1365
	and	$r13,$r13,$r15
	sub.w	$r4,$r4,$r13
	lu12i.w	$r12,858992640>>12			# 0x33333000
	srli.w	$r13,$r4,2
	ori	$r12,$r12,819
	and	$r4,$r12,$r4
	and	$r12,$r12,$r13
	add.w	$r12,$r12,$r4
	srli.w	$r13,$r12,4
	lu12i.w	$r14,252641280>>12			# 0xf0f0000
	ori	$r14,$r14,3855
	add.w	$r12,$r13,$r12
	and	$r12,$r12,$r14
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
	.align	3
	.globl	__popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160 = .
	.cfi_startproc
	lu12i.w	$r15,1431654400>>12			# 0x55555000
	slli.d	$r17,$r5,63
	srli.d	$r12,$r4,1
	ori	$r15,$r15,1365
	bstrins.d	$r15,$r15,63,32
	or	$r12,$r17,$r12
	srli.d	$r14,$r5,1
	and	$r12,$r12,$r15
	and	$r14,$r14,$r15
	sub.d	$r12,$r4,$r12
	sltu	$r4,$r4,$r12
	sub.d	$r5,$r5,$r14
	sub.d	$r5,$r5,$r4
	lu12i.w	$r13,858992640>>12			# 0x33333000
	slli.d	$r17,$r5,62
	srli.d	$r14,$r12,2
	ori	$r13,$r13,819
	bstrins.d	$r13,$r13,63,32
	or	$r14,$r17,$r14
	and	$r14,$r14,$r13
	and	$r12,$r12,$r13
	srli.d	$r15,$r5,2
	add.d	$r12,$r14,$r12
	and	$r5,$r5,$r13
	and	$r15,$r15,$r13
	add.d	$r15,$r15,$r5
	sltu	$r14,$r12,$r14
	add.d	$r14,$r14,$r15
	slli.d	$r17,$r14,60
	srli.d	$r13,$r12,4
	or	$r13,$r17,$r13
	srli.d	$r15,$r14,4
	add.d	$r12,$r13,$r12
	lu12i.w	$r16,252641280>>12			# 0xf0f0000
	add.d	$r14,$r15,$r14
	sltu	$r13,$r12,$r13
	ori	$r16,$r16,3855
	bstrins.d	$r16,$r16,63,32
	add.d	$r13,$r13,$r14
	and	$r12,$r12,$r16
	and	$r13,$r13,$r16
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
	.align	3
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161 = .
	.cfi_startproc
	andi	$r12,$r4,1
	fmov.d	$f1,$f0
	pcalau12i	$r13,%pc_hi20(.LC18)
	beqz	$r12,.L1150
	fld.d	$f0,$r13,%pc_lo12(.LC18)
	or	$r12,$r4,$r0
	.align	3
.L1147:
	fmul.d	$f0,$f0,$f1
.L1145:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	beqz	$r12,.L1146
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.d	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1147
.L1151:
	srai.d	$r12,$r13,1
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.d	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1147
	b	.L1151
	.align	5
.L1146:
	blt	$r4,$r0,.L1152
	jr	$r1
	.align	5
.L1150:
	fld.d	$f0,$r13,%pc_lo12(.LC18)
	or	$r12,$r4,$r0
	b	.L1145
	.align	5
.L1152:
	frecip.d	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	2
	.align	3
	.globl	__powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162 = .
	.cfi_startproc
	andi	$r12,$r4,1
	fmov.s	$f1,$f0
	pcalau12i	$r13,%pc_hi20(.LC26)
	beqz	$r12,.L1159
	fld.s	$f0,$r13,%pc_lo12(.LC26)
	or	$r12,$r4,$r0
	.align	3
.L1156:
	fmul.s	$f0,$f0,$f1
.L1154:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	beqz	$r12,.L1155
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.s	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1156
.L1160:
	srai.d	$r12,$r13,1
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.s	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1156
	b	.L1160
	.align	5
.L1155:
	blt	$r4,$r0,.L1161
	jr	$r1
	.align	5
.L1159:
	fld.s	$f0,$r13,%pc_lo12(.LC26)
	or	$r12,$r4,$r0
	b	.L1154
	.align	5
.L1161:
	frecip.s	$f0,$f0
	jr	$r1
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	2
	.align	3
	.globl	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163 = .
	.cfi_startproc
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r12,$r4,$r0
	bltu	$r14,$r13,.L1164
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L1163
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1163
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1164:
	or	$r4,$r0,$r0
.L1163:
	jr	$r1
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.align	3
	.globl	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164 = .
	.cfi_startproc
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r12,$r4,$r0
	bltu	$r14,$r13,.L1170
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r14,$r13,.L1169
	slli.w	$r5,$r5,0
	slli.w	$r12,$r12,0
	sltu	$r4,$r12,$r5
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	sltu	$r12,$r5,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
	jr	$r1
	.align	5
.L1170:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1169:
	jr	$r1
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	2
	.align	3
	.globl	__ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165 = .
	.cfi_startproc
	or	$r12,$r4,$r0
	bltu	$r5,$r7,.L1175
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L1174
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1174
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1175:
	or	$r4,$r0,$r0
.L1174:
	jr	$r1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
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
	.word	-1074790400
	.align	3
.LC17:
	.word	0
	.word	-1075838976
	.align	3
.LC18:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC21:
	.word	1191182336
	.section	.rodata.cst16
	.align	4
.LC22:
	.word	0
	.word	1
	.word	2
	.word	3
	.align	4
.LC23:
	.word	4
	.word	5
	.word	6
	.word	7
	.align	4
.LC24:
	.word	8
	.word	9
	.word	10
	.word	11
	.align	4
.LC25:
	.word	12
	.word	13
	.word	14
	.word	15
	.section	.rodata.cst4
	.align	2
.LC26:
	.word	1065353216
	.section	.rodata
	.align	4
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.ascii	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqr"
	.ascii	"stuvwxyz\000"
	.section	.bss,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.space	7
	.space	1
	.type	seed, @object
	.size	seed, 8
seed:
	.space	8


	.globl	__multf3
	.globl	__netf2
	.globl	__addtf3
	.globl	__extenddftf2
	.globl	__gttf2
	.globl	__lttf2
	.globl	__unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
