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
	add.d	$r15,$r4,$r6
	or	$r12,$r6,$r0
	b	.L5
.L6:
	sub.d	$r13,$r5,$r6
	addi.d	$r13,$r13,-1
	ldx.b	$r14,$r13,$r12
	sub.d	$r13,$r15,$r6
	addi.d	$r13,$r13,-1
	stx.b	$r14,$r13,$r12
	addi.d	$r12,$r12,-1
.L5:
	bnez	$r12,.L6
	b	.L7
.L4:
	or	$r12,$r0,$r0
	bne	$r4,$r5,.L8
	b	.L7
.L9:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
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
	slli.w	$r12,$r12,0
	bne	$r6,$r12,.L14
.L13:
	addi.d	$r4,$r4,1
	maskeqz	$r4,$r4,$r7
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
	maskeqz	$r4,$r4,$r6
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
	or	$r12,$r4,$r0
	b	.L24
.L26:
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,1
	addi.d	$r5,$r5,1
.L24:
	beqz	$r6,.L25
	ld.bu	$r14,$r12,0
	ld.bu	$r13,$r5,0
	beq	$r14,$r13,.L26
.L25:
	or	$r4,$r0,$r0
	beqz	$r6,.L27
	ld.bu	$r4,$r12,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
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
	ldx.bu	$r12,$r4,$r6
	addi.d	$r13,$r6,-1
	bne	$r5,$r12,.L36
	add.d	$r4,$r4,$r6
	b	.L34
.L36:
	or	$r6,$r13,$r0
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
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r6,.L59
	addi.d	$r6,$r6,-1
	add.d	$r13,$r12,$r6
	or	$r4,$r12,$r0
	b	.L60
.L62:
	addi.d	$r4,$r4,1
	addi.d	$r5,$r5,1
.L60:
	ld.bu	$r12,$r4,0
	beqz	$r12,.L61
	ld.bu	$r12,$r5,0
	beqz	$r12,.L61
	beq	$r4,$r13,.L61
	ld.bu	$r14,$r4,0
	beq	$r14,$r12,.L62
.L61:
	ld.bu	$r4,$r4,0
	ld.bu	$r12,$r5,0
	sub.w	$r4,$r4,$r12
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
	xori	$r13,$r4,9
	sltui	$r13,$r13,1
	xori	$r12,$r4,32
	maskeqz	$r4,$r13,$r12
	sltui	$r12,$r12,1
	or	$r4,$r4,$r12
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
	xori	$r13,$r4,127
	sltui	$r13,$r13,1
	addi.w	$r12,$r0,31			# 0x1f
	sltu	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r12
	xori	$r12,$r12,1
	or	$r4,$r4,$r12
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
	or	$r12,$r4,$r0
	addi.w	$r4,$r4,-9
	sltui	$r4,$r4,5
	xori	$r12,$r12,32
	maskeqz	$r4,$r4,$r12
	addi.w	$r13,$r0,1			# 0x1
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
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
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,31			# 0x1f
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L87
	addi.w	$r13,$r12,-127
	addi.w	$r14,$r0,32			# 0x20
	bleu	$r13,$r14,.L87
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
	or	$r12,$r4,$r0
	addi.w	$r13,$r0,254			# 0xfe
	bgtu	$r4,$r13,.L94
	addi.w	$r12,$r4,1
	andi	$r12,$r12,127
	addi.w	$r4,$r0,32			# 0x20
	sltu	$r4,$r4,$r12
	b	.L95
.L94:
	lu12i.w	$r13,8192>>12			# 0x2000
	ori	$r13,$r13,39
	addi.w	$r4,$r0,1			# 0x1
	bleu	$r12,$r13,.L95
	lu12i.w	$r13,-12288>>12			# 0xffffffffffffd000
	ori	$r13,$r13,4054
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,45056>>12			# 0xb000
	ori	$r14,$r14,2005
	bleu	$r13,$r14,.L95
	lu12i.w	$r13,-57344>>12			# 0xffffffffffff2000
	add.w	$r13,$r13,$r12
	lu12i.w	$r14,4096>>12			# 0x1000
	ori	$r14,$r14,4088
	bleu	$r13,$r14,.L95
	addu16i.d	$r13,$r12,-1
	addi.w	$r13,$r13,4
	lu12i.w	$r14,61440>>12			# 0xf000
	ori	$r14,$r14,4094
	andn	$r12,$r14,$r12
	sltu	$r12,$r0,$r12
	lu12i.w	$r14,1048576>>12			# 0x100000
	ori	$r14,$r14,3
	sltu	$r13,$r14,$r13
	masknez	$r12,$r12,$r13
	or	$r14,$r0,$r0
	maskeqz	$r13,$r14,$r13
	or	$r4,$r12,$r13
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
	ori	$r12,$r4,32
	addi.w	$r12,$r12,-97
	sltui	$r12,$r12,6
	addi.w	$r14,$r0,9			# 0x9
	sltu	$r13,$r14,$r13
	maskeqz	$r12,$r12,$r13
	addi.w	$r14,$r0,1			# 0x1
	masknez	$r13,$r14,$r13
	or	$r4,$r12,$r13
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
	fmov.d	$f2,$f0
	fcmp.cun.d	$fcc0,$f0,$f0
	bcnez	$fcc0,.L107
	fmov.d	$f0,$f1
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L107
	fcmp.sgt.d	$fcc0,$f2,$f1
	bceqz	$fcc0,.L113
	fsub.d	$f0,$f2,$f1
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
	fmov.s	$f2,$f0
	fcmp.cun.s	$fcc0,$f0,$f0
	bcnez	$fcc0,.L115
	fmov.s	$f0,$f1
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L115
	fcmp.sgt.s	$fcc0,$f2,$f1
	bceqz	$fcc0,.L121
	fsub.s	$f0,$f2,$f1
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
	fmov.d	$f0,$f1
	fld.d	$f1,$r22,-24
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L123
	fmov.d	$f0,$f1
	fld.d	$f1,$r22,-32
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L123
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,63
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L124
	ld.d	$r12,$r22,-24
	bge	$r12,$r0,.L123
	fmov.d	$f0,$f1
	b	.L123
.L124:
	fld.d	$f0,$r22,-24
	fld.d	$f1,$r22,-32
	fcmp.slt.d	$fcc0,$f0,$f1
	fmov.d	$f0,$f1
	fld.d	$f1,$r22,-24
	fsel	$f0,$f1,$f0,$fcc0
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
	fmov.s	$f0,$f1
	fld.s	$f1,$r22,-20
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L132
	fmov.s	$f0,$f1
	fld.s	$f1,$r22,-24
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L132
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r22,-24
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L133
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	beqz	$r12,.L132
	fmov.s	$f0,$f1
	b	.L132
