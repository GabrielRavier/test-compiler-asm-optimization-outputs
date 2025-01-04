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
	addi.d	$r20,$r6,-1
	addi.w	$r13,$r0,14			# 0xe
	bleu	$r20,$r13,.L7
	addi.d	$r14,$r6,-2
	add.d	$r8,$r4,$r20
	add.d	$r10,$r5,$r14
	sub.d	$r11,$r8,$r10
	addi.w	$r9,$r0,30			# 0x1e
	addi.d	$r16,$r11,30
	bleu	$r16,$r9,.L7
	add.d	$r16,$r5,$r6
	add.d	$r15,$r4,$r6
	bleu	$r20,$r9,.L24
	srli.d	$r17,$r6,5
	addi.d	$r18,$r6,-32
	sub.d	$r19,$r0,$r17
	or	$r12,$r0,$r0
	add.d	$r7,$r5,$r18
	add.d	$r20,$r4,$r18
	slli.d	$r13,$r19,5
	.align	3
.L9:
	xvldx	$xr2,$r7,$r12
	xvstx	$xr2,$r20,$r12
	addi.d	$r12,$r12,-32
	bne	$r12,$r13,.L9
	andi	$r6,$r6,31
	add.d	$r16,$r16,$r12
	add.d	$r15,$r15,$r12
	or	$r18,$r6,$r0
	beqz	$r6,.L6
	addi.w	$r8,$r0,14			# 0xe
	addi.d	$r14,$r6,-1
	bleu	$r14,$r8,.L11
.L8:
	addi.d	$r9,$r6,-16
	addi.w	$r10,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr3,$r5,$r9
	vstx	$vr3,$r4,$r9
	and	$r17,$r6,$r10
	andi	$r11,$r6,15
	sub.d	$r16,$r16,$r17
	sub.d	$r15,$r15,$r17
	sub.d	$r18,$r18,$r17
	beqz	$r11,.L6
.L11:
	ld.b	$r5,$r16,-1
	addi.w	$r19,$r0,1			# 0x1
	st.b	$r5,$r15,-1
	beq	$r18,$r19,.L6
	ld.b	$r7,$r16,-2
	addi.w	$r20,$r0,2			# 0x2
	st.b	$r7,$r15,-2
	beq	$r18,$r20,.L6
	ld.b	$r12,$r16,-3
	addi.w	$r13,$r0,3			# 0x3
	st.b	$r12,$r15,-3
	beq	$r18,$r13,.L6
	ld.b	$r6,$r16,-4
	addi.w	$r8,$r0,4			# 0x4
	st.b	$r6,$r15,-4
	beq	$r18,$r8,.L6
	ld.b	$r14,$r16,-5
	addi.w	$r9,$r0,5			# 0x5
	st.b	$r14,$r15,-5
	beq	$r18,$r9,.L6
	ld.b	$r10,$r16,-6
	addi.w	$r11,$r0,6			# 0x6
	st.b	$r10,$r15,-6
	beq	$r18,$r11,.L6
	ld.b	$r17,$r16,-7
	addi.w	$r5,$r0,7			# 0x7
	st.b	$r17,$r15,-7
	beq	$r18,$r5,.L6
	ld.b	$r19,$r16,-8
	addi.w	$r7,$r0,8			# 0x8
	st.b	$r19,$r15,-8
	beq	$r18,$r7,.L6
	ld.b	$r20,$r16,-9
	addi.w	$r12,$r0,9			# 0x9
	st.b	$r20,$r15,-9
	beq	$r18,$r12,.L6
	ld.b	$r6,$r16,-10
	addi.w	$r13,$r0,10			# 0xa
	st.b	$r6,$r15,-10
	beq	$r18,$r13,.L6
	ld.b	$r8,$r16,-11
	addi.w	$r14,$r0,11			# 0xb
	st.b	$r8,$r15,-11
	beq	$r18,$r14,.L6
	ld.b	$r9,$r16,-12
	addi.w	$r10,$r0,12			# 0xc
	st.b	$r9,$r15,-12
	beq	$r18,$r10,.L6
	ld.b	$r11,$r16,-13
	addi.w	$r17,$r0,13			# 0xd
	st.b	$r11,$r15,-13
	beq	$r18,$r17,.L6
	ld.b	$r5,$r16,-14
	addi.w	$r19,$r0,14			# 0xe
	st.b	$r5,$r15,-14
	beq	$r18,$r19,.L6
	ld.b	$r16,$r16,-15
	st.b	$r16,$r15,-15
	jr	$r1
	.align	5
.L5:
	bne	$r4,$r5,.L49
.L6:
	jr	$r1
	.align	5
.L49:
	beqz	$r6,.L6
	addi.d	$r13,$r6,-1
	addi.w	$r12,$r0,14			# 0xe
	bleu	$r13,$r12,.L26
	addi.d	$r7,$r5,1
	addi.w	$r14,$r0,30			# 0x1e
	sub.d	$r8,$r4,$r7
	bleu	$r8,$r14,.L26
	bleu	$r13,$r14,.L27
	srli.d	$r10,$r6,5
	or	$r11,$r0,$r0
	slli.d	$r9,$r10,5
	.align	3
.L17:
	xvldx	$xr0,$r5,$r11
	xvstx	$xr0,$r4,$r11
	addi.d	$r11,$r11,32
	bne	$r11,$r9,.L17
	add.d	$r15,$r5,$r9
	add.d	$r20,$r4,$r9
	sub.d	$r12,$r6,$r9
	beq	$r6,$r9,.L6
	addi.w	$r16,$r0,14			# 0xe
	addi.d	$r17,$r12,-1
	or	$r6,$r12,$r0
	bleu	$r17,$r16,.L20
.L16:
	addi.w	$r18,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr1,$r5,$r9
	vstx	$vr1,$r4,$r9
	and	$r5,$r6,$r18
	andi	$r19,$r6,15
	add.d	$r15,$r15,$r5
	add.d	$r20,$r20,$r5
	sub.d	$r12,$r12,$r5
	beqz	$r19,.L6
.L20:
	ld.b	$r6,$r15,0
	addi.w	$r13,$r0,1			# 0x1
	st.b	$r6,$r20,0
	beq	$r12,$r13,.L6
	ld.b	$r7,$r15,1
	addi.w	$r14,$r0,2			# 0x2
	st.b	$r7,$r20,1
	beq	$r12,$r14,.L6
	ld.b	$r8,$r15,2
	addi.w	$r9,$r0,3			# 0x3
	st.b	$r8,$r20,2
	beq	$r12,$r9,.L6
	ld.b	$r10,$r15,3
	addi.w	$r11,$r0,4			# 0x4
	st.b	$r10,$r20,3
	beq	$r12,$r11,.L6
	ld.b	$r16,$r15,4
	addi.w	$r17,$r0,5			# 0x5
	st.b	$r16,$r20,4
	beq	$r12,$r17,.L6
	ld.b	$r18,$r15,5
	addi.w	$r19,$r0,6			# 0x6
	st.b	$r18,$r20,5
	beq	$r12,$r19,.L6
	ld.b	$r5,$r15,6
	addi.w	$r6,$r0,7			# 0x7
	st.b	$r5,$r20,6
	beq	$r12,$r6,.L6
	ld.b	$r7,$r15,7
	addi.w	$r13,$r0,8			# 0x8
	st.b	$r7,$r20,7
	beq	$r12,$r13,.L6
	ld.b	$r14,$r15,8
	addi.w	$r8,$r0,9			# 0x9
	st.b	$r14,$r20,8
	beq	$r12,$r8,.L6
	ld.b	$r9,$r15,9
	addi.w	$r10,$r0,10			# 0xa
	st.b	$r9,$r20,9
	beq	$r12,$r10,.L6
	ld.b	$r11,$r15,10
	addi.w	$r16,$r0,11			# 0xb
	st.b	$r11,$r20,10
	beq	$r12,$r16,.L6
	ld.b	$r17,$r15,11
	addi.w	$r18,$r0,12			# 0xc
	st.b	$r17,$r20,11
	beq	$r12,$r18,.L6
	ld.b	$r19,$r15,12
	addi.w	$r5,$r0,13			# 0xd
	st.b	$r19,$r20,12
	beq	$r12,$r5,.L6
	ld.b	$r6,$r15,13
	addi.w	$r7,$r0,14			# 0xe
	st.b	$r6,$r20,13
	beq	$r12,$r7,.L6
	ld.b	$r15,$r15,14
	st.b	$r15,$r20,14
	jr	$r1
	.align	5
.L7:
	addi.d	$r15,$r5,-1
	addi.d	$r18,$r4,-1
	b	.L13
	.align	5
.L50:
	addi.d	$r20,$r20,-1
.L13:
	ldx.b	$r7,$r15,$r6
	stx.b	$r7,$r18,$r6
	or	$r6,$r20,$r0
	bnez	$r20,.L50
	jr	$r1
	.align	5
.L26:
	or	$r12,$r0,$r0
	.align	3
.L47:
	ldx.b	$r20,$r5,$r12
	stx.b	$r20,$r4,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L47
	jr	$r1
.L24:
	or	$r18,$r6,$r0
	b	.L8
.L27:
	or	$r15,$r5,$r0
	or	$r20,$r4,$r0
	or	$r12,$r6,$r0
	or	$r9,$r0,$r0
	b	.L16
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
.L62:
	beqz	$r7,.L63
	ld.bu	$r12,$r5,0
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	st.b	$r12,$r4,0
	addi.d	$r4,$r4,1
	bne	$r12,$r6,.L62
	jr	$r1
	.align	5
.L63:
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
	bnez	$r6,.L65
	b	.L68
	.align	5
.L67:
	addi.d	$r4,$r4,1
	beqz	$r6,.L68
.L65:
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r5,.L67
	jr	$r1
	.align	5
.L68:
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
	beqz	$r6,.L77
	.align	3
.L87:
	ld.bu	$r13,$r4,0
	ld.bu	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L86
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	bnez	$r6,.L87
.L77:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L86:
	ld.bu	$r4,$r4,0
	ld.bu	$r5,$r5,0
	sub.w	$r4,$r4,$r5
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
	beqz	$r6,.L89
	bl	%plt(memcpy)
.L89:
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
	add.d	$r7,$r4,$r6
	addi.d	$r13,$r4,-1
	b	.L95
	.align	5
.L97:
	ld.bu	$r12,$r4,0
	addi.d	$r7,$r7,-1
	beq	$r12,$r5,.L94
.L95:
	or	$r4,$r7,$r0
	bne	$r7,$r13,.L97
	or	$r4,$r0,$r0
.L94:
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
	beqz	$r6,.L101
	bstrpick.w	$r5,$r5,7,0
	bl	%plt(memset)
.L101:
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
	beqz	$r12,.L104
	.align	3
.L105:
	ld.b	$r6,$r5,1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
	st.b	$r6,$r4,0
	bnez	$r6,.L105
.L104:
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
	ld.b	$r6,$r4,0
	bstrpick.w	$r5,$r5,7,0
	bnez	$r6,.L111
	jr	$r1
	.align	5
.L113:
	ld.b	$r6,$r4,1
	addi.d	$r4,$r4,1
	beqz	$r6,.L110
.L111:
	bstrpick.w	$r12,$r6,7,0
	bne	$r12,$r5,.L113
.L110:
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
.L120:
	ld.b	$r12,$r4,0
	beq	$r12,$r5,.L119
	addi.d	$r4,$r4,1
	bnez	$r12,.L120
	or	$r4,$r0,$r0
.L119:
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
	bne	$r13,$r14,.L131
	.align	3
.L123:
	beqz	$r13,.L124
	ldx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	ldx.b	$r14,$r5,$r12
	beq	$r13,$r14,.L123
.L131:
	bstrpick.w	$r13,$r13,7,0
.L124:
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
	beqz	$r12,.L135
	or	$r5,$r4,$r0
	.align	3
.L134:
	ld.bu	$r13,$r5,1
	addi.d	$r5,$r5,1
	bnez	$r13,.L134
	sub.d	$r4,$r5,$r4
	jr	$r1
	.align	5
.L135:
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
	beqz	$r6,.L145
	ld.bu	$r12,$r4,0
	addi.d	$r6,$r6,-1
	add.d	$r14,$r4,$r6
	bnez	$r12,.L141
	b	.L151
	.align	5
.L142:
	beq	$r4,$r14,.L150
	addi.d	$r4,$r4,1
	bne	$r13,$r12,.L150
	ld.bu	$r12,$r4,0
	beqz	$r12,.L152
	or	$r5,$r15,$r0
.L141:
	ld.bu	$r13,$r5,0
	addi.d	$r15,$r5,1
	bnez	$r13,.L142
.L150:
	slli.w	$r4,$r12,0
.L140:
	sub.w	$r4,$r4,$r13
	jr	$r1
	.align	5
.L145:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L152:
	ld.bu	$r13,$r5,1
	or	$r4,$r0,$r0
	sub.w	$r4,$r4,$r13
	jr	$r1
.L151:
	ld.bu	$r13,$r5,0
	or	$r4,$r0,$r0
	b	.L140
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
	ble	$r6,$r12,.L153
	srli.d	$r19,$r6,1
	addi.d	$r7,$r6,-2
	addi.w	$r13,$r0,125			# 0x7d
	addi.d	$r16,$r19,-1
	bleu	$r7,$r13,.L161
	srli.d	$r14,$r6,7
	slli.d	$r17,$r14,7
	la.local	$r15,.LC0
	or	$r10,$r4,$r0
	xvld	$xr4,$r15,0
	or	$r11,$r5,$r0
	add.d	$r9,$r4,$r17
	.align	3
.L156:
	xvld	$xr3,$r10,0
	xvld	$xr2,$r10,32
	xvld	$xr1,$r10,64
	xvld	$xr0,$r10,96
	xvpermi.d	$xr6,$xr3,68
	xvpermi.d	$xr7,$xr3,238
	xvpermi.d	$xr5,$xr2,68
	xvshuf.b	$xr8,$xr7,$xr6,$xr4
	xvpermi.d	$xr9,$xr2,238
	xvst	$xr8,$r11,0
	xvshuf.b	$xr10,$xr9,$xr5,$xr4
	xvpermi.d	$xr11,$xr1,68
	xvst	$xr10,$r11,32
	xvpermi.d	$xr12,$xr1,238
	xvpermi.d	$xr13,$xr0,68
	xvshuf.b	$xr14,$xr12,$xr11,$xr4
	xvpermi.d	$xr15,$xr0,238
	xvst	$xr14,$r11,64
	xvshuf.b	$xr16,$xr15,$xr13,$xr4
	addi.d	$r10,$r10,128
	xvst	$xr16,$r11,96
	addi.d	$r11,$r11,128
	bne	$r9,$r10,.L156
	slli.d	$r8,$r14,6
	sub.d	$r20,$r0,$r8
	add.d	$r18,$r5,$r17
	add.d	$r13,$r4,$r17
	alsl.d	$r6,$r20,$r6,1
	beq	$r8,$r19,.L166
.L155:
	sub.d	$r12,$r16,$r8
	addi.w	$r19,$r0,6			# 0x6
	addi.d	$r7,$r12,1
	bleu	$r12,$r19,.L158
	slli.d	$r16,$r8,1
	vldx	$vr17,$r4,$r16
	srli.d	$r8,$r7,3
	vshuf4i.b	$vr18,$vr17,0xb1
	vstx	$vr18,$r5,$r16
	addi.w	$r14,$r0,1			# 0x1
	add.d	$r4,$r4,$r16
	add.d	$r5,$r5,$r16
	beq	$r8,$r14,.L159
	vld	$vr19,$r4,16
	addi.w	$r15,$r0,2			# 0x2
	vshuf4i.b	$vr20,$vr19,0xb1
	vst	$vr20,$r5,16
	beq	$r8,$r15,.L159
	vld	$vr21,$r4,32
	addi.w	$r17,$r0,3			# 0x3
	vshuf4i.b	$vr22,$vr21,0xb1
	vst	$vr22,$r5,32
	beq	$r8,$r17,.L159
	vld	$vr23,$r4,48
	addi.w	$r9,$r0,4			# 0x4
	vshuf4i.b	$vr4,$vr23,0xb1
	vst	$vr4,$r5,48
	beq	$r8,$r9,.L159
	vld	$vr3,$r4,64
	addi.w	$r10,$r0,5			# 0x5
	vshuf4i.b	$vr2,$vr3,0xb1
	vst	$vr2,$r5,64
	beq	$r8,$r10,.L159
	vld	$vr1,$r4,80
	vshuf4i.b	$vr0,$vr1,0xb1
	vst	$vr0,$r5,80
	beq	$r8,$r19,.L159
	vld	$vr6,$r4,96
	vshuf4i.b	$vr7,$vr6,0xb1
	vst	$vr7,$r5,96
.L159:
	addi.w	$r11,$r0,-8			# 0xfffffffffffffff8
	and	$r19,$r7,$r11
	slli.d	$r12,$r19,1
	andi	$r20,$r7,7
	sub.d	$r7,$r0,$r19
	add.d	$r18,$r18,$r12
	add.d	$r13,$r13,$r12
	alsl.d	$r6,$r7,$r6,1
	beqz	$r20,.L153
.L158:
	ld.hu	$r16,$r13,0
	addi.w	$r8,$r0,3			# 0x3
	revb.2h	$r14,$r16
	st.h	$r14,$r18,0
	ble	$r6,$r8,.L153
	ld.hu	$r4,$r13,2
	addi.w	$r5,$r0,5			# 0x5
	revb.2h	$r15,$r4
	st.h	$r15,$r18,2
	ble	$r6,$r5,.L153
	ld.hu	$r17,$r13,4
	addi.w	$r9,$r0,7			# 0x7
	revb.2h	$r10,$r17
	st.h	$r10,$r18,4
	ble	$r6,$r9,.L153
	ld.hu	$r11,$r13,6
	addi.w	$r20,$r0,9			# 0x9
	revb.2h	$r19,$r11
	st.h	$r19,$r18,6
	ble	$r6,$r20,.L153
	ld.hu	$r12,$r13,8
	addi.w	$r7,$r0,11			# 0xb
	revb.2h	$r16,$r12
	st.h	$r16,$r18,8
	ble	$r6,$r7,.L153
	ld.hu	$r8,$r13,10
	addi.w	$r14,$r0,13			# 0xd
	revb.2h	$r4,$r8
	st.h	$r4,$r18,10
	ble	$r6,$r14,.L153
	ld.hu	$r6,$r13,12
	revb.2h	$r13,$r6
	st.h	$r13,$r18,12
.L153:
	jr	$r1
.L161:
	or	$r18,$r5,$r0
	or	$r13,$r4,$r0
	or	$r8,$r0,$r0
	b	.L155
.L166:
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
	addi.w	$r5,$r4,-97
	sltui	$r4,$r5,26
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
	sltui	$r5,$r13,1
	sltui	$r4,$r12,1
	maskeqz	$r6,$r5,$r12
	or	$r4,$r6,$r4
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
	sltu	$r5,$r12,$r4
	sltui	$r6,$r13,1
	sltui	$r4,$r5,1
	maskeqz	$r7,$r6,$r5
	or	$r4,$r7,$r4
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
	addi.w	$r13,$r4,-9
	addi.w	$r14,$r0,32			# 0x20
	xor	$r4,$r4,$r14
	addi.w	$r12,$r0,1			# 0x1
	sltui	$r5,$r13,5
	masknez	$r6,$r12,$r4
	maskeqz	$r7,$r5,$r4
	or	$r4,$r7,$r6
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
	bleu	$r4,$r13,.L185
	addi.w	$r5,$r4,-127
	addi.w	$r14,$r0,32			# 0x20
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r5,$r14,.L188
	jr	$r1
	.align	5
.L185:
	addi.w	$r4,$r0,1			# 0x1
	jr	$r1
	.align	5
.L188:
	lu12i.w	$r6,-12288>>12			# 0xffffffffffffd000
	ori	$r7,$r6,4056
	addu16i.d	$r8,$r12,-1
	add.w	$r9,$r12,$r7
	addi.w	$r10,$r8,7
	sltu	$r11,$r4,$r9
	sltui	$r15,$r10,3
	maskeqz	$r16,$r15,$r11
	masknez	$r4,$r4,$r11
	or	$r4,$r16,$r4
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
	bleu	$r4,$r13,.L197
	lu12i.w	$r4,8192>>12			# 0x2000
	ori	$r5,$r4,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r5,.L192
	lu12i.w	$r6,-12288>>12			# 0xffffffffffffd000
	ori	$r7,$r6,4054
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r8,$r14,2005
	add.w	$r9,$r12,$r7
	bleu	$r9,$r8,.L192
	lu12i.w	$r10,-57344>>12			# 0xffffffffffff2000
	lu12i.w	$r11,4096>>12			# 0x1000
	ori	$r15,$r11,4088
	add.w	$r16,$r12,$r10
	bleu	$r16,$r15,.L192
	lu12i.w	$r17,61440>>12			# 0xf000
	ori	$r18,$r17,4094
	addu16i.d	$r19,$r12,-1
	and	$r12,$r12,$r18
	lu12i.w	$r20,1048576>>12			# 0x100000
	addu16i.d	$r7,$r12,-1
	addi.w	$r4,$r19,4
	ori	$r5,$r20,3
	addi.d	$r14,$r7,2
	sltu	$r6,$r5,$r4
	or	$r13,$r0,$r0
	sltu	$r9,$r0,$r14
	maskeqz	$r8,$r13,$r6
	masknez	$r10,$r9,$r6
	or	$r4,$r10,$r8
.L192:
	jr	$r1
	.align	5
.L197:
	addi.w	$r11,$r4,1
	addi.w	$r15,$r0,32			# 0x20
	andi	$r16,$r11,127
	sltu	$r4,$r15,$r16
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
	addi.w	$r5,$r13,-97
	sltu	$r6,$r12,$r4
	addi.w	$r14,$r0,1			# 0x1
	sltui	$r7,$r5,6
	masknez	$r8,$r14,$r6
	maskeqz	$r9,$r7,$r6
	or	$r4,$r9,$r8
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
	bcnez	$fcc0,.L205
	fcmp.cun.d	$fcc1,$f1,$f1
	fmov.d	$f0,$f1
	bcnez	$fcc1,.L202
	fcmp.sgt.d	$fcc2,$f2,$f1
	bceqz	$fcc2,.L209
	fsub.d	$f0,$f2,$f1
	jr	$r1
	.align	5
