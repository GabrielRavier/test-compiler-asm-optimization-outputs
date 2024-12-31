	.file	"mini-libc.c"
	.text
	.align	2
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	bgeu	$r13,$r12,.L8
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,56
	b	.L9
.L10:
	ld.d	$r12,$r3,40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,56
	ld.d	$r12,$r3,40
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,56
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L9:
	ld.d	$r12,$r3,8
	bnez	$r12,.L10
	b	.L11
.L8:
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	beq	$r13,$r12,.L11
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,48
	b	.L12
.L13:
	ld.d	$r13,$r3,16
	addi.d	$r12,$r13,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,48
	addi.d	$r14,$r12,1
	st.d	$r14,$r3,48
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L12:
	ld.d	$r12,$r3,8
	bnez	$r12,.L13
.L11:
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	or	$r12,$r6,$r0
	stptr.d	$r7,$r3,0
	st.w	$r6,$r3,12
	ld.w	$r12,$r3,12
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,44
	b	.L17
.L19:
	ldptr.d	$r12,$r3,0
	addi.d	$r12,$r12,-1
	stptr.d	$r12,$r3,0
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
.L17:
	ldptr.d	$r12,$r3,0
	beqz	$r12,.L18
	ld.d	$r12,$r3,16
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r3,24
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,44
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L19
.L18:
	ldptr.d	$r12,$r3,0
	beqz	$r12,.L20
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	b	.L21
.L20:
	or	$r12,$r0,$r0
.L21:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	or	$r12,$r5,$r0
	st.d	$r6,$r3,8
	st.w	$r5,$r3,20
	ld.w	$r12,$r3,20
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,44
	b	.L24
.L26:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L24:
	ld.d	$r12,$r3,8
	beqz	$r12,.L25
	ld.d	$r12,$r3,24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,44
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L26
.L25:
	ld.d	$r12,$r3,8
	beqz	$r12,.L27
	ld.d	$r12,$r3,24
	b	.L29
.L27:
	or	$r12,$r0,$r0
.L29:
	nop
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	b	.L32
.L34:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,16
.L32:
	ld.d	$r12,$r3,8
	beqz	$r12,.L33
	ld.d	$r12,$r3,24
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r3,16
	ld.bu	$r12,$r12,0
	beq	$r13,$r12,.L34
.L33:
	ld.d	$r12,$r3,8
	beqz	$r12,.L35
	ld.d	$r12,$r3,24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	b	.L36
.L35:
	or	$r12,$r0,$r0
.L36:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L40
.L41:
	ld.d	$r13,$r3,16
	addi.d	$r12,$r13,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	addi.d	$r14,$r12,1
	st.d	$r14,$r3,40
	ld.bu	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L40:
	ld.d	$r12,$r3,8
	bnez	$r12,.L41
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	or	$r12,$r5,$r0
	st.d	$r6,$r3,8
	st.w	$r5,$r3,20
	ld.w	$r12,$r3,20
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,44
	b	.L45
.L47:
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,44
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L45
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	b	.L46
.L45:
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,8
	bnez	$r12,.L47
	or	$r12,$r0,$r0
.L46:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	or	$r12,$r5,$r0
	st.d	$r6,$r3,8
	st.w	$r5,$r3,20
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L50
.L51:
	ld.w	$r12,$r3,20
	bstrpick.w	$r13,$r12,7,0
	ld.d	$r12,$r3,40
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
	ld.d	$r12,$r3,40
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,40
.L50:
	ld.d	$r12,$r3,8
	bnez	$r12,.L51
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	b	.L55
.L56:
	ldptr.d	$r12,$r3,0
	addi.d	$r12,$r12,1
	stptr.d	$r12,$r3,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L55:
	ldptr.d	$r12,$r3,0
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	bnez	$r12,.L56
	ld.d	$r12,$r3,8
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r5,$r3,4
	ld.w	$r12,$r3,4
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,28
	b	.L60
.L62:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L60:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	beqz	$r12,.L61
	ld.d	$r12,$r3,8
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L62
.L61:
	ld.d	$r12,$r3,8
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r13,$r3,12
.L68:
	ld.b	$r13,$r12,0
	or	$r14,$r13,$r0
	ld.w	$r13,$r3,12
	slli.w	$r13,$r13,0
	beq	$r13,$r14,.L69
	or	$r13,$r12,$r0
	addi.d	$r12,$r13,1
	ld.b	$r13,$r13,0
	bnez	$r13,.L68
	or	$r12,$r0,$r0
	b	.L67
.L69:
	nop
.L67:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	b	.L72
.L74:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
	ldptr.d	$r12,$r3,0
	addi.d	$r12,$r12,1
	stptr.d	$r12,$r3,0
.L72:
	ld.d	$r12,$r3,8
	ld.b	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L73
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	bnez	$r12,.L74
.L73:
	ld.d	$r12,$r3,8
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	b	.L78
.L79:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
.L78:
	ld.d	$r12,$r3,24
	ld.b	$r12,$r12,0
	bnez	$r12,.L79
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	sub.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	2
	.globl	strncmp
	.type	strncmp, @function
strncmp:
.LFB14 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,40
	bnez	$r12,.L85
	or	$r12,$r0,$r0
	b	.L84
.L87:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,40
.L85:
	ld.d	$r12,$r3,24
	ld.bu	$r12,$r12,0
	beqz	$r12,.L86
	ld.d	$r12,$r3,16
	ld.bu	$r12,$r12,0
	beqz	$r12,.L86
	ld.d	$r12,$r3,40
	beqz	$r12,.L86
	ld.d	$r12,$r3,24
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r3,16
	ld.bu	$r12,$r12,0
	beq	$r13,$r12,.L87
.L86:
	ld.d	$r12,$r3,24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
.L84:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	b	.L90
.L91:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,16
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	ld.d	$r13,$r3,24
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,2
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,2
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-2
	st.d	$r12,$r3,8
.L90:
	ld.d	$r13,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	bgt	$r13,$r12,.L91
	nop
	nop
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	ori	$r12,$r12,32
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,-97
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,25			# 0x19
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,127			# 0x7f
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r13,$r12,.L100
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,9			# 0x9
	bne	$r13,$r12,.L101
.L100:
	addi.w	$r12,$r0,1			# 0x1
	b	.L102
.L101:
	or	$r12,$r0,$r0
.L102:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ldptr.w	$r12,$r3,12
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L106
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,127			# 0x7f
	bne	$r13,$r12,.L107
.L106:
	addi.w	$r12,$r0,1			# 0x1
	b	.L108
.L107:
	or	$r12,$r0,$r0
.L108:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-33
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,93			# 0x5d
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-97
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,25			# 0x19
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-32
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,94			# 0x5e
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r13,$r12,.L124
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-9
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,4			# 0x4
	bgtu	$r13,$r12,.L125
.L124:
	addi.w	$r12,$r0,1			# 0x1
	b	.L126
.L125:
	or	$r12,$r0,$r0
.L126:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ldptr.w	$r12,$r3,12
	addi.w	$r12,$r12,-65
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,25			# 0x19
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L133
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-127
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,32			# 0x20
	bleu	$r13,$r12,.L133
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4056
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,1			# 0x1
	bleu	$r13,$r12,.L133
	ld.w	$r12,$r3,12
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,7
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	bgtu	$r13,$r12,.L134
.L133:
	addi.w	$r12,$r0,1			# 0x1
	b	.L135
.L134:
	or	$r12,$r0,$r0
.L135:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,254			# 0xfe
	bgtu	$r13,$r12,.L142
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,32			# 0x20
	sltu	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L143
.L142:
	ld.w	$r12,$r3,12
	slli.w	$r13,$r12,0
	lu12i.w	$r12,8192>>12			# 0x2000
	ori	$r12,$r12,39
	bleu	$r13,$r12,.L144
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4054
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,45056>>12			# 0xb000
	ori	$r12,$r12,2005
	bleu	$r13,$r12,.L144
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-57344>>12			# 0xffffffffffff2000
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,4096>>12			# 0x1000
	ori	$r12,$r12,4088
	bgtu	$r13,$r12,.L145
.L144:
	addi.w	$r12,$r0,1			# 0x1
	b	.L143
.L145:
	ld.w	$r12,$r3,12
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,4
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,1048576>>12			# 0x100000
	ori	$r12,$r12,3
	bgtu	$r13,$r12,.L146
	ld.w	$r13,$r3,12
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4094
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4094
	bne	$r13,$r12,.L147
.L146:
	or	$r12,$r0,$r0
	b	.L143
.L147:
	addi.w	$r12,$r0,1			# 0x1
.L143:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L150
	ld.w	$r12,$r3,12
	ori	$r12,$r12,32
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,-97
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,5			# 0x5
	bgtu	$r13,$r12,.L151
.L150:
	addi.w	$r12,$r0,1			# 0x1
	b	.L152
.L151:
	or	$r12,$r0,$r0
.L152:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,8
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L159
	fld.d	$f0,$r3,8
	b	.L160
.L159:
	fld.d	$f1,$r3,0
	fld.d	$f0,$r3,0
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L161
	fld.d	$f0,$r3,0
	b	.L160
.L161:
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L166
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fsub.d	$f0,$f1,$f0
	b	.L160
.L166:
	movgr2fr.d	$f0,$r0
.L160:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,12
	fst.s	$f1,$r3,8
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,12
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L169
	fld.s	$f0,$r3,12
	b	.L170
.L169:
	fld.s	$f1,$r3,8
	fld.s	$f0,$r3,8
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L171
	fld.s	$f0,$r3,8
	b	.L170
.L171:
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L176
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fsub.s	$f0,$f1,$f0
	b	.L170
.L176:
	movgr2fr.w	$f0,$r0
.L170:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,8
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L179
	fld.d	$f0,$r3,0
	b	.L180
.L179:
	fld.d	$f1,$r3,0
	fld.d	$f0,$r3,0
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L181
	fld.d	$f0,$r3,8
	b	.L180
.L181:
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L182
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L183
	fld.d	$f0,$r3,0
	b	.L180
.L183:
	fld.d	$f0,$r3,8
	b	.L180
.L182:
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L189
	fld.d	$f0,$r3,0
	b	.L180
.L189:
	fld.d	$f0,$r3,8
.L180:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	fst.s	$f0,$r3,12
	fst.s	$f1,$r3,8
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,12
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L192
	fld.s	$f0,$r3,8
	b	.L193
.L192:
	fld.s	$f1,$r3,8
	fld.s	$f0,$r3,8
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L194
	fld.s	$f0,$r3,12
	b	.L193
.L194:
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ld.w	$r13,$r3,8
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	beq	$r13,$r12,.L195
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L196
	fld.s	$f0,$r3,8
	b	.L193
.L196:
	fld.s	$f0,$r3,12
	b	.L193
.L195:
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L202
	fld.s	$f0,$r3,8
	b	.L193
.L202:
	fld.s	$f0,$r3,12
.L193:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	.cfi_offset 1, -8
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	stptr.d	$r6,$r3,0
	st.d	$r7,$r3,8
	ld.d	$r6,$r3,16
	ld.d	$r7,$r3,24
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r4,.L219
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
	b	.L207
.L219:
	ldptr.d	$r6,$r3,0
	ld.d	$r7,$r3,8
	ldptr.d	$r4,$r3,0
	ld.d	$r5,$r3,8
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L220
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L207
.L220:
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L210
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L211
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
	b	.L207
.L211:
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L207
.L210:
	ldptr.d	$r6,$r3,0
	ld.d	$r7,$r3,8
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	bge	$r12,$r0,.L221
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
	b	.L207
.L221:
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
.L207:
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
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
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,8
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L224
	fld.d	$f0,$r3,0
	b	.L225
.L224:
	fld.d	$f1,$r3,0
	fld.d	$f0,$r3,0
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L226
	fld.d	$f0,$r3,8
	b	.L225
.L226:
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L227
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L228
	fld.d	$f0,$r3,8
	b	.L225
.L228:
	fld.d	$f0,$r3,0
	b	.L225
