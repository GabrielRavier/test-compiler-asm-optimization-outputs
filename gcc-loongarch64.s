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
	bnez	$r7,.L18
	b	.L22
	.align	5
.L20:
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
	beqz	$r7,.L22
.L18:
	ld.bu	$r12,$r5,0
	st.b	$r12,$r4,0
	bne	$r12,$r6,.L20
	beqz	$r7,.L22
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L22:
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
	b	.L35
	.align	5
.L32:
	addi.d	$r4,$r4,1
	addi.d	$r6,$r6,-1
	beqz	$r6,.L35
.L30:
	ld.bu	$r12,$r4,0
	bne	$r12,$r5,.L32
	beqz	$r6,.L35
	jr	$r1
	.align	5
.L35:
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
	beqz	$r6,.L43
	.align	3
.L52:
	ld.bu	$r13,$r4,0
	ld.bu	$r12,$r5,0
	bne	$r13,$r12,.L51
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	bnez	$r6,.L52
.L43:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L51:
	beqz	$r6,.L43
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
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	beqz	$r6,.L54
	bl	%plt(memcpy)
.L54:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,8
	.cfi_restore 1
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
	bstrpick.w	$r5,$r5,7,0
	addi.d	$r6,$r6,-1
	add.d	$r6,$r4,$r6
	addi.d	$r13,$r4,-1
	.align	3
.L60:
	beq	$r6,$r13,.L63
	or	$r4,$r6,$r0
	addi.d	$r6,$r6,-1
	ld.bu	$r12,$r4,0
	bne	$r12,$r5,.L60
	jr	$r1
	.align	5
.L63:
	or	$r4,$r0,$r0
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
	beqz	$r6,.L65
	add.d	$r6,$r4,$r6
	or	$r12,$r4,$r0
	.align	3
.L66:
	st.b	$r5,$r12,0
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L66
.L65:
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
	b	.L78
	.align	5
.L73:
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
.L78:
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	bnez	$r12,.L73
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
	bstrpick.w	$r5,$r5,7,0
	ld.b	$r12,$r4,0
	bnez	$r12,.L80
	jr	$r1
	.align	5
.L82:
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,0
	beqz	$r12,.L79
.L80:
	bstrpick.w	$r12,$r12,7,0
	bne	$r12,$r5,.L82
.L79:
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
.L88:
	ld.b	$r12,$r4,0
	beq	$r12,$r5,.L87
	addi.d	$r4,$r4,1
	bnez	$r12,.L88
	or	$r4,$r0,$r0
.L87:
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
	ld.b	$r13,$r4,0
	ld.b	$r14,$r5,0
	addi.w	$r12,$r0,1			# 0x1
	addi.d	$r5,$r5,-1
	bne	$r13,$r14,.L92
	.align	3
.L91:
	beqz	$r13,.L92
	ldx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	ldx.b	$r14,$r5,$r12
	beq	$r13,$r14,.L91
.L92:
	bstrpick.w	$r13,$r13,7,0
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
	beqz	$r12,.L99
	or	$r12,$r4,$r0
	.align	3
.L98:
	addi.d	$r12,$r12,1
	ld.bu	$r13,$r12,0
	bnez	$r13,.L98
	sub.d	$r4,$r12,$r4
	jr	$r1
	.align	5
.L99:
	or	$r12,$r4,$r0
	sub.d	$r4,$r12,$r4
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
	beqz	$r6,.L106
	ld.bu	$r12,$r4,0
	beqz	$r12,.L103
	addi.d	$r6,$r6,-1
	add.d	$r14,$r4,$r6
	b	.L104
	.align	5
.L116:
	beq	$r4,$r14,.L103
	bne	$r13,$r12,.L103
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	ld.bu	$r12,$r4,0
	beqz	$r12,.L103
.L104:
	ld.bu	$r13,$r5,0
	bnez	$r13,.L116
.L103:
	ld.bu	$r13,$r5,0
	sub.w	$r4,$r12,$r13
	jr	$r1
	.align	5
.L106:
	or	$r4,$r0,$r0
	jr	$r1
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
	ble	$r6,$r12,.L117
	addi.w	$r12,$r0,-2			# 0xfffffffffffffffe
	and	$r6,$r6,$r12
	add.d	$r13,$r4,$r6
	.align	3
.L119:
	ld.bu	$r12,$r4,1
	st.b	$r12,$r5,0
	ld.bu	$r12,$r4,0
	st.b	$r12,$r5,1
	addi.d	$r5,$r5,2
	addi.d	$r4,$r4,2
	bne	$r4,$r13,.L119
.L117:
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
	sltui	$r13,$r13,1
	xori	$r12,$r4,32
	maskeqz	$r4,$r13,$r12
	sltui	$r12,$r12,1
	or	$r4,$r4,$r12
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
	sltui	$r13,$r13,1
	addi.w	$r12,$r0,31			# 0x1f
	sltu	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r12
	sltui	$r12,$r12,1
	or	$r4,$r4,$r12
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
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,31			# 0x1f
	bleu	$r4,$r13,.L139
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r13,$r14,.L142
	jr	$r1
	.align	5
.L139:
	addi.w	$r4,$r0,1			# 0x1
	jr	$r1
	.align	5
.L142:
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4056
	add.w	$r13,$r12,$r13
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,7
	sltui	$r12,$r12,3
	sltu	$r13,$r4,$r13
	maskeqz	$r12,$r12,$r13
	masknez	$r13,$r4,$r13
	or	$r4,$r12,$r13
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
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,254			# 0xfe
	bleu	$r4,$r13,.L151
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L146
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	add.w	$r13,$r12,$r13
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	bleu	$r13,$r14,.L146
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	add.w	$r13,$r12,$r13
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	bleu	$r13,$r14,.L146
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
.L146:
	jr	$r1
	.align	5
.L151:
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
	fmov.d	$f2,$f0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L159
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L156
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L163
	fsub.d	$f0,$f2,$f1
	jr	$r1
	.align	5
.L163:
	movgr2fr.d	$f0,$r0
.L156:
	jr	$r1
	.align	5
.L159:
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
	fmov.s	$f2,$f0
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L167
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L164
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L171
	fsub.s	$f0,$f2,$f1
	jr	$r1
	.align	5
.L171:
	movgr2fr.w	$f0,$r0
.L164:
	jr	$r1
	.align	5
.L167:
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f1,$r3,8
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L175
	fst.d	$f0,$r3,0
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L172
	ldptr.d	$r12,$r3,0
	srli.d	$r12,$r12,63
	ld.d	$r13,$r3,8
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L174
	fst.d	$f1,$r3,0
	beqz	$r12,.L179
.L172:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L174:
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
.L175:
	.cfi_restore_state
	fld.d	$f0,$r3,8