.L133:
	fld.s	$f0,$r22,-20
	fld.s	$f1,$r22,-24
	fcmp.slt.s	$fcc0,$f0,$f1
	fmov.s	$f0,$f1
	fld.s	$f1,$r22,-20
	fsel	$f0,$f1,$f0,$fcc0
.L132:
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
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
	or	$r24,$r6,$r0
	or	$r25,$r7,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L144
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L145
	srli.d	$r12,$r27,63
	srli.d	$r13,$r25,63
	beq	$r12,$r13,.L142
	bge	$r27,$r0,.L146
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L141
.L142:
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__lttf2)
	bge	$r4,$r0,.L149
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L141
.L144:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L141
.L145:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L141
.L146:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L141
.L149:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
.L141:
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
	fmov.d	$f0,$f1
	fld.d	$f1,$r22,-24
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L151
	fmov.d	$f0,$f1
	fld.d	$f1,$r22,-32
	fcmp.cun.d	$fcc0,$f1,$f1
	bcnez	$fcc0,.L151
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,63
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	beq	$r13,$r12,.L152
	ld.d	$r12,$r22,-24
	fmov.d	$f0,$f1
	bge	$r12,$r0,.L151
	fld.d	$f0,$r22,-24
	b	.L151
.L152:
	fld.d	$f0,$r22,-24
	fld.d	$f1,$r22,-32
	fcmp.slt.d	$fcc0,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc0
.L151:
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
	fmov.s	$f0,$f1
	fld.s	$f1,$r22,-20
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L160
	fmov.s	$f0,$f1
	fld.s	$f1,$r22,-24
	fcmp.cun.s	$fcc0,$f1,$f1
	bcnez	$fcc0,.L160
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r14,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	ldptr.w	$r13,$r22,-24
	and	$r13,$r13,$r14
	slli.w	$r13,$r13,0
	beq	$r12,$r13,.L161
	ldptr.w	$r12,$r22,-20
	lu12i.w	$r13,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	fmov.s	$f0,$f1
	beqz	$r12,.L160
	fld.s	$f0,$r22,-20
	b	.L160
.L161:
	fld.s	$f0,$r22,-20
	fld.s	$f1,$r22,-24
	fcmp.slt.s	$fcc0,$f0,$f1
	fsel	$f0,$f1,$f0,$fcc0
.L160:
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
	bnez	$r4,.L172
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L173
	srli.d	$r12,$r27,63
	srli.d	$r13,$r25,63
	beq	$r12,$r13,.L170
	bge	$r27,$r0,.L174
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L169
.L170:
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__lttf2)
	bge	$r4,$r0,.L177
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L169
.L172:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L169
.L173:
	or	$r12,$r26,$r0
	or	$r13,$r27,$r0
	b	.L169
.L174:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
	b	.L169
.L177:
	or	$r12,$r24,$r0
	or	$r13,$r25,$r0
.L169:
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
	b	.L179
.L180:
	andi	$r13,$r4,63
	la.local	$r14,digits
	ldx.b	$r13,$r14,$r13
	st.b	$r13,$r12,0
	addi.d	$r12,$r12,1
	bstrpick.d	$r4,$r4,31,6
.L179:
	bnez	$r4,.L180
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
	bnez	$r5,.L184
	st.d	$r0,$r4,8
	stptr.d	$r0,$r4,0
	b	.L183
.L184:
	ldptr.d	$r12,$r5,0
	stptr.d	$r12,$r4,0
	st.d	$r5,$r4,8
	stptr.d	$r4,$r5,0
	ldptr.d	$r12,$r4,0
	beqz	$r12,.L183
	st.d	$r4,$r12,8
.L183:
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
	beqz	$r12,.L187
	ld.d	$r13,$r4,8
	st.d	$r13,$r12,8
.L187:
	ld.d	$r12,$r4,8
	beqz	$r12,.L186
	ldptr.d	$r13,$r4,0
	stptr.d	$r13,$r12,0
.L186:
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
	or	$r28,$r5,$r0
	or	$r30,$r6,$r0
	or	$r25,$r7,$r0
	or	$r29,$r8,$r0
	ldptr.d	$r26,$r6,0
	or	$r24,$r5,$r0
	or	$r23,$r0,$r0
	b	.L190
.L193:
	or	$r5,$r24,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r29,0
	add.d	$r24,$r24,$r25
	bnez	$r4,.L191
	mul.d	$r23,$r23,$r25
	add.d	$r4,$r28,$r23
	b	.L192
.L191:
	addi.d	$r23,$r23,1
.L190:
	bne	$r23,$r26,.L193
	addi.d	$r12,$r26,1
	stptr.d	$r12,$r30,0
	mul.d	$r26,$r25,$r26
	or	$r6,$r25,$r0
	or	$r5,$r27,$r0
	add.d	$r4,$r28,$r26
	bl	%plt(memcpy)
.L192:
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
	or	$r27,$r4,$r0
	or	$r28,$r5,$r0
	or	$r25,$r7,$r0
	or	$r26,$r8,$r0
	ldptr.d	$r29,$r6,0
	or	$r24,$r5,$r0
	or	$r23,$r0,$r0
	b	.L195
.L198:
	or	$r5,$r24,$r0
	or	$r4,$r27,$r0
	jirl	$r1,$r26,0
	add.d	$r24,$r24,$r25
	bnez	$r4,.L196
	mul.d	$r7,$r23,$r25
	add.d	$r4,$r28,$r7
	b	.L197
.L196:
	addi.d	$r23,$r23,1
.L195:
	bne	$r23,$r29,.L198
	or	$r4,$r0,$r0
.L197:
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
	b	.L201
.L202:
	addi.d	$r23,$r23,1
.L201:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L202
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L208
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L204
	addi.w	$r4,$r0,1			# 0x1
	b	.L203
.L208:
	or	$r4,$r0,$r0
.L203:
	addi.d	$r23,$r23,1
.L204:
	or	$r12,$r0,$r0
	b	.L205
.L206:
	alsl.w	$r12,$r12,$r12,2
	slli.w	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.w	$r12,$r12,$r13
.L205:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L206
	or	$r13,$r12,$r0
	sub.w	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
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
	b	.L212
.L213:
	addi.d	$r23,$r23,1
.L212:
	ld.b	$r4,$r23,0
	bl	isspace
	bnez	$r4,.L213
	ld.b	$r12,$r23,0
	addi.w	$r13,$r0,43			# 0x2b
	beq	$r12,$r13,.L219
	addi.w	$r13,$r0,45			# 0x2d
	bne	$r12,$r13,.L215
	addi.w	$r4,$r0,1			# 0x1
	b	.L214