.L227:
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L234
	fld.d	$f0,$r3,8
	b	.L225
.L234:
	fld.d	$f0,$r3,0
.L225:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	fst.s	$f0,$r3,12
	fst.s	$f1,$r3,8
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,12
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L237
	fld.s	$f0,$r3,8
	b	.L238
.L237:
	fld.s	$f1,$r3,8
	fld.s	$f0,$r3,8
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L239
	fld.s	$f0,$r3,12
	b	.L238
.L239:
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ld.w	$r13,$r3,8
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	beq	$r13,$r12,.L240
	ld.w	$r13,$r3,12
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L241
	fld.s	$f0,$r3,12
	b	.L238
.L241:
	fld.s	$f0,$r3,8
	b	.L238
.L240:
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L247
	fld.s	$f0,$r3,12
	b	.L238
.L247:
	fld.s	$f0,$r3,8
.L238:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
	jr	$r1
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
	.cfi_offset 1, -8
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	stptr.d	$r6,$r3,0
	st.d	$r7,$r3,8
	ld.d	$r6,$r3,16
	ld.d	$r7,$r3,24
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r4,.L264
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
	b	.L252
.L264:
	ldptr.d	$r6,$r3,0
	ld.d	$r7,$r3,8
	ldptr.d	$r4,$r3,0
	ld.d	$r5,$r3,8
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L265
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L252
.L265:
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,8
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L255
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L256
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L252
.L256:
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
	b	.L252
.L255:
	ldptr.d	$r6,$r3,0
	ld.d	$r7,$r3,8
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	bge	$r12,$r0,.L266
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L252
.L266:
	ldptr.d	$r13,$r3,0
	ld.d	$r12,$r3,8
.L252:
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	st.w	$r12,$r3,20
	la.local	$r12,s.0
	st.d	$r12,$r3,24
	b	.L269
.L270:
	ld.w	$r12,$r3,20
	andi	$r12,$r12,63
	slli.w	$r12,$r12,0
	la.local	$r13,digits
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
	ld.w	$r12,$r3,20
	srli.w	$r12,$r12,6
	st.w	$r12,$r3,20
.L269:
	ld.w	$r12,$r3,20
	slli.w	$r12,$r12,0
	bnez	$r12,.L270
	ld.d	$r12,$r3,24
	st.b	$r0,$r12,0
	la.local	$r12,s.0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r13,$r12,31,0
	la.local	$r12,seed
	stptr.d	$r13,$r12,0
	nop
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	ldptr.d	$r13,$r12,0
	lu12i.w	$r12,1284861952>>12			# 0x4c957000
	ori	$r12,$r12,3885
	lu32i.d	$r12,0x1f42d00000000>>32
	lu52i.d	$r12,$r12,0x5850000000000000>>52
	mul.d	$r12,$r13,$r12
	addi.d	$r13,$r12,1
	la.local	$r12,seed
	stptr.d	$r13,$r12,0
	la.local	$r12,seed
	ldptr.d	$r12,$r12,0
	srli.d	$r12,$r12,33
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ldptr.d	$r12,$r3,0
	bnez	$r12,.L278
	ld.d	$r12,$r3,8
	st.d	$r0,$r12,8
	ld.d	$r12,$r3,8
	ld.d	$r13,$r12,8
	ld.d	$r12,$r3,8
	stptr.d	$r13,$r12,0
	b	.L277
.L278:
	ldptr.d	$r12,$r3,0
	ldptr.d	$r13,$r12,0
	ld.d	$r12,$r3,8
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r3,8
	ldptr.d	$r13,$r3,0
	st.d	$r13,$r12,8
	ldptr.d	$r12,$r3,0
	ld.d	$r13,$r3,8
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r3,8
	ldptr.d	$r12,$r12,0
	beqz	$r12,.L277
	ld.d	$r12,$r3,8
	ldptr.d	$r12,$r12,0
	ld.d	$r13,$r3,8
	st.d	$r13,$r12,8
.L277:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	ldptr.d	$r12,$r12,0
	beqz	$r12,.L282
	ld.d	$r12,$r3,8
	ldptr.d	$r12,$r12,0
	ld.d	$r13,$r3,8
	ld.d	$r13,$r13,8
	st.d	$r13,$r12,8
.L282:
	ld.d	$r12,$r3,8
	ld.d	$r12,$r12,8
	beqz	$r12,.L284
	ld.d	$r12,$r3,8
	ld.d	$r12,$r12,8
	ld.d	$r13,$r3,8
	ldptr.d	$r13,$r13,0
	stptr.d	$r13,$r12,0
.L284:
	nop
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	st.d	$r23,$r3,80
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	st.d	$r4,$r3,40
	st.d	$r5,$r3,32
	st.d	$r6,$r3,24
	st.d	$r7,$r3,16
	st.d	$r8,$r3,8
	ld.d	$r23,$r3,16
	or	$r12,$r23,$r0
	addi.d	$r12,$r23,-1
	st.d	$r12,$r3,64
	ld.d	$r12,$r3,24
	ldptr.d	$r12,$r12,0
	st.d	$r12,$r3,56
	st.d	$r0,$r3,72
	b	.L287
.L290:
	ld.d	$r12,$r3,72
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r3,32
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	or	$r5,$r13,$r0
	ld.d	$r4,$r3,40
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	bnez	$r12,.L288
	ld.d	$r12,$r3,72
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r3,32
	add.d	$r12,$r13,$r12
	b	.L289
.L288:
	ld.d	$r12,$r3,72
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,72
.L287:
	ld.d	$r13,$r3,72
	ld.d	$r12,$r3,56
	bltu	$r13,$r12,.L290
	ld.d	$r12,$r3,56
	addi.d	$r13,$r12,1
	ld.d	$r12,$r3,24
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r3,56
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r3,32
	add.d	$r12,$r13,$r12
	ld.d	$r6,$r3,16
	ld.d	$r5,$r3,40
	or	$r4,$r12,$r0
	bl	memcpy
	or	$r12,$r4,$r0
.L289:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	ld.d	$r23,$r3,80
	.cfi_restore 23
	addi.d	$r3,$r3,96
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	2
	.globl	lfind
	.type	lfind, @function
lfind:
.LFB45 = .
	.cfi_startproc
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	st.d	$r23,$r3,80
	.cfi_offset 1, -8
	.cfi_offset 23, -16
	st.d	$r4,$r3,40
	st.d	$r5,$r3,32
	st.d	$r6,$r3,24
	st.d	$r7,$r3,16
	st.d	$r8,$r3,8
	ld.d	$r23,$r3,16
	or	$r12,$r23,$r0
	addi.d	$r12,$r23,-1
	st.d	$r12,$r3,64
	ld.d	$r12,$r3,24
	ldptr.d	$r12,$r12,0
	st.d	$r12,$r3,56
	st.d	$r0,$r3,72
	b	.L293
.L296:
	ld.d	$r12,$r3,72
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r3,32
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	or	$r5,$r13,$r0
	ld.d	$r4,$r3,40
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	bnez	$r12,.L294
	ld.d	$r12,$r3,72
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r3,32
	add.d	$r12,$r13,$r12
	b	.L295
.L294:
	ld.d	$r12,$r3,72
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,72
.L293:
	ld.d	$r13,$r3,72
	ld.d	$r12,$r3,56
	bltu	$r13,$r12,.L296
	or	$r12,$r0,$r0
.L295:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	ld.d	$r23,$r3,80
	.cfi_restore 23
	addi.d	$r3,$r3,96
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	2
	.globl	abs
	.type	abs, @function
abs:
.LFB46 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	srai.w	$r12,$r12,31
	ld.w	$r13,$r3,12
	xor	$r13,$r12,$r13
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	st.w	$r0,$r3,28
	st.w	$r0,$r3,24
	b	.L302
.L303:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L302:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L303
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L304
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L306
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,24
.L304:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
	b	.L306
.L307:
	ld.w	$r13,$r3,28
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,2
	add.w	$r12,$r12,$r13
	slli.w	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r14,$r12,1
	st.d	$r14,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
.L306:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L307
	ld.w	$r12,$r3,24
	slli.w	$r12,$r12,0
	bnez	$r12,.L308
	ld.w	$r12,$r3,28
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	b	.L309
.L308:
	ldptr.w	$r12,$r3,28
.L309:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	2
	.globl	atol
	.type	atol, @function
atol:
.LFB48 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	st.d	$r0,$r3,24
	st.w	$r0,$r3,20
	b	.L313
.L314:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L313:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L314
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L315
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L317
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,20
.L315:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
	b	.L317
.L318:
	ld.d	$r13,$r3,24
	or	$r12,$r13,$r0
	slli.d	$r12,$r12,2
	add.d	$r12,$r12,$r13
	slli.d	$r12,$r12,1
	or	$r14,$r12,$r0
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,1
	st.d	$r13,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.d	$r12,$r14,$r12
	st.d	$r12,$r3,24
.L317:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L318
	ld.w	$r12,$r3,20
	slli.w	$r12,$r12,0
	bnez	$r12,.L319
	ld.d	$r12,$r3,24
	sub.d	$r12,$r0,$r12
	b	.L321
.L319:
	ld.d	$r12,$r3,24
.L321:
	nop
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	2
	.globl	atoll
	.type	atoll, @function
atoll:
.LFB49 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	st.d	$r0,$r3,24
	st.w	$r0,$r3,20
	b	.L324
.L325:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L324:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L325
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L326
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L328
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,20
.L326:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
	b	.L328
.L329:
	ld.d	$r13,$r3,24
	or	$r12,$r13,$r0
	slli.d	$r12,$r12,2
	add.d	$r12,$r12,$r13
	slli.d	$r12,$r12,1
	or	$r14,$r12,$r0
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,1
	st.d	$r13,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.d	$r12,$r14,$r12
	st.d	$r12,$r3,24
.L328:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L329
	ld.w	$r12,$r3,20
	slli.w	$r12,$r12,0
	bnez	$r12,.L330
	ld.d	$r12,$r3,24
	sub.d	$r12,$r0,$r12
	b	.L332
.L330:
	ld.d	$r12,$r3,24
.L332:
	nop
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	2
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB50 = .
	.cfi_startproc
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	.cfi_offset 1, -8
	st.d	$r4,$r3,40
	st.d	$r5,$r3,32
	st.d	$r6,$r3,24
	st.d	$r7,$r3,16
	st.d	$r8,$r3,8
	b	.L335
.L340:
	ld.d	$r12,$r3,24
	srli.d	$r13,$r12,1
	ld.d	$r12,$r3,16
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r3,32
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,56
	ld.d	$r12,$r3,8
	ld.d	$r5,$r3,56
	ld.d	$r4,$r3,40
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	st.w	$r12,$r3,52
	ld.w	$r12,$r3,52
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L336
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,1
	st.d	$r12,$r3,24
	b	.L335
.L336:
	ld.w	$r12,$r3,52
	slli.w	$r12,$r12,0
	ble	$r12,$r0,.L338
	ld.d	$r13,$r3,56
	ld.d	$r12,$r3,16
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,1
	ld.d	$r13,$r3,24
	sub.d	$r12,$r13,$r12
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,24
	b	.L335
.L338:
	ld.d	$r12,$r3,56
	b	.L339
.L335:
	ld.d	$r12,$r3,24
	bnez	$r12,.L340
	or	$r12,$r0,$r0
.L339:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,72
	.cfi_restore 1
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	.cfi_offset 1, -8
	st.d	$r4,$r3,40
	st.d	$r5,$r3,32
	st.d	$r6,$r3,24
	st.d	$r7,$r3,16
	st.d	$r8,$r3,8
	stptr.d	$r9,$r3,0
	ld.d	$r12,$r3,24
	st.w	$r12,$r3,76
	b	.L343
.L347:
	ld.w	$r12,$r3,76
	srai.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	ld.d	$r12,$r3,16
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r3,32
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,64
	ld.d	$r12,$r3,8
	ldptr.d	$r6,$r3,0
	ld.d	$r5,$r3,64
	ld.d	$r4,$r3,40
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	st.w	$r12,$r3,60
	ld.w	$r12,$r3,60
	slli.w	$r12,$r12,0
	bnez	$r12,.L344
	ld.d	$r12,$r3,64
	b	.L345