.L179:
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f1,$r3,12
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L183
	fst.s	$f0,$r3,8
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L180
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L182
	fst.s	$f1,$r3,8
	beqz	$r12,.L187
.L180:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L182:
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
.L183:
	.cfi_restore_state
	fld.s	$f0,$r3,12
.L187:
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
	or	$r25,$r5,$r0
	or	$r24,$r6,$r0
	or	$r23,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L194
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L195
	srli.d	$r12,$r25,63
	srli.d	$r13,$r23,63
	bne	$r12,$r13,.L200
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L194
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L194:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L188:
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
.L200:
	.cfi_restore_state
	maskeqz	$r24,$r24,$r12
	masknez	$r26,$r26,$r12
	or	$r4,$r24,$r26
	maskeqz	$r23,$r23,$r12
	masknez	$r12,$r25,$r12
	or	$r5,$r23,$r12
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
.L195:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L188
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f1,$r3,8
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L204
	fst.d	$f0,$r3,0
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L201
	ldptr.d	$r12,$r3,0
	srli.d	$r12,$r12,63
	ld.d	$r13,$r3,8
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L203
	beqz	$r12,.L208
.L201:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L203:
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
.L204:
	.cfi_restore_state
	fld.d	$f0,$r3,8
.L208:
	fst.d	$f0,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f1,$r3,12
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L212
	fst.s	$f0,$r3,8
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L209
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L211
	beqz	$r12,.L216
.L209:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L211:
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
.L212:
	.cfi_restore_state
	fld.s	$f0,$r3,12
.L216:
	fst.s	$f0,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	or	$r26,$r6,$r0
	or	$r25,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L223
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L224
	srli.d	$r12,$r23,63
	srli.d	$r13,$r25,63
	bne	$r12,$r13,.L229
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L224
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L224:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L217:
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
.L229:
	.cfi_restore_state
	maskeqz	$r24,$r24,$r12
	masknez	$r6,$r26,$r12
	or	$r4,$r24,$r6
	maskeqz	$r23,$r23,$r12
	masknez	$r7,$r25,$r12
	or	$r5,$r23,$r7
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
.L223:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L217
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
	beqz	$r4,.L231
	la.local	$r14,.LANCHOR1
	.align	3
.L232:
	andi	$r13,$r4,63
	ldx.bu	$r13,$r14,$r13
	st.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bstrpick.d	$r4,$r4,31,6
	bnez	$r4,.L232
.L231:
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
	bstrpick.d	$r4,$r4,31,0
	pcalau12i	$r12,%pc_hi20(.LANCHOR0+8)
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
	ld.d	$r4,$r12,8
	lu12i.w	$r13,1284861952>>12			# 0x4c957000
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
	beqz	$r5,.L244
	ldptr.d	$r12,$r5,0
	stptr.d	$r12,$r4,0
	st.d	$r5,$r4,8
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L238
	st.d	$r4,$r12,8
.L238:
	jr	$r1
	.align	5
.L244:
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
	beqz	$r12,.L246
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L246:
	ld.d	$r12,$r4,8
	beqz	$r12,.L245
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L245:
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
	st.d	$r1,$r3,72
	st.d	$r25,$r3,48
	st.d	$r26,$r3,40
	st.d	$r27,$r3,32
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	stptr.d	$r31,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	.cfi_offset 31, -80
	or	$r27,$r4,$r0
	or	$r29,$r5,$r0
	or	$r30,$r6,$r0
	or	$r25,$r7,$r0
	ldptr.d	$r26,$r6,0
	beqz	$r26,.L255
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	st.d	$r28,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 28, -56
	or	$r28,$r8,$r0
	or	$r23,$r5,$r0
	or	$r24,$r0,$r0
	b	.L257
	.align	5
.L272:
	addi.d	$r24,$r24,1
	add.d	$r23,$r23,$r25
	beq	$r26,$r24,.L271
.L257:
	or	$r31,$r23,$r0
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r28,0
	bnez	$r4,.L272
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ld.d	$r28,$r3,24
	.cfi_restore 28
.L254:
	or	$r4,$r31,$r0
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
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L271:
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
	ld.d	$r28,$r3,24
	.cfi_restore 28
.L255:
	addi.d	$r12,$r26,1
	stptr.d	$r12,$r30,0
	mul.d	$r26,$r25,$r26
	add.d	$r31,$r29,$r26
	beqz	$r25,.L254
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	or	$r4,$r31,$r0
	bl	%plt(memmove)
	b	.L254
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
	st.d	$r1,$r3,56
	st.d	$r28,$r3,8
	stptr.d	$r29,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	ldptr.d	$r28,$r6,0
	beqz	$r28,.L274
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
	b	.L276
	.align	5
.L287:
	addi.d	$r24,$r24,1
	add.d	$r23,$r23,$r27
	beq	$r28,$r24,.L286
.L276:
	or	$r29,$r23,$r0
	or	$r5,$r23,$r0
	or	$r4,$r25,$r0
	jirl	$r1,$r26,0
	bnez	$r4,.L287
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
.L273:
	or	$r4,$r29,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r28,$r3,8
	.cfi_restore 28
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L286:
	.cfi_def_cfa_offset 64
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
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
.L274:
	or	$r29,$r0,$r0
	b	.L273
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
	.align	3
.L290:
	ld.b	$r13,$r4,0
	beq	$r13,$r14,.L292
	addi.w	$r12,$r13,-9
	sltui	$r12,$r12,5
	beqz	$r12,.L303
.L292:
	addi.d	$r4,$r4,1
	b	.L290
	.align	5
.L303:
	addi.w	$r14,$r0,43			# 0x2b
	beq	$r13,$r14,.L299
	addi.w	$r14,$r0,45			# 0x2d
	or	$r15,$r0,$r0
	beq	$r13,$r14,.L304
.L294:
	ld.b	$r13,$r4,0
	addi.w	$r13,$r13,-48
	addi.w	$r16,$r0,9			# 0x9
	addi.w	$r14,$r0,9			# 0x9
	bgtu	$r13,$r16,.L296
	.align	3
.L295:
	alsl.w	$r12,$r12,$r12,2
	slli.w	$r12,$r12,1
	addi.d	$r4,$r4,1
	ext.w.b	$r13,$r13
	sub.w	$r12,$r12,$r13
	ld.b	$r13,$r4,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L295
.L296:
	sub.w	$r4,$r0,$r12
	masknez	$r4,$r4,$r15
	maskeqz	$r15,$r12,$r15
	or	$r4,$r4,$r15
	jr	$r1
	.align	5
.L304:
	addi.w	$r15,$r0,1			# 0x1
	addi.d	$r4,$r4,1
	b	.L294
	.align	5
.L299:
	or	$r15,$r0,$r0
	addi.d	$r4,$r4,1
	b	.L294
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
	addi.w	$r13,$r0,32			# 0x20
	.align	3
