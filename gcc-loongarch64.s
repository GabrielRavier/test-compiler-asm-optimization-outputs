	.file	"mini-libc.c"
	.text
	.align	2
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	or	$r14,$r5,$r0
	or	$r4,$r14,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	or	$r14,$r5,$r0
	or	$r4,$r14,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bleu	$r4,$r5,.L4
	add.d	$r5,$r5,$r6
	add.d	$r14,$r4,$r6
	or	$r12,$r6,$r0
	b	.L5
.L6:
	sub.d	$r13,$r5,$r6
	addi.d	$r13,$r13,-1
	ldx.b	$r15,$r13,$r12
	sub.d	$r13,$r14,$r6
	addi.d	$r13,$r13,-1
	stx.b	$r15,$r13,$r12
	addi.d	$r12,$r12,-1
.L5:
	bnez	$r12,.L6
	b	.L7
.L4:
	bne	$r4,$r5,.L10
	b	.L7
.L9:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
	b	.L8
.L10:
	or	$r12,$r0,$r0
.L8:
	bne	$r12,$r6,.L9
.L7:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.w	$r6,$r6,7,0
	b	.L12
.L14:
	addi.d	$r7,$r7,-1
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
.L12:
	beqz	$r7,.L13
	ld.bu	$r12,$r5,0
	st.b	$r12,$r4,0
	bne	$r6,$r12,.L14
.L13:
	beqz	$r7,.L16
	addi.d	$r4,$r4,1
	b	.L15
.L16:
	or	$r4,$r0,$r0
.L15:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.w	$r5,$r5,7,0
	b	.L18
.L20:
	addi.d	$r4,$r4,1
	addi.d	$r6,$r6,-1
.L18:
	beqz	$r6,.L19
	ld.bu	$r12,$r4,0
	bne	$r5,$r12,.L20
.L19:
	bnez	$r6,.L21
	or	$r4,$r0,$r0
.L21:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L24
.L26:
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
.L24:
	beqz	$r6,.L25
	ld.bu	$r13,$r4,0
	ld.bu	$r12,$r5,0
	beq	$r13,$r12,.L26
.L25:
	beqz	$r6,.L28
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	b	.L27
.L28:
	or	$r4,$r0,$r0
.L27:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
	b	.L30
.L31:
	ldx.bu	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L30:
	bne	$r12,$r6,.L31
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.w	$r5,$r5,7,0
	addi.d	$r6,$r6,-1
	b	.L33
.L35:
	ldx.bu	$r13,$r4,$r6
	addi.d	$r12,$r6,-1
	bne	$r5,$r13,.L36
	add.d	$r4,$r4,$r6
	b	.L34
.L36:
	or	$r6,$r12,$r0
.L33:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r12,.L35
	or	$r4,$r0,$r0
.L34:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	add.d	$r6,$r4,$r6
	or	$r12,$r4,$r0
	b	.L38
.L39:
	st.b	$r5,$r12,0
	addi.d	$r12,$r12,1
.L38:
	bne	$r12,$r6,.L39
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L41
.L42:
	addi.d	$r5,$r5,1
	addi.d	$r4,$r4,1
.L41:
	ld.b	$r12,$r5,0
	st.b	$r12,$r4,0
	bnez	$r12,.L42
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.w	$r5,$r5,7,0
	b	.L44
.L46:
	addi.d	$r4,$r4,1
.L44:
	ld.b	$r12,$r4,0
	beqz	$r12,.L45
	ld.bu	$r12,$r4,0
	bne	$r5,$r12,.L46
.L45:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
.L49:
	ld.b	$r12,$r4,0
	beq	$r5,$r12,.L48
	addi.d	$r4,$r4,1
	ld.b	$r12,$r4,-1
	bnez	$r12,.L49
	or	$r4,$r0,$r0
.L48:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L52
.L54:
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
.L52:
	ld.b	$r13,$r4,0
	ld.b	$r12,$r5,0
	bne	$r13,$r12,.L53
	bnez	$r13,.L54
.L53:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	b	.L56
.L57:
	addi.d	$r12,$r12,1
.L56:
	ld.b	$r13,$r12,0
	bnez	$r13,.L57
	sub.d	$r4,$r12,$r4
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	beqz	$r6,.L63
	addi.d	$r6,$r6,-1
	add.d	$r6,$r4,$r6
	b	.L60
.L62:
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
.L60:
	ld.bu	$r12,$r4,0
	beqz	$r12,.L61
	ld.bu	$r12,$r5,0
	beqz	$r12,.L61
	beq	$r4,$r6,.L61
	ld.bu	$r13,$r4,0
	beq	$r13,$r12,.L62
.L61:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
	b	.L59
.L63:
	or	$r4,$r0,$r0
.L59:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	b	.L65
.L66:
	ld.b	$r13,$r12,1
	st.b	$r13,$r5,0
	ld.b	$r13,$r12,0
	st.b	$r13,$r5,1
	addi.d	$r5,$r5,2
	addi.d	$r12,$r12,2
.L65:
	add.d	$r13,$r4,$r6
	sub.d	$r13,$r13,$r12
	addi.w	$r14,$r0,1			# 0x1
	bgt	$r13,$r14,.L66
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	ori	$r4,$r4,32
	addi.w	$r4,$r4,-97
	sltui	$r4,$r4,26
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sltui	$r4,$r4,128
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r4,$r12,.L71
	addi.w	$r12,$r0,9			# 0x9
	bne	$r4,$r12,.L72
	addi.w	$r4,$r0,1			# 0x1
	b	.L70
.L71:
	addi.w	$r4,$r0,1			# 0x1
	b	.L70
.L72:
	or	$r4,$r0,$r0
.L70:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r4,$r12,.L75
	addi.w	$r12,$r0,127			# 0x7f
	bne	$r4,$r12,.L76
	addi.w	$r4,$r0,1			# 0x1
	b	.L74
.L75:
	addi.w	$r4,$r0,1			# 0x1
	b	.L74
.L76:
	or	$r4,$r0,$r0
.L74:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-48
	sltui	$r4,$r4,10
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-33
	sltui	$r4,$r4,94
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-97
	sltui	$r4,$r4,26
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-32
	sltui	$r4,$r4,95
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r4,$r12,.L83
	addi.w	$r4,$r4,-9
	addi.w	$r12,$r0,4			# 0x4
	bgtu	$r4,$r12,.L84
	addi.w	$r4,$r0,1			# 0x1
	b	.L82
.L83:
	addi.w	$r4,$r0,1			# 0x1
	b	.L82
.L84:
	or	$r4,$r0,$r0
.L82:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-65
	sltui	$r4,$r4,26
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r4,$r12,.L88
	addi.w	$r12,$r4,-127
	addi.w	$r13,$r0,32			# 0x20
	bleu	$r12,$r13,.L89
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4056
	add.w	$r12,$r12,$r4
	addi.w	$r13,$r0,1			# 0x1
	bleu	$r12,$r13,.L90
	addu16i.d	$r4,$r4,-1
	addi.w	$r4,$r4,7
	addi.w	$r12,$r0,2			# 0x2
	bgtu	$r4,$r12,.L91
	addi.w	$r4,$r0,1			# 0x1
	b	.L87
.L88:
	addi.w	$r4,$r0,1			# 0x1
	b	.L87
.L89:
	addi.w	$r4,$r0,1			# 0x1
	b	.L87
.L90:
	addi.w	$r4,$r0,1			# 0x1
	b	.L87
.L91:
	or	$r4,$r0,$r0
.L87:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-48
	sltui	$r4,$r4,10
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,254			# 0xfe
	bgtu	$r4,$r12,.L94
	addi.w	$r4,$r4,1
	andi	$r4,$r4,127
	addi.w	$r12,$r0,32			# 0x20
	sltu	$r4,$r12,$r4
	b	.L95
.L94:
	lu12i.w	$r12,8192>>12			# 0x2000
	ori	$r12,$r12,39
	bleu	$r4,$r12,.L96
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4054
	add.w	$r12,$r12,$r4
	lu12i.w	$r13,45056>>12			# 0xb000
	ori	$r13,$r13,2005
	bleu	$r12,$r13,.L97
	lu12i.w	$r12,-57344>>12			# 0xffffffffffff2000
	add.w	$r12,$r12,$r4
	lu12i.w	$r13,4096>>12			# 0x1000
	ori	$r13,$r13,4088
	bleu	$r12,$r13,.L98
	addu16i.d	$r12,$r4,-1
	addi.w	$r12,$r12,4
	lu12i.w	$r13,1048576>>12			# 0x100000
	ori	$r13,$r13,3
	bgtu	$r12,$r13,.L99
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4094
	and	$r4,$r4,$r12
	beq	$r4,$r12,.L100
	addi.w	$r4,$r0,1			# 0x1
	b	.L95
.L96:
	addi.w	$r4,$r0,1			# 0x1
	b	.L95
.L97:
	addi.w	$r4,$r0,1			# 0x1
	b	.L95
.L98:
	addi.w	$r4,$r0,1			# 0x1
	b	.L95