.L344:
	ld.w	$r12,$r3,60
	slli.w	$r12,$r12,0
	ble	$r12,$r0,.L346
	ld.d	$r13,$r3,64
	ld.d	$r12,$r3,16
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	ld.w	$r12,$r3,76
	addi.w	$r12,$r12,-1
	st.w	$r12,$r3,76
.L346:
	ld.w	$r12,$r3,76
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,76
.L343:
	ld.w	$r12,$r3,76
	slli.w	$r12,$r12,0
	bnez	$r12,.L347
	or	$r12,$r0,$r0
.L345:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r13,$r4,$r0
	or	$r14,$r5,$r0
	st.w	$r13,$r3,12
	or	$r13,$r14,$r0
	st.w	$r13,$r3,8
	ld.w	$r14,$r3,12
	ld.w	$r13,$r3,8
	slli.w	$r14,$r14,0
	slli.w	$r13,$r13,0
	div.w	$r14,$r14,$r13
	bne	$r13,$r0,1f
	break	7
1:
	or	$r13,$r14,$r0
	slli.w	$r14,$r13,0
	ld.w	$r15,$r3,12
	ld.w	$r13,$r3,8
	slli.w	$r15,$r15,0
	slli.w	$r13,$r13,0
	mod.w	$r15,$r15,$r13
	bne	$r13,$r0,1f
	break	7
1:
	or	$r13,$r15,$r0
	slli.w	$r13,$r13,0
	bstrins.d	$r12,$r14,31,0
	bstrins.d	$r12,$r13,63,32
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	srai.d	$r13,$r12,63
	ld.d	$r12,$r3,8
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	div.d	$r14,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r15,$r14,$r0
	or	$r14,$r13,$r0
	or	$r13,$r15,$r0
	or	$r12,$r14,$r0
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	srai.d	$r13,$r12,63
	ld.d	$r12,$r3,8
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	div.d	$r14,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r15,$r14,$r0
	or	$r14,$r13,$r0
	or	$r13,$r15,$r0
	or	$r12,$r14,$r0
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	srai.d	$r13,$r12,63
	ld.d	$r12,$r3,8
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	div.d	$r14,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r15,$r14,$r0
	or	$r14,$r13,$r0
	or	$r13,$r15,$r0
	or	$r12,$r14,$r0
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r5,$r3,4
	b	.L371
.L373:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,8
.L371:
	ld.d	$r12,$r3,8
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L372
	ld.d	$r12,$r3,8
	ldptr.w	$r13,$r12,0
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L373
.L372:
	ld.d	$r12,$r3,8
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L374
	ld.d	$r12,$r3,8
	b	.L376
.L374:
	or	$r12,$r0,$r0
.L376:
	nop
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	b	.L379
.L381:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,8
	ldptr.d	$r12,$r3,0
	addi.d	$r12,$r12,4
	stptr.d	$r12,$r3,0
.L379:
	ld.d	$r12,$r3,8
	ldptr.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	ldptr.w	$r12,$r12,0
	bne	$r13,$r12,.L380
	ld.d	$r12,$r3,8
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L380
	ldptr.d	$r12,$r3,0
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L381
.L380:
	ld.d	$r12,$r3,8
	ldptr.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L382
	ld.d	$r12,$r3,8
	ldptr.w	$r13,$r12,0
	ldptr.d	$r12,$r3,0
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L383
.L382:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
.L383:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
.L387:
	ldptr.d	$r13,$r3,0
	addi.d	$r12,$r13,4
	stptr.d	$r12,$r3,0
	ld.d	$r12,$r3,24
	addi.d	$r14,$r12,4
	st.d	$r14,$r3,24
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L387
	ld.d	$r12,$r3,8
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	b	.L391
.L392:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,24
.L391:
	ld.d	$r12,$r3,24
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L392
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	sub.d	$r12,$r13,$r12
	srai.d	$r12,$r12,2
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	2
	.globl	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	b	.L396
.L398:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,16
.L396:
	ld.d	$r12,$r3,8
	beqz	$r12,.L397
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	bne	$r13,$r12,.L397
	ld.d	$r12,$r3,24
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L397
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L398
.L397:
	ld.d	$r12,$r3,8
	beqz	$r12,.L399
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L400
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L402
.L400:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L402
.L399:
	or	$r12,$r0,$r0
.L402:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,24
	or	$r12,$r5,$r0
	st.d	$r6,$r3,8
	st.w	$r5,$r3,20
	b	.L406
.L408:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,24
.L406:
	ld.d	$r12,$r3,8
	beqz	$r12,.L407
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.w	$r12,$r3,20
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L408
.L407:
	ld.d	$r12,$r3,8
	beqz	$r12,.L409
	ld.d	$r12,$r3,24
	b	.L411
.L409:
	or	$r12,$r0,$r0
.L411:
	nop
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	b	.L414
.L416:
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,4
	st.d	$r12,$r3,16
.L414:
	ld.d	$r12,$r3,8
	beqz	$r12,.L415
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	beq	$r13,$r12,.L416
.L415:
	ld.d	$r12,$r3,8
	beqz	$r12,.L417
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L418
	ld.d	$r12,$r3,24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r3,16
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L420
.L418:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L420
.L417:
	or	$r12,$r0,$r0
.L420:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L424
.L425:
	ld.d	$r13,$r3,16
	addi.d	$r12,$r13,4
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	addi.d	$r14,$r12,4
	st.d	$r14,$r3,40
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L424:
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,8
	bnez	$r12,.L425
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bne	$r13,$r12,.L429
	ld.d	$r12,$r3,24
	b	.L430
.L429:
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	sub.d	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r12,$r12,2
	bgeu	$r13,$r12,.L431
	b	.L432
.L433:
	ld.d	$r12,$r3,8
	slli.d	$r12,$r12,2
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r12,$r12,2
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L432:
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,8
	bnez	$r12,.L433
	b	.L434
.L431:
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L435
.L436:
	ld.d	$r13,$r3,16
	addi.d	$r12,$r13,4
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	addi.d	$r14,$r12,4
	st.d	$r14,$r3,40
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L435:
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,8
	bnez	$r12,.L436
.L434:
	ld.d	$r12,$r3,24
.L430:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	or	$r12,$r5,$r0
	st.d	$r6,$r3,8
	st.w	$r5,$r3,20
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L439
.L440:
	ld.d	$r12,$r3,40
	addi.d	$r13,$r12,4
	st.d	$r13,$r3,40
	ld.w	$r13,$r3,20
	stptr.w	$r13,$r12,0
.L439:
	ld.d	$r12,$r3,8
	addi.d	$r13,$r12,-1
	st.d	$r13,$r3,8
	bnez	$r12,.L440
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bgeu	$r13,$r12,.L444
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	b	.L445
.L446:
	ld.d	$r12,$r3,40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,32
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,40
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,32
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L445:
	ld.d	$r12,$r3,8
	bnez	$r12,.L446
	b	.L450
.L444:
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	beq	$r13,$r12,.L450
	b	.L448
.L449:
	ld.d	$r13,$r3,24
	addi.d	$r12,$r13,1
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	addi.d	$r14,$r12,1
	st.d	$r14,$r3,16
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L448:
	ld.d	$r12,$r3,8
	bnez	$r12,.L449
.L450:
	nop
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r12,$r3,4
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,4
	sub.w	$r12,$r0,$r12
	rotr.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r12,$r3,4
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,4
	rotr.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r3,12
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	sub.w	$r12,$r0,$r12
	rotr.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r3,12
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	rotr.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r12,$r3,4
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,4
	sll.d	$r13,$r13,$r12
	ldptr.w	$r12,$r3,4
	addi.w	$r14,$r0,64			# 0x40
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.d	$r14,$r3,8
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r12,$r3,4
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,4
	srl.d	$r13,$r13,$r12
	ldptr.w	$r12,$r3,4
	addi.w	$r14,$r0,64			# 0x40
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.d	$r14,$r3,8
	sll.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.h	$r12,$r3,14
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,8
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,15,0
	ld.hu	$r12,$r3,14
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,16			# 0x10
	ld.w	$r12,$r3,8
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.h	$r12,$r3,14
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,8
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,15,0
	ld.hu	$r12,$r3,14
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,16			# 0x10
	ld.w	$r12,$r3,8
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.b	$r12,$r3,15
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.bu	$r12,$r3,15
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,8
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,7,0
	ld.bu	$r12,$r3,15
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,8			# 0x8
	ld.w	$r12,$r3,8
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,7,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.b	$r12,$r3,15
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.bu	$r12,$r3,15
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,8
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,7,0
	ld.bu	$r12,$r3,15
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,8			# 0x8
	ld.w	$r12,$r3,8
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,7,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.h	$r12,$r3,14
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r3,24
	ld.hu	$r13,$r3,14
	ld.d	$r12,$r3,24
	slli.d	$r12,$r12,8
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,8
	bstrpick.w	$r13,$r12,15,0
	ld.d	$r12,$r3,24
	bstrpick.w	$r14,$r12,15,0
	ld.hu	$r12,$r3,14
	and	$r12,$r14,$r12
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r12,$r12,8
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r3,24
	ld.wu	$r13,$r3,12
	ld.d	$r12,$r3,24
	slli.d	$r12,$r12,24
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,24
	slli.w	$r14,$r12,0
	ld.wu	$r13,$r3,12
	ld.d	$r12,$r3,24
	slli.d	$r12,$r12,16
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,24
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r14,$r12,0
	ld.w	$r12,$r3,12
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,24
	slli.w	$r14,$r12,0
	ld.w	$r12,$r3,12
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,24
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,24
	slli.d	$r13,$r12,56
	ld.d	$r12,$r3,8
	and	$r12,$r13,$r12
	srli.d	$r13,$r12,56
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,48
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,40
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,40
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,24
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,32
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,8
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,24
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,8
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,16
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,24
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,24
	slli.d	$r14,$r12,8
	ld.d	$r12,$r3,8
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,40
	or	$r13,$r13,$r12
	ld.d	$r14,$r3,8
	ld.d	$r12,$r3,24
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,56
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	st.w	$r0,$r3,28
	b	.L492
.L495:
	ldptr.w	$r13,$r3,12
	ld.w	$r12,$r3,28
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L493
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	b	.L494
.L493:
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L492:
	ld.w	$r12,$r3,28
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L495
	or	$r12,$r0,$r0
.L494:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r23,$r3,8
	.cfi_offset 23, -8
	bnez	$r4,.L498
	or	$r23,$r0,$r0
	b	.L499
.L498:
	or	$r12,$r4,$r0
	addi.w	$r23,$r0,1			# 0x1
	b	.L500
.L501:
	srai.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	addi.w	$r13,$r23,1
	slli.w	$r23,$r13,0
.L500:
	andi	$r13,$r12,1
	slli.w	$r13,$r13,0
	beqz	$r13,.L501
	nop
.L499:
	or	$r4,$r23,$r0
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,12
	fld.s	$f1,$r3,12
	la.local	$r12,.LC0
	fld.s	$f0,$r12,0
	fcmp.slt.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L504
	fld.s	$f1,$r3,12
	la.local	$r12,.LC1
	fld.s	$f0,$r12,0
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L509
.L504:
	addi.w	$r12,$r0,1			# 0x1
	b	.L507
.L509:
	or	$r12,$r0,$r0
.L507:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,8
	fld.d	$f1,$r3,8
	la.local	$r12,.LC2
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L512
	fld.d	$f1,$r3,8
	la.local	$r12,.LC3
	fld.d	$f0,$r12,0
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L517
.L512:
	addi.w	$r12,$r0,1			# 0x1
	b	.L515
.L517:
	or	$r12,$r0,$r0