.L209:
	movgr2fr.d	$f0,$r0
.L202:
	jr	$r1
	.align	5
.L205:
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
	bcnez	$fcc0,.L213
	fcmp.cun.s	$fcc1,$f1,$f1
	fmov.s	$f0,$f1
	bcnez	$fcc1,.L210
	fcmp.sgt.s	$fcc2,$f2,$f1
	bceqz	$fcc2,.L217
	fsub.s	$f0,$f2,$f1
	jr	$r1
	.align	5
.L217:
	movgr2fr.w	$f0,$r0
.L210:
	jr	$r1
	.align	5
.L213:
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
	bcnez	$fcc0,.L221
	fcmp.cun.d	$fcc1,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc1,.L218
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r4,$r12,63
	srli.d	$r5,$r13,63
	beq	$r4,$r5,.L220
	fst.d	$f1,$r3,0
	beqz	$r4,.L225
.L218:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L220:
	.cfi_restore_state
	fld.d	$f1,$r3,8
	fld.d	$f2,$r3,0
	fcmp.slt.d	$fcc2,$f0,$f1
	fsel	$f3,$f2,$f1,$fcc2
	fst.d	$f3,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L221:
	.cfi_restore_state
	fmov.d	$f0,$f1
.L225:
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
	bcnez	$fcc0,.L229
	fcmp.cun.s	$fcc1,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc1,.L226
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r4,$r12,$r14
	and	$r5,$r13,$r14
	slli.w	$r6,$r4,0
	slli.w	$r7,$r5,0
	beq	$r6,$r7,.L228
	fst.s	$f1,$r3,8
	beqz	$r6,.L233
.L226:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L228:
	.cfi_restore_state
	fld.s	$f1,$r3,12
	fld.s	$f2,$r3,8
	fcmp.slt.s	$fcc2,$f0,$f1
	fsel	$f3,$f2,$f1,$fcc2
	fst.s	$f3,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L229:
	.cfi_restore_state
	fmov.s	$f0,$f1
.L233:
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
	bnez	$r4,.L240
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L241
	srli.d	$r12,$r25,63
	srli.d	$r13,$r23,63
	bne	$r12,$r13,.L246
	or	$r6,$r24,$r0
	or	$r7,$r23,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L240
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L240:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L234:
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
.L246:
	.cfi_restore_state
	maskeqz	$r1,$r24,$r12
	masknez	$r4,$r26,$r12
	or	$r4,$r1,$r4
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	maskeqz	$r5,$r23,$r12
	masknez	$r6,$r25,$r12
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r5,$r5,$r6
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L241:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L234
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
	bcnez	$fcc0,.L250
	fcmp.cun.d	$fcc1,$f1,$f1
	fst.d	$f0,$r3,0
	bcnez	$fcc1,.L247
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	srli.d	$r4,$r12,63
	srli.d	$r5,$r13,63
	beq	$r4,$r5,.L249
	beqz	$r4,.L250
.L247:
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L249:
	.cfi_restore_state
	fld.d	$f1,$r3,8
	fcmp.slt.d	$fcc2,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc2
	fst.d	$f0,$r3,0
	fld.d	$f0,$r3,0
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L250:
	.cfi_restore_state
	fst.d	$f1,$r3,0
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
	fcmp.cun.s	$fcc0,$f0,$f0
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f1,$r3,12
	bcnez	$fcc0,.L257
	fcmp.cun.s	$fcc1,$f1,$f1
	fst.s	$f0,$r3,8
	bcnez	$fcc1,.L254
	ldptr.w	$r12,$r3,8
	ldptr.w	$r13,$r3,12
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r4,$r12,$r14
	and	$r5,$r13,$r14
	slli.w	$r6,$r4,0
	slli.w	$r7,$r5,0
	beq	$r6,$r7,.L256
	beqz	$r6,.L257
.L254:
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L256:
	.cfi_restore_state
	fld.s	$f1,$r3,12
	fcmp.slt.s	$fcc2,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc2
	fst.s	$f0,$r3,8
	fld.s	$f0,$r3,8
	addi.d	$r3,$r3,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L257:
	.cfi_restore_state
	fst.s	$f1,$r3,8
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
	bnez	$r4,.L267
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L268
	srli.d	$r12,$r23,63
	srli.d	$r13,$r25,63
	bne	$r12,$r13,.L273
	or	$r6,$r26,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L268
	or	$r24,$r26,$r0
	or	$r23,$r25,$r0
.L268:
	or	$r4,$r24,$r0
	or	$r5,$r23,$r0
.L261:
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
.L273:
	.cfi_restore_state
	maskeqz	$r1,$r24,$r12
	masknez	$r6,$r26,$r12
	or	$r4,$r1,$r6
	ld.d	$r1,$r3,40
	.cfi_remember_state
	.cfi_restore 1
	maskeqz	$r5,$r23,$r12
	masknez	$r7,$r25,$r12
	ld.d	$r23,$r3,32
	.cfi_restore 23
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	or	$r5,$r5,$r7
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.align	5
.L267:
	.cfi_restore_state
	or	$r4,$r26,$r0
	or	$r5,$r25,$r0
	b	.L261
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
	beqz	$r4,.L275
	la.local	$r14,.LANCHOR1
	.align	3
.L276:
	andi	$r13,$r4,63
	ldx.bu	$r5,$r14,$r13
	bstrpick.d	$r4,$r4,31,6
	addi.d	$r12,$r12,1
	st.b	$r5,$r12,-1
	bnez	$r4,.L276
.L275:
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
	bstrpick.d	$r5,$r4,31,0
	st.d	$r5,$r12,%pc_lo12(.LANCHOR0+8)
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
	ld.d	$r6,$r12,8
	ori	$r4,$r13,3885
	lu32i.d	$r4,0x1f42d00000000>>32
	lu52i.d	$r5,$r4,0x5850000000000000>>52
	mul.d	$r7,$r6,$r5
	addi.d	$r8,$r7,1
	st.d	$r8,$r12,8
	srli.d	$r4,$r8,33
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
	beqz	$r5,.L288
	ldptr.d	$r12,$r5,0
	st.d	$r5,$r4,8
	stptr.d	$r12,$r4,0
	stptr.d	$r4,$r5,0
	ldptr.d	$r5,$r4,0
	beqz	$r5,.L282
	st.d	$r4,$r5,8
.L282:
	jr	$r1
	.align	5
.L288:
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
	beqz	$r12,.L290
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L290:
	ld.d	$r4,$r4,8
	beqz	$r4,.L289
	stptr.d	$r12,$r4,0
.L289:
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
	beqz	$r26,.L299
	st.d	$r23,$r3,64
	st.d	$r24,$r3,56
	stptr.d	$r31,$r3,0
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 31, -80
	or	$r23,$r5,$r0
	or	$r31,$r8,$r0
	or	$r24,$r0,$r0
	b	.L301
	.align	5
.L316:
	add.d	$r23,$r23,$r25
	beq	$r26,$r24,.L315
.L301:
	or	$r5,$r23,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r31,0
	or	$r28,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L316
	ld.d	$r23,$r3,64
	.cfi_restore 23
	ld.d	$r24,$r3,56
	.cfi_restore 24
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
.L298:
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
.L315:
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
.L299:
	mul.d	$r1,$r25,$r26
	addi.d	$r4,$r26,1
	stptr.d	$r4,$r29,0
	add.d	$r28,$r30,$r1
	beqz	$r25,.L298
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	or	$r4,$r28,$r0
	bl	%plt(memmove)
	b	.L298
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
	beqz	$r28,.L318
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
	b	.L320
	.align	5
.L331:
	add.d	$r23,$r23,$r27
	beq	$r28,$r24,.L330
.L320:
	or	$r5,$r23,$r0
	or	$r4,$r25,$r0
	jirl	$r1,$r26,0
	or	$r29,$r23,$r0
	addi.d	$r24,$r24,1
	bnez	$r4,.L331
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
.L330:
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
.L318:
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
.L340:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L334
	bleu	$r12,$r15,.L334
	addi.w	$r5,$r0,43			# 0x2b
	beq	$r13,$r5,.L335
	addi.w	$r8,$r0,45			# 0x2d
	bne	$r13,$r8,.L352
	ld.b	$r9,$r4,1
	addi.w	$r10,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r9,-48
	or	$r4,$r0,$r0
	bgtu	$r11,$r10,.L341
	addi.w	$r4,$r0,1			# 0x1
.L338:
	or	$r12,$r0,$r0
	addi.w	$r18,$r0,9			# 0x9
	.align	3
.L342:
	ld.b	$r17,$r19,1
	alsl.w	$r20,$r12,$r12,2
	slli.w	$r14,$r20,1
	or	$r13,$r11,$r0
	sub.w	$r12,$r14,$r11
	addi.w	$r11,$r17,-48
	addi.d	$r19,$r19,1
	bleu	$r11,$r18,.L342
	sub.w	$r15,$r13,$r14
	maskeqz	$r5,$r12,$r4
	masknez	$r4,$r15,$r4
	or	$r4,$r4,$r5
.L341:
	jr	$r1
	.align	5
.L334:
	addi.d	$r4,$r4,1
	b	.L340
	.align	5
.L352:
	addi.w	$r11,$r13,-48
	addi.w	$r16,$r0,9			# 0x9
	or	$r19,$r4,$r0
	or	$r4,$r0,$r0
	bleu	$r11,$r16,.L338
	jr	$r1
	.align	5
.L335:
	ld.b	$r6,$r4,1
	addi.w	$r7,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r6,-48
	or	$r4,$r0,$r0
	bleu	$r11,$r7,.L338
	jr	$r1
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
.L360:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L354
	bleu	$r12,$r15,.L354
	addi.w	$r5,$r0,43			# 0x2b
	beq	$r13,$r5,.L355
	addi.w	$r8,$r0,45			# 0x2d
	bne	$r13,$r8,.L372
	ld.b	$r9,$r4,1
	addi.w	$r10,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r9,-48
	or	$r4,$r0,$r0
	bgtu	$r11,$r10,.L353
	addi.w	$r4,$r0,1			# 0x1
.L358:
	or	$r12,$r0,$r0
	addi.w	$r18,$r0,9			# 0x9
	.align	3
.L362:
	ld.b	$r17,$r19,1
	alsl.d	$r20,$r12,$r12,2
	slli.d	$r14,$r20,1
	or	$r13,$r11,$r0
	sub.d	$r12,$r14,$r11
	addi.w	$r11,$r17,-48
	addi.d	$r19,$r19,1
	bleu	$r11,$r18,.L362
	sub.d	$r15,$r13,$r14
	maskeqz	$r5,$r12,$r4
	masknez	$r4,$r15,$r4
	or	$r4,$r4,$r5
.L353:
	jr	$r1
	.align	5
.L354:
	addi.d	$r4,$r4,1
	b	.L360
	.align	5
.L372:
	addi.w	$r11,$r13,-48
	addi.w	$r16,$r0,9			# 0x9
	or	$r19,$r4,$r0
	or	$r4,$r0,$r0
	bleu	$r11,$r16,.L358
	jr	$r1
	.align	5
.L355:
	ld.b	$r6,$r4,1
	addi.w	$r7,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r6,-48
	or	$r4,$r0,$r0
	bleu	$r11,$r7,.L358
	jr	$r1
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
.L378:
	ld.b	$r13,$r4,0
	addi.w	$r12,$r13,-9
	beq	$r13,$r14,.L374
	bleu	$r12,$r15,.L374
	addi.w	$r5,$r0,43			# 0x2b
	beq	$r13,$r5,.L375
	addi.w	$r8,$r0,45			# 0x2d
	bne	$r13,$r8,.L393
	ld.b	$r9,$r4,1
	addi.w	$r10,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r9,-48
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r11,$r10,.L394
.L379:
	or	$r12,$r0,$r0
	addi.w	$r18,$r0,9			# 0x9
	.align	3
.L382:
	ld.b	$r17,$r19,1
	alsl.d	$r20,$r12,$r12,2
	slli.d	$r14,$r20,1
	or	$r13,$r11,$r0
	sub.d	$r12,$r14,$r11
	addi.w	$r11,$r17,-48
	addi.d	$r19,$r19,1
	bleu	$r11,$r18,.L382
	sub.d	$r15,$r13,$r14
	maskeqz	$r5,$r12,$r4
	masknez	$r4,$r15,$r4
	or	$r4,$r4,$r5
	jr	$r1
	.align	5
.L374:
	addi.d	$r4,$r4,1
	b	.L378
	.align	5
.L393:
	addi.w	$r11,$r13,-48
	addi.w	$r16,$r0,9			# 0x9
	or	$r19,$r4,$r0
	or	$r4,$r0,$r0
	bleu	$r11,$r16,.L379
	jr	$r1
	.align	5
.L375:
	ld.b	$r6,$r4,1
	addi.w	$r7,$r0,9			# 0x9
	addi.d	$r19,$r4,1
	addi.w	$r11,$r6,-48
	or	$r4,$r0,$r0
	bleu	$r11,$r7,.L379
	jr	$r1
.L394:
	or	$r4,$r0,$r0
	jr	$r1
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
	beqz	$r6,.L396
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
	or	$r27,$r4,$r0
	or	$r25,$r5,$r0
	or	$r26,$r7,$r0
	or	$r28,$r8,$r0
	.align	3
.L399:
	srli.d	$r29,$r23,1
	mul.d	$r24,$r29,$r26
	or	$r4,$r27,$r0
	addi.d	$r23,$r23,-1
	add.d	$r24,$r25,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r28,0
	blt	$r4,$r0,.L400
	beqz	$r4,.L409
	sub.d	$r23,$r23,$r29
	add.d	$r25,$r24,$r26
	bnez	$r23,.L399
.L410:
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
.L396:
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
.L400:
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
	bnez	$r23,.L399
	b	.L410
	.align	5
.L409:
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
	or	$r27,$r4,$r0
	or	$r25,$r5,$r0
	or	$r26,$r7,$r0
	or	$r28,$r8,$r0
	or	$r29,$r9,$r0
	beqz	$r23,.L416
	st.d	$r30,$r3,8
	.cfi_offset 30, -72
	.align	3
.L424:
	srai.d	$r30,$r23,1
	mul.d	$r24,$r30,$r26
	or	$r6,$r29,$r0
	or	$r4,$r27,$r0
	addi.w	$r23,$r23,-1
	srai.d	$r23,$r23,1
	add.d	$r24,$r25,$r24
	or	$r5,$r24,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L428
	ble	$r4,$r0,.L414
	add.d	$r25,$r24,$r26
	bnez	$r23,.L424
.L429:
	ld.d	$r30,$r3,8
	.cfi_restore 30
.L416:
	or	$r24,$r0,$r0
.L411:
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
.L414:
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
	beqz	$r30,.L429
	or	$r23,$r30,$r0
	b	.L424
	.align	5
.L428:
	ld.d	$r30,$r3,8
	.cfi_restore 30
	b	.L411
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
	mod.w	$r5,$r12,$r5
	bstrins.d	$r4,$r13,31,0
	bstrins.d	$r4,$r5,63,32
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
	beqz	$r12,.L441
	.align	3
.L438:
	beq	$r5,$r12,.L445
	ldptr.w	$r12,$r4,4
	addi.d	$r4,$r4,4
	bnez	$r12,.L438
.L441:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L445:
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
	bne	$r13,$r14,.L448
	.align	3
.L447:
	beqz	$r13,.L448
	ldx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	ldx.w	$r14,$r5,$r12
	beq	$r13,$r14,.L447
.L448:
	slt	$r4,$r13,$r14
	addi.w	$r6,$r0,-1			# 0xffffffffffffffff
	slt	$r7,$r14,$r13
	masknez	$r8,$r7,$r4
	maskeqz	$r9,$r6,$r4
	or	$r4,$r8,$r9
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
.L456:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	bnez	$r13,.L456
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
	beqz	$r12,.L461
	or	$r5,$r4,$r0
	.align	3
.L460:
	ldptr.w	$r13,$r5,4
	addi.d	$r5,$r5,4
	bnez	$r13,.L460
	sub.d	$r4,$r5,$r4
	srai.d	$r4,$r4,2
	jr	$r1
	.align	5
.L461:
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
	beqz	$r6,.L469
	.align	3
.L476:
	ldptr.w	$r12,$r5,0
	ldptr.w	$r13,$r4,0
	addi.d	$r6,$r6,-1
	bne	$r12,$r13,.L466
	beqz	$r12,.L466
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L476
.L469:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L466:
	ldptr.w	$r4,$r4,0
	ldptr.w	$r14,$r5,0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	slt	$r5,$r4,$r14
	slt	$r6,$r14,$r4
	masknez	$r7,$r6,$r5
	maskeqz	$r8,$r15,$r5
	or	$r4,$r7,$r8
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
	beqz	$r6,.L481
	.align	3
.L488:
	ldptr.w	$r12,$r4,0
	addi.d	$r6,$r6,-1
	beq	$r12,$r5,.L487
	addi.d	$r4,$r4,4
	bnez	$r6,.L488
.L481:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L487:
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
	beqz	$r6,.L495
	.align	3
.L505:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	addi.d	$r6,$r6,-1
	bne	$r13,$r12,.L504
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
	bnez	$r6,.L505
.L495:
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L504:
	ldptr.w	$r4,$r4,0
	ldptr.w	$r14,$r5,0
	addi.w	$r15,$r0,-1			# 0xffffffffffffffff
	slt	$r5,$r4,$r14
	slt	$r6,$r14,$r4
	masknez	$r7,$r6,$r5
	maskeqz	$r8,$r15,$r5
	or	$r4,$r7,$r8
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
	beqz	$r6,.L507
	slli.d	$r6,$r6,2
	bl	%plt(memcpy)
.L507:
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
	beq	$r4,$r5,.L541
	slli.d	$r12,$r6,2
	sub.d	$r13,$r4,$r5
	addi.d	$r14,$r6,-1
	bgeu	$r13,$r12,.L560
	beqz	$r6,.L541
	addi.w	$r11,$r0,10			# 0xa
	bleu	$r14,$r11,.L517
	addi.d	$r17,$r12,-4
	addi.d	$r18,$r12,-8
	add.d	$r19,$r4,$r17
	add.d	$r13,$r5,$r18
	sub.d	$r7,$r19,$r13
	addi.w	$r16,$r0,24			# 0x18
	addi.d	$r8,$r7,24
	bleu	$r8,$r16,.L518
	srli.d	$r9,$r6,3
	addi.d	$r12,$r12,-32
	sub.d	$r20,$r0,$r9
	or	$r17,$r0,$r0
	add.d	$r10,$r5,$r12
	add.d	$r11,$r4,$r12
	slli.d	$r15,$r20,5
	.align	3
.L519:
	xvldx	$xr1,$r10,$r17
	xvstx	$xr1,$r11,$r17
	addi.d	$r17,$r17,-32
	bne	$r15,$r17,.L519
	addi.w	$r18,$r0,-8			# 0xfffffffffffffff8
	andi	$r16,$r6,7
	and	$r6,$r6,$r18
	sub.d	$r19,$r14,$r6
	beqz	$r16,.L541
	slli.d	$r13,$r19,2
	ldx.w	$r7,$r5,$r13
	addi.d	$r14,$r19,-1
	stx.w	$r7,$r4,$r13
	beqz	$r19,.L541
	slli.d	$r8,$r14,2
	ldx.w	$r9,$r5,$r8
	stx.w	$r9,$r4,$r8
	beqz	$r14,.L541
	addi.d	$r12,$r8,-4
	ldx.w	$r10,$r5,$r12
	addi.w	$r20,$r0,2			# 0x2
	stx.w	$r10,$r4,$r12
	beq	$r19,$r20,.L541
	addi.d	$r11,$r8,-8
	ldx.w	$r17,$r5,$r11
	addi.w	$r15,$r0,3			# 0x3
	stx.w	$r17,$r4,$r11
	beq	$r19,$r15,.L541
	addi.d	$r18,$r8,-12
	ldx.w	$r16,$r5,$r18
	addi.w	$r6,$r0,4			# 0x4
	stx.w	$r16,$r4,$r18
	beq	$r19,$r6,.L541
	addi.d	$r13,$r8,-16
	ldx.w	$r7,$r5,$r13
	addi.w	$r14,$r0,5			# 0x5
	stx.w	$r7,$r4,$r13
	beq	$r19,$r14,.L541
	addi.d	$r19,$r8,-20
	ldx.w	$r5,$r5,$r19
	stx.w	$r5,$r4,$r19
	jr	$r1
	.align	5
.L534:
	or	$r12,$r4,$r0
.L525:
	addi.d	$r20,$r14,1
	or	$r15,$r0,$r0
	bstrpick.d	$r14,$r20,31,0
	alsl.d	$r14,$r14,$r0,2
	.align	3
.L531:
	ldx.w	$r10,$r5,$r15
	stx.w	$r10,$r12,$r15
	addi.d	$r15,$r15,4
	bne	$r14,$r15,.L531
.L541:
	jr	$r1
	.align	5
.L560:
	beqz	$r6,.L561
	addi.w	$r7,$r0,7			# 0x7
	bleu	$r14,$r7,.L534
	addi.d	$r8,$r5,4
	addi.w	$r9,$r0,24			# 0x18
	sub.d	$r10,$r4,$r8
	bleu	$r10,$r9,.L526
	srli.d	$r15,$r6,3
	or	$r16,$r0,$r0
	or	$r11,$r0,$r0
	.align	3
