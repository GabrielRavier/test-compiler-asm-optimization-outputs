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
	beqz	$r7,.L12
.L11:
	ld.bu	$r12,$r5,0
	st.b	$r12,$r4,0
	slli.w	$r12,$r12,0
	beq	$r6,$r12,.L12
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
	bnez	$r7,.L11
.L12:
	addi.d	$r4,$r4,1
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
	beqz	$r6,.L19
.L18:
	ld.bu	$r12,$r4,0
	beq	$r5,$r12,.L19
	addi.d	$r4,$r4,1
	addi.d	$r6,$r6,-1
	bnez	$r6,.L18
.L19:
	maskeqz	$r4,$r4,$r6
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
	or	$r12,$r4,$r0
	beqz	$r6,.L26
.L25:
	ld.bu	$r14,$r12,0
	ld.bu	$r13,$r5,0
	bne	$r14,$r13,.L26
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,1
	addi.d	$r5,$r5,1
	bnez	$r6,.L25
.L26:
	or	$r4,$r0,$r0
	beqz	$r6,.L28
	ld.bu	$r4,$r12,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
.L28:
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
	beqz	$r6,.L32
	or	$r12,$r0,$r0
.L33:
	ldx.bu	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L33
.L32:
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
.L36:
	beq	$r6,$r14,.L40
	ldx.bu	$r12,$r4,$r6
	addi.d	$r13,$r6,-1
	beq	$r5,$r12,.L41
	or	$r6,$r13,$r0
	b	.L36
.L41:
	add.d	$r4,$r4,$r6
	jr	$r1
.L40:
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
	beqz	$r6,.L43
	add.d	$r6,$r4,$r6
	or	$r12,$r4,$r0
	bstrpick.w	$r5,$r5,7,0
.L44:
	st.b	$r5,$r12,0
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L44
.L43:
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
	beqz	$r12,.L47
.L48:
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	bnez	$r12,.L48
.L47:
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
	beqz	$r12,.L56
.L51:
	ld.bu	$r12,$r4,0
	beq	$r5,$r12,.L50
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,0
	bnez	$r12,.L51
.L50:
	jr	$r1
.L56:
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
.L59:
	ld.b	$r12,$r4,0
	beq	$r5,$r12,.L58
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,-1
	bnez	$r12,.L59
	or	$r4,$r0,$r0
.L58:
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
	bne	$r13,$r12,.L63
.L62:
	ld.b	$r12,$r4,0
	beqz	$r12,.L63
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	ld.b	$r13,$r4,0
	ld.b	$r12,$r5,0
	beq	$r13,$r12,.L62
.L63:
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
	beqz	$r12,.L69
	or	$r12,$r4,$r0
.L68:
	addi.d	$r12,$r12,1
	ld.b	$r13,$r12,0
	bnez	$r13,.L68
.L67:
	sub.d	$r4,$r12,$r4
	jr	$r1
.L69:
	or	$r12,$r4,$r0
	b	.L67
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14 = .
	.cfi_startproc
	beqz	$r6,.L76
	ld.bu	$r12,$r4,0
	beqz	$r12,.L73
	addi.d	$r6,$r6,-1
	add.d	$r12,$r4,$r6
.L74:
	ld.bu	$r13,$r5,0
	beqz	$r13,.L73
	beq	$r4,$r12,.L73
	ld.bu	$r14,$r4,0
	bne	$r14,$r13,.L73
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	ld.bu	$r13,$r4,0
	bnez	$r13,.L74
.L73:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	jr	$r1
.L76:
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
	ble	$r6,$r12,.L77
	addi.d	$r12,$r6,-2
	srli.d	$r12,$r12,1
	addi.d	$r12,$r12,1
	alsl.d	$r12,$r12,$r4,1
.L79:
	ld.b	$r13,$r4,1
	st.b	$r13,$r5,0
	ld.b	$r13,$r4,0
	st.b	$r13,$r5,1
	addi.d	$r5,$r5,2
	addi.d	$r4,$r4,2
	bne	$r4,$r12,.L79
.L77:
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
	bleu	$r4,$r13,.L99
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r13,$r14,.L98
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
.L99:
	addi.w	$r4,$r0,1			# 0x1
.L98:
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
	bleu	$r4,$r13,.L110
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L105
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	bleu	$r13,$r14,.L105
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	bleu	$r13,$r14,.L105
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
.L105:
	jr	$r1