.L515:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	.cfi_offset 1, -8
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	la.local	$r12,.LC4
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	ldptr.d	$r4,$r3,0
	ld.d	$r5,$r3,8
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	blt	$r4,$r0,.L520
	la.local	$r12,.LC5
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	ldptr.d	$r4,$r3,0
	ld.d	$r5,$r3,8
	bl	%plt(__gttf2)
	or	$r12,$r4,$r0
	ble	$r12,$r0,.L525
.L520:
	addi.w	$r12,$r0,1			# 0x1
	b	.L523
.L525:
	or	$r12,$r0,$r0
.L523:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.globl	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r12,$r3,4
	fld.s	$f0,$r3,4
	ffint.d.w	$f0,$f0
	bl	%plt(__extenddftf2)
	or	$r14,$r4,$r0
	or	$r13,$r5,$r0
	ld.d	$r12,$r3,8
	stptr.d	$r14,$r12,0
	st.d	$r13,$r12,8
	nop
	ld.d	$r1,$r3,24
	.cfi_restore 1
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	fst.s	$f0,$r3,12
	or	$r12,$r4,$r0
	st.w	$r4,$r3,8
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,12
	fcmp.cun.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L530
	fld.s	$f0,$r3,12
	fadd.s	$f0,$f0,$f0
	fld.s	$f1,$r3,12
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L530
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L531
	la.local	$r12,.LC6
	fld.s	$f0,$r12,0
	b	.L532
.L531:
	la.local	$r12,.LC7
	fld.s	$f0,$r12,0
.L532:
	fst.s	$f0,$r3,28
.L535:
	ldptr.w	$r12,$r3,8
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L533
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,28
	fmul.s	$f0,$f1,$f0
	fst.s	$f0,$r3,12
.L533:
	ld.w	$r12,$r3,8
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,8
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	beqz	$r12,.L537
	fld.s	$f0,$r3,28
	fmul.s	$f0,$f0,$f0
	fst.s	$f0,$r3,28
	b	.L535
.L537:
	nop
.L530:
	fld.s	$f0,$r3,12
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	fst.d	$f0,$r3,8
	or	$r12,$r4,$r0
	st.w	$r4,$r3,4
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,8
	fcmp.cun.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L540
	fld.d	$f0,$r3,8
	fadd.d	$f0,$f0,$f0
	fld.d	$f1,$r3,8
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L540
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L541
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	b	.L542
.L541:
	la.local	$r12,.LC9
	fld.d	$f0,$r12,0
.L542:
	fst.d	$f0,$r3,24
.L545:
	ldptr.w	$r12,$r3,4
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L543
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,24
	fmul.d	$f0,$f1,$f0
	fst.d	$f0,$r3,8
.L543:
	ld.w	$r12,$r3,4
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,4
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	beqz	$r12,.L547
	fld.d	$f0,$r3,24
	fmul.d	$f0,$f0,$f0
	fst.d	$f0,$r3,24
	b	.L545
.L547:
	nop
.L540:
	fld.d	$f0,$r3,8
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	.cfi_offset 1, -8
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	ld.d	$r6,$r3,16
	ld.d	$r7,$r3,24
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	bnez	$r4,.L550
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	or	$r6,$r13,$r0
	or	$r7,$r12,$r0
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	bl	%plt(__addtf3)
	or	$r15,$r4,$r0
	or	$r14,$r5,$r0
	or	$r13,$r15,$r0
	or	$r12,$r14,$r0
	or	$r6,$r13,$r0
	or	$r7,$r12,$r0
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__netf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L550
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L552
	la.local	$r14,.LC10
	ldptr.d	$r13,$r14,0
	ld.d	$r12,$r14,8
	b	.L553
.L552:
	la.local	$r14,.LC11
	ldptr.d	$r13,$r14,0
	ld.d	$r12,$r14,8
.L553:
	st.d	$r13,$r3,32
	st.d	$r12,$r3,40
.L556:
	ldptr.w	$r12,$r3,12
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L554
	ld.d	$r6,$r3,32
	ld.d	$r7,$r3,40
	ld.d	$r4,$r3,16
	ld.d	$r5,$r3,24
	bl	%plt(__multf3)
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	st.d	$r13,$r3,16
	st.d	$r12,$r3,24
.L554:
	ld.w	$r12,$r3,12
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	beqz	$r12,.L559
	ld.d	$r6,$r3,32
	ld.d	$r7,$r3,40
	ld.d	$r4,$r3,32
	ld.d	$r5,$r3,40
	bl	%plt(__multf3)
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	st.d	$r13,$r3,32
	st.d	$r12,$r3,40
	b	.L556
.L559:
	nop
.L550:
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,40
	b	.L562
.L563:
	ld.d	$r12,$r3,16
	addi.d	$r13,$r12,1
	st.d	$r13,$r3,16
	ld.b	$r14,$r12,0
	ld.d	$r12,$r3,40
	addi.d	$r13,$r12,1
	st.d	$r13,$r3,40
	ld.b	$r13,$r12,0
	xor	$r13,$r14,$r13
	ext.w.b	$r13,$r13
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L562:
	ld.d	$r12,$r3,8
	bnez	$r12,.L563
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	.cfi_offset 1, -8
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r4,$r3,24
	bl	strlen
	or	$r13,$r4,$r0
	ld.d	$r12,$r3,24
	add.d	$r12,$r12,$r4
	st.d	$r12,$r3,40
	b	.L567
.L569:
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,-1
	st.d	$r12,$r3,8
.L567:
	ld.d	$r12,$r3,8
	beqz	$r12,.L568
	ld.d	$r12,$r3,16
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,40
	st.b	$r13,$r12,0
	ld.d	$r12,$r3,40
	ld.b	$r12,$r12,0
	bnez	$r12,.L569
.L568:
	ld.d	$r12,$r3,8
	bnez	$r12,.L570
	ld.d	$r12,$r3,40
	st.b	$r0,$r12,0
.L570:
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	st.d	$r0,$r3,24
	b	.L574
.L579:
	nop
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
.L574:
	ld.d	$r13,$r3,24
	ldptr.d	$r12,$r3,0
	bgeu	$r13,$r12,.L575
	ld.d	$r13,$r3,8
	ld.d	$r12,$r3,24
	add.d	$r12,$r13,$r12
	ld.b	$r12,$r12,0
	bnez	$r12,.L579
.L575:
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	b	.L582
.L586:
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,24
	b	.L583
.L585:
	ld.d	$r12,$r3,24
	addi.d	$r13,$r12,1
	st.d	$r13,$r3,24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L583
	ld.d	$r12,$r3,8
	b	.L584
.L583:
	ld.d	$r12,$r3,24
	ld.b	$r12,$r12,0
	bnez	$r12,.L585
	ld.d	$r12,$r3,8
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L582:
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	bnez	$r12,.L586
	or	$r12,$r0,$r0
.L584:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r13,$r3,12
	st.d	$r0,$r3,24
.L590:
	ld.b	$r13,$r12,0
	or	$r14,$r13,$r0
	ld.w	$r13,$r3,12
	slli.w	$r13,$r13,0
	bne	$r13,$r14,.L589
	st.d	$r12,$r3,24
.L589:
	or	$r13,$r12,$r0
	addi.d	$r12,$r13,1
	ld.b	$r13,$r13,0
	bnez	$r13,.L590
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ldptr.d	$r4,$r3,0
	bl	strlen
	st.d	$r4,$r3,24
	ld.d	$r12,$r3,24
	bnez	$r12,.L596
	ld.d	$r12,$r3,8
	b	.L595
.L598:
	ld.d	$r6,$r3,24
	ldptr.d	$r5,$r3,0
	ld.d	$r4,$r3,16
	bl	strncmp
	or	$r12,$r4,$r0
	bnez	$r12,.L597
	ld.d	$r12,$r3,16
	b	.L595
.L597:
	ld.d	$r12,$r3,16
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,8
.L596:
	ldptr.d	$r12,$r3,0
	ld.b	$r12,$r12,0
	or	$r5,$r12,$r0
	ld.d	$r4,$r3,8
	bl	strchr
	st.d	$r4,$r3,16
	ld.d	$r12,$r3,16
	bnez	$r12,.L598
	or	$r12,$r0,$r0
.L595:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	2
	.globl	copysign
	.type	copysign, @function
copysign:
.LFB98 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	fld.d	$f0,$r3,8
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L601
	fld.d	$f0,$r3,0
	movgr2fr.d	$f1,$r0
	fcmp.sgt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L603
.L601:
	fld.d	$f0,$r3,8
	movgr2fr.d	$f1,$r0
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L604
	fld.d	$f0,$r3,0
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L604
.L603:
	fld.d	$f0,$r3,8
	fneg.d	$f0,$f0
	b	.L607
.L604:
	fld.d	$f0,$r3,8
.L607:
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	.cfi_offset 1, -8
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	stptr.d	$r7,$r3,0
	ld.d	$r13,$r3,16
	ldptr.d	$r12,$r3,0
	sub.d	$r12,$r13,$r12
	ld.d	$r13,$r3,24
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ldptr.d	$r12,$r3,0
	bnez	$r12,.L612
	ld.d	$r12,$r3,24
	b	.L613
.L612:
	ld.d	$r13,$r3,16
	ldptr.d	$r12,$r3,0
	sltu	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	beqz	$r12,.L615
	or	$r12,$r0,$r0
	b	.L613
.L617:
	ld.d	$r12,$r3,24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r3,8
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L616
	ld.d	$r12,$r3,24
	addi.d	$r13,$r12,1
	ld.d	$r12,$r3,8
	addi.d	$r14,$r12,1
	ldptr.d	$r12,$r3,0
	addi.d	$r12,$r12,-1
	or	$r6,$r12,$r0
	or	$r5,$r14,$r0
	or	$r4,$r13,$r0
	bl	memcmp
	or	$r12,$r4,$r0
	bnez	$r12,.L616
	ld.d	$r12,$r3,24
	b	.L613
.L616:
	ld.d	$r12,$r3,24
	addi.d	$r12,$r12,1
	st.d	$r12,$r3,24
.L615:
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,40
	bleu	$r13,$r12,.L617
	or	$r12,$r0,$r0
.L613:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	st.d	$r6,$r3,8
	ld.d	$r6,$r3,8
	ld.d	$r5,$r3,16
	ld.d	$r4,$r3,24
	bl	memcpy
	or	$r13,$r4,$r0
	ld.d	$r12,$r3,8
	add.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	fst.d	$f0,$r3,8
	stptr.d	$r4,$r3,0
	st.w	$r0,$r3,24
	st.w	$r0,$r3,28
	fld.d	$f0,$r3,8
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L623
	fld.d	$f0,$r3,8
	fneg.d	$f0,$f0
	fst.d	$f0,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,28
.L623:
	fld.d	$f1,$r3,8
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fcmp.sge.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L638
	b	.L627
.L628:
	ld.w	$r12,$r3,24
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,24
	fld.d	$f1,$r3,8
	la.local	$r12,.LC9
	fld.d	$f0,$r12,0
	fdiv.d	$f0,$f1,$f0
	fst.d	$f0,$r3,8
.L627:
	fld.d	$f1,$r3,8
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fcmp.sge.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L628
	b	.L629
.L638:
	fld.d	$f1,$r3,8
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L629
	fld.d	$f0,$r3,8
	movgr2fr.d	$f1,$r0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L629
	b	.L631
.L632:
	ld.w	$r12,$r3,24
	addi.w	$r12,$r12,-1
	st.w	$r12,$r3,24
	fld.d	$f0,$r3,8
	fadd.d	$f0,$f0,$f0
	fst.d	$f0,$r3,8
.L631:
	fld.d	$f1,$r3,8
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L632
.L629:
	ldptr.d	$r12,$r3,0
	ld.w	$r13,$r3,24
	stptr.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	beqz	$r12,.L633
	fld.d	$f0,$r3,8
	fneg.d	$f0,$f0
	fst.d	$f0,$r3,8
.L633:
	fld.d	$f0,$r3,8
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	2
	.globl	__muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	st.d	$r0,$r3,24
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,16
	b	.L641