.L527:
	xvldx	$xr0,$r5,$r16
	addi.d	$r11,$r11,1
	xvstx	$xr0,$r4,$r16
	addi.d	$r16,$r16,32
	bne	$r15,$r11,.L527
	addi.w	$r17,$r0,-8			# 0xfffffffffffffff8
	andi	$r18,$r6,7
	and	$r6,$r6,$r17
	slli.d	$r19,$r6,2
	sub.d	$r20,$r14,$r6
	add.d	$r13,$r4,$r19
	add.d	$r14,$r5,$r19
	beqz	$r18,.L541
	ldx.w	$r5,$r5,$r19
	stx.w	$r5,$r4,$r19
	beqz	$r20,.L541
	ldptr.w	$r7,$r14,4
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r7,$r13,4
	beq	$r20,$r12,.L541
	ldptr.w	$r8,$r14,8
	addi.w	$r9,$r0,2			# 0x2
	st.w	$r8,$r13,8
	beq	$r20,$r9,.L541
	ldptr.w	$r10,$r14,12
	addi.w	$r15,$r0,3			# 0x3
	st.w	$r10,$r13,12
	beq	$r20,$r15,.L541
	ldptr.w	$r11,$r14,16
	addi.w	$r16,$r0,4			# 0x4
	st.w	$r11,$r13,16
	beq	$r20,$r16,.L541
	ldptr.w	$r17,$r14,20
	addi.w	$r18,$r0,5			# 0x5
	st.w	$r17,$r13,20
	beq	$r20,$r18,.L541
	ldptr.w	$r6,$r14,24
	st.w	$r6,$r13,24
	jr	$r1
.L518:
	addi.w	$r8,$r0,15			# 0xf
	bleu	$r14,$r8,.L517
	addi.d	$r9,$r12,-104
	addi.w	$r20,$r0,15			# 0xf
	add.d	$r11,$r5,$r9
	add.d	$r12,$r4,$r9
	.align	3
.L522:
	ldptr.w	$r10,$r11,100
	preld	8,$r12,0
	addi.d	$r12,$r12,-64
	preld	0,$r11,0
	addi.d	$r11,$r11,-64
	st.w	$r10,$r12,164
	ldptr.w	$r15,$r11,160
	addi.d	$r14,$r14,-16
	st.w	$r15,$r12,160
	ldptr.w	$r17,$r11,156
	st.w	$r17,$r12,156
	ldptr.w	$r18,$r11,152
	st.w	$r18,$r12,152
	ldptr.w	$r6,$r11,148
	st.w	$r6,$r12,148
	ldptr.w	$r16,$r11,144
	st.w	$r16,$r12,144
	ldptr.w	$r13,$r11,140
	st.w	$r13,$r12,140
	ldptr.w	$r7,$r11,136
	st.w	$r7,$r12,136
	ldptr.w	$r19,$r11,132
	st.w	$r19,$r12,132
	ldptr.w	$r8,$r11,128
	st.w	$r8,$r12,128
	ldptr.w	$r9,$r11,124
	st.w	$r9,$r12,124
	ldptr.w	$r10,$r11,120
	st.w	$r10,$r12,120
	ldptr.w	$r15,$r11,116
	st.w	$r15,$r12,116
	ldptr.w	$r17,$r11,112
	st.w	$r17,$r12,112
	ldptr.w	$r18,$r11,108
	st.w	$r18,$r12,108
	ldptr.w	$r6,$r11,104
	st.w	$r6,$r12,104
	bgtu	$r14,$r20,.L522
.L517:
	bstrpick.d	$r14,$r14,31,0
	alsl.d	$r14,$r14,$r0,2
	addi.w	$r20,$r0,-4			# 0xfffffffffffffffc
	.align	3
.L523:
	ldx.w	$r11,$r5,$r14
	stx.w	$r11,$r4,$r14
	addi.d	$r14,$r14,-4
	bne	$r14,$r20,.L523
	jr	$r1
	.align	5
.L561:
	jr	$r1
.L526:
	addi.w	$r19,$r0,15			# 0xf
	bleu	$r14,$r19,.L534
	or	$r12,$r4,$r0
	addi.w	$r20,$r0,15			# 0xf
	.align	3
.L530:
	ldptr.w	$r13,$r5,0
	preld	8,$r12,116
	addi.d	$r12,$r12,64
	preld	0,$r5,116
	addi.d	$r5,$r5,64
	st.w	$r13,$r12,-64
	ldptr.w	$r7,$r5,-60
	addi.d	$r14,$r14,-16
	st.w	$r7,$r12,-60
	ldptr.w	$r8,$r5,-56
	st.w	$r8,$r12,-56
	ldptr.w	$r9,$r5,-52
	st.w	$r9,$r12,-52
	ldptr.w	$r10,$r5,-48
	st.w	$r10,$r12,-48
	ldptr.w	$r15,$r5,-44
	st.w	$r15,$r12,-44
	ldptr.w	$r11,$r5,-40
	st.w	$r11,$r12,-40
	ldptr.w	$r16,$r5,-36
	st.w	$r16,$r12,-36
	ldptr.w	$r17,$r5,-32
	st.w	$r17,$r12,-32
	ldptr.w	$r18,$r5,-28
	st.w	$r18,$r12,-28
	ldptr.w	$r6,$r5,-24
	st.w	$r6,$r12,-24
	ldptr.w	$r19,$r5,-20
	st.w	$r19,$r12,-20
	ldptr.w	$r13,$r5,-16
	st.w	$r13,$r12,-16
	ldptr.w	$r7,$r5,-12
	st.w	$r7,$r12,-12
	ldptr.w	$r8,$r5,-8
	st.w	$r8,$r12,-8
	ldptr.w	$r9,$r5,-4
	st.w	$r9,$r12,-4
	bgtu	$r14,$r20,.L530
	b	.L525
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
	beqz	$r6,.L563
	addi.w	$r12,$r0,6			# 0x6
	bleu	$r15,$r12,.L567
	srli.d	$r14,$r6,3
	xvreplgr2vr.w	$xr0,$r5
	or	$r7,$r0,$r0
	.align	3
.L565:
	slli.d	$r13,$r7,5
	xvstx	$xr0,$r4,$r13
	addi.d	$r7,$r7,1
	bne	$r14,$r7,.L565
	addi.w	$r8,$r0,-8			# 0xfffffffffffffff8
	and	$r10,$r6,$r8
	andi	$r9,$r6,7
	sub.d	$r15,$r15,$r10
	alsl.d	$r6,$r10,$r4,2
	beqz	$r9,.L578
.L564:
	stptr.w	$r5,$r6,0
	beqz	$r15,.L563
	st.w	$r5,$r6,4
	addi.w	$r11,$r0,1			# 0x1
	beq	$r15,$r11,.L563
	st.w	$r5,$r6,8
	addi.w	$r16,$r0,2			# 0x2
	beq	$r15,$r16,.L563
	st.w	$r5,$r6,12
	addi.w	$r17,$r0,3			# 0x3
	beq	$r15,$r17,.L563
	st.w	$r5,$r6,16
	addi.w	$r18,$r0,4			# 0x4
	beq	$r15,$r18,.L563
	st.w	$r5,$r6,20
	addi.w	$r19,$r0,5			# 0x5
	beq	$r15,$r19,.L563
	st.w	$r5,$r6,24
.L563:
	jr	$r1
	.align	5
.L578:
	jr	$r1
.L567:
	or	$r6,$r4,$r0
	b	.L564
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
	bgeu	$r4,$r5,.L580
	beqz	$r6,.L579
	addi.d	$r19,$r6,-1
	addi.w	$r7,$r0,14			# 0xe
	bleu	$r19,$r7,.L582
	addi.d	$r14,$r6,-2
	add.d	$r13,$r5,$r19
	add.d	$r9,$r4,$r14
	sub.d	$r10,$r13,$r9
	addi.w	$r8,$r0,30			# 0x1e
	addi.d	$r11,$r10,30
	bleu	$r11,$r8,.L582
	add.d	$r16,$r4,$r6
	add.d	$r15,$r5,$r6
	bleu	$r19,$r8,.L599
	srli.d	$r17,$r6,5
	addi.d	$r18,$r6,-32
	sub.d	$r19,$r0,$r17
	or	$r12,$r0,$r0
	add.d	$r20,$r4,$r18
	add.d	$r7,$r5,$r18
	slli.d	$r14,$r19,5
	.align	3
.L584:
	xvldx	$xr2,$r20,$r12
	xvstx	$xr2,$r7,$r12
	addi.d	$r12,$r12,-32
	bne	$r12,$r14,.L584
	andi	$r6,$r6,31
	add.d	$r15,$r15,$r12
	add.d	$r16,$r16,$r12
	or	$r18,$r6,$r0
	beqz	$r6,.L579
	addi.w	$r13,$r0,14			# 0xe
	addi.d	$r8,$r6,-1
	bleu	$r8,$r13,.L586
.L583:
	addi.d	$r9,$r6,-16
	addi.w	$r10,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr3,$r4,$r9
	vstx	$vr3,$r5,$r9
	and	$r17,$r6,$r10
	andi	$r11,$r6,15
	sub.d	$r15,$r15,$r17
	sub.d	$r16,$r16,$r17
	sub.d	$r18,$r18,$r17
	beqz	$r11,.L579
.L586:
	ld.b	$r5,$r16,-1
	addi.w	$r4,$r0,1			# 0x1
	st.b	$r5,$r15,-1
	beq	$r18,$r4,.L579
	ld.b	$r19,$r16,-2
	addi.w	$r20,$r0,2			# 0x2
	st.b	$r19,$r15,-2
	beq	$r18,$r20,.L579
	ld.b	$r7,$r16,-3
	addi.w	$r14,$r0,3			# 0x3
	st.b	$r7,$r15,-3
	beq	$r18,$r14,.L579
	ld.b	$r12,$r16,-4
	addi.w	$r6,$r0,4			# 0x4
	st.b	$r12,$r15,-4
	beq	$r18,$r6,.L579
	ld.b	$r8,$r16,-5
	addi.w	$r13,$r0,5			# 0x5
	st.b	$r8,$r15,-5
	beq	$r18,$r13,.L579
	ld.b	$r9,$r16,-6
	addi.w	$r10,$r0,6			# 0x6
	st.b	$r9,$r15,-6
	beq	$r18,$r10,.L579
	ld.b	$r11,$r16,-7
	addi.w	$r17,$r0,7			# 0x7
	st.b	$r11,$r15,-7
	beq	$r18,$r17,.L579
	ld.b	$r5,$r16,-8
	addi.w	$r4,$r0,8			# 0x8
	st.b	$r5,$r15,-8
	beq	$r18,$r4,.L579
	ld.b	$r19,$r16,-9
	addi.w	$r20,$r0,9			# 0x9
	st.b	$r19,$r15,-9
	beq	$r18,$r20,.L579
	ld.b	$r7,$r16,-10
	addi.w	$r14,$r0,10			# 0xa
	st.b	$r7,$r15,-10
	beq	$r18,$r14,.L579
	ld.b	$r12,$r16,-11
	addi.w	$r6,$r0,11			# 0xb
	st.b	$r12,$r15,-11
	beq	$r18,$r6,.L579
	ld.b	$r8,$r16,-12
	addi.w	$r13,$r0,12			# 0xc
	st.b	$r8,$r15,-12
	beq	$r18,$r13,.L579
	ld.b	$r9,$r16,-13
	addi.w	$r10,$r0,13			# 0xd
	st.b	$r9,$r15,-13
	beq	$r18,$r10,.L579
	ld.b	$r11,$r16,-14
	addi.w	$r17,$r0,14			# 0xe
	st.b	$r11,$r15,-14
	beq	$r18,$r17,.L579
	ld.b	$r16,$r16,-15
	st.b	$r16,$r15,-15
	jr	$r1
	.align	5
.L580:
	bne	$r4,$r5,.L624
.L579:
	jr	$r1
	.align	5
.L624:
	beqz	$r6,.L579
	addi.d	$r13,$r6,-1
	addi.w	$r12,$r0,14			# 0xe
	bleu	$r13,$r12,.L601
	addi.d	$r7,$r4,1
	addi.w	$r14,$r0,30			# 0x1e
	sub.d	$r8,$r5,$r7
	bleu	$r8,$r14,.L601
	bleu	$r13,$r14,.L602
	srli.d	$r10,$r6,5
	or	$r11,$r0,$r0
	slli.d	$r9,$r10,5
	.align	3
.L592:
	xvldx	$xr0,$r4,$r11
	xvstx	$xr0,$r5,$r11
	addi.d	$r11,$r11,32
	bne	$r11,$r9,.L592
	add.d	$r20,$r5,$r9
	add.d	$r15,$r4,$r9
	sub.d	$r12,$r6,$r9
	beq	$r6,$r9,.L579
	addi.w	$r16,$r0,14			# 0xe
	addi.d	$r17,$r12,-1
	or	$r6,$r12,$r0
	bleu	$r17,$r16,.L595
.L591:
	addi.w	$r18,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr1,$r4,$r9
	vstx	$vr1,$r5,$r9
	and	$r4,$r6,$r18
	andi	$r19,$r6,15
	add.d	$r20,$r20,$r4
	add.d	$r15,$r15,$r4
	sub.d	$r12,$r12,$r4
	beqz	$r19,.L579
.L595:
	ld.b	$r5,$r15,0
	addi.w	$r6,$r0,1			# 0x1
	st.b	$r5,$r20,0
	beq	$r12,$r6,.L579
	ld.b	$r7,$r15,1
	addi.w	$r13,$r0,2			# 0x2
	st.b	$r7,$r20,1
	beq	$r12,$r13,.L579
	ld.b	$r14,$r15,2
	addi.w	$r8,$r0,3			# 0x3
	st.b	$r14,$r20,2
	beq	$r12,$r8,.L579
	ld.b	$r9,$r15,3
	addi.w	$r10,$r0,4			# 0x4
	st.b	$r9,$r20,3
	beq	$r12,$r10,.L579
	ld.b	$r11,$r15,4
	addi.w	$r16,$r0,5			# 0x5
	st.b	$r11,$r20,4
	beq	$r12,$r16,.L579
	ld.b	$r17,$r15,5
	addi.w	$r18,$r0,6			# 0x6
	st.b	$r17,$r20,5
	beq	$r12,$r18,.L579
	ld.b	$r19,$r15,6
	addi.w	$r4,$r0,7			# 0x7
	st.b	$r19,$r20,6
	beq	$r12,$r4,.L579
	ld.b	$r5,$r15,7
	addi.w	$r6,$r0,8			# 0x8
	st.b	$r5,$r20,7
	beq	$r12,$r6,.L579
	ld.b	$r7,$r15,8
	addi.w	$r13,$r0,9			# 0x9
	st.b	$r7,$r20,8
	beq	$r12,$r13,.L579
	ld.b	$r14,$r15,9
	addi.w	$r8,$r0,10			# 0xa
	st.b	$r14,$r20,9
	beq	$r12,$r8,.L579
	ld.b	$r9,$r15,10
	addi.w	$r10,$r0,11			# 0xb
	st.b	$r9,$r20,10
	beq	$r12,$r10,.L579
	ld.b	$r11,$r15,11
	addi.w	$r16,$r0,12			# 0xc
	st.b	$r11,$r20,11
	beq	$r12,$r16,.L579
	ld.b	$r17,$r15,12
	addi.w	$r18,$r0,13			# 0xd
	st.b	$r17,$r20,12
	beq	$r12,$r18,.L579
	ld.b	$r19,$r15,13
	addi.w	$r4,$r0,14			# 0xe
	st.b	$r19,$r20,13
	beq	$r12,$r4,.L579
	ld.b	$r15,$r15,14
	st.b	$r15,$r20,14
	jr	$r1
	.align	5
.L582:
	addi.d	$r15,$r4,-1
	addi.d	$r18,$r5,-1
	b	.L588
	.align	5
.L625:
	addi.d	$r19,$r19,-1
.L588:
	ldx.b	$r5,$r15,$r6
	stx.b	$r5,$r18,$r6
	or	$r6,$r19,$r0
	bnez	$r19,.L625
	jr	$r1
	.align	5
.L601:
	or	$r12,$r0,$r0
	.align	3
.L622:
	ldx.b	$r20,$r4,$r12
	stx.b	$r20,$r5,$r12
	addi.d	$r12,$r12,1
	bne	$r6,$r12,.L622
	jr	$r1
.L599:
	or	$r18,$r6,$r0
	b	.L583
.L602:
	or	$r20,$r5,$r0
	or	$r15,$r4,$r0
	or	$r12,$r6,$r0
	or	$r9,$r0,$r0
	b	.L591
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
	andi	$r7,$r12,15
	sll.w	$r6,$r4,$r5
	srl.w	$r4,$r4,$r7
	or	$r8,$r6,$r4
	bstrpick.w	$r4,$r8,15,0
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
	andi	$r7,$r12,15
	srl.w	$r6,$r4,$r5
	sll.w	$r4,$r4,$r7
	or	$r8,$r6,$r4
	bstrpick.w	$r4,$r8,15,0
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
	andi	$r7,$r12,7
	sll.w	$r6,$r4,$r5
	srl.w	$r4,$r4,$r7
	or	$r8,$r6,$r4
	bstrpick.w	$r4,$r8,7,0
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
	andi	$r7,$r12,7
	srl.w	$r6,$r4,$r5
	sll.w	$r4,$r4,$r7
	or	$r8,$r6,$r4
	bstrpick.w	$r4,$r8,7,0
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
	b	.L642
	.align	5
.L640:
	beq	$r13,$r14,.L644
.L642:
	srl.w	$r12,$r4,$r13
	andi	$r5,$r12,1
	addi.w	$r13,$r13,1
	beqz	$r5,.L640
	or	$r4,$r13,$r0
	jr	$r1
	.align	5
.L644:
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
	beqz	$r4,.L648
	andi	$r4,$r4,1
	bnez	$r4,.L646
	addi.w	$r4,$r0,1			# 0x1
	.align	3
.L647:
	srai.d	$r12,$r12,1
	andi	$r13,$r12,1
	addi.w	$r4,$r4,1
	beqz	$r13,.L647
	jr	$r1
	.align	5
.L648:
	or	$r4,$r0,$r0
.L646:
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
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	addi.w	$r4,$r0,1			# 0x1
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L652
	pcalau12i	$r4,%pc_hi20(.LC2)
	fld.s	$f2,$r4,%pc_lo12(.LC2)
	fcmp.sgt.s	$fcc1,$f0,$f2
	movcf2fr	$f0,$fcc1
	movfr2gr.s	$r5,$f0
	slli.w	$r4,$r5,0
.L652:
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
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	addi.w	$r4,$r0,1			# 0x1
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L655
	pcalau12i	$r4,%pc_hi20(.LC6)
	fld.d	$f2,$r4,%pc_lo12(.LC6)
	fcmp.sgt.d	$fcc1,$f0,$f2
	movcf2fr	$f0,$fcc1
	movfr2gr.s	$r5,$f0
	slli.w	$r4,$r5,0
.L655:
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
	la.local	$r12,.LC9
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
	blt	$r4,$r0,.L660
	la.local	$r1,.LC10
	ldptr.d	$r6,$r1,0
	ld.d	$r7,$r1,8
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
.L660:
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
	bcnez	$fcc0,.L665
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc1,$f1,$f0
	bcnez	$fcc1,.L665
	pcalau12i	$r12,%pc_hi20(.LC11)
	fld.s	$f2,$r12,%pc_lo12(.LC11)
	bge	$r4,$r0,.L666
	pcalau12i	$r5,%pc_hi20(.LC12)
	fld.s	$f2,$r5,%pc_lo12(.LC12)
.L666:
	andi	$r6,$r4,1
	beqz	$r6,.L667
	.align	3
.L668:
	fmul.s	$f0,$f0,$f2
.L667:
	srli.w	$r7,$r4,31
	add.w	$r4,$r7,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L665
	srli.w	$r8,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f2,$f2,$f2
	add.w	$r9,$r8,$r4
	bnez	$r13,.L668
.L677:
	srai.d	$r4,$r9,1
	srli.w	$r8,$r4,31
	andi	$r13,$r4,1
	fmul.s	$f2,$f2,$f2
	add.w	$r9,$r8,$r4
	bnez	$r13,.L668
	b	.L677
	.align	5
.L665:
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
	bcnez	$fcc0,.L679
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc1,$f1,$f0
	bcnez	$fcc1,.L679
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f2,$r12,%pc_lo12(.LC13)
	bge	$r4,$r0,.L680
	pcalau12i	$r5,%pc_hi20(.LC14)
	fld.d	$f2,$r5,%pc_lo12(.LC14)
.L680:
	andi	$r6,$r4,1
	beqz	$r6,.L681
	.align	3
.L682:
	fmul.d	$f0,$f0,$f2
.L681:
	srli.w	$r7,$r4,31
	add.w	$r4,$r7,$r4
	srai.d	$r4,$r4,1
	beqz	$r4,.L679
	srli.w	$r8,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f2,$f2,$f2
	add.w	$r9,$r8,$r4
	bnez	$r13,.L682
.L691:
	srai.d	$r4,$r9,1
	srli.w	$r8,$r4,31
	andi	$r13,$r4,1
	fmul.d	$f2,$f2,$f2
	add.w	$r9,$r8,$r4
	bnez	$r13,.L682
	b	.L691
	.align	5
.L679:
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
	bnez	$r4,.L693
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	bl	%plt(__addtf3)
	or	$r6,$r25,$r0
	or	$r7,$r24,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L693
	blt	$r23,$r0,.L708
	la.local	$r12,.LC15
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
.L695:
	andi	$r4,$r23,1
	beqz	$r4,.L696
	.align	3
.L697:
	or	$r4,$r25,$r0
	or	$r5,$r24,$r0
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	bl	%plt(__multf3)
	ld.d	$r6,$r3,8
	ldptr.d	$r7,$r3,0
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
.L696:
	srli.w	$r5,$r23,31
	add.w	$r23,$r5,$r23
	srai.d	$r23,$r23,1
	beqz	$r23,.L693
.L698:
	or	$r4,$r6,$r0
	or	$r5,$r7,$r0
	bl	%plt(__multf3)
	srli.w	$r8,$r23,31
	andi	$r13,$r23,1
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	add.w	$r9,$r8,$r23
	bnez	$r13,.L697
	srai.d	$r23,$r9,1
	b	.L698
	.align	5
.L693:
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
.L708:
	.cfi_restore_state
	la.local	$r1,.LC16
	ldptr.d	$r6,$r1,0
	ld.d	$r7,$r1,8
	b	.L695
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
	beqz	$r6,.L710
	addi.d	$r12,$r6,-1
	addi.w	$r13,$r0,126			# 0x7e
	bleu	$r12,$r13,.L717
	srli.d	$r7,$r6,7
	slli.d	$r14,$r7,7
	or	$r8,$r5,$r0
	or	$r9,$r4,$r0
	add.d	$r15,$r5,$r14
	.align	3
