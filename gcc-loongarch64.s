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
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,1
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
	addi.d	$r6,$r6,-1
	bstrpick.w	$r5,$r5,7,0
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
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	beqz	$r12,.L72
	.align	3
.L73:
	ld.b	$r12,$r5,1
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
	st.b	$r12,$r4,0
	bnez	$r12,.L73
.L72:
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
	bnez	$r12,.L79
	jr	$r1
	.align	5
.L81:
	ld.b	$r12,$r4,1
	addi.d	$r4,$r4,1
	beqz	$r12,.L78
.L79:
	bstrpick.w	$r12,$r12,7,0
	bne	$r12,$r5,.L81
.L78:
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
.L87:
	ld.b	$r12,$r4,0
	beq	$r12,$r5,.L86
	addi.d	$r4,$r4,1
	bnez	$r12,.L87
	or	$r4,$r0,$r0
.L86:
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
	addi.w	$r12,$r0,1			# 0x1
	ld.b	$r13,$r4,0
	ld.b	$r14,$r5,0
	addi.d	$r5,$r5,-1
	bne	$r13,$r14,.L91
	.align	3
.L90:
	beqz	$r13,.L91
	ldx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	ldx.b	$r14,$r5,$r12
	beq	$r13,$r14,.L90
.L91:
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
	beqz	$r12,.L98
	or	$r12,$r4,$r0
	.align	3
.L97:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L97
	sub.d	$r4,$r12,$r4
	jr	$r1
	.align	5
.L98:
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
	beqz	$r6,.L105
	ld.bu	$r12,$r4,0
	beqz	$r12,.L102
	addi.d	$r6,$r6,-1
	add.d	$r14,$r4,$r6
	b	.L103
	.align	5
.L115:
	beq	$r4,$r14,.L102
	bne	$r13,$r12,.L102
	ld.bu	$r12,$r4,1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	beqz	$r12,.L102
.L103:
	ld.bu	$r13,$r5,0
	bnez	$r13,.L115
.L102:
	ld.bu	$r13,$r5,0
	sub.w	$r4,$r12,$r13
	jr	$r1
	.align	5
.L105:
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
	ble	$r6,$r12,.L116
	addi.w	$r12,$r0,-2			# 0xfffffffffffffffe
	and	$r6,$r6,$r12
	add.d	$r14,$r4,$r6
	.align	3
.L118:
	ld.bu	$r13,$r4,1
	ld.bu	$r12,$r4,0
	addi.d	$r4,$r4,2
	addi.d	$r5,$r5,2
	st.b	$r13,$r5,-2
	st.b	$r12,$r5,-1
	bne	$r4,$r14,.L118
.L116:
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
	addi.w	$r12,$r0,31			# 0x1f
	addi.d	$r13,$r4,-127
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
	addi.w	$r12,$r0,1			# 0x1
	addi.w	$r13,$r4,-9
	xor	$r4,$r4,$r14
	sltui	$r13,$r13,5
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
	bleu	$r4,$r13,.L138
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r13,$r14,.L141
	jr	$r1
	.align	5
.L138:
	addi.w	$r4,$r0,1			# 0x1
	jr	$r1
	.align	5
.L141:
	lu12i.w	$r14,-12288>>12			# 0xffffffffffffd000
	ori	$r14,$r14,4056
	addu16i.d	$r13,$r12,-1
	add.w	$r12,$r12,$r14
	addi.w	$r13,$r13,7
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
	bleu	$r4,$r13,.L150
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L145
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L145
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L145
	lu12i.w	$r15,61440>>12			# 0xf000
	ori	$r15,$r15,4094
	addu16i.d	$r4,$r12,-1
	lu12i.w	$r14,1048576>>12			# 0x100000
	ori	$r14,$r14,3
	or	$r13,$r0,$r0
	and	$r12,$r12,$r15
	addi.w	$r4,$r4,4
	sltu	$r4,$r14,$r4
	addu16i.d	$r12,$r12,-1
	addi.d	$r12,$r12,2
	maskeqz	$r13,$r13,$r4
	sltu	$r12,$r0,$r12
	masknez	$r4,$r12,$r4
	or	$r4,$r4,$r13
.L145:
	jr	$r1
	.align	5
.L150:
	addi.w	$r12,$r4,1
	addi.w	$r4,$r0,32			# 0x20
	andi	$r12,$r12,127
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
	addi.w	$r12,$r0,9			# 0x9
	addi.w	$r14,$r0,1			# 0x1
	ori	$r13,$r4,32
	addi.w	$r4,$r4,-48
	addi.w	$r13,$r13,-97
	sltu	$r12,$r12,$r4
	sltui	$r13,$r13,6
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
	fmov.d	$f2,$f0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L158
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L155
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L162
	fsub.d	$f0,$f2,$f1
	jr	$r1
	.align	5
.L162:
	movgr2fr.d	$f0,$r0
.L155:
	jr	$r1
	.align	5
.L158:
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
	bcnez	$fcc0,.L166
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L163
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L170
	fsub.s	$f0,$f2,$f1
	jr	$r1
	.align	5
.L170:
	movgr2fr.w	$f0,$r0
.L163:
	jr	$r1
	.align	5
.L166:
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
	bcnez	$fcc0,.L174
	fcmp.cun.d	$fcc0,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc0,.L171
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L173
	fst.d	$f1,$r3,0
	beqz	$r12,.L178
.L171:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L173:
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
.L174:
	.cfi_restore_state
	fld.d	$f0,$r3,8
.L178:
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
	bcnez	$fcc0,.L182
	fcmp.cun.s	$fcc0,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc0,.L179
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L181
	fst.s	$f1,$r3,8
	beqz	$r12,.L186
.L179:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L181:
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
.L182:
	.cfi_restore_state
	fld.s	$f0,$r3,12
.L186:
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
	bnez	$r4,.L193
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L194
	srli.d	$r12,$r25,63
	srli.d	$r13,$r23,63
	bne	$r12,$r13,.L199
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L193
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L193:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L187:
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
.L199:
	.cfi_restore_state
	maskeqz	$r24,$r24,$r12
	masknez	$r26,$r26,$r12
	maskeqz	$r23,$r23,$r12
	masknez	$r12,$r25,$r12
	or	$r4,$r24,$r26
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
.L194:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L187
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
	bcnez	$fcc0,.L203
	fcmp.cun.d	$fcc0,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc0,.L200
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L202
	bnez	$r12,.L200
	fst.d	$f1,$r3,0
