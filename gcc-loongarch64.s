	.file	"mini-libc.c"
	.text
	.align	2
	.globl	make_ti
	.type	make_ti, @function
make_ti:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-24
	bgeu	$r13,$r12,.L6
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	b	.L7
.L8:
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L7:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L8
	b	.L9
.L6:
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-24
	beq	$r13,$r12,.L9
	b	.L10
.L11:
	ld.d	$r13,$r22,-32
	addi.d	$r12,$r13,1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r14,$r12,1
	st.d	$r14,$r22,-24
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L10:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L11
.L9:
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	or	$r12,$r6,$r0
	st.d	$r7,$r22,-64
	st.w	$r12,$r22,-52
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.w	$r12,$r22,-52
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-52
	b	.L14
.L16:
	ld.d	$r12,$r22,-64
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-64
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L14:
	ld.d	$r12,$r22,-64
	beqz	$r12,.L15
	ld.d	$r12,$r22,-32
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-52
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L16
.L15:
	ld.d	$r12,$r22,-64
	beqz	$r12,.L17
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	b	.L18
.L17:
	or	$r12,$r0,$r0
.L18:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	or	$r12,$r5,$r0
	st.d	$r6,$r22,-56
	st.w	$r12,$r22,-44
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.w	$r12,$r22,-44
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-44
	b	.L20
.L22:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L20:
	ld.d	$r12,$r22,-56
	beqz	$r12,.L21
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L22
.L21:
	ld.d	$r12,$r22,-56
	beqz	$r12,.L23
	ld.d	$r12,$r22,-24
	b	.L25
.L23:
	or	$r12,$r0,$r0
.L25:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	b	.L27
.L29:
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-32
.L27:
	ld.d	$r12,$r22,-56
	beqz	$r12,.L28
	ld.d	$r12,$r22,-24
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	beq	$r13,$r12,.L29
.L28:
	ld.d	$r12,$r22,-56
	beqz	$r12,.L30
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	b	.L31
.L30:
	or	$r12,$r0,$r0
.L31:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	b	.L34
.L35:
	ld.d	$r13,$r22,-32
	addi.d	$r12,$r13,1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r14,$r12,1
	st.d	$r14,$r22,-24
	ld.bu	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L34:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L35
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	or	$r12,$r5,$r0
	st.d	$r6,$r22,-56
	st.w	$r12,$r22,-44
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.w	$r12,$r22,-44
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-44
	b	.L38
.L40:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L38
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	b	.L39
.L38:
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L40
	or	$r12,$r0,$r0
.L39:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	or	$r12,$r5,$r0
	st.d	$r6,$r22,-56
	st.w	$r12,$r22,-44
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L42
.L43:
	ld.w	$r12,$r22,-44
	bstrpick.w	$r13,$r12,7,0
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L42:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L43
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	b	.L46
.L47:
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L46:
	ld.d	$r12,$r22,-32
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	ld.b	$r12,$r12,0
	bnez	$r12,.L47
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-28
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-28
	b	.L50
.L52:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L50:
	ld.d	$r12,$r22,-24
	ld.b	$r12,$r12,0
	beqz	$r12,.L51
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L52
.L51:
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r13,$r22,-20
.L57:
	ld.b	$r13,$r12,0
	or	$r14,$r13,$r0
	ld.w	$r13,$r22,-20
	slli.w	$r13,$r13,0
	bne	$r13,$r14,.L55
	b	.L56
.L55:
	or	$r13,$r12,$r0
	addi.d	$r12,$r13,1
	ld.b	$r13,$r13,0
	bnez	$r13,.L57
	or	$r12,$r0,$r0
.L56:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	b	.L59
.L61:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-32
.L59:
	ld.d	$r12,$r22,-24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L60
	ld.d	$r12,$r22,-24
	ld.b	$r12,$r12,0
	bnez	$r12,.L61
.L60:
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L64
.L65:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L64:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	bnez	$r12,.L65
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-24
	sub.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L70
	or	$r12,$r0,$r0
	b	.L69
.L72:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L70:
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	beqz	$r12,.L71
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	beqz	$r12,.L71
	ld.d	$r12,$r22,-56
	beqz	$r12,.L71
	ld.d	$r12,$r22,-24
	ld.bu	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	beq	$r13,$r12,.L72
.L71:
	ld.d	$r12,$r22,-24
	ld.bu	$r12,$r12,0
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ld.bu	$r12,$r12,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
.L69:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	b	.L74
.L75:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-32
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,1
	ld.d	$r13,$r22,-24
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,2
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,2
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-2
	st.d	$r12,$r22,-56
.L74:
	ld.d	$r13,$r22,-56
	addi.w	$r12,$r0,1			# 0x1
	bgt	$r13,$r12,.L75
	nop
	nop
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
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
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,127			# 0x7f
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r13,$r12,.L81
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,9			# 0x9
	bne	$r13,$r12,.L82
.L81:
	addi.w	$r12,$r0,1			# 0x1
	b	.L83
.L82:
	or	$r12,$r0,$r0
.L83:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L86
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,127			# 0x7f
	bne	$r13,$r12,.L87
.L86:
	addi.w	$r12,$r0,1			# 0x1
	b	.L88
.L87:
	or	$r12,$r0,$r0
.L88:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-33
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,93			# 0x5d
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-97
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,25			# 0x19
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-32
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,94			# 0x5e
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,32			# 0x20
	beq	$r13,$r12,.L99
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-9
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,4			# 0x4
	bgtu	$r13,$r12,.L100
.L99:
	addi.w	$r12,$r0,1			# 0x1
	b	.L101
.L100:
	or	$r12,$r0,$r0
.L101:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	addi.w	$r12,$r12,-65
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,25			# 0x19
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L106
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-127
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,32			# 0x20
	bleu	$r13,$r12,.L106
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4056
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,1			# 0x1
	bleu	$r13,$r12,.L106
	ld.w	$r12,$r22,-20
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,7
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	bgtu	$r13,$r12,.L107
.L106:
	addi.w	$r12,$r0,1			# 0x1
	b	.L108
.L107:
	or	$r12,$r0,$r0
.L108:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	sltu	$r12,$r12,$r13
	xori	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,254			# 0xfe
	bgtu	$r13,$r12,.L113
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,32			# 0x20
	sltu	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L114
.L113:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	lu12i.w	$r12,8192>>12			# 0x2000
	ori	$r12,$r12,39
	bleu	$r13,$r12,.L115
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-12288>>12			# 0xffffffffffffd000
	ori	$r12,$r12,4054
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,45056>>12			# 0xb000
	ori	$r12,$r12,2005
	bleu	$r13,$r12,.L115
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-57344>>12			# 0xffffffffffff2000
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,4096>>12			# 0x1000
	ori	$r12,$r12,4088
	bgtu	$r13,$r12,.L116
.L115:
	addi.w	$r12,$r0,1			# 0x1
	b	.L114
.L116:
	ld.w	$r12,$r22,-20
	addu16i.d	$r12,$r12,-1
	addi.w	$r12,$r12,4
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,1048576>>12			# 0x100000
	ori	$r12,$r12,3
	bgtu	$r13,$r12,.L117
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4094
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4094
	bne	$r13,$r12,.L118
.L117:
	or	$r12,$r0,$r0
	b	.L114
.L118:
	addi.w	$r12,$r0,1			# 0x1
.L114:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L120
	ld.w	$r12,$r22,-20
	ori	$r12,$r12,32
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,-97
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,5			# 0x5
	bgtu	$r13,$r12,.L121
.L120:
	addi.w	$r12,$r0,1			# 0x1
	b	.L122
.L121:
	or	$r12,$r0,$r0
.L122:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fst.d	$f1,$r22,-32
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-24
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L127
	fld.d	$f0,$r22,-24
	b	.L128
.L127:
	fld.d	$f1,$r22,-32
	fld.d	$f0,$r22,-32
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L129
	fld.d	$f0,$r22,-32
	b	.L128
.L129:
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L134
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fsub.d	$f0,$f1,$f0
	b	.L128
.L134:
	movgr2fr.d	$f0,$r0
.L128:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fst.s	$f1,$r22,-24
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-20
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L136
	fld.s	$f0,$r22,-20
	b	.L137
.L136:
	fld.s	$f1,$r22,-24
	fld.s	$f0,$r22,-24
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L138
	fld.s	$f0,$r22,-24
	b	.L137
.L138:
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L143
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fsub.s	$f0,$f1,$f0
	b	.L137
.L143:
	movgr2fr.w	$f0,$r0
.L137:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-24
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L145
	fld.d	$f0,$r22,-32
	b	.L146
.L145:
	fld.d	$f1,$r22,-32
	fld.d	$f0,$r22,-32
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L147
	fld.d	$f0,$r22,-24
	b	.L146
.L147:
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L148
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L149
	fld.d	$f0,$r22,-32
	b	.L146
.L149:
	fld.d	$f0,$r22,-24
	b	.L146
.L148:
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L155
	fld.d	$f0,$r22,-32
	b	.L146
.L155:
	fld.d	$f0,$r22,-24
.L146:
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
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-20
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L157
	fld.s	$f0,$r22,-24
	b	.L158
.L157:
	fld.s	$f1,$r22,-24
	fld.s	$f0,$r22,-24
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L159
	fld.s	$f0,$r22,-20
	b	.L158
.L159:
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ld.w	$r13,$r22,-24
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	beq	$r13,$r12,.L160
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L161
	fld.s	$f0,$r22,-24
	b	.L158
.L161:
	fld.s	$f0,$r22,-20
	b	.L158
.L160:
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L167
	fld.s	$f0,$r22,-24
	b	.L158
.L167:
	fld.s	$f0,$r22,-20
.L158:
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-32
	st.d	$r5,$r22,-24
	st.d	$r6,$r22,-48
	st.d	$r7,$r22,-40
	ld.d	$r6,$r22,-32
	ld.d	$r7,$r22,-24
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L183
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	b	.L171
.L183:
	ld.d	$r6,$r22,-48
	ld.d	$r7,$r22,-40
	ld.d	$r4,$r22,-48
	ld.d	$r5,$r22,-40
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L184
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	b	.L171
.L184:
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-40
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L174
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L175
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	b	.L171
.L175:
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	b	.L171
.L174:
	ld.d	$r6,$r22,-48
	ld.d	$r7,$r22,-40
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	bge	$r12,$r0,.L185
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	b	.L171
.L185:
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
.L171:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
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
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-24
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L187
	fld.d	$f0,$r22,-32
	b	.L188
.L187:
	fld.d	$f1,$r22,-32
	fld.d	$f0,$r22,-32
	fcmp.cor.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L189
	fld.d	$f0,$r22,-24
	b	.L188
.L189:
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L190
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L191
	fld.d	$f0,$r22,-24
	b	.L188
.L191:
	fld.d	$f0,$r22,-32
	b	.L188
.L190:
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L197
	fld.d	$f0,$r22,-24
	b	.L188
.L197:
	fld.d	$f0,$r22,-32
.L188:
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
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-20
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L199
	fld.s	$f0,$r22,-24
	b	.L200
.L199:
	fld.s	$f1,$r22,-24
	fld.s	$f0,$r22,-24
	fcmp.cor.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L201
	fld.s	$f0,$r22,-20
	b	.L200
.L201:
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ld.w	$r13,$r22,-24
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	beq	$r13,$r12,.L202
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L203
	fld.s	$f0,$r22,-20
	b	.L200
.L203:
	fld.s	$f0,$r22,-24
	b	.L200
.L202:
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L209
	fld.s	$f0,$r22,-20
	b	.L200
.L209:
	fld.s	$f0,$r22,-24