.L99:
	or	$r4,$r0,$r0
	b	.L95
.L100:
	or	$r4,$r0,$r0
.L95:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r13,$r4,-48
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L103
	ori	$r4,$r4,32
	addi.w	$r4,$r4,-97
	addi.w	$r12,$r0,5			# 0x5
	bgtu	$r4,$r12,.L104
	addi.w	$r4,$r0,1			# 0x1
	b	.L102
.L103:
	addi.w	$r4,$r0,1			# 0x1
	b	.L102
.L104:
	or	$r4,$r0,$r0
.L102:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	andi	$r4,$r4,127
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L107
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L110
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L113
	fsub.d	$f0,$f0,$f1
	b	.L107
.L110:
	fmov.d	$f0,$f1
	b	.L107
.L113:
	movgr2fr.d	$f0,$r0
.L107:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L115
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L118
	fcmp.sgt.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L121
	fsub.s	$f0,$f0,$f1
	b	.L115
.L118:
	fmov.s	$f0,$f1
	b	.L115
.L121:
	movgr2fr.w	$f0,$r0
.L115:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fst.d	$f1,$r22,-32
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L126
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L127
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,63
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L124
	ld.d	$r12,$r22,-24
	bge	$r12,$r0,.L128
	b	.L123
.L124:
	fld.d	$f0,$r22,-24
	fld.d	$f1,$r22,-32
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L131
	fmov.d	$f0,$f1
	b	.L123
.L126:
	fld.d	$f0,$r22,-32
	b	.L123
.L127:
	fld.d	$f0,$r22,-24
	b	.L123
.L128:
	fld.d	$f0,$r22,-24
	b	.L123
.L131:
	fld.d	$f0,$r22,-24
.L123:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fst.s	$f1,$r22,-24
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L136
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L137
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r22,-24
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L134
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	beqz	$r12,.L138
	b	.L133
.L134:
	fld.s	$f0,$r22,-20
	fld.s	$f1,$r22,-24
	fcmp.slt.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L141
	fmov.s	$f0,$f1
	b	.L133
.L136:
	fld.s	$f0,$r22,-24
	b	.L133
.L137:
	fld.s	$f0,$r22,-20
	b	.L133
.L138:
	fld.s	$f0,$r22,-20
	b	.L133
.L141:
	fld.s	$f0,$r22,-20
.L133:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	stptr.d	$r27,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r24,$r4,$r0
	or	$r25,$r5,$r0
	or	$r26,$r6,$r0
	or	$r27,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L146
	or	$r6,$r26,$r0
	or	$r7,$r27,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L147
	srli.d	$r12,$r25,63
	srli.d	$r13,$r27,63
	beq	$r12,$r13,.L144
	bge	$r25,$r0,.L148
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L143
.L144:
	or	$r6,$r26,$r0
	or	$r7,$r27,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__lttf2)
	bge	$r4,$r0,.L151
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L143
.L146:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L143
.L147:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L143
.L148:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L143
.L151:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
.L143:
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fst.d	$f1,$r22,-32
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L156
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L157
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,63
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L154
	ld.d	$r12,$r22,-24
	bge	$r12,$r0,.L158
	fld.d	$f0,$r22,-24
	b	.L153
.L154:
	fld.d	$f0,$r22,-24
	fld.d	$f1,$r22,-32
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L161
	b	.L153
.L156:
	fld.d	$f0,$r22,-32
	b	.L153
.L157:
	fld.d	$f0,$r22,-24
	b	.L153
.L158:
	fld.d	$f0,$r22,-32
	b	.L153
.L161:
	fld.d	$f0,$r22,-32
.L153:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fst.s	$f1,$r22,-24
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L166
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L167
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r22,-24
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L164
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	beqz	$r12,.L168
	fld.s	$f0,$r22,-20
	b	.L163
.L164:
	fld.s	$f0,$r22,-20
	fld.s	$f1,$r22,-24
	fcmp.slt.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L171
	b	.L163
.L166:
	fld.s	$f0,$r22,-24
	b	.L163
.L167:
	fld.s	$f0,$r22,-20
	b	.L163
.L168:
	fld.s	$f0,$r22,-24
	b	.L163
.L171:
	fld.s	$f0,$r22,-24
.L163:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,32
	st.d	$r24,$r3,24
	st.d	$r25,$r3,16
	st.d	$r26,$r3,8
	stptr.d	$r27,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
	or	$r24,$r6,$r0
	or	$r25,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L176
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L177
	srli.d	$r12,$r27,63
	srli.d	$r13,$r25,63
	beq	$r12,$r13,.L174
	bge	$r27,$r0,.L178
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L173
.L174:
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__lttf2)
	bge	$r4,$r0,.L181
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L173
.L176:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L173
.L177:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L173
.L178:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L173
.L181:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
.L173:
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r24,$r3,24
	.cfi_restore 24
	ld.d	$r25,$r3,16
	.cfi_restore 25
	ld.d	$r26,$r3,8
	.cfi_restore 26
	ldptr.d	$r27,$r3,0
	.cfi_restore 27
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	slli.w	$r4,$r4,0
	la.local	$r12,s.0
	b	.L183
.L184:
	andi	$r13,$r4,63
	la.local	$r14,digits
	ldx.b	$r13,$r14,$r13
	st.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bstrpick.d	$r4,$r4,31,6
.L183:
	bnez	$r4,.L184
	st.b	$r0,$r12,0
	la.local	$r4,s.0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r4,$r4,-1
	bstrpick.d	$r4,$r4,31,0
	pcalau12i	$r12,%pc_hi20(seed)
	st.d	$r4,$r12,%pc_lo12(seed)
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bnez	$r5,.L188
	st.d	$r0,$r4,8
	stptr.d	$r0,$r4,0
	b	.L187
.L188:
	ldptr.d	$r12,$r5,0
	stptr.d	$r12,$r4,0
	st.d	$r5,$r4,8
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L187
	st.d	$r4,$r12,8
.L187:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L191
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L191:
	ld.d	$r12,$r4,8
	beqz	$r12,.L190
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L190:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,64
	st.d	$r23,$r3,56
	st.d	$r24,$r3,48
	st.d	$r25,$r3,40
	st.d	$r26,$r3,32
	st.d	$r27,$r3,24
	st.d	$r28,$r3,16
	st.d	$r29,$r3,8
	stptr.d	$r30,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	or	$r27,$r4,$r0
	or	$r23,$r5,$r0
	or	$r28,$r6,$r0
	or	$r24,$r7,$r0
	or	$r30,$r8,$r0
	ldptr.d	$r26,$r6,0
	or	$r29,$r5,$r0
	or	$r25,$r0,$r0
	b	.L194
.L197:
	or	$r5,$r29,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r30,0
	add.d	$r29,$r29,$r24
	bnez	$r4,.L195
	mul.d	$r25,$r25,$r24
	add.d	$r4,$r23,$r25
	b	.L196
.L195:
	addi.d	$r25,$r25,1
.L194:
	bne	$r25,$r26,.L197
	addi.d	$r12,$r26,1
	stptr.d	$r12,$r28,0
	mul.d	$r26,$r24,$r26
	or	$r6,$r24,$r0
	or	$r5,$r27,$r0
	add.d	$r4,$r23,$r26
	bl	%plt(memcpy)
.L196:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	ld.d	$r23,$r3,56
	.cfi_restore 23
	ld.d	$r24,$r3,48
	.cfi_restore 24
	ld.d	$r25,$r3,40
	.cfi_restore 25
	ld.d	$r26,$r3,32
	.cfi_restore 26
	ld.d	$r27,$r3,24
	.cfi_restore 27
	ld.d	$r28,$r3,16
	.cfi_restore 28
	ld.d	$r29,$r3,8
	.cfi_restore 29
	ldptr.d	$r30,$r3,0
	.cfi_restore 30
	addi.d	$r3,$r3,80
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	st.d	$r22,$r3,64
	st.d	$r23,$r3,56
	st.d	$r24,$r3,48
	st.d	$r25,$r3,40
	st.d	$r26,$r3,32
	st.d	$r27,$r3,24
	st.d	$r28,$r3,16
	st.d	$r29,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	or	$r28,$r4,$r0
	or	$r23,$r5,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	ldptr.d	$r29,$r6,0
	or	$r26,$r5,$r0
	or	$r24,$r0,$r0
	b	.L199
.L202:
	or	$r5,$r26,$r0
	or	$r4,$r28,$r0
	jirl	$r1,$r27,0
	add.d	$r26,$r26,$r25
	bnez	$r4,.L200
	mul.d	$r24,$r24,$r25
	add.d	$r4,$r23,$r24
	b	.L201
.L200:
	addi.d	$r24,$r24,1
.L199:
	bne	$r24,$r29,.L202
	or	$r4,$r0,$r0