.L200:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L202:
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
.L203:
	.cfi_restore_state
	fld.d	$f0,$r3,8
	fst.d	$f0,$r3,0
	b	.L200
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
	bcnez	$fcc0,.L210
	fcmp.cun.s	$fcc0,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc0,.L207
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L209
	bnez	$r12,.L207
	fst.s	$f1,$r3,8
.L207:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L209:
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
.L210:
	.cfi_restore_state
	fld.s	$f0,$r3,12
	fst.s	$f0,$r3,8
	b	.L207
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
	bnez	$r4,.L220
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L221
	srli.d	$r12,$r23,63
	srli.d	$r13,$r25,63
	bne	$r12,$r13,.L226
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L221
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L221:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L214:
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
.L226:
	.cfi_restore_state
	maskeqz	$r24,$r24,$r12
	masknez	$r6,$r26,$r12
	maskeqz	$r23,$r23,$r12
	masknez	$r7,$r25,$r12
	or	$r4,$r24,$r6
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
.L220:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L214
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
	la.local	$r12,.LANCHOR0
	slli.w	$r4,$r4,0
	beqz	$r4,.L228
	la.local	$r14,.LANCHOR1
	.align	3
.L229:
	andi	$r13,$r4,63
	bstrpick.d	$r4,$r4,31,6
	addi.d	$r12,$r12,1
	ldx.bu	$r13,$r14,$r13
	st.b	$r13,$r12,-1
	bnez	$r4,.L229
.L228:
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
	pcalau12i	$r12,%pc_hi20(.LANCHOR0+8)
	addi.w	$r4,$r4,-1
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
	ori	$r13,$r13,3885
	lu32i.d	$r13,0x1f42d00000000>>32
	lu52i.d	$r13,$r13,0x5850000000000000>>52
	ld.d	$r4,$r12,8
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
	beqz	$r5,.L241
	ldptr.d	$r12,$r5,0
	st.d	$r5,$r4,8
	stptr.d	$r12,$r4,0
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L235
	st.d	$r4,$r12,8
.L235:
	jr	$r1
	.align	5
.L241:
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
	beqz	$r12,.L243
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L243:
	ld.d	$r12,$r4,8
	beqz	$r12,.L242
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L242:
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
	st.d	$r28,$r3,24
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	or	$r29,$r6,$r0
	or	$r27,$r4,$r0
	or	$r30,$r5,$r0
	ldptr.d	$r26,$r6,0
	or	$r25,$r7,$r0
	beqz	$r26,.L252
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	stptr.d	$r31,$r3,0
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 31, -80
	or	$r31,$r8,$r0
	or	$r23,$r5,$r0
	or	$r24,$r0,$r0
	b	.L254
	.align	5
.L269:
	addi.d	$r24,$r24,1
	add.d	$r23,$r23,$r25
	beq	$r26,$r24,.L268
.L254:
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	or	$r28,$r23,$r0
	jirl	$r1,$r31,0
	bnez	$r4,.L269
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
.L251:
	or	$r4,$r28,$r0
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
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L268:
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
.L252:
	mul.d	$r28,$r25,$r26
	addi.d	$r26,$r26,1
	stptr.d	$r26,$r29,0
	add.d	$r28,$r30,$r28
	beqz	$r25,.L251
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	or	$r4,$r28,$r0
	bl	%plt(memmove)
	b	.L251
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
	beqz	$r28,.L271
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
	b	.L273
	.align	5
.L284:
	addi.d	$r24,$r24,1
	add.d	$r23,$r23,$r27
	beq	$r28,$r24,.L283
.L273:
	or	$r5,$r23,$r0
	or	$r4,$r25,$r0
	or	$r29,$r23,$r0
	jirl	$r1,$r26,0
	bnez	$r4,.L284
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
.L270:
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
.L283:
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
.L271:
	or	$r29,$r0,$r0
	b	.L270
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
.L287:
	ld.b	$r13,$r4,0
	beq	$r13,$r14,.L289
	addi.w	$r12,$r13,-9
	sltui	$r12,$r12,5
	beqz	$r12,.L300
.L289:
	addi.d	$r4,$r4,1
	b	.L287
	.align	5
.L300:
	addi.w	$r14,$r0,43			# 0x2b
	beq	$r13,$r14,.L296
	addi.w	$r14,$r0,45			# 0x2d
	or	$r16,$r0,$r0
	beq	$r13,$r14,.L301
.L291:
	ld.b	$r14,$r4,0
	addi.w	$r17,$r0,9			# 0x9
	addi.w	$r15,$r0,9			# 0x9
	addi.w	$r13,$r14,-48
	bgtu	$r13,$r17,.L293
	.align	3
.L292:
	ld.b	$r14,$r4,1
	alsl.w	$r12,$r12,$r12,2
	ext.w.b	$r13,$r13
	addi.d	$r4,$r4,1
	slli.w	$r12,$r12,1
	sub.w	$r12,$r12,$r13
	addi.w	$r13,$r14,-48
	bleu	$r13,$r15,.L292
.L293:
	sub.w	$r13,$r0,$r12
	maskeqz	$r12,$r12,$r16
	masknez	$r4,$r13,$r16
	or	$r4,$r4,$r12
	jr	$r1
	.align	5
.L301:
	addi.w	$r16,$r0,1			# 0x1
	addi.d	$r4,$r4,1
	b	.L291
	.align	5
.L296:
	or	$r16,$r0,$r0
	addi.d	$r4,$r4,1
	b	.L291
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
.L303:
	ld.b	$r12,$r4,0
	beq	$r12,$r13,.L305
	addi.w	$r14,$r12,-9
	sltui	$r14,$r14,5
	beqz	$r14,.L315
.L305:
	addi.d	$r4,$r4,1
	b	.L303
	.align	5
.L315:
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L306
	addi.w	$r13,$r0,45			# 0x2d
	beq	$r12,$r13,.L316
.L307:
	ld.b	$r15,$r4,0
	addi.w	$r17,$r0,9			# 0x9
	or	$r12,$r0,$r0
	addi.w	$r16,$r0,9			# 0x9
	addi.w	$r13,$r15,-48
	bgtu	$r13,$r17,.L309
	.align	3
.L308:
	ld.b	$r15,$r4,1
	alsl.d	$r12,$r12,$r12,2
	ext.w.b	$r13,$r13
	addi.d	$r4,$r4,1
	slli.d	$r12,$r12,1
	sub.d	$r12,$r12,$r13
	addi.w	$r13,$r15,-48
	bleu	$r13,$r16,.L308
.L309:
	sub.d	$r13,$r0,$r12
	maskeqz	$r12,$r12,$r14
	masknez	$r4,$r13,$r14
	or	$r4,$r4,$r12
	jr	$r1
	.align	5