.L219:
	or	$r4,$r0,$r0
.L214:
	addi.d	$r23,$r23,1
.L215:
	or	$r12,$r0,$r0
	b	.L216
.L217:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
.L216:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L217
	or	$r13,$r12,$r0
	sub.d	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
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
	b	.L225
.L230:
	or	$r4,$r0,$r0
.L225:
	addi.d	$r23,$r23,1
.L226:
	or	$r12,$r0,$r0
	b	.L227
.L228:
	alsl.d	$r12,$r12,$r12,2
	slli.d	$r12,$r12,1
	addi.d	$r23,$r23,1
	ld.b	$r13,$r23,-1
	addi.w	$r13,$r13,-48
	sub.d	$r12,$r12,$r13
.L227:
	ld.b	$r13,$r23,0
	addi.w	$r13,$r13,-48
	addi.w	$r14,$r0,9			# 0x9
	bleu	$r13,$r14,.L228
	or	$r13,$r12,$r0
	sub.d	$r12,$r0,$r12
	masknez	$r12,$r12,$r4
	maskeqz	$r4,$r13,$r4
	or	$r4,$r12,$r4
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
	or	$r24,$r6,$r0
	or	$r25,$r7,$r0
	or	$r27,$r8,$r0
	b	.L234
.L238:
	srli.d	$r23,$r24,1
	mul.d	$r23,$r23,$r25
	add.d	$r23,$r26,$r23
	or	$r5,$r23,$r0
	or	$r4,$r28,$r0
	jirl	$r1,$r27,0
	bge	$r4,$r0,.L235
	srli.d	$r24,$r24,1
	b	.L234
.L235:
	ble	$r4,$r0,.L239
	add.d	$r26,$r23,$r25
	srli.d	$r12,$r24,1
	addi.d	$r24,$r24,-1
	sub.d	$r24,$r24,$r12
.L234:
	bnez	$r24,.L238
	or	$r4,$r0,$r0
	b	.L237
.L239:
	or	$r4,$r23,$r0
.L237:
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
	b	.L241
.L244:
	srai.w	$r23,$r24,1
	mul.d	$r23,$r23,$r26
	add.d	$r23,$r25,$r23
	or	$r6,$r27,$r0
	or	$r5,$r23,$r0
	or	$r4,$r29,$r0
	jirl	$r1,$r28,0
	beqz	$r4,.L245
	ble	$r4,$r0,.L243
	add.d	$r25,$r23,$r26
	addi.w	$r24,$r24,-1
.L243:
	srai.w	$r24,$r24,1
.L241:
	bnez	$r24,.L244
	or	$r4,$r0,$r0
	b	.L242
.L245:
	or	$r4,$r23,$r0
.L242:
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
	b	.L254
.L256:
	addi.d	$r4,$r4,4
.L254:
	ldptr.w	$r12,$r4,0
	beqz	$r12,.L255
	bne	$r5,$r12,.L256
.L255:
	ldptr.w	$r12,$r4,0
	maskeqz	$r4,$r4,$r12
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
	or	$r12,$r4,$r0
	b	.L260
.L262:
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
.L260:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L261
	beqz	$r14,.L261
	ldptr.w	$r13,$r5,0
	bnez	$r13,.L262
.L261:
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L263
	slt	$r4,$r13,$r14
.L263:
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
.L266:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	addi.d	$r13,$r4,-4
	ldx.w	$r13,$r13,$r12
	bnez	$r13,.L266
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
	b	.L268
.L269:
	addi.d	$r12,$r12,4
.L268:
	ldptr.w	$r13,$r12,0
	bnez	$r13,.L269
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
	or	$r12,$r4,$r0
	b	.L271
.L273:
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
.L271:
	beqz	$r6,.L272
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	bne	$r14,$r13,.L272
	beqz	$r14,.L272
	ldptr.w	$r13,$r5,0
	bnez	$r13,.L273
.L272:
	or	$r4,$r0,$r0
	beqz	$r6,.L274
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L274
	slt	$r4,$r13,$r14
.L274:
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
	b	.L278
.L280:
	addi.d	$r6,$r6,-1
	addi.d	$r4,$r4,4
.L278:
	beqz	$r6,.L279
	ldptr.w	$r12,$r4,0
	bne	$r5,$r12,.L280
.L279:
	maskeqz	$r4,$r4,$r6
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
	or	$r12,$r4,$r0
	b	.L284
.L286:
	addi.d	$r6,$r6,-1
	addi.d	$r12,$r12,4
	addi.d	$r5,$r5,4
.L284:
	beqz	$r6,.L285
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	beq	$r14,$r13,.L286
.L285:
	or	$r4,$r0,$r0
	beqz	$r6,.L287
	ldptr.w	$r14,$r12,0
	ldptr.w	$r13,$r5,0
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	blt	$r14,$r13,.L287
	slt	$r4,$r13,$r14
.L287:
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
	b	.L291
.L292:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
.L291:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L292
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
	beq	$r4,$r5,.L294
	sub.d	$r12,$r4,$r5
	slli.d	$r13,$r6,2
	bgeu	$r12,$r13,.L299
	addi.d	$r6,$r6,-1
	slli.d	$r12,$r6,2
	b	.L296
.L297:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,-4
.L296:
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	bne	$r12,$r13,.L297
	b	.L294
.L298:
	ldx.w	$r13,$r5,$r12
	stx.w	$r13,$r4,$r12
	addi.d	$r12,$r12,4
	b	.L295
.L299:
	or	$r12,$r0,$r0
.L295:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L298
.L294:
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
	b	.L301
.L302:
	addi.d	$r12,$r12,4
	st.w	$r5,$r12,-4
.L301:
	addi.d	$r6,$r6,-1
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r6,$r13,.L302
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
	bgeu	$r4,$r5,.L304
	add.d	$r4,$r4,$r6
	add.d	$r5,$r5,$r6
	or	$r12,$r6,$r0
	b	.L305
.L306:
	sub.d	$r13,$r4,$r6
	addi.d	$r13,$r13,-1
	ldx.b	$r14,$r13,$r12
	sub.d	$r13,$r5,$r6
	addi.d	$r13,$r13,-1
	stx.b	$r14,$r13,$r12
	addi.d	$r12,$r12,-1
.L305:
	bnez	$r12,.L306
	b	.L303
.L304:
	or	$r12,$r0,$r0
	bne	$r4,$r5,.L308
	b	.L303
.L309:
	ldx.b	$r13,$r4,$r12
	stx.b	$r13,$r5,$r12
	addi.d	$r12,$r12,1
.L308:
	bne	$r12,$r6,.L309
.L303:
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
	b	.L325