.L201:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	ld.d	$r23,$r3,56
	.cfi_restore 23
	ld.d	$r24,$r3,48
	.cfi_restore 24
	ld.d	$r25,$r3,40
	.cfi_restore 25
	ld.d	$r26,$r3,32
	.cfi_restore 26
	ld.d	$r27,$r3,24
	.cfi_restore 27
	ld.d	$r28,$r3,16
	.cfi_restore 28
	ld.d	$r29,$r3,8
	.cfi_restore 29
	addi.d	$r3,$r3,80
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.w	$r12,$r4,31
	xor	$r4,$r4,$r12
	sub.w	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	b	.L205
.L206:
	addi.d	$r23,$r23,1
.L205:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L206
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L212
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L213
	addi.w	$r12,$r0,1			# 0x1
	b	.L207
.L212:
	or	$r12,$r0,$r0
.L207:
	addi.d	$r23,$r23,1
	b	.L208
.L213:
	or	$r12,$r0,$r0
.L208:
	or	$r4,$r0,$r0
	b	.L209
.L210:
	alsl.w	$r4,$r4,$r4,2
	slli.w	$r4,$r4,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.w	$r4,$r4,$r13
.L209:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L210
	bnez	$r12,.L211
	sub.w	$r4,$r0,$r4
.L211:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	b	.L216
.L217:
	addi.d	$r23,$r23,1
.L216:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L217
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L223
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L224
	addi.w	$r12,$r0,1			# 0x1
	b	.L218
.L223:
	or	$r12,$r0,$r0
.L218:
	addi.d	$r23,$r23,1
	b	.L219
.L224:
	or	$r12,$r0,$r0
.L219:
	or	$r4,$r0,$r0
	b	.L220
.L221:
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r4,$r4,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r4,$r4,$r13
.L220:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L221
	bnez	$r12,.L222
	sub.d	$r4,$r0,$r4
.L222:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	b	.L227
.L228:
	addi.d	$r23,$r23,1
.L227:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L228
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L234
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L235
	addi.w	$r12,$r0,1			# 0x1
	b	.L229
.L234:
	or	$r12,$r0,$r0
.L229:
	addi.d	$r23,$r23,1
	b	.L230
.L235:
	or	$r12,$r0,$r0
.L230:
	or	$r4,$r0,$r0
	b	.L231
.L232:
	alsl.d	$r4,$r4,$r4,2
	slli.d	$r4,$r4,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r4,$r4,$r13
.L231:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L232
	bnez	$r12,.L233
	sub.d	$r4,$r0,$r4
.L233:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r22,$r3,48
	st.d	$r23,$r3,40
	st.d	$r24,$r3,32
	st.d	$r25,$r3,24
	st.d	$r26,$r3,16
	st.d	$r27,$r3,8
	stptr.d	$r28,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	or	$r28,$r4,$r0
	or	$r26,$r5,$r0
	or	$r23,$r6,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	b	.L238
.L242:
	srli.d	$r24,$r23,1
	mul.d	$r24,$r24,$r25
	add.d	$r24,$r26,$r24
	or	$r5,$r24,$r0
	or	$r4,$r28,$r0
	jirl	$r1,$r27,0
	bge	$r4,$r0,.L239
	srli.d	$r23,$r23,1
	b	.L238
.L239:
	ble	$r4,$r0,.L243
	add.d	$r26,$r24,$r25
	srli.d	$r12,$r23,1
	addi.d	$r23,$r23,-1
	sub.d	$r23,$r23,$r12
.L238:
	bnez	$r23,.L242
	or	$r4,$r0,$r0
	b	.L241
.L243:
	or	$r4,$r24,$r0
.L241:
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
	ld.d	$r23,$r3,40
	.cfi_restore 23
	ld.d	$r24,$r3,32
	.cfi_restore 24
	ld.d	$r25,$r3,24
	.cfi_restore 25
	ld.d	$r26,$r3,16
	.cfi_restore 26
	ld.d	$r27,$r3,8
	.cfi_restore 27
	ldptr.d	$r28,$r3,0
	.cfi_restore 28
	addi.d	$r3,$r3,64
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	st.d	$r22,$r3,64
	st.d	$r23,$r3,56
	st.d	$r24,$r3,48
	st.d	$r25,$r3,40
	st.d	$r26,$r3,32
	st.d	$r27,$r3,24
	st.d	$r28,$r3,16
	st.d	$r29,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	or	$r29,$r4,$r0
	or	$r26,$r7,$r0
	or	$r28,$r8,$r0
	or	$r27,$r9,$r0
	slli.w	$r24,$r6,0
	or	$r25,$r5,$r0
	b	.L245
.L248:
	srai.w	$r23,$r24,1
	mul.d	$r23,$r23,$r26
	add.d	$r23,$r25,$r23
	or	$r6,$r27,$r0
	or	$r5,$r23,$r0
	or	$r4,$r29,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L249
	ble	$r4,$r0,.L247
	add.d	$r25,$r23,$r26
	addi.w	$r24,$r24,-1
.L247:
	srai.w	$r24,$r24,1
.L245:
	bnez	$r24,.L248
	or	$r4,$r0,$r0
	b	.L246
.L249:
	or	$r4,$r23,$r0
.L246:
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	ld.d	$r23,$r3,56
	.cfi_restore 23
	ld.d	$r24,$r3,48
	.cfi_restore 24
	ld.d	$r25,$r3,40
	.cfi_restore 25
	ld.d	$r26,$r3,32
	.cfi_restore 26
	ld.d	$r27,$r3,24
	.cfi_restore 27
	ld.d	$r28,$r3,16
	.cfi_restore 28
	ld.d	$r29,$r3,8
	.cfi_restore 29
	addi.d	$r3,$r3,80
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	div.w	$r12,$r4,$r5
	mod.w	$r5,$r4,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r12,31,0
	bstrins.d	$r4,$r5,63,32
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r14,$r5,$r0
	mod.d	$r5,$r4,$r5
	div.d	$r12,$r4,$r14
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r14,$r5,$r0
	mod.d	$r5,$r4,$r5
	div.d	$r12,$r4,$r14
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.d	$r12,$r4,63
	xor	$r4,$r12,$r4
	sub.d	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r14,$r5,$r0
	mod.d	$r5,$r4,$r5
	div.d	$r12,$r4,$r14
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L258
.L260:
	addi.d	$r4,$r4,4
.L258:
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L259
	bne	$r5,$r12,.L260
.L259:
	ldptr.w	$r12,$r4,0
	bnez	$r12,.L261
	or	$r4,$r0,$r0
.L261:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L264
.L266:
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
.L264:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r13,$r12,.L265
	beqz	$r13,.L265
	ldptr.w	$r12,$r5,0
	bnez	$r12,.L266
.L265:
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	blt	$r13,$r12,.L268
	slt	$r4,$r12,$r13
	b	.L267
.L268:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L267:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
.L270:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	addi.d	$r13,$r4,-4
	ldx.w	$r13,$r13,$r12
	bnez	$r13,.L270
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	b	.L272
.L273:
	addi.d	$r12,$r12,4
.L272:
	ldptr.w	$r13,$r12,0
	bnez	$r13,.L273
	sub.d	$r4,$r12,$r4
	srai.d	$r4,$r4,2
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L275
.L277:
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
.L275:
	beqz	$r6,.L276
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	bne	$r13,$r12,.L276
	beqz	$r13,.L276
	ldptr.w	$r12,$r5,0
	bnez	$r12,.L277
.L276:
	beqz	$r6,.L279
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	blt	$r13,$r12,.L280
	slt	$r4,$r12,$r13
	b	.L278
.L279:
	or	$r4,$r0,$r0
	b	.L278
.L280:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L278:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L282
.L284:
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
.L282:
	beqz	$r6,.L283
	ldptr.w	$r12,$r4,0
	bne	$r5,$r12,.L284
.L283:
	bnez	$r6,.L285
	or	$r4,$r0,$r0
.L285:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L288
.L290:
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
	addi.d	$r5,$r5,4
.L288:
	beqz	$r6,.L289
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	beq	$r13,$r12,.L290
.L289:
	beqz	$r6,.L292
	ldptr.w	$r13,$r4,0
	ldptr.w	$r12,$r5,0
	blt	$r13,$r12,.L293
	slt	$r4,$r12,$r13
	b	.L291
.L292:
	or	$r4,$r0,$r0
	b	.L291
.L293:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
.L291:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
	b	.L295
.L296:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
.L295:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L296
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	beq	$r4,$r5,.L298
	sub.d	$r12,$r4,$r5
	slli.d	$r13,$r6,2
	bgeu	$r12,$r13,.L303
	addi.d	$r6,$r6,-1
	slli.d	$r6,$r6,2
	b	.L300
.L301:
	ldx.w	$r12,$r5,$r6
	stx.w	$r12,$r4,$r6
	addi.d	$r6,$r6,-4
.L300:
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	bne	$r6,$r12,.L301
	b	.L298
.L302:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	b	.L299
.L303:
	or	$r12,$r0,$r0
.L299:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L302
.L298:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	b	.L305
.L306:
	addi.d	$r12,$r12,4
	st.w	$r5,$r12,-4
.L305:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L306
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bgeu	$r4,$r5,.L308
	add.d	$r4,$r4,$r6
	add.d	$r5,$r5,$r6
	or	$r12,$r6,$r0
	b	.L309