.L712:
	xvld	$xr7,$r9,32
	xvld	$xr6,$r9,64
	xvld	$xr5,$r9,96
	xvld	$xr4,$r9,0
	xvld	$xr3,$r8,32
	xvld	$xr1,$r8,64
	xvld	$xr0,$r8,96
	xvld	$xr2,$r8,0
	xvxor.v	$xr8,$xr3,$xr7
	xvxor.v	$xr9,$xr1,$xr6
	xvxor.v	$xr10,$xr0,$xr5
	xvxor.v	$xr11,$xr2,$xr4
	xvst	$xr8,$r9,32
	xvst	$xr11,$r9,0
	xvst	$xr9,$r9,64
	xvst	$xr10,$r9,96
	addi.d	$r8,$r8,128
	addi.d	$r9,$r9,128
	bne	$r15,$r8,.L712
	sub.d	$r16,$r6,$r14
	add.d	$r12,$r4,$r14
	or	$r13,$r16,$r0
	beq	$r6,$r14,.L725
.L711:
	addi.d	$r17,$r16,-1
	addi.w	$r18,$r0,14			# 0xe
	bleu	$r17,$r18,.L714
	vldx	$vr12,$r4,$r14
	vldx	$vr13,$r5,$r14
	srli.d	$r6,$r16,4
	vxor.v	$vr14,$vr13,$vr12
	addi.w	$r10,$r0,1			# 0x1
	vstx	$vr14,$r4,$r14
	add.d	$r5,$r5,$r14
	add.d	$r11,$r4,$r14
	beq	$r6,$r10,.L715
	vld	$vr15,$r11,16
	vld	$vr16,$r5,16
	addi.w	$r19,$r0,2			# 0x2
	vxor.v	$vr17,$vr16,$vr15
	vst	$vr17,$r11,16
	beq	$r6,$r19,.L715
	vld	$vr18,$r11,32
	vld	$vr19,$r5,32
	addi.w	$r20,$r0,3			# 0x3
	vxor.v	$vr20,$vr19,$vr18
	vst	$vr20,$r11,32
	beq	$r6,$r20,.L715
	vld	$vr21,$r11,48
	vld	$vr22,$r5,48
	addi.w	$r14,$r0,4			# 0x4
	vxor.v	$vr23,$vr22,$vr21
	vst	$vr23,$r11,48
	beq	$r6,$r14,.L715
	vld	$vr7,$r11,64
	vld	$vr6,$r5,64
	addi.w	$r7,$r0,5			# 0x5
	vxor.v	$vr5,$vr6,$vr7
	vst	$vr5,$r11,64
	beq	$r6,$r7,.L715
	vld	$vr4,$r11,80
	vld	$vr3,$r5,80
	addi.w	$r8,$r0,6			# 0x6
	vxor.v	$vr1,$vr3,$vr4
	vst	$vr1,$r11,80
	beq	$r6,$r8,.L715
	vld	$vr2,$r11,96
	vld	$vr0,$r5,96
	vxor.v	$vr8,$vr0,$vr2
	vst	$vr8,$r11,96
.L715:
	addi.w	$r9,$r0,-16			# 0xfffffffffffffff0
	andi	$r17,$r16,15
	and	$r16,$r16,$r9
	add.d	$r12,$r12,$r16
	add.d	$r15,$r15,$r16
	sub.d	$r13,$r13,$r16
	beqz	$r17,.L710
.L714:
	ld.bu	$r18,$r12,0
	ld.bu	$r6,$r15,0
	addi.w	$r10,$r0,1			# 0x1
	xor	$r5,$r18,$r6
	st.b	$r5,$r12,0
	beq	$r13,$r10,.L710
	ld.bu	$r11,$r12,1
	ld.bu	$r19,$r15,1
	addi.w	$r20,$r0,2			# 0x2
	xor	$r14,$r19,$r11
	st.b	$r14,$r12,1
	beq	$r13,$r20,.L710
	ld.bu	$r7,$r12,2
	ld.bu	$r8,$r15,2
	addi.w	$r9,$r0,3			# 0x3
	xor	$r17,$r8,$r7
	st.b	$r17,$r12,2
	beq	$r13,$r9,.L710
	ld.bu	$r18,$r12,3
	ld.bu	$r6,$r15,3
	addi.w	$r16,$r0,4			# 0x4
	xor	$r10,$r6,$r18
	st.b	$r10,$r12,3
	beq	$r13,$r16,.L710
	ld.bu	$r5,$r12,4
	ld.bu	$r11,$r15,4
	addi.w	$r19,$r0,5			# 0x5
	xor	$r20,$r11,$r5
	st.b	$r20,$r12,4
	beq	$r13,$r19,.L710
	ld.bu	$r7,$r12,5
	ld.bu	$r14,$r15,5
	addi.w	$r8,$r0,6			# 0x6
	xor	$r9,$r14,$r7
	st.b	$r9,$r12,5
	beq	$r13,$r8,.L710
	ld.bu	$r17,$r12,6
	ld.bu	$r18,$r15,6
	addi.w	$r6,$r0,7			# 0x7
	xor	$r16,$r18,$r17
	st.b	$r16,$r12,6
	beq	$r13,$r6,.L710
	ld.bu	$r10,$r12,7
	ld.bu	$r5,$r15,7
	addi.w	$r11,$r0,8			# 0x8
	xor	$r19,$r5,$r10
	st.b	$r19,$r12,7
	beq	$r13,$r11,.L710
	ld.bu	$r20,$r12,8
	ld.bu	$r7,$r15,8
	addi.w	$r8,$r0,9			# 0x9
	xor	$r14,$r7,$r20
	st.b	$r14,$r12,8
	beq	$r13,$r8,.L710
	ld.bu	$r9,$r12,9
	ld.bu	$r17,$r15,9
	addi.w	$r18,$r0,10			# 0xa
	xor	$r6,$r17,$r9
	st.b	$r6,$r12,9
	beq	$r13,$r18,.L710
	ld.bu	$r10,$r12,10
	ld.bu	$r5,$r15,10
	addi.w	$r16,$r0,11			# 0xb
	xor	$r11,$r5,$r10
	st.b	$r11,$r12,10
	beq	$r13,$r16,.L710
	ld.bu	$r19,$r12,11
	ld.bu	$r20,$r15,11
	addi.w	$r7,$r0,12			# 0xc
	xor	$r8,$r20,$r19
	st.b	$r8,$r12,11
	beq	$r13,$r7,.L710
	ld.bu	$r9,$r12,12
	ld.bu	$r14,$r15,12
	addi.w	$r17,$r0,13			# 0xd
	xor	$r18,$r14,$r9
	st.b	$r18,$r12,12
	beq	$r13,$r17,.L710
	ld.bu	$r6,$r12,13
	ld.bu	$r10,$r15,13
	addi.w	$r5,$r0,14			# 0xe
	xor	$r16,$r10,$r6
	st.b	$r16,$r12,13
	beq	$r13,$r5,.L710
	ld.bu	$r11,$r12,14
	ld.bu	$r15,$r15,14
	xor	$r13,$r15,$r11
	st.b	$r13,$r12,14
.L710:
	jr	$r1
.L717:
	or	$r13,$r6,$r0
	or	$r12,$r4,$r0
	or	$r15,$r5,$r0
	or	$r14,$r0,$r0
	or	$r16,$r6,$r0
	b	.L711
.L725:
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
	beqz	$r13,.L731
	.align	3
.L728:
	ld.bu	$r7,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r7,.L728
	.align	3
.L731:
	beqz	$r6,.L730
	ld.b	$r8,$r5,0
	addi.d	$r12,$r12,1
	addi.d	$r6,$r6,-1
	st.b	$r8,$r12,-1
	addi.d	$r5,$r5,1
	bnez	$r8,.L731
	jr	$r1
	.align	5
.L730:
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
	beqz	$r5,.L742
.L743:
	ldx.bu	$r13,$r4,$r12
	bnez	$r13,.L745
.L742:
	or	$r4,$r12,$r0
	jr	$r1
	.align	5
.L745:
	addi.d	$r12,$r12,1
	bne	$r5,$r12,.L743
	b	.L742
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
	beqz	$r14,.L755
.L751:
	or	$r12,$r5,$r0
	b	.L754
	.align	5
.L753:
	beq	$r13,$r14,.L752
.L754:
	ld.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bnez	$r13,.L753
	ld.b	$r14,$r4,1
	addi.d	$r4,$r4,1
	bnez	$r14,.L751
.L755:
	or	$r4,$r0,$r0
.L752:
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
.L760:
	ld.b	$r13,$r12,0
	sub.d	$r14,$r13,$r5
	masknez	$r15,$r12,$r14
	maskeqz	$r4,$r4,$r14
	or	$r4,$r15,$r4
	addi.d	$r12,$r12,1
	bnez	$r13,.L760
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
	beqz	$r17,.L773
	or	$r12,$r5,$r0
	.align	3
.L764:
	ld.bu	$r14,$r12,1
	addi.d	$r12,$r12,1
	bnez	$r14,.L764
	sub.d	$r19,$r12,$r5
	or	$r4,$r13,$r0
	bstrpick.w	$r20,$r17,7,0
	addi.d	$r7,$r19,-1
	bne	$r12,$r5,.L783
	jr	$r1
	.align	5
.L785:
	addi.d	$r13,$r13,1
	beqz	$r4,.L784
.L783:
	ld.b	$r4,$r13,0
	bne	$r4,$r17,.L785
	or	$r15,$r20,$r0
	add.d	$r18,$r13,$r7
	or	$r8,$r5,$r0
	or	$r6,$r13,$r0
	b	.L766
	.align	5
.L786:
	beq	$r6,$r18,.L767
	addi.d	$r6,$r6,1
	bne	$r16,$r15,.L767
	ld.bu	$r15,$r6,0
	addi.d	$r8,$r8,1
	beqz	$r15,.L767
.L766:
	ld.bu	$r16,$r8,0
	bnez	$r16,.L786
.L767:
	ld.bu	$r9,$r8,0
	beq	$r9,$r15,.L773
	addi.d	$r13,$r13,1
	b	.L783
	.align	5
.L784:
	or	$r4,$r0,$r0
	jr	$r1
.L773:
	or	$r4,$r13,$r0
.L762:
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
	bcnez	$fcc0,.L797
	fcmp.sgt.d	$fcc1,$f0,$f2
	bceqz	$fcc1,.L791
	fcmp.slt.d	$fcc2,$f1,$f2
	bcnez	$fcc2,.L790
.L791:
	jr	$r1
	.align	5
.L797:
	fcmp.sgt.d	$fcc3,$f1,$f2
	bceqz	$fcc3,.L791
.L790:
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
	beqz	$r7,.L805
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L798
	sub.d	$r5,$r5,$r7
	add.d	$r15,$r12,$r5
	bgtu	$r12,$r15,.L798
	ld.b	$r18,$r6,0
	or	$r4,$r12,$r0
	addi.w	$r19,$r0,1			# 0x1
	bstrpick.w	$r17,$r18,7,0
	.align	3
.L804:
	ld.bu	$r8,$r4,0
	addi.d	$r16,$r4,1
	beq	$r8,$r17,.L814
	or	$r4,$r16,$r0
.L800:
	bgeu	$r15,$r4,.L804
.L809:
	or	$r4,$r0,$r0
.L798:
	jr	$r1
	.align	5
.L814:
	beq	$r7,$r19,.L798
.L803:
	addi.w	$r9,$r0,1			# 0x1
	b	.L801
	.align	5
.L802:
	beq	$r7,$r9,.L798
.L801:
	ldx.bu	$r14,$r4,$r9
	ldx.bu	$r13,$r6,$r9
	addi.d	$r9,$r9,1
	beq	$r14,$r13,.L802
	bltu	$r15,$r16,.L809
	ld.b	$r10,$r16,0
	addi.d	$r4,$r16,1
	bne	$r18,$r10,.L800
	or	$r11,$r16,$r0
	or	$r16,$r4,$r0
	or	$r4,$r11,$r0
	b	.L803
	.align	5
.L805:
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
	beqz	$r6,.L816
	bl	%plt(memmove)
.L816:
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
	movgr2fr.d	$f2,$r0
	fcmp.slt.d	$fcc0,$f0,$f2
	bcnez	$fcc0,.L844
	pcalau12i	$r12,%pc_hi20(.LC19)
	fld.d	$f6,$r12,%pc_lo12(.LC19)
	or	$r14,$r0,$r0
	fcmp.sge.d	$fcc1,$f0,$f6
	bceqz	$fcc1,.L845
.L824:
	pcalau12i	$r13,%pc_hi20(.LC14)
	fld.d	$f7,$r13,%pc_lo12(.LC14)
	or	$r9,$r0,$r0
	.align	3
.L830:
	fmul.d	$f0,$f0,$f7
	addi.w	$r9,$r9,1
	fcmp.sge.d	$fcc7,$f0,$f6
	bcnez	$fcc7,.L830
	stptr.w	$r9,$r4,0
	beqz	$r14,.L821
.L847:
	fneg.d	$f0,$f0
.L821:
	jr	$r1
	.align	5
.L845:
	pcalau12i	$r5,%pc_hi20(.LC14)
	fld.d	$f1,$r5,%pc_lo12(.LC14)
	fcmp.slt.d	$fcc2,$f0,$f1
	bceqz	$fcc2,.L827
	fcmp.cune.d	$fcc3,$f0,$f2
	bcnez	$fcc3,.L836
.L827:
	stptr.w	$r0,$r4,0
	jr	$r1
	.align	5
.L844:
	pcalau12i	$r6,%pc_hi20(.LC17)
	fld.d	$f4,$r6,%pc_lo12(.LC17)
	fneg.d	$f3,$f0
	fcmp.sle.d	$fcc4,$f0,$f4
	bceqz	$fcc4,.L846
	pcalau12i	$r10,%pc_hi20(.LC19)
	fld.d	$f6,$r10,%pc_lo12(.LC19)
	fmov.d	$f0,$f3
	addi.w	$r14,$r0,1			# 0x1
	b	.L824
	.align	5
.L846:
	pcalau12i	$r7,%pc_hi20(.LC18)
	fld.d	$f5,$r7,%pc_lo12(.LC18)
	fcmp.sgt.d	$fcc5,$f0,$f5
	bceqz	$fcc5,.L827
	pcalau12i	$r8,%pc_hi20(.LC14)
	fld.d	$f1,$r8,%pc_lo12(.LC14)
	addi.w	$r14,$r0,1			# 0x1
.L825:
	fmov.d	$f0,$f3
	or	$r9,$r0,$r0
	.align	3
.L832:
	fadd.d	$f0,$f0,$f0
	addi.w	$r9,$r9,-1
	fcmp.slt.d	$fcc6,$f0,$f1
	bcnez	$fcc6,.L832
	stptr.w	$r9,$r4,0
	bnez	$r14,.L847
	jr	$r1
.L836:
	fmov.d	$f3,$f0
	b	.L825
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
	beqz	$r13,.L851
	.align	3
.L850:
	andi	$r12,$r13,1
	sub.d	$r6,$r0,$r12
	and	$r7,$r6,$r5
	srli.d	$r13,$r13,1
	add.d	$r4,$r4,$r7
	slli.d	$r5,$r5,1
	bnez	$r13,.L850
	jr	$r1
	.align	5
.L851:
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
	addi.w	$r9,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bltu	$r5,$r4,.L854
	b	.L873
	.align	5
.L858:
	slli.w	$r5,$r15,0
	slli.w	$r14,$r11,0
	bleu	$r4,$r5,.L856
	beqz	$r9,.L857
.L854:
	slli.w	$r15,$r5,1
	slli.w	$r11,$r14,1
	addi.w	$r9,$r9,-1
	bge	$r5,$r0,.L858
.L859:
	or	$r9,$r0,$r0
	.align	3
.L860:
	sltu	$r17,$r4,$r5
	xori	$r18,$r17,1
	sub.w	$r16,$r4,$r5
	bstrpick.w	$r19,$r18,7,0
	masknez	$r20,$r4,$r19
	maskeqz	$r13,$r14,$r19
	maskeqz	$r12,$r16,$r19
	or	$r7,$r12,$r20
	or	$r8,$r9,$r13
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r5,$r5,31,1
	slli.w	$r4,$r7,0
	slli.w	$r9,$r8,0
	bnez	$r14,.L860
.L857:
	masknez	$r5,$r9,$r6
	maskeqz	$r6,$r4,$r6
	or	$r4,$r5,$r6
	jr	$r1
	.align	5
.L856:
	bnez	$r14,.L859
	or	$r9,$r0,$r0
	b	.L857
	.align	5
.L873:
	sltu	$r13,$r4,$r5
	sub.w	$r12,$r4,$r5
	xori	$r5,$r13,1
	bstrpick.w	$r7,$r5,7,0
	masknez	$r4,$r4,$r7
	maskeqz	$r8,$r12,$r7
	or	$r10,$r8,$r4
	slli.w	$r9,$r7,0
	slli.w	$r4,$r10,0
	b	.L857
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
	ext.w.b	$r5,$r13
	xor	$r12,$r4,$r5
	slli.w	$r6,$r12,8
	clz.w	$r8,$r6
	addi.w	$r14,$r0,7			# 0x7
	addi.w	$r9,$r8,-1
	masknez	$r7,$r14,$r12
	maskeqz	$r10,$r9,$r12
	or	$r4,$r10,$r7
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
	xor	$r5,$r12,$r4
	clz.d	$r14,$r5
	addi.w	$r13,$r0,63			# 0x3f
	addi.w	$r6,$r14,-1
	masknez	$r4,$r13,$r5
	maskeqz	$r7,$r6,$r5
	or	$r4,$r7,$r4
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
	beqz	$r13,.L884
	.align	3
.L883:
	andi	$r12,$r13,1
	sub.w	$r6,$r0,$r12
	and	$r7,$r5,$r6
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r7,$r4
	bnez	$r13,.L883
	jr	$r1
	.align	5
.L884:
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
	addi.w	$r13,$r0,-8			# 0xfffffffffffffff8
	srli.w	$r14,$r6,3
	bstrpick.d	$r16,$r6,31,3
	and	$r13,$r6,$r13
	bltu	$r4,$r5,.L891
	bstrpick.d	$r12,$r6,31,0
	add.d	$r7,$r5,$r12
	bleu	$r4,$r7,.L986
.L891:
	beqz	$r16,.L987
	addi.w	$r18,$r14,-1
	addi.w	$r17,$r0,8			# 0x8
	bleu	$r18,$r17,.L893
	addi.d	$r9,$r5,8
	addi.w	$r15,$r0,16			# 0x10
	sub.d	$r20,$r4,$r9
	bleu	$r20,$r15,.L894
	bstrpick.d	$r7,$r6,31,5
	srli.w	$r8,$r6,5
	or	$r12,$r0,$r0
	slli.d	$r14,$r7,5
	.align	3
.L895:
	xvldx	$xr2,$r5,$r12
	xvstx	$xr2,$r4,$r12
	addi.d	$r12,$r12,32
	bne	$r12,$r14,.L895
	slli.w	$r10,$r8,2
	beq	$r16,$r10,.L900
	bstrpick.d	$r18,$r10,31,0
	slli.d	$r9,$r18,3
	ldx.d	$r17,$r5,$r9
	addi.w	$r19,$r10,1
	stx.d	$r17,$r4,$r9
	bleu	$r16,$r19,.L900
	bstrpick.d	$r15,$r19,31,0
	alsl.d	$r15,$r15,$r0,3
	ldx.d	$r7,$r5,$r15
	addi.w	$r20,$r10,2
	stx.d	$r7,$r4,$r15
	bleu	$r16,$r20,.L900
	bstrpick.d	$r16,$r20,31,0
	slli.d	$r8,$r16,3
	ldx.d	$r14,$r5,$r8
	stx.d	$r14,$r4,$r8
.L900:
	bleu	$r6,$r13,.L886
	sub.w	$r17,$r6,$r13
	addi.w	$r16,$r0,14			# 0xe
	addi.w	$r7,$r17,-1
	slli.w	$r8,$r17,0
	bstrpick.d	$r14,$r13,31,0
	bleu	$r7,$r16,.L889
	addi.d	$r12,$r14,1
	add.d	$r11,$r4,$r14
	add.d	$r9,$r5,$r12
	addi.w	$r10,$r0,30			# 0x1e
	sub.d	$r20,$r11,$r9
	bleu	$r20,$r10,.L889
	bleu	$r7,$r10,.L918
	bstrpick.d	$r15,$r17,31,5
	add.d	$r18,$r5,$r14
	or	$r7,$r0,$r0
	slli.d	$r16,$r15,5
	.align	3
.L902:
	xvldx	$xr3,$r18,$r7
	xvstx	$xr3,$r11,$r7
	addi.d	$r7,$r7,32
	bne	$r7,$r16,.L902
	addi.w	$r8,$r0,-32			# 0xffffffffffffffe0
	and	$r12,$r8,$r17
	andi	$r10,$r17,31
	slli.w	$r19,$r12,0
	add.w	$r13,$r12,$r13
	beqz	$r10,.L886
	sub.w	$r8,$r17,$r19
	addi.w	$r9,$r0,14			# 0xe
	addi.w	$r20,$r8,-1
	bleu	$r20,$r9,.L904
.L901:
	bstrpick.d	$r19,$r19,31,0
	add.d	$r14,$r19,$r14
	addi.w	$r15,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr4,$r5,$r14
	vstx	$vr4,$r4,$r14
	and	$r16,$r8,$r15
	andi	$r18,$r8,15
	add.w	$r13,$r16,$r13
	beqz	$r18,.L886