.L200:
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-32
	st.d	$r5,$r22,-24
	st.d	$r6,$r22,-48
	st.d	$r7,$r22,-40
	ld.d	$r6,$r22,-32
	ld.d	$r7,$r22,-24
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L225
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	b	.L213
.L225:
	ld.d	$r6,$r22,-48
	ld.d	$r7,$r22,-40
	ld.d	$r4,$r22,-48
	ld.d	$r5,$r22,-40
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L226
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	b	.L213
.L226:
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-40
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beq	$r13,$r12,.L216
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,63
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L217
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	b	.L213
.L217:
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	b	.L213
.L216:
	ld.d	$r6,$r22,-48
	ld.d	$r7,$r22,-40
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	bge	$r12,$r0,.L227
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	b	.L213
.L227:
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
.L213:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.w	$r12,$r22,-28
	la.local	$r12,s.0
	st.d	$r12,$r22,-24
	b	.L229
.L230:
	ld.w	$r12,$r22,-28
	andi	$r12,$r12,63
	slli.w	$r12,$r12,0
	la.local	$r13,digits
	bstrpick.d	$r12,$r12,31,0
	ldx.b	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.w	$r12,$r22,-28
	srli.w	$r12,$r12,6
	st.w	$r12,$r22,-28
.L229:
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bnez	$r12,.L230
	ld.d	$r12,$r22,-24
	st.b	$r0,$r12,0
	la.local	$r12,s.0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r13,$r12,31,0
	la.local	$r12,seed
	stptr.d	$r13,$r12,0
	nop
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-32
	bnez	$r12,.L236
	ld.d	$r12,$r22,-24
	st.d	$r0,$r12,8
	ld.d	$r12,$r22,-24
	ld.d	$r13,$r12,8
	ld.d	$r12,$r22,-24
	stptr.d	$r13,$r12,0
	b	.L235
.L236:
	ld.d	$r12,$r22,-32
	ldptr.d	$r13,$r12,0
	ld.d	$r12,$r22,-24
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r22,-24
	ld.d	$r13,$r22,-32
	st.d	$r13,$r12,8
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r22,-24
	ldptr.d	$r12,$r12,0
	beqz	$r12,.L235
	ld.d	$r12,$r22,-24
	ldptr.d	$r12,$r12,0
	ld.d	$r13,$r22,-24
	st.d	$r13,$r12,8
.L235:
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	ldptr.d	$r12,$r12,0
	beqz	$r12,.L239
	ld.d	$r12,$r22,-24
	ldptr.d	$r12,$r12,0
	ld.d	$r13,$r22,-24
	ld.d	$r13,$r13,8
	st.d	$r13,$r12,8
.L239:
	ld.d	$r12,$r22,-24
	ld.d	$r12,$r12,8
	beqz	$r12,.L241
	ld.d	$r12,$r22,-24
	ld.d	$r12,$r12,8
	ld.d	$r13,$r22,-24
	ldptr.d	$r13,$r13,0
	stptr.d	$r13,$r12,0
.L241:
	nop
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-112
	.cfi_def_cfa_offset 112
	st.d	$r1,$r3,104
	st.d	$r22,$r3,96
	st.d	$r23,$r3,88
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,112
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-72
	st.d	$r5,$r22,-80
	st.d	$r6,$r22,-88
	st.d	$r7,$r22,-96
	st.d	$r8,$r22,-104
	ld.d	$r23,$r22,-96
	or	$r16,$r23,$r0
	addi.d	$r16,$r16,-1
	st.d	$r16,$r22,-48
	or	$r14,$r23,$r0
	or	$r15,$r0,$r0
	srli.d	$r16,$r14,61
	slli.d	$r13,$r15,3
	or	$r13,$r16,$r13
	slli.d	$r12,$r14,3
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-88
	ldptr.d	$r12,$r12,0
	st.d	$r12,$r22,-64
	st.d	$r0,$r22,-40
	b	.L243
.L246:
	ld.d	$r12,$r22,-40
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r22,-56
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r22,-104
	or	$r5,$r13,$r0
	ld.d	$r4,$r22,-72
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	bnez	$r12,.L244
	ld.d	$r12,$r22,-40
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r22,-56
	add.d	$r12,$r13,$r12
	b	.L245
.L244:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L243:
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-64
	bltu	$r13,$r12,.L246
	ld.d	$r12,$r22,-64
	addi.d	$r13,$r12,1
	ld.d	$r12,$r22,-88
	stptr.d	$r13,$r12,0
	ld.d	$r12,$r22,-64
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r22,-56
	add.d	$r12,$r13,$r12
	ld.d	$r6,$r22,-96
	ld.d	$r5,$r22,-72
	or	$r4,$r12,$r0
	bl	memcpy
	or	$r12,$r4,$r0
.L245:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,104
	.cfi_restore 1
	ld.d	$r22,$r3,96
	.cfi_restore 22
	ld.d	$r23,$r3,88
	.cfi_restore 23
	addi.d	$r3,$r3,112
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
	addi.d	$r3,$r3,-112
	.cfi_def_cfa_offset 112
	st.d	$r1,$r3,104
	st.d	$r22,$r3,96
	st.d	$r23,$r3,88
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$r22,$r3,112
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-72
	st.d	$r5,$r22,-80
	st.d	$r6,$r22,-88
	st.d	$r7,$r22,-96
	st.d	$r8,$r22,-104
	ld.d	$r23,$r22,-96
	or	$r16,$r23,$r0
	addi.d	$r16,$r16,-1
	st.d	$r16,$r22,-48
	or	$r14,$r23,$r0
	or	$r15,$r0,$r0
	srli.d	$r16,$r14,61
	slli.d	$r13,$r15,3
	or	$r13,$r16,$r13
	slli.d	$r12,$r14,3
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-88
	ldptr.d	$r12,$r12,0
	st.d	$r12,$r22,-64
	st.d	$r0,$r22,-40
	b	.L248
.L251:
	ld.d	$r12,$r22,-40
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r22,-56
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r22,-104
	or	$r5,$r13,$r0
	ld.d	$r4,$r22,-72
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	bnez	$r12,.L249
	ld.d	$r12,$r22,-40
	mul.d	$r12,$r23,$r12
	ld.d	$r13,$r22,-56
	add.d	$r12,$r13,$r12
	b	.L250
.L249:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L248:
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-64
	bltu	$r13,$r12,.L251
	or	$r12,$r0,$r0
.L250:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,104
	.cfi_restore 1
	ld.d	$r22,$r3,96
	.cfi_restore 22
	ld.d	$r23,$r3,88
	.cfi_restore 23
	addi.d	$r3,$r3,112
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srai.w	$r12,$r12,31
	ld.w	$r13,$r22,-20
	xor	$r13,$r12,$r13
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.w	$r0,$r22,-20
	st.w	$r0,$r22,-24
	b	.L255
.L256:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L255:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L256
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L257
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L259
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-24
.L257:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
	b	.L259
.L260:
	ld.w	$r13,$r22,-20
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,2
	add.w	$r12,$r12,$r13
	slli.w	$r12,$r12,1
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-40
	addi.d	$r14,$r12,1
	st.d	$r14,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
.L259:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L260
	ld.w	$r12,$r22,-24
	slli.w	$r12,$r12,0
	bnez	$r12,.L261
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	b	.L262
.L261:
	ldptr.w	$r12,$r22,-20
.L262:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r0,$r22,-24
	st.w	$r0,$r22,-28
	b	.L265
.L266:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L265:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L266
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L267
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L269
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-28
.L267:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
	b	.L269
.L270:
	ld.d	$r13,$r22,-24
	or	$r12,$r13,$r0
	slli.d	$r12,$r12,2
	add.d	$r12,$r12,$r13
	slli.d	$r12,$r12,1
	or	$r14,$r12,$r0
	ld.d	$r12,$r22,-40
	addi.d	$r13,$r12,1
	st.d	$r13,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.d	$r12,$r14,$r12
	st.d	$r12,$r22,-24
.L269:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L270
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bnez	$r12,.L271
	ld.d	$r12,$r22,-24
	sub.d	$r12,$r0,$r12
	b	.L273
.L271:
	ld.d	$r12,$r22,-24
.L273:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r0,$r22,-24
	st.w	$r0,$r22,-28
	b	.L275
.L276:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L275:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r4,$r12,$r0
	bl	isspace
	or	$r12,$r4,$r0
	bnez	$r12,.L276
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	or	$r14,$r12,$r0
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,43			# 0x2b
	beq	$r13,$r12,.L277
	or	$r13,$r14,$r0
	addi.w	$r12,$r0,45			# 0x2d
	bne	$r13,$r12,.L279
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-28
.L277:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
	b	.L279
.L280:
	ld.d	$r13,$r22,-24
	or	$r12,$r13,$r0
	slli.d	$r12,$r12,2
	add.d	$r12,$r12,$r13
	slli.d	$r12,$r12,1
	or	$r14,$r12,$r0
	ld.d	$r12,$r22,-40
	addi.d	$r13,$r12,1
	st.d	$r13,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	sub.d	$r12,$r14,$r12
	st.d	$r12,$r22,-24
.L279:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	addi.w	$r12,$r12,-48
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,9			# 0x9
	bleu	$r13,$r12,.L280
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bnez	$r12,.L281
	ld.d	$r12,$r22,-24
	sub.d	$r12,$r0,$r12
	b	.L283
.L281:
	ld.d	$r12,$r22,-24
.L283:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r1,$r3,72
	st.d	$r22,$r3,64
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	st.d	$r7,$r22,-64
	st.d	$r8,$r22,-72
	b	.L285
.L289:
	ld.d	$r12,$r22,-56
	srli.d	$r13,$r12,1
	ld.d	$r12,$r22,-64
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-48
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-72
	ld.d	$r5,$r22,-24
	ld.d	$r4,$r22,-40
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L286
	ld.d	$r12,$r22,-56
	srli.d	$r12,$r12,1
	st.d	$r12,$r22,-56
	b	.L285
.L286:
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	ble	$r12,$r0,.L287
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-64
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-56
	srli.d	$r12,$r12,1
	ld.d	$r13,$r22,-56
	sub.d	$r12,$r13,$r12
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
	b	.L285
.L287:
	ld.d	$r12,$r22,-24
	b	.L288
.L285:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L289
	or	$r12,$r0,$r0
.L288:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,72
	.cfi_restore 1
	ld.d	$r22,$r3,64
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	st.d	$r22,$r3,80
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	st.d	$r5,$r22,-64
	st.d	$r6,$r22,-72
	st.d	$r7,$r22,-80
	st.d	$r8,$r22,-88
	st.d	$r9,$r22,-96
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-72
	st.w	$r12,$r22,-28
	b	.L291
.L295:
	ld.w	$r12,$r22,-28
	srai.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-80
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-24
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-88
	ld.d	$r6,$r22,-96
	ld.d	$r5,$r22,-40
	ld.d	$r4,$r22,-56
	jirl	$r1,$r12,0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	bnez	$r12,.L292
	ld.d	$r12,$r22,-40
	b	.L293
.L292:
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	ble	$r12,$r0,.L294
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-80
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.w	$r12,$r22,-28
	addi.w	$r12,$r12,-1
	st.w	$r12,$r22,-28
.L294:
	ld.w	$r12,$r22,-28
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-28
.L291:
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bnez	$r12,.L295
	or	$r12,$r0,$r0
.L293:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	ld.d	$r22,$r3,80
	.cfi_restore 22
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r13,$r4,$r0
	or	$r14,$r5,$r0
	st.w	$r13,$r22,-20
	or	$r13,$r14,$r0
	st.w	$r13,$r22,-24
	ld.w	$r14,$r22,-20
	ld.w	$r13,$r22,-24
	slli.w	$r14,$r14,0
	slli.w	$r13,$r13,0
	div.w	$r14,$r14,$r13
	bne	$r13,$r0,1f
	break	7
1:
	or	$r13,$r14,$r0
	slli.w	$r14,$r13,0
	ld.w	$r15,$r22,-20
	ld.w	$r13,$r22,-24
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
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	srai.d	$r13,$r12,63
	ld.d	$r12,$r22,-24
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	div.d	$r16,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r14,$r16,$r0
	or	$r15,$r13,$r0
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	srai.d	$r13,$r12,63
	ld.d	$r12,$r22,-24
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	div.d	$r16,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r14,$r16,$r0
	or	$r15,$r13,$r0
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	srai.d	$r13,$r12,63
	ld.d	$r12,$r22,-24
	xor	$r12,$r13,$r12
	sub.d	$r12,$r12,$r13
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	div.d	$r16,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	mod.d	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r14,$r16,$r0
	or	$r15,$r13,$r0
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	b	.L311
.L313:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-24
.L311:
	ld.d	$r12,$r22,-24
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L312
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L313
.L312:
	ld.d	$r12,$r22,-24
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L314
	ld.d	$r12,$r22,-24
	b	.L316