.L110:
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
	bcnez	$fcc0,.L118
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L115
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L122
	fsub.d	$f0,$f2,$f1
	jr	$r1
.L118:
	jr	$r1
.L122:
	movgr2fr.d	$f0,$r0
.L115:
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
	bcnez	$fcc0,.L126
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L123
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L130
	fsub.s	$f0,$f2,$f1
	jr	$r1
.L126:
	jr	$r1
.L130:
	movgr2fr.w	$f0,$r0
.L123:
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
	bcnez	$fcc0,.L136
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L131
	ldptr.d	$r13,$r3,0
	srli.d	$r13,$r13,63
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L133
	ldptr.d	$r12,$r3,0
	bge	$r12,$r0,.L131
	fmov.d	$f0,$f1
	b	.L131
.L133:
	fld.d	$f0,$r3,0
	fld.d	$f2,$r3,8
	fcmp.slt.d	$fcc0,$f0,$f2
	fsel	$f0,$f0,$f2,$fcc0
.L131:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L136:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	b	.L131
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
	bcnez	$fcc0,.L145
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L140
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L142
	ldptr.w	$r12,$r3,8
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	beqz	$r12,.L140
	fmov.s	$f0,$f1
	b	.L140
.L142:
	fld.s	$f0,$r3,8
	fld.s	$f2,$r3,12
	fcmp.slt.s	$fcc0,$f0,$f2
	fsel	$f0,$f0,$f2,$fcc0
.L140:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L145:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	b	.L140
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
	bnez	$r4,.L155
	or	$r6,$r25,$r0
	or	$r7,$r26,$r0
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L156
	srli.d	$r12,$r23,63
	srli.d	$r13,$r26,63
	beq	$r12,$r13,.L151
	masknez	$r24,$r24,$r12
	maskeqz	$r25,$r25,$r12
	or	$r4,$r24,$r25
	masknez	$r23,$r23,$r12
	maskeqz	$r12,$r26,$r12
	or	$r5,$r23,$r12
.L149:
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
.L151:
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
	b	.L149
.L155:
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	b	.L149
.L156:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	b	.L149
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
	bcnez	$fcc0,.L164
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L159
	ldptr.d	$r13,$r3,0
	srli.d	$r13,$r13,63
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L161
	ldptr.d	$r12,$r3,0
	fmov.d	$f0,$f1
	bge	$r12,$r0,.L159
	fld.d	$f0,$r3,0
	b	.L159
.L161:
	fld.d	$f0,$r3,8
	fld.d	$f1,$r3,0
	fcmp.slt.d	$fcc0,$f1,$f0
	fsel	$f0,$f0,$f1,$fcc0
.L159:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L164:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	b	.L159
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
	bcnez	$fcc0,.L173
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L168
	ldptr.w	$r12,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r3,12
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L170
	ldptr.w	$r12,$r3,8
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	fmov.s	$f0,$f1
	beqz	$r12,.L168
	fld.s	$f0,$r3,8
	b	.L168
.L170:
	fld.s	$f0,$r3,12
	fld.s	$f1,$r3,8
	fcmp.slt.s	$fcc0,$f1,$f0
	fsel	$f0,$f0,$f1,$fcc0
.L168:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
.L173:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	b	.L168
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
	bnez	$r4,.L183
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L184
	srli.d	$r12,$r26,63
	srli.d	$r13,$r23,63
	beq	$r12,$r13,.L179
	masknez	$r24,$r24,$r12
	maskeqz	$r25,$r25,$r12
	or	$r4,$r24,$r25
	masknez	$r23,$r23,$r12
	maskeqz	$r12,$r26,$r12
	or	$r5,$r23,$r12
.L177:
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
.L179:
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
	b	.L177
.L183:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	b	.L177
.L184:
	or	$r4,$r25,$r0
	or	$r5,$r26,$r0
	b	.L177
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
	beqz	$r4,.L188
	la.local	$r14,digits
.L189:
	andi	$r13,$r4,63
	ldx.b	$r13,$r14,$r13
	st.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bstrpick.d	$r4,$r4,31,6
	bnez	$r4,.L189
.L188:
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
	beqz	$r5,.L197
	ldptr.d	$r12,$r5,0
	stptr.d	$r12,$r4,0
	st.d	$r5,$r4,8
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L194
	st.d	$r4,$r12,8
.L194:
	jr	$r1
