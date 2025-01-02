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
	addi.d	$r12,$r6,-1
	addi.w	$r15,$r0,14			# 0xe
	bleu	$r12,$r15,.L7
	addi.d	$r14,$r6,-2
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r13,$r13,$r14
	addi.d	$r13,$r13,14
	bleu	$r13,$r15,.L7
	addi.d	$r13,$r6,-16
	srli.d	$r18,$r6,4
	addi.w	$r14,$r0,4			# 0x4
	add.d	$r12,$r5,$r13
	or	$r16,$r0,$r0
	add.d	$r13,$r4,$r13
	bleu	$r18,$r14,.L8
	addi.d	$r17,$r18,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.d	$r16,$r17,4
	.align	3
.L9:
	vld	$vr0,$r12,0
	preld	0,$r12,-464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,-16
	vst	$vr0,$r13,-16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,-32
	vst	$vr0,$r13,-32
	addi.d	$r14,$r14,4
	vld	$vr0,$r12,-48
	vst	$vr0,$r13,-48
	addi.d	$r12,$r12,-64
	addi.d	$r13,$r13,-64
	bne	$r15,$r17,.L9
.L8:
	or	$r14,$r0,$r0
.L10:
	vldx	$vr0,$r12,$r14
	addi.d	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,-16
	bgtu	$r18,$r16,.L10
	andi	$r12,$r6,15
	add.d	$r5,$r5,$r12
	add.d	$r13,$r4,$r12
	beqz	$r12,.L6
	ld.b	$r15,$r5,-1
	addi.w	$r14,$r0,1			# 0x1
	st.b	$r15,$r13,-1
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-2
	addi.w	$r14,$r0,2			# 0x2
	st.b	$r15,$r13,-2
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-3
	addi.w	$r14,$r0,3			# 0x3
	st.b	$r15,$r13,-3
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-4
	addi.w	$r14,$r0,4			# 0x4
	st.b	$r15,$r13,-4
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-5
	addi.w	$r14,$r0,5			# 0x5
	st.b	$r15,$r13,-5
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-6
	addi.w	$r14,$r0,6			# 0x6
	st.b	$r15,$r13,-6
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-7
	addi.w	$r14,$r0,7			# 0x7
	st.b	$r15,$r13,-7
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-8
	addi.w	$r14,$r0,8			# 0x8
	st.b	$r15,$r13,-8
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-9
	addi.w	$r14,$r0,9			# 0x9
	st.b	$r15,$r13,-9
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-10
	addi.w	$r14,$r0,10			# 0xa
	st.b	$r15,$r13,-10
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-11
	addi.w	$r14,$r0,11			# 0xb
	st.b	$r15,$r13,-11
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-12
	addi.w	$r14,$r0,12			# 0xc
	st.b	$r15,$r13,-12
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-13
	addi.w	$r14,$r0,13			# 0xd
	st.b	$r15,$r13,-13
	beq	$r12,$r14,.L6
	ld.b	$r15,$r5,-14
	addi.w	$r14,$r0,14			# 0xe
	st.b	$r15,$r13,-14
	beq	$r12,$r14,.L6
	ld.b	$r12,$r5,-15
	st.b	$r12,$r13,-15
	jr	$r1
	.align	5
.L5:
	bne	$r4,$r5,.L44
.L6:
	jr	$r1
	.align	5
.L44:
	beqz	$r6,.L6
	addi.d	$r12,$r6,-1
	addi.w	$r13,$r0,14			# 0xe
	bleu	$r12,$r13,.L23
	addi.d	$r12,$r5,1
	sub.d	$r12,$r4,$r12
	bleu	$r12,$r13,.L23
	srli.d	$r18,$r6,4
	addi.w	$r12,$r0,4			# 0x4
	bleu	$r18,$r12,.L24
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	addi.d	$r17,$r18,-5
	and	$r17,$r17,$r14
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r14,$r0,$r0
	addi.d	$r16,$r17,4
	.align	3
.L16:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.d	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r15,$r17,.L16
.L15:
	or	$r14,$r0,$r0
.L17:
	vldx	$vr0,$r12,$r14
	addi.d	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bltu	$r16,$r18,.L17
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	and	$r12,$r6,$r12
	andi	$r15,$r6,15
	add.d	$r14,$r5,$r12
	add.d	$r13,$r4,$r12
	sub.d	$r6,$r6,$r12
	beqz	$r15,.L6
	ldx.b	$r16,$r5,$r12
	addi.w	$r15,$r0,1			# 0x1
	stx.b	$r16,$r4,$r12
	beq	$r6,$r15,.L6
	ld.b	$r15,$r14,1
	addi.w	$r12,$r0,2			# 0x2
	st.b	$r15,$r13,1
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,2
	addi.w	$r12,$r0,3			# 0x3
	st.b	$r15,$r13,2
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,3
	addi.w	$r12,$r0,4			# 0x4
	st.b	$r15,$r13,3
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,4
	addi.w	$r12,$r0,5			# 0x5
	st.b	$r15,$r13,4
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,5
	addi.w	$r12,$r0,6			# 0x6
	st.b	$r15,$r13,5
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,6
	addi.w	$r12,$r0,7			# 0x7
	st.b	$r15,$r13,6
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,7
	addi.w	$r12,$r0,8			# 0x8
	st.b	$r15,$r13,7
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,8
	addi.w	$r12,$r0,9			# 0x9
	st.b	$r15,$r13,8
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,9
	addi.w	$r12,$r0,10			# 0xa
	st.b	$r15,$r13,9
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,10
	addi.w	$r12,$r0,11			# 0xb
	st.b	$r15,$r13,10
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,11
	addi.w	$r12,$r0,12			# 0xc
	st.b	$r15,$r13,11
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,12
	addi.w	$r12,$r0,13			# 0xd
	st.b	$r15,$r13,12
	beq	$r6,$r12,.L6
	ld.b	$r15,$r14,13
	addi.w	$r12,$r0,14			# 0xe
	st.b	$r15,$r13,13
	beq	$r6,$r12,.L6
	ld.b	$r12,$r14,14
	st.b	$r12,$r13,14
	jr	$r1
	.align	5
.L7:
	addi.d	$r5,$r5,-1
	addi.d	$r14,$r4,-1
	b	.L12
	.align	5
.L45:
	addi.d	$r12,$r12,-1
.L12:
	ldx.b	$r13,$r5,$r6
	stx.b	$r13,$r14,$r6
	or	$r6,$r12,$r0
	bnez	$r12,.L45
	jr	$r1
	.align	5
.L23:
	or	$r12,$r0,$r0
	.align	3
.L19:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L19
	jr	$r1
.L24:
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r16,$r0,$r0
	b	.L15
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
.L56:
	beqz	$r7,.L57
	ld.bu	$r12,$r5,0
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	st.b	$r12,$r4,0
	addi.d	$r4,$r4,1
	bne	$r12,$r6,.L56
	jr	$r1
	.align	5
.L57:
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
	bnez	$r6,.L59
	b	.L62
	.align	5
.L61:
	addi.d	$r4,$r4,1
	beqz	$r6,.L62
.L59:
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r5,.L61
	jr	$r1
	.align	5
.L62:
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
	beqz	$r6,.L69
	.align	3
.L76:
	ld.bu	$r13,$r4,0
	ld.bu	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L75
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	bnez	$r6,.L76
.L69:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L75:
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
	beqz	$r6,.L78
	bl	%plt(memcpy)
.L78:
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
	b	.L84
	.align	5
.L86:
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	beq	$r12,$r5,.L83
.L84:
	or	$r4,$r6,$r0
	bne	$r6,$r13,.L86
	or	$r4,$r0,$r0
.L83:
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
	beqz	$r6,.L90
	bstrpick.w	$r5,$r5,7,0
	bl	%plt(memset)
.L90:
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
	beqz	$r12,.L93
	.align	3
.L94:
	ld.b	$r12,$r5,1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	st.b	$r12,$r4,0
	bnez	$r12,.L94
.L93:
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
	bnez	$r12,.L100
	jr	$r1
	.align	5
.L102:
	ld.b	$r12,$r4,1
	addi.d	$r4,$r4,1
	beqz	$r12,.L99
.L100:
	bstrpick.w	$r12,$r12,7,0
	bne	$r12,$r5,.L102
.L99:
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
.L108:
	ld.b	$r12,$r4,0
	beq	$r12,$r5,.L107
	addi.d	$r4,$r4,1
	bnez	$r12,.L108
	or	$r4,$r0,$r0
.L107:
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
	bne	$r13,$r14,.L117
	.align	3
.L111:
	beqz	$r13,.L112
	ldx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	ldx.b	$r14,$r5,$r12
	beq	$r13,$r14,.L111
.L117:
	bstrpick.w	$r13,$r13,7,0
.L112:
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
	beqz	$r12,.L121
	or	$r12,$r4,$r0
	.align	3
.L120:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L120
	sub.d	$r4,$r12,$r4
	jr	$r1
	.align	5
.L121:
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
	beqz	$r6,.L131
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	add.d	$r14,$r4,$r6
	bnez	$r12,.L127
	b	.L135
	.align	5
.L128:
	beq	$r4,$r14,.L134
	addi.d	$r4,$r4,1
	bne	$r13,$r12,.L134
	ld.bu	$r12,$r4,0
	beqz	$r12,.L136
	or	$r5,$r15,$r0
.L127:
	ld.bu	$r13,$r5,0
	addi.d	$r15,$r5,1
	bnez	$r13,.L128
.L134:
	slli.w	$r4,$r12,0
.L126:
	sub.w	$r4,$r4,$r13
	jr	$r1
	.align	5
.L131:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L136:
	ld.bu	$r13,$r5,1
	or	$r4,$r0,$r0
	sub.w	$r4,$r4,$r13
	jr	$r1
.L135:
	ld.bu	$r13,$r5,0
	or	$r4,$r0,$r0
	b	.L126
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
	ble	$r6,$r12,.L137
	addi.d	$r14,$r6,-2
	addi.w	$r12,$r0,61			# 0x3d
	srli.d	$r17,$r6,1
	bleu	$r14,$r12,.L139
	srli.d	$r15,$r6,6
	slli.d	$r16,$r15,6
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	add.d	$r14,$r4,$r16
	.align	3
.L140:
	vld	$vr3,$r12,0
	vld	$vr2,$r12,16
	vld	$vr1,$r12,32
	vld	$vr0,$r12,48
	vshuf4i.b	$vr3,$vr3,0xb1
	vshuf4i.b	$vr2,$vr2,0xb1
	vst	$vr3,$r13,0
	vst	$vr2,$r13,16
	vshuf4i.b	$vr1,$vr1,0xb1
	vshuf4i.b	$vr0,$vr0,0xb1
	vst	$vr1,$r13,32
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r12,$r14,.L140
	slli.d	$r12,$r15,5
	sub.d	$r13,$r0,$r12
	add.d	$r5,$r5,$r16
	add.d	$r4,$r4,$r16
	alsl.d	$r6,$r13,$r6,1
	beq	$r17,$r12,.L137
	addi.d	$r14,$r6,-2
.L139:
	srli.d	$r14,$r14,1
	addi.d	$r14,$r14,1
	alsl.d	$r14,$r14,$r4,1
	.align	3
.L142:
	ld.bu	$r13,$r4,1
	ld.bu	$r12,$r4,0
	addi.d	$r4,$r4,2
	st.b	$r13,$r5,0
	st.b	$r12,$r5,1
	addi.d	$r5,$r5,2
	bne	$r14,$r4,.L142
.L137:
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
	bleu	$r4,$r13,.L163
	addi.w	$r13,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r13,$r14,.L166
	jr	$r1
	.align	5
.L163:
	addi.w	$r4,$r0,1			# 0x1
	jr	$r1
	.align	5
.L166:
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
	bleu	$r4,$r13,.L175
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L170
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L170
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	add.w	$r13,$r12,$r13
	bleu	$r13,$r14,.L170
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
.L170:
	jr	$r1
	.align	5
.L175:
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
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L185
	fsub.d	$f0,$f0,$f1
	jr	$r1
	.align	5
.L185:
	movgr2fr.d	$f0,$r0
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
	fcmp.sgt.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L191
	fsub.s	$f0,$f0,$f1
	jr	$r1
	.align	5
.L191:
	movgr2fr.w	$f0,$r0
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
	fst.d	$f0,$r3,0
	fst.d	$f1,$r3,8
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L193
	beqz	$r12,.L192
	fmov.d	$f0,$f1