.L314:
	or	$r12,$r0,$r0
.L316:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	b	.L318
.L320:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-32
.L318:
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	bne	$r13,$r12,.L319
	ld.d	$r12,$r22,-24
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L319
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L320
.L319:
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L321
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L322
.L321:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
.L322:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	nop
.L325:
	ld.d	$r13,$r22,-48
	addi.d	$r12,$r13,4
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-40
	addi.d	$r14,$r12,4
	st.d	$r14,$r22,-40
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L325
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L328
.L329:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-40
.L328:
	ld.d	$r12,$r22,-40
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L329
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-24
	sub.d	$r12,$r13,$r12
	srai.d	$r12,$r12,2
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	st.d	$r6,$r22,-40
	b	.L332
.L334:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-32
.L332:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L333
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	bne	$r13,$r12,.L333
	ld.d	$r12,$r22,-24
	ldptr.w	$r12,$r12,0
	beqz	$r12,.L333
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L334
.L333:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L335
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L336
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L338
.L336:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L338
.L335:
	or	$r12,$r0,$r0
.L338:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.d	$r6,$r22,-40
	st.w	$r12,$r22,-28
	b	.L341
.L343:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-24
.L341:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L342
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	bne	$r12,$r13,.L343
.L342:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L344
	ld.d	$r12,$r22,-24
	b	.L346
.L344:
	or	$r12,$r0,$r0
.L346:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	st.d	$r6,$r22,-40
	b	.L348
.L350:
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,4
	st.d	$r12,$r22,-32
.L348:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L349
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	beq	$r13,$r12,.L350
.L349:
	ld.d	$r12,$r22,-40
	beqz	$r12,.L351
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	blt	$r13,$r12,.L352
	ld.d	$r12,$r22,-24
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-32
	ldptr.w	$r12,$r12,0
	slt	$r12,$r12,$r13
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	b	.L354
.L352:
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L354
.L351:
	or	$r12,$r0,$r0
.L354:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L357
.L358:
	ld.d	$r13,$r22,-48
	addi.d	$r12,$r13,4
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-40
	addi.d	$r14,$r12,4
	st.d	$r14,$r22,-40
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L357:
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L358
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	bne	$r13,$r12,.L361
	ld.d	$r12,$r22,-40
	b	.L362
.L361:
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	sub.d	$r13,$r13,$r12
	ld.d	$r12,$r22,-56
	slli.d	$r12,$r12,2
	bgeu	$r13,$r12,.L367
	b	.L364
.L365:
	ld.d	$r12,$r22,-56
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-48
	add.d	$r13,$r13,$r12
	ld.d	$r12,$r22,-56
	slli.d	$r12,$r12,2
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L364:
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L365
	b	.L366
.L368:
	ld.d	$r13,$r22,-48
	addi.d	$r12,$r13,4
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-40
	addi.d	$r14,$r12,4
	st.d	$r14,$r22,-40
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
.L367:
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L368
.L366:
	ld.d	$r12,$r22,-24
.L362:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	or	$r12,$r5,$r0
	st.d	$r6,$r22,-56
	st.w	$r12,$r22,-44
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L370
.L371:
	ld.d	$r12,$r22,-40
	addi.d	$r13,$r12,4
	st.d	$r13,$r22,-40
	ld.w	$r13,$r22,-44
	stptr.w	$r13,$r12,0
.L370:
	ld.d	$r12,$r22,-56
	addi.d	$r13,$r12,-1
	st.d	$r13,$r22,-56
	bnez	$r12,.L371
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	bgeu	$r13,$r12,.L374
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-56
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-32
	b	.L375
.L376:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-32
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L375:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L376
	b	.L380
.L374:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	beq	$r13,$r12,.L380
	b	.L378
.L379:
	ld.d	$r13,$r22,-24
	addi.d	$r12,$r13,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	addi.d	$r14,$r12,1
	st.d	$r14,$r22,-32
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L378:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L379
.L380:
	nop
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	ld.d	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	sub.w	$r12,$r0,$r12
	rotr.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	ld.d	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	rotr.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-20
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r0,$r12
	rotr.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-20
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	rotr.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	ld.d	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	sll.d	$r13,$r13,$r12
	ldptr.w	$r12,$r22,-28
	addi.w	$r14,$r0,64			# 0x40
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.d	$r14,$r22,-24
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	ld.d	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	srl.d	$r13,$r13,$r12
	ldptr.w	$r12,$r22,-28
	addi.w	$r14,$r0,64			# 0x40
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.d	$r14,$r22,-24
	sll.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.h	$r12,$r22,-18
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.hu	$r12,$r22,-18
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-24
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,15,0
	ld.hu	$r12,$r22,-18
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,16			# 0x10
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.h	$r12,$r22,-18
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.hu	$r12,$r22,-18
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,15,0
	ld.hu	$r12,$r22,-18
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,16			# 0x10
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.b	$r12,$r22,-17
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.bu	$r12,$r22,-17
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-24
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,7,0
	ld.bu	$r12,$r22,-17
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,8			# 0x8
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,7,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.b	$r12,$r22,-17
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.bu	$r12,$r22,-17
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r13,$r12,7,0
	ld.bu	$r12,$r22,-17
	slli.w	$r14,$r12,0
	addi.w	$r15,$r0,8			# 0x8
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	bstrpick.w	$r12,$r12,7,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.h	$r12,$r22,-34
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r22,-24
	ld.hu	$r13,$r22,-34
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,8
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,8
	bstrpick.w	$r13,$r12,15,0
	ld.d	$r12,$r22,-24
	bstrpick.w	$r14,$r12,15,0
	ld.hu	$r12,$r22,-34
	and	$r12,$r14,$r12
	bstrpick.w	$r12,$r12,15,0
	slli.w	$r12,$r12,8
	bstrpick.w	$r12,$r12,15,0
	or	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,15,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r22,-24
	ld.wu	$r13,$r22,-36
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,24
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,24
	slli.w	$r14,$r12,0
	ld.wu	$r13,$r22,-36
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,16
	and	$r12,$r13,$r12
	srli.d	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-24
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r14,$r12,0
	ld.w	$r12,$r22,-36
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-24
	slli.w	$r14,$r12,0
	ld.w	$r12,$r22,-36
	and	$r12,$r12,$r14
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,24
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	addi.w	$r12,$r0,255			# 0xff
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	slli.d	$r13,$r12,56
	ld.d	$r12,$r22,-40
	and	$r12,$r13,$r12
	srli.d	$r13,$r12,56
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,48
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,40
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,40
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,24
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,32
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	srli.d	$r12,$r12,8
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,24
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,8
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,16
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,24
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,8
	ld.d	$r12,$r22,-40
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,40
	or	$r13,$r13,$r12
	ld.d	$r14,$r22,-40
	ld.d	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.d	$r12,$r12,56
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	st.w	$r0,$r22,-20
	b	.L408
.L411:
	ldptr.w	$r13,$r22,-36
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L409
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	b	.L410
.L409:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L408:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L411
	or	$r12,$r0,$r0
.L410:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	stptr.d	$r23,$r3,0
	.cfi_offset 22, -8
	.cfi_offset 23, -16
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	bnez	$r12,.L413
	or	$r12,$r0,$r0
	b	.L414
.L413:
	addi.w	$r23,$r0,1			# 0x1
	b	.L415
.L416:
	srai.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	addi.w	$r13,$r23,1
	slli.w	$r23,$r13,0
.L415:
	andi	$r13,$r12,1
	slli.w	$r13,$r13,0
	beqz	$r13,.L416
	or	$r12,$r23,$r0
.L414:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	ldptr.d	$r23,$r3,0
	.cfi_restore 23
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fld.s	$f1,$r22,-20
	la.local	$r12,.LC0
	fld.s	$f0,$r12,0
	fcmp.slt.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L418
	fld.s	$f1,$r22,-20
	la.local	$r12,.LC1
	fld.s	$f0,$r12,0
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L423
.L418:
	addi.w	$r12,$r0,1			# 0x1
	b	.L421
.L423:
	or	$r12,$r0,$r0
.L421:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fld.d	$f1,$r22,-24
	la.local	$r12,.LC2
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L425
	fld.d	$f1,$r22,-24
	la.local	$r12,.LC3
	fld.d	$f0,$r12,0
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L430
.L425:
	addi.w	$r12,$r0,1			# 0x1
	b	.L428
.L430:
	or	$r12,$r0,$r0
.L428:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-32
	st.d	$r5,$r22,-24
	la.local	$r12,.LC4
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__lttf2)
	or	$r12,$r4,$r0
	blt	$r12,$r0,.L432
	la.local	$r12,.LC5
	ldptr.d	$r6,$r12,0
	ld.d	$r7,$r12,8
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__gttf2)
	or	$r12,$r4,$r0
	ble	$r12,$r0,.L437
.L432:
	addi.w	$r12,$r0,1			# 0x1
	b	.L435
.L437:
	or	$r12,$r0,$r0
.L435:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-28
	fld.s	$f0,$r22,-28
	ffint.d.w	$f0,$f0
	bl	%plt(__extenddftf2)
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	ld.d	$r14,$r22,-24
	stptr.d	$r12,$r14,0
	st.d	$r13,$r14,8
	nop
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-36
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-40
	fld.s	$f1,$r22,-36
	fld.s	$f0,$r22,-36
	fcmp.cun.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L440
	fld.s	$f0,$r22,-36
	fadd.s	$f0,$f0,$f0
	fld.s	$f1,$r22,-36
	fcmp.ceq.s	$fcc0,$f1,$f0
	bcnez	$fcc0,.L440
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L441
	la.local	$r12,.LC6
	fld.s	$f0,$r12,0
	b	.L442
.L441:
	la.local	$r12,.LC7
	fld.s	$f0,$r12,0
.L442:
	fst.s	$f0,$r22,-20
.L445:
	ldptr.w	$r12,$r22,-40
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L443
	fld.s	$f1,$r22,-36
	fld.s	$f0,$r22,-20
	fmul.s	$f0,$f1,$f0
	fst.s	$f0,$r22,-36
.L443:
	ld.w	$r12,$r22,-40
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	beqz	$r12,.L447
	fld.s	$f0,$r22,-20
	fmul.s	$f0,$f0,$f0
	fst.s	$f0,$r22,-20
	b	.L445
.L447:
	nop
.L440:
	fld.s	$f0,$r22,-36
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-40
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-44
	fld.d	$f1,$r22,-40
	fld.d	$f0,$r22,-40
	fcmp.cun.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L449
	fld.d	$f0,$r22,-40
	fadd.d	$f0,$f0,$f0
	fld.d	$f1,$r22,-40
	fcmp.ceq.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L449
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L450
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	b	.L451
.L450:
	la.local	$r12,.LC9
	fld.d	$f0,$r12,0
.L451:
	fst.d	$f0,$r22,-24
.L454:
	ldptr.w	$r12,$r22,-44
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L452
	fld.d	$f1,$r22,-40
	fld.d	$f0,$r22,-24
	fmul.d	$f0,$f1,$f0
	fst.d	$f0,$r22,-40
.L452:
	ld.w	$r12,$r22,-44
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	beqz	$r12,.L456
	fld.d	$f0,$r22,-24
	fmul.d	$f0,$f0,$f0
	fst.d	$f0,$r22,-24
	b	.L454
.L456:
	nop