.L306:
	ld.b	$r12,$r4,0
	beq	$r12,$r13,.L308
	addi.w	$r14,$r12,-9
	sltui	$r14,$r14,5
	beqz	$r14,.L318
.L308:
	addi.d	$r4,$r4,1
	b	.L306
	.align	5
.L318:
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L309
	addi.w	$r13,$r0,45			# 0x2d
	beq	$r12,$r13,.L319
.L310:
	ld.b	$r12,$r4,0
	addi.w	$r12,$r12,-48
	addi.w	$r16,$r0,9			# 0x9
	or	$r13,$r0,$r0
	addi.w	$r15,$r0,9			# 0x9
	bgtu	$r12,$r16,.L312
	.align	3
.L311:
	alsl.d	$r13,$r13,$r13,2
	slli.d	$r13,$r13,1
	addi.d	$r4,$r4,1
	ext.w.b	$r12,$r12
	sub.d	$r13,$r13,$r12
	ld.b	$r12,$r4,0
	addi.w	$r12,$r12,-48
	bleu	$r12,$r15,.L311
.L312:
	sub.d	$r4,$r0,$r13
	masknez	$r4,$r4,$r14
	maskeqz	$r14,$r13,$r14
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L319:
	addi.w	$r14,$r0,1			# 0x1
.L309:
	addi.d	$r4,$r4,1
	b	.L310
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
	b	atol
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
	beqz	$r6,.L322
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
	or	$r26,$r5,$r0
	or	$r23,$r6,$r0
	or	$r25,$r7,$r0
	or	$r28,$r8,$r0
	.align	3
.L325:
	srli.d	$r29,$r23,1
	mul.d	$r24,$r29,$r25
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r28,0
	blt	$r4,$r0,.L326
	ble	$r4,$r0,.L332
	add.d	$r26,$r24,$r25
	addi.d	$r23,$r23,-1
	sub.d	$r23,$r23,$r29
	bnez	$r23,.L325
.L333:
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
.L322:
	or	$r24,$r0,$r0
	b	.L321
	.align	5
.L326:
	.cfi_offset 23, -16
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r23,$r29,$r0
	bnez	$r23,.L325
	b	.L333
	.align	5
.L332:
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
.L321:
	or	$r4,$r24,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
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
	st.d	$r1,$r3,72
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	slli.w	$r24,$r6,0
	beqz	$r24,.L335
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
	b	.L338
	.align	5
.L349:
	ble	$r4,$r0,.L337
	add.d	$r26,$r23,$r25
	addi.w	$r24,$r24,-1
	srai.w	$r30,$r24,1
.L337:
	slli.w	$r24,$r30,0
	beqz	$r24,.L348
.L338:
	srai.w	$r30,$r24,1
	srai.d	$r23,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r6,$r27,$r0
	or	$r5,$r23,$r0
	or	$r4,$r29,$r0
	jirl	$r1,$r28,0
	bnez	$r4,.L349
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
.L334:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L348:
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
.L335:
	or	$r23,$r0,$r0
	b	.L334
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
	div.w	$r13,$r4,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	mod.w	$r12,$r12,$r5
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
	b	.L366
	.align	5
.L369:
	beq	$r5,$r12,.L368
	addi.d	$r4,$r4,4
.L366:
	ldptr.w	$r12,$r4,0
	bnez	$r12,.L369
.L363:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L368:
	beqz	$r5,.L363
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
	ldptr.w	$r12,$r4,0
	ldptr.w	$r14,$r5,0
	addi.w	$r13,$r0,4			# 0x4
	addi.d	$r5,$r5,-4
	bne	$r12,$r14,.L372
	.align	3
.L371:
	beqz	$r12,.L372
	beqz	$r14,.L372
	ldx.w	$r12,$r4,$r13
	addi.d	$r13,$r13,4
	ldx.w	$r14,$r5,$r13
	beq	$r12,$r14,.L371
.L372:
	slt	$r4,$r14,$r12
	slt	$r12,$r12,$r14
	masknez	$r4,$r4,$r12
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	maskeqz	$r12,$r13,$r12
	or	$r4,$r4,$r12
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
.L382:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bnez	$r13,.L382
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
	beqz	$r12,.L387
	or	$r12,$r4,$r0
	.align	3
.L386:
	addi.d	$r12,$r12,4
	ldptr.w	$r13,$r12,0
	bnez	$r13,.L386
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
	.align	5
.L387:
	or	$r12,$r4,$r0
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
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
	beqz	$r6,.L394
	.align	3
.L403:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r12,$r13,.L391
	beqz	$r12,.L391
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L403
.L394:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L391:
	beqz	$r6,.L394
	ldptr.w	$r12,$r4,0
	ldptr.w	$r13,$r5,0
	slt	$r4,$r13,$r12
	slt	$r12,$r12,$r13
	masknez	$r4,$r4,$r12
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	maskeqz	$r12,$r13,$r12
	or	$r4,$r4,$r12
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
	beqz	$r6,.L410
	.align	3
.L416:
	ldptr.w	$r12,$r4,0
	beq	$r12,$r5,.L415
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	bnez	$r6,.L416
.L410:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L415:
	beqz	$r6,.L410
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
	beqz	$r6,.L422
	.align	3
.L432:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r13,$r12,.L431
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L432
.L422:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L431:
	beqz	$r6,.L422
	or	$r12,$r13,$r0
	ldptr.w	$r13,$r5,0
	slt	$r4,$r13,$r12
	slt	$r12,$r12,$r13
	masknez	$r4,$r4,$r12
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	maskeqz	$r12,$r13,$r12
	or	$r4,$r4,$r12
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
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	beqz	$r6,.L434
	slli.d	$r6,$r6,2
	bl	%plt(memcpy)
.L434:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,8
	.cfi_restore 1
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
	beq	$r4,$r5,.L440
	addi.d	$r12,$r6,-1
	sub.d	$r13,$r4,$r5
	slli.d	$r14,$r6,2
	bgeu	$r13,$r14,.L451
	beqz	$r6,.L440
	slli.d	$r12,$r12,2
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	.align	3
.L443:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,-4
	bne	$r12,$r14,.L443
	jr	$r1
	.align	5
.L451:
	or	$r13,$r0,$r0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L452
	.align	3
.L442:
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	addi.d	$r12,$r12,-1
	addi.d	$r13,$r13,4
	bne	$r12,$r15,.L442
.L440:
	jr	$r1
	.align	5
.L452:
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
	addi.d	$r12,$r6,-1
	beqz	$r6,.L454
	or	$r13,$r4,$r0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	.align	3
.L455:
	addi.d	$r13,$r13,4
	st.w	$r5,$r13,-4
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L455
.L454:
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
	bgeu	$r4,$r5,.L461
	beqz	$r6,.L460
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
	.align	3