.L192:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L193:
	.cfi_restore_state
	fcmp.slt.d	$fcc0,$f0,$f1
	fmov.d	$f0,$f1
	fld.d	$f1,$r3,0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	fsel	$f0,$f1,$f0,$fcc0
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
	fst.s	$f0,$r3,8
	fst.s	$f1,$r3,12
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L199
	beqz	$r12,.L198
	fmov.s	$f0,$f1
.L198:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L199:
	.cfi_restore_state
	fcmp.slt.s	$fcc0,$f0,$f1
	fmov.s	$f0,$f1
	fld.s	$f1,$r3,8
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	fsel	$f0,$f1,$f0,$fcc0
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
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	st.d	$r1,$r3,40
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 1, -8
	srli.d	$r12,$r5,63
	srli.d	$r13,$r7,63
	or	$r25,$r5,$r0
	or	$r23,$r7,$r0
	or	$r26,$r4,$r0
	or	$r24,$r6,$r0
	beq	$r12,$r13,.L205
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	maskeqz	$r24,$r6,$r12
	masknez	$r25,$r5,$r12
	masknez	$r4,$r4,$r12
	maskeqz	$r12,$r7,$r12
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r4,$r4,$r24
	or	$r5,$r25,$r12
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L205:
	.cfi_restore_state
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L208
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L208:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
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
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	ld.d	$r12,$r3,8
	ldptr.d	$r13,$r3,0
	srli.d	$r12,$r12,63
	srli.d	$r13,$r13,63
	beq	$r12,$r13,.L215
	fmov.d	$f0,$f1
	beqz	$r12,.L214
	fld.d	$f0,$r3,8
.L214:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L215:
	.cfi_restore_state
	fcmp.slt.d	$fcc0,$f0,$f1
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	fsel	$f0,$f1,$f0,$fcc0
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
	fst.s	$f0,$r3,12
	fst.s	$f1,$r3,8
	ldptr.w	$r12,$r3,12
	ldptr.w	$r13,$r3,8
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	and	$r13,$r13,$r14
	slli.w	$r12,$r12,0
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L221
	fmov.s	$f0,$f1
	beqz	$r12,.L220
	fld.s	$f0,$r3,12
.L220:
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L221:
	.cfi_restore_state
	fcmp.slt.s	$fcc0,$f0,$f1
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	fsel	$f0,$f1,$f0,$fcc0
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
	st.d	$r23,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	st.d	$r1,$r3,40
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 1, -8
	srli.d	$r12,$r5,63
	srli.d	$r13,$r7,63
	or	$r23,$r5,$r0
	or	$r25,$r7,$r0
	or	$r24,$r4,$r0
	or	$r26,$r6,$r0
	beq	$r12,$r13,.L227
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	masknez	$r25,$r7,$r12
	masknez	$r6,$r6,$r12
	maskeqz	$r4,$r4,$r12
	maskeqz	$r12,$r5,$r12
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r5,$r25,$r12
	or	$r4,$r6,$r4
	ld.d	$r25,$r3,16
	.cfi_restore 25
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L227:
	.cfi_restore_state
	bl	%plt(__lttf2)
	or	$r5,$r23,$r0
	blt	$r4,$r0,.L230
	or	$r24,$r26,$r0
	or	$r5,$r25,$r0
.L230:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,24
	.cfi_restore 24
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
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
	beqz	$r4,.L237
	la.local	$r14,.LANCHOR1
	.align	3
.L238:
	andi	$r13,$r4,63
	ldx.bu	$r13,$r14,$r13
	bstrpick.d	$r4,$r4,31,6
	addi.d	$r12,$r12,1
	st.b	$r13,$r12,-1
	bnez	$r4,.L238
.L237:
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
	beqz	$r5,.L250
	ldptr.d	$r12,$r5,0
	st.d	$r5,$r4,8
	stptr.d	$r12,$r4,0
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L244
	st.d	$r4,$r12,8
.L244:
	jr	$r1
	.align	5
.L250:
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
	beqz	$r12,.L252
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L252:
	ld.d	$r13,$r4,8
	beqz	$r13,.L251
	stptr.d	$r12,$r13,0
.L251:
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
	beqz	$r26,.L261
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	stptr.d	$r31,$r3,0
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 31, -80
	or	$r23,$r5,$r0
	or	$r31,$r8,$r0
	or	$r24,$r0,$r0
	b	.L263
	.align	5
.L278:
	add.d	$r23,$r23,$r25
	beq	$r26,$r24,.L277
.L263:
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r31,0
	or	$r28,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L278
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
.L260:
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
.L277:
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
.L261:
	mul.d	$r28,$r25,$r26
	addi.d	$r26,$r26,1
	stptr.d	$r26,$r29,0
	add.d	$r28,$r30,$r28
	beqz	$r25,.L260
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	or	$r4,$r28,$r0
	bl	%plt(memmove)
	b	.L260
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
	beqz	$r28,.L280
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
	b	.L282
	.align	5
.L293:
	add.d	$r23,$r23,$r27
	beq	$r28,$r24,.L292
.L282:
	or	$r5,$r23,$r0
	or	$r4,$r25,$r0
	jirl	$r1,$r26,0
	or	$r29,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L293
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
.L292:
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
.L280:
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
.L302:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L296
	bleu	$r12,$r15,.L296
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L297
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L313
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L303
	addi.w	$r18,$r0,1			# 0x1
.L300:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L304:
	ld.b	$r13,$r12,1
	alsl.w	$r4,$r4,$r4,2
	slli.w	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.w	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L304
	sub.w	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L303:
	jr	$r1
	.align	5
.L296:
	addi.d	$r4,$r4,1
	b	.L302
	.align	5
.L313:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L300
.L312:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L297:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r18,$r0,$r0
	bleu	$r14,$r15,.L300
	b	.L312
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
.L321:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L315
	bleu	$r12,$r15,.L315
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L316
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L332
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L314
	addi.w	$r18,$r0,1			# 0x1
.L319:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L323:
	ld.b	$r13,$r12,1
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.d	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L323
	sub.d	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L314:
	jr	$r1
	.align	5
.L315:
	addi.d	$r4,$r4,1
	b	.L321
	.align	5
.L332:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L319
.L331:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L316:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r18,$r0,$r0
	bleu	$r14,$r15,.L319
	b	.L331
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
.L338:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L334
	bleu	$r12,$r15,.L334
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L335
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L351
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	addi.w	$r18,$r0,1			# 0x1
	bgtu	$r14,$r15,.L350
.L339:
	or	$r4,$r0,$r0
	addi.w	$r17,$r0,9			# 0x9
	.align	3
.L342:
	ld.b	$r13,$r12,1
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r16,$r4,1
	or	$r15,$r14,$r0
	sub.d	$r4,$r16,$r14
	addi.w	$r14,$r13,-48
	addi.d	$r12,$r12,1
	bleu	$r14,$r17,.L342
	sub.d	$r15,$r15,$r16
	maskeqz	$r4,$r4,$r18
	masknez	$r18,$r15,$r18
	or	$r4,$r18,$r4
.L333:
	jr	$r1
	.align	5
.L334:
	addi.d	$r4,$r4,1
	b	.L338
	.align	5
.L351:
	addi.w	$r14,$r13,-48
	addi.w	$r13,$r0,9			# 0x9
	or	$r12,$r4,$r0
	or	$r18,$r0,$r0
	bleu	$r14,$r13,.L339
.L350:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L335:
	ld.b	$r13,$r4,1
	addi.w	$r15,$r0,9			# 0x9
	addi.d	$r12,$r4,1
	addi.w	$r14,$r13,-48
	or	$r4,$r0,$r0
	bgtu	$r14,$r15,.L333
	or	$r18,$r0,$r0
	b	.L339
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
	beqz	$r6,.L353
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
.L356:
	srli.d	$r29,$r23,1
	mul.d	$r24,$r29,$r25
	or	$r4,$r28,$r0
	addi.d	$r23,$r23,-1
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r27,0
	blt	$r4,$r0,.L357
	beqz	$r4,.L366
	sub.d	$r23,$r23,$r29
	add.d	$r26,$r24,$r25
	bnez	$r23,.L356
.L367:
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
.L353:
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
.L357:
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
	bnez	$r23,.L356
	b	.L367
	.align	5
.L366:
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
	st.d	$r25,$r3,48
	st.d	$r26,$r3,40
	st.d	$r27,$r3,32
	st.d	$r28,$r3,24
	st.d	$r29,$r3,16
	st.d	$r1,$r3,72
	st.d	$r24,$r3,56
	.cfi_offset 23, -16
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 1, -8
	.cfi_offset 24, -24
	slli.w	$r23,$r6,0
	or	$r29,$r4,$r0
	or	$r26,$r5,$r0
	or	$r25,$r7,$r0
	or	$r28,$r8,$r0
	or	$r27,$r9,$r0
	beqz	$r23,.L373
	st.d	$r30,$r3,8
	.cfi_offset 30, -72
	.align	3
.L369:
	srai.d	$r30,$r23,1
	mul.d	$r24,$r30,$r25
	or	$r6,$r27,$r0
	or	$r4,$r29,$r0
	addi.w	$r23,$r23,-1
	srai.d	$r23,$r23,1
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L383
	ble	$r4,$r0,.L371
	add.d	$r26,$r24,$r25
	bnez	$r23,.L369
.L384:
	ld.d	$r30,$r3,8
	.cfi_restore 30
.L373:
	or	$r24,$r0,$r0
.L368:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r23,$r3,64
	.cfi_restore 23
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
	or	$r4,$r24,$r0
	ld.d	$r24,$r3,56
	.cfi_restore 24
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L371:
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
	beqz	$r30,.L384
	or	$r23,$r30,$r0
	b	.L369
	.align	5
.L383:
	ld.d	$r30,$r3,8
	.cfi_restore 30
	b	.L368
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
	beqz	$r12,.L396
	.align	3
.L393:
	beq	$r5,$r12,.L398
	ldptr.w	$r12,$r4,4
	addi.d	$r4,$r4,4
	bnez	$r12,.L393
.L396:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L398:
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
	bne	$r13,$r14,.L401
	.align	3
.L400:
	beqz	$r13,.L401
	ldx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r14,$r5,$r12
	beq	$r13,$r14,.L400
.L401:
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
.L408:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bnez	$r13,.L408
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
	beqz	$r12,.L413
	or	$r12,$r4,$r0
	.align	3
.L412:
	ldptr.w	$r13,$r12,4
	addi.d	$r12,$r12,4
	bnez	$r13,.L412
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	jr	$r1
	.align	5
.L413:
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
	beqz	$r6,.L421
	.align	3
.L426:
	ldptr.w	$r12,$r5,0
	ldptr.w	$r13,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r13,.L418
	beqz	$r12,.L418
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L426
.L421:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L418:
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
	beqz	$r6,.L431
	.align	3
.L436:
	ldptr.w	$r12,$r4,0
	addi.d	$r6,$r6,-1
	beq	$r12,$r5,.L435
	addi.d	$r4,$r4,4
	bnez	$r6,.L436
.L431:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L435:
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
	beqz	$r6,.L443
	.align	3
.L450:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L449
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L450
.L443:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L449:
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
	beqz	$r6,.L452
	slli.d	$r6,$r6,2
	bl	%plt(memcpy)
.L452:
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
	beq	$r4,$r5,.L490
	slli.d	$r12,$r6,2
	sub.d	$r13,$r4,$r5
	addi.d	$r14,$r6,-1
	bgeu	$r13,$r12,.L511
	beqz	$r6,.L490
	addi.w	$r13,$r0,15			# 0xf
	bleu	$r14,$r13,.L462
	addi.d	$r13,$r12,-4
	addi.d	$r15,$r12,-8
	add.d	$r13,$r4,$r13
	add.d	$r15,$r5,$r15
	sub.d	$r13,$r13,$r15
	addi.w	$r16,$r0,8			# 0x8
	addi.d	$r13,$r13,8
	bleu	$r13,$r16,.L463
	addi.d	$r12,$r12,-16
	srli.d	$r19,$r6,2
	addi.w	$r15,$r0,4			# 0x4
	add.d	$r13,$r5,$r12
	or	$r17,$r0,$r0
	add.d	$r12,$r4,$r12
	bleu	$r19,$r15,.L464
	addi.d	$r18,$r19,-5
	addi.w	$r16,$r0,-4			# 0xfffffffffffffffc
	and	$r18,$r18,$r16
	or	$r15,$r0,$r0
	addi.d	$r17,$r18,4
	.align	3