.L328:
	srl.w	$r13,$r4,$r12
	andi	$r13,$r13,1
	beqz	$r13,.L326
	addi.w	$r4,$r12,1
	b	.L327
.L326:
	addi.w	$r12,$r12,1
.L325:
	addi.w	$r13,$r0,32			# 0x20
	bne	$r12,$r13,.L328
	or	$r4,$r0,$r0
.L327:
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
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	beqz	$r12,.L330
	addi.w	$r4,$r0,1			# 0x1
	b	.L331
.L332:
	srai.w	$r12,$r12,1
	addi.w	$r4,$r4,1
.L331:
	andi	$r13,$r12,1
	beqz	$r13,.L332
.L330:
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
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC0)
	fld.s	$f1,$r12,%pc_lo12(.LC0)
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L335
	pcalau12i	$r12,%pc_hi20(.LC1)
	fld.s	$f1,$r12,%pc_lo12(.LC1)
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r12,$f0
	bstrpick.d	$r4,$r12,31,0
.L335:
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
	addi.w	$r4,$r0,1			# 0x1
	pcalau12i	$r12,%pc_hi20(.LC4)
	fld.d	$f1,$r12,%pc_lo12(.LC4)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L341
	pcalau12i	$r12,%pc_hi20(.LC5)
	fld.d	$f1,$r12,%pc_lo12(.LC5)
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r12,$f0
	bstrpick.d	$r4,$r12,31,0
.L341:
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
	or	$r12,$r4,$r0
	addi.w	$r4,$r0,1			# 0x1
	blt	$r12,$r0,.L347
	la.local	$r12,.LC9
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__gttf2)
	slt	$r4,$r0,$r4
.L347:
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
	bcnez	$fcc0,.L354
	fadd.s	$f1,$f0,$f0
	fcmp.ceq.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L354
	slti	$r12,$r4,0
	la.local	$r13,.LC10
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC11
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.s	$f1,$r12,0
.L357:
	andi	$r12,$r4,1
	beqz	$r12,.L356
	fmul.s	$f0,$f0,$f1
.L356:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L354
	fmul.s	$f1,$f1,$f1
	b	.L357
.L354:
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
	bcnez	$fcc0,.L360
	fadd.d	$f1,$f0,$f0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L360
	slti	$r12,$r4,0
	la.local	$r13,.LC12
	maskeqz	$r13,$r13,$r12
	la.local	$r14,.LC13
	masknez	$r12,$r14,$r12
	or	$r12,$r13,$r12
	fld.d	$f1,$r12,0
.L363:
	andi	$r12,$r4,1
	beqz	$r12,.L362
	fmul.d	$f0,$f0,$f1
.L362:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L360
	fmul.d	$f1,$f1,$f1
	b	.L363
.L360:
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
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
	or	$r23,$r6,$r0
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	bl	%plt(__unordtf2)
	bnez	$r4,.L366
	or	$r6,$r26,$r0
	or	$r7,$r27,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__addtf3)
	or	$r6,$r4,$r0
	or	$r7,$r5,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__netf2)
	beqz	$r4,.L366
	bge	$r23,$r0,.L371
	la.local	$r12,.LC14
	ldptr.d	$r24,$r12,0
	ld.d	$r25,$r12,8
	b	.L370
.L371:
	la.local	$r12,.LC15
	ldptr.d	$r24,$r12,0
	ld.d	$r25,$r12,8
.L370:
	andi	$r12,$r23,1
	beqz	$r12,.L369
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
	bl	%plt(__multf3)
	or	$r26,$r4,$r0
	or	$r27,$r5,$r0
.L369:
	srli.w	$r12,$r23,31
	add.w	$r12,$r12,$r23
	srai.w	$r23,$r12,1
	beqz	$r23,.L366
	or	$r6,$r24,$r0
	or	$r7,$r25,$r0
	or	$r4,$r24,$r0
	or	$r5,$r25,$r0
	bl	%plt(__multf3)
	or	$r24,$r4,$r0
	or	$r25,$r5,$r0
	b	.L370
.L366:
	or	$r4,$r26,$r0
	or	$r5,$r27,$r0
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
	b	.L374
.L375:
	ldx.b	$r14,$r5,$r12
	ldx.b	$r13,$r4,$r12
	xor	$r13,$r13,$r14
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L374:
	bne	$r12,$r6,.L375
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
	b	.L377
.L379:
	addi.d	$r24,$r24,1
	addi.d	$r12,$r12,1
	addi.d	$r23,$r23,-1
.L377:
	beqz	$r23,.L378
	ld.b	$r13,$r24,0
	st.b	$r13,$r12,0
	bnez	$r13,.L379
.L378:
	bnez	$r23,.L380
	st.b	$r0,$r12,0
.L380:
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
	b	.L382
.L384:
	addi.d	$r4,$r4,1
.L382:
	beq	$r4,$r5,.L383
	ldx.b	$r13,$r12,$r4
	bnez	$r13,.L384
.L383:
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
	b	.L386
.L388:
	addi.d	$r12,$r12,1
	ld.b	$r14,$r12,-1
	ld.b	$r13,$r4,0
	bne	$r14,$r13,.L389
	b	.L387
.L391:
	or	$r12,$r5,$r0
.L389:
	ld.b	$r13,$r12,0
	bnez	$r13,.L388
	addi.d	$r4,$r4,1
.L386:
	ld.b	$r12,$r4,0
	bnez	$r12,.L391
	or	$r4,$r0,$r0
.L387:
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
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
.L394:
	ld.b	$r12,$r13,0
	xor	$r12,$r5,$r12
	maskeqz	$r4,$r4,$r12
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
	addi.d	$r13,$r13,1
	ld.b	$r12,$r13,-1
	bnez	$r12,.L394
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
	or	$r4,$r23,$r0
	beqz	$r25,.L397
	ld.b	$r26,$r24,0
	b	.L398
.L399:
	or	$r6,$r25,$r0
	or	$r5,$r24,$r0
	or	$r4,$r23,$r0
	bl	strncmp
	beqz	$r4,.L401
	addi.d	$r23,$r23,1
.L398:
	or	$r5,$r26,$r0
	or	$r4,$r23,$r0
	bl	strchr
	or	$r23,$r4,$r0
	bnez	$r4,.L399
	or	$r4,$r0,$r0
	b	.L397
.L401:
	or	$r4,$r23,$r0
.L397:
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
	bceqz	$fcc0,.L403
	fcmp.sgt.d	$fcc0,$f1,$f2
	bcnez	$fcc0,.L405
.L403:
	movgr2fr.d	$f2,$r0
	fcmp.sgt.d	$fcc0,$f0,$f2
	bceqz	$fcc0,.L406
	fcmp.slt.d	$fcc0,$f1,$f2
	bceqz	$fcc0,.L406