.L197:
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
	beqz	$r12,.L199
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L199:
	ld.d	$r12,$r4,8
	beqz	$r12,.L198
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L198:
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
	beqz	$r26,.L202
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	st.d	$r28,$r3,24
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 28, -56
	or	$r28,$r8,$r0
	or	$r24,$r5,$r0
	or	$r23,$r0,$r0
.L205:
	or	$r5,$r24,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L208
	addi.d	$r23,$r23,1
	add.d	$r24,$r24,$r25
	bne	$r23,$r26,.L205
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ld.d	$r28,$r3,24
	.cfi_restore 28
.L202:
	addi.d	$r12,$r26,1
	stptr.d	$r12,$r30,0
	mul.d	$r26,$r25,$r26
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	add.d	$r4,$r29,$r26
	bl	%plt(memcpy)
.L201:
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
.L208:
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
	b	.L201
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
	beqz	$r29,.L213
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
.L212:
	or	$r5,$r24,$r0
	or	$r4,$r26,$r0
	jirl	$r1,$r27,0
	beqz	$r4,.L216
	addi.d	$r23,$r23,1
	add.d	$r24,$r24,$r25
	bne	$r23,$r29,.L212
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
	b	.L209
.L216:
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
.L209:
	ld.d	$r1,$r3,56
	.cfi_remember_state
	.cfi_restore 1
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
.L213:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L209
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
	b	.L219
.L220:
	addi.d	$r23,$r23,1
.L219:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L220
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L226
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L222
	addi.w	$r4,$r0,1			# 0x1
.L221:
	addi.d	$r23,$r23,1
.L222:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L223
.L224:
	alsl.w	$r12,$r12,$r12,2
	slli.w	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.w	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L224
.L223:
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
.L226:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L221
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
	b	.L232
.L233:
	addi.d	$r23,$r23,1
.L232:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L233
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L239
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L235
	addi.w	$r4,$r0,1			# 0x1
.L234:
	addi.d	$r23,$r23,1
.L235:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L236
.L237:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L237
.L236:
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
.L239:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L234
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
	b	.L245
.L246:
	addi.d	$r23,$r23,1
.L245:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L246
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L252
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L248
	addi.w	$r4,$r0,1			# 0x1
.L247:
	addi.d	$r23,$r23,1
.L248:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	or	$r12,$r0,$r0
	bgtu	$r13,$r14,.L249
.L250:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	bleu	$r13,$r14,.L250
.L249:
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
.L252:
	.cfi_restore_state
	or	$r4,$r0,$r0
	b	.L247
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
	st.d	$r23,$r3,48
	st.d	$r24,$r3,40
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	st.d	$r28,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 23, -16
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
	or	$r23,$r0,$r0
	bnez	$r6,.L261
	b	.L257
.L266:
	srli.d	$r24,$r24,1
.L260:
	beqz	$r24,.L265
.L261:
	srli.d	$r23,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r5,$r23,$r0
	or	$r4,$r28,$r0
	jirl	$r1,$r27,0
	blt	$r4,$r0,.L266
	ble	$r4,$r0,.L257
	add.d	$r26,$r23,$r25
	srli.d	$r12,$r24,1
	addi.d	$r24,$r24,-1
	sub.d	$r24,$r24,$r12
	b	.L260
.L265:
	or	$r23,$r0,$r0
.L257:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,56
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
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
	jr	$r1
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
	st.d	$r23,$r3,48
	st.d	$r24,$r3,40
	st.d	$r25,$r3,32
	st.d	$r26,$r3,24
	st.d	$r27,$r3,16
	st.d	$r28,$r3,8
	stptr.d	$r29,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r29,$r4,$r0
	or	$r26,$r5,$r0
	or	$r25,$r7,$r0
	or	$r28,$r8,$r0
	or	$r27,$r9,$r0
	slli.w	$r24,$r6,0
	or	$r23,$r0,$r0
	bnez	$r24,.L270
	b	.L267
.L269:
	srai.w	$r24,$r24,1
	beqz	$r24,.L274
.L270:
	srai.w	$r23,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r6,$r27,$r0
	or	$r5,$r23,$r0
	or	$r4,$r29,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L267
	ble	$r4,$r0,.L269
	add.d	$r26,$r23,$r25
	addi.w	$r24,$r24,-1
	b	.L269
.L274:
	or	$r23,$r0,$r0
.L267:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,56
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
	ldptr.d	$r29,$r3,0
	.cfi_restore 29
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
	beqz	$r12,.L284