.L465:
	vld	$vr0,$r13,0
	preld	0,$r13,-464
	vst	$vr0,$r12,0
	vld	$vr0,$r13,-16
	vst	$vr0,$r12,-16
	or	$r16,$r15,$r0
	vld	$vr0,$r13,-32
	vst	$vr0,$r12,-32
	addi.d	$r15,$r15,4
	vld	$vr0,$r13,-48
	vst	$vr0,$r12,-48
	addi.d	$r13,$r13,-64
	addi.d	$r12,$r12,-64
	bne	$r16,$r18,.L465
.L464:
	or	$r15,$r0,$r0
.L466:
	vldx	$vr0,$r13,$r15
	addi.d	$r17,$r17,1
	vstx	$vr0,$r12,$r15
	addi.d	$r15,$r15,-16
	bgtu	$r19,$r17,.L466
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r12,$r6,$r12
	andi	$r13,$r6,3
	sub.d	$r12,$r14,$r12
	beqz	$r13,.L490
	slli.d	$r13,$r12,2
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	beqz	$r12,.L490
	addi.d	$r12,$r12,-1
	slli.d	$r13,$r12,2
	ldx.w	$r14,$r5,$r13
	stx.w	$r14,$r4,$r13
	beqz	$r12,.L490
	addi.d	$r13,$r13,-4
	ldx.w	$r12,$r5,$r13
	stx.w	$r12,$r4,$r13
	jr	$r1
	.align	5
.L511:
	beqz	$r6,.L512
	addi.w	$r13,$r0,8			# 0x8
	bleu	$r14,$r13,.L483
	addi.d	$r12,$r5,4
	sub.d	$r12,$r4,$r12
	bleu	$r12,$r13,.L472
	srli.d	$r19,$r6,2
	addi.w	$r12,$r0,4			# 0x4
	bleu	$r19,$r12,.L482
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	addi.d	$r18,$r19,-5
	and	$r18,$r18,$r15
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r15,$r0,$r0
	addi.d	$r17,$r18,4
	.align	3
.L474:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r16,$r15,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.d	$r15,$r15,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r16,$r18,.L474
.L473:
	or	$r15,$r0,$r0
.L475:
	vldx	$vr0,$r12,$r15
	addi.d	$r17,$r17,1
	vstx	$vr0,$r13,$r15
	addi.d	$r15,$r15,16
	bgtu	$r19,$r17,.L475
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	andi	$r13,$r6,3
	and	$r6,$r6,$r12
	slli.d	$r12,$r6,2
	add.d	$r15,$r5,$r12
	sub.d	$r6,$r14,$r6
	add.d	$r14,$r4,$r12
	beqz	$r13,.L490
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	bnez	$r6,.L513
.L490:
	jr	$r1
	.align	5
.L513:
	ldptr.w	$r13,$r15,4
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r13,$r14,4
	beq	$r6,$r12,.L490
	ldptr.w	$r12,$r15,8
	st.w	$r12,$r14,8
	jr	$r1
.L463:
	addi.d	$r12,$r12,-104
	add.d	$r13,$r5,$r12
	addi.w	$r16,$r0,15			# 0xf
	add.d	$r12,$r4,$r12
	.align	3
.L468:
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
	bgtu	$r14,$r16,.L468
.L462:
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	.align	3
.L469:
	ldx.w	$r12,$r5,$r14
	stx.w	$r12,$r4,$r14
	addi.d	$r14,$r14,-4
	bne	$r14,$r13,.L469
	jr	$r1
	.align	5
.L512:
	jr	$r1
	.align	5
.L483:
	or	$r12,$r4,$r0
.L471:
	addi.d	$r14,$r14,1
	or	$r13,$r0,$r0
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	.align	3
.L478:
	ldx.w	$r15,$r5,$r13
	stx.w	$r15,$r12,$r13
	addi.d	$r13,$r13,4
	bne	$r14,$r13,.L478
	jr	$r1
.L472:
	addi.w	$r12,$r0,15			# 0xf
	bleu	$r14,$r12,.L483
	or	$r12,$r4,$r0
	addi.w	$r15,$r0,15			# 0xf
	.align	3
.L477:
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
	bgtu	$r14,$r15,.L477
	b	.L471
.L482:
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r17,$r0,$r0
	b	.L473
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
	addi.d	$r15,$r6,-1
	beqz	$r6,.L515
	addi.w	$r12,$r0,2			# 0x2
	bleu	$r15,$r12,.L519
	srli.d	$r14,$r6,2
	vreplgr2vr.w	$vr0,$r5
	or	$r12,$r0,$r0
	.align	3
.L517:
	slli.d	$r13,$r12,4
	vstx	$vr0,$r4,$r13
	addi.d	$r12,$r12,1
	bne	$r14,$r12,.L517
	andi	$r12,$r6,3
	beqz	$r12,.L515
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r6,$r6,$r12
	sub.d	$r15,$r15,$r6
	alsl.d	$r6,$r6,$r4,2
.L516:
	stptr.w	$r5,$r6,0
	beqz	$r15,.L515
	st.w	$r5,$r6,4
	addi.w	$r12,$r0,1			# 0x1
	beq	$r15,$r12,.L515
	st.w	$r5,$r6,8
.L515:
	jr	$r1
.L519:
	or	$r6,$r4,$r0
	b	.L516
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
	bgeu	$r4,$r5,.L531
	beqz	$r6,.L530
	addi.d	$r12,$r6,-1
	addi.w	$r15,$r0,14			# 0xe
	bleu	$r12,$r15,.L533
	addi.d	$r14,$r6,-2
	add.d	$r13,$r5,$r12
	add.d	$r14,$r4,$r14
	sub.d	$r13,$r13,$r14
	addi.d	$r13,$r13,14
	bleu	$r13,$r15,.L533
	addi.d	$r13,$r6,-16
	srli.d	$r18,$r6,4
	addi.w	$r14,$r0,4			# 0x4
	add.d	$r12,$r4,$r13
	or	$r16,$r0,$r0
	add.d	$r13,$r5,$r13
	bleu	$r18,$r14,.L534
	addi.d	$r17,$r18,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.d	$r16,$r17,4
	.align	3
.L535:
	vld	$vr0,$r12,0
	preld	0,$r12,-464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,-16
	vst	$vr0,$r13,-16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,-32
	vst	$vr0,$r13,-32
	addi.d	$r14,$r14,4
	vld	$vr0,$r12,-48
	vst	$vr0,$r13,-48
	addi.d	$r12,$r12,-64
	addi.d	$r13,$r13,-64
	bne	$r15,$r17,.L535
.L534:
	or	$r14,$r0,$r0
.L536:
	vldx	$vr0,$r12,$r14
	addi.d	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,-16
	bgtu	$r18,$r16,.L536
	andi	$r12,$r6,15
	add.d	$r5,$r5,$r12
	add.d	$r4,$r4,$r12
	beqz	$r12,.L530
	ld.b	$r14,$r4,-1
	addi.w	$r13,$r0,1			# 0x1
	st.b	$r14,$r5,-1
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-2
	addi.w	$r13,$r0,2			# 0x2
	st.b	$r14,$r5,-2
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-3
	addi.w	$r13,$r0,3			# 0x3
	st.b	$r14,$r5,-3
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-4
	addi.w	$r13,$r0,4			# 0x4
	st.b	$r14,$r5,-4
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-5
	addi.w	$r13,$r0,5			# 0x5
	st.b	$r14,$r5,-5
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-6
	addi.w	$r13,$r0,6			# 0x6
	st.b	$r14,$r5,-6
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-7
	addi.w	$r13,$r0,7			# 0x7
	st.b	$r14,$r5,-7
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-8
	addi.w	$r13,$r0,8			# 0x8
	st.b	$r14,$r5,-8
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-9
	addi.w	$r13,$r0,9			# 0x9
	st.b	$r14,$r5,-9
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-10
	addi.w	$r13,$r0,10			# 0xa
	st.b	$r14,$r5,-10
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-11
	addi.w	$r13,$r0,11			# 0xb
	st.b	$r14,$r5,-11
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-12
	addi.w	$r13,$r0,12			# 0xc
	st.b	$r14,$r5,-12
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-13
	addi.w	$r13,$r0,13			# 0xd
	st.b	$r14,$r5,-13
	beq	$r12,$r13,.L530
	ld.b	$r14,$r4,-14
	addi.w	$r13,$r0,14			# 0xe
	st.b	$r14,$r5,-14
	beq	$r12,$r13,.L530
	ld.b	$r12,$r4,-15
	st.b	$r12,$r5,-15
	jr	$r1
	.align	5
.L531:
	bne	$r4,$r5,.L570
.L530:
	jr	$r1
	.align	5
.L570:
	beqz	$r6,.L530
	addi.d	$r12,$r6,-1
	addi.w	$r13,$r0,14			# 0xe
	bleu	$r12,$r13,.L549
	addi.d	$r12,$r4,1
	sub.d	$r12,$r5,$r12
	bleu	$r12,$r13,.L549
	srli.d	$r18,$r6,4
	addi.w	$r12,$r0,4			# 0x4
	bleu	$r18,$r12,.L550
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	addi.d	$r17,$r18,-5
	and	$r17,$r17,$r14
	or	$r13,$r5,$r0
	or	$r12,$r4,$r0
	or	$r14,$r0,$r0
	addi.d	$r16,$r17,4
	.align	3
.L542:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.d	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r15,$r17,.L542
.L541:
	or	$r14,$r0,$r0
.L543:
	vldx	$vr0,$r12,$r14
	addi.d	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bltu	$r16,$r18,.L543
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	and	$r12,$r6,$r12
	andi	$r15,$r6,15
	add.d	$r13,$r5,$r12
	add.d	$r14,$r4,$r12
	sub.d	$r6,$r6,$r12
	beqz	$r15,.L530
	ldx.b	$r16,$r4,$r12
	addi.w	$r15,$r0,1			# 0x1
	stx.b	$r16,$r5,$r12
	beq	$r6,$r15,.L530
	ld.b	$r15,$r14,1
	addi.w	$r12,$r0,2			# 0x2
	st.b	$r15,$r13,1
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,2
	addi.w	$r12,$r0,3			# 0x3
	st.b	$r15,$r13,2
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,3
	addi.w	$r12,$r0,4			# 0x4
	st.b	$r15,$r13,3
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,4
	addi.w	$r12,$r0,5			# 0x5
	st.b	$r15,$r13,4
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,5
	addi.w	$r12,$r0,6			# 0x6
	st.b	$r15,$r13,5
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,6
	addi.w	$r12,$r0,7			# 0x7
	st.b	$r15,$r13,6
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,7
	addi.w	$r12,$r0,8			# 0x8
	st.b	$r15,$r13,7
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,8
	addi.w	$r12,$r0,9			# 0x9
	st.b	$r15,$r13,8
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,9
	addi.w	$r12,$r0,10			# 0xa
	st.b	$r15,$r13,9
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,10
	addi.w	$r12,$r0,11			# 0xb
	st.b	$r15,$r13,10
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,11
	addi.w	$r12,$r0,12			# 0xc
	st.b	$r15,$r13,11
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,12
	addi.w	$r12,$r0,13			# 0xd
	st.b	$r15,$r13,12
	beq	$r6,$r12,.L530
	ld.b	$r15,$r14,13
	addi.w	$r12,$r0,14			# 0xe
	st.b	$r15,$r13,13
	beq	$r6,$r12,.L530
	ld.b	$r12,$r14,14
	st.b	$r12,$r13,14
	jr	$r1
	.align	5
.L533:
	addi.d	$r4,$r4,-1
	addi.d	$r5,$r5,-1
	b	.L538
	.align	5
.L571:
	addi.d	$r12,$r12,-1
.L538:
	ldx.b	$r13,$r4,$r6
	stx.b	$r13,$r5,$r6
	or	$r6,$r12,$r0
	bnez	$r12,.L571
	jr	$r1
	.align	5
.L549:
	or	$r12,$r0,$r0
	.align	3
.L545:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L545
	jr	$r1
.L550:
	or	$r13,$r5,$r0
	or	$r12,$r4,$r0
	or	$r16,$r0,$r0
	b	.L541
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
	b	.L588
	.align	5
.L586:
	beq	$r13,$r14,.L590
.L588:
	srl.w	$r12,$r4,$r13
	andi	$r12,$r12,1
	addi.w	$r13,$r13,1
	beqz	$r12,.L586
	or	$r4,$r13,$r0
	jr	$r1
	.align	5
.L590:
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
	beqz	$r4,.L594
	andi	$r4,$r4,1
	bnez	$r4,.L592
	addi.w	$r4,$r0,1			# 0x1
	.align	3
.L593:
	srai.d	$r12,$r12,1
	andi	$r13,$r12,1
	addi.w	$r4,$r4,1
	beqz	$r13,.L593
	jr	$r1
	.align	5
.L594:
	or	$r4,$r0,$r0