.L316:
	addi.w	$r14,$r0,1			# 0x1
.L306:
	addi.d	$r4,$r4,1
	b	.L307
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
	beqz	$r6,.L319
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
.L322:
	srli.d	$r29,$r23,1
	or	$r4,$r28,$r0
	mul.d	$r24,$r29,$r25
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r27,0
	blt	$r4,$r0,.L323
	ble	$r4,$r0,.L329
	addi.d	$r23,$r23,-1
	add.d	$r26,$r24,$r25
	sub.d	$r23,$r23,$r29
	bnez	$r23,.L322
.L330:
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
.L319:
	or	$r24,$r0,$r0
	b	.L318
	.align	5
.L323:
	.cfi_offset 23, -16
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	or	$r23,$r29,$r0
	bnez	$r23,.L322
	b	.L330
	.align	5
.L329:
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
.L318:
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
	beqz	$r24,.L332
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
	b	.L335
	.align	5
.L346:
	ble	$r4,$r0,.L334
	addi.w	$r24,$r24,-1
	add.d	$r26,$r23,$r25
	srai.w	$r30,$r24,1
.L334:
	slli.w	$r24,$r30,0
	beqz	$r24,.L345
.L335:
	srai.d	$r23,$r24,1
	or	$r6,$r27,$r0
	or	$r4,$r29,$r0
	srai.w	$r30,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r5,$r23,$r0
	jirl	$r1,$r28,0
	bnez	$r4,.L346
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
.L331:
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
.L345:
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
.L332:
	or	$r23,$r0,$r0
	b	.L331
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
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L360
	.align	3
.L355:
	beq	$r5,$r12,.L364
	ldptr.w	$r12,$r4,4
	addi.d	$r4,$r4,4
	bnez	$r12,.L355
.L360:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L364:
	beqz	$r5,.L360
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
	addi.w	$r12,$r0,4			# 0x4
	ldptr.w	$r13,$r4,0
	ldptr.w	$r14,$r5,0
	addi.d	$r5,$r5,-4
	bne	$r13,$r14,.L367
	.align	3
.L366:
	beqz	$r13,.L367
	beqz	$r14,.L367
	ldx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r14,$r5,$r12
	beq	$r13,$r14,.L366
.L367:
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
.L377:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bnez	$r13,.L377
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
	beqz	$r12,.L382
	or	$r12,$r4,$r0
	.align	3
.L381:
	ldptr.w	$r13,$r12,4
	addi.d	$r12,$r12,4
	bnez	$r13,.L381
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
	.align	5
.L382:
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
	beqz	$r6,.L389
	.align	3
.L398:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r12,$r13,.L386
	beqz	$r12,.L386
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L398
.L389:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L386:
	beqz	$r6,.L389
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
	beqz	$r6,.L405
	.align	3
.L411:
	ldptr.w	$r12,$r4,0
	beq	$r12,$r5,.L410
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	bnez	$r6,.L411
.L405:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L410:
	beqz	$r6,.L405
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
	beqz	$r6,.L417
	.align	3
.L427:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r13,$r12,.L426
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L427
.L417:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L426:
	beqz	$r6,.L417
	or	$r12,$r13,$r0
	ldptr.w	$r14,$r5,0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	slt	$r13,$r13,$r14
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
	st.d	$r1,$r3,8
	stptr.d	$r23,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	or	$r23,$r4,$r0
	beqz	$r6,.L429
	slli.d	$r6,$r6,2
	bl	%plt(memcpy)
.L429:
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
	beq	$r4,$r5,.L435
	sub.d	$r14,$r4,$r5
	slli.d	$r13,$r6,2
	addi.d	$r12,$r6,-1
	bgeu	$r14,$r13,.L446
	beqz	$r6,.L435
	slli.d	$r12,$r12,2
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	.align	3
.L438:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,-4
	bne	$r12,$r14,.L438
	jr	$r1
	.align	5
.L446:
	or	$r13,$r0,$r0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	beqz	$r6,.L447
	.align	3
.L437:
	ldx.w	$r14,$r5,$r13
	addi.d	$r12,$r12,-1
	stx.w	$r14,$r4,$r13
	addi.d	$r13,$r13,4
	bne	$r12,$r15,.L437
.L435:
	jr	$r1
	.align	5
.L447:
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
	beqz	$r6,.L449
	or	$r13,$r4,$r0
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	.align	3
.L450:
	addi.d	$r12,$r12,-1
	stptr.w	$r5,$r13,0
	addi.d	$r13,$r13,4
	bne	$r12,$r14,.L450
.L449:
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
	bgeu	$r4,$r5,.L456
	beqz	$r6,.L455
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
	.align	3
.L458:
	ldx.b	$r12,$r4,$r6
	stx.b	$r12,$r5,$r6
	addi.d	$r6,$r6,-1
	bnez	$r6,.L458
	jr	$r1
	.align	5
.L456:
	beq	$r4,$r5,.L455
	beqz	$r6,.L455
	or	$r12,$r0,$r0
	.align	3
.L459:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L459
.L455:
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
	sll.w	$r5,$r4,$r5
	andi	$r12,$r12,15
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
	srl.w	$r5,$r4,$r5
	andi	$r12,$r12,15
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
	sll.w	$r5,$r4,$r5
	andi	$r12,$r12,7
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
	srl.w	$r5,$r4,$r5
	andi	$r12,$r12,7
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
	b	.L484
	.align	5
.L482:
	beq	$r13,$r14,.L486
.L484:
	srl.w	$r12,$r4,$r13
	andi	$r12,$r12,1
	addi.w	$r13,$r13,1
	beqz	$r12,.L482
	or	$r4,$r13,$r0
	jr	$r1
	.align	5
.L486:
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
	beqz	$r4,.L490
	andi	$r4,$r4,1
	bnez	$r4,.L488
	addi.w	$r4,$r0,1			# 0x1
	.align	3
.L489:
	srai.d	$r12,$r12,1
	addi.w	$r4,$r4,1
	andi	$r13,$r12,1
	beqz	$r13,.L489
	jr	$r1
	.align	5
.L490:
	or	$r4,$r0,$r0