.L310:
	sub.d	$r13,$r4,$r6
	addi.d	$r13,$r13,-1
	ldx.b	$r14,$r13,$r12
	sub.d	$r13,$r5,$r6
	addi.d	$r13,$r13,-1
	stx.b	$r14,$r13,$r12
	addi.d	$r12,$r12,-1
.L309:
	bnez	$r12,.L310
	b	.L307
.L308:
	bne	$r4,$r5,.L314
	b	.L307
.L313:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
	b	.L312
.L314:
	or	$r12,$r0,$r0
.L312:
	bne	$r12,$r6,.L313
.L307:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sub.w	$r5,$r0,$r5
	rotr.d	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	rotr.d	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sub.w	$r5,$r0,$r5
	rotr.w	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	rotr.w	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sll.d	$r12,$r4,$r5
	sub.w	$r5,$r0,$r5
	srl.d	$r4,$r4,$r5
	or	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srl.d	$r12,$r4,$r5
	sub.w	$r5,$r0,$r5
	sll.d	$r4,$r4,$r5
	or	$r4,$r4,$r12
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sll.w	$r13,$r4,$r5
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,15,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srl.w	$r13,$r4,$r5
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,15,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sll.w	$r13,$r4,$r5
	addi.w	$r12,$r0,8			# 0x8
	sub.w	$r12,$r12,$r5
	srl.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,7,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srl.w	$r13,$r4,$r5
	addi.w	$r12,$r0,8			# 0x8
	sub.w	$r12,$r12,$r5
	sll.w	$r4,$r4,$r12
	or	$r4,$r4,$r13
	bstrpick.w	$r4,$r4,7,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.d	$r12,$r4,8
	bstrpick.w	$r4,$r4,7,0
	slli.d	$r4,$r4,8
	or	$r4,$r12,$r4
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r13,$r4,$r12
	or	$r12,$r4,$r0
	lu12i.w	$r14,61440>>12			# 0xf000
	ori	$r14,$r14,3840
	and	$r14,$r12,$r14
	slli.w	$r12,$r4,24
	slli.w	$r14,$r14,8
	or	$r12,$r12,$r14
	srli.w	$r4,$r4,24
	or	$r4,$r12,$r4
	bstrpick.d	$r12,$r13,39,8
	or	$r4,$r4,$r12
	slli.w	$r4,$r4,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
	b	.L329
.L332:
	srl.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	beqz	$r13,.L330
	addi.w	$r4,$r12,1
	b	.L331
.L330:
	addi.w	$r12,$r12,1
.L329:
	addi.w	$r13,$r0,32			# 0x20
	bne	$r12,$r13,.L332
	or	$r4,$r0,$r0
.L331:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	beqz	$r4,.L337
	addi.w	$r12,$r0,1			# 0x1
	b	.L335
.L336:
	srai.w	$r4,$r4,1
	addi.w	$r12,$r12,1
.L335:
	andi	$r13,$r4,1
	beqz	$r13,.L336
	or	$r4,$r12,$r0
	b	.L334
.L337:
	or	$r4,$r0,$r0
.L334:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L341
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L344
	addi.w	$r4,$r0,1			# 0x1
	b	.L339
.L341:
	addi.w	$r4,$r0,1			# 0x1
	b	.L339
.L344:
	or	$r4,$r0,$r0
.L339:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	pcalau12i	$r12,%pc_hi20(.LC4)
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L348
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L351
	addi.w	$r4,$r0,1			# 0x1
	b	.L346
.L348:
	addi.w	$r4,$r0,1			# 0x1
	b	.L346
.L351:
	or	$r4,$r0,$r0
.L346:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,16
	st.d	$r24,$r3,8
	stptr.d	$r25,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r24,$r4,$r0
	or	$r25,$r5,$r0
	la.local	$r12,.LC8
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	bl	%plt(__lttf2)
	blt	$r4,$r0,.L355
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__gttf2)
	ble	$r4,$r0,.L358
	addi.w	$r4,$r0,1			# 0x1
	b	.L353
.L355:
	addi.w	$r4,$r0,1			# 0x1
	b	.L353
.L358:
	or	$r4,$r0,$r0
.L353:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r24,$r3,8
	.cfi_restore 24
	ldptr.d	$r25,$r3,0
	.cfi_restore 25
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	movgr2fr.d	$f0,$r5
	ffint.d.w	$f0,$f0
	bl	%plt(__extenddftf2)
	stptr.d	$r4,$r23,0
	st.d	$r5,$r23,8
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L361
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L361
	bge	$r4,$r0,.L365
	pcalau12i	$r12,%pc_hi20(.LC10)
	fld.s	$f1,$r12,%pc_lo12(.LC10)
	b	.L364
.L365:
	pcalau12i	$r12,%pc_hi20(.LC11)
	fld.s	$f1,$r12,%pc_lo12(.LC11)
.L364:
	andi	$r12,$r4,1
	beqz	$r12,.L363
	fmul.s	$f0,$f0,$f1
.L363:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L361
	fmul.s	$f1,$f1,$f1
	b	.L364
.L361:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L367
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L367
	bge	$r4,$r0,.L371
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	b	.L370
.L371:
	pcalau12i	$r12,%pc_hi20(.LC13)
	fld.d	$f1,$r12,%pc_lo12(.LC13)
.L370:
	andi	$r12,$r4,1
	beqz	$r12,.L369
	fmul.d	$f0,$f0,$f1
.L369:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L367
	fmul.d	$f1,$f1,$f1
	b	.L370
.L367:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,48
	st.d	$r23,$r3,40
	st.d	$r24,$r3,32
	st.d	$r25,$r3,24
	st.d	$r26,$r3,16
	st.d	$r27,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	or	$r24,$r4,$r0
	or	$r25,$r5,$r0
	or	$r23,$r6,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L373
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__addtf3)
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L373
	bge	$r23,$r0,.L378
	la.local	$r12,.LC14
	ldptr.d	$r26,$r12,0
	ld.d	$r27,$r12,8
	b	.L377
.L378:
	la.local	$r12,.LC15
	ldptr.d	$r26,$r12,0
	ld.d	$r27,$r12,8
.L377:
	andi	$r12,$r23,1
	beqz	$r12,.L376
	or	$r6,$r26,$r0
	or	$r7,$r27,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__multf3)
	or	$r24,$r4,$r0
	or	$r25,$r5,$r0
.L376:
	srli.w	$r12,$r23,31
	add.w	$r12,$r12,$r23
	srai.w	$r23,$r12,1
	beqz	$r23,.L373
	or	$r6,$r26,$r0
	or	$r7,$r27,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__multf3)
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
	b	.L377
.L373:
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
	ld.d	$r23,$r3,40
	.cfi_restore 23
	ld.d	$r24,$r3,32
	.cfi_restore 24
	ld.d	$r25,$r3,24
	.cfi_restore 25
	ld.d	$r26,$r3,16
	.cfi_restore 26
	ld.d	$r27,$r3,8
	.cfi_restore 27
	addi.d	$r3,$r3,64
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
	b	.L381
.L382:
	ldx.b	$r14,$r5,$r12
	ldx.b	$r13,$r4,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L381:
	bne	$r12,$r6,.L382
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	st.d	$r23,$r3,24
	st.d	$r24,$r3,16
	st.d	$r25,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r25,$r4,$r0
	or	$r24,$r5,$r0
	or	$r23,$r6,$r0
	bl	strlen
	add.d	$r12,$r25,$r4
	b	.L384
.L386:
	addi.d	$r24,$r24,1
	addi.d	$r12,$r12,1
	addi.d	$r23,$r23,-1
.L384:
	beqz	$r23,.L385
	ld.b	$r13,$r24,0
	st.b	$r13,$r12,0
	bnez	$r13,.L386
.L385:
	bnez	$r23,.L387
	st.b	$r0,$r12,0
.L387:
	or	$r4,$r25,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r23,$r3,24
	.cfi_restore 23
	ld.d	$r24,$r3,16
	.cfi_restore 24
	ld.d	$r25,$r3,8
	.cfi_restore 25
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	b	.L389
.L391:
	addi.d	$r4,$r4,1
.L389:
	beq	$r4,$r5,.L390
	ldx.b	$r13,$r12,$r4
	bnez	$r13,.L391
.L390:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	b	.L393
.L395:
	addi.d	$r12,$r12,1
	ld.b	$r14,$r12,-1
	ld.b	$r13,$r4,0
	beq	$r14,$r13,.L394
	b	.L396
.L398:
	or	$r12,$r5,$r0
.L396:
	ld.b	$r13,$r12,0
	bnez	$r13,.L395
	addi.d	$r4,$r4,1
.L393:
	ld.b	$r12,$r4,0
	bnez	$r12,.L398
	or	$r4,$r0,$r0
.L394:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
.L401:
	ld.b	$r13,$r12,0
	bne	$r5,$r13,.L400
	or	$r4,$r12,$r0