.L904:
	bstrpick.d	$r7,$r13,31,0
	ldx.b	$r10,$r5,$r7
	addi.w	$r8,$r13,1
	stx.b	$r10,$r4,$r7
	bleu	$r6,$r8,.L886
	bstrpick.d	$r12,$r8,31,0
	ldx.b	$r17,$r5,$r12
	addi.w	$r11,$r13,2
	stx.b	$r17,$r4,$r12
	bgeu	$r11,$r6,.L886
	bstrpick.d	$r9,$r11,31,0
	ldx.b	$r19,$r5,$r9
	addi.w	$r20,$r13,3
	stx.b	$r19,$r4,$r9
	bleu	$r6,$r20,.L886
	bstrpick.d	$r18,$r20,31,0
	ldx.b	$r15,$r5,$r18
	addi.w	$r14,$r13,4
	stx.b	$r15,$r4,$r18
	bleu	$r6,$r14,.L886
	bstrpick.d	$r16,$r14,31,0
	ldx.b	$r8,$r5,$r16
	addi.w	$r7,$r13,5
	stx.b	$r8,$r4,$r16
	bleu	$r6,$r7,.L886
	bstrpick.d	$r10,$r7,31,0
	ldx.b	$r11,$r5,$r10
	addi.w	$r12,$r13,6
	stx.b	$r11,$r4,$r10
	bleu	$r6,$r12,.L886
	bstrpick.d	$r17,$r12,31,0
	ldx.b	$r20,$r5,$r17
	addi.w	$r9,$r13,7
	stx.b	$r20,$r4,$r17
	bleu	$r6,$r9,.L886
	bstrpick.d	$r19,$r9,31,0
	ldx.b	$r14,$r5,$r19
	addi.w	$r18,$r13,8
	stx.b	$r14,$r4,$r19
	bleu	$r6,$r18,.L886
	bstrpick.d	$r16,$r18,31,0
	ldx.b	$r15,$r5,$r16
	addi.w	$r7,$r13,9
	stx.b	$r15,$r4,$r16
	bleu	$r6,$r7,.L886
	bstrpick.d	$r8,$r7,31,0
	ldx.b	$r12,$r5,$r8
	addi.w	$r10,$r13,10
	stx.b	$r12,$r4,$r8
	bleu	$r6,$r10,.L886
	bstrpick.d	$r11,$r10,31,0
	ldx.b	$r9,$r5,$r11
	addi.w	$r17,$r13,11
	stx.b	$r9,$r4,$r11
	bleu	$r6,$r17,.L886
	bstrpick.d	$r20,$r17,31,0
	ldx.b	$r18,$r5,$r20
	addi.w	$r19,$r13,12
	stx.b	$r18,$r4,$r20
	bleu	$r6,$r19,.L886
	bstrpick.d	$r14,$r19,31,0
	ldx.b	$r7,$r5,$r14
	addi.w	$r16,$r13,13
	stx.b	$r7,$r4,$r14
	bleu	$r6,$r16,.L886
	bstrpick.d	$r15,$r16,31,0
	ldx.b	$r8,$r5,$r15
	addi.w	$r13,$r13,14
	stx.b	$r8,$r4,$r15
	bleu	$r6,$r13,.L886
	bstrpick.d	$r6,$r13,31,0
	ldx.b	$r5,$r5,$r6
	stx.b	$r5,$r4,$r6
	jr	$r1
	.align	5
.L986:
	addi.w	$r17,$r6,-1
	or	$r12,$r17,$r0
	beqz	$r6,.L988
	addi.w	$r8,$r0,14			# 0xe
	bgtu	$r17,$r8,.L985
	bstrpick.d	$r9,$r17,31,0
.L908:
	or	$r11,$r9,$r0
	addi.w	$r8,$r0,-1			# 0xffffffffffffffff
	.align	3
.L915:
	ldx.b	$r10,$r5,$r11
	stx.b	$r10,$r4,$r11
	addi.d	$r11,$r11,-1
	bne	$r11,$r8,.L915
.L886:
	jr	$r1
	.align	5
.L985:
	bstrpick.d	$r9,$r17,31,0
	addi.d	$r15,$r9,-1
	add.d	$r11,$r4,$r9
	add.d	$r18,$r5,$r15
	sub.d	$r19,$r11,$r18
	addi.w	$r10,$r0,30			# 0x1e
	addi.d	$r20,$r19,30
	bleu	$r20,$r10,.L908
	bleu	$r17,$r10,.L919
	bstrpick.d	$r13,$r6,31,5
	addi.d	$r7,$r9,-31
	sub.d	$r8,$r0,$r13
	or	$r12,$r0,$r0
	add.d	$r16,$r5,$r7
	add.d	$r10,$r4,$r7
	slli.d	$r15,$r8,5
	.align	3
.L910:
	xvldx	$xr0,$r16,$r12
	xvstx	$xr0,$r10,$r12
	addi.d	$r12,$r12,-32
	bne	$r12,$r15,.L910
	addi.w	$r11,$r0,-32			# 0xffffffffffffffe0
	and	$r14,$r6,$r11
	andi	$r18,$r6,31
	sub.w	$r12,$r17,$r14
	beqz	$r18,.L886
	sub.w	$r6,$r6,$r14
	addi.w	$r17,$r0,14			# 0xe
	addi.w	$r19,$r6,-1
	bleu	$r19,$r17,.L913
.L909:
	bstrpick.d	$r20,$r14,31,0
	addi.d	$r9,$r9,-15
	sub.d	$r13,$r9,$r20
	addi.w	$r14,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr1,$r5,$r13
	vstx	$vr1,$r4,$r13
	andi	$r7,$r6,15
	and	$r6,$r6,$r14
	sub.w	$r12,$r12,$r6
	beqz	$r7,.L886
.L913:
	bstrpick.d	$r8,$r12,31,0
	ldx.b	$r16,$r5,$r8
	addi.w	$r10,$r12,-1
	stx.b	$r16,$r4,$r8
	beqz	$r12,.L886
	bstrpick.d	$r11,$r10,31,0
	ldx.b	$r18,$r5,$r11
	addi.w	$r15,$r12,-2
	stx.b	$r18,$r4,$r11
	beqz	$r10,.L886
	bstrpick.d	$r17,$r15,31,0
	ldx.b	$r9,$r5,$r17
	addi.w	$r19,$r12,-3
	stx.b	$r9,$r4,$r17
	beqz	$r15,.L886
	bstrpick.d	$r20,$r19,31,0
	ldx.b	$r14,$r5,$r20
	addi.w	$r7,$r12,-4
	stx.b	$r14,$r4,$r20
	beqz	$r19,.L886
	bstrpick.d	$r13,$r7,31,0
	ldx.b	$r8,$r5,$r13
	addi.w	$r6,$r12,-5
	stx.b	$r8,$r4,$r13
	beqz	$r7,.L886
	bstrpick.d	$r10,$r6,31,0
	ldx.b	$r16,$r5,$r10
	addi.w	$r11,$r12,-6
	stx.b	$r16,$r4,$r10
	beqz	$r6,.L886
	bstrpick.d	$r15,$r11,31,0
	ldx.b	$r17,$r5,$r15
	addi.w	$r18,$r12,-7
	stx.b	$r17,$r4,$r15
	beqz	$r11,.L886
	bstrpick.d	$r19,$r18,31,0
	ldx.b	$r20,$r5,$r19
	addi.w	$r9,$r12,-8
	stx.b	$r20,$r4,$r19
	beqz	$r18,.L886
	bstrpick.d	$r7,$r9,31,0
	ldx.b	$r13,$r5,$r7
	addi.w	$r14,$r12,-9
	stx.b	$r13,$r4,$r7
	beqz	$r9,.L886
	bstrpick.d	$r6,$r14,31,0
	ldx.b	$r10,$r5,$r6
	addi.w	$r8,$r12,-10
	stx.b	$r10,$r4,$r6
	beqz	$r14,.L886
	bstrpick.d	$r11,$r8,31,0
	ldx.b	$r16,$r5,$r11
	addi.w	$r18,$r12,-11
	stx.b	$r16,$r4,$r11
	beqz	$r8,.L886
	bstrpick.d	$r17,$r18,31,0
	ldx.b	$r19,$r5,$r17
	addi.w	$r15,$r12,-12
	stx.b	$r19,$r4,$r17
	beqz	$r18,.L886
	bstrpick.d	$r9,$r15,31,0
	ldx.b	$r7,$r5,$r9
	addi.w	$r20,$r12,-13
	stx.b	$r7,$r4,$r9
	beqz	$r15,.L886
	bstrpick.d	$r14,$r20,31,0
	ldx.b	$r13,$r5,$r14
	addi.w	$r12,$r12,-14
	stx.b	$r13,$r4,$r14
	beqz	$r20,.L886
	bstrpick.d	$r6,$r12,31,0
	ldx.b	$r5,$r5,$r6
	stx.b	$r5,$r4,$r6
	jr	$r1
.L918:
	or	$r19,$r0,$r0
	b	.L901
	.align	5
.L987:
	bstrpick.d	$r14,$r13,31,0
	beqz	$r6,.L989
.L889:
	or	$r12,$r14,$r0
	.align	3
.L906:
	ldx.b	$r10,$r5,$r12
	stx.b	$r10,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r11,$r12,0
	bgtu	$r6,$r11,.L906
	jr	$r1
	.align	5
.L893:
	addi.w	$r19,$r0,9			# 0x9
	or	$r15,$r0,$r0
	bne	$r16,$r19,.L897
.L894:
	addi.w	$r10,$r14,-9
	addi.w	$r11,$r0,-8			# 0xfffffffffffffff8
	and	$r18,$r10,$r11
	addi.d	$r12,$r5,200
	or	$r7,$r4,$r0
	or	$r17,$r0,$r0
	addi.w	$r15,$r18,8
	.align	3
.L898:
	ld.d	$r9,$r12,-200
	addi.d	$r7,$r7,64
	preld	0,$r12,0
	addi.d	$r12,$r12,64
	st.d	$r9,$r7,-64
	ld.d	$r20,$r12,-256
	or	$r19,$r17,$r0
	addi.w	$r17,$r17,8
	st.d	$r20,$r7,-56
	ld.d	$r8,$r12,-248
	st.d	$r8,$r7,-48
	ld.d	$r14,$r12,-240
	st.d	$r14,$r7,-40
	ld.d	$r10,$r12,-232
	st.d	$r10,$r7,-32
	ld.d	$r11,$r12,-224
	st.d	$r11,$r7,-24
	ld.d	$r9,$r12,-216
	st.d	$r9,$r7,-16
	ld.d	$r20,$r12,-208
	st.d	$r20,$r7,-8
	bne	$r19,$r18,.L898
.L897:
	bstrpick.d	$r19,$r15,31,0
	alsl.d	$r19,$r19,$r0,3
	.align	3
.L899:
	ldx.d	$r18,$r5,$r19
	addi.w	$r15,$r15,1
	stx.d	$r18,$r4,$r19
	addi.d	$r19,$r19,8
	bgtu	$r16,$r15,.L899
	b	.L900
.L989:
	jr	$r1
.L988:
	jr	$r1
.L919:
	or	$r14,$r0,$r0
	b	.L909
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
	bstrpick.d	$r15,$r6,31,1
	bltu	$r4,$r5,.L994
	bstrpick.d	$r12,$r6,31,0
	add.d	$r7,$r5,$r12
	bleu	$r4,$r7,.L1076
.L994:
	beqz	$r15,.L993
	addi.w	$r11,$r13,-1
	addi.w	$r16,$r0,6			# 0x6
	bleu	$r11,$r16,.L997
	addi.d	$r14,$r5,2
	addi.w	$r17,$r0,28			# 0x1c
	sub.d	$r18,$r4,$r14
	bleu	$r18,$r17,.L997
	addi.w	$r9,$r0,14			# 0xe
	bleu	$r11,$r9,.L1014
	bstrpick.d	$r20,$r6,31,5
	srli.w	$r7,$r6,5
	or	$r10,$r0,$r0
	slli.d	$r8,$r20,5
	.align	3
.L999:
	xvldx	$xr2,$r5,$r10
	xvstx	$xr2,$r4,$r10
	addi.d	$r10,$r10,32
	bne	$r8,$r10,.L999
	slli.w	$r12,$r7,4
	beq	$r15,$r12,.L993
	sub.w	$r19,$r13,$r12
	addi.w	$r16,$r19,-1
	addi.w	$r13,$r0,6			# 0x6
	bleu	$r16,$r13,.L1001
.L998:
	bstrpick.d	$r14,$r12,31,0
	alsl.d	$r14,$r14,$r0,1
	addi.w	$r17,$r0,-8			# 0xfffffffffffffff8
	vldx	$vr3,$r5,$r14
	vstx	$vr3,$r4,$r14
	and	$r9,$r19,$r17
	andi	$r18,$r19,7
	add.w	$r12,$r9,$r12
	beqz	$r18,.L993
.L1001:
	bstrpick.d	$r19,$r12,31,0
	alsl.d	$r19,$r19,$r0,1
	ldx.h	$r7,$r5,$r19
	addi.w	$r20,$r12,1
	stx.h	$r7,$r4,$r19
	bleu	$r15,$r20,.L993
	bstrpick.d	$r8,$r20,31,0
	alsl.d	$r8,$r8,$r0,1
	ldx.h	$r11,$r5,$r8
	addi.w	$r10,$r12,2
	stx.h	$r11,$r4,$r8
	bgeu	$r10,$r15,.L993
	bstrpick.d	$r14,$r10,31,0
	alsl.d	$r14,$r14,$r0,1
	ldx.h	$r16,$r5,$r14
	addi.w	$r13,$r12,3
	stx.h	$r16,$r4,$r14
	bleu	$r15,$r13,.L993
	bstrpick.d	$r17,$r13,31,0
	alsl.d	$r17,$r17,$r0,1
	ldx.h	$r9,$r5,$r17
	addi.w	$r18,$r12,4
	stx.h	$r9,$r4,$r17
	bleu	$r15,$r18,.L993
	bstrpick.d	$r19,$r18,31,0
	alsl.d	$r19,$r19,$r0,1
	ldx.h	$r7,$r5,$r19
	addi.w	$r20,$r12,5
	stx.h	$r7,$r4,$r19
	bleu	$r15,$r20,.L993
	bstrpick.d	$r8,$r20,31,0
	alsl.d	$r8,$r8,$r0,1
	ldx.h	$r10,$r5,$r8
	addi.w	$r12,$r12,6
	stx.h	$r10,$r4,$r8
	bleu	$r15,$r12,.L993
	bstrpick.d	$r15,$r12,31,0
	alsl.d	$r15,$r15,$r0,1
	ldx.h	$r11,$r5,$r15
	stx.h	$r11,$r4,$r15
.L993:
	andi	$r18,$r6,1
	beqz	$r18,.L990
.L1078:
	addi.w	$r6,$r6,-1
	bstrpick.d	$r9,$r6,31,0
	ldx.b	$r5,$r5,$r9
	stx.b	$r5,$r4,$r9
	jr	$r1
	.align	5
.L1076:
	addi.w	$r17,$r6,-1
	or	$r7,$r17,$r0
	beqz	$r6,.L1077
	addi.w	$r8,$r0,14			# 0xe
	bgtu	$r17,$r8,.L1075
	bstrpick.d	$r9,$r17,31,0
.L1006:
	or	$r12,$r9,$r0
	addi.w	$r10,$r0,-1			# 0xffffffffffffffff
	.align	3
.L1012:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,-1
	bne	$r12,$r10,.L1012
.L990:
	jr	$r1
	.align	5
.L1075:
	bstrpick.d	$r9,$r17,31,0
	addi.d	$r10,$r9,-1
	add.d	$r14,$r4,$r9
	add.d	$r11,$r5,$r10
	sub.d	$r18,$r14,$r11
	addi.w	$r16,$r0,30			# 0x1e
	addi.d	$r19,$r18,30
	bleu	$r19,$r16,.L1006
	bleu	$r17,$r16,.L1015
	bstrpick.d	$r13,$r6,31,5
	addi.d	$r15,$r9,-31
	sub.d	$r7,$r0,$r13
	or	$r12,$r0,$r0
	add.d	$r8,$r5,$r15
	add.d	$r16,$r4,$r15
	slli.d	$r10,$r7,5
	.align	3
.L1008:
	xvldx	$xr0,$r8,$r12
	xvstx	$xr0,$r16,$r12
	addi.d	$r12,$r12,-32
	bne	$r12,$r10,.L1008
	addi.w	$r14,$r0,-32			# 0xffffffffffffffe0
	and	$r20,$r6,$r14
	andi	$r11,$r6,31
	sub.w	$r7,$r17,$r20
	beqz	$r11,.L990
	sub.w	$r6,$r6,$r20
	addi.w	$r17,$r0,14			# 0xe
	addi.w	$r18,$r6,-1
	bleu	$r18,$r17,.L1010
.L1007:
	bstrpick.d	$r19,$r20,31,0
	addi.d	$r9,$r9,-15
	sub.d	$r13,$r9,$r19
	addi.w	$r20,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr1,$r5,$r13
	vstx	$vr1,$r4,$r13
	andi	$r15,$r6,15
	and	$r6,$r6,$r20
	sub.w	$r7,$r7,$r6
	beqz	$r15,.L990
.L1010:
	bstrpick.d	$r8,$r7,31,0
	ldx.b	$r16,$r5,$r8
	addi.w	$r10,$r7,-1
	stx.b	$r16,$r4,$r8
	beqz	$r7,.L990
	bstrpick.d	$r12,$r10,31,0
	ldx.b	$r14,$r5,$r12
	addi.w	$r11,$r7,-2
	stx.b	$r14,$r4,$r12
	beqz	$r10,.L990
	bstrpick.d	$r17,$r11,31,0
	ldx.b	$r9,$r5,$r17
	addi.w	$r18,$r7,-3
	stx.b	$r9,$r4,$r17
	beqz	$r11,.L990
	bstrpick.d	$r19,$r18,31,0
	ldx.b	$r15,$r5,$r19
	addi.w	$r20,$r7,-4
	stx.b	$r15,$r4,$r19
	beqz	$r18,.L990
	bstrpick.d	$r13,$r20,31,0
	ldx.b	$r8,$r5,$r13
	addi.w	$r6,$r7,-5
	stx.b	$r8,$r4,$r13
	beqz	$r20,.L990
	bstrpick.d	$r10,$r6,31,0
	ldx.b	$r16,$r5,$r10
	addi.w	$r12,$r7,-6
	stx.b	$r16,$r4,$r10
	beqz	$r6,.L990
	bstrpick.d	$r11,$r12,31,0
	ldx.b	$r17,$r5,$r11
	addi.w	$r14,$r7,-7
	stx.b	$r17,$r4,$r11
	beqz	$r12,.L990
	bstrpick.d	$r18,$r14,31,0
	ldx.b	$r19,$r5,$r18
	addi.w	$r9,$r7,-8
	stx.b	$r19,$r4,$r18
	beqz	$r14,.L990
	bstrpick.d	$r20,$r9,31,0
	ldx.b	$r15,$r5,$r20
	addi.w	$r6,$r7,-9
	stx.b	$r15,$r4,$r20
	beqz	$r9,.L990
	bstrpick.d	$r13,$r6,31,0
	ldx.b	$r10,$r5,$r13
	addi.w	$r8,$r7,-10
	stx.b	$r10,$r4,$r13
	beqz	$r6,.L990
	bstrpick.d	$r12,$r8,31,0
	ldx.b	$r16,$r5,$r12
	addi.w	$r11,$r7,-11
	stx.b	$r16,$r4,$r12
	beqz	$r8,.L990
	bstrpick.d	$r14,$r11,31,0
	ldx.b	$r18,$r5,$r14
	addi.w	$r17,$r7,-12
	stx.b	$r18,$r4,$r14
	beqz	$r11,.L990
	bstrpick.d	$r9,$r17,31,0
	ldx.b	$r20,$r5,$r9
	addi.w	$r19,$r7,-13
	stx.b	$r20,$r4,$r9
	beqz	$r17,.L990
	bstrpick.d	$r6,$r19,31,0
	ldx.b	$r15,$r5,$r6
	addi.w	$r7,$r7,-14
	stx.b	$r15,$r4,$r6
	beqz	$r19,.L990
	bstrpick.d	$r8,$r7,31,0
	ldx.b	$r5,$r5,$r8
	stx.b	$r5,$r4,$r8
	jr	$r1
.L1014:
	or	$r19,$r15,$r0
	or	$r12,$r0,$r0
	b	.L998
	.align	5
.L997:
	bstrpick.d	$r14,$r13,31,0
	or	$r17,$r0,$r0
	slli.d	$r13,$r14,1
	.align	3
.L1003:
	ldx.h	$r16,$r5,$r17
	stx.h	$r16,$r4,$r17
	addi.d	$r17,$r17,2
	bne	$r13,$r17,.L1003
	andi	$r18,$r6,1
	beqz	$r18,.L990
	b	.L1078
.L1077:
	jr	$r1
.L1015:
	or	$r20,$r0,$r0
	b	.L1007
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
	addi.w	$r14,$r0,-4			# 0xfffffffffffffffc
	srli.w	$r13,$r6,2
	bstrpick.d	$r16,$r6,31,2
	and	$r14,$r6,$r14
	bltu	$r4,$r5,.L1084
	bstrpick.d	$r12,$r6,31,0
	add.d	$r7,$r5,$r12
	bleu	$r4,$r7,.L1179
.L1084:
	beqz	$r16,.L1180
	addi.w	$r18,$r13,-1
	addi.w	$r17,$r0,7			# 0x7
	bleu	$r18,$r17,.L1110
	addi.d	$r19,$r5,4
	addi.w	$r15,$r0,24			# 0x18
	sub.d	$r9,$r4,$r19
	bleu	$r9,$r15,.L1087
	bstrpick.d	$r20,$r6,31,5
	srli.w	$r7,$r6,5
	or	$r12,$r0,$r0
	slli.d	$r13,$r20,5
	.align	3