.L449:
	fld.d	$f0,$r22,-40
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-48
	st.d	$r5,$r22,-40
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-52
	ld.d	$r6,$r22,-48
	ld.d	$r7,$r22,-40
	ld.d	$r4,$r22,-48
	ld.d	$r5,$r22,-40
	bl	%plt(__unordtf2)
	or	$r12,$r4,$r0
	bnez	$r12,.L458
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	or	$r6,$r12,$r0
	or	$r7,$r13,$r0
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	bl	%plt(__addtf3)
	or	$r14,$r4,$r0
	or	$r15,$r5,$r0
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	or	$r6,$r12,$r0
	or	$r7,$r13,$r0
	ld.d	$r4,$r22,-48
	ld.d	$r5,$r22,-40
	bl	%plt(__netf2)
	or	$r12,$r4,$r0
	beqz	$r12,.L458
	ld.w	$r12,$r22,-52
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L460
	la.local	$r14,.LC10
	ldptr.d	$r12,$r14,0
	ld.d	$r13,$r14,8
	b	.L461
.L460:
	la.local	$r14,.LC11
	ldptr.d	$r12,$r14,0
	ld.d	$r13,$r14,8
.L461:
	st.d	$r12,$r22,-32
	st.d	$r13,$r22,-24
.L464:
	ldptr.w	$r12,$r22,-52
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L462
	ld.d	$r6,$r22,-32
	ld.d	$r7,$r22,-24
	ld.d	$r4,$r22,-48
	ld.d	$r5,$r22,-40
	bl	%plt(__multf3)
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.d	$r12,$r22,-48
	st.d	$r13,$r22,-40
.L462:
	ld.w	$r12,$r22,-52
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-52
	ld.w	$r12,$r22,-52
	slli.w	$r12,$r12,0
	beqz	$r12,.L467
	ld.d	$r6,$r22,-32
	ld.d	$r7,$r22,-24
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	bl	%plt(__multf3)
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.d	$r12,$r22,-32
	st.d	$r13,$r22,-24
	b	.L464
.L467:
	nop
.L458:
	ld.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-32
	b	.L469
.L470:
	ld.d	$r12,$r22,-24
	addi.d	$r13,$r12,1
	st.d	$r13,$r22,-24
	ld.b	$r14,$r12,0
	ld.d	$r12,$r22,-32
	addi.d	$r13,$r12,1
	st.d	$r13,$r22,-32
	ld.b	$r13,$r12,0
	xor	$r13,$r14,$r13
	ext.w.b	$r13,$r13
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L469:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L470
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r22,$r3,48
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	ld.d	$r4,$r22,-40
	bl	strlen
	or	$r13,$r4,$r0
	ld.d	$r12,$r22,-40
	add.d	$r12,$r12,$r13
	st.d	$r12,$r22,-24
	b	.L473
.L475:
	ld.d	$r12,$r22,-48
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,-1
	st.d	$r12,$r22,-56
.L473:
	ld.d	$r12,$r22,-56
	beqz	$r12,.L474
	ld.d	$r12,$r22,-48
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	st.b	$r13,$r12,0
	ld.d	$r12,$r22,-24
	ld.b	$r12,$r12,0
	bnez	$r12,.L475
.L474:
	ld.d	$r12,$r22,-56
	bnez	$r12,.L476
	ld.d	$r12,$r22,-24
	st.b	$r0,$r12,0
.L476:
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r0,$r22,-24
	b	.L479
.L484:
	nop
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L479:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-48
	bgeu	$r13,$r12,.L480
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-24
	add.d	$r12,$r13,$r12
	ld.b	$r12,$r12,0
	bnez	$r12,.L484
.L480:
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	b	.L486
.L490:
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-24
	b	.L487
.L489:
	ld.d	$r12,$r22,-24
	addi.d	$r13,$r12,1
	st.d	$r13,$r22,-24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L487
	ld.d	$r12,$r22,-40
	b	.L488
.L487:
	ld.d	$r12,$r22,-24
	ld.b	$r12,$r12,0
	bnez	$r12,.L489
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-40
.L486:
	ld.d	$r12,$r22,-40
	ld.b	$r12,$r12,0
	bnez	$r12,.L490
	or	$r12,$r0,$r0
.L488:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r13,$r22,-36
	st.d	$r0,$r22,-24
.L493:
	ld.b	$r13,$r12,0
	or	$r14,$r13,$r0
	ld.w	$r13,$r22,-36
	slli.w	$r13,$r13,0
	bne	$r13,$r14,.L492
	st.d	$r12,$r22,-24
.L492:
	or	$r13,$r12,$r0
	addi.d	$r12,$r13,1
	ld.b	$r13,$r13,0
	bnez	$r13,.L493
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r4,$r22,-48
	bl	strlen
	st.d	$r4,$r22,-32
	ld.d	$r12,$r22,-32
	bnez	$r12,.L498
	ld.d	$r12,$r22,-40
	b	.L497
.L500:
	ld.d	$r6,$r22,-32
	ld.d	$r5,$r22,-48
	ld.d	$r4,$r22,-24
	bl	strncmp
	or	$r12,$r4,$r0
	bnez	$r12,.L499
	ld.d	$r12,$r22,-24
	b	.L497
.L499:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L498:
	ld.d	$r12,$r22,-48
	ld.b	$r12,$r12,0
	or	$r5,$r12,$r0
	ld.d	$r4,$r22,-24
	bl	strchr
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	bnez	$r12,.L500
	or	$r12,$r0,$r0
.L497:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fst.d	$f1,$r22,-32
	fld.d	$f0,$r22,-24
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L502
	fld.d	$f0,$r22,-32
	movgr2fr.d	$f1,$r0
	fcmp.sgt.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L504
.L502:
	fld.d	$f0,$r22,-24
	movgr2fr.d	$f1,$r0
	fcmp.sgt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L505
	fld.d	$f0,$r22,-32
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L505
.L504:
	fld.d	$f0,$r22,-24
	fneg.d	$f0,$f0
	b	.L508
.L505:
	fld.d	$f0,$r22,-24
.L508:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r22,$r3,48
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	st.d	$r7,$r22,-64
	ld.d	$r13,$r22,-48
	ld.d	$r12,$r22,-64
	sub.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-64
	bnez	$r12,.L512
	ld.d	$r12,$r22,-40
	b	.L513
.L512:
	ld.d	$r13,$r22,-48
	ld.d	$r12,$r22,-64
	sltu	$r12,$r13,$r12
	bstrpick.w	$r12,$r12,7,0
	beqz	$r12,.L514
	or	$r12,$r0,$r0
	b	.L513
.L514:
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	b	.L515
.L517:
	ld.d	$r12,$r22,-24
	ld.b	$r13,$r12,0
	ld.d	$r12,$r22,-56
	ld.b	$r12,$r12,0
	bne	$r13,$r12,.L516
	ld.d	$r12,$r22,-24
	addi.d	$r13,$r12,1
	ld.d	$r12,$r22,-56
	addi.d	$r14,$r12,1
	ld.d	$r12,$r22,-64
	addi.d	$r12,$r12,-1
	or	$r6,$r12,$r0
	or	$r5,$r14,$r0
	or	$r4,$r13,$r0
	bl	memcmp
	or	$r12,$r4,$r0
	bnez	$r12,.L516
	ld.d	$r12,$r22,-24
	b	.L513
.L516:
	ld.d	$r12,$r22,-24
	addi.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L515:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	bleu	$r13,$r12,.L517
	or	$r12,$r0,$r0
.L513:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	st.d	$r6,$r22,-40
	ld.d	$r6,$r22,-40
	ld.d	$r5,$r22,-32
	ld.d	$r4,$r22,-24
	bl	memcpy
	or	$r13,$r4,$r0
	ld.d	$r12,$r22,-40
	add.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-40
	st.d	$r4,$r22,-48
	st.w	$r0,$r22,-24
	st.w	$r0,$r22,-20
	fld.d	$f0,$r22,-40
	movgr2fr.d	$f1,$r0
	fcmp.slt.d	$fcc0,$f0,$f1
	bceqz	$fcc0,.L521
	fld.d	$f0,$r22,-40
	fneg.d	$f0,$f0
	fst.d	$f0,$r22,-40
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-20
.L521:
	fld.d	$f1,$r22,-40
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fcmp.sge.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L536
	b	.L525
.L526:
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
	fld.d	$f1,$r22,-40
	la.local	$r12,.LC9
	fld.d	$f0,$r12,0
	fdiv.d	$f0,$f1,$f0
	fst.d	$f0,$r22,-40
.L525:
	fld.d	$f1,$r22,-40
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fcmp.sge.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L526
	b	.L527
.L536:
	fld.d	$f1,$r22,-40
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L527
	fld.d	$f0,$r22,-40
	movgr2fr.d	$f1,$r0
	fcmp.ceq.d	$fcc0,$f0,$f1
	bcnez	$fcc0,.L527
	b	.L529
.L530:
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,-1
	st.w	$r12,$r22,-24
	fld.d	$f0,$r22,-40
	fadd.d	$f0,$f0,$f0
	fst.d	$f0,$r22,-40
.L529:
	fld.d	$f1,$r22,-40
	la.local	$r12,.LC8
	fld.d	$f0,$r12,0
	fcmp.slt.d	$fcc0,$f1,$f0
	bcnez	$fcc0,.L530
.L527:
	ld.d	$r12,$r22,-48
	ld.w	$r13,$r22,-24
	stptr.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	beqz	$r12,.L531
	fld.d	$f0,$r22,-40
	fneg.d	$f0,$f0
	fst.d	$f0,$r22,-40
.L531:
	fld.d	$f0,$r22,-40
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r0,$r22,-24
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-32
	b	.L538
.L540:
	ld.d	$r12,$r22,-32
	andi	$r12,$r12,1
	beqz	$r12,.L539
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-48
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
.L539:
	ld.d	$r12,$r22,-48
	slli.d	$r12,$r12,1
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-32
	srli.d	$r12,$r12,1
	st.d	$r12,$r22,-32
.L538:
	ld.d	$r12,$r22,-32
	bnez	$r12,.L540
	ld.d	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.d	$r6,$r22,-48
	st.w	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-20
	st.w	$r0,$r22,-24
	b	.L543
.L545:
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L543:
	ld.w	$r13,$r22,-40
	ld.w	$r12,$r22,-36
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L546
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	beqz	$r12,.L546
	ldptr.w	$r12,$r22,-40
	bge	$r12,$r0,.L545
	b	.L546
.L548:
	ld.w	$r13,$r22,-36
	ld.w	$r12,$r22,-40
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L547
	ld.w	$r13,$r22,-36
	ld.w	$r12,$r22,-40
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r22,-36
	ld.w	$r13,$r22,-24
	ld.w	$r12,$r22,-20
	or	$r12,$r13,$r12
	st.w	$r12,$r22,-24
.L547:
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-40
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
.L546:
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	bnez	$r12,.L548
	ld.d	$r12,$r22,-48
	beqz	$r12,.L549
	ldptr.w	$r12,$r22,-36
	b	.L550
.L549:
	ldptr.w	$r12,$r22,-24
.L550:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.b	$r12,$r22,-33
	ld.bu	$r12,$r22,-33
	ext.w.b	$r12,$r12
	bge	$r12,$r0,.L552
	ld.bu	$r12,$r22,-33
	nor	$r12,$r0,$r12
	st.b	$r12,$r22,-33
.L552:
	ld.bu	$r12,$r22,-33
	bstrpick.w	$r12,$r12,7,0
	bnez	$r12,.L553
	addi.w	$r12,$r0,7			# 0x7
	b	.L554
.L553:
	ld.b	$r12,$r22,-33
	slli.w	$r12,$r12,0
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	clz.w	$r12,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
.L554:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	bge	$r12,$r0,.L556
	ld.d	$r12,$r22,-40
	nor	$r12,$r0,$r12
	st.d	$r12,$r22,-40
.L556:
	ld.d	$r12,$r22,-40
	bnez	$r12,.L557
	addi.w	$r12,$r0,63			# 0x3f
	b	.L558
.L557:
	ld.d	$r12,$r22,-40
	clz.d	$r12,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
.L558:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	st.w	$r0,$r22,-20
	b	.L560