.L643:
	ld.d	$r12,$r3,16
	andi	$r12,$r12,1
	beqz	$r12,.L642
	ld.d	$r13,$r3,24
	ldptr.d	$r12,$r3,0
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,24
.L642:
	ldptr.d	$r12,$r3,0
	slli.d	$r12,$r12,1
	stptr.d	$r12,$r3,0
	ld.d	$r12,$r3,16
	srli.d	$r12,$r12,1
	st.d	$r12,$r3,16
.L641:
	ld.d	$r12,$r3,16
	bnez	$r12,.L643
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	stptr.d	$r6,$r3,0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,28
	st.w	$r0,$r3,24
	b	.L647
.L649:
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,8
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L647:
	ld.w	$r13,$r3,8
	ld.w	$r12,$r3,12
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L650
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	beqz	$r12,.L650
	ldptr.w	$r12,$r3,8
	bge	$r12,$r0,.L649
	b	.L650
.L652:
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L651
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r3,12
	ld.w	$r13,$r3,24
	ld.w	$r12,$r3,28
	or	$r12,$r13,$r12
	st.w	$r12,$r3,24
.L651:
	ld.w	$r12,$r3,28
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,8
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,8
.L650:
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	bnez	$r12,.L652
	ldptr.d	$r12,$r3,0
	beqz	$r12,.L653
	ldptr.w	$r12,$r3,12
	b	.L654
.L653:
	ldptr.w	$r12,$r3,24
.L654:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.globl	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.b	$r4,$r3,15
	ld.bu	$r12,$r3,15
	ext.w.b	$r12,$r12
	bge	$r12,$r0,.L657
	ld.bu	$r12,$r3,15
	nor	$r12,$r0,$r12
	st.b	$r12,$r3,15
.L657:
	ld.bu	$r12,$r3,15
	bstrpick.w	$r12,$r12,7,0
	bnez	$r12,.L658
	addi.w	$r12,$r0,7			# 0x7
	b	.L659
.L658:
	ld.b	$r12,$r3,15
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	clz.w	$r12,$r12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
.L659:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	bge	$r12,$r0,.L662
	ld.d	$r12,$r3,8
	nor	$r12,$r0,$r12
	st.d	$r12,$r3,8
.L662:
	ld.d	$r12,$r3,8
	bnez	$r12,.L663
	addi.w	$r12,$r0,63			# 0x3f
	b	.L664
.L663:
	ld.d	$r12,$r3,8
	clz.d	$r12,$r12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
.L664:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	st.w	$r0,$r3,28
	b	.L667
.L669:
	ld.w	$r12,$r3,12
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L668
	ld.w	$r13,$r3,28
	ld.w	$r12,$r3,8
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
.L668:
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,8
.L667:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L669
	ldptr.w	$r12,$r3,28
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,3
	st.w	$r12,$r3,36
	ld.w	$r13,$r3,12
	addi.w	$r12,$r0,-8			# 0xfffffffffffffff8
	and	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bltu	$r13,$r12,.L673
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r3,24
	bleu	$r13,$r12,.L680
.L673:
	st.w	$r0,$r3,44
	b	.L675
.L676:
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,3
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,3
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ldptr.d	$r13,$r13,0
	stptr.d	$r13,$r12,0
	ld.w	$r12,$r3,44
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,44
.L675:
	ld.w	$r13,$r3,44
	ld.w	$r12,$r3,36
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L676
	b	.L677
.L678:
	ld.wu	$r12,$r3,40
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,40
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.w	$r12,$r3,40
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,40
.L677:
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,40
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgtu	$r13,$r12,.L678
	b	.L679
.L681:
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,12
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L680:
	ldptr.w	$r12,$r3,12
	addi.w	$r13,$r12,-1
	st.w	$r13,$r3,12
	bnez	$r12,.L681
	nop
.L679:
	nop
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bltu	$r13,$r12,.L684
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r3,24
	bleu	$r13,$r12,.L690
.L684:
	st.w	$r0,$r3,44
	b	.L686
.L687:
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,1
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,1
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.h	$r13,$r13,0
	st.h	$r13,$r12,0
	ld.w	$r12,$r3,44
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,44
.L686:
	ld.w	$r13,$r3,44
	ld.w	$r12,$r3,40
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L687
	ld.w	$r12,$r3,12
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L689
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r12,$r12,31,0
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.w	$r12,$r3,12
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r12,$r12,31,0
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	b	.L689
.L691:
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,12
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L690:
	ldptr.w	$r12,$r3,12
	addi.w	$r13,$r12,-1
	st.w	$r13,$r3,12
	bnez	$r12,.L691
	nop
.L689:
	nop
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,2
	st.w	$r12,$r3,36
	ld.w	$r13,$r3,12
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bltu	$r13,$r12,.L694
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r3,24
	bleu	$r13,$r12,.L701
.L694:
	st.w	$r0,$r3,44
	b	.L696
.L697:
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,2
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,44
	slli.d	$r12,$r12,2
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
	ld.w	$r12,$r3,44
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,44
.L696:
	ld.w	$r13,$r3,44
	ld.w	$r12,$r3,36
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L697
	b	.L698
.L699:
	ld.wu	$r12,$r3,40
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,40
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.w	$r12,$r3,40
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,40
.L698:
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,40
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgtu	$r13,$r12,.L699
	b	.L700
.L702:
	ld.wu	$r12,$r3,12
	ld.d	$r13,$r3,16
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r3,12
	ld.d	$r14,$r3,24
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L701:
	ldptr.w	$r12,$r3,12
	addi.w	$r13,$r12,-1
	st.w	$r13,$r3,12
	bnez	$r12,.L702
	nop
.L700:
	nop
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r3,12
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	mod.w	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.wu	$r12,$r3,12
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.wu	$r12,$r3,12
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	blt	$r12,$r0,.L715
	ld.d	$r12,$r3,8
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	b	.L716
.L715:
	ld.d	$r12,$r3,8
	andi	$r12,$r12,1
	ld.d	$r13,$r3,8
	srli.d	$r13,$r13,1
	or	$r12,$r12,$r13
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	fadd.d	$f0,$f0,$f0
.L716:
	nop
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	blt	$r12,$r0,.L720
	ld.d	$r12,$r3,8
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	b	.L721
.L720:
	ld.d	$r12,$r3,8
	andi	$r12,$r12,1
	ld.d	$r13,$r3,8
	srli.d	$r13,$r13,1
	or	$r12,$r12,$r13
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	fadd.s	$f0,$f0,$f0
.L721:
	nop
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r3,12
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	mod.wu	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.h	$r4,$r3,14
	st.w	$r0,$r3,28
	b	.L727
.L730:
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	addi.w	$r14,$r0,15			# 0xf
	ld.w	$r12,$r3,28
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	bnez	$r12,.L732
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L727:
	ld.w	$r12,$r3,28
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L730
	b	.L729
.L732:
	nop
.L729:
	ldptr.w	$r12,$r3,28
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.h	$r4,$r3,14
	st.w	$r0,$r3,28
	b	.L735
.L738:
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	bnez	$r12,.L740
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L735:
	ld.w	$r12,$r3,28
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L738
	b	.L737
.L740:
	nop
.L737:
	ldptr.w	$r12,$r3,28
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,12
	fld.s	$f1,$r3,12
	la.local	$r12,.LC13
	fld.s	$f0,$r12,0
	fcmp.sge.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L747
	fld.s	$f1,$r3,12
	la.local	$r12,.LC13
	fld.s	$f0,$r12,0
	fsub.s	$f0,$f1,$f0
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r13,$f0
	lu12i.w	$r12,32768>>12			# 0x8000
	add.d	$r12,$r13,$r12
	b	.L745
.L747:
	fld.s	$f0,$r3,12
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r12,$f0
.L745:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.h	$r4,$r3,14
	st.w	$r0,$r3,24
	st.w	$r0,$r3,28
	b	.L750
.L752:
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L751
	ld.w	$r12,$r3,24
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,24
.L751:
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L750:
	ld.w	$r12,$r3,28
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L752
	ld.w	$r12,$r3,24
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.h	$r4,$r3,14
	st.w	$r0,$r3,24
	st.w	$r0,$r3,28
	b	.L756
.L758:
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L757
	ld.w	$r12,$r3,24
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,24
.L757:
	ld.w	$r12,$r3,28
	addi.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L756:
	ld.w	$r12,$r3,28
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L758
	ldptr.w	$r12,$r3,24
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	st.w	$r0,$r3,28
	b	.L762
.L764:
	ld.w	$r12,$r3,12
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L763
	ld.w	$r13,$r3,28
	ld.w	$r12,$r3,8
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
.L763:
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,8
.L762:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L764
	ldptr.w	$r12,$r3,28
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	st.w	$r0,$r3,28
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L770
	or	$r12,$r0,$r0
	b	.L769
.L772:
	ld.w	$r12,$r3,8
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L771
	ld.w	$r13,$r3,28
	ld.w	$r12,$r3,12
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
.L771:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,8
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,8
.L770:
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	bnez	$r12,.L772
	ldptr.w	$r12,$r3,28
.L769:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r14,$r5,$r0
	or	$r13,$r6,$r0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	or	$r12,$r6,$r0
	st.w	$r6,$r3,4
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,28
	st.w	$r0,$r3,24
	b	.L775
.L777:
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,8
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,28
.L775:
	ld.w	$r13,$r3,8
	ld.w	$r12,$r3,12
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L778
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	beqz	$r12,.L778
	ldptr.w	$r12,$r3,8
	bge	$r12,$r0,.L777
	b	.L778
.L780:
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L779
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,8
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r3,12
	ld.w	$r13,$r3,24
	ld.w	$r12,$r3,28
	or	$r12,$r13,$r12
	st.w	$r12,$r3,24
.L779:
	ld.w	$r12,$r3,28
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,8
	srli.w	$r12,$r12,1
	st.w	$r12,$r3,8
.L778:
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	bnez	$r12,.L780
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	beqz	$r12,.L781
	ldptr.w	$r12,$r3,12
	b	.L782
.L781:
	ldptr.w	$r12,$r3,24
.L782:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.globl	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.s	$f0,$r3,12
	fst.s	$f1,$r3,8
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L792
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L787
.L792:
	fld.s	$f1,$r3,12
	fld.s	$f0,$r3,8
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L793
	addi.w	$r12,$r0,1			# 0x1
	b	.L787
.L793:
	or	$r12,$r0,$r0
.L787:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	fst.d	$f0,$r3,8
	fst.d	$f1,$r3,0
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L803
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L798
.L803:
	fld.d	$f1,$r3,8
	fld.d	$f0,$r3,0
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L804
	addi.w	$r12,$r0,1			# 0x1
	b	.L798
.L804:
	or	$r12,$r0,$r0
.L798:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	mul.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r13,$r3,8
	ldptr.d	$r12,$r3,0
	mul.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r4,$r3,12
	or	$r12,$r5,$r0
	st.w	$r5,$r3,8
	st.w	$r0,$r3,24
	st.w	$r0,$r3,20
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L813
	ld.w	$r12,$r3,8
	sub.w	$r12,$r0,$r12
	st.w	$r12,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,24
.L813:
	st.b	$r0,$r3,31
	b	.L814
.L817:
	ld.w	$r12,$r3,8
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L815
	ld.w	$r13,$r3,20
	ld.w	$r12,$r3,12
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,20
.L815:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,1
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,8
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,8
	ld.b	$r12,$r3,31
	bstrpick.w	$r12,$r12,7,0
	addi.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.b	$r12,$r3,31
.L814:
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	beqz	$r12,.L816
	ld.bu	$r12,$r3,31
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L817
.L816:
	ld.w	$r12,$r3,24
	slli.w	$r12,$r12,0
	beqz	$r12,.L818
	ld.w	$r12,$r3,20
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	b	.L819
.L818:
	ldptr.w	$r12,$r3,20