.L283:
	ldptr.w	$r12,$r4,0
	beq	$r5,$r12,.L284
	addi.d	$r4,$r4,4
	ldptr.w	$r12,$r4,0
	bnez	$r12,.L283
.L284:
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
	bne	$r14,$r13,.L291
.L290:
	ldptr.w	$r13,$r12,0
	beqz	$r13,.L291
	ldptr.w	$r13,$r5,0
	beqz	$r13,.L291
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	beq	$r14,$r13,.L290
.L291:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L293
	slt	$r4,$r13,$r14
.L293:
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
.L297:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r13,$r14,$r12
	bnez	$r13,.L297
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
	beqz	$r12,.L302
	or	$r12,$r4,$r0
.L301:
	addi.d	$r12,$r12,4
	ldptr.w	$r13,$r12,0
	bnez	$r13,.L301
.L300:
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
.L302:
	or	$r12,$r4,$r0
	b	.L300
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
	beqz	$r6,.L306
.L305:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L306
	beqz	$r14,.L306
	ldptr.w	$r13,$r5,0
	beqz	$r13,.L306
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L305
.L306:
	or	$r4,$r0,$r0
	beqz	$r6,.L308
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L308
	slt	$r4,$r13,$r14
.L308:
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
	beqz	$r6,.L314
.L313:
	ldptr.w	$r12,$r4,0
	beq	$r5,$r12,.L314
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	bnez	$r6,.L313
.L314:
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
	beqz	$r6,.L321
.L320:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L321
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L320
.L321:
	or	$r4,$r0,$r0
	beqz	$r6,.L323
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L323
	slt	$r4,$r13,$r14
.L323:
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
	addi.d	$r13,$r6,-1
	beqz	$r6,.L328
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
.L329:
	ldx.w	$r14,$r5,$r12
	stx.w	$r14,$r4,$r12
	addi.d	$r13,$r13,-1
	addi.d	$r12,$r12,4
	bne	$r13,$r15,.L329
.L328:
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
	beq	$r4,$r5,.L332
	sub.d	$r12,$r4,$r5
	slli.d	$r13,$r6,2
	bltu	$r12,$r13,.L333
	addi.d	$r13,$r6,-1
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L340
.L334:
	ldx.w	$r14,$r5,$r12
	stx.w	$r14,$r4,$r12
	addi.d	$r13,$r13,-1
	addi.d	$r12,$r12,4
	bne	$r13,$r15,.L334
.L332:
	jr	$r1
.L340:
	jr	$r1
.L333:
	beqz	$r6,.L332
	addi.d	$r6,$r6,-1
	slli.d	$r12,$r6,2
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
.L335:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,-4
	bne	$r12,$r14,.L335
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
	beqz	$r6,.L342
	or	$r13,$r4,$r0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
.L343:
	addi.d	$r13,$r13,4
	st.w	$r5,$r13,-4
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L343
.L342:
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
	bgeu	$r4,$r5,.L346
	beqz	$r6,.L345
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
.L348:
	ldx.b	$r12,$r4,$r6
	stx.b	$r12,$r5,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L348
	jr	$r1
.L346:
	beq	$r4,$r5,.L345
	beqz	$r6,.L345
	or	$r12,$r0,$r0
.L349:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L349
.L345:
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
.L368:
	srl.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	bnez	$r13,.L370
	addi.w	$r12,$r12,1
	bne	$r12,$r14,.L368
	or	$r4,$r0,$r0
	jr	$r1
.L370:
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
	beqz	$r4,.L374
	andi	$r13,$r4,1
	addi.w	$r4,$r0,1			# 0x1
	bnez	$r13,.L372
.L373:
	srai.w	$r12,$r12,1
	addi.w	$r4,$r4,1
	andi	$r13,$r12,1
	beqz	$r13,.L373
	jr	$r1
.L374:
	or	$r4,$r0,$r0
.L372:
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
	bcnez	$fcc0,.L378
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L378:
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
	bcnez	$fcc0,.L381
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L381:
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
	blt	$r4,$r0,.L386
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__gttf2)
	slt	$r4,$r0,$r4
.L384:
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
.L386:
	.cfi_restore_state
	addi.w	$r4,$r0,1			# 0x1
	b	.L384
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
	bcnez	$fcc0,.L391
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L391
	slti	$r12,$r4,0
	la.local	$r13,.LC11
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC10
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.s	$f1,$r12,0
	b	.L394