.L400:
	addi.d	$r12,$r12,1
	ld.b	$r13,$r12,-1
	bnez	$r13,.L401
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,32
	st.d	$r23,$r3,24
	st.d	$r24,$r3,16
	st.d	$r25,$r3,8
	stptr.d	$r26,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	or	$r24,$r5,$r0
	or	$r4,$r5,$r0
	bl	strlen
	or	$r25,$r4,$r0
	beqz	$r4,.L407
	ld.b	$r26,$r24,0
	b	.L405
.L406:
	or	$r6,$r25,$r0
	or	$r5,$r24,$r0
	or	$r4,$r23,$r0
	bl	strncmp
	beqz	$r4,.L408
	addi.d	$r23,$r23,1
.L405:
	or	$r5,$r26,$r0
	or	$r4,$r23,$r0
	bl	strchr
	or	$r23,$r4,$r0
	bnez	$r4,.L406
	or	$r4,$r0,$r0
	b	.L404
.L407:
	or	$r4,$r23,$r0
	b	.L404
.L408:
	or	$r4,$r23,$r0
.L404:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r23,$r3,24
	.cfi_restore 23
	ld.d	$r24,$r3,16
	.cfi_restore 24
	ld.d	$r25,$r3,8
	.cfi_restore 25
	ldptr.d	$r26,$r3,0
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	movgr2fr.d	$f2,$r0
	fcmp.slt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L410
	fcmp.sgt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L412
.L410:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L413
	fcmp.slt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L413
.L412:
	fneg.d	$f0,$f0
.L413:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,32
	st.d	$r23,$r3,24
	st.d	$r24,$r3,16
	st.d	$r25,$r3,8
	stptr.d	$r26,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r23,$r4,$r0
	or	$r26,$r6,$r0
	or	$r24,$r7,$r0
	sub.d	$r25,$r5,$r7
	add.d	$r25,$r4,$r25
	beqz	$r7,.L427
	bltu	$r5,$r7,.L428
	b	.L424
.L426:
	ld.b	$r13,$r23,0
	ld.b	$r12,$r26,0
	bne	$r13,$r12,.L425
	addi.d	$r6,$r24,-1
	addi.d	$r5,$r26,1
	addi.d	$r4,$r23,1
	bl	memcmp
	beqz	$r4,.L429
.L425:
	addi.d	$r23,$r23,1
.L424:
	bleu	$r23,$r25,.L426
	or	$r4,$r0,$r0
	b	.L423
.L427:
	b	.L423
.L428:
	or	$r4,$r0,$r0
	b	.L423
.L429:
	or	$r4,$r23,$r0
.L423:
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r23,$r3,24
	.cfi_restore 23
	ld.d	$r24,$r3,16
	.cfi_restore 24
	ld.d	$r25,$r3,8
	.cfi_restore 25
	ldptr.d	$r26,$r3,0
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r23,$r6,$r0
	bl	%plt(memcpy)
	add.d	$r4,$r4,$r23
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L448
	fneg.d	$f0,$f0
	addi.w	$r13,$r0,1			# 0x1
	b	.L432
.L448:
	or	$r13,$r0,$r0
.L432:
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f1,$r12,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L443
	b	.L449
.L436:
	addi.w	$r12,$r12,1
	pcalau12i	$r14,%pc_hi20(.LC12)
	fld.d	$f1,$r14,%pc_lo12(.LC12)
	fmul.d	$f0,$f0,$f1
	b	.L434
.L443:
	or	$r12,$r0,$r0
.L434:
	pcalau12i	$r14,%pc_hi20(.LC16)
	fld.d	$f1,$r14,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L436
	b	.L437
.L449:
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L450
	movgr2fr.d	$f1,$r0
	fcmp.cune.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L445
	or	$r12,$r0,$r0
	b	.L437
.L440:
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	b	.L439
.L445:
	or	$r12,$r0,$r0
.L439:
	pcalau12i	$r14,%pc_hi20(.LC12)
	fld.d	$f1,$r14,%pc_lo12(.LC12)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L440
	b	.L437
.L450:
	or	$r12,$r0,$r0
.L437:
	stptr.w	$r12,$r4,0
	beqz	$r13,.L441
	fneg.d	$f0,$f0
.L441:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	b	.L452
.L454:
	andi	$r13,$r12,1
	beqz	$r13,.L453
	add.d	$r4,$r4,$r5
.L453:
	slli.d	$r5,$r5,1
	srli.d	$r12,$r12,1
.L452:
	bnez	$r12,.L454
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,1			# 0x1
	b	.L456
.L458:
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
.L456:
	bgeu	$r5,$r4,.L463
	beqz	$r12,.L464
	bge	$r5,$r0,.L458
	or	$r13,$r0,$r0
	b	.L460
.L461:
	bltu	$r4,$r5,.L459
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L459:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	b	.L460
.L463:
	or	$r13,$r0,$r0
	b	.L460
.L464:
	or	$r13,$r0,$r0
.L460:
	bnez	$r12,.L461
	bnez	$r6,.L462
	or	$r4,$r13,$r0
.L462:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bge	$r4,$r0,.L467
	nor	$r4,$r0,$r4
.L467:
	beqz	$r4,.L469
	slli.w	$r4,$r4,8
	clz.w	$r4,$r4
	addi.w	$r4,$r4,-1
	b	.L468
.L469:
	addi.w	$r4,$r0,7			# 0x7
.L468:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bge	$r4,$r0,.L471
	nor	$r4,$r0,$r4
.L471:
	beqz	$r4,.L473
	clz.d	$r4,$r4
	addi.w	$r4,$r4,-1
	b	.L472
.L473:
	addi.w	$r4,$r0,63			# 0x3f
.L472:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	b	.L475
.L477:
	andi	$r13,$r12,1
	beqz	$r13,.L476
	add.w	$r4,$r4,$r5
.L476:
	bstrpick.d	$r12,$r12,31,1
	slli.w	$r5,$r5,1
.L475:
	bnez	$r12,.L477
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r14,$r6,31,3
	addi.w	$r13,$r0,-8			# 0xfffffffffffffff8
	and	$r13,$r6,$r13
	bltu	$r4,$r5,.L479
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L480
.L479:
	slli.d	$r14,$r14,3
	or	$r12,$r0,$r0
	b	.L481
.L482:
	ldx.d	$r15,$r5,$r12
	stx.d	$r15,$r4,$r12
	addi.d	$r12,$r12,8
.L481:
	bne	$r12,$r14,.L482
	bstrpick.d	$r12,$r13,31,0
	b	.L483
.L484:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L483:
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L484
	b	.L478
.L486:
	bstrpick.d	$r12,$r6,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L480:
	addi.w	$r6,$r6,-1
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r12,.L486
.L478:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r13,$r6,31,1
	bltu	$r4,$r5,.L488
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L489
.L488:
	slli.d	$r13,$r13,1
	or	$r12,$r0,$r0
	b	.L490
.L491:
	ldx.h	$r14,$r5,$r12
	stx.h	$r14,$r4,$r12
	addi.d	$r12,$r12,2
.L490:
	bne	$r12,$r13,.L491
	andi	$r12,$r6,1
	beqz	$r12,.L487
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	b	.L487
.L493:
	bstrpick.d	$r12,$r6,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L489:
	addi.w	$r6,$r6,-1
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r12,.L493
.L487:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r14,$r6,31,2
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	and	$r13,$r6,$r13
	bltu	$r4,$r5,.L495
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L496
.L495:
	slli.d	$r14,$r14,2
	or	$r12,$r0,$r0
	b	.L497
.L498:
	ldx.w	$r15,$r5,$r12
	stx.w	$r15,$r4,$r12
	addi.d	$r12,$r12,4
.L497:
	bne	$r12,$r14,.L498
	bstrpick.d	$r12,$r13,31,0
	b	.L499
.L500:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L499:
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L500
	b	.L494
.L502:
	bstrpick.d	$r12,$r6,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L496:
	addi.w	$r6,$r6,-1
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r12,.L502
.L494:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	mod.w	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r4,$r4,31,0
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r4,$r4,31,0
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	blt	$r4,$r0,.L508
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	b	.L507
.L508:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	fadd.d	$f0,$f0,$f0
.L507:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	blt	$r4,$r0,.L511
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	b	.L510
.L511:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	fadd.s	$f0,$f0,$f0
.L510:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	mod.wu	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	b	.L514
.L516:
	addi.w	$r12,$r0,15			# 0xf
	sub.w	$r12,$r12,$r4
	sra.w	$r12,$r13,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L515
	addi.w	$r4,$r4,1
.L514:
	addi.w	$r12,$r0,16			# 0x10
	bne	$r4,$r12,.L516
.L515:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	b	.L518
.L520:
	sra.w	$r13,$r12,$r4
	andi	$r13,$r13,1
	bnez	$r13,.L519
	addi.w	$r4,$r4,1
.L518:
	addi.w	$r13,$r0,16			# 0x10
	bne	$r4,$r13,.L520
.L519:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	pcalau12i	$r12,%pc_hi20(.LC19)
	fld.s	$f1,$r12,%pc_lo12(.LC19)
	fcmp.sge.s	$fcc0,$f0,$f1
	bceqz	$fcc0,.L526
	fsub.s	$f0,$f0,$f1
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	lu12i.w	$r12,32768>>12			# 0x8000
	add.d	$r4,$r4,$r12
	b	.L524