.L819:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	2
	.globl	__divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	st.w	$r0,$r3,28
	ld.d	$r12,$r3,8
	bge	$r12,$r0,.L823
	ld.d	$r12,$r3,8
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r3,8
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,28
.L823:
	ldptr.d	$r12,$r3,0
	bge	$r12,$r0,.L824
	ldptr.d	$r12,$r3,0
	sub.d	$r12,$r0,$r12
	stptr.d	$r12,$r3,0
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,28
.L824:
	ld.d	$r12,$r3,8
	slli.w	$r12,$r12,0
	ldptr.d	$r13,$r3,0
	slli.w	$r13,$r13,0
	or	$r6,$r0,$r0
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__udivmodsi4
	or	$r12,$r4,$r0
	bstrpick.d	$r12,$r12,31,0
	st.d	$r12,$r3,16
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	beqz	$r12,.L825
	ld.d	$r12,$r3,16
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r3,16
.L825:
	ld.d	$r12,$r3,16
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	2
	.globl	__modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	st.w	$r0,$r3,28
	ld.d	$r12,$r3,8
	bge	$r12,$r0,.L829
	ld.d	$r12,$r3,8
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r3,28
.L829:
	ldptr.d	$r12,$r3,0
	bge	$r12,$r0,.L830
	ldptr.d	$r12,$r3,0
	sub.d	$r12,$r0,$r12
	stptr.d	$r12,$r3,0
.L830:
	ld.d	$r12,$r3,8
	slli.w	$r12,$r12,0
	ldptr.d	$r13,$r3,0
	slli.w	$r13,$r13,0
	addi.w	$r6,$r0,1			# 0x1
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__udivmodsi4
	or	$r12,$r4,$r0
	bstrpick.d	$r12,$r12,31,0
	st.d	$r12,$r3,16
	ld.w	$r12,$r3,28
	slli.w	$r12,$r12,0
	beqz	$r12,.L831
	ld.d	$r12,$r3,16
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r3,16
.L831:
	ld.d	$r12,$r3,16
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	2
	.globl	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	or	$r14,$r5,$r0
	or	$r13,$r6,$r0
	st.h	$r4,$r3,14
	or	$r12,$r5,$r0
	st.h	$r5,$r3,12
	or	$r12,$r6,$r0
	st.w	$r6,$r3,8
	addi.w	$r12,$r0,1			# 0x1
	st.h	$r12,$r3,30
	st.h	$r0,$r3,28
	b	.L835
.L837:
	ld.hu	$r12,$r3,12
	slli.w	$r12,$r12,1
	st.h	$r12,$r3,12
	ld.hu	$r12,$r3,30
	slli.w	$r12,$r12,1
	st.h	$r12,$r3,30
.L835:
	ld.hu	$r13,$r3,12
	ld.hu	$r12,$r3,14
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L838
	ld.hu	$r12,$r3,30
	slli.w	$r12,$r12,0
	beqz	$r12,.L838
	ld.h	$r12,$r3,12
	bge	$r12,$r0,.L837
	b	.L838
.L840:
	ld.hu	$r13,$r3,14
	ld.hu	$r12,$r3,12
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L839
	ld.hu	$r13,$r3,14
	ld.hu	$r12,$r3,12
	sub.w	$r12,$r13,$r12
	st.h	$r12,$r3,14
	ld.hu	$r13,$r3,28
	ld.hu	$r12,$r3,30
	or	$r12,$r13,$r12
	st.h	$r12,$r3,28
.L839:
	ld.hu	$r12,$r3,30
	srli.w	$r12,$r12,1
	st.h	$r12,$r3,30
	ld.hu	$r12,$r3,12
	srli.w	$r12,$r12,1
	st.h	$r12,$r3,12
.L838:
	ld.hu	$r12,$r3,30
	slli.w	$r12,$r12,0
	bnez	$r12,.L840
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	beqz	$r12,.L841
	ld.hu	$r12,$r3,14
	b	.L842
.L841:
	ld.hu	$r12,$r3,28
.L842:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.globl	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,24
	st.d	$r5,$r3,16
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,40
	st.d	$r0,$r3,32
	b	.L845
.L847:
	ld.d	$r12,$r3,16
	slli.d	$r12,$r12,1
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,40
	slli.d	$r12,$r12,1
	st.d	$r12,$r3,40
.L845:
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	bgeu	$r13,$r12,.L848
	ld.d	$r12,$r3,40
	beqz	$r12,.L848
	ld.d	$r13,$r3,16
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	lu32i.d	$r12,0>>32
	and	$r12,$r13,$r12
	beqz	$r12,.L847
	b	.L848
.L850:
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	bltu	$r13,$r12,.L849
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,16
	sub.d	$r12,$r13,$r12
	st.d	$r12,$r3,24
	ld.d	$r13,$r3,32
	ld.d	$r12,$r3,40
	or	$r12,$r13,$r12
	st.d	$r12,$r3,32
.L849:
	ld.d	$r12,$r3,40
	srli.d	$r12,$r12,1
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,16
	srli.d	$r12,$r12,1
	st.d	$r12,$r3,16
.L848:
	ld.d	$r12,$r3,40
	bnez	$r12,.L850
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	beqz	$r12,.L851
	ld.d	$r12,$r3,24
	b	.L852
.L851:
	ld.d	$r12,$r3,32
.L852:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.globl	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r5,$r3,4
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r3,44
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,32
	ld.w	$r13,$r3,4
	ld.w	$r12,$r3,44
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L855
	st.w	$r0,$r3,24
	ldptr.w	$r13,$r3,32
	ld.w	$r14,$r3,4
	ld.w	$r12,$r3,44
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
	b	.L856
.L855:
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	bnez	$r12,.L857
	ld.d	$r12,$r3,8
	b	.L859
.L857:
	ldptr.w	$r13,$r3,32
	ld.w	$r12,$r3,4
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,24
	ldptr.w	$r12,$r3,36
	or	$r13,$r12,$r0
	ld.w	$r12,$r3,4
	sll.w	$r12,$r13,$r12
	slli.w	$r15,$r12,0
	ldptr.w	$r13,$r3,32
	ld.w	$r14,$r3,44
	ld.w	$r12,$r3,4
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r15,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
.L856:
	ld.d	$r12,$r3,24
.L859:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r3,76
	ld.d	$r12,$r3,16
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,56
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,76
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L862
	st.d	$r0,$r3,32
	ld.d	$r13,$r3,48
	ld.w	$r14,$r3,12
	ld.w	$r12,$r3,76
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	b	.L863
.L862:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L864
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L866
.L864:
	ld.d	$r13,$r3,48
	ld.w	$r12,$r3,12
	sll.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,56
	or	$r13,$r12,$r0
	ld.w	$r12,$r3,12
	sll.d	$r13,$r13,$r12
	ld.d	$r14,$r3,48
	ld.w	$r15,$r3,76
	ld.w	$r12,$r3,12
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r3,40
.L863:
	ld.d	$r13,$r3,32
	ld.d	$r12,$r3,40
.L866:
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r5,$r3,4
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r3,44
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,32
	ld.w	$r13,$r3,4
	ld.w	$r12,$r3,44
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L869
	ldptr.w	$r13,$r3,36
	ld.w	$r12,$r3,44
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
	ldptr.w	$r13,$r3,36
	ld.w	$r14,$r3,4
	ld.w	$r12,$r3,44
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,24
	b	.L870
.L869:
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	bnez	$r12,.L871
	ld.d	$r12,$r3,8
	b	.L873
.L871:
	ldptr.w	$r13,$r3,36
	ld.w	$r12,$r3,4
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
	ldptr.w	$r12,$r3,36
	or	$r14,$r12,$r0
	ld.w	$r13,$r3,44
	ld.w	$r12,$r3,4
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ldptr.w	$r13,$r3,32
	ld.w	$r12,$r3,4
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,24
.L870:
	ld.d	$r12,$r3,24
.L873:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r3,76
	ld.d	$r12,$r3,16
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,56
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,76
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L876
	ld.d	$r13,$r3,56
	ld.w	$r12,$r3,76
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,56
	ld.w	$r14,$r3,12
	ld.w	$r12,$r3,76
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	b	.L877
.L876:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L878
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L880
.L878:
	ld.d	$r13,$r3,56
	ld.w	$r12,$r3,12
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,56
	or	$r14,$r12,$r0
	ld.w	$r13,$r3,76
	ld.w	$r12,$r3,12
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	sll.d	$r13,$r14,$r12
	ld.d	$r14,$r3,48
	ld.w	$r12,$r3,12
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r3,32
.L877:
	ld.d	$r13,$r3,32
	ld.d	$r12,$r3,40
.L880:
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	srli.d	$r13,$r12,56
	ld.d	$r12,$r3,8
	srli.d	$r14,$r12,40
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	srli.d	$r14,$r12,24
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	srli.d	$r14,$r12,8
	lu12i.w	$r12,-16777216>>12			# 0xffffffffff000000
	lu32i.d	$r12,0>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r14,$r12,8
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff00000000>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r14,$r12,24
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff0000000000>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r14,$r12,40
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xffff000000000000>>32
	lu52i.d	$r12,$r12,0xf0000000000000>>52
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r3,8
	slli.d	$r12,$r12,56
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,24
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,12
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,24
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	st.w	$r12,$r3,76
	ld.w	$r12,$r3,76
	slli.w	$r13,$r12,0
	lu12i.w	$r12,65536>>12			# 0x10000
	bgeu	$r13,$r12,.L889
	addi.w	$r12,$r0,16			# 0x10
	b	.L890
.L889:
	or	$r12,$r0,$r0
.L890:
	st.w	$r12,$r3,72
	addi.w	$r13,$r0,16			# 0x10
	ld.w	$r12,$r3,72
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,76
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,68
	ld.w	$r12,$r3,72
	st.w	$r12,$r3,64
	ld.w	$r13,$r3,68
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bnez	$r12,.L891
	addi.w	$r12,$r0,8			# 0x8
	b	.L892
.L891:
	or	$r12,$r0,$r0
.L892:
	st.w	$r12,$r3,60
	addi.w	$r13,$r0,8			# 0x8
	ld.w	$r12,$r3,60
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,68
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,56
	ldptr.w	$r12,$r3,60
	ld.w	$r13,$r3,64
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,52
	ld.w	$r12,$r3,56
	andi	$r12,$r12,240
	slli.w	$r12,$r12,0
	bnez	$r12,.L893
	addi.w	$r12,$r0,4			# 0x4
	b	.L894
.L893:
	or	$r12,$r0,$r0
.L894:
	st.w	$r12,$r3,48
	addi.w	$r13,$r0,4			# 0x4
	ld.w	$r12,$r3,48
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,56
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,44
	ldptr.w	$r12,$r3,48
	ld.w	$r13,$r3,52
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.w	$r12,$r3,44
	andi	$r12,$r12,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L895
	addi.w	$r12,$r0,2			# 0x2
	b	.L896
.L895:
	or	$r12,$r0,$r0
.L896:
	st.w	$r12,$r3,36
	addi.w	$r13,$r0,2			# 0x2
	ld.w	$r12,$r3,36
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,44
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,32
	ldptr.w	$r12,$r3,36
	ld.w	$r13,$r3,40
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,32
	andi	$r12,$r12,2
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	addi.w	$r13,$r0,2			# 0x2
	ld.w	$r12,$r3,32
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,28
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,24
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,40
	nor	$r12,$r0,$r12
	and	$r12,$r13,$r12
	or	$r14,$r12,$r0
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,40
	and	$r12,$r13,$r12
	or	$r12,$r14,$r12
	clz.d	$r12,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,40
	slli.w	$r12,$r12,0
	andi	$r12,$r12,64
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ldptr.w	$r13,$r3,28
	ldptr.w	$r12,$r3,20
	bge	$r13,$r12,.L903
	or	$r12,$r0,$r0
	b	.L908
.L903:
	ldptr.w	$r13,$r3,28
	ldptr.w	$r12,$r3,20
	ble	$r13,$r12,.L905
	addi.w	$r12,$r0,2			# 0x2
	b	.L908
.L905:
	ldptr.w	$r13,$r3,24
	ldptr.w	$r12,$r3,16
	bgeu	$r13,$r12,.L906
	or	$r12,$r0,$r0
	b	.L908