.L488:
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
	addi.w	$r4,$r0,1			# 0x1
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L494
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L494:
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
	addi.w	$r4,$r0,1			# 0x1
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L497
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L497:
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
	la.local	$r12,.LC8
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r24,$r4,$r0
	or	$r23,$r5,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L502
	la.local	$r12,.LC9
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
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
.L502:
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
	movgr2fr.d	$f0,$r5
	ffint.d.w	$f0,$f0
	or	$r23,$r4,$r0
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
	bcnez	$fcc0,.L507
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L507
	pcalau12i	$r12,%pc_hi20(.LC10)
	fld.s	$f1,$r12,%pc_lo12(.LC10)
	bge	$r4,$r0,.L510
	pcalau12i	$r12,%pc_hi20(.LC11)
	fld.s	$f1,$r12,%pc_lo12(.LC11)
	b	.L510
	.align	5
.L518:
	fmul.s	$f1,$f1,$f1
.L510:
	andi	$r12,$r4,1
	beqz	$r12,.L509
	fmul.s	$f0,$f0,$f1
.L509:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	bnez	$r4,.L518
.L507:
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
	bcnez	$fcc0,.L520
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L520
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	bge	$r4,$r0,.L523
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
	b	.L523
	.align	5
.L531:
	fmul.d	$f1,$f1,$f1
.L523:
	andi	$r12,$r4,1
	beqz	$r12,.L522
	fmul.d	$f0,$f0,$f1
.L522:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	bnez	$r4,.L531
.L520:
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
	bnez	$r4,.L533
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__addtf3)
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L533
	blt	$r23,$r0,.L547
	la.local	$r12,.LC14
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L537
	.align	5
.L548:
	or	$r4,$r6,$r0
	or	$r5,$r7,$r0
	bl	%plt(__multf3)
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
.L537:
	andi	$r12,$r23,1
	beqz	$r12,.L536
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__multf3)
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	ld.d	$r6,$r3,8
	ldptr.d	$r7,$r3,0
.L536:
	srli.w	$r12,$r23,31
	add.w	$r23,$r12,$r23
	srai.d	$r23,$r23,1
	bnez	$r23,.L548
.L533:
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
.L547:
	.cfi_restore_state
	la.local	$r12,.LC15
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L537
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
	beqz	$r6,.L550
	or	$r12,$r0,$r0
	.align	3
.L551:
	ldx.bu	$r13,$r4,$r12
	ldx.bu	$r14,$r5,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r6,.L551
.L550:
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
	beqz	$r13,.L571
	.align	3
.L558:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L558
.L571:
	beqz	$r6,.L565
	.align	3
.L573:
	ld.b	$r13,$r5,0
	st.b	$r13,$r12,0
	beqz	$r13,.L572
	addi.d	$r6,$r6,-1
	addi.d	$r5,$r5,1
	addi.d	$r12,$r12,1
	bnez	$r6,.L573
.L565:
	st.b	$r0,$r12,0
.L562:
	jr	$r1
	.align	5
.L572:
	bnez	$r6,.L562
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
	beqz	$r5,.L574
.L575:
	ldx.bu	$r13,$r4,$r12
	bnez	$r13,.L577
.L574:
	or	$r4,$r12,$r0
	jr	$r1
	.align	5
.L577:
	addi.d	$r12,$r12,1
	bne	$r5,$r12,.L575
	b	.L574
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
	beqz	$r14,.L586
.L582:
	or	$r12,$r5,$r0
	b	.L585
	.align	5
.L584:
	addi.d	$r12,$r12,1
	beq	$r13,$r14,.L583
.L585:
	ld.b	$r13,$r12,0
	bnez	$r13,.L584
	ld.b	$r14,$r4,1
	addi.d	$r4,$r4,1
	bnez	$r14,.L582
.L586:
	or	$r4,$r0,$r0
.L583:
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
.L590:
	ld.b	$r13,$r12,0
	xor	$r14,$r13,$r5
	masknez	$r15,$r12,$r14
	maskeqz	$r4,$r4,$r14
	or	$r4,$r4,$r15
	addi.d	$r12,$r12,1
	bnez	$r13,.L590
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
	beqz	$r16,.L594
	.align	3
.L595:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L595
.L594:
	sub.d	$r18,$r12,$r5
	addi.d	$r18,$r18,-1
	bne	$r12,$r5,.L602
	jr	$r1
	.align	5
.L619:
	addi.d	$r4,$r4,1
	beqz	$r12,.L618
.L602:
	ld.b	$r12,$r4,0
	bne	$r12,$r16,.L619
	beqz	$r4,.L596
	ld.bu	$r13,$r4,0
	beqz	$r13,.L605
	add.d	$r17,$r4,$r18
	or	$r14,$r5,$r0
	or	$r12,$r4,$r0
	b	.L599
	.align	5
.L620:
	beq	$r12,$r17,.L598
	bne	$r15,$r13,.L598
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	addi.d	$r14,$r14,1
	beqz	$r13,.L598
.L599:
	ld.bu	$r15,$r14,0
	bnez	$r15,.L620
.L598:
	ld.bu	$r12,$r14,0
	beq	$r12,$r13,.L596
	addi.d	$r4,$r4,1
	b	.L602
	.align	5
.L618:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L596:
	jr	$r1
.L605:
	or	$r14,$r5,$r0
	b	.L598
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
	bcnez	$fcc0,.L630
.L622:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L625
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L624
.L625:
	jr	$r1
	.align	5
.L630:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L622
.L624:
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
	beqz	$r7,.L631
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L631
	sub.d	$r18,$r5,$r7
	add.d	$r18,$r17,$r18
	bgtu	$r17,$r18,.L631
	ld.b	$r19,$r6,0
	.align	3
.L638:
	ld.b	$r12,$r17,0
	or	$r4,$r17,$r0
	addi.d	$r17,$r17,1
	beq	$r12,$r19,.L653
.L633:
	bleu	$r17,$r18,.L638
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L653:
	addi.d	$r12,$r7,-1
	addi.d	$r13,$r6,1
	beqz	$r12,.L654
	or	$r14,$r17,$r0
	b	.L634
	.align	5
.L636:
	addi.d	$r12,$r12,-1
	addi.d	$r14,$r14,1
	addi.d	$r13,$r13,1
	beqz	$r12,.L655
.L634:
	ld.bu	$r16,$r14,0
	ld.bu	$r15,$r13,0
	beq	$r16,$r15,.L636
	beqz	$r12,.L631
	ld.bu	$r12,$r14,0
	ld.bu	$r13,$r13,0
	sub.w	$r12,$r12,$r13
	bnez	$r12,.L633
.L631:
	jr	$r1
	.align	5
.L655:
	jr	$r1
.L654:
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
	or	$r23,$r6,$r0
	or	$r24,$r4,$r0
	beqz	$r6,.L657
	bl	%plt(memmove)
.L657:
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
	bcnez	$fcc0,.L687
	or	$r15,$r0,$r0