.L463:
	ldx.b	$r12,$r4,$r6
	stx.b	$r12,$r5,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L463
	jr	$r1
	.align	5
.L461:
	beq	$r4,$r5,.L460
	beqz	$r6,.L460
	or	$r12,$r0,$r0
	.align	3
.L464:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L464
.L460:
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
	sll.w	$r12,$r4,$r5
	sub.d	$r5,$r0,$r5
	andi	$r5,$r5,15
	srl.w	$r4,$r4,$r5
	or	$r4,$r12,$r4
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
	srl.w	$r12,$r4,$r5
	sub.d	$r5,$r0,$r5
	andi	$r5,$r5,15
	sll.w	$r4,$r4,$r5
	or	$r4,$r12,$r4
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
	sll.w	$r12,$r4,$r5
	sub.d	$r5,$r0,$r5
	andi	$r5,$r5,7
	srl.w	$r4,$r4,$r5
	or	$r4,$r12,$r4
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
	srl.w	$r12,$r4,$r5
	sub.d	$r5,$r0,$r5
	andi	$r5,$r5,7
	sll.w	$r4,$r4,$r5
	or	$r4,$r12,$r4
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
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,32			# 0x20
	b	.L489
	.align	5
.L487:
	beq	$r12,$r14,.L491
.L489:
	srl.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	addi.w	$r12,$r12,1
	beqz	$r13,.L487
	or	$r4,$r12,$r0
	jr	$r1
	.align	5
.L491:
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
	beqz	$r4,.L495
	andi	$r4,$r4,1
	bnez	$r4,.L493
	addi.w	$r4,$r0,1			# 0x1
	.align	3
.L494:
	srai.d	$r12,$r12,1
	addi.w	$r4,$r4,1
	andi	$r13,$r12,1
	beqz	$r13,.L494
	jr	$r1
	.align	5
.L495:
	or	$r4,$r0,$r0
.L493:
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
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L499
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L499:
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
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC4)
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L502
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L502:
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
	blt	$r4,$r0,.L507
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__gttf2)
	slt	$r4,$r0,$r4
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
	.align	5
.L507:
	.cfi_restore_state
	addi.w	$r4,$r0,1			# 0x1
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r23,$r3,16
	.cfi_restore 23
	ld.d	$r24,$r3,8
	.cfi_restore 24
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
	.align	3
	.globl	ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89 = .
	.cfi_startproc
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L512
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L512
	pcalau12i	$r12,%pc_hi20(.LC10)
	fld.s	$f1,$r12,%pc_lo12(.LC10)
	bge	$r4,$r0,.L515
	pcalau12i	$r12,%pc_hi20(.LC11)
	fld.s	$f1,$r12,%pc_lo12(.LC11)
	b	.L515
	.align	5
.L523:
	fmul.s	$f1,$f1,$f1
.L515:
	andi	$r12,$r4,1
	beqz	$r12,.L514
	fmul.s	$f0,$f0,$f1
.L514:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	bnez	$r4,.L523
.L512:
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
	bcnez	$fcc0,.L525
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L525
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	bge	$r4,$r0,.L528
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	b	.L528
	.align	5
.L536:
	fmul.d	$f1,$f1,$f1
.L528:
	andi	$r12,$r4,1
	beqz	$r12,.L527
	fmul.d	$f0,$f0,$f1
.L527:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	bnez	$r4,.L536
.L525:
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
	st.d	$r1,$r3,40
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	or	$r23,$r6,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L538
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__addtf3)
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L538
	blt	$r23,$r0,.L552
	la.local	$r12,.LC14
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L542
	.align	5
.L553:
	or	$r4,$r6,$r0
	or	$r5,$r7,$r0
	bl	%plt(__multf3)
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
.L542:
	andi	$r12,$r23,1
	beqz	$r12,.L541
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__multf3)
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	ld.d	$r6,$r3,8
	ldptr.d	$r7,$r3,0
.L541:
	srli.w	$r12,$r23,31
	add.w	$r23,$r12,$r23
	srai.d	$r23,$r23,1
	bnez	$r23,.L553
.L538:
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L552:
	.cfi_restore_state
	la.local	$r12,.LC15
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L542
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
	beqz	$r6,.L555
	or	$r12,$r0,$r0
	.align	3
.L556:
	ldx.bu	$r13,$r4,$r12
	ldx.bu	$r14,$r5,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L556
.L555:
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
	beqz	$r13,.L576
	.align	3
.L563:
	addi.d	$r12,$r12,1
	ld.bu	$r13,$r12,0
	bnez	$r13,.L563
.L576:
	beqz	$r6,.L570
	.align	3
.L578:
	ld.b	$r13,$r5,0
	st.b	$r13,$r12,0
	beqz	$r13,.L577
	addi.d	$r5,$r5,1
	addi.d	$r12,$r12,1
	addi.d	$r6,$r6,-1
	bnez	$r6,.L578
.L570:
	st.b	$r0,$r12,0
.L567:
	jr	$r1
	.align	5
.L577:
	bnez	$r6,.L567
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
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r5,.L587
.L580:
	ldx.bu	$r13,$r12,$r4
	bnez	$r13,.L582
	jr	$r1
	.align	5
.L582:
	addi.d	$r4,$r4,1
	bne	$r5,$r4,.L580
	jr	$r1
	.align	5
.L587:
	jr	$r1
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
	beqz	$r14,.L593
.L597:
	or	$r12,$r5,$r0
	b	.L592
	.align	5
.L591:
	addi.d	$r12,$r12,1
	beq	$r13,$r14,.L590
.L592:
	ld.b	$r13,$r12,0
	bnez	$r13,.L591
	addi.d	$r4,$r4,1
	ld.b	$r14,$r4,0
	bnez	$r14,.L597
.L593:
	or	$r4,$r0,$r0
.L590:
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
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	.align	3
.L600:
	ld.b	$r14,$r13,0
	xor	$r12,$r14,$r5
	maskeqz	$r4,$r4,$r12
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	addi.d	$r13,$r13,1
	bnez	$r14,.L600
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
	ld.b	$r16,$r5,0
	or	$r12,$r5,$r0
	beqz	$r16,.L604
	.align	3
.L605:
	addi.d	$r12,$r12,1
	ld.bu	$r13,$r12,0
	bnez	$r13,.L605
.L604:
	sub.d	$r18,$r12,$r5
	addi.d	$r18,$r18,-1
	bne	$r12,$r5,.L612
	jr	$r1
	.align	5
.L629:
	addi.d	$r4,$r4,1
	beqz	$r12,.L628