.L526:
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
.L524:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r0,$r0
	or	$r12,$r0,$r0
	b	.L528
.L530:
	sra.w	$r14,$r4,$r12
	andi	$r14,$r14,1
	beqz	$r14,.L529
	addi.w	$r13,$r13,1
.L529:
	addi.w	$r12,$r12,1
.L528:
	addi.w	$r14,$r0,16			# 0x10
	bne	$r12,$r14,.L530
	andi	$r4,$r13,1
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	or	$r12,$r0,$r0
	b	.L532
.L534:
	sra.w	$r14,$r13,$r12
	andi	$r14,$r14,1
	beqz	$r14,.L533
	addi.w	$r4,$r4,1
.L533:
	addi.w	$r12,$r12,1
.L532:
	addi.w	$r14,$r0,16			# 0x10
	bne	$r12,$r14,.L534
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	b	.L536
.L538:
	andi	$r13,$r12,1
	beqz	$r13,.L537
	add.w	$r4,$r4,$r5
.L537:
	bstrpick.d	$r12,$r12,31,1
	slli.w	$r5,$r5,1
.L536:
	bnez	$r12,.L538
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	beqz	$r4,.L544
	or	$r12,$r0,$r0
	b	.L541
.L543:
	andi	$r13,$r5,1
	beqz	$r13,.L542
	add.w	$r12,$r12,$r4
.L542:
	slli.w	$r4,$r4,1
	bstrpick.d	$r5,$r5,31,1
.L541:
	bnez	$r5,.L543
	or	$r4,$r12,$r0
	b	.L540
.L544:
	or	$r4,$r0,$r0
.L540:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,1			# 0x1
	b	.L546
.L548:
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
.L546:
	bgeu	$r5,$r4,.L553
	beqz	$r12,.L554
	bge	$r5,$r0,.L548
	or	$r13,$r0,$r0
	b	.L550
.L551:
	bltu	$r4,$r5,.L549
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L549:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	b	.L550
.L553:
	or	$r13,$r0,$r0
	b	.L550
.L554:
	or	$r13,$r0,$r0
.L550:
	bnez	$r12,.L551
	bnez	$r6,.L552
	or	$r4,$r13,$r0
.L552:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L558
	fcmp.sgt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L559
	or	$r4,$r0,$r0
	b	.L557
.L558:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	b	.L557
.L559:
	addi.w	$r4,$r0,1			# 0x1
.L557:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L562
	fcmp.sgt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L563
	or	$r4,$r0,$r0
	b	.L561
.L562:
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	b	.L561
.L563:
	addi.w	$r4,$r0,1			# 0x1
.L561:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	mul.d	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	mul.d	$r4,$r4,$r5
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bge	$r5,$r0,.L573
	sub.w	$r5,$r0,$r5
	addi.w	$r14,$r0,1			# 0x1
	b	.L567
.L573:
	or	$r14,$r0,$r0
.L567:
	addi.w	$r13,$r0,33			# 0x21
	or	$r12,$r0,$r0
	b	.L568
.L571:
	andi	$r15,$r5,1
	beqz	$r15,.L569
	add.w	$r12,$r12,$r4
.L569:
	slli.w	$r4,$r4,1
	srai.w	$r5,$r5,1
.L568:
	beqz	$r5,.L570
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	bnez	$r13,.L571
.L570:
	beqz	$r14,.L574
	sub.w	$r4,$r0,$r12
	b	.L572
.L574:
	or	$r4,$r12,$r0
.L572:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	bge	$r4,$r0,.L579
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L576
.L579:
	or	$r23,$r0,$r0
.L576:
	bge	$r5,$r0,.L577
	sub.d	$r5,$r0,$r5
	xori	$r23,$r23,1
.L577:
	or	$r6,$r0,$r0
	slli.w	$r5,$r5,0
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r4,$r4,31,0
	beqz	$r23,.L578
	sub.d	$r4,$r0,$r4
.L578:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	st.d	$r23,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	bge	$r4,$r0,.L584
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
	b	.L581
.L584:
	or	$r23,$r0,$r0
.L581:
	bge	$r5,$r0,.L582
	sub.d	$r5,$r0,$r5
.L582:
	addi.w	$r6,$r0,1			# 0x1
	slli.w	$r5,$r5,0
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r4,$r4,31,0
	beqz	$r23,.L583
	sub.d	$r4,$r0,$r4
.L583:
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	ld.d	$r23,$r3,8
	.cfi_restore 23
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r13,$r0,17			# 0x11
	addi.w	$r12,$r0,1			# 0x1
	b	.L586
.L588:
	slli.w	$r5,$r5,1
	bstrpick.w	$r5,$r5,15,0
	slli.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,15,0
.L586:
	slli.w	$r14,$r5,0
	bgeu	$r14,$r4,.L593
	addi.w	$r13,$r13,-1
	beqz	$r13,.L594
	ext.w.h	$r14,$r5
	bge	$r14,$r0,.L588
	or	$r13,$r0,$r0
	b	.L590
.L591:
	slli.w	$r14,$r4,0
	bltu	$r14,$r5,.L589
	sub.w	$r4,$r4,$r5
	bstrpick.w	$r4,$r4,15,0
	or	$r13,$r13,$r12
.L589:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	b	.L590
.L593:
	or	$r13,$r0,$r0
	b	.L590
.L594:
	or	$r13,$r0,$r0
.L590:
	bnez	$r12,.L591
	bnez	$r6,.L592
	or	$r4,$r13,$r0
.L592:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,1			# 0x1
	b	.L597
.L599:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
.L597:
	bgeu	$r5,$r4,.L604
	beqz	$r12,.L605
	bstrpick.d	$r13,$r5,31,31
	beqz	$r13,.L599
	or	$r13,$r0,$r0
	b	.L601
.L602:
	bltu	$r4,$r5,.L600
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L600:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	b	.L601
.L604:
	or	$r13,$r0,$r0
	b	.L601
.L605:
	or	$r13,$r0,$r0
.L601:
	bnez	$r12,.L602
	bnez	$r6,.L603
	or	$r4,$r13,$r0
.L603:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L608
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,31,0
	sll.w	$r12,$r12,$r5
	bstrins.d	$r4,$r12,63,32
	b	.L610
.L608:
	beqz	$r5,.L610
	sll.w	$r13,$r4,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,31,0
	srai.d	$r13,$r12,32
	sub.w	$r14,$r0,$r5
	srl.w	$r12,$r12,$r14
	sll.w	$r13,$r13,$r5
	or	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	bstrins.d	$r4,$r12,63,32
.L610:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	andi	$r16,$r6,64
	beqz	$r16,.L613
	or	$r12,$r0,$r0
	sll.d	$r13,$r4,$r6
	b	.L614
.L613:
	beqz	$r6,.L616
	sll.d	$r12,$r4,$r6
	sll.d	$r15,$r5,$r6
	sub.w	$r6,$r0,$r6
	srl.d	$r14,$r4,$r6
	or	$r13,$r14,$r15
.L614:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	b	.L615
.L616:
	or	$r14,$r4,$r0
	or	$r15,$r5,$r0
.L615:
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L618
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	sra.w	$r12,$r12,$r5
	bstrins.d	$r4,$r12,31,0
	b	.L620
.L618:
	beqz	$r5,.L620
	srai.d	$r13,$r4,32
	sra.w	$r14,$r13,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r14,63,32
	sub.w	$r14,$r0,$r5
	sll.w	$r13,$r13,$r14
	srl.w	$r12,$r12,$r5
	or	$r13,$r13,$r12
	slli.w	$r13,$r13,0
	bstrins.d	$r4,$r13,31,0
.L620:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	andi	$r16,$r6,64
	beqz	$r16,.L623
	srai.d	$r13,$r5,63
	sra.d	$r12,$r5,$r6
	b	.L624
.L623:
	beqz	$r6,.L626
	sra.d	$r13,$r5,$r6
	sub.w	$r16,$r0,$r6
	sll.d	$r15,$r5,$r16
	srl.d	$r14,$r4,$r6
	or	$r12,$r15,$r14
.L624:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	b	.L625
.L626:
	or	$r14,$r4,$r0
	or	$r15,$r5,$r0
.L625:
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.w	$r14,$r4,8
	slli.w	$r13,$r4,8
	slli.w	$r12,$r4,24
	srli.w	$r4,$r4,24
	or	$r4,$r12,$r4
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r12,$r14
	or	$r4,$r4,$r12
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r12,$r13
	or	$r4,$r4,$r12
	slli.w	$r4,$r4,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	lu12i.w	$r12,65536>>12			# 0x10000
	bgeu	$r4,$r12,.L634
	addi.w	$r12,$r0,16			# 0x10
	b	.L630
.L634:
	or	$r12,$r0,$r0