.L1088:
	xvldx	$xr2,$r5,$r12
	xvstx	$xr2,$r4,$r12
	addi.d	$r12,$r12,32
	bne	$r12,$r13,.L1088
	slli.w	$r8,$r7,3
	or	$r10,$r8,$r0
	beq	$r16,$r8,.L1092
	bstrpick.d	$r11,$r8,31,0
	slli.d	$r19,$r11,2
	ldx.w	$r17,$r5,$r19
	addi.w	$r18,$r8,1
	stx.w	$r17,$r4,$r19
	bleu	$r16,$r18,.L1092
	bstrpick.d	$r15,$r18,31,0
	alsl.d	$r15,$r15,$r0,2
	ldx.w	$r20,$r5,$r15
	addi.w	$r9,$r8,2
	stx.w	$r20,$r4,$r15
	bleu	$r16,$r9,.L1092
	bstrpick.d	$r7,$r9,31,0
	slli.d	$r13,$r7,2
	addi.w	$r12,$r8,3
	ldx.w	$r8,$r5,$r13
	stx.w	$r8,$r4,$r13
	bleu	$r16,$r12,.L1092
	bstrpick.d	$r11,$r12,31,0
	alsl.d	$r11,$r11,$r0,2
	ldx.w	$r19,$r5,$r11
	addi.w	$r18,$r10,4
	stx.w	$r19,$r4,$r11
	bleu	$r16,$r18,.L1092
	bstrpick.d	$r17,$r18,31,0
	slli.d	$r9,$r17,2
	ldx.w	$r20,$r5,$r9
	addi.w	$r15,$r10,5
	stx.w	$r20,$r4,$r9
	bleu	$r16,$r15,.L1092
	bstrpick.d	$r7,$r15,31,0
	alsl.d	$r7,$r7,$r0,2
	ldx.w	$r12,$r5,$r7
	addi.w	$r10,$r10,6
	stx.w	$r12,$r4,$r7
	bleu	$r16,$r10,.L1092
	bstrpick.d	$r16,$r10,31,0
	slli.d	$r8,$r16,2
	ldx.w	$r13,$r5,$r8
	stx.w	$r13,$r4,$r8
.L1092:
	bleu	$r6,$r14,.L1079
	sub.w	$r17,$r6,$r14
	addi.w	$r16,$r0,14			# 0xe
	addi.w	$r10,$r17,-1
	slli.w	$r19,$r17,0
	bstrpick.d	$r20,$r14,31,0
	bleu	$r10,$r16,.L1082
	addi.d	$r12,$r20,1
	add.d	$r8,$r4,$r20
	add.d	$r13,$r5,$r12
	addi.w	$r18,$r0,30			# 0x1e
	sub.d	$r11,$r8,$r13
	bleu	$r11,$r18,.L1082
	bleu	$r10,$r18,.L1111
	bstrpick.d	$r15,$r17,31,5
	add.d	$r7,$r5,$r20
	or	$r10,$r0,$r0
	slli.d	$r16,$r15,5
	.align	3
.L1094:
	xvldx	$xr3,$r7,$r10
	xvstx	$xr3,$r8,$r10
	addi.d	$r10,$r10,32
	bne	$r16,$r10,.L1094
	addi.w	$r19,$r0,-32			# 0xffffffffffffffe0
	and	$r12,$r19,$r17
	andi	$r18,$r17,31
	slli.w	$r9,$r12,0
	add.w	$r14,$r12,$r14
	beqz	$r18,.L1079
	sub.w	$r19,$r17,$r9
	addi.w	$r13,$r0,14			# 0xe
	addi.w	$r11,$r19,-1
	bleu	$r11,$r13,.L1096
.L1093:
	bstrpick.d	$r9,$r9,31,0
	add.d	$r20,$r9,$r20
	addi.w	$r15,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr4,$r5,$r20
	vstx	$vr4,$r4,$r20
	and	$r16,$r19,$r15
	andi	$r7,$r19,15
	add.w	$r14,$r16,$r14
	beqz	$r7,.L1079
.L1096:
	bstrpick.d	$r10,$r14,31,0
	ldx.b	$r18,$r5,$r10
	addi.w	$r19,$r14,1
	stx.b	$r18,$r4,$r10
	bleu	$r6,$r19,.L1079
	bstrpick.d	$r12,$r19,31,0
	ldx.b	$r17,$r5,$r12
	addi.w	$r8,$r14,2
	stx.b	$r17,$r4,$r12
	bgeu	$r8,$r6,.L1079
	bstrpick.d	$r13,$r8,31,0
	ldx.b	$r9,$r5,$r13
	addi.w	$r11,$r14,3
	stx.b	$r9,$r4,$r13
	bleu	$r6,$r11,.L1079
	bstrpick.d	$r7,$r11,31,0
	ldx.b	$r15,$r5,$r7
	addi.w	$r20,$r14,4
	stx.b	$r15,$r4,$r7
	bleu	$r6,$r20,.L1079
	bstrpick.d	$r16,$r20,31,0
	ldx.b	$r19,$r5,$r16
	addi.w	$r10,$r14,5
	stx.b	$r19,$r4,$r16
	bleu	$r6,$r10,.L1079
	bstrpick.d	$r18,$r10,31,0
	ldx.b	$r8,$r5,$r18
	addi.w	$r12,$r14,6
	stx.b	$r8,$r4,$r18
	bleu	$r6,$r12,.L1079
	bstrpick.d	$r17,$r12,31,0
	ldx.b	$r11,$r5,$r17
	addi.w	$r13,$r14,7
	stx.b	$r11,$r4,$r17
	bleu	$r6,$r13,.L1079
	bstrpick.d	$r9,$r13,31,0
	ldx.b	$r20,$r5,$r9
	addi.w	$r7,$r14,8
	stx.b	$r20,$r4,$r9
	bleu	$r6,$r7,.L1079
	bstrpick.d	$r16,$r7,31,0
	ldx.b	$r15,$r5,$r16
	addi.w	$r10,$r14,9
	stx.b	$r15,$r4,$r16
	bleu	$r6,$r10,.L1079
	bstrpick.d	$r19,$r10,31,0
	ldx.b	$r12,$r5,$r19
	addi.w	$r18,$r14,10
	stx.b	$r12,$r4,$r19
	bleu	$r6,$r18,.L1079
	bstrpick.d	$r8,$r18,31,0
	ldx.b	$r13,$r5,$r8
	addi.w	$r17,$r14,11
	stx.b	$r13,$r4,$r8
	bleu	$r6,$r17,.L1079
	bstrpick.d	$r11,$r17,31,0
	ldx.b	$r7,$r5,$r11
	addi.w	$r9,$r14,12
	stx.b	$r7,$r4,$r11
	bleu	$r6,$r9,.L1079
	bstrpick.d	$r20,$r9,31,0
	ldx.b	$r10,$r5,$r20
	addi.w	$r16,$r14,13
	stx.b	$r10,$r4,$r20
	bleu	$r6,$r16,.L1079
	bstrpick.d	$r15,$r16,31,0
	ldx.b	$r19,$r5,$r15
	addi.w	$r14,$r14,14
	stx.b	$r19,$r4,$r15
	bleu	$r6,$r14,.L1079
	bstrpick.d	$r6,$r14,31,0
	ldx.b	$r5,$r5,$r6
	stx.b	$r5,$r4,$r6
	jr	$r1
	.align	5
.L1179:
	addi.w	$r17,$r6,-1
	or	$r12,$r17,$r0
	beqz	$r6,.L1181
	addi.w	$r8,$r0,14			# 0xe
	bgtu	$r17,$r8,.L1178
	bstrpick.d	$r9,$r17,31,0
.L1100:
	or	$r11,$r9,$r0
	addi.w	$r8,$r0,-1			# 0xffffffffffffffff
	.align	3
.L1107:
	ldx.b	$r10,$r5,$r11
	stx.b	$r10,$r4,$r11
	addi.d	$r11,$r11,-1
	bne	$r11,$r8,.L1107
.L1079:
	jr	$r1
	.align	5
.L1178:
	bstrpick.d	$r9,$r17,31,0
	addi.d	$r15,$r9,-1
	add.d	$r11,$r4,$r9
	add.d	$r18,$r5,$r15
	sub.d	$r19,$r11,$r18
	addi.w	$r10,$r0,30			# 0x1e
	addi.d	$r20,$r19,30
	bleu	$r20,$r10,.L1100
	bleu	$r17,$r10,.L1112
	bstrpick.d	$r13,$r6,31,5
	addi.d	$r7,$r9,-31
	sub.d	$r8,$r0,$r13
	or	$r12,$r0,$r0
	add.d	$r16,$r5,$r7
	add.d	$r10,$r4,$r7
	slli.d	$r15,$r8,5
	.align	3
.L1102:
	xvldx	$xr0,$r16,$r12
	xvstx	$xr0,$r10,$r12
	addi.d	$r12,$r12,-32
	bne	$r12,$r15,.L1102
	addi.w	$r11,$r0,-32			# 0xffffffffffffffe0
	and	$r14,$r6,$r11
	andi	$r18,$r6,31
	sub.w	$r12,$r17,$r14
	beqz	$r18,.L1079
	sub.w	$r6,$r6,$r14
	addi.w	$r17,$r0,14			# 0xe
	addi.w	$r19,$r6,-1
	bleu	$r19,$r17,.L1105
.L1101:
	bstrpick.d	$r20,$r14,31,0
	addi.d	$r9,$r9,-15
	sub.d	$r13,$r9,$r20
	addi.w	$r14,$r0,-16			# 0xfffffffffffffff0
	vldx	$vr1,$r5,$r13
	vstx	$vr1,$r4,$r13
	andi	$r7,$r6,15
	and	$r6,$r6,$r14
	sub.w	$r12,$r12,$r6
	beqz	$r7,.L1079
.L1105:
	bstrpick.d	$r8,$r12,31,0
	ldx.b	$r16,$r5,$r8
	addi.w	$r10,$r12,-1
	stx.b	$r16,$r4,$r8
	beqz	$r12,.L1079
	bstrpick.d	$r11,$r10,31,0
	ldx.b	$r18,$r5,$r11
	addi.w	$r15,$r12,-2
	stx.b	$r18,$r4,$r11
	beqz	$r10,.L1079
	bstrpick.d	$r17,$r15,31,0
	ldx.b	$r9,$r5,$r17
	addi.w	$r19,$r12,-3
	stx.b	$r9,$r4,$r17
	beqz	$r15,.L1079
	bstrpick.d	$r20,$r19,31,0
	ldx.b	$r14,$r5,$r20
	addi.w	$r7,$r12,-4
	stx.b	$r14,$r4,$r20
	beqz	$r19,.L1079
	bstrpick.d	$r13,$r7,31,0
	ldx.b	$r8,$r5,$r13
	addi.w	$r6,$r12,-5
	stx.b	$r8,$r4,$r13
	beqz	$r7,.L1079
	bstrpick.d	$r10,$r6,31,0
	ldx.b	$r16,$r5,$r10
	addi.w	$r11,$r12,-6
	stx.b	$r16,$r4,$r10
	beqz	$r6,.L1079
	bstrpick.d	$r15,$r11,31,0
	ldx.b	$r17,$r5,$r15
	addi.w	$r18,$r12,-7
	stx.b	$r17,$r4,$r15
	beqz	$r11,.L1079
	bstrpick.d	$r19,$r18,31,0
	ldx.b	$r20,$r5,$r19
	addi.w	$r9,$r12,-8
	stx.b	$r20,$r4,$r19
	beqz	$r18,.L1079
	bstrpick.d	$r7,$r9,31,0
	ldx.b	$r13,$r5,$r7
	addi.w	$r14,$r12,-9
	stx.b	$r13,$r4,$r7
	beqz	$r9,.L1079
	bstrpick.d	$r6,$r14,31,0
	ldx.b	$r10,$r5,$r6
	addi.w	$r8,$r12,-10
	stx.b	$r10,$r4,$r6
	beqz	$r14,.L1079
	bstrpick.d	$r11,$r8,31,0
	ldx.b	$r16,$r5,$r11
	addi.w	$r18,$r12,-11
	stx.b	$r16,$r4,$r11
	beqz	$r8,.L1079
	bstrpick.d	$r17,$r18,31,0
	ldx.b	$r19,$r5,$r17
	addi.w	$r15,$r12,-12
	stx.b	$r19,$r4,$r17
	beqz	$r18,.L1079
	bstrpick.d	$r9,$r15,31,0
	ldx.b	$r7,$r5,$r9
	addi.w	$r20,$r12,-13
	stx.b	$r7,$r4,$r9
	beqz	$r15,.L1079
	bstrpick.d	$r14,$r20,31,0
	ldx.b	$r13,$r5,$r14
	addi.w	$r12,$r12,-14
	stx.b	$r13,$r4,$r14
	beqz	$r20,.L1079
	bstrpick.d	$r6,$r12,31,0
	ldx.b	$r5,$r5,$r6
	stx.b	$r5,$r4,$r6
	jr	$r1
.L1111:
	or	$r9,$r0,$r0
	b	.L1093
	.align	5
.L1180:
	bstrpick.d	$r20,$r14,31,0
	beqz	$r6,.L1182
.L1082:
	or	$r12,$r20,$r0
	.align	3
.L1098:
	ldx.b	$r18,$r5,$r12
	stx.b	$r18,$r4,$r12
	addi.d	$r12,$r12,1
	slli.w	$r8,$r12,0
	bgtu	$r6,$r8,.L1098
	jr	$r1
	.align	5
.L1110:
	or	$r15,$r0,$r0
.L1086:
	bstrpick.d	$r7,$r15,31,0
	alsl.d	$r7,$r7,$r0,2
	.align	3
.L1091:
	ldx.w	$r9,$r5,$r7
	addi.w	$r15,$r15,1
	stx.w	$r9,$r4,$r7
	addi.d	$r7,$r7,4
	bgtu	$r16,$r15,.L1091
	b	.L1092
.L1087:
	addi.w	$r11,$r0,16			# 0x10
	bleu	$r16,$r11,.L1110
	addi.w	$r18,$r13,-17
	addi.w	$r19,$r0,-16			# 0xfffffffffffffff0
	and	$r9,$r18,$r19
	addi.d	$r10,$r5,100
	addi.d	$r12,$r4,100
	or	$r17,$r0,$r0
	addi.w	$r15,$r9,16
	.align	3
.L1090:
	ldptr.w	$r20,$r10,-100
	preld	8,$r12,0
	addi.d	$r12,$r12,64
	preld	0,$r10,0
	addi.d	$r10,$r10,64
	st.w	$r20,$r12,-164
	ldptr.w	$r8,$r10,-160
	or	$r7,$r17,$r0
	addi.w	$r17,$r17,16
	st.w	$r8,$r12,-160
	ldptr.w	$r13,$r10,-156
	st.w	$r13,$r12,-156
	ldptr.w	$r11,$r10,-152
	st.w	$r11,$r12,-152
	ldptr.w	$r18,$r10,-148
	st.w	$r18,$r12,-148
	ldptr.w	$r19,$r10,-144
	st.w	$r19,$r12,-144
	ldptr.w	$r20,$r10,-140
	st.w	$r20,$r12,-140
	ldptr.w	$r8,$r10,-136
	st.w	$r8,$r12,-136
	ldptr.w	$r13,$r10,-132
	st.w	$r13,$r12,-132
	ldptr.w	$r11,$r10,-128
	st.w	$r11,$r12,-128
	ldptr.w	$r18,$r10,-124
	st.w	$r18,$r12,-124
	ldptr.w	$r19,$r10,-120
	st.w	$r19,$r12,-120
	ldptr.w	$r20,$r10,-116
	st.w	$r20,$r12,-116
	ldptr.w	$r8,$r10,-112
	st.w	$r8,$r12,-112
	ldptr.w	$r13,$r10,-108
	st.w	$r13,$r12,-108
	ldptr.w	$r11,$r10,-104
	st.w	$r11,$r12,-104
	bne	$r7,$r9,.L1090
	b	.L1086
.L1182:
	jr	$r1
.L1181:
	jr	$r1
.L1112:
	or	$r14,$r0,$r0
	b	.L1101
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
	blt	$r4,$r0,.L1188
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	jr	$r1
	.align	5
.L1188:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r5,$r12,$r4
	movgr2fr.d	$f1,$r5
	ffint.d.l	$f2,$f1
	fadd.d	$f0,$f2,$f2
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
	blt	$r4,$r0,.L1191
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	jr	$r1
	.align	5
.L1191:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r5,$r12,$r4
	movgr2fr.d	$f1,$r5
	ffint.s.l	$f2,$f1
	fadd.s	$f0,$f2,$f2
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
	bnez	$r14,.L1196
	srli.d	$r4,$r12,14
	bnez	$r4,.L1195
	srli.d	$r5,$r12,13
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r5,.L1195
	srli.d	$r6,$r12,12
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r6,.L1195
	srli.d	$r7,$r12,11
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r7,.L1195
	srli.d	$r8,$r12,10
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r8,.L1195
	srli.d	$r9,$r12,9
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r9,.L1195
	srli.d	$r10,$r12,8
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r10,.L1195
	srli.d	$r11,$r12,7
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r11,.L1195
	srli.d	$r15,$r12,6
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r15,.L1195
	srli.d	$r16,$r12,5
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r16,.L1195
	srli.d	$r17,$r12,4
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r17,.L1195
	srli.d	$r18,$r12,3
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r18,.L1195
	srli.d	$r19,$r12,2
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r19,.L1195
	sltui	$r20,$r13,1
	srli.d	$r14,$r12,1
	addi.w	$r4,$r0,14			# 0xe
	addi.d	$r13,$r20,15
	maskeqz	$r5,$r4,$r14
	masknez	$r12,$r13,$r14
	or	$r4,$r12,$r5
	jr	$r1
.L1196:
	or	$r4,$r0,$r0
.L1195:
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
	bnez	$r13,.L1214
	andi	$r5,$r4,2
	addi.w	$r4,$r0,1			# 0x1
	bnez	$r5,.L1213
	andi	$r6,$r12,4
	addi.w	$r4,$r0,2			# 0x2
	bnez	$r6,.L1213
	andi	$r7,$r12,8
	addi.w	$r4,$r0,3			# 0x3
	bnez	$r7,.L1213
	andi	$r8,$r12,16
	addi.w	$r4,$r0,4			# 0x4
	bnez	$r8,.L1213
	andi	$r9,$r12,32
	addi.w	$r4,$r0,5			# 0x5
	bnez	$r9,.L1213
	andi	$r10,$r12,64
	addi.w	$r4,$r0,6			# 0x6
	bnez	$r10,.L1213
	andi	$r11,$r12,128
	addi.w	$r4,$r0,7			# 0x7
	bnez	$r11,.L1213
	andi	$r14,$r12,256
	addi.w	$r4,$r0,8			# 0x8
	bnez	$r14,.L1213
	andi	$r15,$r12,512
	addi.w	$r4,$r0,9			# 0x9
	bnez	$r15,.L1213
	andi	$r16,$r12,1024
	addi.w	$r4,$r0,10			# 0xa
	bnez	$r16,.L1213
	andi	$r17,$r12,2048
	addi.w	$r4,$r0,11			# 0xb
	bnez	$r17,.L1213
	bstrpick.d	$r18,$r12,12,12
	addi.w	$r4,$r0,12			# 0xc
	bnez	$r18,.L1213
	bstrpick.d	$r19,$r12,13,13
	addi.w	$r4,$r0,13			# 0xd
	bnez	$r19,.L1213
	srli.d	$r20,$r12,15
	sltui	$r13,$r20,1
	bstrpick.d	$r12,$r12,14,14
	addi.w	$r4,$r0,14			# 0xe
	addi.d	$r6,$r13,15
	maskeqz	$r5,$r4,$r12
	masknez	$r7,$r6,$r12
	or	$r4,$r7,$r5
	jr	$r1
.L1214:
	or	$r4,$r0,$r0
.L1213:
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
	pcalau12i	$r12,%pc_hi20(.LC22)
	fld.s	$f1,$r12,%pc_lo12(.LC22)
	fcmp.sge.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L1236
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	jr	$r1
	.align	5
.L1236:
	fsub.s	$f2,$f0,$f1
	lu12i.w	$r5,32768>>12			# 0x8000
	ftintrz.l.s $f3,$f2
	movfr2gr.d	$r4,$f3
	add.d	$r4,$r4,$r5
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
	la.local	$r13,.LC23
	xvreplgr2vr.w	$xr1,$r4
	xvrepli.w	$xr5,1
	la.local	$r12,.LC24
	xvld	$xr0,$r13,0
	xvsra.w	$xr3,$xr1,$xr0
	xvand.v	$xr6,$xr3,$xr5
	xvld	$xr2,$r12,0
	xvsra.w	$xr4,$xr1,$xr2
	xvand.v	$xr7,$xr4,$xr5
	xvadd.w	$xr8,$xr6,$xr7
	xvhaddw.d.w	$xr9,$xr8,$xr8
	xvhaddw.q.d	$xr10,$xr9,$xr9
	xvpermi.d	$xr11,$xr10,2
	xvadd.d	$xr12,$xr11,$xr10
	xvpickve2gr.w	$r4,$xr12,0
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
	la.local	$r13,.LC23
	xvreplgr2vr.w	$xr1,$r4
	xvrepli.w	$xr5,1
	la.local	$r12,.LC24
	xvld	$xr0,$r13,0
	xvsra.w	$xr3,$xr1,$xr0
	xvand.v	$xr6,$xr3,$xr5
	xvld	$xr2,$r12,0
	xvsra.w	$xr4,$xr1,$xr2
	xvand.v	$xr7,$xr4,$xr5
	xvadd.w	$xr8,$xr6,$xr7
	xvhaddw.d.w	$xr9,$xr8,$xr8
	xvhaddw.q.d	$xr10,$xr9,$xr9
	xvpermi.d	$xr11,$xr10,2
	xvadd.d	$xr12,$xr11,$xr10
	xvpickve2gr.w	$r4,$xr12,0
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
	beqz	$r13,.L1242
	.align	3
.L1241:
	andi	$r12,$r13,1
	sub.w	$r6,$r0,$r12
	and	$r7,$r5,$r6
	slli.w	$r14,$r5,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r5,$r14,0
	add.w	$r4,$r7,$r4
	bnez	$r13,.L1241
	jr	$r1
	.align	5
.L1242:
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
	beqz	$r13,.L1245
	beqz	$r5,.L1245
	.align	3
.L1246:
	andi	$r12,$r5,1
	sub.w	$r6,$r0,$r12
	and	$r7,$r13,$r6
	slli.w	$r14,$r13,1
	bstrpick.d	$r5,$r5,31,1
	slli.w	$r13,$r14,0
	add.w	$r4,$r7,$r4
	bnez	$r5,.L1246
	jr	$r1
	.align	5