.L592:
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
	or	$r4,$r0,$r0
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
	or	$r4,$r0,$r0
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
	or	$r4,$r0,$r0
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
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L603
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	blt	$r4,$r0,.L615
	andi	$r12,$r4,1
	beqz	$r12,.L605
	.align	3
.L606:
	fmul.s	$f0,$f0,$f1
.L605:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L603
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L606
.L616:
	srai.d	$r4,$r12,1
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L606
	b	.L616
	.align	5
.L603:
	jr	$r1
	.align	5
.L615:
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	andi	$r12,$r4,1
	beqz	$r12,.L605
	b	.L606
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
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L618
	pcalau12i	$r12,%pc_hi20(.LC2)
	fld.d	$f1,$r12,%pc_lo12(.LC2)
	blt	$r4,$r0,.L630
	andi	$r12,$r4,1
	beqz	$r12,.L620
	.align	3
.L621:
	fmul.d	$f0,$f0,$f1
.L620:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L618
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L621
.L631:
	srai.d	$r4,$r12,1
	srli.w	$r12,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f1,$f1,$f1
	add.w	$r12,$r12,$r4
	bnez	$r13,.L621
	b	.L631
	.align	5
.L618:
	jr	$r1
	.align	5
.L630:
	pcalau12i	$r12,%pc_hi20(.LC3)
	fld.d	$f1,$r12,%pc_lo12(.LC3)
	andi	$r12,$r4,1
	beqz	$r12,.L620
	b	.L621
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
	bl	%plt(__addtf3)
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L633
	blt	$r23,$r0,.L648
	la.local	$r12,.LC4
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
.L635:
	andi	$r12,$r23,1
	beqz	$r12,.L636
	.align	3
.L637:
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	bl	%plt(__multf3)
	ld.d	$r6,$r3,8
	ldptr.d	$r7,$r3,0
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
.L636:
	srli.w	$r12,$r23,31
	add.w	$r23,$r12,$r23
	srai.d	$r23,$r23,1
	beqz	$r23,.L633
.L638:
	or	$r4,$r6,$r0
	or	$r5,$r7,$r0
	bl	%plt(__multf3)
	srli.w	$r12,$r23,31
	andi	$r13,$r23,1
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	add.w	$r12,$r12,$r23
	bnez	$r13,.L637
	srai.d	$r23,$r12,1
	b	.L638
	.align	5
.L633:
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
.L648:
	.cfi_restore_state
	la.local	$r12,.LC5
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	b	.L635
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
	beqz	$r6,.L650
	addi.d	$r12,$r6,-1
	addi.w	$r13,$r0,62			# 0x3e
	bleu	$r12,$r13,.L655
	srli.d	$r15,$r6,6
	slli.d	$r15,$r15,6
	or	$r13,$r5,$r0
	or	$r12,$r4,$r0
	add.d	$r5,$r5,$r15
	.align	3
.L652:
	vld	$vr7,$r12,16
	vld	$vr6,$r12,32
	vld	$vr5,$r12,48
	vld	$vr4,$r12,0
	vld	$vr3,$r13,16
	vld	$vr1,$r13,32
	vld	$vr0,$r13,48
	vld	$vr2,$r13,0
	vxor.v	$vr3,$vr3,$vr7
	vxor.v	$vr1,$vr1,$vr6
	vxor.v	$vr0,$vr0,$vr5
	vxor.v	$vr2,$vr2,$vr4
	vst	$vr3,$r12,16
	vst	$vr2,$r12,0
	vst	$vr1,$r12,32
	vst	$vr0,$r12,48
	addi.d	$r13,$r13,64
	addi.d	$r12,$r12,64
	bne	$r5,$r13,.L652
	add.d	$r14,$r4,$r15
	sub.d	$r16,$r6,$r15
	beq	$r6,$r15,.L661
.L651:
	or	$r12,$r0,$r0
	.align	3
.L654:
	ldx.bu	$r15,$r14,$r12
	ldx.bu	$r13,$r5,$r12
	xor	$r13,$r13,$r15
	stx.b	$r13,$r14,$r12
	addi.d	$r12,$r12,1
	bne	$r12,$r16,.L654
.L650:
	jr	$r1
.L655:
	or	$r14,$r4,$r0
	or	$r16,$r6,$r0
	b	.L651
.L661:
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
	beqz	$r13,.L667
	.align	3
.L664:
	ld.bu	$r13,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r13,.L664
	.align	3
.L667:
	beqz	$r6,.L666
	ld.b	$r13,$r5,0
	addi.d	$r12,$r12,1
	addi.d	$r6,$r6,-1
	st.b	$r13,$r12,-1
	addi.d	$r5,$r5,1
	bnez	$r13,.L667
	jr	$r1
	.align	5
.L666:
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
	beqz	$r5,.L676
.L677:
	ldx.bu	$r13,$r4,$r12
	bnez	$r13,.L679
.L676:
	or	$r4,$r12,$r0
	jr	$r1
	.align	5
.L679:
	addi.d	$r12,$r12,1
	bne	$r5,$r12,.L677
	b	.L676
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
	beqz	$r14,.L688
.L684:
	or	$r12,$r5,$r0
	b	.L687
	.align	5
.L686:
	beq	$r13,$r14,.L685
.L687:
	ld.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bnez	$r13,.L686
	ld.b	$r14,$r4,1
	addi.d	$r4,$r4,1
	bnez	$r14,.L684
.L688:
	or	$r4,$r0,$r0
.L685:
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
.L692:
	ld.b	$r13,$r12,0
	xor	$r14,$r5,$r13
	masknez	$r15,$r12,$r14
	maskeqz	$r4,$r4,$r14
	or	$r4,$r4,$r15
	addi.d	$r12,$r12,1
	bnez	$r13,.L692
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
	beqz	$r17,.L705
	or	$r12,$r5,$r0
	.align	3
.L696:
	ld.bu	$r14,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r14,.L696
	sub.d	$r19,$r12,$r5
	or	$r4,$r13,$r0
	bstrpick.w	$r20,$r17,7,0
	addi.d	$r19,$r19,-1
	bne	$r12,$r5,.L702
	jr	$r1
	.align	5
.L716:
	addi.d	$r13,$r13,1
	beqz	$r12,.L715
.L702:
	ld.b	$r12,$r13,0
	bne	$r12,$r17,.L716
	or	$r15,$r20,$r0
	add.d	$r18,$r13,$r19
	or	$r14,$r5,$r0
	or	$r12,$r13,$r0
	b	.L698
	.align	5
.L717:
	beq	$r12,$r18,.L699
	addi.d	$r12,$r12,1
	bne	$r16,$r15,.L699
	ld.bu	$r15,$r12,0
	addi.d	$r14,$r14,1
	beqz	$r15,.L699
.L698:
	ld.bu	$r16,$r14,0
	bnez	$r16,.L717
.L699:
	ld.bu	$r12,$r14,0
	beq	$r12,$r15,.L705
	addi.d	$r13,$r13,1
	b	.L702
	.align	5
.L715:
	or	$r4,$r0,$r0
	jr	$r1
.L705:
	or	$r4,$r13,$r0
.L694:
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
	bcnez	$fcc0,.L728
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L722
	fcmp.slt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L721
.L722:
	jr	$r1
	.align	5
.L728:
	fcmp.sgt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L722
.L721:
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
	or	$r12,$r4,$r0
	beqz	$r7,.L736
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L729
	sub.d	$r5,$r5,$r7
	add.d	$r15,$r12,$r5
	bgtu	$r12,$r15,.L729
	ld.b	$r18,$r6,0
	or	$r4,$r12,$r0
	addi.w	$r19,$r0,1			# 0x1
	bstrpick.w	$r17,$r18,7,0
	.align	3
.L735:
	ld.bu	$r12,$r4,0
	addi.d	$r16,$r4,1
	beq	$r12,$r17,.L743
	or	$r4,$r16,$r0
.L731:
	bgeu	$r15,$r4,.L735
.L740:
	or	$r4,$r0,$r0
.L729:
	jr	$r1
	.align	5
.L743:
	beq	$r7,$r19,.L744
.L734:
	addi.w	$r12,$r0,1			# 0x1
	b	.L732
	.align	5
.L733:
	beq	$r12,$r7,.L729
.L732:
	ldx.bu	$r14,$r4,$r12
	ldx.bu	$r13,$r6,$r12
	addi.d	$r12,$r12,1
	beq	$r14,$r13,.L733
	bltu	$r15,$r16,.L740
	ld.b	$r12,$r16,0
	addi.d	$r4,$r16,1
	bne	$r18,$r12,.L731
	or	$r12,$r16,$r0
	or	$r16,$r4,$r0
	or	$r4,$r12,$r0
	b	.L734
	.align	5
.L736:
	jr	$r1
.L744:
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
	beqz	$r6,.L746
	bl	%plt(memmove)
.L746:
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
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L774
	pcalau12i	$r12,%pc_hi20(.LC8)
	fld.d	$f2,$r12,%pc_lo12(.LC8)
	or	$r15,$r0,$r0
	fcmp.sge.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L775
.L754:
	pcalau12i	$r14,%pc_hi20(.LC3)
	pcalau12i	$r13,%pc_hi20(.LC2)
	fld.d	$f3,$r14,%pc_lo12(.LC3)
	fld.d	$f2,$r13,%pc_lo12(.LC2)
	or	$r12,$r0,$r0
	.align	3
.L760:
	fmov.d	$f1,$f0
	addi.w	$r12,$r12,1
	fcmp.sge.d	$fcc0,$f1,$f2
	fmul.d	$f0,$f0,$f3
	bcnez	$fcc0,.L760
	stptr.w	$r12,$r4,0
	beqz	$r15,.L751
.L777:
	fneg.d	$f0,$f0
.L751:
	jr	$r1
	.align	5
.L775:
	pcalau12i	$r12,%pc_hi20(.LC3)
	fld.d	$f2,$r12,%pc_lo12(.LC3)
	fcmp.slt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L757
	fcmp.cune.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L766
.L757:
	stptr.w	$r0,$r4,0
	jr	$r1
	.align	5
.L774:
	pcalau12i	$r12,%pc_hi20(.LC6)
	fld.d	$f1,$r12,%pc_lo12(.LC6)
	fneg.d	$f2,$f0
	fcmp.sle.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L776
	fmov.d	$f0,$f2
	addi.w	$r15,$r0,1			# 0x1
	b	.L754
	.align	5
.L776:
	pcalau12i	$r12,%pc_hi20(.LC7)
	fld.d	$f1,$r12,%pc_lo12(.LC7)
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L757
	addi.w	$r15,$r0,1			# 0x1
.L755:
	pcalau12i	$r13,%pc_hi20(.LC9)
	fmov.d	$f0,$f2
	fld.d	$f2,$r13,%pc_lo12(.LC9)
	or	$r12,$r0,$r0
	.align	3
.L762:
	fmov.d	$f1,$f0
	addi.w	$r12,$r12,-1
	fcmp.slt.d	$fcc0,$f1,$f2
	fadd.d	$f0,$f0,$f0
	bcnez	$fcc0,.L762
	stptr.w	$r12,$r4,0
	bnez	$r15,.L777
	jr	$r1
.L766:
	fmov.d	$f2,$f0
	b	.L755
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
	beqz	$r13,.L781
	.align	3
.L780:
	andi	$r12,$r13,1
	sub.d	$r12,$r0,$r12
	and	$r12,$r12,$r5
	srli.d	$r13,$r13,1
	add.d	$r4,$r4,$r12
	slli.d	$r5,$r5,1
	bnez	$r13,.L780
	jr	$r1
	.align	5
.L781:
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
	bltu	$r5,$r4,.L784
	b	.L785
	.align	5
.L788:
	slli.w	$r5,$r15,0
	slli.w	$r12,$r14,0
	bleu	$r4,$r5,.L786
	beqz	$r13,.L787
.L784:
	slli.w	$r15,$r5,1
	slli.w	$r14,$r12,1
	addi.w	$r13,$r13,-1
	bge	$r5,$r0,.L788
.L785:
	or	$r13,$r0,$r0
	.align	3
.L790:
	or	$r14,$r12,$r13
	bstrpick.d	$r12,$r12,31,1
	bltu	$r4,$r5,.L789
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r14,0
.L789:
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L790
.L787:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L786:
	bnez	$r12,.L785
	or	$r13,$r0,$r0
	b	.L787
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
	beqz	$r13,.L809
	.align	3
.L808:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L808
	jr	$r1
	.align	5