.L562:
	ld.w	$r12,$r22,-36
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L561
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-40
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
.L561:
	ld.w	$r12,$r22,-36
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
.L560:
	ld.w	$r12,$r22,-36
	slli.w	$r12,$r12,0
	bnez	$r12,.L562
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	st.d	$r5,$r22,-64
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-68
	ld.w	$r12,$r22,-68
	srli.w	$r12,$r12,3
	st.w	$r12,$r22,-28
	ld.w	$r13,$r22,-68
	addi.w	$r12,$r0,-8			# 0xfffffffffffffff8
	and	$r12,$r13,$r12
	st.w	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	bltu	$r13,$r12,.L565
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-48
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-40
	bleu	$r13,$r12,.L572
.L565:
	st.w	$r0,$r22,-20
	b	.L567
.L568:
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,3
	ld.d	$r13,$r22,-64
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,3
	ld.d	$r14,$r22,-56
	add.d	$r12,$r14,$r12
	ldptr.d	$r13,$r13,0
	stptr.d	$r13,$r12,0
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L567:
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-28
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L568
	b	.L569
.L570:
	ld.wu	$r12,$r22,-24
	ld.d	$r13,$r22,-48
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-24
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
.L569:
	ld.w	$r13,$r22,-68
	ld.w	$r12,$r22,-24
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgtu	$r13,$r12,.L570
	b	.L571
.L573:
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-48
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-68
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L572:
	ldptr.w	$r12,$r22,-68
	addi.w	$r13,$r12,-1
	st.w	$r13,$r22,-68
	bnez	$r12,.L573
	nop
.L571:
	nop
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	st.d	$r5,$r22,-64
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-68
	ld.w	$r12,$r22,-68
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-40
	bltu	$r13,$r12,.L575
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-32
	bleu	$r13,$r12,.L581
.L575:
	st.w	$r0,$r22,-20
	b	.L577
.L578:
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,1
	ld.d	$r13,$r22,-64
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,1
	ld.d	$r14,$r22,-56
	add.d	$r12,$r14,$r12
	ld.h	$r13,$r13,0
	st.h	$r13,$r12,0
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L577:
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L578
	ld.w	$r12,$r22,-68
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L580
	ld.w	$r12,$r22,-68
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r12,$r12,31,0
	ld.d	$r13,$r22,-40
	add.d	$r13,$r13,$r12
	ld.w	$r12,$r22,-68
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	bstrpick.d	$r12,$r12,31,0
	ld.d	$r14,$r22,-32
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	b	.L580
.L582:
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-40
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-68
	ld.d	$r14,$r22,-32
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L581:
	ldptr.w	$r12,$r22,-68
	addi.w	$r13,$r12,-1
	st.w	$r13,$r22,-68
	bnez	$r12,.L582
	nop
.L580:
	nop
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	st.d	$r5,$r22,-64
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-68
	ld.w	$r12,$r22,-68
	srli.w	$r12,$r12,2
	st.w	$r12,$r22,-28
	ld.w	$r13,$r22,-68
	addi.w	$r12,$r0,-4			# 0xfffffffffffffffc
	and	$r12,$r13,$r12
	st.w	$r12,$r22,-24
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-48
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	bltu	$r13,$r12,.L584
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-48
	add.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-40
	bleu	$r13,$r12,.L591
.L584:
	st.w	$r0,$r22,-20
	b	.L586
.L587:
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-64
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r14,$r22,-56
	add.d	$r12,$r14,$r12
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L586:
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-28
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L587
	b	.L588
.L589:
	ld.wu	$r12,$r22,-24
	ld.d	$r13,$r22,-48
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-24
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
.L588:
	ld.w	$r13,$r22,-68
	ld.w	$r12,$r22,-24
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgtu	$r13,$r12,.L589
	b	.L590
.L592:
	ld.wu	$r12,$r22,-68
	ld.d	$r13,$r22,-48
	add.d	$r13,$r13,$r12
	ld.wu	$r12,$r22,-68
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ld.b	$r13,$r13,0
	st.b	$r13,$r12,0
.L591:
	ldptr.w	$r12,$r22,-68
	addi.w	$r13,$r12,-1
	st.w	$r13,$r22,-68
	bnez	$r12,.L592
	nop
.L590:
	nop
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-20
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	mod.w	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.wu	$r12,$r22,-20
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.wu	$r12,$r22,-20
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	blt	$r12,$r0,.L601
	ld.d	$r12,$r22,-24
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	b	.L602
.L601:
	ld.d	$r12,$r22,-24
	andi	$r12,$r12,1
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,1
	or	$r12,$r12,$r13
	movgr2fr.d	$f0,$r12
	ffint.d.l	$f0,$f0
	fadd.d	$f0,$f0,$f0
.L602:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	blt	$r12,$r0,.L605
	ld.d	$r12,$r22,-24
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	b	.L606
.L605:
	ld.d	$r12,$r22,-24
	andi	$r12,$r12,1
	ld.d	$r13,$r22,-24
	srli.d	$r13,$r13,1
	or	$r12,$r12,$r13
	movgr2fr.d	$f0,$r12
	ffint.s.l	$f0,$f0
	fadd.s	$f0,$f0,$f0
.L606:
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-20
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	mod.wu	$r13,$r13,$r12
	bne	$r12,$r0,1f
	break	7
1:
	or	$r12,$r13,$r0
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.h	$r12,$r22,-34
	st.w	$r0,$r22,-20
	b	.L610
.L613:
	ld.hu	$r12,$r22,-34
	slli.w	$r13,$r12,0
	addi.w	$r14,$r0,15			# 0xf
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	bnez	$r12,.L615
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L610:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L613
	b	.L612
.L615:
	nop
.L612:
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.h	$r12,$r22,-34
	st.w	$r0,$r22,-20
	b	.L617
.L620:
	ld.hu	$r12,$r22,-34
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	bnez	$r12,.L622
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L617:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L620
	b	.L619
.L622:
	nop
.L619:
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fld.s	$f1,$r22,-20
	la.local	$r12,.LC13
	fld.s	$f0,$r12,0
	fcmp.sge.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L628
	fld.s	$f1,$r22,-20
	la.local	$r12,.LC13
	fld.s	$f0,$r12,0
	fsub.s	$f0,$f1,$f0
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r13,$f0
	lu12i.w	$r12,32768>>12			# 0x8000
	add.d	$r12,$r13,$r12
	b	.L626
.L628:
	fld.s	$f0,$r22,-20
	ftintrz.l.s $f0,$f0
	movfr2gr.d	$r12,$f0
.L626:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.h	$r12,$r22,-34
	st.w	$r0,$r22,-24
	st.w	$r0,$r22,-20
	b	.L630
.L632:
	ld.hu	$r12,$r22,-34
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L631
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
.L631:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L630:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L632
	ld.w	$r12,$r22,-24
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.h	$r12,$r22,-34
	st.w	$r0,$r22,-24
	st.w	$r0,$r22,-20
	b	.L635
.L637:
	ld.hu	$r12,$r22,-34
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L636
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
.L636:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L635:
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	addi.w	$r12,$r0,15			# 0xf
	ble	$r13,$r12,.L637
	ldptr.w	$r12,$r22,-24
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	st.w	$r0,$r22,-20
	b	.L640
.L642:
	ld.w	$r12,$r22,-36
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L641
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-40
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
.L641:
	ld.w	$r12,$r22,-36
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
.L640:
	ld.w	$r12,$r22,-36
	slli.w	$r12,$r12,0
	bnez	$r12,.L642
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	st.w	$r0,$r22,-20
	ld.w	$r12,$r22,-36
	slli.w	$r12,$r12,0
	bnez	$r12,.L647
	or	$r12,$r0,$r0
	b	.L646
.L649:
	ld.w	$r12,$r22,-40
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L648
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-36
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
.L648:
	ld.w	$r12,$r22,-36
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-40
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
.L647:
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	bnez	$r12,.L649
	ldptr.w	$r12,$r22,-20
.L646:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r14,$r5,$r0
	or	$r13,$r6,$r0
	st.w	$r12,$r22,-36
	or	$r12,$r14,$r0
	st.w	$r12,$r22,-40
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-44
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-20
	st.w	$r0,$r22,-24
	b	.L651
.L653:
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L651:
	ld.w	$r13,$r22,-40
	ld.w	$r12,$r22,-36
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L654
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	beqz	$r12,.L654
	ldptr.w	$r12,$r22,-40
	bge	$r12,$r0,.L653
	b	.L654
.L656:
	ld.w	$r13,$r22,-36
	ld.w	$r12,$r22,-40
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L655
	ld.w	$r13,$r22,-36
	ld.w	$r12,$r22,-40
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r22,-36
	ld.w	$r13,$r22,-24
	ld.w	$r12,$r22,-20
	or	$r12,$r13,$r12
	st.w	$r12,$r22,-24
.L655:
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-40
	srli.w	$r12,$r12,1
	st.w	$r12,$r22,-40
.L654:
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	bnez	$r12,.L656
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	beqz	$r12,.L657
	ldptr.w	$r12,$r22,-36
	b	.L658
.L657:
	ldptr.w	$r12,$r22,-24
.L658:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-20
	fst.s	$f1,$r22,-24
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fcmp.slt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L667
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L662
.L667:
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-24
	fcmp.sgt.s	$fcc0,$f1,$f0
	bceqz	$fcc0,.L668
	addi.w	$r12,$r0,1			# 0x1
	b	.L662
.L668:
	or	$r12,$r0,$r0
.L662:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-24
	fst.d	$f1,$r22,-32
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fcmp.slt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L677
	addi.w	$r12,$r0,-1			# 0xffffffffffffffff
	b	.L672
.L677:
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-32
	fcmp.sgt.d	$fcc0,$f1,$f0
	bceqz	$fcc0,.L678
	addi.w	$r12,$r0,1			# 0x1
	b	.L672
.L678:
	or	$r12,$r0,$r0
.L672:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	mul.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-32
	mul.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	st.w	$r0,$r22,-24
	st.w	$r0,$r22,-28
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	bge	$r12,$r0,.L684
	ld.w	$r12,$r22,-40
	sub.w	$r12,$r0,$r12
	st.w	$r12,$r22,-40
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-24
.L684:
	st.b	$r0,$r22,-17
	b	.L685
.L688:
	ld.w	$r12,$r22,-40
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L686
	ld.w	$r13,$r22,-28
	ld.w	$r12,$r22,-36
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
.L686:
	ld.w	$r12,$r22,-36
	slli.w	$r12,$r12,1
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-40
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-40
	ld.b	$r12,$r22,-17
	bstrpick.w	$r12,$r12,7,0
	addi.w	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.b	$r12,$r22,-17
.L685:
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	beqz	$r12,.L687
	ld.bu	$r12,$r22,-17
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,31			# 0x1f
	bleu	$r13,$r12,.L688
.L687:
	ld.w	$r12,$r22,-24
	slli.w	$r12,$r12,0
	beqz	$r12,.L689
	ld.w	$r12,$r22,-28
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	b	.L690
.L689:
	ldptr.w	$r12,$r22,-28
.L690:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.w	$r0,$r22,-20
	ld.d	$r12,$r22,-40
	bge	$r12,$r0,.L693
	ld.d	$r12,$r22,-40
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-40
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-20
.L693:
	ld.d	$r12,$r22,-48
	bge	$r12,$r0,.L694
	ld.d	$r12,$r22,-48
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-48
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-20
.L694:
	ld.d	$r12,$r22,-40
	slli.w	$r12,$r12,0
	ld.d	$r13,$r22,-48
	slli.w	$r13,$r13,0
	or	$r6,$r0,$r0
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__udivmodsi4
	or	$r12,$r4,$r0
	bstrpick.d	$r12,$r12,31,0
	st.d	$r12,$r22,-32
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	beqz	$r12,.L695
	ld.d	$r12,$r22,-32
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-32
.L695:
	ld.d	$r12,$r22,-32
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r1,$r3,40
	st.d	$r22,$r3,32
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.w	$r0,$r22,-20
	ld.d	$r12,$r22,-40
	bge	$r12,$r0,.L698
	ld.d	$r12,$r22,-40
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-40
	addi.w	$r12,$r0,1			# 0x1
	st.w	$r12,$r22,-20