.L906:
	ldptr.w	$r13,$r3,24
	ldptr.w	$r12,$r3,16
	bleu	$r13,$r12,.L907
	addi.w	$r12,$r0,2			# 0x2
	b	.L908
.L907:
	addi.w	$r12,$r0,1			# 0x1
.L908:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ldptr.d	$r5,$r3,0
	ld.d	$r4,$r3,8
	bl	__cmpdi2
	or	$r12,$r4,$r0
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	stptr.d	$r6,$r3,0
	st.d	$r7,$r3,8
	ld.d	$r12,$r3,16
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,56
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,56
	ld.d	$r12,$r3,40
	bge	$r13,$r12,.L914
	or	$r12,$r0,$r0
	b	.L919
.L914:
	ld.d	$r13,$r3,56
	ld.d	$r12,$r3,40
	ble	$r13,$r12,.L916
	addi.w	$r12,$r0,2			# 0x2
	b	.L919
.L916:
	ld.d	$r13,$r3,48
	ld.d	$r12,$r3,32
	bgeu	$r13,$r12,.L917
	or	$r12,$r0,$r0
	b	.L919
.L917:
	ld.d	$r13,$r3,48
	ld.d	$r12,$r3,32
	bleu	$r13,$r12,.L918
	addi.w	$r12,$r0,2			# 0x2
	b	.L919
.L918:
	addi.w	$r12,$r0,1			# 0x1
.L919:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	or	$r12,$r4,$r0
	st.w	$r4,$r3,12
	ld.w	$r12,$r3,12
	st.w	$r12,$r3,76
	ld.w	$r13,$r3,76
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4095
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bnez	$r12,.L922
	addi.w	$r12,$r0,16			# 0x10
	b	.L923
.L922:
	or	$r12,$r0,$r0
.L923:
	st.w	$r12,$r3,72
	ld.w	$r13,$r3,76
	ld.w	$r12,$r3,72
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,68
	ld.w	$r12,$r3,72
	st.w	$r12,$r3,64
	ld.w	$r12,$r3,68
	andi	$r12,$r12,255
	slli.w	$r12,$r12,0
	bnez	$r12,.L924
	addi.w	$r12,$r0,8			# 0x8
	b	.L925
.L924:
	or	$r12,$r0,$r0
.L925:
	st.w	$r12,$r3,60
	ld.w	$r13,$r3,68
	ld.w	$r12,$r3,60
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,56
	ldptr.w	$r12,$r3,60
	ld.w	$r13,$r3,64
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,52
	ld.w	$r12,$r3,56
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	bnez	$r12,.L926
	addi.w	$r12,$r0,4			# 0x4
	b	.L927
.L926:
	or	$r12,$r0,$r0
.L927:
	st.w	$r12,$r3,48
	ld.w	$r13,$r3,56
	ld.w	$r12,$r3,48
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,44
	ldptr.w	$r12,$r3,48
	ld.w	$r13,$r3,52
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.w	$r12,$r3,44
	andi	$r12,$r12,3
	slli.w	$r12,$r12,0
	bnez	$r12,.L928
	addi.w	$r12,$r0,2			# 0x2
	b	.L929
.L928:
	or	$r12,$r0,$r0
.L929:
	st.w	$r12,$r3,36
	ld.w	$r13,$r3,44
	ld.w	$r12,$r3,36
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,32
	ld.w	$r12,$r3,32
	andi	$r12,$r12,3
	st.w	$r12,$r3,28
	ldptr.w	$r12,$r3,36
	ld.w	$r13,$r3,40
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,24
	ld.w	$r12,$r3,28
	nor	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,28
	srli.w	$r13,$r13,1
	slli.w	$r13,$r13,0
	addi.w	$r14,$r0,2			# 0x2
	sub.w	$r13,$r14,$r13
	slli.w	$r13,$r13,0
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,24
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,24
	ld.d	$r12,$r3,40
	and	$r12,$r13,$r12
	or	$r14,$r12,$r0
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,40
	nor	$r12,$r0,$r12
	and	$r12,$r13,$r12
	or	$r12,$r14,$r12
	ctz.d	$r12,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,40
	slli.w	$r12,$r12,0
	andi	$r12,$r12,64
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,16
	bnez	$r12,.L936
	ld.d	$r12,$r3,24
	bnez	$r12,.L937
	or	$r12,$r0,$r0
	b	.L939
.L937:
	ld.d	$r12,$r3,24
	ctz.d	$r12,$r12
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,65
	slli.w	$r12,$r12,0
	b	.L939
.L936:
	ld.d	$r12,$r3,16
	ctz.d	$r12,$r12
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
.L939:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,8
	or	$r12,$r5,$r0
	st.w	$r5,$r3,4
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r3,44
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,32
	ld.w	$r13,$r3,4
	ld.w	$r12,$r3,44
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L942
	st.w	$r0,$r3,28
	ldptr.w	$r13,$r3,36
	ld.w	$r14,$r3,4
	ld.w	$r12,$r3,44
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,24
	b	.L943
.L942:
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	bnez	$r12,.L944
	ld.d	$r12,$r3,8
	b	.L946
.L944:
	ldptr.w	$r13,$r3,36
	ld.w	$r12,$r3,4
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
	ldptr.w	$r13,$r3,36
	ld.w	$r14,$r3,44
	ld.w	$r12,$r3,4
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ldptr.w	$r13,$r3,32
	ld.w	$r12,$r3,4
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,24
.L943:
	ld.d	$r12,$r3,24
.L946:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	or	$r12,$r6,$r0
	st.w	$r6,$r3,12
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r3,76
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	st.d	$r13,$r3,48
	st.d	$r12,$r3,56
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,76
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L949
	st.d	$r0,$r3,40
	ld.d	$r13,$r3,56
	ld.w	$r14,$r3,12
	ld.w	$r12,$r3,76
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	b	.L950
.L949:
	ld.w	$r12,$r3,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L951
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	b	.L953
.L951:
	ld.d	$r13,$r3,56
	ld.w	$r12,$r3,12
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,56
	ld.w	$r14,$r3,76
	ld.w	$r12,$r3,12
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.d	$r13,$r13,$r12
	ld.d	$r14,$r3,48
	ld.w	$r12,$r3,12
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r3,32
.L950:
	ld.d	$r15,$r3,32
	ld.d	$r14,$r3,40
	or	$r13,$r15,$r0
	or	$r12,$r14,$r0