.L809:
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
	addi.w	$r19,$r0,-8			# 0xfffffffffffffff8
	srli.w	$r18,$r6,3
	bstrpick.d	$r20,$r6,31,3
	and	$r19,$r6,$r19
	bltu	$r4,$r5,.L815
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L903
.L815:
	beqz	$r20,.L904
	addi.w	$r12,$r0,8			# 0x8
	or	$r14,$r0,$r0
	bleu	$r20,$r12,.L818
	addi.w	$r14,$r0,-8			# 0xfffffffffffffff8
	addi.w	$r18,$r18,-9
	and	$r18,$r18,$r14
	addi.d	$r12,$r5,200
	or	$r13,$r4,$r0
	or	$r15,$r0,$r0
	addi.w	$r14,$r18,8
	.align	3
.L819:
	ld.d	$r17,$r12,-200
	addi.d	$r13,$r13,64
	preld	0,$r12,0
	addi.d	$r12,$r12,64
	st.d	$r17,$r13,-64
	ld.d	$r17,$r12,-256
	or	$r16,$r15,$r0
	addi.w	$r15,$r15,8
	st.d	$r17,$r13,-56
	ld.d	$r17,$r12,-248
	st.d	$r17,$r13,-48
	ld.d	$r17,$r12,-240
	st.d	$r17,$r13,-40
	ld.d	$r17,$r12,-232
	st.d	$r17,$r13,-32
	ld.d	$r17,$r12,-224
	st.d	$r17,$r13,-24
	ld.d	$r17,$r12,-216
	st.d	$r17,$r13,-16
	ld.d	$r17,$r12,-208
	st.d	$r17,$r13,-8
	bne	$r16,$r18,.L819
.L818:
	bstrpick.d	$r12,$r14,31,0
	alsl.d	$r12,$r12,$r0,3
	.align	3
.L820:
	ldx.d	$r13,$r5,$r12
	addi.w	$r14,$r14,1
	stx.d	$r13,$r4,$r12
	addi.d	$r12,$r12,8
	bgtu	$r20,$r14,.L820
	bleu	$r6,$r19,.L811
	sub.w	$r18,$r6,$r19
	addi.w	$r15,$r0,14			# 0xe
	addi.w	$r12,$r18,-1
	bleu	$r12,$r15,.L905
	bstrpick.d	$r12,$r19,31,0
	addi.d	$r14,$r12,1
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r14,$r13,$r14
	bleu	$r14,$r15,.L827
	bstrpick.d	$r20,$r18,31,4
	addi.w	$r14,$r0,4			# 0x4
	srli.w	$r17,$r18,4
	add.d	$r12,$r5,$r12
	or	$r16,$r0,$r0
	bleu	$r20,$r14,.L823
	addi.w	$r17,$r17,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.w	$r16,$r17,4
	.align	3
.L824:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.w	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r15,$r17,.L824
.L823:
	or	$r14,$r0,$r0
.L825:
	vldx	$vr0,$r12,$r14
	addi.w	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bgtu	$r20,$r16,.L825
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	and	$r12,$r12,$r18
	andi	$r13,$r18,15
	add.w	$r12,$r12,$r19
	beqz	$r13,.L811
	bstrpick.d	$r14,$r12,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,1
	stx.b	$r15,$r4,$r14
	bgeu	$r13,$r6,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,2
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,3
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,4
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,5
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,6
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,7
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,8
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,9
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,10
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,11
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,12
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L811
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,13
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L811
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r14,$r5,$r13
	addi.w	$r12,$r12,14
	stx.b	$r14,$r4,$r13
	bleu	$r6,$r12,.L811
.L902:
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	jr	$r1
	.align	5
.L904:
	bstrpick.d	$r12,$r19,31,0
	beqz	$r6,.L906
	.align	3
.L827:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L827
	jr	$r1
	.align	5
.L903:
	addi.w	$r19,$r6,-1
	beqz	$r6,.L907
	addi.w	$r15,$r0,14			# 0xe
	bstrpick.d	$r12,$r19,31,0
	bgtu	$r19,$r15,.L901
.L829:
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	.align	3
.L834:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L834
.L811:
	jr	$r1
	.align	5
.L901:
	addi.d	$r14,$r12,-1
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r13,$r13,$r14
	addi.d	$r13,$r13,14
	bleu	$r13,$r15,.L829
	addi.d	$r12,$r12,-15
	bstrpick.d	$r18,$r6,31,4
	addi.w	$r14,$r0,4			# 0x4
	add.d	$r13,$r5,$r12
	srli.w	$r17,$r6,4
	add.d	$r12,$r4,$r12
	or	$r16,$r0,$r0
	bleu	$r18,$r14,.L830
	addi.w	$r17,$r17,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.w	$r16,$r17,4
	.align	3
.L831:
	vld	$vr0,$r13,0
	preld	0,$r13,-464
	vst	$vr0,$r12,0
	vld	$vr0,$r13,-16
	vst	$vr0,$r12,-16
	or	$r15,$r14,$r0
	vld	$vr0,$r13,-32
	vst	$vr0,$r12,-32
	addi.w	$r14,$r14,4
	vld	$vr0,$r13,-48
	vst	$vr0,$r12,-48
	addi.d	$r13,$r13,-64
	addi.d	$r12,$r12,-64
	bne	$r15,$r17,.L831
.L830:
	or	$r14,$r0,$r0
.L832:
	vldx	$vr0,$r13,$r14
	addi.w	$r16,$r16,1
	vstx	$vr0,$r12,$r14
	addi.d	$r14,$r14,-16
	bgtu	$r18,$r16,.L832
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	andi	$r13,$r6,15
	and	$r6,$r6,$r12
	sub.w	$r15,$r19,$r6
	or	$r12,$r15,$r0
	beqz	$r13,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r15,-1
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r15,-2
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-3
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-4
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-5
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-6
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-7
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-8
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-9
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-10
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-11
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L811
	bstrpick.d	$r15,$r14,31,0
	ldx.b	$r16,$r5,$r15
	addi.w	$r13,$r12,-12
	stx.b	$r16,$r4,$r15
	beqz	$r14,.L811
	bstrpick.d	$r14,$r13,31,0
	ldx.b	$r16,$r5,$r14
	addi.w	$r15,$r12,-13
	stx.b	$r16,$r4,$r14
	beqz	$r13,.L811
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r14,$r5,$r13
	addi.w	$r12,$r12,-14
	stx.b	$r14,$r4,$r13
	bnez	$r15,.L902
	jr	$r1
.L906:
	jr	$r1
.L907:
	jr	$r1
.L905:
	bstrpick.d	$r12,$r19,31,0
	b	.L827
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
	srli.w	$r13,$r6,1
	bstrpick.d	$r19,$r6,31,1
	bltu	$r4,$r5,.L912
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bleu	$r4,$r12,.L988
.L912:
	beqz	$r19,.L911
	addi.w	$r12,$r13,-1
	addi.w	$r14,$r0,7			# 0x7
	bleu	$r12,$r14,.L915
	addi.d	$r12,$r5,2
	addi.w	$r14,$r0,12			# 0xc
	sub.d	$r12,$r4,$r12
	bleu	$r12,$r14,.L915
	bstrpick.d	$r20,$r6,31,4
	addi.w	$r12,$r0,4			# 0x4
	srli.w	$r18,$r6,4
	bleu	$r20,$r12,.L930
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	addi.w	$r16,$r18,-5
	and	$r16,$r16,$r14
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r14,$r0,$r0
	addi.w	$r17,$r16,4
	.align	3
.L917:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.w	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r16,$r15,.L917
.L916:
	or	$r14,$r0,$r0
.L918:
	vldx	$vr0,$r12,$r14
	addi.w	$r17,$r17,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bgtu	$r20,$r17,.L918
	slli.w	$r13,$r18,3
	or	$r12,$r13,$r0
	beq	$r19,$r13,.L911
	bstrpick.d	$r13,$r13,31,0
	slli.d	$r13,$r13,1
	ldx.h	$r15,$r5,$r13
	addi.w	$r14,$r12,1
	stx.h	$r15,$r4,$r13
	bleu	$r19,$r14,.L911
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,1
	ldx.h	$r15,$r5,$r14
	addi.w	$r13,$r12,2
	stx.h	$r15,$r4,$r14
	bleu	$r19,$r13,.L911
	bstrpick.d	$r13,$r13,31,0
	slli.d	$r13,$r13,1
	ldx.h	$r15,$r5,$r13
	addi.w	$r14,$r12,3
	stx.h	$r15,$r4,$r13
	bleu	$r19,$r14,.L911
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,1
	ldx.h	$r15,$r5,$r14
	addi.w	$r13,$r12,4
	stx.h	$r15,$r4,$r14
	bleu	$r19,$r13,.L911
	bstrpick.d	$r13,$r13,31,0
	slli.d	$r13,$r13,1
	ldx.h	$r15,$r5,$r13
	addi.w	$r14,$r12,5
	stx.h	$r15,$r4,$r13
	bleu	$r19,$r14,.L911
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,1
	ldx.h	$r13,$r5,$r14
	addi.w	$r12,$r12,6
	stx.h	$r13,$r4,$r14
	bleu	$r19,$r12,.L911
	bstrpick.d	$r12,$r12,31,0
	slli.d	$r12,$r12,1
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
.L911:
	andi	$r12,$r6,1
	beqz	$r12,.L908
.L990:
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	jr	$r1
	.align	5
.L988:
	addi.w	$r19,$r6,-1
	beqz	$r6,.L989
	addi.w	$r15,$r0,14			# 0xe
	bstrpick.d	$r12,$r19,31,0
	bgtu	$r19,$r15,.L987
.L923:
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	.align	3
.L928:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L928
.L908:
	jr	$r1
	.align	5
.L987:
	addi.d	$r14,$r12,-1
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r13,$r13,$r14
	addi.d	$r13,$r13,14
	bleu	$r13,$r15,.L923
	addi.d	$r12,$r12,-15
	bstrpick.d	$r18,$r6,31,4
	addi.w	$r14,$r0,4			# 0x4
	add.d	$r13,$r5,$r12
	srli.w	$r17,$r6,4
	add.d	$r12,$r4,$r12
	or	$r16,$r0,$r0
	bleu	$r18,$r14,.L924
	addi.w	$r17,$r17,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.w	$r16,$r17,4
	.align	3
.L925:
	vld	$vr0,$r13,0
	preld	0,$r13,-464
	vst	$vr0,$r12,0
	vld	$vr0,$r13,-16
	vst	$vr0,$r12,-16
	or	$r15,$r14,$r0
	vld	$vr0,$r13,-32
	vst	$vr0,$r12,-32
	addi.w	$r14,$r14,4
	vld	$vr0,$r13,-48
	vst	$vr0,$r12,-48
	addi.d	$r13,$r13,-64
	addi.d	$r12,$r12,-64
	bne	$r15,$r17,.L925
.L924:
	or	$r14,$r0,$r0
.L926:
	vldx	$vr0,$r13,$r14
	addi.w	$r16,$r16,1
	vstx	$vr0,$r12,$r14
	addi.d	$r14,$r14,-16
	bgtu	$r18,$r16,.L926
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	andi	$r13,$r6,15
	and	$r6,$r6,$r12
	sub.w	$r15,$r19,$r6
	or	$r12,$r15,$r0
	beqz	$r13,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r15,-1
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r15,-2
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-3
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-4
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-5
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-6
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-7
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-8
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-9
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-10
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-11
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r15,$r14,31,0
	ldx.b	$r16,$r5,$r15
	addi.w	$r13,$r12,-12
	stx.b	$r16,$r4,$r15
	beqz	$r14,.L908
	bstrpick.d	$r14,$r13,31,0
	ldx.b	$r16,$r5,$r14
	addi.w	$r15,$r12,-13
	stx.b	$r16,$r4,$r14
	beqz	$r13,.L908
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r14,$r5,$r13
	addi.w	$r12,$r12,-14
	stx.b	$r14,$r4,$r13
	beqz	$r15,.L908
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	jr	$r1
.L930:
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r17,$r0,$r0
	b	.L916
	.align	5
.L915:
	bstrpick.d	$r13,$r13,31,0
	or	$r12,$r0,$r0
	slli.d	$r13,$r13,1
	.align	3
.L920:
	ldx.h	$r14,$r5,$r12
	stx.h	$r14,$r4,$r12
	addi.d	$r12,$r12,2
	bne	$r13,$r12,.L920
	andi	$r12,$r6,1
	beqz	$r12,.L908
	b	.L990
.L989:
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
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	srli.w	$r12,$r6,2
	bstrpick.d	$r20,$r6,31,2
	and	$r19,$r6,$r15
	bltu	$r4,$r5,.L996
	bstrpick.d	$r13,$r6,31,0
	add.d	$r13,$r5,$r13
	bleu	$r4,$r13,.L1089