.L1245:
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
	addi.w	$r9,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bltu	$r5,$r4,.L1252
	b	.L1271
	.align	5
.L1256:
	slli.w	$r5,$r15,0
	slli.w	$r14,$r11,0
	bleu	$r4,$r5,.L1254
	beqz	$r9,.L1255
.L1252:
	slli.w	$r15,$r5,1
	slli.w	$r11,$r14,1
	addi.w	$r9,$r9,-1
	bge	$r5,$r0,.L1256
.L1257:
	or	$r9,$r0,$r0
	.align	3
.L1258:
	sltu	$r17,$r4,$r5
	xori	$r18,$r17,1
	sub.w	$r16,$r4,$r5
	bstrpick.w	$r19,$r18,7,0
	masknez	$r20,$r4,$r19
	maskeqz	$r13,$r14,$r19
	maskeqz	$r12,$r16,$r19
	or	$r7,$r12,$r20
	or	$r8,$r9,$r13
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r5,$r5,31,1
	slli.w	$r4,$r7,0
	slli.w	$r9,$r8,0
	bnez	$r14,.L1258
.L1255:
	masknez	$r5,$r9,$r6
	maskeqz	$r6,$r4,$r6
	or	$r4,$r5,$r6
	jr	$r1
	.align	5
.L1254:
	bnez	$r14,.L1257
	or	$r9,$r0,$r0
	b	.L1255
	.align	5
.L1271:
	sltu	$r13,$r4,$r5
	sub.w	$r12,$r4,$r5
	xori	$r5,$r13,1
	bstrpick.w	$r7,$r5,7,0
	masknez	$r4,$r4,$r7
	maskeqz	$r8,$r12,$r7
	or	$r10,$r8,$r4
	slli.w	$r9,$r7,0
	slli.w	$r4,$r10,0
	b	.L1255
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
	bcnez	$fcc0,.L1274
	fcmp.sgt.s	$fcc1,$f0,$f1
	movcf2fr	$f0,$fcc1
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L1274:
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
	bcnez	$fcc0,.L1277
	fcmp.sgt.d	$fcc1,$f0,$f1
	movcf2fr	$f0,$fcc1
	movfr2gr.s	$r4,$f0
	slli.w	$r4,$r4,0
.L1277:
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
	blt	$r5,$r0,.L1295
	or	$r4,$r0,$r0
	beqz	$r5,.L1284
.L1283:
	addi.w	$r7,$r0,32			# 0x20
	or	$r15,$r0,$r0
	b	.L1286
	.align	5
.L1296:
	beqz	$r7,.L1285
.L1286:
	andi	$r12,$r5,1
	sub.w	$r6,$r0,$r12
	and	$r8,$r14,$r6
	addi.w	$r13,$r7,-1
	slli.w	$r16,$r14,1
	srai.d	$r5,$r5,1
	bstrpick.w	$r7,$r13,7,0
	slli.w	$r14,$r16,0
	add.w	$r15,$r8,$r15
	bnez	$r5,.L1296
.L1285:
	sub.w	$r5,$r0,$r15
	masknez	$r9,$r15,$r4
	maskeqz	$r4,$r5,$r4
	or	$r4,$r4,$r9
.L1284:
	jr	$r1
	.align	5
.L1295:
	sub.w	$r5,$r0,$r5
	addi.w	$r4,$r0,1			# 0x1
	b	.L1283
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
	or	$r18,$r0,$r0
	blt	$r4,$r0,.L1322
.L1298:
	bge	$r5,$r0,.L1299
	sub.d	$r5,$r0,$r5
	or	$r18,$r12,$r0
.L1299:
	slli.w	$r13,$r4,0
	slli.w	$r20,$r5,0
	addi.w	$r7,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bgtu	$r13,$r20,.L1300
	b	.L1320
	.align	5
.L1304:
	slli.w	$r20,$r16,0
	slli.w	$r14,$r6,0
	bleu	$r13,$r20,.L1302
	beqz	$r7,.L1312
.L1300:
	slli.w	$r16,$r20,1
	slli.w	$r6,$r14,1
	addi.w	$r7,$r7,-1
	bge	$r20,$r0,.L1304
.L1305:
	or	$r15,$r0,$r0
	.align	3
.L1306:
	sltu	$r8,$r13,$r20
	xori	$r9,$r8,1
	sub.w	$r17,$r13,$r20
	bstrpick.w	$r10,$r9,7,0
	masknez	$r13,$r13,$r10
	maskeqz	$r11,$r14,$r10
	maskeqz	$r19,$r17,$r10
	or	$r12,$r19,$r13
	or	$r4,$r15,$r11
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r20,$r20,31,1
	slli.w	$r13,$r12,0
	slli.w	$r15,$r4,0
	bnez	$r14,.L1306
.L1308:
	bstrpick.d	$r5,$r15,31,0
	sub.d	$r16,$r0,$r5
	masknez	$r15,$r5,$r18
	maskeqz	$r6,$r16,$r18
	or	$r4,$r6,$r15
	jr	$r1
	.align	5
.L1302:
	bnez	$r14,.L1305
.L1312:
	or	$r5,$r0,$r0
	sub.d	$r16,$r0,$r5
	masknez	$r15,$r5,$r18
	maskeqz	$r6,$r16,$r18
	or	$r4,$r6,$r15
	jr	$r1
	.align	5
.L1322:
	sub.d	$r4,$r0,$r4
	or	$r12,$r0,$r0
	addi.w	$r18,$r0,1			# 0x1
	b	.L1298
.L1320:
	sltu	$r4,$r13,$r20
	xori	$r5,$r4,1
	slli.w	$r15,$r5,0
	b	.L1308
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
	bge	$r4,$r0,.L1324
	sub.d	$r4,$r0,$r4
	addi.w	$r17,$r0,1			# 0x1
.L1324:
	srai.d	$r13,$r5,63
	xor	$r5,$r13,$r5
	slli.w	$r9,$r4,0
	sub.w	$r13,$r5,$r13
	addi.w	$r10,$r0,32			# 0x20
	addi.w	$r14,$r0,1			# 0x1
	bgtu	$r9,$r13,.L1325
	b	.L1349
	.align	5
.L1329:
	slli.w	$r13,$r16,0
	slli.w	$r14,$r15,0
	bleu	$r9,$r13,.L1327
	beqz	$r10,.L1328
.L1325:
	slli.w	$r16,$r13,1
	slli.w	$r15,$r14,1
	addi.w	$r10,$r10,-1
	bge	$r13,$r0,.L1329
	.align	3
.L1347:
	sltu	$r11,$r9,$r13
	xori	$r19,$r11,1
	sub.w	$r18,$r9,$r13
	bstrpick.w	$r20,$r19,7,0
	masknez	$r5,$r9,$r20
	maskeqz	$r12,$r18,$r20
	or	$r6,$r12,$r5
	bstrpick.d	$r14,$r14,31,1
	bstrpick.d	$r13,$r13,31,1
	slli.w	$r9,$r6,0
	bnez	$r14,.L1347
.L1328:
	bstrpick.d	$r4,$r9,31,0
	sub.d	$r7,$r0,$r4
	masknez	$r8,$r4,$r17
	maskeqz	$r9,$r7,$r17
	or	$r4,$r9,$r8
	jr	$r1
	.align	5
.L1327:
	bnez	$r14,.L1347
	b	.L1328
	.align	5
.L1349:
	sltu	$r12,$r9,$r13
	sub.w	$r6,$r9,$r13
	maskeqz	$r4,$r9,$r12
	masknez	$r7,$r6,$r12
	or	$r8,$r7,$r4
	slli.w	$r9,$r8,0
	b	.L1328
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
	slli.w	$r17,$r4,0
	bgeu	$r5,$r4,.L1433
	srli.d	$r9,$r5,15
	bnez	$r9,.L1354
	slli.w	$r15,$r5,1
	bstrpick.w	$r12,$r15,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1361
	srli.d	$r16,$r12,15
	bnez	$r16,.L1361
	slli.w	$r18,$r5,2
	bstrpick.w	$r12,$r18,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1363
	srli.d	$r19,$r12,15
	bnez	$r19,.L1363
	slli.w	$r20,$r5,3
	bstrpick.w	$r12,$r20,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1365
	srli.d	$r7,$r12,15
	bnez	$r7,.L1365
	slli.w	$r12,$r5,4
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1367
	srli.d	$r8,$r12,15
	bnez	$r8,.L1367
	slli.w	$r13,$r5,5
	bstrpick.w	$r12,$r13,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1369
	srli.d	$r9,$r12,15
	bnez	$r9,.L1369
	slli.w	$r10,$r5,6
	bstrpick.w	$r12,$r10,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1371
	srli.d	$r14,$r12,15
	bnez	$r14,.L1371
	slli.w	$r11,$r5,7
	bstrpick.w	$r12,$r11,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1373
	srli.d	$r15,$r12,15
	bnez	$r15,.L1373
	slli.w	$r16,$r5,8
	bstrpick.w	$r12,$r16,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1375
	srli.d	$r18,$r12,15
	bnez	$r18,.L1375
	slli.w	$r19,$r5,9
	bstrpick.w	$r12,$r19,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1377
	srli.d	$r20,$r12,15
	bnez	$r20,.L1377
	slli.w	$r7,$r5,10
	bstrpick.w	$r12,$r7,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1379
	srli.d	$r8,$r12,15
	bnez	$r8,.L1379
	slli.w	$r12,$r5,11
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1381
	srli.d	$r9,$r12,15
	bnez	$r9,.L1381
	slli.w	$r13,$r5,12
	bstrpick.w	$r12,$r13,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1383
	srli.d	$r10,$r12,15
	bnez	$r10,.L1383
	slli.w	$r14,$r5,13
	bstrpick.w	$r12,$r14,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1385
	srli.d	$r11,$r12,15
	bnez	$r11,.L1385
	slli.w	$r15,$r5,14
	bstrpick.w	$r12,$r15,15,0
	slli.w	$r13,$r12,0
	bleu	$r17,$r12,.L1387
	srli.d	$r16,$r12,15
	bnez	$r16,.L1387
	slli.w	$r18,$r5,15
	bstrpick.w	$r14,$r18,15,0
	bleu	$r17,$r14,.L1388
	or	$r11,$r4,$r0
	bnez	$r14,.L1434
.L1357:
	maskeqz	$r18,$r11,$r6
	masknez	$r6,$r14,$r6
	or	$r4,$r18,$r6
	jr	$r1
.L1361:
	addi.w	$r5,$r0,2			# 0x2
	.align	3
.L1356:
	sltu	$r19,$r17,$r13
	sub.w	$r7,$r4,$r12
	xori	$r8,$r19,1
	bstrpick.w	$r11,$r8,7,0
	bstrpick.w	$r9,$r7,15,0
	maskeqz	$r15,$r9,$r11
	masknez	$r4,$r4,$r11
	srli.d	$r14,$r12,1
	or	$r16,$r15,$r4
	sltu	$r18,$r16,$r14
	sltu	$r17,$r17,$r13
	sltu	$r7,$r16,$r14
	sub.w	$r13,$r16,$r14
	srli.d	$r20,$r5,1
	xori	$r8,$r18,1
	masknez	$r10,$r5,$r17
	bstrpick.w	$r11,$r8,7,0
	bstrpick.w	$r9,$r13,15,0
	masknez	$r20,$r20,$r7
	or	$r14,$r10,$r20
	masknez	$r15,$r16,$r11
	maskeqz	$r10,$r9,$r11
	srli.d	$r19,$r5,2
	srli.d	$r17,$r12,2
	or	$r11,$r10,$r15
	beqz	$r19,.L1357
	slli.w	$r4,$r17,0
	sltu	$r13,$r11,$r4
	sub.w	$r16,$r11,$r17
	xori	$r9,$r13,1
	bstrpick.w	$r20,$r9,7,0
	bstrpick.w	$r18,$r16,15,0
	maskeqz	$r17,$r18,$r20
	masknez	$r11,$r11,$r20
	maskeqz	$r19,$r19,$r20
	srli.d	$r7,$r5,3
	srli.d	$r8,$r12,3
	or	$r11,$r17,$r11
	or	$r14,$r14,$r19
	beqz	$r7,.L1357
	slli.w	$r10,$r8,0
	sltu	$r15,$r11,$r10
	sub.w	$r4,$r11,$r8
	xori	$r13,$r15,1
	bstrpick.w	$r9,$r13,7,0
	bstrpick.w	$r18,$r4,15,0
	masknez	$r20,$r11,$r9
	maskeqz	$r17,$r18,$r9
	maskeqz	$r7,$r7,$r9
	or	$r11,$r17,$r20
	srli.d	$r16,$r5,4
	srli.d	$r8,$r12,4
	or	$r14,$r14,$r7
	bstrpick.w	$r11,$r11,15,0
	beqz	$r16,.L1357
	slli.w	$r19,$r8,0
	sltu	$r4,$r11,$r19
	sub.w	$r10,$r11,$r8
	xori	$r15,$r4,1
	bstrpick.w	$r20,$r15,7,0
	bstrpick.w	$r18,$r10,15,0
	masknez	$r17,$r11,$r20
	maskeqz	$r13,$r18,$r20
	maskeqz	$r16,$r16,$r20
	or	$r7,$r13,$r17
	srli.d	$r8,$r5,5
	srli.d	$r9,$r12,5
	or	$r14,$r14,$r16
	bstrpick.w	$r11,$r7,15,0
	beqz	$r8,.L1357
	slli.w	$r10,$r9,0
	sltu	$r4,$r11,$r10
	sub.w	$r9,$r11,$r9
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r20,$r9,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r20,$r17
	maskeqz	$r8,$r8,$r17
	or	$r16,$r13,$r11
	srli.d	$r19,$r5,6
	srli.d	$r18,$r12,6
	or	$r14,$r14,$r8
	bstrpick.w	$r11,$r16,15,0
	beqz	$r19,.L1357
	slli.w	$r7,$r18,0
	sltu	$r4,$r11,$r7
	sub.w	$r10,$r11,$r18
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r10,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r19,$r19,$r17
	or	$r8,$r13,$r11
	srli.d	$r9,$r5,7
	srli.d	$r20,$r12,7
	or	$r14,$r14,$r19
	bstrpick.w	$r11,$r8,15,0
	beqz	$r9,.L1357
	slli.w	$r16,$r20,0
	sltu	$r4,$r11,$r16
	sub.w	$r7,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r7,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r9,$r9,$r17
	or	$r19,$r13,$r11
	srli.d	$r10,$r5,8
	srli.d	$r20,$r12,8
	or	$r14,$r14,$r9
	bstrpick.w	$r11,$r19,15,0
	beqz	$r10,.L1357
	slli.w	$r8,$r20,0
	sltu	$r4,$r11,$r8
	sub.w	$r16,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r16,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r10,$r10,$r17
	or	$r9,$r13,$r11
	srli.d	$r7,$r5,9
	srli.d	$r20,$r12,9
	or	$r14,$r14,$r10
	bstrpick.w	$r11,$r9,15,0
	beqz	$r7,.L1357
	slli.w	$r8,$r20,0
	sltu	$r4,$r11,$r8
	sub.w	$r16,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r16,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r7,$r7,$r17
	or	$r10,$r13,$r11
	srli.d	$r19,$r5,10
	srli.d	$r20,$r12,10
	or	$r14,$r14,$r7
	bstrpick.w	$r11,$r10,15,0
	beqz	$r19,.L1357
	slli.w	$r9,$r20,0
	sltu	$r4,$r11,$r9
	sub.w	$r8,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r8,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r19,$r19,$r17
	or	$r7,$r13,$r11
	srli.d	$r16,$r5,11
	srli.d	$r20,$r12,11
	or	$r14,$r14,$r19
	bstrpick.w	$r11,$r7,15,0
	beqz	$r16,.L1357
	slli.w	$r10,$r20,0
	sltu	$r4,$r11,$r10
	sub.w	$r9,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r9,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r16,$r16,$r17
	or	$r19,$r13,$r11
	srli.d	$r8,$r5,12
	srli.d	$r20,$r12,12
	or	$r14,$r14,$r16
	bstrpick.w	$r11,$r19,15,0
	beqz	$r8,.L1357
	slli.w	$r7,$r20,0
	sltu	$r4,$r11,$r7
	sub.w	$r10,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r10,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r8,$r8,$r17
	or	$r16,$r13,$r11
	srli.d	$r9,$r5,13
	srli.d	$r20,$r12,13
	or	$r14,$r14,$r8
	bstrpick.w	$r11,$r16,15,0
	beqz	$r9,.L1357
	slli.w	$r7,$r20,0
	sltu	$r4,$r11,$r7
	sub.w	$r10,$r11,$r20
	xori	$r15,$r4,1
	bstrpick.w	$r17,$r15,7,0
	bstrpick.w	$r18,$r10,15,0
	masknez	$r11,$r11,$r17
	maskeqz	$r13,$r18,$r17
	maskeqz	$r9,$r9,$r17
	or	$r8,$r13,$r11
	srli.d	$r19,$r5,14
	srli.d	$r20,$r12,14
	or	$r14,$r14,$r9
	bstrpick.w	$r11,$r8,15,0
	beqz	$r19,.L1357
	slli.w	$r16,$r20,0
	sub.w	$r7,$r11,$r20
	sltu	$r20,$r11,$r16
	xori	$r18,$r20,1
	bstrpick.w	$r15,$r18,7,0
	bstrpick.w	$r4,$r7,15,0
	masknez	$r17,$r11,$r15
	maskeqz	$r11,$r4,$r15
	maskeqz	$r19,$r19,$r15
	or	$r13,$r11,$r17
	lu12i.w	$r10,16384>>12			# 0x4000
	srli.d	$r12,$r12,15
	or	$r14,$r14,$r19
	bstrpick.w	$r11,$r13,15,0
	beq	$r5,$r10,.L1357
	slli.w	$r5,$r12,0
	sltu	$r8,$r11,$r5
	sub.w	$r9,$r11,$r12
	xori	$r7,$r8,1
	bstrpick.w	$r10,$r7,7,0
	bstrpick.w	$r16,$r9,15,0
	masknez	$r20,$r11,$r10
	maskeqz	$r12,$r16,$r10
	or	$r4,$r12,$r20
	bstrpick.w	$r11,$r4,15,0
	or	$r14,$r10,$r14
	maskeqz	$r18,$r11,$r6
	masknez	$r6,$r14,$r6
	or	$r4,$r18,$r6
	jr	$r1
.L1363:
	addi.w	$r5,$r0,4			# 0x4
	b	.L1356
.L1365:
	addi.w	$r5,$r0,8			# 0x8
	b	.L1356
.L1367:
	addi.w	$r5,$r0,16			# 0x10
	b	.L1356
.L1377:
	addi.w	$r5,$r0,512			# 0x200
	b	.L1356
.L1369:
	addi.w	$r5,$r0,32			# 0x20
	b	.L1356
.L1371:
	addi.w	$r5,$r0,64			# 0x40
	b	.L1356
.L1373:
	addi.w	$r5,$r0,128			# 0x80
	b	.L1356
.L1375:
	addi.w	$r5,$r0,256			# 0x100
	b	.L1356
.L1433:
	sub.w	$r13,$r4,$r5
	bstrpick.w	$r7,$r13,15,0
	sub.d	$r5,$r12,$r17
	maskeqz	$r4,$r4,$r5
	masknez	$r8,$r7,$r5
	sltui	$r14,$r5,1
	or	$r11,$r8,$r4
	b	.L1357
.L1379:
	addi.w	$r5,$r0,1024			# 0x400
	b	.L1356
.L1381:
	ori	$r5,$r0,2048			# 0x800
	b	.L1356
.L1383:
	lu12i.w	$r5,4096>>12			# 0x1000
	b	.L1356
.L1385:
	lu12i.w	$r5,8192>>12			# 0x2000
	b	.L1356
.L1387:
	lu12i.w	$r5,16384>>12			# 0x4000
	b	.L1356
.L1434:
	lu12i.w	$r5,32768>>12			# 0x8000
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r13,32768>>12			# 0x8000
	b	.L1356
.L1388:
	lu12i.w	$r12,32768>>12			# 0x8000
	lu12i.w	$r5,32768>>12			# 0x8000
	lu12i.w	$r13,32768>>12			# 0x8000
	b	.L1356
.L1354:
	sub.w	$r10,$r4,$r5
	addi.w	$r14,$r0,1			# 0x1
	bstrpick.w	$r11,$r10,15,0
	b	.L1357
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
	addi.w	$r9,$r0,64			# 0x40
	addi.w	$r13,$r0,1			# 0x1
	lu32i.d	$r15,0>>32
	bltu	$r5,$r4,.L1436
	b	.L1458
	.align	5
.L1440:
	slli.d	$r5,$r5,1
	slli.d	$r13,$r13,1
	bleu	$r4,$r5,.L1438
	beqz	$r9,.L1439
.L1436:
	and	$r7,$r5,$r15
	addi.w	$r9,$r9,-1
	beqz	$r7,.L1440
.L1441:
	or	$r7,$r0,$r0
	.align	3
.L1442:
	sltu	$r10,$r4,$r5
	xori	$r16,$r10,1
	sub.d	$r11,$r4,$r5
	bstrpick.w	$r17,$r16,7,0
	maskeqz	$r18,$r13,$r17
	maskeqz	$r19,$r11,$r17
	masknez	$r20,$r4,$r17
	srli.d	$r13,$r13,1
	srli.d	$r5,$r5,1
	or	$r4,$r19,$r20
	or	$r7,$r7,$r18
	bnez	$r13,.L1442
.L1439:
	masknez	$r14,$r7,$r6
	maskeqz	$r6,$r4,$r6
	or	$r4,$r14,$r6
	jr	$r1
	.align	5
.L1438:
	bnez	$r13,.L1441
	b	.L1439
	.align	5
.L1458:
	sltu	$r14,$r4,$r5
	sub.d	$r12,$r4,$r5
	xori	$r5,$r14,1
	bstrpick.w	$r7,$r5,7,0
	maskeqz	$r8,$r12,$r7
	masknez	$r4,$r4,$r7
	or	$r4,$r8,$r4
	b	.L1439
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
	beqz	$r13,.L1461
	sll.w	$r8,$r4,$r5
	or	$r6,$r0,$r0