.L698:
	ld.d	$r12,$r22,-48
	bge	$r12,$r0,.L699
	ld.d	$r12,$r22,-48
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-48
.L699:
	ld.d	$r12,$r22,-40
	slli.w	$r12,$r12,0
	ld.d	$r13,$r22,-48
	slli.w	$r13,$r13,0
	addi.w	$r6,$r0,1			# 0x1
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__udivmodsi4
	or	$r12,$r4,$r0
	bstrpick.d	$r12,$r12,31,0
	st.d	$r12,$r22,-32
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,0
	beqz	$r12,.L700
	ld.d	$r12,$r22,-32
	sub.d	$r12,$r0,$r12
	st.d	$r12,$r22,-32
.L700:
	ld.d	$r12,$r22,-32
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,40
	.cfi_restore 1
	ld.d	$r22,$r3,32
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r14,$r5,$r0
	or	$r13,$r6,$r0
	st.h	$r12,$r22,-34
	or	$r12,$r14,$r0
	st.h	$r12,$r22,-36
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-40
	addi.w	$r12,$r0,1			# 0x1
	st.h	$r12,$r22,-18
	st.h	$r0,$r22,-20
	b	.L703
.L705:
	ld.hu	$r12,$r22,-36
	slli.w	$r12,$r12,1
	st.h	$r12,$r22,-36
	ld.hu	$r12,$r22,-18
	slli.w	$r12,$r12,1
	st.h	$r12,$r22,-18
.L703:
	ld.hu	$r13,$r22,-36
	ld.hu	$r12,$r22,-34
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bgeu	$r13,$r12,.L706
	ld.hu	$r12,$r22,-18
	slli.w	$r12,$r12,0
	beqz	$r12,.L706
	ld.h	$r12,$r22,-36
	bge	$r12,$r0,.L705
	b	.L706
.L708:
	ld.hu	$r13,$r22,-34
	ld.hu	$r12,$r22,-36
	slli.w	$r13,$r13,0
	slli.w	$r12,$r12,0
	bltu	$r13,$r12,.L707
	ld.hu	$r13,$r22,-34
	ld.hu	$r12,$r22,-36
	sub.w	$r12,$r13,$r12
	st.h	$r12,$r22,-34
	ld.hu	$r13,$r22,-20
	ld.hu	$r12,$r22,-18
	or	$r12,$r13,$r12
	st.h	$r12,$r22,-20
.L707:
	ld.hu	$r12,$r22,-18
	srli.w	$r12,$r12,1
	st.h	$r12,$r22,-18
	ld.hu	$r12,$r22,-36
	srli.w	$r12,$r12,1
	st.h	$r12,$r22,-36
.L706:
	ld.hu	$r12,$r22,-18
	slli.w	$r12,$r12,0
	bnez	$r12,.L708
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	beqz	$r12,.L709
	ld.hu	$r12,$r22,-34
	b	.L710
.L709:
	ld.hu	$r12,$r22,-20
.L710:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-52
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r22,-24
	st.d	$r0,$r22,-32
	b	.L712
.L714:
	ld.d	$r12,$r22,-48
	slli.d	$r12,$r12,1
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,1
	st.d	$r12,$r22,-24
.L712:
	ld.d	$r13,$r22,-48
	ld.d	$r12,$r22,-40
	bgeu	$r13,$r12,.L715
	ld.d	$r12,$r22,-24
	beqz	$r12,.L715
	ld.d	$r13,$r22,-48
	lu12i.w	$r12,-2147483648>>12			# 0xffffffff80000000
	lu32i.d	$r12,0>>32
	and	$r12,$r13,$r12
	beqz	$r12,.L714
	b	.L715
.L717:
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	bltu	$r13,$r12,.L716
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-48
	sub.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-24
	or	$r12,$r13,$r12
	st.d	$r12,$r22,-32
.L716:
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,1
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	srli.d	$r12,$r12,1
	st.d	$r12,$r22,-48
.L715:
	ld.d	$r12,$r22,-24
	bnez	$r12,.L717
	ld.w	$r12,$r22,-52
	slli.w	$r12,$r12,0
	beqz	$r12,.L718
	ld.d	$r12,$r22,-40
	b	.L719
.L718:
	ld.d	$r12,$r22,-32
.L719:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-60
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-32
	ld.w	$r13,$r22,-60
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L721
	st.w	$r0,$r22,-40
	ldptr.w	$r13,$r22,-32
	ld.w	$r14,$r22,-60
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	b	.L722
.L721:
	ld.w	$r12,$r22,-60
	slli.w	$r12,$r12,0
	bnez	$r12,.L723
	ld.d	$r12,$r22,-56
	b	.L725
.L723:
	ldptr.w	$r13,$r22,-32
	ld.w	$r12,$r22,-60
	sll.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ldptr.w	$r12,$r22,-28
	or	$r13,$r12,$r0
	ld.w	$r12,$r22,-60
	sll.w	$r12,$r13,$r12
	slli.w	$r15,$r12,0
	ldptr.w	$r13,$r22,-32
	ld.w	$r14,$r22,-20
	ld.w	$r12,$r22,-60
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r15,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
.L722:
	ld.d	$r12,$r22,-40
.L725:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r22,$r3,88
	.cfi_offset 22, -8
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-80
	st.d	$r5,$r22,-72
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-84
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-40
	ld.w	$r13,$r22,-84
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L727
	st.d	$r0,$r22,-64
	ld.d	$r13,$r22,-48
	ld.w	$r14,$r22,-84
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.d	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	b	.L728
.L727:
	ld.w	$r12,$r22,-84
	slli.w	$r12,$r12,0
	bnez	$r12,.L729
	ld.d	$r12,$r22,-80
	ld.d	$r13,$r22,-72
	b	.L731
.L729:
	ld.d	$r13,$r22,-48
	ld.w	$r12,$r22,-84
	sll.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r12,$r22,-40
	or	$r13,$r12,$r0
	ld.w	$r12,$r22,-84
	sll.d	$r13,$r13,$r12
	ld.d	$r14,$r22,-48
	ld.w	$r15,$r22,-20
	ld.w	$r12,$r22,-84
	sub.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r22,-56
.L728:
	ld.d	$r12,$r22,-64
	ld.d	$r13,$r22,-56
.L731:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,88
	.cfi_restore 22
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-60
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-32
	ld.w	$r13,$r22,-60
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L733
	ldptr.w	$r13,$r22,-28
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ldptr.w	$r13,$r22,-28
	ld.w	$r14,$r22,-60
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	b	.L734
.L733:
	ld.w	$r12,$r22,-60
	slli.w	$r12,$r12,0
	bnez	$r12,.L735
	ld.d	$r12,$r22,-56
	b	.L737
.L735:
	ldptr.w	$r13,$r22,-28
	ld.w	$r12,$r22,-60
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ldptr.w	$r12,$r22,-28
	or	$r14,$r12,$r0
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-60
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ldptr.w	$r13,$r22,-32
	ld.w	$r12,$r22,-60
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
.L734:
	ld.d	$r12,$r22,-40
.L737:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r22,$r3,88
	.cfi_offset 22, -8
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-80
	st.d	$r5,$r22,-72
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-84
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-40
	ld.w	$r13,$r22,-84
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L739
	ld.d	$r13,$r22,-40
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	ld.d	$r13,$r22,-40
	ld.w	$r14,$r22,-84
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	b	.L740
.L739:
	ld.w	$r12,$r22,-84
	slli.w	$r12,$r12,0
	bnez	$r12,.L741
	ld.d	$r12,$r22,-80
	ld.d	$r13,$r22,-72
	b	.L743
.L741:
	ld.d	$r13,$r22,-40
	ld.w	$r12,$r22,-84
	sra.d	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-40
	or	$r14,$r12,$r0
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-84
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	sll.d	$r13,$r14,$r12
	ld.d	$r14,$r22,-48
	ld.w	$r12,$r22,-84
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r22,-64
.L740:
	ld.d	$r12,$r22,-64
	ld.d	$r13,$r22,-56
.L743:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,88
	.cfi_restore 22
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	srli.d	$r13,$r12,56
	ld.d	$r12,$r22,-24
	srli.d	$r14,$r12,40
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	srli.d	$r14,$r12,24
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	srli.d	$r14,$r12,8
	lu12i.w	$r12,-16777216>>12			# 0xffffffffff000000
	lu32i.d	$r12,0>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,8
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff00000000>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,24
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xff0000000000>>32
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r14,$r12,40
	or	$r12,$r0,$r0
	lu32i.d	$r12,0xffff000000000000>>32
	lu52i.d	$r12,$r12,0xf0000000000000>>52
	and	$r12,$r14,$r12
	or	$r13,$r13,$r12
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,56
	or	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,24
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	lu12i.w	$r12,16711680>>12			# 0xff0000
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	slli.w	$r12,$r12,24
	slli.w	$r12,$r12,0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-36
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	slli.w	$r13,$r12,0
	lu12i.w	$r12,65536>>12			# 0x10000
	bgeu	$r13,$r12,.L749
	addi.w	$r12,$r0,16			# 0x10
	b	.L750
.L749:
	or	$r12,$r0,$r0
.L750:
	st.w	$r12,$r22,-24
	addi.w	$r13,$r0,16			# 0x10
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-24
	st.w	$r12,$r22,-28
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,3840
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bnez	$r12,.L751
	addi.w	$r12,$r0,8			# 0x8
	b	.L752
.L751:
	or	$r12,$r0,$r0
.L752:
	st.w	$r12,$r22,-24
	addi.w	$r13,$r0,8			# 0x8
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,240
	slli.w	$r12,$r12,0
	bnez	$r12,.L753
	addi.w	$r12,$r0,4			# 0x4
	b	.L754
.L753:
	or	$r12,$r0,$r0
.L754:
	st.w	$r12,$r22,-24
	addi.w	$r13,$r0,4			# 0x4
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,12
	slli.w	$r12,$r12,0
	bnez	$r12,.L755
	addi.w	$r12,$r0,2			# 0x2
	b	.L756
.L755:
	or	$r12,$r0,$r0
.L756:
	st.w	$r12,$r22,-24
	addi.w	$r13,$r0,2			# 0x2
	ld.w	$r12,$r22,-24
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,2
	slli.w	$r12,$r12,0
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	or	$r14,$r12,$r0
	addi.w	$r13,$r0,2			# 0x2
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-64
	st.d	$r5,$r22,-56
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-40
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	st.d	$r12,$r22,-24
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-24
	nor	$r12,$r0,$r12
	and	$r12,$r13,$r12
	or	$r14,$r12,$r0
	ld.d	$r13,$r22,-48
	ld.d	$r12,$r22,-24
	and	$r12,$r13,$r12
	or	$r12,$r14,$r12
	clz.d	$r12,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-24
	slli.w	$r12,$r12,0
	andi	$r12,$r12,64
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ldptr.w	$r13,$r22,-20
	ldptr.w	$r12,$r22,-28
	bge	$r13,$r12,.L761
	or	$r12,$r0,$r0
	b	.L766
.L761:
	ldptr.w	$r13,$r22,-20
	ldptr.w	$r12,$r22,-28
	ble	$r13,$r12,.L763
	addi.w	$r12,$r0,2			# 0x2
	b	.L766
.L763:
	ldptr.w	$r13,$r22,-24
	ldptr.w	$r12,$r22,-32
	bgeu	$r13,$r12,.L764
	or	$r12,$r0,$r0
	b	.L766
.L764:
	ldptr.w	$r13,$r22,-24
	ldptr.w	$r12,$r22,-32
	bleu	$r13,$r12,.L765
	addi.w	$r12,$r0,2			# 0x2
	b	.L766
.L765:
	addi.w	$r12,$r0,1			# 0x1