.L996:
	beqz	$r20,.L1090
	addi.w	$r13,$r12,-1
	addi.w	$r14,$r0,8			# 0x8
	bleu	$r13,$r14,.L1022
	addi.d	$r13,$r5,4
	sub.d	$r13,$r4,$r13
	bleu	$r13,$r14,.L999
	bstrpick.d	$r7,$r6,31,4
	addi.w	$r12,$r0,4			# 0x4
	srli.w	$r18,$r6,4
	bleu	$r7,$r12,.L1021
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	addi.w	$r16,$r18,-5
	and	$r16,$r16,$r14
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r14,$r0,$r0
	addi.w	$r17,$r16,4
	.align	3
.L1001:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.w	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r15,$r16,.L1001
.L1000:
	or	$r14,$r0,$r0
.L1002:
	vldx	$vr0,$r12,$r14
	addi.w	$r17,$r17,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bgtu	$r7,$r17,.L1002
	slli.w	$r13,$r18,2
	or	$r12,$r13,$r0
	beq	$r20,$r13,.L1006
	bstrpick.d	$r13,$r13,31,0
	slli.d	$r13,$r13,2
	ldx.w	$r15,$r5,$r13
	addi.w	$r14,$r12,1
	stx.w	$r15,$r4,$r13
	bleu	$r20,$r14,.L1006
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	ldx.w	$r13,$r5,$r14
	addi.w	$r12,$r12,2
	stx.w	$r13,$r4,$r14
	bleu	$r20,$r12,.L1006
	bstrpick.d	$r12,$r12,31,0
	slli.d	$r12,$r12,2
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
.L1006:
	bleu	$r6,$r19,.L991
	sub.w	$r18,$r6,$r19
	addi.w	$r15,$r0,14			# 0xe
	addi.w	$r12,$r18,-1
	bleu	$r12,$r15,.L1091
	bstrpick.d	$r12,$r19,31,0
	addi.d	$r14,$r12,1
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r14,$r13,$r14
	bleu	$r14,$r15,.L1011
	bstrpick.d	$r20,$r18,31,4
	addi.w	$r14,$r0,4			# 0x4
	srli.w	$r17,$r18,4
	add.d	$r12,$r5,$r12
	or	$r16,$r0,$r0
	bleu	$r20,$r14,.L1007
	addi.w	$r17,$r17,-5
	addi.w	$r15,$r0,-4			# 0xfffffffffffffffc
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.w	$r16,$r17,4
	.align	3
.L1008:
	vld	$vr0,$r12,0
	preld	0,$r12,464
	vst	$vr0,$r13,0
	vld	$vr0,$r12,16
	vst	$vr0,$r13,16
	or	$r15,$r14,$r0
	vld	$vr0,$r12,32
	vst	$vr0,$r13,32
	addi.w	$r14,$r14,4
	vld	$vr0,$r12,48
	vst	$vr0,$r13,48
	addi.d	$r12,$r12,64
	addi.d	$r13,$r13,64
	bne	$r15,$r17,.L1008
.L1007:
	or	$r14,$r0,$r0
.L1009:
	vldx	$vr0,$r12,$r14
	addi.w	$r16,$r16,1
	vstx	$vr0,$r13,$r14
	addi.d	$r14,$r14,16
	bgtu	$r20,$r16,.L1009
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	and	$r12,$r12,$r18
	andi	$r13,$r18,15
	add.w	$r12,$r12,$r19
	beqz	$r13,.L991
	bstrpick.d	$r14,$r12,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,1
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,2
	stx.b	$r15,$r4,$r13
	bgeu	$r14,$r6,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,3
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,4
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,5
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,6
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,7
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,8
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,9
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,10
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,11
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r15,$r5,$r13
	addi.w	$r14,$r12,12
	stx.b	$r15,$r4,$r13
	bleu	$r6,$r14,.L991
	bstrpick.d	$r14,$r14,31,0
	ldx.b	$r15,$r5,$r14
	addi.w	$r13,$r12,13
	stx.b	$r15,$r4,$r14
	bleu	$r6,$r13,.L991
	bstrpick.d	$r13,$r13,31,0
	ldx.b	$r14,$r5,$r13
	addi.w	$r12,$r12,14
	stx.b	$r14,$r4,$r13
	bleu	$r6,$r12,.L991
.L1088:
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	jr	$r1
	.align	5
.L1089:
	addi.w	$r19,$r6,-1
	beqz	$r6,.L1092
	addi.w	$r16,$r0,14			# 0xe
	bstrpick.d	$r12,$r19,31,0
	bleu	$r19,$r16,.L1013
	addi.d	$r14,$r12,-1
	add.d	$r13,$r4,$r12
	add.d	$r14,$r5,$r14
	sub.d	$r13,$r13,$r14
	addi.d	$r13,$r13,14
	bleu	$r13,$r16,.L1013
	addi.d	$r12,$r12,-15
	bstrpick.d	$r18,$r6,31,4
	addi.w	$r14,$r0,4			# 0x4
	add.d	$r13,$r5,$r12
	srli.w	$r17,$r6,4
	add.d	$r12,$r4,$r12
	or	$r16,$r0,$r0
	bleu	$r18,$r14,.L1014
	addi.w	$r17,$r17,-5
	and	$r17,$r17,$r15
	or	$r14,$r0,$r0
	addi.w	$r16,$r17,4
	.align	3
.L1015:
	vld	$vr0,$r13,0
	preld	0,$r13,-464
	vst	$vr0,$r12,0
	vld	$vr0,$r13,-16
	vst	$vr0,$r12,-16
	or	$r15,$r14,$r0
	vld	$vr0,$r13,-32
	vst	$vr0,$r12,-32
	addi.w	$r14,$r14,4
	vld	$vr0,$r13,-48
	vst	$vr0,$r12,-48
	addi.d	$r13,$r13,-64
	addi.d	$r12,$r12,-64
	bne	$r15,$r17,.L1015
.L1014:
	or	$r14,$r0,$r0
.L1016:
	vldx	$vr0,$r13,$r14
	addi.w	$r16,$r16,1
	vstx	$vr0,$r12,$r14
	addi.d	$r14,$r14,-16
	bgtu	$r18,$r16,.L1016
	addi.w	$r12,$r0,-16			# 0xfffffffffffffff0
	andi	$r13,$r6,15
	and	$r6,$r6,$r12
	sub.w	$r15,$r19,$r6
	or	$r12,$r15,$r0
	beqz	$r13,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r15,-1
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r15,-2
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-3
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-4
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-5
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-6
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-7
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-8
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-9
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r13,$r14,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r15,$r12,-10
	stx.b	$r16,$r4,$r13
	beqz	$r14,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r16,$r5,$r13
	addi.w	$r14,$r12,-11
	stx.b	$r16,$r4,$r13
	beqz	$r15,.L991
	bstrpick.d	$r15,$r14,31,0
	ldx.b	$r16,$r5,$r15
	addi.w	$r13,$r12,-12
	stx.b	$r16,$r4,$r15
	beqz	$r14,.L991
	bstrpick.d	$r14,$r13,31,0
	ldx.b	$r16,$r5,$r14
	addi.w	$r15,$r12,-13
	stx.b	$r16,$r4,$r14
	beqz	$r13,.L991
	bstrpick.d	$r13,$r15,31,0
	ldx.b	$r14,$r5,$r13
	addi.w	$r12,$r12,-14
	stx.b	$r14,$r4,$r13
	bnez	$r15,.L1088
.L991:
	jr	$r1
	.align	5
.L1090:
	bstrpick.d	$r12,$r19,31,0
	beqz	$r6,.L1093
	.align	3
.L1011:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L1011
	jr	$r1
.L1021:
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	or	$r17,$r0,$r0
	b	.L1000
	.align	5
.L1022:
	or	$r14,$r0,$r0
.L998:
	bstrpick.d	$r12,$r14,31,0
	alsl.d	$r12,$r12,$r0,2
	.align	3
.L1005:
	ldx.w	$r13,$r5,$r12
	addi.w	$r14,$r14,1
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bgtu	$r20,$r14,.L1005
	b	.L1006
.L999:
	addi.w	$r13,$r0,16			# 0x10
	bleu	$r20,$r13,.L1022
	addi.w	$r16,$r12,-17
	addi.w	$r14,$r0,-16			# 0xfffffffffffffff0
	and	$r16,$r16,$r14
	addi.d	$r13,$r5,100
	addi.d	$r12,$r4,100
	or	$r15,$r0,$r0
	addi.w	$r14,$r16,16
	.align	3
.L1004:
	ldptr.w	$r18,$r13,-100
	preld	8,$r12,0
	addi.d	$r12,$r12,64
	preld	0,$r13,0
	addi.d	$r13,$r13,64
	st.w	$r18,$r12,-164
	ldptr.w	$r18,$r13,-160
	or	$r17,$r15,$r0
	addi.w	$r15,$r15,16
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
	bne	$r17,$r16,.L1004
	b	.L998
.L1013:
	addi.w	$r14,$r0,-1			# 0xffffffffffffffff
	.align	3
.L1018:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r14,.L1018
	jr	$r1
.L1093:
	jr	$r1
.L1092:
	jr	$r1
.L1091:
	bstrpick.d	$r12,$r19,31,0
	b	.L1011
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
	blt	$r4,$r0,.L1099
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.align	5
.L1099:
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
	blt	$r4,$r0,.L1102
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.align	5
.L1102:
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
	bnez	$r14,.L1107
	srli.d	$r4,$r12,14
	bnez	$r4,.L1106
	srli.d	$r14,$r12,13
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r14,.L1106
	srli.d	$r14,$r12,12
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r14,.L1106
	srli.d	$r14,$r12,11
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r14,.L1106
	srli.d	$r14,$r12,10
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r14,.L1106
	srli.d	$r14,$r12,9
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r14,.L1106
	srli.d	$r14,$r12,8
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r14,.L1106
	srli.d	$r14,$r12,7
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r14,.L1106
	srli.d	$r14,$r12,6
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r14,.L1106
	srli.d	$r14,$r12,5
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r14,.L1106
	srli.d	$r14,$r12,4
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r14,.L1106
	srli.d	$r14,$r12,3
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r14,.L1106
	srli.d	$r14,$r12,2
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r14,.L1106
	srli.d	$r12,$r12,1
	addi.w	$r4,$r0,14			# 0xe
	bnez	$r12,.L1106
	sltui	$r4,$r13,1
	addi.d	$r4,$r4,15
	jr	$r1
.L1107:
	or	$r4,$r0,$r0
.L1106:
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
	bnez	$r13,.L1125
	andi	$r13,$r4,2
	addi.w	$r4,$r0,1			# 0x1
	bnez	$r13,.L1124
	andi	$r13,$r12,4
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r13,.L1124
	andi	$r13,$r12,8
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r13,.L1124
	andi	$r13,$r12,16
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r13,.L1124
	andi	$r13,$r12,32
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r13,.L1124
	andi	$r13,$r12,64
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r13,.L1124
	andi	$r13,$r12,128
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r13,.L1124
	andi	$r13,$r12,256
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r13,.L1124
	andi	$r13,$r12,512
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r13,.L1124
	andi	$r13,$r12,1024
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r13,.L1124
	andi	$r13,$r12,2048
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r13,.L1124
	bstrpick.d	$r13,$r12,12,12
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r13,.L1124
	bstrpick.d	$r13,$r12,13,13
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r13,.L1124
	bstrpick.d	$r13,$r12,14,14
	addi.w	$r4,$r0,14			# 0xe
	bnez	$r13,.L1124
	srli.d	$r12,$r12,15
	sltui	$r4,$r12,1
	addi.d	$r4,$r4,15
	jr	$r1
.L1125:
	or	$r4,$r0,$r0
.L1124:
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
	pcalau12i	$r12,%pc_hi20(.LC14)
	fld.s	$f1,$r12,%pc_lo12(.LC14)
	fcmp.sge.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L1147
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
	.align	5
.L1147:
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
	la.local	$r14,.LC16
	vreplgr2vr.w	$vr0,$r4
	vrepli.w	$vr1,1
	vrepli.w	$vr4,1
	la.local	$r15,.LC15
	vld	$vr3,$r14,0
	vsra.w	$vr3,$vr0,$vr3
	vand.v	$vr3,$vr3,$vr1
	la.local	$r13,.LC17
	vld	$vr2,$r15,0
	vsra.w	$vr2,$vr0,$vr2
	vand.v	$vr2,$vr2,$vr1
	la.local	$r12,.LC18
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
	la.local	$r14,.LC16
	vreplgr2vr.w	$vr0,$r4
	vrepli.w	$vr1,1
	vrepli.w	$vr4,1
	la.local	$r15,.LC15
	vld	$vr3,$r14,0
	vsra.w	$vr3,$vr0,$vr3
	vand.v	$vr3,$vr3,$vr1
	la.local	$r13,.LC17
	vld	$vr2,$r15,0
	vsra.w	$vr2,$vr0,$vr2
	vand.v	$vr2,$vr2,$vr1
	la.local	$r12,.LC18
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
	beqz	$r13,.L1153
	.align	3