.L630:
	addi.w	$r13,$r0,16			# 0x10
	sub.w	$r13,$r13,$r12
	srl.w	$r4,$r4,$r13
	lu12i.w	$r13,61440>>12			# 0xf000
	ori	$r13,$r13,3840
	and	$r13,$r4,$r13
	bnez	$r13,.L635
	addi.w	$r13,$r0,8			# 0x8
	b	.L631
.L635:
	or	$r13,$r0,$r0
.L631:
	addi.w	$r14,$r0,8			# 0x8
	sub.w	$r14,$r14,$r13
	srl.w	$r4,$r4,$r14
	add.w	$r12,$r13,$r12
	andi	$r13,$r4,240
	bnez	$r13,.L636
	addi.w	$r13,$r0,4			# 0x4
	b	.L632
.L636:
	or	$r13,$r0,$r0
.L632:
	addi.w	$r14,$r0,4			# 0x4
	sub.w	$r14,$r14,$r13
	srl.w	$r4,$r4,$r14
	add.w	$r12,$r12,$r13
	andi	$r13,$r4,12
	bnez	$r13,.L637
	addi.w	$r13,$r0,2			# 0x2
	b	.L633
.L637:
	or	$r13,$r0,$r0
.L633:
	addi.w	$r14,$r0,2			# 0x2
	sub.w	$r15,$r14,$r13
	srl.w	$r4,$r4,$r15
	add.w	$r12,$r12,$r13
	andi	$r13,$r4,2
	sltui	$r13,$r13,1
	sub.w	$r14,$r14,$r4
	mul.w	$r4,$r13,$r14
	add.w	$r4,$r12,$r4
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r14,$r4,$r0
	sltui	$r13,$r5,1
	sub.d	$r13,$r0,$r13
	andn	$r4,$r5,$r13
	and	$r14,$r13,$r14
	or	$r4,$r4,$r14
	clz.d	$r4,$r4
	andi	$r13,$r13,64
	add.d	$r4,$r4,$r13
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.d	$r13,$r4,32
	srai.d	$r12,$r5,32
	blt	$r13,$r12,.L641
	or	$r12,$r13,$r0
	srai.d	$r13,$r5,32
	bgt	$r12,$r13,.L642
	slli.w	$r12,$r4,0
	slli.w	$r13,$r5,0
	bltu	$r12,$r13,.L643
	bgtu	$r12,$r13,.L644
	addi.w	$r4,$r0,1			# 0x1
	b	.L640
.L641:
	or	$r4,$r0,$r0
	b	.L640
.L642:
	addi.w	$r4,$r0,2			# 0x2
	b	.L640
.L643:
	or	$r4,$r0,$r0
	b	.L640
.L644:
	addi.w	$r4,$r0,2			# 0x2
.L640:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	stptr.d	$r22,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bl	__cmpdi2
	addi.w	$r4,$r4,-1
	ld.d	$r1,$r3,8
	.cfi_restore 1
	ldptr.d	$r22,$r3,0
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bgt	$r7,$r5,.L648
	blt	$r7,$r5,.L649
	bgtu	$r6,$r4,.L650
	bltu	$r6,$r4,.L651
	addi.w	$r4,$r0,1			# 0x1
	b	.L647
.L648:
	or	$r4,$r0,$r0
	b	.L647
.L649:
	addi.w	$r4,$r0,2			# 0x2
	b	.L647
.L650:
	or	$r4,$r0,$r0
	b	.L647
.L651:
	addi.w	$r4,$r0,2			# 0x2
.L647:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.w	$r12,$r4,15,0
	bnez	$r12,.L657
	addi.w	$r12,$r0,16			# 0x10
	b	.L653
.L657:
	or	$r12,$r0,$r0
.L653:
	srl.w	$r4,$r4,$r12
	bstrpick.w	$r13,$r4,7,0
	bnez	$r13,.L658
	addi.w	$r13,$r0,8			# 0x8
	b	.L654
.L658:
	or	$r13,$r0,$r0
.L654:
	srl.w	$r4,$r4,$r13
	add.w	$r12,$r13,$r12
	andi	$r13,$r4,15
	bnez	$r13,.L659
	addi.w	$r13,$r0,4			# 0x4
	b	.L655
.L659:
	or	$r13,$r0,$r0
.L655:
	srl.w	$r4,$r4,$r13
	add.w	$r12,$r12,$r13
	andi	$r13,$r4,3
	bnez	$r13,.L660
	addi.w	$r13,$r0,2			# 0x2
	b	.L656
.L660:
	or	$r13,$r0,$r0
.L656:
	srl.w	$r4,$r4,$r13
	andi	$r4,$r4,3
	add.w	$r12,$r12,$r13
	nor	$r13,$r0,$r4
	andi	$r14,$r13,1
	srli.d	$r4,$r4,1
	addi.w	$r13,$r0,2			# 0x2
	sub.w	$r4,$r13,$r4
	sub.w	$r13,$r0,$r14
	and	$r4,$r4,$r13
	add.w	$r4,$r12,$r4
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sltui	$r13,$r4,1
	sub.d	$r13,$r0,$r13
	and	$r14,$r13,$r5
	andn	$r4,$r4,$r13
	or	$r4,$r4,$r14
	ctz.d	$r4,$r4
	andi	$r13,$r13,64
	add.d	$r4,$r4,$r13
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	bnez	$r12,.L663
	beqz	$r13,.L665
	ctz.d	$r4,$r13
	addi.d	$r4,$r4,65
	b	.L664
.L663:
	ctz.d	$r4,$r12
	addi.d	$r4,$r4,1
	b	.L664
.L665:
	or	$r4,$r0,$r0
.L664:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	andi	$r13,$r5,32
	beqz	$r13,.L667
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,63,32
	srai.d	$r12,$r12,32
	srl.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,31,0
	b	.L669
.L667:
	beqz	$r5,.L669
	srai.d	$r13,$r4,32
	srl.w	$r13,$r13,$r5
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	srai.d	$r13,$r12,32
	sub.w	$r14,$r0,$r5
	sll.w	$r13,$r13,$r14
	srl.w	$r12,$r12,$r5
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrins.d	$r4,$r12,31,0
.L669:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	andi	$r16,$r6,64
	beqz	$r16,.L672
	or	$r13,$r0,$r0
	srl.d	$r12,$r5,$r6
	b	.L673
.L672:
	beqz	$r6,.L675
	srl.d	$r13,$r5,$r6
	sub.w	$r16,$r0,$r6
	sll.d	$r15,$r5,$r16
	srl.d	$r14,$r4,$r6
	or	$r12,$r15,$r14
.L673:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	b	.L674
.L675:
	or	$r14,$r4,$r0
	or	$r15,$r5,$r0