.L393:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L391
	fmul.s	$f1,$f1,$f1
.L394:
	andi	$r12,$r4,1
	beqz	$r12,.L393
	fmul.s	$f0,$f0,$f1
	b	.L393
.L391:
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
	bcnez	$fcc0,.L397
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L397
	slti	$r12,$r4,0
	la.local	$r13,.LC13
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC12
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.d	$f1,$r12,0
	b	.L400
.L399:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L397
	fmul.d	$f1,$f1,$f1
.L400:
	andi	$r12,$r4,1
	beqz	$r12,.L399
	fmul.d	$f0,$f0,$f1
	b	.L399
.L397:
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
	bnez	$r4,.L403
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
	beqz	$r4,.L403
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	blt	$r23,$r0,.L412
	la.local	$r12,.LC14
	ldptr.d	$r25,$r12,0
	ld.d	$r24,$r12,8
	b	.L407
.L412:
	la.local	$r12,.LC15
	ldptr.d	$r25,$r12,0
	ld.d	$r24,$r12,8
	b	.L407
.L406:
	srli.w	$r12,$r23,31
	add.w	$r12,$r12,$r23
	srai.w	$r23,$r12,1
	beqz	$r23,.L411
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__multf3)
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
.L407:
	andi	$r12,$r23,1
	beqz	$r12,.L406
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r27,$r0
	or	$r5,$r26,$r0
	bl	%plt(__multf3)
	or	$r27,$r4,$r0
	or	$r26,$r5,$r0
	b	.L406
.L411:
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
.L403:
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
	beqz	$r6,.L414
	or	$r12,$r0,$r0
.L415:
	ldx.b	$r14,$r5,$r12
	ldx.b	$r13,$r4,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L415
.L414:
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
	beqz	$r23,.L419
.L418:
	ld.b	$r13,$r24,0
	st.b	$r13,$r12,0
	beqz	$r13,.L419
	addi.d	$r24,$r24,1
	addi.d	$r12,$r12,1
	addi.d	$r23,$r23,-1
	bnez	$r23,.L418
.L419:
	bnez	$r23,.L421
	st.b	$r0,$r12,0
.L421:
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
	beqz	$r5,.L430
.L425:
	ldx.b	$r13,$r12,$r4
	bnez	$r13,.L427
.L424:
	jr	$r1
.L430:
	jr	$r1
.L427:
	addi.d	$r4,$r4,1
	bne	$r4,$r5,.L425
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
	beqz	$r12,.L438
.L432:
	or	$r12,$r5,$r0
.L435:
	ld.b	$r13,$r12,0
	beqz	$r13,.L439
	addi.d	$r12,$r12,1
	ld.b	$r14,$r12,-1
	ld.b	$r13,$r4,0
	bne	$r14,$r13,.L435
.L433:
	jr	$r1
.L438:
	or	$r4,$r0,$r0
	jr	$r1
.L439:
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,0
	bnez	$r12,.L432
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
.L442:
	ld.b	$r12,$r13,0
	xor	$r12,$r5,$r12
	maskeqz	$r4,$r4,$r12
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	addi.d	$r13,$r13,1
	ld.b	$r12,$r13,-1
	bnez	$r12,.L442
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
	beqz	$r4,.L445
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	or	$r25,$r4,$r0
	ld.b	$r26,$r24,0
.L447:
	or	$r5,$r26,$r0
	or	$r4,$r23,$r0
	bl	strchr
	or	$r23,$r4,$r0
	beqz	$r4,.L452
	or	$r6,$r25,$r0
	or	$r5,$r24,$r0
	or	$r4,$r23,$r0
	bl	strncmp
	beqz	$r4,.L451
	addi.d	$r23,$r23,1
	b	.L447
.L452:
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
.L445:
	or	$r4,$r23,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
.L451:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	b	.L445
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
	bcnez	$fcc0,.L462
.L454:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L457
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L456
.L457:
	jr	$r1
.L462:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L454
.L456:
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
	beqz	$r7,.L463
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L463
	bgtu	$r23,$r24,.L463
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	stptr.d	$r27,$r3,0
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	ld.b	$r26,$r6,0
	addi.d	$r27,$r6,1
	addi.d	$r25,$r7,-1
	b	.L466
.L465:
	addi.d	$r23,$r23,1
	bltu	$r24,$r23,.L473