.L1152:
	andi	$r12,$r13,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r5,$r12
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r13,.L1152
	jr	$r1
	.align	5
.L1153:
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
	beqz	$r13,.L1156
	beqz	$r5,.L1156
	.align	3
.L1157:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	slli.w	$r14,$r13,1
	bstrpick.d	$r5,$r5,31,1
	slli.w	$r13,$r14,0
	add.w	$r4,$r12,$r4
	bnez	$r5,.L1157
	jr	$r1
	.align	5
.L1156:
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
	bltu	$r5,$r4,.L1163
	b	.L1164
	.align	5
.L1167:
	slli.w	$r5,$r15,0
	slli.w	$r12,$r14,0
	bleu	$r4,$r5,.L1165
	beqz	$r13,.L1166
.L1163:
	slli.w	$r15,$r5,1
	slli.w	$r14,$r12,1
	addi.w	$r13,$r13,-1
	bge	$r5,$r0,.L1167
.L1164:
	or	$r13,$r0,$r0
	.align	3
.L1169:
	or	$r14,$r12,$r13
	bstrpick.d	$r12,$r12,31,1
	bltu	$r4,$r5,.L1168
	sub.w	$r4,$r4,$r5
	slli.w	$r13,$r14,0
.L1168:
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L1169
.L1166:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L1165:
	bnez	$r12,.L1164
	or	$r13,$r0,$r0
	b	.L1166
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
	bcnez	$fcc0,.L1180
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L1180:
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
	bcnez	$fcc0,.L1183
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L1183:
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
	blt	$r5,$r0,.L1201
	or	$r4,$r0,$r0
	beqz	$r5,.L1190
	or	$r16,$r0,$r0
.L1189:
	addi.w	$r13,$r0,32			# 0x20
	or	$r4,$r0,$r0
	b	.L1192
	.align	5
.L1202:
	beqz	$r13,.L1191
.L1192:
	andi	$r12,$r5,1
	sub.w	$r12,$r0,$r12
	and	$r12,$r14,$r12
	addi.w	$r13,$r13,-1
	slli.w	$r15,$r14,1
	srai.d	$r5,$r5,1
	bstrpick.w	$r13,$r13,7,0
	slli.w	$r14,$r15,0
	add.w	$r4,$r12,$r4
	bnez	$r5,.L1202
.L1191:
	sub.w	$r12,$r0,$r4
	masknez	$r4,$r4,$r16
	maskeqz	$r16,$r12,$r16
	or	$r4,$r16,$r4
.L1190:
	jr	$r1
	.align	5
.L1201:
	sub.w	$r5,$r0,$r5
	addi.w	$r16,$r0,1			# 0x1
	b	.L1189
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
	addi.w	$r12,$r0,1			# 0x1
	or	$r17,$r0,$r0
	blt	$r4,$r0,.L1222
.L1204:
	bge	$r5,$r0,.L1205
	sub.d	$r5,$r0,$r5
	or	$r17,$r12,$r0
.L1205:
	slli.w	$r13,$r4,0
	slli.w	$r5,$r5,0
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r12,$r0,1			# 0x1
	bgtu	$r13,$r5,.L1206
	b	.L1207
	.align	5
.L1210:
	slli.w	$r5,$r16,0
	slli.w	$r12,$r15,0
	bleu	$r13,$r5,.L1208
	beqz	$r14,.L1217
.L1206:
	slli.w	$r16,$r5,1
	slli.w	$r15,$r12,1
	addi.w	$r14,$r14,-1
	bge	$r5,$r0,.L1210
.L1207:
	or	$r14,$r0,$r0
	.align	3
.L1212:
	bltu	$r13,$r5,.L1211
	sub.w	$r13,$r13,$r5
	or	$r14,$r12,$r14
.L1211:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	bnez	$r12,.L1212
	bstrpick.d	$r14,$r14,31,0
	sub.d	$r12,$r0,$r14
	maskeqz	$r4,$r12,$r17
	masknez	$r14,$r14,$r17
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L1208:
	bnez	$r12,.L1207
.L1217:
	or	$r14,$r0,$r0
	sub.d	$r12,$r0,$r14
	maskeqz	$r4,$r12,$r17
	masknez	$r14,$r14,$r17
	or	$r4,$r4,$r14
	jr	$r1
	.align	5
.L1222:
	sub.d	$r4,$r0,$r4
	or	$r12,$r0,$r0
	addi.w	$r17,$r0,1			# 0x1
	b	.L1204
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
	bge	$r4,$r0,.L1224
	sub.d	$r4,$r0,$r4
	addi.w	$r18,$r0,1			# 0x1
.L1224:
	srai.d	$r12,$r5,63
	xor	$r5,$r12,$r5
	slli.w	$r13,$r4,0
	sub.w	$r12,$r5,$r12
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bgtu	$r13,$r12,.L1225
	b	.L1231
	.align	5
.L1229:
	slli.w	$r12,$r17,0
	slli.w	$r14,$r16,0
	bleu	$r13,$r12,.L1245
	beqz	$r15,.L1228
.L1225:
	slli.w	$r17,$r12,1
	slli.w	$r16,$r14,1
	addi.w	$r15,$r15,-1
	bge	$r12,$r0,.L1229
	b	.L1231
	.align	5
.L1245:
	beqz	$r14,.L1228
	.align	3
.L1231:
	sltu	$r16,$r13,$r12
	sub.w	$r15,$r13,$r12
	masknez	$r15,$r15,$r16
	maskeqz	$r13,$r13,$r16
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r12,$r12,31,1
	or	$r13,$r15,$r13
	bnez	$r14,.L1231
.L1228:
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
	bgeu	$r5,$r4,.L1361
	srli.d	$r12,$r5,15
	bnez	$r12,.L1249
	slli.w	$r12,$r5,1
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1250
	srli.d	$r14,$r12,15
	bnez	$r14,.L1251
	slli.w	$r12,$r5,2
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1252
	srli.d	$r14,$r12,15
	bnez	$r14,.L1253
	slli.w	$r12,$r5,3
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1254
	srli.d	$r14,$r12,15
	bnez	$r14,.L1255
	slli.w	$r12,$r5,4
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1256
	srli.d	$r14,$r12,15
	bnez	$r14,.L1257
	slli.w	$r12,$r5,5
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1258
	srli.d	$r14,$r12,15
	bnez	$r14,.L1259
	slli.w	$r12,$r5,6
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1260
	srli.d	$r14,$r12,15
	bnez	$r14,.L1261
	slli.w	$r12,$r5,7
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1262
	srli.d	$r14,$r12,15
	bnez	$r14,.L1263
	slli.w	$r12,$r5,8
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1264
	srli.d	$r14,$r12,15
	bnez	$r14,.L1265
	slli.w	$r12,$r5,9
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1266
	srli.d	$r14,$r12,15
	bnez	$r14,.L1267
	slli.w	$r12,$r5,10
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1268
	srli.d	$r14,$r12,15
	bnez	$r14,.L1269
	slli.w	$r12,$r5,11
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1270
	srli.d	$r14,$r12,15
	bnez	$r14,.L1271
	slli.w	$r12,$r5,12
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1272
	srli.d	$r14,$r12,15
	bnez	$r14,.L1273
	slli.w	$r12,$r5,13
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1274
	srli.d	$r14,$r12,15
	bnez	$r14,.L1275
	slli.w	$r12,$r5,14
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r14,$r12,0
	bleu	$r13,$r12,.L1276
	srli.d	$r14,$r12,15
	bnez	$r14,.L1277
	slli.w	$r5,$r5,15
	bstrpick.w	$r14,$r5,15,0
	bleu	$r13,$r14,.L1278
	bnez	$r14,.L1362
.L1279:
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r14,$r6
	or	$r4,$r4,$r6
	jr	$r1
.L1266:
	bltu	$r13,$r14,.L1312
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,512			# 0x200
	addi.w	$r14,$r0,512			# 0x200
	bstrpick.w	$r4,$r4,15,0
	.align	3
.L1281:
	srli.d	$r16,$r15,2
	srli.d	$r13,$r12,2
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1282
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1282:
	srli.d	$r16,$r15,3
	srli.d	$r13,$r12,3
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1283
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1283:
	srli.d	$r16,$r15,4
	srli.d	$r13,$r12,4
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1284
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1284:
	srli.d	$r16,$r15,5
	srli.d	$r13,$r12,5
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1285
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1285:
	srli.d	$r16,$r15,6
	srli.d	$r13,$r12,6
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1286
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1286:
	srli.d	$r16,$r15,7
	srli.d	$r13,$r12,7
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1287
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1287:
	srli.d	$r16,$r15,8
	srli.d	$r13,$r12,8
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1288
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1288:
	srli.d	$r16,$r15,9
	srli.d	$r13,$r12,9
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1289
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1289:
	srli.d	$r16,$r15,10
	srli.d	$r13,$r12,10
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1290
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1290:
	srli.d	$r16,$r15,11
	srli.d	$r13,$r12,11
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1291
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1291:
	srli.d	$r16,$r15,12
	srli.d	$r13,$r12,12
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1292
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1292:
	srli.d	$r16,$r15,13
	srli.d	$r13,$r12,13
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1293
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1293:
	srli.d	$r16,$r15,14
	srli.d	$r13,$r12,14
	beqz	$r16,.L1279
	slli.w	$r17,$r4,0
	bltu	$r17,$r13,.L1294
	sub.w	$r13,$r4,$r13
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r13,15,0
.L1294:
	lu12i.w	$r13,16384>>12			# 0x4000
	srli.d	$r12,$r12,15
	beq	$r15,$r13,.L1279
	slli.w	$r13,$r4,0
	bltu	$r13,$r12,.L1302
	sub.w	$r12,$r4,$r12
	ori	$r14,$r14,1
	bstrpick.w	$r4,$r12,15,0
	b	.L1279
.L1302:
	or	$r4,$r0,$r0
	b	.L1279
.L1361:
	xor	$r12,$r12,$r13
	maskeqz	$r4,$r4,$r12
	sltui	$r14,$r12,1
	b	.L1279
.L1249:
	sub.w	$r5,$r4,$r5
	addi.w	$r14,$r0,1			# 0x1
	bstrpick.w	$r4,$r5,15,0
	b	.L1279
.L1250:
	bltu	$r13,$r14,.L1304
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,2			# 0x2
	addi.w	$r14,$r0,2			# 0x2
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1251:
	sub.w	$r4,$r4,$r12
	bstrpick.d	$r5,$r5,14,0
	addi.w	$r16,$r0,1			# 0x1
	addi.w	$r15,$r0,2			# 0x2
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,2			# 0x2
	.align	3
.L1299:
	slli.w	$r13,$r4,0
	bltu	$r13,$r5,.L1281
	sub.w	$r5,$r4,$r5
	or	$r14,$r14,$r16
	bstrpick.w	$r4,$r5,15,0
	b	.L1281
.L1252:
	bltu	$r13,$r14,.L1305
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,4			# 0x4
	addi.w	$r14,$r0,4			# 0x4
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1253:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,2			# 0x2
	addi.w	$r15,$r0,4			# 0x4
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,4			# 0x4
	b	.L1299
.L1254:
	bltu	$r13,$r14,.L1306
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,8			# 0x8
	addi.w	$r14,$r0,8			# 0x8
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1255:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,4			# 0x4
	addi.w	$r15,$r0,8			# 0x8
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,8			# 0x8
	b	.L1299
.L1256:
	bltu	$r13,$r14,.L1307
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,16			# 0x10
	addi.w	$r14,$r0,16			# 0x10
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1257:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,8			# 0x8
	addi.w	$r15,$r0,16			# 0x10
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,16			# 0x10
	b	.L1299
.L1258:
	bltu	$r13,$r14,.L1308
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,32			# 0x20
	addi.w	$r14,$r0,32			# 0x20
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1259:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,16			# 0x10
	addi.w	$r15,$r0,32			# 0x20
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,32			# 0x20
	b	.L1299