.L674:
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	bstrpick.w	$r14,$r4,15,0
	bstrpick.w	$r15,$r5,15,0
	mul.w	$r12,$r14,$r15
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r12,31,0
	bstrpick.d	$r12,$r4,31,16
	bstrpick.w	$r16,$r4,15,0
	bstrins.d	$r4,$r16,31,0
	bstrpick.d	$r13,$r13,31,16
	mul.w	$r15,$r13,$r15
	add.w	$r12,$r15,$r12
	slli.w	$r15,$r12,16
	add.w	$r15,$r15,$r4
	bstrins.d	$r4,$r15,31,0
	bstrpick.d	$r12,$r12,31,16
	bstrins.d	$r4,$r12,63,32
	bstrpick.d	$r12,$r4,31,16
	bstrpick.w	$r15,$r4,15,0
	bstrins.d	$r4,$r15,31,0
	bstrpick.d	$r5,$r5,31,16
	mul.w	$r14,$r14,$r5
	add.w	$r12,$r14,$r12
	slli.w	$r14,$r12,16
	add.w	$r14,$r14,$r4
	bstrins.d	$r4,$r14,31,0
	srai.d	$r14,$r4,32
	bstrpick.d	$r12,$r12,31,16
	add.w	$r12,$r12,$r14
	bstrins.d	$r4,$r12,63,32
	srai.d	$r12,$r4,32
	mul.w	$r13,$r13,$r5
	add.w	$r13,$r13,$r12
	bstrins.d	$r4,$r13,63,32
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,32
	st.d	$r23,$r3,24
	st.d	$r24,$r3,16
	st.d	$r25,$r3,8
	stptr.d	$r26,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
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
	ld.d	$r22,$r3,32
	.cfi_restore 22
	ld.d	$r23,$r3,24
	.cfi_restore 23
	ld.d	$r24,$r3,16
	.cfi_restore 24
	ld.d	$r25,$r3,8
	.cfi_restore 25
	ldptr.d	$r26,$r3,0
	.cfi_restore 26
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bstrpick.d	$r16,$r4,31,0
	bstrpick.d	$r17,$r5,31,0
	mul.d	$r13,$r16,$r17
	srli.d	$r12,$r13,32
	bstrpick.d	$r13,$r13,31,0
	srli.d	$r4,$r4,32
	mul.d	$r17,$r4,$r17
	add.d	$r12,$r12,$r17
	slli.d	$r17,$r12,32
	add.d	$r14,$r17,$r13
	srli.d	$r15,$r12,32
	srli.d	$r12,$r14,32
	bstrpick.d	$r13,$r14,31,0
	srli.d	$r5,$r5,32
	mul.d	$r16,$r16,$r5
	add.d	$r12,$r12,$r16
	slli.d	$r16,$r12,32
	add.d	$r14,$r16,$r13
	srli.d	$r12,$r12,32
	add.d	$r12,$r12,$r15
	mul.d	$r4,$r4,$r5
	add.d	$r5,$r4,$r12
	or	$r4,$r14,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	st.d	$r22,$r3,64
	st.d	$r23,$r3,56
	st.d	$r24,$r3,48
	st.d	$r25,$r3,40
	st.d	$r26,$r3,32
	st.d	$r27,$r3,24
	st.d	$r28,$r3,16
	st.d	$r29,$r3,8
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
	or	$r28,$r6,$r0
	or	$r29,$r7,$r0
	or	$r5,$r6,$r0
	bl	__mulddi3
	or	$r15,$r5,$r0
	or	$r12,$r4,$r0
	mul.d	$r5,$r28,$r27
	mul.d	$r24,$r26,$r29
	add.d	$r5,$r5,$r24
	add.d	$r5,$r5,$r15
	or	$r14,$r12,$r0
	or	$r4,$r14,$r0
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	ld.d	$r23,$r3,56
	.cfi_restore 23
	ld.d	$r24,$r3,48
	.cfi_restore 24
	ld.d	$r25,$r3,40
	.cfi_restore 25
	ld.d	$r26,$r3,32
	.cfi_restore 26
	ld.d	$r27,$r3,24
	.cfi_restore 27
	ld.d	$r28,$r3,16
	.cfi_restore 28
	ld.d	$r29,$r3,8
	.cfi_restore 29
	addi.d	$r3,$r3,80
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	sub.d	$r4,$r0,$r4
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r17,$r5,$r0
	or	$r12,$r0,$r0
	sub.d	$r14,$r12,$r4
	sltu	$r5,$r12,$r14
	sub.d	$r15,$r0,$r17
	sub.d	$r5,$r15,$r5
	or	$r12,$r14,$r0
	or	$r14,$r12,$r0
	or	$r4,$r14,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.d	$r12,$r4,32
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	xor	$r13,$r4,$r5
	srai.d	$r12,$r13,32
	xor	$r12,$r12,$r13
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
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
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
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
	srli.d	$r12,$r4,32
	add.w	$r12,$r12,$r4
	bstrpick.d	$r13,$r12,31,16
	add.w	$r12,$r13,$r12
	bstrpick.d	$r4,$r12,31,8
	add.w	$r4,$r4,$r12
	andi	$r4,$r4,127
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.w	$r13,$r4,1
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	and	$r12,$r12,$r13
	sub.w	$r4,$r4,$r12
	srli.w	$r12,$r4,2
	lu12i.w	$r13,858992640>>12			# 0x33333000
	ori	$r13,$r13,819
	and	$r12,$r13,$r12
	and	$r4,$r4,$r13
	add.d	$r4,$r12,$r4
	srli.d	$r12,$r4,4
	add.w	$r4,$r12,$r4
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	and	$r4,$r12,$r4
	srli.d	$r12,$r4,16
	add.w	$r4,$r12,$r4
	bstrpick.d	$r12,$r4,31,8
	add.w	$r4,$r12,$r4
	andi	$r4,$r4,63
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	slli.d	$r16,$r5,63
	srli.d	$r14,$r4,1
	or	$r14,$r16,$r14
	srli.d	$r15,$r5,1
	lu12i.w	$r18,1431654400>>12			# 0x55555000
	ori	$r18,$r18,1365
	bstrins.d	$r18,$r18,63,32
	and	$r4,$r14,$r18
	and	$r5,$r15,$r18
	sub.d	$r14,$r12,$r4
	sltu	$r16,$r12,$r14
	sub.d	$r15,$r13,$r5
	sub.d	$r16,$r15,$r16
	or	$r12,$r14,$r0
	or	$r13,$r16,$r0
	slli.d	$r16,$r16,62
	srli.d	$r14,$r12,2
	or	$r14,$r16,$r14
	srli.d	$r15,$r13,2
	lu12i.w	$r20,858992640>>12			# 0x33333000
	ori	$r20,$r20,819
	bstrins.d	$r20,$r20,63,32
	and	$r4,$r14,$r20
	and	$r5,$r15,$r20
	and	$r18,$r12,$r20
	and	$r19,$r13,$r20
	add.d	$r14,$r4,$r18
	sltu	$r16,$r14,$r4
	add.d	$r15,$r5,$r19
	add.d	$r16,$r16,$r15
	or	$r12,$r14,$r0
	or	$r13,$r16,$r0
	slli.d	$r16,$r16,60
	srli.d	$r14,$r12,4
	or	$r14,$r16,$r14
	srli.d	$r15,$r13,4
	add.d	$r16,$r14,$r12
	sltu	$r18,$r16,$r14
	add.d	$r17,$r15,$r13
	add.d	$r18,$r18,$r17
	or	$r14,$r16,$r0
	lu12i.w	$r16,252641280>>12			# 0xf0f0000
	ori	$r16,$r16,3855
	bstrins.d	$r16,$r16,63,32
	and	$r12,$r14,$r16
	and	$r13,$r18,$r16
	add.d	$r14,$r13,$r12
	srai.d	$r12,$r14,32
	add.w	$r12,$r12,$r14
	bstrpick.d	$r13,$r12,31,16
	add.w	$r12,$r13,$r12
	bstrpick.d	$r4,$r12,31,8
	add.w	$r4,$r4,$r12
	bstrpick.w	$r4,$r4,7,0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.d	$r12,$r4,63
	pcalau12i	$r13,%pc_hi20(.LC16)
	fld.d	$f1,$r13,%pc_lo12(.LC16)
.L691:
	andi	$r13,$r4,1
	beqz	$r13,.L689
	fmul.d	$f1,$f1,$f0
.L689:
	srli.w	$r13,$r4,31
	add.w	$r4,$r13,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L690
	fmul.d	$f0,$f0,$f0
	b	.L691
.L690:
	beqz	$r12,.L693
	frecip.d	$f0,$f1
	b	.L692
.L693:
	fmov.d	$f0,$f1
.L692:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srli.d	$r12,$r4,63
	pcalau12i	$r13,%pc_hi20(.LC21)
	fld.s	$f1,$r13,%pc_lo12(.LC21)
.L697:
	andi	$r13,$r4,1
	beqz	$r13,.L695
	fmul.s	$f1,$f1,$f0
.L695:
	srli.w	$r13,$r4,31
	add.w	$r4,$r13,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L696
	fmul.s	$f0,$f0,$f0
	b	.L697
.L696:
	beqz	$r12,.L699
	frecip.s	$f0,$f1
	b	.L698
.L699:
	fmov.s	$f0,$f1
.L698:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	srai.d	$r13,$r4,32
	srai.d	$r12,$r5,32
	bltu	$r13,$r12,.L702
	or	$r12,$r13,$r0
	srai.d	$r13,$r5,32
	bgtu	$r12,$r13,.L703
	slli.w	$r12,$r4,0
	slli.w	$r13,$r5,0
	bltu	$r12,$r13,.L704
	bgtu	$r12,$r13,.L705
	addi.w	$r4,$r0,1			# 0x1
	b	.L701
.L702:
	or	$r4,$r0,$r0
	b	.L701
.L703:
	addi.w	$r4,$r0,2			# 0x2
	b	.L701
.L704:
	or	$r4,$r0,$r0
	b	.L701
.L705:
	addi.w	$r4,$r0,2			# 0x2
.L701:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	stptr.d	$r22,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bl	__ucmpdi2
	addi.w	$r4,$r4,-1
	ld.d	$r1,$r3,8
	.cfi_restore 1
	ldptr.d	$r22,$r3,0
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
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
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	bgtu	$r7,$r5,.L709
	bltu	$r7,$r5,.L710
	bgtu	$r6,$r4,.L711
	bltu	$r6,$r4,.L712
	addi.w	$r4,$r0,1			# 0x1
	b	.L708
.L709:
	or	$r4,$r0,$r0
	b	.L708
.L710:
	addi.w	$r4,$r0,2			# 0x2
	b	.L708
.L711:
	or	$r4,$r0,$r0
	b	.L708
.L712:
	addi.w	$r4,$r0,2			# 0x2
.L708:
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.section	.rodata
	.align	2
.LC0:
	.word	-8388609
	.align	2
.LC1:
	.word	2139095039
	.align	3
.LC4:
	.word	-1
	.word	-1048577
	.align	3
.LC5:
	.word	-1
	.word	2146435071
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
	.align	2
.LC10:
	.word	1056964608
	.set	.LC11,.LC15+12
	.align	3
.LC12:
	.word	0
	.word	1071644672
	.set	.LC13,.LC15+8
	.align	4
.LC14:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	4
.LC15:
	.word	0
	.word	0
	.word	0
	.word	1073741824
	.align	3
.LC16:
	.word	0
	.word	1072693248
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