.L466:
	ld.b	$r12,$r23,0
	bne	$r12,$r26,.L465
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	addi.d	$r4,$r23,1
	bl	memcmp
	bnez	$r4,.L465
	or	$r4,$r23,$r0
	ld.d	$r25,$r3,16
	.cfi_remember_state
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
	b	.L463
.L473:
	.cfi_restore_state
	or	$r4,$r0,$r0
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
.L463:
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
	bcnez	$fcc0,.L498
	or	$r13,$r0,$r0
.L477:
	or	$r12,$r0,$r0
	pcalau12i	$r14,%pc_hi20(.LC16)
	fld.d	$f1,$r14,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L496
	pcalau12i	$r14,%pc_hi20(.LC13)
	fld.d	$f2,$r14,%pc_lo12(.LC13)
.L481:
	addi.w	$r12,$r12,1
	fmul.d	$f0,$f0,$f2
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L481
.L482:
	stptr.w	$r12,$r4,0
	beqz	$r13,.L485
	fneg.d	$f0,$f0
.L485:
	jr	$r1
.L498:
	fneg.d	$f0,$f0
	addi.w	$r13,$r0,1			# 0x1
	b	.L477
.L496:
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L497
	or	$r12,$r0,$r0
	movgr2fr.d	$f1,$r0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L482
	pcalau12i	$r14,%pc_hi20(.LC13)
	fld.d	$f1,$r14,%pc_lo12(.LC13)
.L484:
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L484
	b	.L482
.L497:
	or	$r12,$r0,$r0
	b	.L482
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
	beqz	$r4,.L502
	or	$r4,$r0,$r0
.L501:
	andi	$r12,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.d	$r4,$r4,$r12
	slli.d	$r5,$r5,1
	srli.d	$r13,$r13,1
	bnez	$r13,.L501
	jr	$r1
.L502:
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
	bgeu	$r5,$r4,.L506
.L505:
	blt	$r5,$r0,.L506
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L506
	bnez	$r12,.L505
.L506:
	or	$r13,$r0,$r0
	bnez	$r12,.L507
.L508:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
.L510:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	beqz	$r12,.L508
.L507:
	bltu	$r4,$r5,.L510
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
	slli.w	$r13,$r13,0
	b	.L510
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
	beqz	$r4,.L528
	or	$r4,$r0,$r0
.L527:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r4,$r12
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L527
	jr	$r1
.L528:
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
	addi.w	$r12,$r0,-8			# 0xfffffffffffffff8
	and	$r12,$r6,$r12
	bgeu	$r4,$r5,.L531
.L534:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,3
	or	$r13,$r0,$r0
	beqz	$r14,.L533
.L537:
	ldx.d	$r14,$r5,$r13
	stx.d	$r14,$r4,$r13
	addi.d	$r13,$r13,8
	bne	$r13,$r15,.L537
.L533:
	bleu	$r6,$r12,.L530
	bstrpick.d	$r12,$r12,31,0
.L538:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L538
	jr	$r1
.L531:
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bltu	$r13,$r4,.L534
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L545
.L539:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L539
.L530:
	jr	$r1
.L545:
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
	bgeu	$r4,$r5,.L547
.L550:
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r14,$r14,1
	or	$r12,$r0,$r0
	beqz	$r13,.L549
.L553:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r12,$r14,.L553
.L549:
	andi	$r12,$r6,1
	beqz	$r12,.L546
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
.L547:
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bltu	$r12,$r4,.L550
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L559
.L554:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L554
.L546:
	jr	$r1
.L559:
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
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r12,$r6,$r12
	bgeu	$r4,$r5,.L561
.L564:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,2
	or	$r13,$r0,$r0
	beqz	$r14,.L563
.L567:
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	addi.d	$r13,$r13,4
	bne	$r13,$r15,.L567
.L563:
	bleu	$r6,$r12,.L560
	bstrpick.d	$r12,$r12,31,0
.L568:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L568
	jr	$r1
.L561:
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bltu	$r13,$r4,.L564
	addi.w	$r12,$r6,-1
	bstrpick.d	$r12,$r12,31,0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L575
.L569:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L569
.L560:
	jr	$r1
.L575:
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
	blt	$r4,$r0,.L581
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
.L581:
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
	blt	$r4,$r0,.L584
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
.L584:
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
.L588:
	sub.w	$r12,$r14,$r13
	sra.w	$r12,$r4,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L587
	addi.w	$r13,$r13,1
	bne	$r13,$r15,.L588