.L405:
	fneg.d	$f0,$f0
.L406:
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
	or	$r24,$r6,$r0
	or	$r26,$r7,$r0
	sub.d	$r25,$r5,$r7
	add.d	$r25,$r4,$r25
	beqz	$r7,.L416
	or	$r4,$r0,$r0
	bltu	$r5,$r7,.L416
	b	.L417
.L419:
	ld.b	$r13,$r23,0
	ld.b	$r12,$r24,0
	bne	$r13,$r12,.L418
	addi.d	$r6,$r26,-1
	addi.d	$r5,$r24,1
	addi.d	$r4,$r23,1
	bl	memcmp
	beqz	$r4,.L422
.L418:
	addi.d	$r23,$r23,1
.L417:
	bleu	$r23,$r25,.L419
	or	$r4,$r0,$r0
	b	.L416
.L422:
	or	$r4,$r23,$r0
.L416:
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
	bceqz	$fcc0,.L441
	fneg.d	$f0,$f0
	addi.w	$r14,$r0,1			# 0x1
	b	.L425
.L441:
	or	$r14,$r0,$r0
.L425:
	or	$r12,$r0,$r0
	pcalau12i	$r13,%pc_hi20(.LC16)
	fld.d	$f1,$r13,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L427
	b	.L442
.L429:
	addi.w	$r12,$r12,1
	pcalau12i	$r13,%pc_hi20(.LC12)
	fld.d	$f1,$r13,%pc_lo12(.LC12)
	fmul.d	$f0,$f0,$f1
.L427:
	pcalau12i	$r13,%pc_hi20(.LC16)
	fld.d	$f1,$r13,%pc_lo12(.LC16)
	fcmp.sge.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L429
	b	.L430
.L442:
	pcalau12i	$r12,%pc_hi20(.LC12)
	fld.d	$f1,$r12,%pc_lo12(.LC12)
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L443
	movgr2fr.d	$f1,$r0
	or	$r12,$r0,$r0
	fcmp.cune.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L430
	b	.L438
.L433:
	addi.w	$r12,$r12,-1
	fadd.d	$f0,$f0,$f0
	b	.L432
.L438:
	or	$r12,$r0,$r0
.L432:
	pcalau12i	$r13,%pc_hi20(.LC12)
	fld.d	$f1,$r13,%pc_lo12(.LC12)
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L433
	b	.L430
.L443:
	or	$r12,$r0,$r0
.L430:
	stptr.w	$r12,$r4,0
	beqz	$r14,.L434
	fneg.d	$f0,$f0
.L434:
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
	b	.L445
.L447:
	andi	$r13,$r12,1
	maskeqz	$r13,$r5,$r13
	add.d	$r4,$r4,$r13
	slli.d	$r5,$r5,1
	srli.d	$r12,$r12,1
.L445:
	bnez	$r12,.L447
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
	b	.L449
.L451:
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
.L449:
	bgeu	$r5,$r4,.L456
	beqz	$r12,.L457
	bge	$r5,$r0,.L451
	or	$r13,$r0,$r0
	b	.L453
.L454:
	bltu	$r4,$r5,.L452
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L452:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	b	.L453
.L456:
	or	$r13,$r0,$r0
	b	.L453
.L457:
	or	$r13,$r0,$r0
.L453:
	bnez	$r12,.L454
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
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
	nor	$r12,$r0,$r4
	slti	$r13,$r4,0
	maskeqz	$r12,$r12,$r13
	masknez	$r4,$r4,$r13
	or	$r4,$r12,$r4
	slli.w	$r12,$r4,8
	clz.w	$r12,$r12
	addi.w	$r12,$r12,-1
	maskeqz	$r12,$r12,$r4
	addi.w	$r13,$r0,7			# 0x7
	masknez	$r4,$r13,$r4
	or	$r4,$r12,$r4
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
	srai.d	$r12,$r4,63
	xor	$r12,$r12,$r4
	clz.d	$r4,$r12
	addi.w	$r4,$r4,-1
	maskeqz	$r4,$r4,$r12
	addi.w	$r13,$r0,63			# 0x3f
	masknez	$r12,$r13,$r12
	or	$r4,$r4,$r12
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
	b	.L468
.L470:
	andi	$r14,$r12,1
	add.w	$r13,$r4,$r5
	maskeqz	$r13,$r13,$r14
	masknez	$r4,$r4,$r14
	or	$r4,$r13,$r4
	bstrpick.d	$r12,$r12,31,1
	slli.w	$r5,$r5,1
.L468:
	bnez	$r12,.L470
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
	srli.w	$r15,$r6,3
	addi.w	$r13,$r0,-8			# 0xfffffffffffffff8
	and	$r13,$r6,$r13
	bltu	$r4,$r5,.L472
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L473
.L472:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,3
	or	$r12,$r0,$r0
	b	.L474
.L475:
	ldx.d	$r14,$r5,$r12
	stx.d	$r14,$r4,$r12
	addi.d	$r12,$r12,8
.L474:
	bne	$r12,$r15,.L475
	bstrpick.d	$r12,$r13,31,0
	b	.L476
.L477:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L476:
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L477
	b	.L471
.L479:
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L473:
	addi.w	$r12,$r6,-1
	or	$r6,$r12,$r0
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r12,$r13,.L479
.L471:
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
	srli.w	$r14,$r6,1
	bltu	$r4,$r5,.L481
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L482
.L481:
	bstrpick.d	$r14,$r14,31,0
	slli.d	$r14,$r14,1
	or	$r12,$r0,$r0
	b	.L483
.L484:
	ldx.h	$r13,$r5,$r12
	stx.h	$r13,$r4,$r12
	addi.d	$r12,$r12,2
.L483:
	bne	$r12,$r14,.L484
	andi	$r12,$r6,1
	beqz	$r12,.L480
	addi.w	$r6,$r6,-1
	bstrpick.d	$r6,$r6,31,0
	ldx.b	$r12,$r5,$r6
	stx.b	$r12,$r4,$r6
	b	.L480
.L486:
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L482:
	addi.w	$r12,$r6,-1
	or	$r6,$r12,$r0
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r12,$r13,.L486
.L480:
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
	srli.w	$r15,$r6,2
	addi.w	$r13,$r0,-4			# 0xfffffffffffffffc
	and	$r13,$r6,$r13
	bltu	$r4,$r5,.L488
	bstrpick.d	$r12,$r6,31,0
	add.d	$r12,$r5,$r12
	bgeu	$r12,$r4,.L489
.L488:
	bstrpick.d	$r15,$r15,31,0
	slli.d	$r15,$r15,2
	or	$r12,$r0,$r0
	b	.L490