.L663:
	pcalau12i	$r14,%pc_hi20(.LC16)
	pcalau12i	$r13,%pc_hi20(.LC13)
	or	$r12,$r0,$r0
	fld.d	$f2,$r14,%pc_lo12(.LC16)
	fld.d	$f1,$r13,%pc_lo12(.LC13)
	fcmp.sge.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L685
	.align	3
.L667:
	fmul.d	$f0,$f0,$f1
	addi.w	$r12,$r12,1
	fcmp.sge.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L667
.L668:
	stptr.w	$r12,$r4,0
	beqz	$r15,.L671
	fneg.d	$f0,$f0
.L671:
	jr	$r1
	.align	5
.L687:
	fneg.d	$f0,$f0
	addi.w	$r15,$r0,1			# 0x1
	b	.L663
	.align	5
.L685:
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L668
	movgr2fr.d	$f2,$r0
	fcmp.ceq.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L668
	.align	3
.L670:
	fadd.d	$f0,$f0,$f0
	addi.w	$r12,$r12,-1
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L668
	fadd.d	$f0,$f0,$f0
	addi.w	$r12,$r12,-1
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L670
	b	.L668
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
	srli.d	$r13,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r12,$r5
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
	bgeu	$r5,$r4,.L710
	.align	3
.L694:
	blt	$r5,$r0,.L695
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L695
	addi.w	$r13,$r13,-1
	bnez	$r13,.L694
.L703:
	or	$r13,$r0,$r0
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L695:
	beqz	$r12,.L703
.L710:
	or	$r13,$r0,$r0
	.align	3
.L699:
	bltu	$r4,$r5,.L698
	or	$r13,$r12,$r13
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r13,0
.L698:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L699
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
	addi.w	$r14,$r0,7			# 0x7
	srai.w	$r13,$r4,7
	ext.w.b	$r13,$r13
	xor	$r12,$r4,$r13
	or	$r4,$r12,$r0
	slli.w	$r12,$r12,8
	masknez	$r14,$r14,$r4
	clz.w	$r12,$r12
	addi.w	$r12,$r12,-1
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
	addi.w	$r13,$r0,63			# 0x3f
	srai.d	$r12,$r4,63
	xor	$r12,$r12,$r4
	clz.d	$r14,$r12
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
	beqz	$r13,.L720
	.align	3
.L719:
	andi	$r12,$r13,1
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L719
	jr	$r1
	.align	5
.L720:
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
	srli.w	$r15,$r6,3
	bstrpick.d	$r14,$r6,31,3
	and	$r12,$r6,$r12
	bltu	$r4,$r5,.L723
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bleu	$r4,$r13,.L737
.L723:
	beqz	$r14,.L726
	bstrpick.d	$r15,$r15,31,0
	or	$r13,$r0,$r0
	slli.d	$r15,$r15,3
	.align	3
.L727:
	ldx.d	$r14,$r5,$r13
	stx.d	$r14,$r4,$r13
	addi.d	$r13,$r13,8
	bne	$r15,$r13,.L727
.L726:
	bleu	$r6,$r12,.L722
	bstrpick.d	$r12,$r12,31,0
	.align	3
.L728:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bltu	$r13,$r6,.L728
	jr	$r1
	.align	5
.L737:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L738
	.align	3
.L729:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L729
.L722:
	jr	$r1
.L738:
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
	bltu	$r4,$r5,.L740
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L755
.L740:
	beqz	$r13,.L743
	bstrpick.d	$r14,$r14,31,0
	or	$r12,$r0,$r0
	slli.d	$r14,$r14,1
	.align	3
.L744:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r14,$r12,.L744
.L743:
	andi	$r12,$r6,1
	beqz	$r12,.L739
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
	.align	5
.L755:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L756
	.align	3
.L745:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L745
.L739:
	jr	$r1
.L756:
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
	srli.w	$r15,$r6,2
	bstrpick.d	$r14,$r6,31,2
	and	$r12,$r6,$r12
	bltu	$r4,$r5,.L758
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bleu	$r4,$r13,.L772
.L758:
	beqz	$r14,.L761
	bstrpick.d	$r15,$r15,31,0
	or	$r13,$r0,$r0
	slli.d	$r15,$r15,2
	.align	3
.L762:
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	addi.d	$r13,$r13,4
	bne	$r15,$r13,.L762
.L761:
	bleu	$r6,$r12,.L757
	bstrpick.d	$r12,$r12,31,0
	.align	3
.L763:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bltu	$r13,$r6,.L763
	jr	$r1
	.align	5
.L772:
	addi.w	$r12,$r6,-1
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	bstrpick.d	$r12,$r12,31,0
	beqz	$r6,.L773
	.align	3
.L764:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L764
.L757:
	jr	$r1
.L773:
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
	blt	$r4,$r0,.L779
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.align	5
.L779:
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
	blt	$r4,$r0,.L782
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.align	5
.L782:
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
	or	$r13,$r0,$r0
	addi.w	$r14,$r0,15			# 0xf
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L786:
	sub.w	$r12,$r14,$r13
	sra.w	$r12,$r4,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L785
	addi.w	$r13,$r13,1
	bne	$r13,$r15,.L786
.L785:
	or	$r4,$r13,$r0
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
	or	$r12,$r0,$r0
	addi.w	$r14,$r0,16			# 0x10
	.align	3
.L790:
	sra.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	bnez	$r13,.L789
	addi.w	$r12,$r12,1
	bne	$r12,$r14,.L790
.L789:
	or	$r4,$r12,$r0
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
	bcnez	$fcc0,.L798
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
	.align	5
.L798:
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
	or	$r14,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L800:
	sra.w	$r13,$r4,$r12
	addi.w	$r12,$r12,1
	andi	$r13,$r13,1
	add.w	$r14,$r13,$r14
	bne	$r12,$r15,.L800
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
	or	$r14,$r0,$r0
	or	$r12,$r0,$r0
	addi.w	$r15,$r0,16			# 0x10
	.align	3
.L803:
	sra.w	$r13,$r4,$r12
	addi.w	$r12,$r12,1
	andi	$r13,$r13,1
	add.w	$r14,$r13,$r14
	bne	$r12,$r15,.L803
	or	$r4,$r14,$r0
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
	beqz	$r13,.L808
	.align	3
.L807:
	andi	$r12,$r13,1
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L807
	jr	$r1
	.align	5
.L808:
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
	beqz	$r13,.L811
	beqz	$r5,.L811
	.align	3