.L587:
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
.L592:
	sra.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	bnez	$r13,.L591
	addi.w	$r12,$r12,1
	bne	$r12,$r14,.L592
.L591:
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
	bcnez	$fcc0,.L600
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
.L600:
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
	or	$r14,$r0,$r0
	or	$r13,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
.L602:
	sra.w	$r12,$r4,$r13
	andi	$r12,$r12,1
	add.w	$r12,$r12,$r14
	or	$r14,$r12,$r0
	addi.w	$r13,$r13,1
	bne	$r13,$r15,.L602
	andi	$r4,$r12,1
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
	or	$r13,$r0,$r0
	or	$r12,$r0,$r0
	or	$r14,$r4,$r0
	addi.w	$r15,$r0,16			# 0x10
.L605:
	sra.w	$r4,$r14,$r12
	andi	$r4,$r4,1
	add.w	$r4,$r4,$r13
	or	$r13,$r4,$r0
	addi.w	$r12,$r12,1
	bne	$r12,$r15,.L605
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
	beqz	$r4,.L610
	or	$r4,$r0,$r0
.L609:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	add.w	$r4,$r4,$r12
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r5,1
	bnez	$r13,.L609
	jr	$r1
.L610:
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
	or	$r13,$r4,$r0
	beqz	$r4,.L615
	or	$r4,$r0,$r0
	beqz	$r5,.L613
.L614:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	add.w	$r4,$r4,$r12
	slli.w	$r13,$r13,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r5,.L614
	jr	$r1
.L615:
	or	$r4,$r0,$r0
.L613:
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
	bgeu	$r5,$r4,.L620
.L619:
	blt	$r5,$r0,.L620
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L620
	bnez	$r12,.L619
.L620:
	or	$r13,$r0,$r0
	bnez	$r12,.L621
.L622:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
.L624:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	beqz	$r12,.L622
.L621:
	bltu	$r4,$r5,.L624
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
	slli.w	$r13,$r13,0
	b	.L624
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
	bcnez	$fcc0,.L634
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L634:
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
	bcnez	$fcc0,.L637
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
.L637:
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
	blt	$r5,$r0,.L649
.L642:
	or	$r14,$r0,$r0
	beqz	$r5,.L643
	addi.w	$r13,$r0,32			# 0x20
.L644:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r4,$r12
	add.w	$r14,$r14,$r12
	slli.w	$r4,$r4,1
	srai.w	$r5,$r5,1
	beqz	$r5,.L643
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	bnez	$r13,.L644
.L643:
	sub.w	$r4,$r0,$r14
	maskeqz	$r4,$r4,$r15
	masknez	$r15,$r14,$r15
	or	$r4,$r4,$r15
	jr	$r1
.L649:
	sub.w	$r5,$r0,$r5
	addi.w	$r15,$r0,1			# 0x1
	b	.L642
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
	blt	$r4,$r0,.L656
.L651:
	blt	$r5,$r0,.L657
.L652:
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
.L656:
	.cfi_restore_state
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L651
.L657:
	sub.d	$r5,$r0,$r5
	xori	$r23,$r23,1
	b	.L652
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
	blt	$r4,$r0,.L663
.L659:
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
.L663:
	.cfi_restore_state
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L659
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
	bleu	$r4,$r5,.L666
.L665:
	ext.w.h	$r16,$r12
	blt	$r16,$r0,.L666
	slli.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r13,$r13,1
	bstrpick.w	$r13,$r13,15,0
	slli.w	$r16,$r12,0
	bleu	$r17,$r16,.L666
	addi.w	$r15,$r15,-1
	bnez	$r15,.L665
.L666:
	or	$r15,$r0,$r0
	bnez	$r13,.L667
.L668:
	masknez	$r15,$r15,$r6
	maskeqz	$r6,$r14,$r6
	or	$r4,$r15,$r6
	jr	$r1
.L670:
	srli.d	$r13,$r13,1
	srli.d	$r12,$r12,1
	beqz	$r13,.L668
.L667:
	slli.w	$r16,$r14,0
	bltu	$r16,$r12,.L670
	sub.w	$r14,$r14,$r12
	bstrpick.w	$r14,$r14,15,0
	or	$r15,$r15,$r13
	bstrpick.w	$r15,$r15,15,0
	b	.L670
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
	bgeu	$r5,$r4,.L681