.L491:
	ldx.w	$r14,$r5,$r12
	stx.w	$r14,$r4,$r12
	addi.d	$r12,$r12,4
.L490:
	bne	$r12,$r15,.L491
	bstrpick.d	$r12,$r13,31,0
	b	.L492
.L493:
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
	addi.d	$r12,$r12,1
.L492:
	slli.w	$r13,$r12,0
	bgtu	$r6,$r13,.L493
	b	.L487
.L495:
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r5,$r12
	stx.b	$r13,$r4,$r12
.L489:
	addi.w	$r12,$r6,-1
	or	$r6,$r12,$r0
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	bne	$r12,$r13,.L495
.L487:
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
	blt	$r4,$r0,.L501
	movgr2fr.d	$f0,$r4
	ffint.d.l	$f0,$f0
	b	.L500
.L501:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	fadd.d	$f0,$f0,$f0
.L500:
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
	blt	$r4,$r0,.L504
	movgr2fr.d	$f0,$r4
	ffint.s.l	$f0,$f0
	b	.L503
.L504:
	andi	$r12,$r4,1
	srli.d	$r4,$r4,1
	or	$r12,$r12,$r4
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	fadd.s	$f0,$f0,$f0
.L503:
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
	b	.L507
.L509:
	addi.w	$r12,$r0,15			# 0xf
	sub.w	$r12,$r12,$r4
	sra.w	$r12,$r13,$r12
	andi	$r12,$r12,1
	bnez	$r12,.L508
	addi.w	$r4,$r4,1
.L507:
	addi.w	$r12,$r0,16			# 0x10
	bne	$r4,$r12,.L509
.L508:
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
	or	$r13,$r4,$r0
	or	$r4,$r0,$r0
	b	.L511
.L513:
	sra.w	$r12,$r13,$r4
	andi	$r12,$r12,1
	bnez	$r12,.L512
	addi.w	$r4,$r4,1
.L511:
	addi.w	$r12,$r0,16			# 0x10
	bne	$r4,$r12,.L513
.L512:
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
	bceqz	$fcc0,.L519
	fsub.s	$f0,$f0,$f1
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
	lu12i.w	$r12,32768>>12			# 0x8000
	add.d	$r4,$r4,$r12
	b	.L517
.L519:
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r4,$f0
.L517:
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
	or	$r12,$r0,$r0
	or	$r14,$r0,$r0
	b	.L521
.L523:
	sra.w	$r13,$r4,$r14
	andi	$r13,$r13,1
	addi.w	$r15,$r12,1
	maskeqz	$r15,$r15,$r13
	masknez	$r12,$r12,$r13
	or	$r12,$r15,$r12
	addi.w	$r14,$r14,1
.L521:
	addi.w	$r13,$r0,16			# 0x10
	bne	$r14,$r13,.L523
	andi	$r4,$r12,1
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
	or	$r15,$r4,$r0
	or	$r4,$r0,$r0
	or	$r13,$r0,$r0
	b	.L525
.L527:
	sra.w	$r12,$r15,$r13
	andi	$r12,$r12,1
	addi.w	$r14,$r4,1
	maskeqz	$r14,$r14,$r12
	masknez	$r4,$r4,$r12
	or	$r4,$r14,$r4
	addi.w	$r13,$r13,1
.L525:
	addi.w	$r12,$r0,16			# 0x10
	bne	$r13,$r12,.L527
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
	b	.L529
.L531:
	andi	$r14,$r12,1
	add.w	$r13,$r4,$r5
	maskeqz	$r13,$r13,$r14
	masknez	$r4,$r4,$r14
	or	$r4,$r13,$r4
	bstrpick.d	$r12,$r12,31,1
	slli.w	$r5,$r5,1
.L529:
	bnez	$r12,.L531
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
	or	$r14,$r4,$r0
	or	$r4,$r0,$r0
	or	$r12,$r0,$r0
	bnez	$r14,.L534
	b	.L533
.L536:
	andi	$r15,$r5,1
	add.w	$r13,$r12,$r14
	maskeqz	$r13,$r13,$r15
	masknez	$r12,$r12,$r15
	or	$r12,$r13,$r12
	slli.w	$r14,$r14,1
	bstrpick.d	$r5,$r5,31,1
.L534:
	bnez	$r5,.L536
	or	$r4,$r12,$r0
.L533:
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
	b	.L539
.L541:
	slli.w	$r5,$r5,1
	slli.w	$r12,$r12,1
.L539:
	bgeu	$r5,$r4,.L546
	beqz	$r12,.L547
	bge	$r5,$r0,.L541
	or	$r13,$r0,$r0
	b	.L543
.L544:
	bltu	$r4,$r5,.L542
	sub.w	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L542:
	bstrpick.d	$r12,$r12,31,1
	bstrpick.d	$r5,$r5,31,1
	b	.L543
.L546:
	or	$r13,$r0,$r0
	b	.L543
.L547:
	or	$r13,$r0,$r0
.L543:
	bnez	$r12,.L544
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
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
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.s	$fcc0,$f0,$f1
	bcnez	$fcc0,.L550
	fcmp.sgt.s	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r12,$f0
	bstrpick.d	$r4,$r12,31,0
.L550:
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
	addi.w	$r4,$r0,-1			# 0xffffffffffffffff
	fcmp.slt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L554
	fcmp.sgt.d	$fcc0,$f0,$f1
	movcf2fr	$f0,$fcc0
	movfr2gr.s	$r12,$f0
	bstrpick.d	$r4,$r12,31,0
.L554:
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
	or	$r16,$r0,$r0
	bge	$r5,$r0,.L560
	sub.w	$r5,$r0,$r5
	addi.w	$r16,$r0,1			# 0x1
.L560:
	addi.w	$r13,$r0,33			# 0x21
	or	$r12,$r0,$r0
	b	.L561
.L564:
	andi	$r15,$r5,1
	add.w	$r14,$r12,$r4
	maskeqz	$r14,$r14,$r15
	masknez	$r12,$r12,$r15
	or	$r12,$r14,$r12
	slli.w	$r4,$r4,1
	srai.w	$r5,$r5,1
.L561:
	beqz	$r5,.L563
	addi.w	$r13,$r13,-1
	bstrpick.w	$r13,$r13,7,0
	bnez	$r13,.L564
.L563:
	sub.w	$r4,$r0,$r12
	maskeqz	$r4,$r4,$r16
	masknez	$r16,$r12,$r16
	or	$r4,$r4,$r16
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
	or	$r23,$r0,$r0
	bge	$r4,$r0,.L569
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
.L569:
	bge	$r5,$r0,.L570
	sub.d	$r5,$r0,$r5
	xori	$r23,$r23,1