.L612:
	ld.b	$r12,$r4,0
	bne	$r12,$r16,.L629
	beqz	$r4,.L606
	ld.bu	$r13,$r4,0
	beqz	$r13,.L615
	add.d	$r17,$r4,$r18
	or	$r14,$r5,$r0
	or	$r12,$r4,$r0
	b	.L609
	.align	5
.L630:
	beq	$r12,$r17,.L608
	bne	$r15,$r13,.L608
	addi.d	$r12,$r12,1
	addi.d	$r14,$r14,1
	ld.bu	$r13,$r12,0
	beqz	$r13,.L608
.L609:
	ld.bu	$r15,$r14,0
	bnez	$r15,.L630
.L608:
	ld.bu	$r12,$r14,0
	beq	$r12,$r13,.L606
	addi.d	$r4,$r4,1
	b	.L612
	.align	5
.L628:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L606:
	jr	$r1
.L615:
	or	$r14,$r5,$r0
	b	.L608
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
.L632:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L635
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L634
.L635:
	jr	$r1
	.align	5
.L640:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L632
.L634:
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
	or	$r17,$r4,$r0
	beqz	$r7,.L641
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L641
	sub.d	$r18,$r5,$r7
	add.d	$r18,$r17,$r18
	bgtu	$r17,$r18,.L641
	ld.b	$r19,$r6,0
	.align	3
.L648:
	ld.b	$r12,$r17,0
	or	$r4,$r17,$r0
	addi.d	$r17,$r17,1
	beq	$r12,$r19,.L663
.L643:
	bleu	$r17,$r18,.L648
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L663:
	addi.d	$r13,$r6,1
	addi.d	$r12,$r7,-1
	beqz	$r12,.L664
	or	$r14,$r17,$r0
	b	.L644
	.align	5
.L646:
	addi.d	$r12,$r12,-1
	addi.d	$r14,$r14,1
	addi.d	$r13,$r13,1
	beqz	$r12,.L665
.L644:
	ld.bu	$r16,$r14,0
	ld.bu	$r15,$r13,0
	beq	$r16,$r15,.L646
	beqz	$r12,.L641
	ld.bu	$r12,$r14,0
	ld.bu	$r13,$r13,0
	sub.w	$r12,$r12,$r13
	bnez	$r12,.L643
.L641:
	jr	$r1
	.align	5
.L665:
	jr	$r1
.L664:
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
	st.d	$r1,$r3,24
	st.d	$r23,$r3,16
	st.d	$r24,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	or	$r24,$r4,$r0
	or	$r23,$r6,$r0
	beqz	$r6,.L667
	bl	%plt(memmove)
.L667:
	add.d	$r4,$r24,$r23
	ld.d	$r1,$r3,24
	.cfi_restore 1
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
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L697
	or	$r13,$r0,$r0
.L673:
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f2,$r12,%pc_lo12(.LC16)
	or	$r12,$r0,$r0
	pcalau12i	$r14,%pc_hi20(.LC13)
	fld.d	$f1,$r14,%pc_lo12(.LC13)
	fcmp.sge.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L695
	.align	3
.L677:
	addi.w	$r12,$r12,1
	fmul.d	$f0,$f0,$f1
	fcmp.sge.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L677
.L678:
	stptr.w	$r12,$r4,0
	beqz	$r13,.L681
	fneg.d	$f0,$f0
.L681:
	jr	$r1
	.align	5
.L697:
	fneg.d	$f0,$f0
	addi.w	$r13,$r0,1			# 0x1
	b	.L673
	.align	5
.L695:
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L678
	movgr2fr.d	$f2,$r0
	fcmp.ceq.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L678
	.align	3
.L680:
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L678
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L680
	b	.L678
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
	beqz	$r13,.L701
	.align	3
.L700:
	andi	$r12,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r12,$r5
	add.d	$r4,$r4,$r12
	slli.d	$r5,$r5,1
	srli.d	$r13,$r13,1
	bnez	$r13,.L700
	jr	$r1
	.align	5
.L701:
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
	bgeu	$r5,$r4,.L720
	.align	3
.L704:
	blt	$r5,$r0,.L705
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L705
	addi.w	$r13,$r13,-1
	bnez	$r13,.L704
.L713:
	or	$r13,$r0,$r0
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L705:
	beqz	$r12,.L713
.L720:
	or	$r13,$r0,$r0
	.align	3
.L709:
	bltu	$r4,$r5,.L708
	sub.w	$r4,$r4,$r5
	or	$r13,$r12,$r13
	slli.w	$r13,$r13,0
.L708:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L709
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
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
	srai.w	$r12,$r4,7
	ext.w.b	$r12,$r12
	xor	$r13,$r4,$r12
	slli.w	$r12,$r13,8
	clz.w	$r12,$r12
	addi.w	$r12,$r12,-1
	maskeqz	$r12,$r12,$r13
	addi.w	$r14,$r0,7			# 0x7
	masknez	$r4,$r14,$r13
	or	$r4,$r12,$r4
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
	.align	3
	.globl	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106 = .
	.cfi_startproc
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r13,.L730
	.align	3
.L729:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r12,$r4
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L729
	jr	$r1
	.align	5
.L730:
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
	srli.w	$r15,$r6,3
	bstrpick.d	$r14,$r6,31,3
	addi.w	$r12,$r0,-8			# 0xfffffffffffffff8
	and	$r12,$r6,$r12
	bltu	$r4,$r5,.L733
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bleu	$r4,$r13,.L747
.L733:
	beqz	$r14,.L736
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,3
	or	$r13,$r0,$r0
	.align	3
.L737:
	ldx.d	$r14,$r5,$r13
	stx.d	$r14,$r4,$r13
	addi.d	$r13,$r13,8
	bne	$r15,$r13,.L737
.L736:
	bleu	$r6,$r12,.L732
	bstrpick.d	$r12,$r12,31,0
	.align	3
.L738:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bltu	$r13,$r6,.L738
	jr	$r1
	.align	5
.L747:
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L748
	.align	3
.L739:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L739
.L732:
	jr	$r1
.L748:
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
	bltu	$r4,$r5,.L750
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L765
.L750:
	beqz	$r13,.L753
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r14,$r14,1
	or	$r12,$r0,$r0
	.align	3
.L754:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r14,$r12,.L754
.L753:
	andi	$r12,$r6,1
	beqz	$r12,.L749
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
	.align	5
.L765:
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L766
	.align	3
.L755:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L755
.L749:
	jr	$r1
.L766:
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
	srli.w	$r15,$r6,2
	bstrpick.d	$r14,$r6,31,2
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r12,$r6,$r12
	bltu	$r4,$r5,.L768
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bleu	$r4,$r13,.L782
.L768:
	beqz	$r14,.L771
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,2
	or	$r13,$r0,$r0
	.align	3
.L772:
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	addi.d	$r13,$r13,4
	bne	$r15,$r13,.L772