.L1462:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r6,31,0
	bstrins.d	$r4,$r8,63,32
.L1460:
	jr	$r1
	.align	5
.L1461:
	beqz	$r5,.L1460
	sub.w	$r15,$r0,$r5
	srai.d	$r14,$r4,32
	sll.w	$r6,$r4,$r5
	srl.w	$r4,$r4,$r15
	sll.w	$r5,$r14,$r5
	or	$r7,$r4,$r5
	slli.w	$r8,$r7,0
	b	.L1462
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
	beqz	$r14,.L1467
	sll.d	$r5,$r4,$r6
	or	$r4,$r0,$r0
	jr	$r1
	.align	5
.L1467:
	beqz	$r6,.L1469
	sub.w	$r7,$r0,$r6
	sll.d	$r5,$r5,$r6
	sll.d	$r4,$r4,$r6
	srl.d	$r6,$r12,$r7
	or	$r5,$r6,$r5
.L1469:
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
	or	$r12,$r4,$r0
	beqz	$r13,.L1473
	srai.d	$r10,$r4,32
	srai.w	$r8,$r10,31
	sra.w	$r9,$r10,$r5
.L1474:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r8,63,32
	bstrins.d	$r4,$r9,31,0
.L1472:
	jr	$r1
	.align	5
.L1473:
	beqz	$r5,.L1472
	srai.d	$r4,$r4,32
	sub.w	$r14,$r0,$r5
	srl.w	$r6,$r12,$r5
	sll.w	$r7,$r4,$r14
	sra.w	$r8,$r4,$r5
	or	$r5,$r7,$r6
	slli.w	$r9,$r5,0
	b	.L1474
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
	beqz	$r14,.L1479
	srai.d	$r5,$r5,63
	sra.d	$r4,$r12,$r6
	jr	$r1
	.align	5
.L1479:
	beqz	$r6,.L1481
	sub.w	$r7,$r0,$r6
	srl.d	$r4,$r4,$r6
	sra.d	$r5,$r5,$r6
	sll.d	$r6,$r12,$r7
	or	$r4,$r6,$r4
.L1481:
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
	ori	$r5,$r14,4095
	sltu	$r7,$r5,$r4
	xori	$r8,$r7,1
	slli.w	$r9,$r8,4
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r10,$r12,$r9
	lu12i.w	$r13,61440>>12			# 0xf000
	srl.w	$r4,$r4,$r10
	ori	$r6,$r13,3840
	and	$r11,$r6,$r4
	sltui	$r18,$r11,1
	slli.w	$r19,$r18,3
	addi.w	$r17,$r0,8			# 0x8
	sub.w	$r20,$r17,$r19
	srl.w	$r12,$r4,$r20
	andi	$r14,$r12,240
	sltui	$r13,$r14,1
	slli.w	$r6,$r13,2
	addi.w	$r16,$r0,4			# 0x4
	sub.w	$r17,$r16,$r6
	srl.w	$r7,$r12,$r17
	andi	$r8,$r7,12
	add.w	$r5,$r19,$r9
	sltui	$r9,$r8,1
	slli.w	$r10,$r9,1
	addi.w	$r15,$r0,2			# 0x2
	sub.w	$r11,$r15,$r10
	srl.w	$r18,$r7,$r11
	add.w	$r16,$r6,$r5
	sub.w	$r15,$r15,$r18
	andi	$r19,$r18,2
	add.w	$r4,$r10,$r16
	masknez	$r20,$r15,$r19
	add.w	$r4,$r20,$r4
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
	and	$r5,$r12,$r5
	or	$r7,$r5,$r4
	slli.d	$r6,$r13,6
	clz.d	$r8,$r7
	add.d	$r4,$r6,$r8
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
	blt	$r14,$r13,.L1490
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L1489
	slli.w	$r6,$r12,0
	slli.w	$r5,$r5,0
	sltu	$r7,$r5,$r6
	sltu	$r8,$r6,$r5
	or	$r4,$r0,$r0
	addi.d	$r9,$r7,1
	maskeqz	$r10,$r4,$r8
	masknez	$r11,$r9,$r8
	or	$r4,$r11,$r10
	jr	$r1
	.align	5
.L1490:
	or	$r4,$r0,$r0
.L1489:
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
	blt	$r14,$r13,.L1496
	addi.w	$r4,$r0,1			# 0x1
	bgt	$r14,$r13,.L1495
	slli.w	$r6,$r12,0
	slli.w	$r5,$r5,0
	sltu	$r4,$r6,$r5
	addi.w	$r7,$r0,-1			# 0xffffffffffffffff
	sltu	$r8,$r5,$r6
	masknez	$r9,$r8,$r4
	maskeqz	$r10,$r7,$r4
	or	$r4,$r9,$r10
	jr	$r1
	.align	5
.L1496:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1495:
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
	blt	$r5,$r7,.L1501
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r5,$r7,.L1500
	sltu	$r13,$r6,$r12
	or	$r4,$r0,$r0
	sltu	$r6,$r12,$r6
	addi.d	$r5,$r13,1
	maskeqz	$r7,$r4,$r6
	masknez	$r8,$r5,$r6
	or	$r4,$r8,$r7
	jr	$r1
	.align	5
.L1501:
	or	$r4,$r0,$r0
.L1500:
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
	sltui	$r5,$r14,1
	slli.w	$r6,$r5,4
	srl.w	$r12,$r4,$r6
	bstrpick.w	$r13,$r12,7,0
	sltui	$r4,$r13,1
	slli.w	$r7,$r4,3
	srl.w	$r8,$r12,$r7
	andi	$r10,$r8,15
	sltui	$r11,$r10,1
	slli.w	$r16,$r11,2
	srl.w	$r17,$r8,$r16
	andi	$r19,$r17,3
	sltui	$r20,$r19,1
	slli.w	$r14,$r20,1
	srl.w	$r5,$r17,$r14
	andi	$r12,$r5,3
	nor	$r13,$r0,$r12
	add.w	$r9,$r7,$r6
	srli.w	$r4,$r12,1
	andi	$r7,$r13,1
	addi.w	$r15,$r0,2			# 0x2
	add.w	$r18,$r16,$r9
	sub.w	$r15,$r15,$r4
	sub.w	$r8,$r0,$r7
	add.w	$r6,$r14,$r18
	and	$r9,$r8,$r15
	add.w	$r4,$r6,$r9
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
	masknez	$r5,$r5,$r4
	and	$r4,$r13,$r4
	or	$r7,$r5,$r4
	slli.d	$r6,$r12,6
	ctz.d	$r8,$r7
	add.d	$r4,$r6,$r8
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
	bnez	$r4,.L1508
	ctz.d	$r6,$r5
	addi.w	$r7,$r6,65
	maskeqz	$r4,$r7,$r5
	jr	$r1
	.align	5
.L1508:
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
	or	$r12,$r4,$r0
	beqz	$r13,.L1512
	bstrpick.d	$r10,$r4,63,32
	or	$r8,$r0,$r0
	srl.w	$r9,$r10,$r5
.L1513:
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r8,63,32
	bstrins.d	$r4,$r9,31,0
.L1511:
	jr	$r1
	.align	5
.L1512:
	beqz	$r5,.L1511
	bstrpick.d	$r4,$r4,63,32
	sub.w	$r14,$r0,$r5
	srl.w	$r6,$r12,$r5
	sll.w	$r7,$r4,$r14
	srl.w	$r8,$r4,$r5
	or	$r5,$r7,$r6
	slli.w	$r9,$r5,0
	b	.L1513
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
	beqz	$r14,.L1518
	srl.d	$r4,$r5,$r6
	or	$r5,$r0,$r0
	jr	$r1
	.align	5
.L1518:
	beqz	$r6,.L1520
	sub.w	$r7,$r0,$r6
	srl.d	$r4,$r4,$r6
	srl.d	$r5,$r5,$r6
	sll.d	$r6,$r12,$r7
	or	$r4,$r6,$r4
.L1520:
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
	srli.w	$r6,$r14,16
	srli.w	$r5,$r5,16
	or	$r4,$r0,$r0
	mul.w	$r7,$r13,$r6
	srli.w	$r17,$r15,16
	bstrpick.d	$r16,$r15,15,0
	mul.w	$r8,$r12,$r5
	add.w	$r10,$r7,$r17
	slli.w	$r11,$r10,16
	add.w	$r19,$r11,$r16
	srli.w	$r14,$r19,16
	srli.w	$r18,$r10,16
	bstrpick.d	$r13,$r19,15,0
	mul.w	$r9,$r6,$r5
	add.w	$r12,$r8,$r14
	slli.w	$r6,$r12,16
	srli.w	$r5,$r12,16
	add.w	$r15,$r6,$r13
	bstrins.d	$r4,$r15,31,0
	add.w	$r20,$r18,$r9
	add.w	$r7,$r5,$r20
	bstrins.d	$r4,$r7,63,32
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
	srai.d	$r9,$r5,32
	srai.d	$r18,$r4,32
	or	$r15,$r0,$r0
	mul.w	$r6,$r13,$r14
	srli.w	$r19,$r16,16
	mul.w	$r7,$r12,$r17
	add.w	$r11,$r6,$r19
	slli.w	$r20,$r11,16
	srli.w	$r12,$r11,16
	mul.w	$r8,$r14,$r17
	mul.w	$r10,$r4,$r9
	bstrpick.d	$r4,$r16,15,0
	add.w	$r14,$r20,$r4
	srli.w	$r17,$r14,16
	add.w	$r6,$r7,$r17
	bstrpick.d	$r16,$r14,15,0
	slli.w	$r7,$r6,16
	add.w	$r13,$r12,$r8
	add.w	$r9,$r7,$r16
	srli.w	$r8,$r6,16
	bstrins.d	$r15,$r9,31,0
	mul.w	$r5,$r5,$r18
	add.w	$r18,$r8,$r13
	bstrins.d	$r15,$r18,63,32
	srai.d	$r19,$r15,32
	or	$r4,$r15,$r0
	add.w	$r15,$r10,$r19
	add.w	$r10,$r5,$r15
	bstrins.d	$r4,$r10,63,32
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
	srli.d	$r6,$r13,32
	bstrpick.d	$r7,$r13,31,0
	mulw.d.wu	$r12,$r4,$r15
	add.d	$r8,$r5,$r6
	bstrpick.d	$r9,$r8,31,0
	srli.d	$r10,$r8,32
	mulw.d.wu	$r4,$r14,$r15
	add.d	$r11,$r12,$r9
	slli.d	$r17,$r11,32
	srli.d	$r18,$r11,32
	add.d	$r16,$r10,$r4
	add.d	$r5,$r16,$r18
	add.d	$r4,$r7,$r17
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
	srli.d	$r15,$r4,32
	mulw.d.wu	$r14,$r4,$r6
	srli.d	$r16,$r6,32
	mulw.d.wu	$r13,$r6,$r15
	mulw.d.wu	$r12,$r4,$r16
	mulw.d.wu	$r8,$r15,$r16
	mul.d	$r7,$r4,$r7
	bstrpick.d	$r4,$r14,31,0
	mul.d	$r5,$r6,$r5
	srli.d	$r6,$r14,32
	add.d	$r9,$r13,$r6
	bstrpick.d	$r10,$r9,31,0
	add.d	$r17,$r12,$r10
	srli.d	$r11,$r9,32
	add.d	$r18,$r11,$r8
	srli.d	$r19,$r17,32
	add.d	$r14,$r18,$r19
	slli.d	$r20,$r17,32
	add.d	$r15,$r7,$r14
	add.d	$r4,$r4,$r20
	add.d	$r5,$r15,$r5
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
	srli.w	$r14,$r4,16
	xor	$r6,$r4,$r14
	srli.w	$r7,$r6,8
	xor	$r8,$r6,$r7
	srli.w	$r9,$r8,4
	lu12i.w	$r13,24576>>12			# 0x6000
	xor	$r10,$r8,$r9
	ori	$r5,$r13,2454
	andi	$r11,$r10,15
	sra.w	$r15,$r5,$r11
	andi	$r4,$r15,1
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
	xor	$r4,$r12,$r5
	srli.w	$r14,$r4,16
	xor	$r7,$r4,$r14
	srli.w	$r8,$r7,8
	xor	$r9,$r7,$r8
	srli.w	$r10,$r9,4
	lu12i.w	$r13,24576>>12			# 0x6000
	xor	$r11,$r9,$r10
	ori	$r6,$r13,2454
	andi	$r15,$r11,15
	sra.w	$r16,$r6,$r15
	andi	$r4,$r16,1
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
	srli.w	$r14,$r4,8
	xor	$r6,$r4,$r14
	srli.w	$r7,$r6,4
	lu12i.w	$r13,24576>>12			# 0x6000
	xor	$r8,$r6,$r7
	ori	$r5,$r13,2454
	andi	$r9,$r8,15
	sra.w	$r10,$r5,$r9
	andi	$r4,$r10,1
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
	ori	$r5,$r13,1365
	srli.d	$r12,$r4,1
	bstrins.d	$r5,$r5,63,32
	and	$r11,$r12,$r5
	lu12i.w	$r14,858992640>>12			# 0x33333000
	sub.d	$r4,$r4,$r11
	ori	$r7,$r14,819
	bstrins.d	$r7,$r7,63,32
	srli.d	$r16,$r4,2
	and	$r17,$r4,$r7
	and	$r18,$r16,$r7
	add.d	$r19,$r18,$r17
	lu12i.w	$r15,252641280>>12			# 0xf0f0000
	ori	$r9,$r15,3855
	srli.d	$r20,$r19,4
	bstrins.d	$r9,$r9,63,32
	add.d	$r13,$r20,$r19
	and	$r5,$r13,$r9
	srli.d	$r6,$r5,32
	add.w	$r14,$r6,$r5
	srli.w	$r7,$r14,16
	add.w	$r8,$r7,$r14
	srli.w	$r15,$r8,8
	add.w	$r9,$r15,$r8
	andi	$r4,$r9,127
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
	ori	$r5,$r13,1365
	srli.w	$r15,$r4,1
	and	$r8,$r5,$r15
	sub.w	$r4,$r4,$r8
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r6,$r12,819
	srli.w	$r9,$r4,2
	and	$r10,$r6,$r4
	and	$r11,$r6,$r9
	add.w	$r16,$r11,$r10
	lu12i.w	$r14,252641280>>12			# 0xf0f0000
	srli.w	$r17,$r16,4
	ori	$r7,$r14,3855
	add.w	$r18,$r17,$r16
	and	$r19,$r18,$r7
	srli.w	$r20,$r19,16
	add.w	$r13,$r20,$r19
	srli.w	$r5,$r13,8
	add.w	$r12,$r5,$r13
	andi	$r4,$r12,63
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
	lu12i.w	$r14,1431654400>>12			# 0x55555000
	slli.d	$r12,$r5,63
	srli.d	$r17,$r4,1
	ori	$r6,$r14,1365
	or	$r18,$r12,$r17
	bstrins.d	$r6,$r6,63,32
	and	$r20,$r18,$r6
	srli.d	$r13,$r5,1
	sub.d	$r14,$r4,$r20
	and	$r19,$r13,$r6
	lu12i.w	$r16,858992640>>12			# 0x33333000
	sub.d	$r5,$r5,$r19
	sltu	$r4,$r4,$r14
	ori	$r8,$r16,819
	bstrins.d	$r8,$r8,63,32
	sub.d	$r16,$r5,$r4
	lu12i.w	$r15,252641280>>12			# 0xf0f0000
	or	$r9,$r8,$r0
	and	$r7,$r14,$r8
	srli.d	$r6,$r14,2
	slli.d	$r8,$r16,62
	ori	$r10,$r15,3855
	or	$r12,$r8,$r6
	srli.d	$r15,$r16,2
	bstrins.d	$r10,$r10,63,32
	and	$r17,$r15,$r9
	or	$r11,$r10,$r0
	and	$r10,$r16,$r9
	and	$r9,$r12,$r9
	add.d	$r18,$r9,$r7
	add.d	$r13,$r17,$r10
	sltu	$r19,$r18,$r9
	add.d	$r5,$r19,$r13
	srli.d	$r20,$r18,4
	slli.d	$r14,$r5,60
	or	$r6,$r14,$r20
	add.d	$r16,$r6,$r18
	srli.d	$r4,$r5,4
	add.d	$r7,$r4,$r5
	sltu	$r8,$r16,$r6
	add.d	$r10,$r8,$r7
	and	$r15,$r16,$r11
	and	$r11,$r10,$r11
	add.d	$r12,$r11,$r15
	srli.d	$r17,$r12,32
	add.w	$r9,$r17,$r12
	srli.w	$r13,$r9,16
	add.w	$r18,$r13,$r9
	srli.w	$r19,$r18,8
	add.w	$r20,$r19,$r18
	bstrpick.w	$r4,$r20,7,0
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
	pcalau12i	$r13,%pc_hi20(.LC19)
	beqz	$r12,.L1541
	fld.d	$f0,$r13,%pc_lo12(.LC19)
	or	$r9,$r4,$r0
	.align	3
.L1538:
	fmul.d	$f0,$f0,$f1
.L1536:
	srli.w	$r5,$r9,31
	add.w	$r6,$r5,$r9
	srai.d	$r9,$r6,1
	beqz	$r9,.L1537
	srli.w	$r7,$r9,31
	andi	$r14,$r9,1
	fmul.d	$f1,$f1,$f1
	add.w	$r8,$r7,$r9
	bnez	$r14,.L1538
.L1542:
	srai.d	$r9,$r8,1
	srli.w	$r7,$r9,31
	andi	$r14,$r9,1
	fmul.d	$f1,$f1,$f1
	add.w	$r8,$r7,$r9
	bnez	$r14,.L1538
	b	.L1542
	.align	5
.L1537:
	blt	$r4,$r0,.L1543
	jr	$r1
	.align	5
.L1541:
	fld.d	$f0,$r13,%pc_lo12(.LC19)
	or	$r9,$r4,$r0
	b	.L1536
	.align	5
.L1543:
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
	pcalau12i	$r13,%pc_hi20(.LC25)
	beqz	$r12,.L1550
	fld.s	$f0,$r13,%pc_lo12(.LC25)
	or	$r9,$r4,$r0
	.align	3
.L1547:
	fmul.s	$f0,$f0,$f1
.L1545:
	srli.w	$r5,$r9,31
	add.w	$r6,$r5,$r9
	srai.d	$r9,$r6,1
	beqz	$r9,.L1546
	srli.w	$r7,$r9,31
	andi	$r14,$r9,1
	fmul.s	$f1,$f1,$f1
	add.w	$r8,$r7,$r9
	bnez	$r14,.L1547
.L1551:
	srai.d	$r9,$r8,1
	srli.w	$r7,$r9,31
	andi	$r14,$r9,1
	fmul.s	$f1,$f1,$f1
	add.w	$r8,$r7,$r9
	bnez	$r14,.L1547
	b	.L1551
	.align	5
.L1546:
	blt	$r4,$r0,.L1552
	jr	$r1
	.align	5
.L1550:
	fld.s	$f0,$r13,%pc_lo12(.LC25)
	or	$r9,$r4,$r0
	b	.L1545
	.align	5
.L1552:
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
	bltu	$r14,$r13,.L1555
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L1554
	slli.w	$r6,$r12,0
	slli.w	$r5,$r5,0
	sltu	$r7,$r5,$r6
	sltu	$r8,$r6,$r5
	or	$r4,$r0,$r0
	addi.d	$r9,$r7,1
	maskeqz	$r10,$r4,$r8
	masknez	$r11,$r9,$r8
	or	$r4,$r11,$r10
	jr	$r1
	.align	5
.L1555:
	or	$r4,$r0,$r0
.L1554:
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
	bltu	$r14,$r13,.L1561
	addi.w	$r4,$r0,1			# 0x1
	bgtu	$r14,$r13,.L1560
	slli.w	$r6,$r12,0
	slli.w	$r5,$r5,0
	sltu	$r4,$r6,$r5
	addi.w	$r7,$r0,-1			# 0xffffffffffffffff
	sltu	$r8,$r5,$r6
	masknez	$r9,$r8,$r4
	maskeqz	$r10,$r7,$r4
	or	$r4,$r9,$r10
	jr	$r1
	.align	5
.L1561:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L1560:
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
	bltu	$r5,$r7,.L1566
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r5,$r7,.L1565
	sltu	$r13,$r6,$r12
	or	$r4,$r0,$r0
	sltu	$r6,$r12,$r6
	addi.d	$r5,$r13,1
	maskeqz	$r7,$r4,$r6
	masknez	$r8,$r5,$r6
	or	$r4,$r8,$r7
	jr	$r1
	.align	5
.L1566:
	or	$r4,$r0,$r0
.L1565:
	jr	$r1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.section	.rodata.cst32,"aM",@progbits,32
	.align	5
.LC0:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.byte	17
	.byte	16
	.byte	19
	.byte	18
	.byte	21
	.byte	20
	.byte	23
	.byte	22
	.byte	25
	.byte	24
	.byte	27
	.byte	26
	.byte	29
	.byte	28
	.byte	31
	.byte	30
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	-8388609
	.align	2
.LC2:
	.word	2139095039
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC5:
	.word	-1
	.word	-1048577
	.align	3
.LC6:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC9:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC10:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.set	.LC11,.LC15+12
	.section	.rodata.cst4
	.align	2
.LC12:
	.word	1056964608
	.set	.LC13,.LC15+8
	.section	.rodata.cst8
	.align	3
.LC14:
	.word	0
	.word	1071644672
	.section	.rodata.cst16
	.align	4
.LC15:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	4
.LC16:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.section	.rodata.cst8
	.align	3
.LC17:
	.word	0
	.word	-1074790400
	.align	3
.LC18:
	.word	0
	.word	-1075838976
	.align	3
.LC19:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC22:
	.word	1191182336
	.section	.rodata.cst32
	.align	5
.LC23:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.align	5
.LC24:
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.section	.rodata.cst4
	.align	2
.LC25:
	.word	1065353216
	.section	.rodata
	.align	5
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