.L570:
	or	$r6,$r0,$r0
	slli.w	$r5,$r5,0
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r12,$r4,31,0
	sub.d	$r4,$r0,$r12
	maskeqz	$r4,$r4,$r23
	masknez	$r23,$r12,$r23
	or	$r4,$r4,$r23
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
	or	$r23,$r0,$r0
	bge	$r4,$r0,.L574
	sub.d	$r4,$r0,$r4
	addi.w	$r23,$r0,1			# 0x1
.L574:
	srai.d	$r12,$r5,63
	xor	$r5,$r5,$r12
	addi.w	$r6,$r0,1			# 0x1
	sub.w	$r5,$r5,$r12
	slli.w	$r4,$r4,0
	bl	__udivmodsi4
	bstrpick.d	$r12,$r4,31,0
	sub.d	$r4,$r0,$r12
	maskeqz	$r4,$r4,$r23
	masknez	$r23,$r12,$r23
	or	$r4,$r4,$r23
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
	b	.L579
.L581:
	slli.w	$r5,$r5,1
	bstrpick.w	$r5,$r5,15,0
	slli.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,15,0
.L579:
	slli.w	$r14,$r5,0
	bgeu	$r14,$r4,.L586
	addi.w	$r13,$r13,-1
	beqz	$r13,.L587
	ext.w.h	$r14,$r5
	bge	$r14,$r0,.L581
	or	$r14,$r0,$r0
	b	.L583
.L584:
	slli.w	$r13,$r4,0
	bltu	$r13,$r5,.L582
	sub.w	$r4,$r4,$r5
	bstrpick.w	$r4,$r4,15,0
	or	$r14,$r14,$r12
.L582:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	b	.L583
.L586:
	or	$r14,$r0,$r0
	b	.L583
.L587:
	or	$r14,$r0,$r0
.L583:
	bnez	$r12,.L584
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r14,$r6
	or	$r4,$r4,$r6
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
	b	.L590
.L592:
	slli.d	$r5,$r5,1
	slli.d	$r12,$r12,1
.L590:
	bgeu	$r5,$r4,.L597
	beqz	$r12,.L598
	bstrpick.d	$r13,$r5,31,31
	beqz	$r13,.L592
	or	$r13,$r0,$r0
	b	.L594
.L595:
	bltu	$r4,$r5,.L593
	sub.d	$r4,$r4,$r5
	or	$r13,$r13,$r12
.L593:
	srli.d	$r12,$r12,1
	srli.d	$r5,$r5,1
	b	.L594
.L597:
	or	$r13,$r0,$r0
	b	.L594
.L598:
	or	$r13,$r0,$r0
.L594:
	bnez	$r12,.L595
	maskeqz	$r4,$r4,$r6
	masknez	$r6,$r13,$r6
	or	$r4,$r4,$r6
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
	beqz	$r13,.L601
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,31,0
	sll.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,63,32
	b	.L603
.L601:
	beqz	$r5,.L603
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
.L603:
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
	beqz	$r16,.L606
	or	$r14,$r0,$r0
	sll.d	$r15,$r4,$r6
	b	.L607
.L606:
	beqz	$r6,.L609
	sll.d	$r14,$r4,$r6
	sll.d	$r13,$r5,$r6
	sub.w	$r6,$r0,$r6
	srl.d	$r12,$r4,$r6
	or	$r15,$r12,$r13
.L607:
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	b	.L608
.L609:
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
.L608:
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
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
	beqz	$r13,.L611
	srai.d	$r12,$r4,32
	srai.w	$r13,$r12,31
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r13,63,32
	sra.w	$r12,$r12,$r5
	bstrins.d	$r4,$r12,31,0
	b	.L613
.L611:
	beqz	$r5,.L613
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
.L613:
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
	beqz	$r16,.L616
	srai.d	$r15,$r5,63
	sra.d	$r14,$r5,$r6
	b	.L617
.L616:
	beqz	$r6,.L619
	sra.d	$r15,$r5,$r6
	sub.w	$r16,$r0,$r6
	sll.d	$r13,$r5,$r16
	srl.d	$r12,$r4,$r6
	or	$r14,$r13,$r12
.L617:
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	b	.L618
.L619:
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
.L618:
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
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
	lu12i.w	$r13,65536>>12			# 0x10000
	sltu	$r13,$r4,$r13
	slli.d	$r13,$r13,4
	addi.w	$r12,$r0,16			# 0x10
	sub.w	$r12,$r12,$r13
	srl.w	$r12,$r4,$r12
	lu12i.w	$r4,61440>>12			# 0xf000
	ori	$r4,$r4,3840
	and	$r4,$r4,$r12
	sltui	$r4,$r4,1
	slli.d	$r4,$r4,3
	addi.w	$r14,$r0,8			# 0x8
	sub.w	$r14,$r14,$r4
	srl.w	$r12,$r12,$r14
	add.d	$r13,$r4,$r13
	andi	$r14,$r12,240
	sltui	$r14,$r14,1
	slli.d	$r14,$r14,2
	addi.w	$r15,$r0,4			# 0x4
	sub.w	$r15,$r15,$r14
	srl.w	$r12,$r12,$r15
	add.w	$r13,$r13,$r14
	andi	$r14,$r12,12
	sltui	$r14,$r14,1
	slli.d	$r14,$r14,1
	addi.w	$r15,$r0,2			# 0x2
	sub.w	$r16,$r15,$r14
	srl.w	$r12,$r12,$r16
	add.w	$r13,$r13,$r14
	andi	$r4,$r12,2
	sltui	$r4,$r4,1
	sub.w	$r15,$r15,$r12
	mul.w	$r4,$r4,$r15
	add.w	$r4,$r4,$r13
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
	or	$r18,$r4,$r0
	sltui	$r4,$r5,1
	sub.d	$r14,$r0,$r4
	addi.d	$r12,$r4,-1
	and	$r12,$r12,$r5
	and	$r13,$r14,$r18
	or	$r12,$r12,$r13
	clz.d	$r12,$r12
	slli.d	$r4,$r4,6
	add.d	$r4,$r12,$r4
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
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r4,$r0,$r0
	blt	$r14,$r13,.L633
	addi.w	$r4,$r0,2			# 0x2
	bgt	$r14,$r13,.L633
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L633
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
.L633:
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
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	bgt	$r7,$r5,.L640
	addi.w	$r4,$r0,2			# 0x2
	blt	$r7,$r5,.L640
	or	$r4,$r0,$r0
	bgtu	$r6,$r12,.L640
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
.L640:
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
	bstrpick.w	$r13,$r4,15,0
	sltui	$r13,$r13,1
	slli.d	$r13,$r13,4
	srl.w	$r4,$r4,$r13
	bstrpick.w	$r12,$r4,7,0
	sltui	$r12,$r12,1
	slli.d	$r12,$r12,3
	srl.w	$r4,$r4,$r12
	add.d	$r12,$r12,$r13
	andi	$r13,$r4,15
	sltui	$r13,$r13,1
	slli.d	$r13,$r13,2
	srl.w	$r4,$r4,$r13
	add.w	$r12,$r12,$r13
	andi	$r13,$r4,3
	sltui	$r13,$r13,1
	slli.d	$r13,$r13,1
	srl.w	$r4,$r4,$r13
	andi	$r4,$r4,3
	add.w	$r12,$r12,$r13
	nor	$r13,$r0,$r4
	andi	$r14,$r13,1
	srli.w	$r4,$r4,1
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
	or	$r16,$r4,$r0
	sltui	$r4,$r4,1
	sub.d	$r12,$r0,$r4
	and	$r13,$r12,$r5
	andn	$r12,$r16,$r12
	or	$r12,$r12,$r13
	ctz.d	$r12,$r12
	slli.d	$r4,$r4,6
	add.d	$r4,$r12,$r4
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
	or	$r14,$r4,$r0
	ctz.d	$r4,$r4
	addi.d	$r4,$r4,1
	bnez	$r14,.L657
	ctz.d	$r4,$r5
	addi.w	$r4,$r4,65
	maskeqz	$r4,$r4,$r5