.L680:
	and	$r13,$r5,$r14
	bnez	$r13,.L681
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L681
	bnez	$r12,.L680
.L681:
	or	$r13,$r0,$r0
	bnez	$r12,.L682
.L683:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
.L685:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	beqz	$r12,.L683
.L682:
	bltu	$r4,$r5,.L685
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
	b	.L685
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
	beqz	$r13,.L695
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,31,0
	sll.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,63,32
	jr	$r1
.L695:
	beqz	$r5,.L694
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
.L694:
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
	beqz	$r14,.L700
	or	$r4,$r0,$r0
	sll.d	$r5,$r12,$r6
	jr	$r1
.L700:
	beqz	$r6,.L702
	sll.d	$r4,$r4,$r6
	sll.d	$r5,$r5,$r6
	sub.w	$r6,$r0,$r6
	srl.d	$r12,$r12,$r6
	or	$r5,$r12,$r5
.L702:
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
	beqz	$r13,.L705
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	sra.w	$r12,$r12,$r5
	bstrins.d	$r4,$r12,31,0
	jr	$r1
.L705:
	beqz	$r5,.L704
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
.L704:
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
	beqz	$r14,.L710
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
.L710:
	beqz	$r6,.L712
	sra.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L712:
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
	blt	$r14,$r13,.L720
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L719
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L719
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
	jr	$r1
.L720:
	or	$r4,$r0,$r0
.L719:
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
	blt	$r5,$r7,.L728
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L727
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L727
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
.L728:
	or	$r4,$r0,$r0
.L727:
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
	bnez	$r4,.L735
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
.L735:
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
	beqz	$r13,.L739
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,63,32
	bstrpick.d	$r12,$r12,63,32
	srl.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,31,0
	jr	$r1
.L739:
	beqz	$r5,.L738
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
.L738:
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
	beqz	$r14,.L744
	or	$r5,$r0,$r0
	srl.d	$r4,$r12,$r6
	jr	$r1
.L744:
	beqz	$r6,.L746
	srl.d	$r5,$r5,$r6
	sub.w	$r14,$r0,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r4,$r4,$r6
	or	$r4,$r12,$r4
.L746:
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
	bstrpick.d	$r12,$r4,31,0
	bstrpick.d	$r14,$r5,31,0
	mul.d	$r15,$r12,$r14
	srli.d	$r16,$r15,32
	srli.d	$r13,$r4,32
	mul.d	$r14,$r13,$r14
	add.d	$r14,$r14,$r16
	srli.d	$r16,$r14,32
	bstrpick.d	$r14,$r14,31,0
	bstrpick.d	$r15,$r15,31,0
	srli.d	$r5,$r5,32
	mul.d	$r12,$r12,$r5
	add.d	$r12,$r12,$r14
	slli.d	$r4,$r12,32
	srli.d	$r12,$r12,32
	add.d	$r12,$r12,$r16
	mul.d	$r5,$r13,$r5
	add.d	$r4,$r4,$r15
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
	slli.w	$r13,$r12,0
	srli.d	$r12,$r12,32
	add.w	$r12,$r12,$r13
	srli.w	$r13,$r12,16
	add.w	$r12,$r13,$r12
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
	fmov.d	$f1,$f0
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f0,$r12,%pc_lo12(.LC16)
	b	.L765
.L763:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L764
	fmul.d	$f1,$f1,$f1
.L765:
	andi	$r12,$r4,1
	beqz	$r12,.L763
	fmul.d	$f0,$f0,$f1
	b	.L763
.L764:
	beqz	$r13,.L762
	frecip.d	$f0,$f0
.L762:
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
	fmov.s	$f1,$f0
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC21)
	fld.s	$f0,$r12,%pc_lo12(.LC21)
	b	.L770
.L768:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L769
	fmul.s	$f1,$f1,$f1
.L770:
	andi	$r12,$r4,1
	beqz	$r12,.L768
	fmul.s	$f0,$f0,$f1
	b	.L768
.L769:
	beqz	$r13,.L767
	frecip.s	$f0,$f0
.L767:
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
	bltu	$r14,$r13,.L774
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L773
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L773
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
	jr	$r1
.L774:
	or	$r4,$r0,$r0
.L773:
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
	bltu	$r5,$r7,.L782
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L781
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L781
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
.L782:
	or	$r4,$r0,$r0
.L781:
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