.L771:
	bleu	$r6,$r12,.L767
	bstrpick.d	$r12,$r12,31,0
	.align	3
.L773:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bltu	$r13,$r6,.L773
	jr	$r1
	.align	5
.L782:
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L783
	.align	3
.L774:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L774
.L767:
	jr	$r1
.L783:
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
	blt	$r4,$r0,.L789
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.align	5
.L789:
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
	blt	$r4,$r0,.L792
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.align	5
.L792:
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
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	addi.w	$r14,$r0,15			# 0xf
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L796:
	sub.w	$r12,$r14,$r4
	sra.w	$r12,$r13,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L795
	addi.w	$r4,$r4,1
	bne	$r4,$r15,.L796
.L795:
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
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	addi.w	$r14,$r0,16			# 0x10
	.align	3
.L800:
	sra.w	$r12,$r13,$r4
	andi	$r12,$r12,1
	bnez	$r12,.L799
	addi.w	$r4,$r4,1
	bne	$r4,$r14,.L800
.L799:
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
	pcalau12i	$r12,%pc_hi20(.LC17)
	fld.s	$f1,$r12,%pc_lo12(.LC17)
	fcmp.sge.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L808
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
	.align	5
.L808:
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
	.align	3
	.globl	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119 = .
	.cfi_startproc
	or	$r14,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L810:
	sra.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	add.w	$r14,$r13,$r14
	addi.w	$r12,$r12,1
	bne	$r12,$r15,.L810
	andi	$r4,$r14,1
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
	or	$r14,$r4,$r0
	or	$r4,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L813:
	sra.w	$r13,$r14,$r12
	andi	$r13,$r13,1
	add.w	$r4,$r13,$r4
	addi.w	$r12,$r12,1
	bne	$r12,$r15,.L813
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
	beqz	$r13,.L818
	.align	3
.L817:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r12,$r4
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L817
	jr	$r1
	.align	5
.L818:
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
	beqz	$r13,.L821
	beqz	$r5,.L821
	.align	3
.L822:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	add.w	$r4,$r12,$r4
	slli.w	$r13,$r13,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r5,.L822
	jr	$r1
	.align	5
.L821:
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
	bgeu	$r5,$r4,.L844
	.align	3
.L828:
	blt	$r5,$r0,.L829
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L829
	addi.w	$r13,$r13,-1
	bnez	$r13,.L828
.L837:
	or	$r13,$r0,$r0
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L829:
	beqz	$r12,.L837
.L844:
	or	$r13,$r0,$r0
	.align	3
.L833:
	bltu	$r4,$r5,.L832
	sub.w	$r4,$r4,$r5
	or	$r13,$r12,$r13
	slli.w	$r13,$r13,0
.L832:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L833
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
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
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L846
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L846:
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
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L849
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L849:
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
	or	$r15,$r0,$r0
	bge	$r5,$r0,.L854
	sub.w	$r5,$r0,$r5
	addi.w	$r15,$r0,1			# 0x1
.L854:
	or	$r14,$r0,$r0
	beqz	$r5,.L855
	addi.w	$r13,$r0,32			# 0x20
	b	.L856
	.align	5
.L867:
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	beqz	$r13,.L855
.L856:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r4,$r12
	add.w	$r14,$r12,$r14
	slli.w	$r4,$r4,1
	srai.d	$r5,$r5,1
	bnez	$r5,.L867
.L855:
	sub.w	$r4,$r0,$r14
	maskeqz	$r4,$r4,$r15
	masknez	$r15,$r14,$r15
	or	$r4,$r4,$r15
	jr	$r1
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
	or	$r15,$r0,$r0
	blt	$r4,$r0,.L890
.L869:
	bge	$r5,$r0,.L870
	sub.d	$r5,$r0,$r5
	xori	$r15,$r15,1
.L870:
	slli.w	$r13,$r4,0
	slli.w	$r5,$r5,0
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bleu	$r13,$r5,.L889
	.align	3
.L871:
	blt	$r5,$r0,.L872
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r13,$r5,.L872
	addi.w	$r14,$r14,-1
	bnez	$r14,.L871
.L881:
	or	$r14,$r0,$r0
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r4,$r0,$r14
	maskeqz	$r4,$r4,$r15
	masknez	$r15,$r14,$r15
	or	$r4,$r4,$r15
	jr	$r1
	.align	5
.L872:
	beqz	$r12,.L881
.L889:
	or	$r14,$r0,$r0
	.align	3
.L876:
	bltu	$r13,$r5,.L875
	sub.w	$r13,$r13,$r5
	or	$r14,$r12,$r14
.L875:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L876
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r4,$r0,$r14
	maskeqz	$r4,$r4,$r15
	masknez	$r15,$r14,$r15
	or	$r4,$r4,$r15
	jr	$r1
	.align	5
.L890:
	sub.d	$r4,$r0,$r4
	addi.w	$r15,$r0,1			# 0x1
	b	.L869
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
	or	$r17,$r0,$r0
	bge	$r4,$r0,.L892
	sub.d	$r4,$r0,$r4
	addi.w	$r17,$r0,1			# 0x1
.L892:
	slli.w	$r13,$r4,0
	srai.d	$r12,$r5,63
	xor	$r5,$r12,$r5
	sub.w	$r12,$r5,$r12
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bleu	$r13,$r12,.L907
	.align	3
.L893:
	blt	$r12,$r0,.L912
	slli.w	$r12,$r12,1
	slli.w	$r14,$r14,1
	bleu	$r13,$r12,.L912
	addi.w	$r15,$r15,-1
	bnez	$r15,.L893
.L896:
	bstrpick.d	$r13,$r13,31,0
	sub.d	$r4,$r0,$r13
	maskeqz	$r4,$r4,$r17
	masknez	$r17,$r13,$r17
	or	$r4,$r4,$r17
	jr	$r1
	.align	5
.L912:
	beqz	$r14,.L896
.L907:
	sub.w	$r15,$r13,$r12
	sltu	$r16,$r13,$r12
	masknez	$r15,$r15,$r16
	maskeqz	$r13,$r13,$r16
	or	$r13,$r15,$r13
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r12,$r12,31,1
	b	.L912
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
	slli.w	$r14,$r5,0
	slli.w	$r13,$r4,0
	addi.w	$r15,$r0,16			# 0x10
	addi.w	$r12,$r0,1			# 0x1
	bgeu	$r5,$r4,.L930
	.align	3
.L914:
	srli.d	$r16,$r5,15
	bnez	$r16,.L915
	slli.w	$r5,$r5,1
	bstrpick.w	$r5,$r5,15,0
	slli.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r5,0
	bleu	$r13,$r5,.L915
	addi.w	$r15,$r15,-1
	bnez	$r15,.L914