.L953:
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r3,12
	or	$r12,$r13,$r0
	st.w	$r12,$r3,8
	addi.w	$r12,$r0,16			# 0x10
	st.w	$r12,$r3,44
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,40
	and	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r3,8
	ld.w	$r12,$r3,40
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,16
	ldptr.w	$r13,$r3,16
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,36
	ldptr.w	$r13,$r3,16
	ld.w	$r12,$r3,40
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,16
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r3,8
	ld.w	$r12,$r3,40
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,36
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,32
	ldptr.w	$r13,$r3,16
	ld.w	$r14,$r3,32
	ld.w	$r12,$r3,40
	and	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ld.w	$r12,$r3,44
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,16
	ld.w	$r13,$r3,32
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,20
	ldptr.w	$r13,$r3,16
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
	ldptr.w	$r13,$r3,16
	ld.w	$r12,$r3,40
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,16
	ld.w	$r13,$r3,8
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r3,12
	ld.w	$r12,$r3,40
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,24
	ldptr.w	$r13,$r3,16
	ld.w	$r14,$r3,24
	ld.w	$r12,$r3,40
	and	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ld.w	$r12,$r3,44
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,16
	ldptr.w	$r12,$r3,20
	or	$r14,$r12,$r0
	ld.w	$r13,$r3,24
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,20
	ldptr.w	$r12,$r3,20
	or	$r15,$r12,$r0
	ld.w	$r13,$r3,12
	ld.w	$r12,$r3,44
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r3,8
	ld.w	$r12,$r3,44
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,20
	ld.d	$r12,$r3,16
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,40
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,32
	ldptr.w	$r12,$r3,40
	ldptr.w	$r13,$r3,32
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__muldsi3
	or	$r12,$r4,$r0
	st.d	$r12,$r3,24
	ldptr.w	$r12,$r3,28
	or	$r14,$r12,$r0
	ldptr.w	$r12,$r3,44
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r3,32
	mul.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ldptr.w	$r12,$r3,40
	ldptr.w	$r15,$r3,36
	mul.w	$r12,$r12,$r15
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r3,28
	ld.d	$r12,$r3,24
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r3,76
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	ld.w	$r12,$r3,76
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,64
	ld.d	$r13,$r3,8
	ld.d	$r12,$r3,64
	and	$r13,$r13,$r12
	ldptr.d	$r14,$r3,0
	ld.d	$r12,$r3,64
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	st.d	$r12,$r3,16
	ld.d	$r13,$r3,16
	ld.w	$r12,$r3,76
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,56
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,64
	and	$r12,$r13,$r12
	st.d	$r12,$r3,16
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,76
	srl.d	$r13,$r13,$r12
	ldptr.d	$r14,$r3,0
	ld.d	$r12,$r3,64
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r3,56
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,48
	ld.d	$r13,$r3,16
	ld.d	$r14,$r3,48
	ld.d	$r12,$r3,64
	and	$r14,$r14,$r12
	ld.w	$r12,$r3,76
	sll.d	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,16
	ld.d	$r13,$r3,48
	ld.w	$r12,$r3,76
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,24
	ld.d	$r13,$r3,16
	ld.w	$r12,$r3,76
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,64
	and	$r12,$r13,$r12
	st.d	$r12,$r3,16
	ldptr.d	$r13,$r3,0
	ld.w	$r12,$r3,76
	srl.d	$r13,$r13,$r12
	ld.d	$r14,$r3,8
	ld.d	$r12,$r3,64
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r3,40
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,32
	ld.d	$r13,$r3,16
	ld.d	$r14,$r3,32
	ld.d	$r12,$r3,64
	and	$r14,$r14,$r12
	ld.w	$r12,$r3,76
	sll.d	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,16
	ld.d	$r12,$r3,24
	or	$r14,$r12,$r0
	ld.d	$r13,$r3,32
	ld.w	$r12,$r3,76
	srl.d	$r12,$r13,$r12
	add.d	$r12,$r14,$r12
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,24
	or	$r15,$r12,$r0
	ld.d	$r13,$r3,8
	ld.w	$r12,$r3,76
	srl.d	$r13,$r13,$r12
	ldptr.d	$r14,$r3,0
	ld.w	$r12,$r3,76
	srl.d	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	add.d	$r12,$r15,$r12
	st.d	$r12,$r3,24
	ld.d	$r13,$r3,16
	ld.d	$r12,$r3,24
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,80
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	.cfi_offset 1, -8
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	stptr.d	$r6,$r3,0
	st.d	$r7,$r3,8
	ld.d	$r12,$r3,16
	st.d	$r12,$r3,64
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,72
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,56
	ld.d	$r12,$r3,64
	ld.d	$r13,$r3,48
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__mulddi3
	or	$r13,$r4,$r0
	or	$r12,$r5,$r0
	st.d	$r13,$r3,32
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,40
	or	$r14,$r12,$r0
	ld.d	$r12,$r3,72
	or	$r13,$r12,$r0
	ld.d	$r12,$r3,48
	mul.d	$r13,$r13,$r12
	ld.d	$r12,$r3,64
	ld.d	$r15,$r3,56
	mul.d	$r12,$r12,$r15
	add.d	$r12,$r13,$r12
	add.d	$r12,$r14,$r12
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,32
	ld.d	$r12,$r3,40
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	sub.d	$r12,$r0,$r12
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r16,$r3,0
	ld.d	$r15,$r3,8
	or	$r13,$r0,$r0
	or	$r17,$r0,$r0
	sub.d	$r14,$r13,$r16
	or	$r12,$r14,$r0
	sltu	$r12,$r13,$r12
	bstrpick.d	$r13,$r12,31,0
	sub.d	$r12,$r17,$r15
	sub.d	$r12,$r12,$r13
	or	$r16,$r14,$r0
	or	$r15,$r12,$r0
	or	$r13,$r16,$r0
	or	$r12,$r15,$r0
	or	$r4,$r13,$r0
	or	$r5,$r12,$r0
	addi.d	$r3,$r3,16
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ldptr.w	$r12,$r3,28
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r3,24
	xor	$r12,$r13,$r12
	st.w	$r12,$r3,44
	ld.w	$r12,$r3,44
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,44
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,40
	ld.w	$r12,$r3,40
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,40
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,36
	ld.w	$r12,$r3,36
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,36
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,32
	ld.w	$r12,$r3,32
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,40
	or	$r13,$r12,$r0
	ld.d	$r12,$r3,32
	xor	$r12,$r13,$r12
	st.d	$r12,$r3,24
	ldptr.w	$r12,$r3,28
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r3,24
	xor	$r12,$r13,$r12
	st.w	$r12,$r3,60
	ld.w	$r12,$r3,60
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,60
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,56
	ld.w	$r12,$r3,56
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,56
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,52
	ld.w	$r12,$r3,52
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,52
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,48
	ld.w	$r12,$r3,48
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,28
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,28
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,24
	ld.w	$r12,$r3,24
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,24
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,20
	ld.w	$r12,$r3,20
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r3,20
	xor	$r12,$r12,$r13
	st.w	$r12,$r3,16
	ld.w	$r12,$r3,16
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r4,$r3,8
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,56
	ld.d	$r12,$r3,56
	srli.d	$r13,$r12,1
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r13,$r12
	ld.d	$r13,$r3,56
	sub.d	$r12,$r13,$r12
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,48
	srli.d	$r13,$r12,2
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r13,$r13,$r12
	ld.d	$r14,$r3,48
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,40
	srli.d	$r13,$r12,4
	ld.d	$r12,$r3,40
	add.d	$r13,$r13,$r12
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r13,$r12
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,32
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,32
	srli.d	$r12,$r12,32
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,28
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,24
	ld.w	$r12,$r3,24
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,24
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	or	$r12,$r4,$r0
	st.w	$r12,$r3,12
	ld.w	$r12,$r3,12
	st.w	$r12,$r3,44
	ld.w	$r12,$r3,44
	srli.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,44
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r3,40
	ld.w	$r12,$r3,40
	srli.w	$r12,$r12,2
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	and	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r3,40
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,36
	ld.w	$r12,$r3,36
	srli.w	$r12,$r12,4
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,36
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	and	$r12,$r13,$r12
	st.w	$r12,$r3,32
	ld.w	$r12,$r3,32
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,32
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,28
	ld.w	$r12,$r3,28
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,28
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,63
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,48
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	stptr.d	$r4,$r3,0
	st.d	$r5,$r3,8
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,80
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,88
	ld.d	$r12,$r3,88
	slli.d	$r13,$r12,63
	ld.d	$r12,$r3,80
	srli.d	$r12,$r12,1
	or	$r12,$r13,$r12
	ld.d	$r13,$r3,88
	srli.d	$r13,$r13,1
	lu12i.w	$r14,1431654400>>12			# 0x55555000
	ori	$r14,$r14,1365
	bstrins.d	$r14,$r14,63,32
	or	$r14,$r14,$r0
	and	$r17,$r12,$r14
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r15,$r13,$r12
	ld.d	$r13,$r3,80
	ld.d	$r16,$r3,88
	sub.d	$r14,$r13,$r17
	or	$r12,$r14,$r0
	sltu	$r12,$r13,$r12
	bstrpick.d	$r13,$r12,31,0
	sub.d	$r12,$r16,$r15
	sub.d	$r12,$r12,$r13
	st.d	$r14,$r3,64
	st.d	$r12,$r3,72
	ld.d	$r12,$r3,72
	slli.d	$r13,$r12,62
	ld.d	$r12,$r3,64
	srli.d	$r12,$r12,2
	or	$r12,$r13,$r12
	ld.d	$r13,$r3,72
	srli.d	$r13,$r13,2
	lu12i.w	$r14,858992640>>12			# 0x33333000
	ori	$r14,$r14,819
	bstrins.d	$r14,$r14,63,32
	or	$r14,$r14,$r0
	and	$r14,$r12,$r14
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r16,$r13,$r12
	ld.d	$r13,$r3,64
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r17,$r13,$r12
	ld.d	$r13,$r3,72
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r15,$r13,$r12
	add.d	$r13,$r14,$r17
	or	$r12,$r13,$r0
	sltu	$r12,$r12,$r14
	bstrpick.d	$r14,$r12,31,0
	add.d	$r12,$r16,$r15
	add.d	$r12,$r14,$r12
	st.d	$r13,$r3,48
	st.d	$r12,$r3,56
	ld.d	$r12,$r3,56
	slli.d	$r13,$r12,60
	ld.d	$r12,$r3,48
	srli.d	$r12,$r12,4
	or	$r12,$r13,$r12
	ld.d	$r13,$r3,56
	srli.d	$r16,$r13,4
	ld.d	$r17,$r3,48
	ld.d	$r15,$r3,56
	add.d	$r14,$r12,$r17
	or	$r13,$r14,$r0
	sltu	$r12,$r13,$r12
	bstrpick.d	$r12,$r12,31,0
	add.d	$r13,$r16,$r15
	add.d	$r12,$r12,$r13
	or	$r13,$r12,$r0
	or	$r16,$r14,$r0
	or	$r15,$r13,$r0
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r16,$r12
	st.d	$r12,$r3,32
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r15,$r12
	st.d	$r12,$r3,40
	ld.d	$r12,$r3,32
	ld.d	$r13,$r3,40
	srli.d	$r13,$r13,0
	add.d	$r12,$r12,$r13
	st.d	$r12,$r3,24
	ld.d	$r12,$r3,24
	slli.w	$r13,$r12,0
	ld.d	$r12,$r3,24
	srli.d	$r12,$r12,32
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,20
	ld.w	$r12,$r3,20
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,20
	add.w	$r12,$r13,$r12
	st.w	$r12,$r3,16
	ld.w	$r12,$r3,16
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r3,16
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,255
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,96
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	fst.d	$f0,$r3,8
	or	$r12,$r4,$r0
	st.w	$r12,$r3,4
	ld.w	$r12,$r3,4
	srli.w	$r12,$r12,31
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,20
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fst.d	$f0,$r3,24
.L995:
	ld.w	$r12,$r3,4
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L992
	fld.d	$f1,$r3,24
	fld.d	$f0,$r3,8
	fmul.d	$f0,$f1,$f0
	fst.d	$f0,$r3,24
.L992:
	ld.w	$r12,$r3,4
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,4
	ld.w	$r12,$r3,4
	slli.w	$r12,$r12,0
	beqz	$r12,.L1000
	fld.d	$f0,$r3,8
	fmul.d	$f0,$f0,$f0
	fst.d	$f0,$r3,8
	b	.L995
.L1000:
	nop
	ld.w	$r12,$r3,20
	slli.w	$r12,$r12,0
	beqz	$r12,.L996
	fld.d	$f0,$r3,24
	frecip.d	$f0,$f0
	b	.L998
.L996:
	fld.d	$f0,$r3,24
.L998:
	nop
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	fst.s	$f0,$r3,12
	or	$r12,$r4,$r0
	st.w	$r12,$r3,8
	ld.w	$r12,$r3,8
	srli.w	$r12,$r12,31
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r3,24
	la.local	$r12,.LC14
	fld.s	$f0,$r12,0
	fst.s	$f0,$r3,28
.L1006:
	ld.w	$r12,$r3,8
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L1003
	fld.s	$f1,$r3,28
	fld.s	$f0,$r3,12
	fmul.s	$f0,$f1,$f0
	fst.s	$f0,$r3,28
.L1003:
	ld.w	$r12,$r3,8
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r3,8
	ld.w	$r12,$r3,8
	slli.w	$r12,$r12,0
	beqz	$r12,.L1011
	fld.s	$f0,$r3,12
	fmul.s	$f0,$f0,$f0
	fst.s	$f0,$r3,12
	b	.L1006
.L1011:
	nop
	ld.w	$r12,$r3,24
	slli.w	$r12,$r12,0
	beqz	$r12,.L1007
	fld.s	$f0,$r3,28
	frecip.s	$f0,$f0
	b	.L1009
.L1007:
	fld.s	$f0,$r3,28
.L1009:
	nop
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,24
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,16
	ldptr.w	$r13,$r3,28
	ldptr.w	$r12,$r3,20
	bgeu	$r13,$r12,.L1014
	or	$r12,$r0,$r0
	b	.L1019
.L1014:
	ldptr.w	$r13,$r3,28
	ldptr.w	$r12,$r3,20
	bleu	$r13,$r12,.L1016
	addi.w	$r12,$r0,2			# 0x2
	b	.L1019
.L1016:
	ldptr.w	$r13,$r3,24
	ldptr.w	$r12,$r3,16
	bgeu	$r13,$r12,.L1017
	or	$r12,$r0,$r0
	b	.L1019
.L1017:
	ldptr.w	$r13,$r3,24
	ldptr.w	$r12,$r3,16
	bleu	$r13,$r12,.L1018
	addi.w	$r12,$r0,2			# 0x2
	b	.L1019
.L1018:
	addi.w	$r12,$r0,1			# 0x1
.L1019:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,32
	.cfi_def_cfa_offset 0
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	.cfi_offset 1, -8
	st.d	$r4,$r3,8
	stptr.d	$r5,$r3,0
	ld.d	$r12,$r3,8
	ldptr.d	$r13,$r3,0
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__ucmpdi2
	or	$r12,$r4,$r0
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r4,$r3,16
	st.d	$r5,$r3,24
	stptr.d	$r6,$r3,0
	st.d	$r7,$r3,8
	ld.d	$r12,$r3,16
	st.d	$r12,$r3,48
	ld.d	$r12,$r3,24
	st.d	$r12,$r3,56
	ldptr.d	$r12,$r3,0
	st.d	$r12,$r3,32
	ld.d	$r12,$r3,8
	st.d	$r12,$r3,40
	ld.d	$r13,$r3,56
	ld.d	$r12,$r3,40
	bgeu	$r13,$r12,.L1025
	or	$r12,$r0,$r0
	b	.L1030
.L1025:
	ld.d	$r13,$r3,56
	ld.d	$r12,$r3,40
	bleu	$r13,$r12,.L1027
	addi.w	$r12,$r0,2			# 0x2
	b	.L1030
.L1027:
	ld.d	$r13,$r3,48
	ld.d	$r12,$r3,32
	bgeu	$r13,$r12,.L1028
	or	$r12,$r0,$r0
	b	.L1030
.L1028:
	ld.d	$r13,$r3,48
	ld.d	$r12,$r3,32
	bleu	$r13,$r12,.L1029
	addi.w	$r12,$r0,2			# 0x2
	b	.L1030
.L1029:
	addi.w	$r12,$r0,1			# 0x1
.L1030:
	or	$r4,$r12,$r0
	addi.d	$r3,$r3,64
	.cfi_def_cfa_offset 0
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
.LC2:
	.word	-1
	.word	-1048577
	.align	3
.LC3:
	.word	-1
	.word	2146435071
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC4:
	.word	-1
	.word	-1
	.word	-1
	.word	-65537
	.align	4
.LC5:
	.word	-1
	.word	-1
	.word	-1
	.word	2147418111
	.section	.rodata.cst4
	.align	2
.LC6:
	.word	1056964608
	.align	2
.LC7:
	.word	1073741824
	.section	.rodata.cst8
	.align	3
.LC8:
	.word	0
	.word	1071644672
	.align	3
.LC9:
	.word	0
	.word	1073741824
	.section	.rodata.cst16
	.align	4
.LC10:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC11:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.section	.rodata.cst8
	.align	3
.LC12:
	.word	0
	.word	1072693248
	.section	.rodata.cst4
	.align	2
.LC13:
	.word	1191182336
	.align	2
.LC14:
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