.L657:
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
	beqz	$r13,.L660
	or	$r4,$r0,$r0
	bstrins.d	$r4,$r0,63,32
	bstrpick.d	$r12,$r12,63,32
	srl.w	$r5,$r12,$r5
	bstrins.d	$r4,$r5,31,0
	b	.L662
.L660:
	beqz	$r5,.L662
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
.L662:
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
	beqz	$r16,.L665
	or	$r13,$r0,$r0
	srl.d	$r12,$r5,$r6
	b	.L666
.L665:
	beqz	$r6,.L668
	srl.d	$r13,$r5,$r6
	sub.w	$r16,$r0,$r6
	sll.d	$r15,$r5,$r16
	srl.d	$r14,$r4,$r6
	or	$r12,$r15,$r14
.L666:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	b	.L667
.L668:
	or	$r14,$r4,$r0
	or	$r15,$r5,$r0
.L667:
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
	mul.d	$r15,$r16,$r17
	srli.d	$r14,$r15,32
	bstrpick.d	$r15,$r15,31,0
	srli.d	$r4,$r4,32
	mul.d	$r17,$r4,$r17
	add.d	$r14,$r14,$r17
	slli.d	$r17,$r14,32
	add.d	$r12,$r17,$r15
	srli.d	$r13,$r14,32
	srli.d	$r14,$r12,32
	bstrpick.d	$r15,$r12,31,0
	srli.d	$r5,$r5,32
	mul.d	$r16,$r16,$r5
	add.d	$r14,$r14,$r16
	slli.d	$r16,$r14,32
	add.d	$r12,$r16,$r15
	srli.d	$r14,$r14,32
	add.d	$r14,$r14,$r13
	mul.d	$r4,$r4,$r5
	add.d	$r5,$r4,$r14
	or	$r14,$r12,$r0
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
	st.d	$r24,$r3,56
	st.d	$r25,$r3,48
	st.d	$r26,$r3,40
	st.d	$r27,$r3,32
	st.d	$r28,$r3,24
	st.d	$r29,$r3,16
	st.d	$r30,$r3,8
	stptr.d	$r31,$r3,0
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	.cfi_offset 31, -80
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	or	$r28,$r4,$r0
	or	$r29,$r5,$r0
	or	$r26,$r6,$r0
	or	$r27,$r7,$r0
	or	$r5,$r6,$r0
	bl	__mulddi3
	or	$r15,$r5,$r0
	or	$r12,$r4,$r0
	mul.d	$r5,$r29,$r26
	mul.d	$r30,$r27,$r28
	add.d	$r5,$r5,$r30
	add.d	$r5,$r5,$r15
	or	$r14,$r12,$r0
	or	$r4,$r14,$r0
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	ld.d	$r24,$r3,56
	.cfi_restore 24
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
	ldptr.d	$r31,$r3,0
	.cfi_restore 31
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
	slli.w	$r13,$r13,0
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
	srli.d	$r13,$r4,32
	add.w	$r13,$r13,$r4
	srli.w	$r12,$r13,16
	add.w	$r12,$r12,$r13
	srli.w	$r4,$r12,8
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
	srai.d	$r13,$r14,32
	add.w	$r13,$r13,$r14
	srli.w	$r12,$r13,16
	add.w	$r12,$r12,$r13
	srli.w	$r4,$r12,8
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
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC16)
	fld.d	$f1,$r12,%pc_lo12(.LC16)
.L684:
	andi	$r12,$r4,1
	beqz	$r12,.L682
	fmul.d	$f1,$f1,$f0
.L682:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L683
	fmul.d	$f0,$f0,$f0
	b	.L684
.L683:
	fmov.d	$f0,$f1
	beqz	$r13,.L685
	frecip.d	$f0,$f1
.L685:
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
	srli.d	$r13,$r4,63
	pcalau12i	$r12,%pc_hi20(.LC21)
	fld.s	$f1,$r12,%pc_lo12(.LC21)
.L690:
	andi	$r12,$r4,1
	beqz	$r12,.L688
	fmul.s	$f1,$f1,$f0
.L688:
	srli.w	$r12,$r4,31
	add.w	$r4,$r12,$r4
	srai.w	$r4,$r4,1
	beqz	$r4,.L689
	fmul.s	$f0,$f0,$f0
	b	.L690
.L689:
	fmov.s	$f0,$f1
	beqz	$r13,.L691
	frecip.s	$f0,$f1
.L691:
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
	or	$r12,$r4,$r0
	srai.d	$r14,$r4,32
	srai.d	$r13,$r5,32
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L694
	addi.w	$r4,$r0,2			# 0x2
	bgtu	$r14,$r13,.L694
	slli.w	$r14,$r12,0
	slli.w	$r13,$r5,0
	or	$r4,$r0,$r0
	bltu	$r14,$r13,.L694
	sltu	$r4,$r13,$r14
	addi.d	$r4,$r4,1
.L694:
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
	or	$r12,$r4,$r0
	or	$r4,$r0,$r0
	bgtu	$r7,$r5,.L701
	addi.w	$r4,$r0,2			# 0x2
	bltu	$r7,$r5,.L701
	or	$r4,$r0,$r0
	bgtu	$r6,$r12,.L701
	sltu	$r4,$r6,$r12
	addi.d	$r4,$r4,1
.L701:
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