.L812:
	andi	$r12,$r5,1
	slli.w	$r14,$r13,1
	bstrpick.d	$r5,$r5,31,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	slli.w	$r13,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r5,.L812
	jr	$r1
	.align	5
.L811:
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
	bgeu	$r5,$r4,.L834
	.align	3
.L818:
	blt	$r5,$r0,.L819
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r4,$r5,.L819
	addi.w	$r13,$r13,-1
	bnez	$r13,.L818
.L827:
	or	$r13,$r0,$r0
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L819:
	beqz	$r12,.L827
.L834:
	or	$r13,$r0,$r0
	.align	3
.L823:
	bltu	$r4,$r5,.L822
	or	$r13,$r12,$r13
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r13,0
.L822:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L823
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
	bcnez	$fcc0,.L836
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L836:
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
	bcnez	$fcc0,.L839
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L839:
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
	or	$r16,$r0,$r0
	bge	$r5,$r0,.L844
	sub.w	$r5,$r0,$r5
	addi.w	$r16,$r0,1			# 0x1
.L844:
	or	$r14,$r0,$r0
	beqz	$r5,.L845
	addi.w	$r13,$r0,32			# 0x20
	b	.L846
	.align	5
.L857:
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	beqz	$r13,.L845
.L846:
	andi	$r12,$r5,1
	slli.w	$r15,$r4,1
	srai.d	$r5,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r4,$r12
	slli.w	$r4,$r15,0
	add.w	$r14,$r12,$r14
	bnez	$r5,.L857
.L845:
	sub.w	$r12,$r0,$r14
	masknez	$r14,$r14,$r16
	maskeqz	$r4,$r12,$r16
	or	$r4,$r4,$r14
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
	blt	$r4,$r0,.L880
.L859:
	bge	$r5,$r0,.L860
	sub.d	$r5,$r0,$r5
	xori	$r15,$r15,1
.L860:
	slli.w	$r13,$r4,0
	slli.w	$r5,$r5,0
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bleu	$r13,$r5,.L879
	.align	3
.L861:
	blt	$r5,$r0,.L862
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bleu	$r13,$r5,.L862
	addi.w	$r14,$r14,-1
	bnez	$r14,.L861
.L871:
	or	$r14,$r0,$r0
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r12,$r0,$r14
	masknez	$r14,$r14,$r15
	maskeqz	$r4,$r12,$r15
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L862:
	beqz	$r12,.L871
.L879:
	or	$r14,$r0,$r0
	.align	3
.L866:
	bltu	$r13,$r5,.L865
	sub.w	$r13,$r13,$r5
	or	$r14,$r12,$r14
.L865:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L866
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r12,$r0,$r14
	masknez	$r14,$r14,$r15
	maskeqz	$r4,$r12,$r15
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L880:
	sub.d	$r4,$r0,$r4
	addi.w	$r15,$r0,1			# 0x1
	b	.L859
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
	bge	$r4,$r0,.L882
	sub.d	$r4,$r0,$r4
	addi.w	$r17,$r0,1			# 0x1
.L882:
	srai.d	$r12,$r5,63
	slli.w	$r13,$r4,0
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	xor	$r5,$r12,$r5
	sub.w	$r12,$r5,$r12
	bleu	$r13,$r12,.L897
	.align	3
.L883:
	blt	$r12,$r0,.L902
	slli.w	$r12,$r12,1
	slli.w	$r14,$r14,1
	bleu	$r13,$r12,.L902
	addi.w	$r15,$r15,-1
	bnez	$r15,.L883
.L886:
	bstrpick.d	$r13,$r13,31,0
	sub.d	$r12,$r0,$r13
	masknez	$r13,$r13,$r17
	maskeqz	$r4,$r12,$r17
	or	$r4,$r4,$r13
	jr	$r1
	.align	5
.L902:
	beqz	$r14,.L886
.L897:
	sltu	$r16,$r13,$r12
	sub.w	$r15,$r13,$r12
	bstrpick.d	$r14,$r14,31,1
	masknez	$r15,$r15,$r16
	bstrpick.d	$r12,$r12,31,1
	maskeqz	$r13,$r13,$r16
	or	$r13,$r15,$r13
	b	.L902
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
	addi.w	$r15,$r0,16			# 0x10
	addi.w	$r12,$r0,1			# 0x1
	slli.w	$r14,$r5,0
	slli.w	$r13,$r4,0
	bgeu	$r5,$r4,.L920
	.align	3
.L904:
	srli.d	$r16,$r5,15
	bnez	$r16,.L905
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
	bstrpick.w	$r5,$r5,15,0
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r5,0
	bleu	$r13,$r5,.L905
	addi.w	$r15,$r15,-1
	bnez	$r15,.L904
.L913:
	or	$r15,$r0,$r0
.L907:
	masknez	$r15,$r15,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r15,$r4
	jr	$r1
	.align	5
.L905:
	beqz	$r12,.L913
.L920:
	or	$r15,$r0,$r0
	.align	3
.L909:
	bltu	$r13,$r14,.L908
	sub.w	$r4,$r4,$r5
	or	$r15,$r12,$r15
	bstrpick.w	$r4,$r4,15,0
	bstrpick.w	$r15,$r15,15,0
.L908:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	beqz	$r12,.L907
	slli.w	$r14,$r5,0
	slli.w	$r13,$r4,0
	b	.L909
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
	bltu	$r5,$r4,.L922
	b	.L938
	.align	5
.L924:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L923
	addi.w	$r13,$r13,-1
	beqz	$r13,.L931
.L922:
	and	$r14,$r5,$r15
	beqz	$r14,.L924
.L923:
	beqz	$r12,.L931
.L938:
	or	$r13,$r0,$r0
	.align	3
.L927:
	bltu	$r4,$r5,.L926
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L926:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	bnez	$r12,.L927
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L931:
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
	beqz	$r13,.L940
	sll.w	$r5,$r4,$r5
	or	$r13,$r0,$r0
.L941:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	bstrins.d	$r4,$r5,63,32
.L939:
	jr	$r1
	.align	5
.L940:
	beqz	$r5,.L939
	sub.w	$r15,$r0,$r5
	srai.d	$r14,$r4,32
	sll.w	$r13,$r4,$r5
	srl.w	$r12,$r4,$r15
	sll.w	$r14,$r14,$r5
	or	$r12,$r12,$r14
	slli.w	$r5,$r12,0
	b	.L941
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
	beqz	$r14,.L946
	sll.d	$r5,$r4,$r6
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L946:
	beqz	$r6,.L948
	sub.w	$r14,$r0,$r6
	sll.d	$r5,$r5,$r6
	sll.d	$r4,$r4,$r6
	srl.d	$r12,$r12,$r14
	or	$r5,$r12,$r5