.L923:
	or	$r15,$r0,$r0
.L917:
	masknez	$r15,$r15,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r15,$r4
	jr	$r1
	.align	5
.L915:
	beqz	$r12,.L923
.L930:
	or	$r15,$r0,$r0
	.align	3
.L919:
	bltu	$r13,$r14,.L918
	sub.w	$r4,$r4,$r5
	bstrpick.w	$r4,$r4,15,0
	or	$r15,$r12,$r15
	bstrpick.w	$r15,$r15,15,0
.L918:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	beqz	$r12,.L917
	slli.w	$r14,$r5,0
	slli.w	$r13,$r4,0
	b	.L919
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
	addi.w	$r13,$r0,64			# 0x40
	addi.w	$r12,$r0,1			# 0x1
	lu12i.w	$r15,-2147483648>>12			# 0xffffffff80000000
	lu32i.d	$r15,0>>32
	bltu	$r5,$r4,.L932
	b	.L948
	.align	5
.L934:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L933
	addi.w	$r13,$r13,-1
	beqz	$r13,.L941
.L932:
	and	$r14,$r5,$r15
	beqz	$r14,.L934
.L933:
	beqz	$r12,.L941
.L948:
	or	$r13,$r0,$r0
	.align	3
.L937:
	bltu	$r4,$r5,.L936
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L936:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	bnez	$r12,.L937
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L941:
	or	$r13,$r0,$r0
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
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
	beqz	$r13,.L950
	sll.w	$r5,$r4,$r5
	or	$r14,$r0,$r0
.L951:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r14,31,0
	bstrins.d	$r4,$r5,63,32
.L949:
	jr	$r1
	.align	5
.L950:
	beqz	$r5,.L949
	sll.w	$r14,$r4,$r5
	sub.w	$r13,$r0,$r5
	srl.w	$r13,$r4,$r13
	srai.d	$r12,$r4,32
	sll.w	$r5,$r12,$r5
	or	$r12,$r13,$r5
	slli.w	$r5,$r12,0
	b	.L951
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
	or	$r12,$r4,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L956
	sll.d	$r5,$r4,$r6
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L956:
	beqz	$r6,.L958
	sll.d	$r4,$r4,$r6
	sub.w	$r14,$r0,$r6
	srl.d	$r12,$r12,$r14
	sll.d	$r5,$r5,$r6
	or	$r5,$r12,$r5
.L958:
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
	beqz	$r13,.L962
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	sra.w	$r5,$r12,$r5
.L963:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r5,31,0
.L961:
	jr	$r1
	.align	5
.L962:
	beqz	$r5,.L961
	srai.d	$r14,$r4,32
	sra.w	$r13,$r14,$r5
	sub.w	$r15,$r0,$r5
	sll.w	$r14,$r14,$r15
	srl.w	$r5,$r4,$r5
	or	$r14,$r14,$r5
	slli.w	$r5,$r14,0
	b	.L963
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
	or	$r12,$r5,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L968
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
	.align	5
.L968:
	beqz	$r6,.L970
	sra.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L970:
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
	srl.w	$r12,$r4,$r12
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	and	$r13,$r13,$r12
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,3
	addi.w	$r15,$r0,8			# 0x8
	sub.w	$r15,$r15,$r13
	srl.w	$r12,$r12,$r15
	add.w	$r13,$r13,$r14
	andi	$r14,$r12,240
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,2
	addi.w	$r15,$r0,4			# 0x4
	sub.w	$r15,$r15,$r14
	srl.w	$r12,$r12,$r15
	add.w	$r14,$r14,$r13
	andi	$r13,$r12,12
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,1
	addi.w	$r4,$r0,2			# 0x2
	sub.w	$r15,$r4,$r13
	srl.w	$r12,$r12,$r15
	sub.w	$r4,$r4,$r12
	andi	$r12,$r12,2
	masknez	$r4,$r4,$r12
	add.w	$r13,$r13,$r14
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
	and	$r12,$r12,$r5
	masknez	$r5,$r4,$r5
	or	$r12,$r12,$r5
	clz.d	$r12,$r12
	slli.d	$r4,$r13,6
	add.d	$r4,$r4,$r12
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
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	blt	$r14,$r13,.L979
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L978
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L978
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L979:
	or	$r4,$r0,$r0
.L978:
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
	srai.d	$r12,$r5,32
	or	$r13,$r0,$r0
	blt	$r14,$r12,.L984
	addi.w	$r13,$r0,2			# 0x2
	bgt	$r14,$r12,.L984
	slli.w	$r12,$r4,0
	slli.w	$r5,$r5,0
	or	$r13,$r0,$r0
	bltu	$r12,$r5,.L984
	sltu	$r13,$r5,$r12
	addi.d	$r13,$r13,1
.L984:
	addi.w	$r4,$r13,-1
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
	blt	$r5,$r7,.L991
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L990
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L990
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L991:
	or	$r4,$r0,$r0
.L990:
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
	add.w	$r14,$r13,$r14
	andi	$r13,$r12,3
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,1
	srl.w	$r12,$r12,$r13
	andi	$r12,$r12,3
	nor	$r4,$r0,$r12
	andi	$r4,$r4,1
	srli.w	$r12,$r12,1
	addi.w	$r15,$r0,2			# 0x2
	sub.w	$r12,$r15,$r12
	sub.w	$r4,$r0,$r4
	and	$r4,$r4,$r12
	add.w	$r13,$r13,$r14
	add.w	$r4,$r13,$r4
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
	masknez	$r5,$r5,$r4
	addi.w	$r13,$r12,-1
	and	$r13,$r13,$r4
	or	$r5,$r5,$r13
	ctz.d	$r5,$r5
	slli.d	$r4,$r12,6
	add.d	$r4,$r4,$r5
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
	bnez	$r4,.L998
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
	.align	5
.L998:
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
	beqz	$r13,.L1002
	bstrpick.d	$r12,$r4,63,32
	srl.w	$r5,$r12,$r5
	or	$r14,$r0,$r0
.L1003:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r14,63,32
	bstrins.d	$r4,$r5,31,0
.L1001:
	jr	$r1
	.align	5
.L1002:
	beqz	$r5,.L1001
	bstrpick.d	$r13,$r4,63,32
	srl.w	$r14,$r13,$r5
	sub.w	$r15,$r0,$r5
	sll.w	$r13,$r13,$r15
	srl.w	$r5,$r4,$r5
	or	$r13,$r13,$r5
	slli.w	$r5,$r13,0
	b	.L1003
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
	or	$r12,$r5,$r0
	andi	$r14,$r6,64
	beqz	$r14,.L1008
	srl.d	$r4,$r5,$r6
	or	$r5,$r0,$r0
	jr	$r1
	.align	5