.L1260:
	bltu	$r13,$r14,.L1309
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,64			# 0x40
	addi.w	$r14,$r0,64			# 0x40
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1261:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,32			# 0x20
	addi.w	$r15,$r0,64			# 0x40
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,64			# 0x40
	b	.L1299
.L1262:
	bltu	$r13,$r14,.L1310
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,128			# 0x80
	addi.w	$r14,$r0,128			# 0x80
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1263:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,64			# 0x40
	addi.w	$r15,$r0,128			# 0x80
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,128			# 0x80
	b	.L1299
.L1265:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,128			# 0x80
	addi.w	$r15,$r0,256			# 0x100
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,256			# 0x100
	b	.L1299
.L1267:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,256			# 0x100
	addi.w	$r15,$r0,512			# 0x200
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,512			# 0x200
	b	.L1299
.L1304:
	addi.w	$r15,$r0,2			# 0x2
	.align	3
.L1298:
	srli.d	$r16,$r15,1
	srli.d	$r5,$r12,1
	or	$r14,$r0,$r0
	b	.L1299
.L1269:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,512			# 0x200
	addi.w	$r15,$r0,1024			# 0x400
	bstrpick.w	$r4,$r4,15,0
	addi.w	$r14,$r0,1024			# 0x400
	b	.L1299
.L1271:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	addi.w	$r16,$r0,1024			# 0x400
	ori	$r15,$r0,2048			# 0x800
	bstrpick.w	$r4,$r4,15,0
	ori	$r14,$r0,2048			# 0x800
	b	.L1299
.L1305:
	addi.w	$r15,$r0,4			# 0x4
	b	.L1298
.L1306:
	addi.w	$r15,$r0,8			# 0x8
	b	.L1298
.L1273:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	ori	$r16,$r0,2048			# 0x800
	lu12i.w	$r15,4096>>12			# 0x1000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,4096>>12			# 0x1000
	b	.L1299
.L1275:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	lu12i.w	$r16,4096>>12			# 0x1000
	lu12i.w	$r15,8192>>12			# 0x2000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,8192>>12			# 0x2000
	b	.L1299
.L1307:
	addi.w	$r15,$r0,16			# 0x10
	b	.L1298
.L1277:
	sub.w	$r4,$r4,$r12
	srli.d	$r5,$r12,1
	lu12i.w	$r16,8192>>12			# 0x2000
	lu12i.w	$r15,16384>>12			# 0x4000
	bstrpick.w	$r4,$r4,15,0
	lu12i.w	$r14,16384>>12			# 0x4000
	b	.L1299
.L1308:
	addi.w	$r15,$r0,32			# 0x20
	b	.L1298
.L1309:
	addi.w	$r15,$r0,64			# 0x40
	b	.L1298
.L1278:
	srli.d	$r12,$r4,15
	bnez	$r12,.L1303
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	b	.L1298
.L1362:
	lu12i.w	$r13,-32768>>12			# 0xffffffffffff8000
	add.w	$r13,$r4,$r13
	lu12i.w	$r5,16384>>12			# 0x4000
	lu12i.w	$r16,16384>>12			# 0x4000
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	lu12i.w	$r14,32768>>12			# 0x8000
	bstrpick.w	$r4,$r13,15,0
	b	.L1299
.L1310:
	addi.w	$r15,$r0,128			# 0x80
	b	.L1298
.L1264:
	bltu	$r13,$r14,.L1311
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,256			# 0x100
	addi.w	$r14,$r0,256			# 0x100
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1303:
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r15,32768>>12			# 0x8000
	lu12i.w	$r14,32768>>12			# 0x8000
	or	$r4,$r0,$r0
	b	.L1281
.L1311:
	addi.w	$r15,$r0,256			# 0x100
	b	.L1298
.L1268:
	bltu	$r13,$r14,.L1313
	sub.w	$r4,$r4,$r12
	addi.w	$r15,$r0,1024			# 0x400
	addi.w	$r14,$r0,1024			# 0x400
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1276:
	bltu	$r13,$r14,.L1317
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,16384>>12			# 0x4000
	lu12i.w	$r14,16384>>12			# 0x4000
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1313:
	addi.w	$r15,$r0,1024			# 0x400
	b	.L1298
.L1317:
	lu12i.w	$r15,16384>>12			# 0x4000
	b	.L1298
.L1312:
	addi.w	$r15,$r0,512			# 0x200
	b	.L1298
.L1274:
	bltu	$r13,$r14,.L1316
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,8192>>12			# 0x2000
	lu12i.w	$r14,8192>>12			# 0x2000
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1272:
	bltu	$r13,$r14,.L1315
	sub.w	$r4,$r4,$r12
	lu12i.w	$r15,4096>>12			# 0x1000
	lu12i.w	$r14,4096>>12			# 0x1000
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1270:
	bltu	$r13,$r14,.L1314
	sub.w	$r4,$r4,$r12
	ori	$r15,$r0,2048			# 0x800
	ori	$r14,$r0,2048			# 0x800
	bstrpick.w	$r4,$r4,15,0
	b	.L1281
.L1316:
	lu12i.w	$r15,8192>>12			# 0x2000
	b	.L1298
.L1315:
	lu12i.w	$r15,4096>>12			# 0x1000
	b	.L1298
.L1314:
	ori	$r15,$r0,2048			# 0x800
	b	.L1298
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
	bltu	$r5,$r4,.L1364
	b	.L1365
	.align	5
.L1368:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
	bleu	$r4,$r5,.L1366
	beqz	$r14,.L1367
.L1364:
	and	$r13,$r5,$r15
	addi.w	$r14,$r14,-1
	beqz	$r13,.L1368
.L1365:
	or	$r13,$r0,$r0
	.align	3
.L1370:
	bltu	$r4,$r5,.L1369
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L1369:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	bnez	$r12,.L1370
.L1367:
	masknez	$r13,$r13,$r6
	maskeqz	$r4,$r4,$r6
	or	$r4,$r13,$r4
	jr	$r1
	.align	5
.L1366:
	beqz	$r12,.L1367
	or	$r13,$r0,$r0
	b	.L1370
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
	beqz	$r13,.L1384
	sll.w	$r5,$r4,$r5
	or	$r13,$r0,$r0
.L1385:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	bstrins.d	$r4,$r5,63,32
.L1383:
	jr	$r1
	.align	5
.L1384:
	beqz	$r5,.L1383
	sub.w	$r15,$r0,$r5
	srai.d	$r14,$r4,32
	sll.w	$r14,$r14,$r5
	srl.w	$r12,$r4,$r15
	or	$r12,$r12,$r14
	sll.w	$r13,$r4,$r5
	slli.w	$r5,$r12,0
	b	.L1385
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
	beqz	$r14,.L1390
	sll.d	$r5,$r4,$r6
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L1390:
	beqz	$r6,.L1392
	sub.w	$r14,$r0,$r6
	sll.d	$r5,$r5,$r6
	srl.d	$r12,$r12,$r14
	sll.d	$r4,$r4,$r6
	or	$r5,$r12,$r5
.L1392:
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
	beqz	$r13,.L1396
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	sra.w	$r12,$r12,$r5
.L1397:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r12,31,0
.L1395:
	jr	$r1
	.align	5
.L1396:
	beqz	$r5,.L1395
	srai.d	$r13,$r4,32
	sub.w	$r14,$r0,$r5
	sll.w	$r14,$r13,$r14
	srl.w	$r12,$r4,$r5
	or	$r12,$r14,$r12
	sra.w	$r13,$r13,$r5
	slli.w	$r12,$r12,0
	b	.L1397
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
	beqz	$r14,.L1402
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
	.align	5
.L1402:
	beqz	$r6,.L1404
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	sll.d	$r12,$r12,$r14
	sra.d	$r5,$r5,$r6
	or	$r4,$r12,$r4
.L1404:
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
	blt	$r14,$r13,.L1413
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L1412
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1412
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1413:
	or	$r4,$r0,$r0
.L1412:
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
	blt	$r14,$r13,.L1419
	addi.w	$r4,$r0,1			# 0x1
	bgt	$r14,$r13,.L1418
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
.L1419:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1418:
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
	blt	$r5,$r7,.L1424
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L1423
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1423
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1424:
	or	$r4,$r0,$r0
.L1423:
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
	bnez	$r4,.L1431
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
	jr	$r1
	.align	5
.L1431:
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
	beqz	$r13,.L1435
	bstrpick.d	$r12,$r4,63,32
	or	$r13,$r0,$r0
	srl.w	$r5,$r12,$r5
.L1436:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	bstrins.d	$r4,$r5,31,0
.L1434:
	jr	$r1
	.align	5
.L1435:
	beqz	$r5,.L1434
	bstrpick.d	$r13,$r4,63,32
	sub.w	$r14,$r0,$r5
	srl.w	$r12,$r4,$r5
	sll.w	$r14,$r13,$r14
	or	$r12,$r14,$r12
	srl.w	$r13,$r13,$r5
	slli.w	$r5,$r12,0
	b	.L1436
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
	beqz	$r14,.L1441
	srl.d	$r4,$r5,$r6
	or	$r5,$r0,$r0
	jr	$r1
	.align	5
.L1441:
	beqz	$r6,.L1443
	sub.w	$r14,$r0,$r6
	srl.d	$r4,$r4,$r6
	sll.d	$r12,$r12,$r14
	srl.d	$r5,$r5,$r6
	or	$r4,$r12,$r4
.L1443:
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
	pcalau12i	$r13,%pc_hi20(.LC8)
	beqz	$r12,.L1464
	fld.d	$f0,$r13,%pc_lo12(.LC8)
	or	$r12,$r4,$r0
	.align	3
.L1461:
	fmul.d	$f0,$f0,$f1
.L1459:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	beqz	$r12,.L1460
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.d	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1461
.L1465:
	srai.d	$r12,$r13,1
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.d	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1461
	b	.L1465
	.align	5
.L1460:
	blt	$r4,$r0,.L1466
	jr	$r1
	.align	5
.L1464:
	fld.d	$f0,$r13,%pc_lo12(.LC8)
	or	$r12,$r4,$r0
	b	.L1459
	.align	5
.L1466:
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
	pcalau12i	$r13,%pc_hi20(.LC19)
	beqz	$r12,.L1473
	fld.s	$f0,$r13,%pc_lo12(.LC19)
	or	$r12,$r4,$r0
	.align	3
.L1470:
	fmul.s	$f0,$f0,$f1
.L1468:
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.d	$r12,$r12,1
	beqz	$r12,.L1469
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.s	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1470
.L1474:
	srai.d	$r12,$r13,1
	srli.w	$r13,$r12,31
	andi	$r14,$r12,1
	fmul.s	$f1,$f1,$f1
	add.w	$r13,$r13,$r12
	bnez	$r14,.L1470
	b	.L1474
	.align	5
.L1469:
	blt	$r4,$r0,.L1475
	jr	$r1
	.align	5
.L1473:
	fld.s	$f0,$r13,%pc_lo12(.LC19)
	or	$r12,$r4,$r0
	b	.L1468
	.align	5
.L1475:
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
	bltu	$r14,$r13,.L1478
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L1477
	slli.w	$r12,$r12,0
	slli.w	$r5,$r5,0
	or	$r4,$r0,$r0
	bltu	$r12,$r5,.L1477
	sltu	$r4,$r5,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1478:
	or	$r4,$r0,$r0
.L1477:
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
	bltu	$r14,$r13,.L1484
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r14,$r13,.L1483
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
.L1484:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1483:
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
	bltu	$r5,$r7,.L1489
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L1488
	or	$r4,$r0,$r0
	bltu	$r12,$r6,.L1488
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
	jr	$r1
	.align	5
.L1489:
	or	$r4,$r0,$r0
.L1488:
	jr	$r1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.set	.LC0,.LC4+12
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	1056964608
	.set	.LC2,.LC4+8
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC3:
	.word	0
	.word	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC5:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.rodata.cst8
	.align	3
.LC6:
	.word	0
	.word	-1074790400
	.align	3
.LC7:
	.word	0
	.word	-1075838976
	.align	3
.LC8:
	.word	0
	.word	1072693248
	.align	3
.LC9:
	.word	0
	.word	1070596096
	.section	.rodata.cst4
	.align	2
.LC14:
	.word	1191182336
	.section	.rodata.cst16
	.align	4
.LC15:
	.word	0
	.word	1
	.word	2
	.word	3
	.align	4
.LC16:
	.word	4
	.word	5
	.word	6
	.word	7
	.align	4
.LC17:
	.word	8
	.word	9
	.word	10
	.word	11
	.align	4
.LC18:
	.word	12
	.word	13
	.word	14
	.word	15
	.section	.rodata.cst4
	.align	2
.LC19:
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
	.globl	__lttf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