.L948:
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
	beqz	$r13,.L952
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	sra.w	$r12,$r12,$r5
.L953:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r12,31,0
.L951:
	jr	$r1
	.align	5
.L952:
	beqz	$r5,.L951
	srai.d	$r13,$r4,32
	sub.w	$r14,$r0,$r5
	srl.w	$r12,$r4,$r5
	sll.w	$r14,$r13,$r14
	sra.w	$r13,$r13,$r5
	or	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	b	.L953
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
	beqz	$r14,.L958
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
	.align	5
.L958:
	beqz	$r6,.L960
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	sra.d	$r5,$r5,$r6
	sll.d	$r12,$r12,$r14
	or	$r4,$r12,$r4
.L960:
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
	addi.w	$r12,$r0,16			# 0x10
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	addi.w	$r17,$r0,8			# 0x8
	addi.w	$r16,$r0,4			# 0x4
	addi.w	$r15,$r0,2			# 0x2
	sltu	$r14,$r14,$r4
	xori	$r14,$r14,1
	slli.w	$r14,$r14,4
	sub.w	$r12,$r12,$r14
	srl.w	$r12,$r4,$r12
	and	$r13,$r13,$r12
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,3
	sub.w	$r17,$r17,$r13
	add.w	$r13,$r13,$r14
	srl.w	$r12,$r12,$r17
	andi	$r14,$r12,240
	sltui	$r14,$r14,1
	slli.w	$r14,$r14,2
	sub.w	$r16,$r16,$r14
	add.w	$r14,$r14,$r13
	srl.w	$r12,$r12,$r16
	andi	$r13,$r12,12
	sltui	$r13,$r13,1
	slli.w	$r13,$r13,1
	sub.w	$r16,$r15,$r13
	add.w	$r13,$r13,$r14
	srl.w	$r12,$r12,$r16
	sub.w	$r4,$r15,$r12
	andi	$r12,$r12,2
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
	masknez	$r4,$r4,$r5
	addi.w	$r12,$r13,-1
	slli.d	$r13,$r13,6
	and	$r12,$r12,$r5
	or	$r12,$r12,$r4
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
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	blt	$r14,$r13,.L969
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L968
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L968
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L969:
	or	$r4,$r0,$r0
.L968:
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
	blt	$r14,$r12,.L974
	addi.w	$r13,$r0,2			# 0x2
	bgt	$r14,$r12,.L974
	slli.w	$r12,$r4,0
	slli.w	$r5,$r5,0
	or	$r13,$r0,$r0
	bltu	$r12,$r5,.L974
	sltu	$r13,$r5,$r12
	addi.d	$r13,$r13,1
.L974:
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
	blt	$r5,$r7,.L981
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L980
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L980
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L981:
	or	$r4,$r0,$r0
.L980:
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
	addi.w	$r15,$r0,2			# 0x2
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
	add.w	$r13,$r13,$r14
	andi	$r4,$r12,3
	sltui	$r4,$r4,1
	slli.w	$r4,$r4,1
	srl.w	$r12,$r12,$r4
	add.w	$r4,$r4,$r13
	andi	$r12,$r12,3
	nor	$r13,$r0,$r12
	srli.w	$r12,$r12,1
	andi	$r13,$r13,1
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
	masknez	$r5,$r5,$r4
	addi.w	$r13,$r12,-1
	slli.d	$r12,$r12,6
	and	$r13,$r13,$r4
	or	$r5,$r5,$r13
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
	bnez	$r4,.L988
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
	.align	5
.L988:
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
	beqz	$r13,.L992
	bstrpick.d	$r12,$r4,63,32
	or	$r13,$r0,$r0
	srl.w	$r5,$r12,$r5
.L993:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r5,31,0
.L991:
	jr	$r1
	.align	5
.L992:
	beqz	$r5,.L991
	bstrpick.d	$r13,$r4,63,32
	sub.w	$r14,$r0,$r5
	srl.w	$r12,$r4,$r5
	sll.w	$r14,$r13,$r14
	srl.w	$r13,$r13,$r5
	or	$r12,$r14,$r12
	slli.w	$r5,$r12,0
	b	.L993
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
	beqz	$r14,.L998
	srl.d	$r4,$r5,$r6
	or	$r5,$r0,$r0
	jr	$r1
	.align	5
.L998:
	beqz	$r6,.L1000
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	srl.d	$r5,$r5,$r6
	sll.d	$r12,$r12,$r14
	or	$r4,$r12,$r4