.L1008:
	beqz	$r6,.L1010
	srl.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L1010:
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
	bstrpick.w	$r12,$r4,15,0
	bstrpick.w	$r13,$r5,15,0
	mul.w	$r15,$r12,$r13
	srli.w	$r16,$r15,16
	srli.w	$r14,$r4,16
	mul.w	$r13,$r13,$r14
	add.w	$r13,$r13,$r16
	bstrpick.d	$r16,$r15,15,0
	slli.w	$r15,$r13,16
	add.w	$r15,$r15,$r16
	srli.w	$r16,$r15,16
	srli.w	$r5,$r5,16
	mul.w	$r12,$r12,$r5
	add.w	$r12,$r12,$r16
	bstrpick.d	$r15,$r15,15,0
	slli.w	$r16,$r12,16
	add.w	$r15,$r16,$r15
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r15,31,0
	srli.w	$r13,$r13,16
	mul.w	$r14,$r14,$r5
	add.w	$r13,$r13,$r14
	srli.w	$r12,$r12,16
	add.w	$r12,$r12,$r13
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
	or	$r14,$r4,$r0
	bstrpick.w	$r12,$r4,15,0
	bstrpick.w	$r13,$r5,15,0
	mul.w	$r15,$r12,$r13
	srli.w	$r17,$r15,16
	srli.w	$r16,$r4,16
	mul.w	$r13,$r13,$r16
	add.w	$r13,$r13,$r17
	bstrpick.d	$r17,$r15,15,0
	slli.w	$r15,$r13,16
	add.w	$r15,$r15,$r17
	srli.w	$r17,$r15,16
	srli.w	$r18,$r5,16
	mul.w	$r12,$r12,$r18
	add.w	$r12,$r12,$r17
	bstrpick.d	$r15,$r15,15,0
	slli.w	$r17,$r12,16
	add.w	$r15,$r17,$r15
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r15,31,0
	srli.w	$r13,$r13,16
	mul.w	$r16,$r16,$r18
	add.w	$r13,$r13,$r16
	srli.w	$r12,$r12,16
	add.w	$r12,$r12,$r13
	bstrins.d	$r4,$r12,63,32
	srai.d	$r12,$r5,32
	mul.w	$r12,$r14,$r12
	srai.d	$r13,$r4,32
	add.w	$r12,$r12,$r13
	srai.d	$r14,$r14,32
	mul.w	$r5,$r5,$r14
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
	mulw.d.wu	$r14,$r4,$r5
	srli.d	$r12,$r14,32
	srli.d	$r15,$r4,32
	mulw.d.wu	$r13,$r5,$r15
	add.d	$r13,$r13,$r12
	bstrpick.d	$r12,$r13,31,0
	srli.d	$r5,$r5,32
	mulw.d.wu	$r4,$r4,$r5
	add.d	$r12,$r4,$r12
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r4,$r12,32
	srli.d	$r13,$r13,32
	mulw.d.wu	$r15,$r15,$r5
	add.d	$r5,$r13,$r15
	srli.d	$r12,$r12,32
	add.d	$r4,$r14,$r4
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
	srli.d	$r13,$r14,32
	srli.d	$r15,$r4,32
	mulw.d.wu	$r12,$r6,$r15
	add.d	$r12,$r12,$r13
	bstrpick.d	$r17,$r12,31,0
	srli.d	$r16,$r6,32
	mulw.d.wu	$r13,$r4,$r16
	add.d	$r13,$r13,$r17
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r17,$r13,32
	srli.d	$r12,$r12,32
	mulw.d.wu	$r15,$r15,$r16
	add.d	$r12,$r12,$r15
	srli.d	$r13,$r13,32
	add.d	$r12,$r12,$r13
	mul.d	$r7,$r4,$r7
	add.d	$r7,$r7,$r12
	mul.d	$r5,$r6,$r5
	add.d	$r4,$r14,$r17
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
	xor	$r4,$r12,$r4
	srli.w	$r12,$r4,16
	xor	$r4,$r4,$r12
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
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	2
	.align	3
	.globl	__parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156 = .
	.cfi_startproc
	xor	$r4,$r4,$r5
	srai.d	$r12,$r4,32
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
	.align	3
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
	srli.d	$r13,$r4,2
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	and	$r13,$r13,$r12
	and	$r4,$r4,$r12
	add.d	$r13,$r13,$r4
	srli.d	$r12,$r13,4
	add.d	$r12,$r12,$r13
	lu12i.w	$r13,252641280>>12			# 0xf0f0000
	ori	$r13,$r13,3855
	bstrins.d	$r13,$r13,63,32
	and	$r12,$r12,$r13
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
	.align	3
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
	.align	3
	.globl	__powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161 = .
	.cfi_startproc
	fmov.d	$f1,$f0
	or	$r12,$r4,$r0
	pcalau12i	$r13,%pc_hi20(.LC16)
	fld.d	$f0,$r13,%pc_lo12(.LC16)
	b	.L1028
	.align	5
.L1033:
	fmul.d	$f1,$f1,$f1
.L1028:
	andi	$r13,$r12,1
	beqz	$r13,.L1026
	fmul.d	$f0,$f0,$f1
.L1026:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	bnez	$r12,.L1033
	blt	$r4,$r0,.L1034
	jr	$r1
	.align	5
.L1034:
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
	fmov.s	$f1,$f0
	or	$r12,$r4,$r0
	pcalau12i	$r13,%pc_hi20(.LC18)
	fld.s	$f0,$r13,%pc_lo12(.LC18)
	b	.L1038
	.align	5
.L1043:
	fmul.s	$f1,$f1,$f1
.L1038:
	andi	$r13,$r12,1
	beqz	$r13,.L1036
	fmul.s	$f0,$f0,$f1
.L1036:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	bnez	$r12,.L1043
	blt	$r4,$r0,.L1044
	jr	$r1
	.align	5
.L1044:
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
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	bltu	$r14,$r13,.L1047
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L1046
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1046
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1047:
	or	$r4,$r0,$r0
.L1046:
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
	srai.d	$r12,$r5,32
	or	$r13,$r0,$r0
	bltu	$r14,$r12,.L1052
	addi.w	$r13,$r0,2			# 0x2
	bgtu	$r14,$r12,.L1052
	slli.w	$r12,$r4,0
	slli.w	$r5,$r5,0
	or	$r13,$r0,$r0
	bltu	$r12,$r5,.L1052
	sltu	$r13,$r5,$r12
	addi.d	$r13,$r13,1
.L1052:
	addi.w	$r4,$r13,-1
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
	bltu	$r5,$r7,.L1059
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L1058
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1058
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1059:
	or	$r4,$r0,$r0
.L1058:
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
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC17:
	.word	1191182336
	.align	2
.LC18:
	.word	1065353216
	.section	.rodata
	.align	3
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