.L766:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r5,$r22,-32
	ld.d	$r4,$r22,-24
	bl	__cmpdi2
	or	$r12,$r4,$r0
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-64
	st.d	$r5,$r22,-56
	st.d	$r6,$r22,-80
	st.d	$r7,$r22,-72
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-40
	bge	$r13,$r12,.L770
	or	$r12,$r0,$r0
	b	.L775
.L770:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-40
	ble	$r13,$r12,.L772
	addi.w	$r12,$r0,2			# 0x2
	b	.L775
.L772:
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-48
	bgeu	$r13,$r12,.L773
	or	$r12,$r0,$r0
	b	.L775
.L773:
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-48
	bleu	$r13,$r12,.L774
	addi.w	$r12,$r0,2			# 0x2
	b	.L775
.L774:
	addi.w	$r12,$r0,1			# 0x1
.L775:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-36
	st.w	$r12,$r22,-20
	ld.w	$r13,$r22,-20
	lu12i.w	$r12,61440>>12			# 0xf000
	ori	$r12,$r12,4095
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	bnez	$r12,.L777
	addi.w	$r12,$r0,16			# 0x10
	b	.L778
.L777:
	or	$r12,$r0,$r0
.L778:
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-24
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,255
	slli.w	$r12,$r12,0
	bnez	$r12,.L779
	addi.w	$r12,$r0,8			# 0x8
	b	.L780
.L779:
	or	$r12,$r0,$r0
.L780:
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	bnez	$r12,.L781
	addi.w	$r12,$r0,4			# 0x4
	b	.L782
.L781:
	or	$r12,$r0,$r0
.L782:
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,3
	slli.w	$r12,$r12,0
	bnez	$r12,.L783
	addi.w	$r12,$r0,2			# 0x2
	b	.L784
.L783:
	or	$r12,$r0,$r0
.L784:
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-20
	ld.w	$r12,$r22,-24
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,3
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-24
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-20
	nor	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	srli.w	$r13,$r13,1
	slli.w	$r13,$r13,0
	addi.w	$r14,$r0,2			# 0x2
	sub.w	$r13,$r14,$r13
	slli.w	$r13,$r13,0
	sub.w	$r12,$r0,$r12
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-64
	st.d	$r5,$r22,-56
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-48
	sltui	$r12,$r12,1
	bstrpick.w	$r12,$r12,7,0
	slli.w	$r12,$r12,0
	sub.w	$r12,$r0,$r12
	slli.w	$r12,$r12,0
	st.d	$r12,$r22,-24
	ld.d	$r13,$r22,-40
	ld.d	$r12,$r22,-24
	and	$r12,$r13,$r12
	or	$r14,$r12,$r0
	ld.d	$r13,$r22,-48
	ld.d	$r12,$r22,-24
	nor	$r12,$r0,$r12
	and	$r12,$r13,$r12
	or	$r12,$r14,$r12
	ctz.d	$r12,$r12
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-24
	slli.w	$r12,$r12,0
	andi	$r12,$r12,64
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-48
	st.d	$r5,$r22,-40
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	bnez	$r12,.L789
	ld.d	$r12,$r22,-24
	bnez	$r12,.L790
	or	$r12,$r0,$r0
	b	.L792
.L790:
	ld.d	$r12,$r22,-24
	ctz.d	$r12,$r12
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,65
	slli.w	$r12,$r12,0
	b	.L792
.L789:
	ld.d	$r12,$r22,-32
	ctz.d	$r12,$r12
	slli.w	$r12,$r12,0
	addi.w	$r12,$r12,1
	slli.w	$r12,$r12,0
.L792:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	or	$r12,$r5,$r0
	st.w	$r12,$r22,-60
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-32
	ld.w	$r13,$r22,-60
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L794
	st.w	$r0,$r22,-36
	ldptr.w	$r13,$r22,-28
	ld.w	$r14,$r22,-60
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	b	.L795
.L794:
	ld.w	$r12,$r22,-60
	slli.w	$r12,$r12,0
	bnez	$r12,.L796
	ld.d	$r12,$r22,-56
	b	.L798
.L796:
	ldptr.w	$r13,$r22,-28
	ld.w	$r12,$r22,-60
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ldptr.w	$r13,$r22,-28
	ld.w	$r14,$r22,-20
	ld.w	$r12,$r22,-60
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.w	$r12,$r13,$r12
	slli.w	$r14,$r12,0
	ldptr.w	$r13,$r22,-32
	ld.w	$r12,$r22,-60
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r14,$r0
	or	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
.L795:
	ld.d	$r12,$r22,-40
.L798:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r22,$r3,88
	.cfi_offset 22, -8
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-80
	st.d	$r5,$r22,-72
	or	$r12,$r6,$r0
	st.w	$r12,$r22,-84
	addi.w	$r12,$r0,64			# 0x40
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-80
	ld.d	$r13,$r22,-72
	st.d	$r12,$r22,-48
	st.d	$r13,$r22,-40
	ld.w	$r13,$r22,-84
	ld.w	$r12,$r22,-20
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	beqz	$r12,.L800
	st.d	$r0,$r22,-56
	ld.d	$r13,$r22,-40
	ld.w	$r14,$r22,-84
	ld.w	$r12,$r22,-20
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	b	.L801
.L800:
	ld.w	$r12,$r22,-84
	slli.w	$r12,$r12,0
	bnez	$r12,.L802
	ld.d	$r12,$r22,-80
	ld.d	$r13,$r22,-72
	b	.L804
.L802:
	ld.d	$r13,$r22,-40
	ld.w	$r12,$r22,-84
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	ld.d	$r13,$r22,-40
	ld.w	$r14,$r22,-20
	ld.w	$r12,$r22,-84
	sub.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	sll.d	$r13,$r13,$r12
	ld.d	$r14,$r22,-48
	ld.w	$r12,$r22,-84
	srl.d	$r12,$r14,$r12
	or	$r12,$r13,$r12
	st.d	$r12,$r22,-64