.L1000:
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
	or	$r4,$r0,$r0
	bstrpick.w	$r12,$r14,15,0
	bstrpick.w	$r13,$r5,15,0
	srli.w	$r14,$r14,16
	srli.w	$r5,$r5,16
	mul.w	$r15,$r12,$r13
	mul.w	$r13,$r13,$r14
	mul.w	$r12,$r12,$r5
	mul.w	$r14,$r14,$r5
	srli.w	$r17,$r15,16
	bstrpick.d	$r16,$r15,15,0
	add.w	$r13,$r13,$r17
	slli.w	$r15,$r13,16
	srli.w	$r13,$r13,16
	add.w	$r15,$r15,$r16
	add.w	$r13,$r13,$r14
	srli.w	$r14,$r15,16
	bstrpick.d	$r15,$r15,15,0
	add.w	$r12,$r12,$r14
	slli.w	$r14,$r12,16
	srli.w	$r12,$r12,16
	add.w	$r14,$r14,$r15
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
	or	$r15,$r0,$r0
	bstrpick.w	$r12,$r4,15,0
	bstrpick.w	$r13,$r5,15,0
	srli.w	$r14,$r4,16
	srli.w	$r17,$r5,16
	mul.w	$r16,$r12,$r13
	mul.w	$r13,$r13,$r14
	mul.w	$r12,$r12,$r17
	mul.w	$r17,$r14,$r17
	srai.d	$r14,$r5,32
	srai.d	$r18,$r4,32
	mul.w	$r14,$r4,$r14
	mul.w	$r5,$r5,$r18
	srli.w	$r19,$r16,16
	bstrpick.d	$r18,$r16,15,0
	add.w	$r13,$r13,$r19
	slli.w	$r16,$r13,16
	srli.w	$r13,$r13,16
	add.w	$r16,$r16,$r18
	add.w	$r13,$r13,$r17
	srli.w	$r17,$r16,16
	bstrpick.d	$r16,$r16,15,0
	add.w	$r12,$r12,$r17
	slli.w	$r17,$r12,16
	srli.w	$r12,$r12,16
	add.w	$r16,$r17,$r16
	add.w	$r12,$r12,$r13
	bstrins.d	$r15,$r16,31,0
	bstrins.d	$r15,$r12,63,32
	srai.d	$r12,$r15,32
	or	$r4,$r15,$r0
	add.w	$r12,$r14,$r12
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
	bstrpick.d	$r13,$r13,31,0
	add.d	$r5,$r5,$r15
	bstrpick.d	$r15,$r5,31,0
	srli.d	$r5,$r5,32
	add.d	$r12,$r12,$r15
	add.d	$r5,$r5,$r14
	slli.d	$r4,$r12,32
	srli.d	$r12,$r12,32
	add.d	$r4,$r13,$r4
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
	mul.d	$r7,$r4,$r7
	mulw.d.wu	$r13,$r6,$r15
	mulw.d.wu	$r12,$r4,$r16
	mulw.d.wu	$r15,$r15,$r16
	mul.d	$r5,$r6,$r5
	srli.d	$r16,$r14,32
	bstrpick.d	$r4,$r14,31,0
	add.d	$r13,$r13,$r16
	bstrpick.d	$r14,$r13,31,0
	srli.d	$r13,$r13,32
	add.d	$r12,$r12,$r14
	add.d	$r13,$r13,$r15
	srli.d	$r14,$r12,32
	slli.d	$r12,$r12,32
	add.d	$r13,$r13,$r14
	add.d	$r4,$r4,$r12
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
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	srai.d	$r12,$r4,32
	xor	$r12,$r12,$r4
	srli.w	$r14,$r12,16
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
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
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	xor	$r5,$r4,$r5
	srai.d	$r12,$r5,32
	xor	$r12,$r12,$r5
	srli.w	$r14,$r12,16
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
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
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	srli.w	$r12,$r4,16
	xor	$r12,$r12,$r4
	srli.w	$r14,$r12,8
	xor	$r12,$r12,$r14
	srli.w	$r14,$r12,4
	xor	$r12,$r12,$r14
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
	lu12i.w	$r14,858992640>>12			# 0x33333000
	ori	$r14,$r14,819
	bstrins.d	$r14,$r14,63,32
	lu12i.w	$r15,252641280>>12			# 0xf0f0000
	ori	$r15,$r15,3855
	bstrins.d	$r15,$r15,63,32
	srli.d	$r12,$r4,1
	and	$r12,$r12,$r13
	sub.d	$r4,$r4,$r12
	srli.d	$r13,$r4,2
	and	$r4,$r4,$r14
	and	$r13,$r13,$r14
	add.d	$r13,$r13,$r4
	srli.d	$r12,$r13,4
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
	ori	$r13,$r13,1365
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	lu12i.w	$r14,252641280>>12			# 0xf0f0000
	ori	$r14,$r14,3855
	srli.w	$r15,$r4,1
	and	$r13,$r13,$r15
	sub.w	$r4,$r4,$r13
	srli.w	$r13,$r4,2
	and	$r4,$r12,$r4
	and	$r12,$r12,$r13
	add.w	$r12,$r12,$r4
	srli.w	$r13,$r12,4
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
	ori	$r15,$r15,1365
	bstrins.d	$r15,$r15,63,32
	lu12i.w	$r13,858992640>>12			# 0x33333000
	ori	$r13,$r13,819
	bstrins.d	$r13,$r13,63,32
	lu12i.w	$r16,252641280>>12			# 0xf0f0000
	ori	$r16,$r16,3855
	bstrins.d	$r16,$r16,63,32
	slli.d	$r17,$r5,63
	srli.d	$r12,$r4,1
	srli.d	$r14,$r5,1
	or	$r12,$r17,$r12
	and	$r14,$r14,$r15
	and	$r12,$r12,$r15
	sub.d	$r5,$r5,$r14
	sub.d	$r12,$r4,$r12
	sltu	$r4,$r4,$r12
	srli.d	$r14,$r12,2
	and	$r12,$r12,$r13
	sub.d	$r5,$r5,$r4
	slli.d	$r17,$r5,62
	srli.d	$r15,$r5,2
	and	$r5,$r5,$r13
	or	$r14,$r17,$r14
	and	$r15,$r15,$r13
	and	$r14,$r14,$r13
	add.d	$r15,$r15,$r5
	add.d	$r12,$r14,$r12
	sltu	$r14,$r12,$r14
	srli.d	$r13,$r12,4
	add.d	$r14,$r14,$r15
	slli.d	$r17,$r14,60
	srli.d	$r15,$r14,4
	or	$r13,$r17,$r13
	add.d	$r14,$r15,$r14
	add.d	$r12,$r13,$r12
	sltu	$r13,$r12,$r13
	and	$r12,$r12,$r16
	add.d	$r13,$r13,$r14
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
	fmov.d	$f1,$f0
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f0,$r12,%pc_lo12(.LC16)
	or	$r12,$r4,$r0
	b	.L1018
	.align	5
.L1023:
	fmul.d	$f1,$f1,$f1
.L1018:
	andi	$r13,$r12,1
	beqz	$r13,.L1016
	fmul.d	$f0,$f0,$f1
.L1016:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	bnez	$r12,.L1023
	blt	$r4,$r0,.L1024
	jr	$r1
	.align	5
.L1024:
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
	pcalau12i	$r12,%pc_hi20(.LC18)
	fld.s	$f0,$r12,%pc_lo12(.LC18)
	or	$r12,$r4,$r0
	b	.L1028
	.align	5
.L1033:
	fmul.s	$f1,$f1,$f1
.L1028:
	andi	$r13,$r12,1
	beqz	$r13,.L1026
	fmul.s	$f0,$f0,$f1
.L1026:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	bnez	$r12,.L1033
	blt	$r4,$r0,.L1034
	jr	$r1
	.align	5
.L1034:
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
	bltu	$r14,$r13,.L1037
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L1036
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1036
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1037:
	or	$r4,$r0,$r0
.L1036:
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
	bltu	$r14,$r12,.L1042
	addi.w	$r13,$r0,2			# 0x2
	bgtu	$r14,$r12,.L1042
	slli.w	$r12,$r4,0
	slli.w	$r5,$r5,0
	or	$r13,$r0,$r0
	bltu	$r12,$r5,.L1042
	sltu	$r13,$r5,$r12
	addi.d	$r13,$r13,1
.L1042:
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
	bltu	$r5,$r7,.L1049
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L1048
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1048
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1049:
	or	$r4,$r0,$r0
.L1048:
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