.L801:
	ld.d	$r14,$r22,-64
	ld.d	$r15,$r22,-56
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
.L804:
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,88
	.cfi_restore 22
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.w	$r12,$r22,-52
	or	$r12,$r13,$r0
	st.w	$r12,$r22,-56
	addi.w	$r12,$r0,16			# 0x10
	st.w	$r12,$r22,-20
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-24
	ld.w	$r13,$r22,-52
	ld.w	$r12,$r22,-24
	and	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r22,-56
	ld.w	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ldptr.w	$r13,$r22,-40
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ldptr.w	$r13,$r22,-40
	ld.w	$r12,$r22,-24
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ld.w	$r13,$r22,-52
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r22,-56
	ld.w	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ldptr.w	$r13,$r22,-40
	ld.w	$r14,$r22,-28
	ld.w	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ld.w	$r12,$r22,-20
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ld.w	$r13,$r22,-28
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ldptr.w	$r13,$r22,-40
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ldptr.w	$r13,$r22,-40
	ld.w	$r12,$r22,-24
	and	$r12,$r12,$r13
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ld.w	$r13,$r22,-56
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r22,-52
	ld.w	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ldptr.w	$r13,$r22,-40
	ld.w	$r14,$r22,-28
	ld.w	$r12,$r22,-24
	and	$r12,$r14,$r12
	slli.w	$r14,$r12,0
	ld.w	$r12,$r22,-20
	sll.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-40
	ldptr.w	$r12,$r22,-36
	or	$r14,$r12,$r0
	ld.w	$r13,$r22,-28
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ldptr.w	$r12,$r22,-36
	or	$r15,$r12,$r0
	ld.w	$r13,$r22,-52
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r22,-56
	ld.w	$r12,$r22,-20
	srl.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	mul.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r15,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r1,$r3,56
	st.d	$r22,$r3,48
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-56
	st.d	$r5,$r22,-64
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-32
	ldptr.w	$r12,$r22,-24
	ldptr.w	$r13,$r22,-32
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__muldsi3
	or	$r12,$r4,$r0
	st.d	$r12,$r22,-40
	ldptr.w	$r12,$r22,-36
	or	$r14,$r12,$r0
	ldptr.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r22,-32
	mul.w	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ldptr.w	$r12,$r22,-24
	ldptr.w	$r15,$r22,-28
	mul.w	$r12,$r12,$r15
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-36
	ld.d	$r12,$r22,-40
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,56
	.cfi_restore 1
	ld.d	$r22,$r3,48
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-72
	st.d	$r5,$r22,-80
	addi.w	$r12,$r0,32			# 0x20
	st.w	$r12,$r22,-20
	addi.w	$r13,$r0,-1			# 0xffffffffffffffff
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-32
	ld.d	$r13,$r22,-72
	ld.d	$r12,$r22,-32
	and	$r13,$r13,$r12
	ld.d	$r14,$r22,-80
	ld.d	$r12,$r22,-32
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r13,$r22,-64
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-64
	ld.d	$r12,$r22,-32
	and	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r13,$r22,-72
	ld.w	$r12,$r22,-20
	srl.d	$r13,$r13,$r12
	ld.d	$r14,$r22,-80
	ld.d	$r12,$r22,-32
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-64
	ld.d	$r14,$r22,-40
	ld.d	$r12,$r22,-32
	and	$r14,$r14,$r12
	ld.w	$r12,$r22,-20
	sll.d	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r13,$r22,-40
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	ld.d	$r13,$r22,-64
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-64
	ld.d	$r12,$r22,-32
	and	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r13,$r22,-80
	ld.w	$r12,$r22,-20
	srl.d	$r13,$r13,$r12
	ld.d	$r14,$r22,-72
	ld.d	$r12,$r22,-32
	and	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-64
	ld.d	$r14,$r22,-40
	ld.d	$r12,$r22,-32
	and	$r14,$r14,$r12
	ld.w	$r12,$r22,-20
	sll.d	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-64
	ld.d	$r12,$r22,-56
	or	$r14,$r12,$r0
	ld.d	$r13,$r22,-40
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r13,$r12
	add.d	$r12,$r14,$r12
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-56
	or	$r15,$r12,$r0
	ld.d	$r13,$r22,-72
	ld.w	$r12,$r22,-20
	srl.d	$r13,$r13,$r12
	ld.d	$r14,$r22,-80
	ld.w	$r12,$r22,-20
	srl.d	$r12,$r14,$r12
	mul.d	$r12,$r13,$r12
	add.d	$r12,$r15,$r12
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-64
	ld.d	$r13,$r22,-56
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r1,$r3,88
	st.d	$r22,$r3,80
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-80
	st.d	$r5,$r22,-72
	st.d	$r6,$r22,-96
	st.d	$r7,$r22,-88
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-96
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-88
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-48
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__mulddi3
	or	$r12,$r4,$r0
	or	$r13,$r5,$r0
	st.d	$r12,$r22,-64
	st.d	$r13,$r22,-56
	ld.d	$r12,$r22,-56
	or	$r14,$r12,$r0
	ld.d	$r12,$r22,-24
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-48
	mul.d	$r13,$r13,$r12
	ld.d	$r12,$r22,-32
	ld.d	$r15,$r22,-40
	mul.d	$r12,$r12,$r15
	add.d	$r12,$r13,$r12
	add.d	$r12,$r14,$r12
	st.d	$r12,$r22,-56
	ld.d	$r12,$r22,-64
	ld.d	$r13,$r22,-56
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	or	$r4,$r14,$r0
	or	$r5,$r15,$r0
	ld.d	$r1,$r3,88
	.cfi_restore 1
	ld.d	$r22,$r3,80
	.cfi_restore 22
	addi.d	$r3,$r3,96
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	ld.d	$r12,$r22,-24
	sub.d	$r12,$r0,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r22,$r3,24
	.cfi_offset 22, -8
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-32
	st.d	$r5,$r22,-24
	ld.d	$r14,$r22,-32
	ld.d	$r15,$r22,-24
	or	$r16,$r0,$r0
	or	$r17,$r0,$r0
	sub.d	$r12,$r16,$r14
	or	$r18,$r12,$r0
	sltu	$r18,$r16,$r18
	bstrpick.d	$r18,$r18,31,0
	sub.d	$r13,$r17,$r15
	sub.d	$r14,$r13,$r18
	or	$r13,$r14,$r0
	or	$r16,$r12,$r0
	or	$r17,$r13,$r0
	or	$r14,$r16,$r0
	or	$r15,$r17,$r0
	or	$r12,$r14,$r0
	or	$r13,$r15,$r0
	or	$r4,$r12,$r0
	or	$r5,$r13,$r0
	ld.d	$r22,$r3,24
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-32
	ldptr.w	$r12,$r22,-28
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r22,-32
	xor	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-80
	st.d	$r5,$r22,-72
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-40
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-48
	xor	$r12,$r13,$r12
	st.d	$r12,$r22,-56
	ldptr.w	$r12,$r22,-52
	or	$r13,$r12,$r0
	ldptr.w	$r12,$r22,-56
	xor	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-36
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,16
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,8
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,4
	slli.w	$r13,$r12,0
	ld.w	$r12,$r22,-20
	xor	$r12,$r12,$r13
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	andi	$r12,$r12,15
	slli.w	$r12,$r12,0
	lu12i.w	$r13,24576>>12			# 0x6000
	ori	$r13,$r13,2454
	sra.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	srli.d	$r13,$r12,1
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r13,$r12
	ld.d	$r13,$r22,-24
	sub.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	srli.d	$r13,$r12,2
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r13,$r13,$r12
	ld.d	$r14,$r22,-24
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r14,$r12
	add.d	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	srli.d	$r13,$r12,4
	ld.d	$r12,$r22,-24
	add.d	$r13,$r13,$r12
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r13,$r12
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-24
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-24
	srli.d	$r12,$r12,32
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-28
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,-28
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-28
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,127
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,-36
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,1
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,1431654400>>12			# 0x55555000
	ori	$r12,$r12,1365
	and	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	sub.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,2
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	and	$r12,$r13,$r12
	slli.w	$r13,$r12,0
	ld.w	$r14,$r22,-20
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	and	$r12,$r14,$r12
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,4
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	or	$r13,$r12,$r0
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	and	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,63
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-64
	.cfi_def_cfa_offset 64
	st.d	$r22,$r3,56
	.cfi_offset 22, -8
	addi.d	$r22,$r3,64
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-64
	st.d	$r5,$r22,-56
	ld.d	$r20,$r22,-64
	st.d	$r20,$r22,-32
	ld.d	$r20,$r22,-56
	st.d	$r20,$r22,-24
	ld.d	$r20,$r22,-24
	slli.d	$r20,$r20,63
	ld.d	$r4,$r22,-32
	srli.d	$r12,$r4,1
	or	$r12,$r20,$r12
	ld.d	$r20,$r22,-24
	srli.d	$r13,$r20,1
	lu12i.w	$r20,1431654400>>12			# 0x55555000
	ori	$r20,$r20,1365
	bstrins.d	$r20,$r20,63,32
	or	$r20,$r20,$r0
	and	$r8,$r12,$r20
	lu12i.w	$r20,1431654400>>12			# 0x55555000
	ori	$r20,$r20,1365
	bstrins.d	$r20,$r20,63,32
	or	$r20,$r20,$r0
	and	$r9,$r13,$r20
	ld.d	$r4,$r22,-32
	ld.d	$r5,$r22,-24
	sub.d	$r12,$r4,$r8
	or	$r20,$r12,$r0
	sltu	$r20,$r4,$r20
	bstrpick.d	$r20,$r20,31,0
	sub.d	$r13,$r5,$r9
	sub.d	$r20,$r13,$r20
	or	$r13,$r20,$r0
	st.d	$r12,$r22,-32
	st.d	$r13,$r22,-24
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,62
	ld.d	$r13,$r22,-32
	srli.d	$r16,$r13,2
	or	$r16,$r12,$r16
	ld.d	$r12,$r22,-24
	srli.d	$r17,$r12,2
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r18,$r16,$r12
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r19,$r17,$r12
	ld.d	$r13,$r22,-32
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r6,$r13,$r12
	ld.d	$r13,$r22,-24
	lu12i.w	$r12,858992640>>12			# 0x33333000
	ori	$r12,$r12,819
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r7,$r13,$r12
	add.d	$r12,$r18,$r6
	or	$r16,$r12,$r0
	sltu	$r16,$r16,$r18
	bstrpick.d	$r16,$r16,31,0
	add.d	$r13,$r19,$r7
	add.d	$r16,$r16,$r13
	or	$r13,$r16,$r0
	st.d	$r12,$r22,-32
	st.d	$r13,$r22,-24
	ld.d	$r12,$r22,-24
	slli.d	$r12,$r12,60
	ld.d	$r13,$r22,-32
	srli.d	$r14,$r13,4
	or	$r14,$r12,$r14
	ld.d	$r12,$r22,-24
	srli.d	$r15,$r12,4
	ld.d	$r16,$r22,-32
	ld.d	$r17,$r22,-24
	add.d	$r12,$r14,$r16
	or	$r18,$r12,$r0
	sltu	$r18,$r18,$r14
	bstrpick.d	$r18,$r18,31,0
	add.d	$r13,$r15,$r17
	add.d	$r14,$r18,$r13
	or	$r13,$r14,$r0
	or	$r14,$r12,$r0
	or	$r15,$r13,$r0
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r14,$r12
	st.d	$r12,$r22,-32
	lu12i.w	$r12,252641280>>12			# 0xf0f0000
	ori	$r12,$r12,3855
	bstrins.d	$r12,$r12,63,32
	or	$r12,$r12,$r0
	and	$r12,$r15,$r12
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-32
	ld.d	$r13,$r22,-24
	srli.d	$r10,$r13,0
	or	$r11,$r0,$r0
	or	$r13,$r10,$r0
	add.d	$r12,$r12,$r13
	st.d	$r12,$r22,-40
	ld.d	$r12,$r22,-40
	slli.w	$r13,$r12,0
	ld.d	$r12,$r22,-40
	srli.d	$r12,$r12,32
	slli.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	srli.w	$r12,$r12,16
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-44
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	srli.w	$r12,$r12,8
	slli.w	$r12,$r12,0
	ld.w	$r13,$r22,-44
	add.w	$r12,$r13,$r12
	slli.w	$r12,$r12,0
	andi	$r12,$r12,255
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,56
	.cfi_restore 22
	addi.d	$r3,$r3,64
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	fst.d	$f0,$r22,-40
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	srli.w	$r12,$r12,31
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-28
	la.local	$r12,.LC12
	fld.d	$f0,$r12,0
	fst.d	$f0,$r22,-24
.L833:
	ld.w	$r12,$r22,-44
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L830
	fld.d	$f1,$r22,-24
	fld.d	$f0,$r22,-40
	fmul.d	$f0,$f1,$f0
	fst.d	$f0,$r22,-24
.L830:
	ld.w	$r12,$r22,-44
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,-44
	slli.w	$r12,$r12,0
	beqz	$r12,.L838
	fld.d	$f0,$r22,-40
	fmul.d	$f0,$f0,$f0
	fst.d	$f0,$r22,-40
	b	.L833
.L838:
	nop
	ld.w	$r12,$r22,-28
	slli.w	$r12,$r12,0
	beqz	$r12,.L834
	fld.d	$f0,$r22,-24
	frecip.d	$f0,$f0
	b	.L836
.L834:
	fld.d	$f0,$r22,-24
.L836:
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	fst.s	$f0,$r22,-36
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,-40
	srli.w	$r12,$r12,31
	bstrpick.w	$r12,$r12,7,0
	st.w	$r12,$r22,-24
	la.local	$r12,.LC14
	fld.s	$f0,$r12,0
	fst.s	$f0,$r22,-20
.L843:
	ld.w	$r12,$r22,-40
	andi	$r12,$r12,1
	slli.w	$r12,$r12,0
	beqz	$r12,.L840
	fld.s	$f1,$r22,-20
	fld.s	$f0,$r22,-36
	fmul.s	$f0,$f1,$f0
	fst.s	$f0,$r22,-20
.L840:
	ld.w	$r12,$r22,-40
	srli.w	$r13,$r12,31
	add.w	$r12,$r13,$r12
	srai.w	$r12,$r12,1
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,-40
	slli.w	$r12,$r12,0
	beqz	$r12,.L848
	fld.s	$f0,$r22,-36
	fmul.s	$f0,$f0,$f0
	fst.s	$f0,$r22,-36
	b	.L843
.L848:
	nop
	ld.w	$r12,$r22,-24
	slli.w	$r12,$r12,0
	beqz	$r12,.L844
	fld.s	$f0,$r22,-20
	frecip.s	$f0,$f0
	b	.L846
.L844:
	fld.s	$f0,$r22,-20
.L846:
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	ld.d	$r12,$r22,-40
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-48
	st.d	$r12,$r22,-32
	ldptr.w	$r13,$r22,-20
	ldptr.w	$r12,$r22,-28
	bgeu	$r13,$r12,.L850
	or	$r12,$r0,$r0
	b	.L855
.L850:
	ldptr.w	$r13,$r22,-20
	ldptr.w	$r12,$r22,-28
	bleu	$r13,$r12,.L852
	addi.w	$r12,$r0,2			# 0x2
	b	.L855
.L852:
	ldptr.w	$r13,$r22,-24
	ldptr.w	$r12,$r22,-32
	bgeu	$r13,$r12,.L853
	or	$r12,$r0,$r0
	b	.L855
.L853:
	ldptr.w	$r13,$r22,-24
	ldptr.w	$r12,$r22,-32
	bleu	$r13,$r12,.L854
	addi.w	$r12,$r0,2			# 0x2
	b	.L855
.L854:
	addi.w	$r12,$r0,1			# 0x1
.L855:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
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
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-24
	st.d	$r5,$r22,-32
	ld.d	$r12,$r22,-24
	ld.d	$r13,$r22,-32
	or	$r5,$r13,$r0
	or	$r4,$r12,$r0
	bl	__ucmpdi2
	or	$r12,$r4,$r0
	addi.w	$r12,$r12,-1
	slli.w	$r12,$r12,0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	addi.d	$r3,$r3,32
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
	addi.d	$r3,$r3,-80
	.cfi_def_cfa_offset 80
	st.d	$r22,$r3,72
	.cfi_offset 22, -8
	addi.d	$r22,$r3,80
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-64
	st.d	$r5,$r22,-56
	st.d	$r6,$r22,-80
	st.d	$r7,$r22,-72
	ld.d	$r12,$r22,-64
	st.d	$r12,$r22,-32
	ld.d	$r12,$r22,-56
	st.d	$r12,$r22,-24
	ld.d	$r12,$r22,-80
	st.d	$r12,$r22,-48
	ld.d	$r12,$r22,-72
	st.d	$r12,$r22,-40
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-40
	bgeu	$r13,$r12,.L859
	or	$r12,$r0,$r0
	b	.L864
.L859:
	ld.d	$r13,$r22,-24
	ld.d	$r12,$r22,-40
	bleu	$r13,$r12,.L861
	addi.w	$r12,$r0,2			# 0x2
	b	.L864
.L861:
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-48
	bgeu	$r13,$r12,.L862
	or	$r12,$r0,$r0
	b	.L864
.L862:
	ld.d	$r13,$r22,-32
	ld.d	$r12,$r22,-48
	bleu	$r13,$r12,.L863
	addi.w	$r12,$r0,2			# 0x2
	b	.L864
.L863:
	addi.w	$r12,$r0,1			# 0x1
.L864:
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,72
	.cfi_restore 22
	addi.d	$r3,$r3,80
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
.LC2:
	.word	-1
	.word	-1048577
	.align	3
.LC3:
	.word	-1
	.word	2146435071
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
	.align	2
.LC6:
	.word	1056964608
	.align	2
.LC7:
	.word	1073741824
	.align	3
.LC8:
	.word	0
	.word	1071644672
	.align	3
.LC9:
	.word	0
	.word	1073741824
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
	.align	3
.LC12:
	.word	0
	.word	1072693248
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
