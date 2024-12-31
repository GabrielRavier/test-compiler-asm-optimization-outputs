	.file	"mini-libc.c"
	.machinemode esa
	.machine "zEC12+nohtm"
.text
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	clr	%r2,%r3
	jle	.L2
	ar	%r3,%r4
	lr	%r10,%r3
	lr	%r0,%r2
	ar	%r0,%r4
	lr	%r1,%r4
	lr	%r5,%r4
	ahi	%r5,1
	j	.L3
.L4:
	lcr	%r3,%r4
	lr	%r12,%r10
	sr	%r12,%r4
	ahi	%r12,-1
	ar	%r3,%r0
	ahi	%r3,-1
	ic	%r12,0(%r1,%r12)
	stc	%r12,0(%r1,%r3)
	ahi	%r1,-1
.L3:
	brct	%r5,.L4
	j	.L5
.L2:
	cr	%r2,%r3
	jne	.L8
	j	.L5
.L7:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	j	.L6
.L8:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L6:
	brct	%r5,.L7
.L5:
	lm	%r10,%r12,40(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,255
	nr	%r4,%r1
	lr	%r0,%r5
	ahi	%r0,1
	j	.L11
.L13:
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L11:
	brct	%r0,.L16
	j	.L12
.L16:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r4,%r1
	jne	.L13
.L12:
	ltr	%r5,%r5
	je	.L15
	ahi	%r2,1
	j	.L14
.L15:
	lhi	%r2,0
.L14:
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	8
.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,255
	nr	%r3,%r1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L19
.L21:
	ahi	%r2,1
	ahi	%r4,-1
.L19:
	brct	%r1,.L24
	j	.L20
.L24:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r3,%r5
	jne	.L21
.L20:
	ltr	%r4,%r4
	jne	.L22
	lhi	%r2,0
.L22:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	8
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r4
	ahi	%r1,1
	j	.L27
.L29:
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L27:
	brct	%r1,.L32
	j	.L28
.L32:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	je	.L29
.L28:
	ltr	%r4,%r4
	je	.L31
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	j	.L30
.L31:
	lhi	%r2,0
.L30:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L35
.L36:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L35:
	brct	%r5,.L36
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	8
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,255
	nr	%r3,%r1
	lr	%r1,%r4
	ahi	%r1,-1
	ahi	%r4,1
	j	.L39
.L41:
	lhi	%r0,0
	ic	%r0,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	cr	%r3,%r0
	jne	.L42
	ar	%r2,%r1
	j	.L40
.L42:
	lr	%r1,%r5
.L39:
	brct	%r4,.L41
	lhi	%r2,0
.L40:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	8
.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ar	%r4,%r2
	lr	%r5,%r2
	lr	%r1,%r4
	sr	%r1,%r2
	ahi	%r1,1
	j	.L45
.L46:
	stc	%r3,0(%r5)
	ahi	%r5,1
.L45:
	brct	%r1,.L46
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L49
.L50:
	ahi	%r3,1
	ahi	%r2,1
.L49:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L50
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,255
	nr	%r3,%r1
	j	.L53
.L55:
	ahi	%r2,1
.L53:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L54
	cr	%r3,%r1
	jne	.L55
.L54:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	8
.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
.L59:
	lr	%r2,%r1
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	je	.L58
	ahi	%r1,1
	lhi	%r2,-4096
	lhi	%r4,0
	ic	%r4,4095(%r1,%r2)
	lr	%r2,%r4
	ltr	%r2,%r2
	jne	.L59
.L58:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	8
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L64
.L66:
	ahi	%r2,1
	ahi	%r3,1
.L64:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L65
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L66
.L65:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	8
.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	lr	%r1,%r2
	j	.L69
.L70:
	ahi	%r1,1
.L69:
	lhi	%r2,0
	ic	%r2,0(%r1)
	ltr	%r2,%r2
	jne	.L70
	sr	%r1,%r3
	lr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	8
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r4,%r4
	je	.L77
	ahi	%r4,-1
	ar	%r4,%r2
	lr	%r1,%r4
	sr	%r1,%r2
	ahi	%r1,1
	j	.L74
.L76:
	ahi	%r2,1
	ahi	%r3,1
.L74:
	lhi	%r5,0
	ic	%r5,0(%r2)
	ltr	%r5,%r5
	je	.L75
	lhi	%r5,0
	ic	%r5,0(%r3)
	ltr	%r5,%r5
	je	.L75
	brct	%r1,.L78
	j	.L75
.L78:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	je	.L76
.L75:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	j	.L73
.L77:
	lhi	%r2,0
.L73:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r2
	lr	%r1,%r4
	srl	%r1,1
	ahi	%r1,1
	ltr	%r4,%r4
	jhe	.L81
	lhi	%r1,1
	j	.L81
.L82:
	mvc	0(1,%r3),1(%r5)
	mvc	1(1,%r3),0(%r5)
	ahi	%r3,2
	ahi	%r5,2
.L81:
	lr	%r0,%r2
	ar	%r0,%r4
	sr	%r0,%r5
	brct	%r1,.L82
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	8
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,25
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	8
.globl isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,127
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	8
.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	chi	%r2,32
	je	.L91
	chi	%r2,9
	jne	.L92
	lhi	%r2,1
	j	.L90
.L91:
	lhi	%r2,1
	j	.L90
.L92:
	lhi	%r2,0
.L90:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L96
	chi	%r2,127
	jne	.L97
	lhi	%r2,1
	j	.L95
.L96:
	lhi	%r2,1
	j	.L95
.L97:
	lhi	%r2,0
.L95:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	8
.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-48
	lhi	%r1,9
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	8
.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-33
	lhi	%r1,93
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	8
.globl islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-97
	lhi	%r1,25
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	8
.globl isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-32
	lhi	%r1,94
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	8
.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	chi	%r2,32
	je	.L109
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	jh	.L110
	lhi	%r2,1
	j	.L108
.L109:
	lhi	%r2,1
	j	.L108
.L110:
	lhi	%r2,0
.L108:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	8
.globl isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-65
	lhi	%r1,25
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L120
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L116
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L117
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L118
	a	%r2,.L121-.L120(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	jh	.L119
	lhi	%r2,1
	j	.L115
.L116:
	lhi	%r2,1
	j	.L115
.L117:
	lhi	%r2,1
	j	.L115
.L118:
	lhi	%r2,1
	j	.L115
.L119:
	lhi	%r2,0
.L115:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L120:
.L121:
	.long	-65529
	.align	2
.text
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-48
	lhi	%r1,9
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	8
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L132
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,254
	clr	%r2,%r1
	jh	.L125
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L126
.L125:
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L127
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L133-.L132(%r5)
	jle	.L128
	l	%r1,.L134-.L132(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L129
	l	%r1,.L135-.L132(%r5)
	ar	%r1,%r2
	cl	%r1,.L136-.L132(%r5)
	jh	.L130
	n	%r2,.L137-.L132(%r5)
	c	%r2,.L137-.L132(%r5)
	je	.L131
	lhi	%r2,1
	j	.L126
.L127:
	lhi	%r2,1
	j	.L126
.L128:
	lhi	%r2,1
	j	.L126
.L129:
	lhi	%r2,1
	j	.L126
.L130:
	lhi	%r2,0
	j	.L126
.L131:
	lhi	%r2,0
.L126:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L132:
.L137:
	.long	65534
.L136:
	.long	1048579
.L135:
	.long	-65532
.L134:
	.long	-57344
.L133:
	.long	47061
	.align	2
.text
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L140
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	jh	.L141
	lhi	%r2,1
	j	.L139
.L140:
	lhi	%r2,1
	j	.L139
.L141:
	lhi	%r2,0
.L139:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	8
.globl toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,127
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.align	8
.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L153
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L146
	cdbr	%f2,%f2
	jo	.L149
	kdbr	%f0,%f2
	jnh	.L152
	sdbr	%f0,%f2
	j	.L146
.L149:
	ldr	%f0,%f2
	j	.L146
.L152:
	ld	%f0,.L154-.L153(%r5)
.L146:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L153:
.L154:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L163
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L156
	cebr	%f2,%f2
	jo	.L159
	kebr	%f0,%f2
	jnh	.L162
	sebr	%f0,%f2
	j	.L156
.L159:
	ler	%f0,%f2
	j	.L156
.L162:
	le	%f0,.L164-.L163(%r5)
.L156:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L163:
.L164:
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	8
.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L169
	cdbr	%f2,%f2
	jo	.L166
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L167
	tcdb	%f0,1365
	je	.L166
	ldr	%f0,%f2
	j	.L166
.L167:
	kdbr	%f0,%f2
	jnl	.L166
	ldr	%f0,%f2
	j	.L166
.L169:
	ldr	%f0,%f2
.L166:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L180
	cebr	%f2,%f2
	jo	.L177
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L178
	tceb	%f0,1365
	je	.L177
	ler	%f0,%f2
	j	.L177
.L178:
	kebr	%f0,%f2
	jnl	.L177
	ler	%f0,%f2
	j	.L177
.L180:
	ler	%f0,%f2
.L177:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	jno	.L188
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	j	.L187
.L188:
	cxbr	%f1,%f1
	jno	.L190
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L187
.L190:
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f1,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L191
	tcxb	%f0,1365
	je	.L192
	lxr	%f0,%f1
.L192:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L187
.L191:
	kxbr	%f0,%f1
	jnl	.L193
	lxr	%f0,%f1
.L193:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L187:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L204
	cdbr	%f2,%f2
	jo	.L201
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L202
	tcdb	%f0,1365
	je	.L206
	j	.L201
.L202:
	kdbr	%f0,%f2
	jnl	.L209
	j	.L201
.L204:
	ldr	%f0,%f2
	j	.L201
.L206:
	ldr	%f0,%f2
	j	.L201
.L209:
	ldr	%f0,%f2
.L201:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	8
.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L215
	cebr	%f2,%f2
	jo	.L212
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L213
	tceb	%f0,1365
	je	.L217
	j	.L212
.L213:
	kebr	%f0,%f2
	jnl	.L220
	j	.L212
.L215:
	ler	%f0,%f2
	j	.L212
.L217:
	ler	%f0,%f2
	j	.L212
.L220:
	ler	%f0,%f2
.L212:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	8
.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	cxbr	%f1,%f1
	jno	.L223
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L222
.L223:
	cxbr	%f0,%f0
	jno	.L225
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	j	.L222
.L225:
	tcxb	%f1,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L226
	tcxb	%f1,1365
	je	.L227
	lxr	%f0,%f1
.L227:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L222
.L226:
	kxbr	%f1,%f0
	jnl	.L228
	lxr	%f0,%f1
.L228:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L222:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,s.0
	j	.L236
.L237:
	lhi	%r3,63
	nr	%r3,%r2
	larl	%r4,digits
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L236:
	ltr	%r2,%r2
	jne	.L237
	mvi	0(%r1),0
	larl	%r2,s.0
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	8
.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-1
	lr	%r5,%r2
	lhi	%r4,0
	larl	%r1,seed
	stm	%r4,%r5,0(%r1)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	8
.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	stm	%r8,%r13,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,seed
	lm	%r2,%r3,0(%r1)
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,4
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,6
	slr	%r5,%r13
	slbr	%r4,%r12
	lr	%r12,%r4
	lr	%r13,%r5
	sldl	%r12,7
	alr	%r5,%r13
	alcr	%r4,%r12
	sldl	%r4,2
	lr	%r12,%r4
	lr	%r13,%r5
	alr	%r13,%r3
	alcr	%r12,%r2
	lr	%r8,%r12
	lr	%r9,%r13
	sldl	%r8,6
	slr	%r9,%r13
	slbr	%r8,%r12
	lr	%r12,%r8
	lr	%r13,%r9
	sldl	%r12,7
	alr	%r13,%r3
	alcr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r8,%r4
	lr	%r9,%r5
	sldl	%r8,3
	slr	%r9,%r5
	slbr	%r8,%r4
	lr	%r12,%r8
	lr	%r13,%r9
	sldl	%r12,3
	slr	%r13,%r9
	slbr	%r12,%r8
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,6
	slr	%r5,%r13
	slbr	%r4,%r12
	sldl	%r4,2
	lr	%r12,%r4
	lr	%r13,%r5
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,7
	slr	%r5,%r3
	slbr	%r4,%r2
	sldl	%r4,2
	lr	%r12,%r4
	lr	%r13,%r5
	alr	%r13,%r3
	alcr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	slr	%r5,%r3
	slbr	%r4,%r2
	sldl	%r4,2
	lr	%r12,%r4
	lr	%r13,%r5
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	alr	%r3,%r5
	alcr	%r2,%r4
	lhi	%r4,0
	lhi	%r5,1
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	stm	%r2,%r3,0(%r1)
	srdl	%r2,33
	lr	%r2,%r3
	lm	%r8,%r13,32(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	8
.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r3,%r3
	jne	.L244
	lhi	%r1,0
	st	%r1,4(%r2)
	st	%r1,0(%r2)
	j	.L243
.L244:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	je	.L243
	l	%r1,0(%r2)
	st	%r2,4(%r1)
.L243:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	8
.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	icm	%r1,15,0(%r2)
	je	.L248
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L248:
	icm	%r1,15,4(%r2)
	je	.L247
	l	%r1,4(%r2)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L247:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	8
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	st	%r3,96(%r11)
	lr	%r8,%r4
	lr	%r12,%r5
	lr	%r13,%r6
	l	%r10,0(%r4)
	lr	%r6,%r3
	lhi	%r9,0
	lr	%r7,%r10
	ahi	%r7,1
	j	.L252
.L255:
	lr	%r3,%r6
	l	%r2,100(%r11)
	basr	%r14,%r13
	ar	%r6,%r12
	ltr	%r2,%r2
	jne	.L253
	msr	%r9,%r12
	l	%r2,96(%r11)
	ar	%r2,%r9
	j	.L254
.L253:
	ahi	%r9,1
.L252:
	brct	%r7,.L255
	lr	%r1,%r10
	ahi	%r1,1
	st	%r1,0(%r8)
	msr	%r10,%r12
	l	%r2,96(%r11)
	ar	%r2,%r10
	lr	%r4,%r12
	l	%r3,100(%r11)
	brasl	%r14,memcpy
.L254:
	lm	%r6,%r15,128(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	8
.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	st	%r2,100(%r11)
	lr	%r12,%r3
	lr	%r9,%r5
	l	%r13,0(%r4)
	lr	%r7,%r3
	lhi	%r10,0
	lr	%r8,%r13
	ahi	%r8,1
	j	.L258
.L261:
	lr	%r3,%r7
	l	%r2,100(%r11)
	basr	%r14,%r6
	ar	%r7,%r9
	ltr	%r2,%r2
	jne	.L259
	msr	%r10,%r9
	lr	%r2,%r12
	ar	%r2,%r10
	j	.L260
.L259:
	ahi	%r10,1
.L258:
	brct	%r8,.L261
	lhi	%r2,0
.L260:
	lm	%r7,%r15,132(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	8
.globl abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lpr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	8
.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	j	.L266
.L267:
	ahi	%r12,1
.L266:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L267
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L273
	chi	%r1,45
	jne	.L274
	lhi	%r3,1
	j	.L268
.L273:
	lhi	%r3,0
.L268:
	ahi	%r12,1
	j	.L269
.L274:
	lhi	%r3,0
.L269:
	lhi	%r2,0
	j	.L270
.L271:
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	sr	%r2,%r1
	ahi	%r12,1
.L270:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jle	.L271
	ltr	%r3,%r3
	jne	.L272
	lcr	%r2,%r2
.L272:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
.globl atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	j	.L278
.L279:
	ahi	%r12,1
.L278:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L279
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L285
	chi	%r1,45
	jne	.L286
	lhi	%r3,1
	j	.L280
.L285:
	lhi	%r3,0
.L280:
	ahi	%r12,1
	j	.L281
.L286:
	lhi	%r3,0
.L281:
	lhi	%r2,0
	j	.L282
.L283:
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	sr	%r2,%r1
	ahi	%r12,1
.L282:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jle	.L283
	ltr	%r3,%r3
	jne	.L284
	lcr	%r2,%r2
.L284:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	j	.L290
.L291:
	ahi	%r12,1
.L290:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L291
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L297
	chi	%r1,45
	jne	.L298
	lhi	%r1,1
	j	.L292
.L297:
	lhi	%r1,0
.L292:
	ahi	%r12,1
	j	.L293
.L298:
	lhi	%r1,0
.L293:
	lhi	%r2,0
	lhi	%r3,0
	j	.L294
.L295:
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,2
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,1
	lhi	%r0,0
	ic	%r0,0(%r12)
	ahi	%r0,-48
	lr	%r4,%r0
	lhi	%r5,0
	srda	%r4,32
	slr	%r3,%r5
	slbr	%r2,%r4
	ahi	%r12,1
.L294:
	lhi	%r4,0
	ic	%r4,0(%r12)
	ahi	%r4,-48
	lhi	%r5,9
	clr	%r4,%r5
	jle	.L295
	ltr	%r1,%r1
	jne	.L296
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L296
	ahi	%r2,-1
.L296:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	8
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r12,%r4
	lr	%r9,%r5
	j	.L303
.L307:
	lr	%r10,%r12
	srl	%r10,1
	msr	%r10,%r9
	ar	%r10,%r8
	lr	%r3,%r10
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L304
	srl	%r12,1
	j	.L303
.L304:
	ltr	%r2,%r2
	jle	.L308
	ar	%r10,%r9
	lr	%r8,%r10
	lr	%r1,%r12
	srl	%r1,1
	ahi	%r12,-1
	sr	%r12,%r1
.L303:
	ltr	%r12,%r12
	jne	.L307
	lhi	%r2,0
	j	.L306
.L308:
	lr	%r2,%r10
.L306:
	lm	%r7,%r15,124(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r7,%r2
	lr	%r8,%r5
	lr	%r10,%r4
	lr	%r9,%r3
	j	.L311
.L314:
	lr	%r12,%r10
	sra	%r12,1
	msr	%r12,%r8
	ar	%r12,%r9
	l	%r4,192(%r11)
	lr	%r3,%r12
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L315
	ltr	%r2,%r2
	jle	.L313
	ar	%r12,%r8
	lr	%r9,%r12
	ahi	%r10,-1
.L313:
	sra	%r10,1
.L311:
	ltr	%r10,%r10
	jne	.L314
	lhi	%r2,0
	j	.L312
.L315:
	lr	%r2,%r12
.L312:
	lm	%r7,%r15,124(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r2)
	st	%r0,4(%r2)
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.align	8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	jhe	.L320
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L320
	ahi	%r2,-1
.L320:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r8,%r3
	lr	%r9,%r4
	lr	%r7,%r6
	lr	%r6,%r5
	lr	%r4,%r5
	lr	%r5,%r7
	lr	%r2,%r3
	lr	%r3,%r9
	brasl	%r14,__divdi3
	stm	%r2,%r3,96(%r11)
	lr	%r4,%r6
	lr	%r5,%r7
	lr	%r2,%r8
	lr	%r3,%r9
	brasl	%r14,__moddi3
	lm	%r4,%r5,96(%r11)
	stm	%r4,%r5,0(%r12)
	stm	%r2,%r3,8(%r12)
	lr	%r2,%r12
	lm	%r6,%r15,128(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.align	8
.globl labs
	.type	labs, @function
labs:
.LFB53:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lpr	%r2,%r2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE53:
	.size	labs, .-labs
	.align	8
.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r2)
	st	%r0,4(%r2)
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	8
.globl llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	jhe	.L331
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L331
	ahi	%r2,-1
.L331:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r8,%r3
	lr	%r9,%r4
	lr	%r7,%r6
	lr	%r6,%r5
	lr	%r4,%r5
	lr	%r5,%r7
	lr	%r2,%r3
	lr	%r3,%r9
	brasl	%r14,__divdi3
	stm	%r2,%r3,96(%r11)
	lr	%r4,%r6
	lr	%r5,%r7
	lr	%r2,%r8
	lr	%r3,%r9
	brasl	%r14,__moddi3
	lm	%r4,%r5,96(%r11)
	stm	%r4,%r5,0(%r12)
	stm	%r2,%r3,8(%r12)
	lr	%r2,%r12
	lm	%r6,%r15,128(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L338
.L340:
	ahi	%r2,4
.L338:
	icm	%r1,15,0(%r2)
	je	.L339
	c	%r3,0(%r2)
	jne	.L340
.L339:
	icm	%r1,15,0(%r2)
	jne	.L341
	lhi	%r2,0
.L341:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L345
.L347:
	ahi	%r2,4
	ahi	%r3,4
.L345:
	clc	0(4,%r3),0(%r2)
	jne	.L346
	icm	%r1,15,0(%r2)
	je	.L346
	icm	%r1,15,0(%r3)
	jne	.L347
.L346:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L350
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L349
	lhi	%r1,0
.L349:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L348
.L350:
	lhi	%r2,-1
.L348:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
.L353:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	lr	%r4,%r2
	ahi	%r4,-4
	la	%r4,0(%r1,%r4)
	icm	%r4,15,0(%r4)
	jne	.L353
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	8
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	j	.L357
.L358:
	ahi	%r2,4
.L357:
	icm	%r1,15,0(%r2)
	jne	.L358
	sr	%r2,%r3
	sra	%r2,2
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r4
	ahi	%r1,1
	j	.L361
.L363:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L361:
	brct	%r1,.L368
	j	.L362
.L368:
	clc	0(4,%r3),0(%r2)
	jne	.L362
	icm	%r5,15,0(%r2)
	je	.L362
	icm	%r5,15,0(%r3)
	jne	.L363
.L362:
	ltr	%r4,%r4
	je	.L366
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L367
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L365
	lhi	%r1,0
.L365:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L364
.L366:
	lhi	%r2,0
	j	.L364
.L367:
	lhi	%r2,-1
.L364:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r4
	ahi	%r1,1
	j	.L371
.L373:
	ahi	%r4,-1
	ahi	%r2,4
.L371:
	brct	%r1,.L376
	j	.L372
.L376:
	c	%r3,0(%r2)
	jne	.L373
.L372:
	ltr	%r4,%r4
	jne	.L374
	lhi	%r2,0
.L374:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r4
	ahi	%r1,1
	j	.L379
.L381:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L379:
	brct	%r1,.L386
	j	.L380
.L386:
	clc	0(4,%r3),0(%r2)
	je	.L381
.L380:
	ltr	%r4,%r4
	je	.L384
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L385
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L383
	lhi	%r1,0
.L383:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L382
.L384:
	lhi	%r2,0
	j	.L382
.L385:
	lhi	%r2,-1
.L382:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L389
.L390:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L389:
	ahi	%r4,-1
	brct	%r5,.L390
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cr	%r2,%r3
	je	.L393
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jhe	.L398
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L395
.L396:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L395:
	brct	%r1,.L396
	j	.L393
.L397:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	j	.L394
.L398:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L394:
	ahi	%r4,-1
	brct	%r5,.L397
.L393:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r2
	lr	%r1,%r4
	ahi	%r1,1
	j	.L401
.L402:
	st	%r3,0(%r5)
	ahi	%r5,4
.L401:
	ahi	%r4,-1
	brct	%r1,.L402
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	clr	%r2,%r3
	jhe	.L405
	ar	%r2,%r4
	lr	%r12,%r2
	ar	%r3,%r4
	lr	%r0,%r3
	lr	%r1,%r4
	lr	%r3,%r4
	ahi	%r3,1
	j	.L406
.L407:
	lcr	%r2,%r4
	lr	%r5,%r12
	sr	%r5,%r4
	ahi	%r5,-1
	ar	%r2,%r0
	ahi	%r2,-1
	ic	%r5,0(%r1,%r5)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L406:
	brct	%r3,.L407
	j	.L404
.L405:
	cr	%r2,%r3
	jne	.L411
	j	.L404
.L410:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	j	.L409
.L411:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L409:
	brct	%r5,.L410
.L404:
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r0,%r2
	lr	%r1,%r3
	sldl	%r0,0(%r4)
	lcr	%r4,%r4
	srdl	%r2,0(%r4)
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r12,%r4
	or	%r12,%r0
	lr	%r2,%r12
	lr	%r4,%r5
	or	%r4,%r1
	lr	%r3,%r4
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	8
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,0(%r4)
	lcr	%r4,%r4
	sldl	%r2,0(%r4)
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r12,%r4
	or	%r12,%r0
	lr	%r2,%r12
	lr	%r4,%r5
	or	%r4,%r1
	lr	%r3,%r4
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	8
.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	rll	%r2,%r2,0(%r3)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	8
.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB72:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	rll	%r2,%r2,0(%r3)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	8
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L426
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lr	%r4,%r1
	lhi	%r1,16
	sr	%r1,%r3
	srl	%r2,0(%r1)
	or	%r2,%r4
	n	%r2,.L427-.L426(%r5)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L426:
.L427:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L429
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lr	%r4,%r1
	lhi	%r1,16
	sr	%r1,%r3
	sll	%r2,0(%r1)
	or	%r2,%r4
	n	%r2,.L430-.L429(%r5)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L429:
.L430:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	8
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lr	%r4,%r1
	lhi	%r1,8
	sr	%r1,%r3
	srl	%r2,0(%r1)
	or	%r2,%r4
	lhi	%r1,255
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	8
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lr	%r4,%r1
	lhi	%r1,8
	sr	%r1,%r3
	sll	%r2,0(%r1)
	or	%r2,%r4
	lhi	%r1,255
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L436
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L437-.L436(%r5)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L436:
.L437:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L439
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L440-.L439(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L441-.L439(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L439:
.L441:
	.long	65280
.L440:
	.long	16711680
	.align	2
.text
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	stm	%r8,%r13,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L443
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	l	%r1,.L444-.L443(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,56
	l	%r12,.L445-.L443(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	lhi	%r1,0
	srdl	%r0,40
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r9,%r1
	l	%r1,.L446-.L443(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,24
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r12,255
	nr	%r12,%r2
	lr	%r4,%r12
	lhi	%r5,0
	srdl	%r4,8
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r9,%r1
	lhi	%r4,0
	l	%r1,.L444-.L443(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,8
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	l	%r12,.L445-.L443(%r13)
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,24
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r9,%r1
	lhi	%r4,0
	l	%r1,.L446-.L443(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,40
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	lhi	%r12,255
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,56
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r2,%r12
	or	%r1,%r5
	lr	%r3,%r1
	lm	%r8,%r13,32(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L443:
.L446:
	.long	65280
.L445:
	.long	16711680
.L444:
	.long	-16777216
	.align	2
.text
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	8
.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lhi	%r3,33
	j	.L448
.L451:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	je	.L449
	ahi	%r1,1
	lr	%r2,%r1
	j	.L450
.L449:
	ahi	%r1,1
.L448:
	brct	%r3,.L451
	lhi	%r2,0
.L450:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r1,%r2
	je	.L457
	lhi	%r2,1
	j	.L455
.L456:
	sra	%r1,1
	ahi	%r2,1
.L455:
	tml	%r1,1
	je	.L456
	j	.L454
.L457:
	lhi	%r2,0
.L454:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L466
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L467-.L466(%r5)
	jl	.L462
	keb	%f0,.L468-.L466(%r5)
	jnh	.L465
	lhi	%r2,1
	j	.L460
.L462:
	lhi	%r2,1
	j	.L460
.L465:
	lhi	%r2,0
.L460:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L466:
.L468:
	.long	2139095039
.L467:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L476
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L477-.L476(%r5)
	jl	.L472
	kdb	%f0,.L478-.L476(%r5)
	jnh	.L475
	lhi	%r2,1
	j	.L470
.L472:
	lhi	%r2,1
	j	.L470
.L475:
	lhi	%r2,0
.L470:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L476:
.L478:
	.long	2146435071
	.long	-1
.L477:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L486
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L487-.L486(%r5)
	ld	%f3,.L487-.L486+8(%r5)
	kxbr	%f0,%f1
	jl	.L482
	ld	%f1,.L488-.L486(%r5)
	ld	%f3,.L488-.L486+8(%r5)
	kxbr	%f0,%f1
	jnh	.L485
	lhi	%r2,1
	j	.L480
.L482:
	lhi	%r2,1
	j	.L480
.L485:
	lhi	%r2,0
.L480:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L486:
.L488:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L487:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cxfbr	%f0,%r3
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L497
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L492
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	je	.L492
	ltr	%r2,%r2
	jhe	.L496
	le	%f2,.L498-.L497(%r5)
	j	.L495
.L496:
	le	%f2,.L499-.L497(%r5)
.L495:
	tml	%r2,1
	je	.L494
	meebr	%f0,%f2
.L494:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	je	.L492
	meebr	%f2,%f2
	j	.L495
.L492:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L497:
.L499:
	.long	1073741824
.L498:
	.long	1056964608
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	8
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L506
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L501
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	je	.L501
	ltr	%r2,%r2
	jhe	.L505
	ld	%f2,.L507-.L506(%r5)
	j	.L504
.L505:
	ld	%f2,.L508-.L506(%r5)
.L504:
	tml	%r2,1
	je	.L503
	mdbr	%f0,%f2
.L503:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	je	.L501
	mdbr	%f2,%f2
	j	.L504
.L501:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L506:
.L508:
	.long	1073741824
	.long	0
.L507:
	.long	1071644672
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L515
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	cxbr	%f0,%f0
	jo	.L510
	lxr	%f1,%f0
	axbr	%f1,%f0
	cxbr	%f0,%f1
	je	.L510
	ltr	%r4,%r4
	jhe	.L514
	ld	%f1,.L516-.L515(%r5)
	ld	%f3,.L516-.L515+8(%r5)
	j	.L513
.L514:
	ld	%f1,.L517-.L515(%r5)
	ld	%f3,.L517-.L515+8(%r5)
.L513:
	tml	%r4,1
	je	.L512
	mxbr	%f0,%f1
.L512:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	je	.L510
	mxbr	%f1,%f1
	j	.L513
.L510:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L515:
.L517:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L516:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	8
.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L519
.L520:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L519:
	brct	%r5,.L520
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,0
	lhi	%r1,0
	lr	%r5,%r2
	srst	%r1,%r5
	jo	.-4
	lr	%r5,%r4
	ahi	%r5,1
	j	.L523
.L525:
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L523:
	brct	%r5,.L527
	j	.L524
.L527:
	ic	%r0,0(%r3)
	stc	%r0,0(%r1)
	tml	%r0,255
	jne	.L525
.L524:
	ltr	%r4,%r4
	jne	.L526
	mvi	0(%r1),0
.L526:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lhi	%r2,0
	lr	%r1,%r3
	ahi	%r1,1
	j	.L530
.L532:
	ahi	%r2,1
.L530:
	brct	%r1,.L533
	j	.L531
.L533:
	lhi	%r5,0
	ic	%r5,0(%r2,%r4)
	ltr	%r5,%r5
	jne	.L532
.L531:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L536
.L538:
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	je	.L537
.L539:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L538
	ahi	%r2,1
.L536:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L541
	lr	%r1,%r3
	j	.L539
.L541:
	lhi	%r2,0
.L537:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	8
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lhi	%r2,0
.L545:
	lr	%r4,%r1
	lhi	%r5,0
	ic	%r5,0(%r1)
	cr	%r3,%r5
	jne	.L544
	lr	%r2,%r1
.L544:
	ahi	%r1,1
	lhi	%r4,-4096
	lhi	%r5,0
	ic	%r5,4095(%r1,%r4)
	lr	%r4,%r5
	ltr	%r4,%r4
	jne	.L545
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	8
.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	stm	%r8,%r15,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r10,%r3
	lhi	%r0,0
	lhi	%r9,0
	lr	%r1,%r3
	srst	%r9,%r1
	jo	.-4
	slr	%r9,%r3
	jhe	.L550
	lhi	%r8,0
	ic	%r8,0(%r3)
	lr	%r12,%r2
	j	.L551
.L552:
	lr	%r4,%r9
	lr	%r3,%r10
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L554
	ahi	%r12,1
.L551:
	lr	%r3,%r8
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	jne	.L552
	j	.L550
.L554:
	lr	%r2,%r12
.L550:
	lm	%r8,%r15,128(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L569
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L570-.L569(%r5)
	jnl	.L557
	kdb	%f2,.L570-.L569(%r5)
	jh	.L559
.L557:
	kdb	%f0,.L570-.L569(%r5)
	jnh	.L560
	kdb	%f2,.L570-.L569(%r5)
	jnl	.L560
.L559:
	lcdbr	%f0,%f0
.L560:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L569:
.L570:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	stm	%r8,%r15,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r9,%r4
	lr	%r10,%r5
	lr	%r8,%r3
	sr	%r8,%r5
	ar	%r8,%r2
	ltr	%r5,%r5
	je	.L576
	clr	%r5,%r3
	jh	.L577
	j	.L573
.L575:
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r9)
	cr	%r2,%r1
	jne	.L574
	lr	%r2,%r12
	ahi	%r2,1
	lr	%r4,%r10
	ahi	%r4,-1
	lr	%r3,%r9
	ahi	%r3,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	je	.L578
.L574:
	ahi	%r12,1
.L573:
	clr	%r12,%r8
	jle	.L575
	lhi	%r2,0
	j	.L572
.L576:
	j	.L572
.L577:
	lhi	%r2,0
	j	.L572
.L578:
	lr	%r2,%r12
.L572:
	lm	%r8,%r15,128(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r4
	brasl	%r14,memcpy
	ar	%r2,%r12
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L602
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L603-.L602(%r5)
	jnl	.L599
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L583
.L599:
	lhi	%r3,0
.L583:
	kdb	%f0,.L604-.L602(%r5)
	jhe	.L594
	j	.L600
.L587:
	ahi	%r1,1
	mdb	%f0,.L605-.L602(%r5)
	j	.L585
.L594:
	lhi	%r1,0
.L585:
	kdb	%f0,.L604-.L602(%r5)
	jhe	.L587
	j	.L588
.L600:
	kdb	%f0,.L605-.L602(%r5)
	jnl	.L601
	cdb	%f0,.L603-.L602(%r5)
	jne	.L596
	lhi	%r1,0
	j	.L588
.L591:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L590
.L596:
	lhi	%r1,0
.L590:
	kdb	%f0,.L605-.L602(%r5)
	jl	.L591
	j	.L588
.L601:
	lhi	%r1,0
.L588:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	je	.L592
	lcdbr	%f0,%f0
.L592:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L602:
.L605:
	.long	1071644672
	.long	0
.L604:
	.long	1072693248
	.long	0
.L603:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r0,%r2
	lr	%r1,%r3
	lhi	%r2,0
	lhi	%r3,0
	j	.L607
.L610:
	lhi	%r12,0
	lhi	%r10,1
	nr	%r10,%r1
	lr	%r13,%r10
	lr	%r10,%r12
	or	%r10,%r13
	je	.L608
	alr	%r3,%r5
	alcr	%r2,%r4
.L608:
	sldl	%r4,1
	srdl	%r0,1
.L607:
	lr	%r10,%r0
	or	%r10,%r1
	jne	.L610
	lm	%r10,%r13,40(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,33
	lhi	%r1,1
	lhi	%r5,33
	j	.L613
.L615:
	sll	%r3,1
	sll	%r1,1
.L613:
	clr	%r3,%r2
	jhe	.L620
	ahi	%r0,-1
	brct	%r5,.L623
	j	.L624
.L623:
	ltr	%r3,%r3
	jhe	.L615
	lhi	%r5,0
	j	.L617
.L618:
	clr	%r2,%r3
	jl	.L616
	sr	%r2,%r3
	or	%r5,%r1
.L616:
	srl	%r1,1
	srl	%r3,1
	j	.L617
.L620:
	lhi	%r5,0
	j	.L617
.L624:
	lhi	%r5,0
.L617:
	ltr	%r1,%r1
	jne	.L618
	ltr	%r4,%r4
	jne	.L619
	lr	%r2,%r5
.L619:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	je	.L628
	sll	%r2,8
	brasl	%r14,__clzsi2
	ahi	%r2,-1
	j	.L627
.L628:
	lhi	%r2,7
.L627:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	jhe	.L631
	lhi	%r1,-1
	xr	%r1,%r2
	lr	%r4,%r1
	lhi	%r1,-1
	xr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
.L631:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L635
	brasl	%r14,__clzdi2
	ahi	%r2,-1
	j	.L633
.L635:
	lhi	%r2,63
.L633:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lhi	%r2,0
	j	.L638
.L640:
	tml	%r1,1
	je	.L639
	ar	%r2,%r3
.L639:
	srl	%r1,1
	sll	%r3,1
.L638:
	ltr	%r1,%r1
	jne	.L640
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r4
	srl	%r5,3
	lhi	%r1,-8
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L643
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L643
	lr	%r1,%r4
	ahi	%r1,1
	j	.L644
.L643:
	lr	%r0,%r5
	sll	%r0,3
	lhi	%r12,0
	ahi	%r5,1
	j	.L645
.L646:
	l	%r8,0(%r12,%r3)
	l	%r9,4(%r12,%r3)
	st	%r8,0(%r12,%r2)
	st	%r9,4(%r12,%r2)
	ahi	%r12,8
.L645:
	brct	%r5,.L646
	lr	%r5,%r4
	sr	%r5,%r1
	ahi	%r5,1
	clr	%r1,%r4
	jh	.L652
	ltr	%r4,%r4
	jne	.L647
.L652:
	lhi	%r5,1
	j	.L647
.L648:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L647:
	brct	%r5,.L648
	j	.L642
.L650:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L644:
	ahi	%r4,-1
	brct	%r1,.L650
.L642:
	lm	%r8,%r12,32(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r4
	srl	%r1,1
	clr	%r2,%r3
	jl	.L655
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jl	.L655
	lr	%r1,%r4
	ahi	%r1,1
	j	.L656
.L655:
	lr	%r0,%r1
	sll	%r0,1
	lhi	%r5,0
	ahi	%r1,1
	j	.L657
.L658:
	lh	%r12,0(%r5,%r3)
	sth	%r12,0(%r5,%r2)
	ahi	%r5,2
.L657:
	brct	%r1,.L658
	tml	%r4,1
	je	.L654
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	j	.L654
.L660:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L656:
	ahi	%r4,-1
	brct	%r1,.L660
.L654:
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r4
	srl	%r5,2
	lhi	%r1,-4
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L664
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L664
	lr	%r1,%r4
	ahi	%r1,1
	j	.L665
.L664:
	lr	%r0,%r5
	sll	%r0,2
	lhi	%r12,0
	ahi	%r5,1
	j	.L666
.L667:
	l	%r10,0(%r12,%r3)
	st	%r10,0(%r12,%r2)
	ahi	%r12,4
.L666:
	brct	%r5,.L667
	lr	%r5,%r4
	sr	%r5,%r1
	ahi	%r5,1
	clr	%r1,%r4
	jh	.L673
	ltr	%r4,%r4
	jne	.L668
.L673:
	lhi	%r5,1
	j	.L668
.L669:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L668:
	brct	%r5,.L669
	j	.L663
.L671:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L665:
	ahi	%r4,-1
	brct	%r1,.L671
.L663:
	lm	%r10,%r12,40(%r11)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	8
.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	dr	%r4,%r3
	lr	%r2,%r4
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.align	8
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L679
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L678
	adb	%f0,.L680-.L679(%r5)
.L678:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L679:
.L680:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	8
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L683
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L682
	adb	%f0,.L684-.L683(%r5)
.L682:
	ledbr	%f0,%f0
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L683:
.L684:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__floatundidf
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__floatundisf
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	8
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r2
	lhi	%r4,0
	dlr	%r4,%r3
	lr	%r2,%r4
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.align	8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r1,17
	j	.L692
.L694:
	lhi	%r4,15
	sr	%r4,%r2
	lr	%r5,%r3
	sra	%r5,0(%r4)
	tml	%r5,1
	jne	.L693
	ahi	%r2,1
.L692:
	brct	%r1,.L694
.L693:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r1,17
	j	.L697
.L699:
	lr	%r4,%r3
	sra	%r4,0(%r2)
	tml	%r4,1
	jne	.L698
	ahi	%r2,1
.L697:
	brct	%r1,.L699
.L698:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L707
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L708-.L707(%r5)
	jnhe	.L706
	seb	%f0,.L708-.L707(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L709-.L707(%r5)
	j	.L704
.L706:
	cfebr	%r2,5,%f0
.L704:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L707:
.L708:
	.long	1191182336
.L709:
	.long	32768
	.align	2
.text
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r4,17
	j	.L711
.L713:
	lr	%r5,%r2
	sra	%r5,0(%r3)
	tml	%r5,1
	je	.L712
	ahi	%r1,1
.L712:
	ahi	%r3,1
.L711:
	brct	%r4,.L713
	lhi	%r2,1
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lhi	%r2,0
	lhi	%r1,0
	lhi	%r3,17
	j	.L716
.L718:
	lr	%r5,%r4
	sra	%r5,0(%r1)
	tml	%r5,1
	je	.L717
	ahi	%r2,1
.L717:
	ahi	%r1,1
.L716:
	brct	%r3,.L718
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lhi	%r2,0
	j	.L721
.L723:
	tml	%r1,1
	je	.L722
	ar	%r2,%r3
.L722:
	srl	%r1,1
	sll	%r3,1
.L721:
	ltr	%r1,%r1
	jne	.L723
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r1,%r2
	je	.L730
	lhi	%r2,0
	j	.L727
.L729:
	tml	%r3,1
	je	.L728
	ar	%r2,%r1
.L728:
	sll	%r1,1
	srl	%r3,1
.L727:
	ltr	%r3,%r3
	jne	.L729
	j	.L726
.L730:
	lhi	%r2,0
.L726:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,33
	lhi	%r1,1
	lhi	%r5,33
	j	.L733
.L735:
	sll	%r3,1
	sll	%r1,1
.L733:
	clr	%r3,%r2
	jhe	.L740
	ahi	%r0,-1
	brct	%r5,.L743
	j	.L744
.L743:
	ltr	%r3,%r3
	jhe	.L735
	lhi	%r5,0
	j	.L737
.L738:
	clr	%r2,%r3
	jl	.L736
	sr	%r2,%r3
	or	%r5,%r1
.L736:
	srl	%r1,1
	srl	%r3,1
	j	.L737
.L740:
	lhi	%r5,0
	j	.L737
.L744:
	lhi	%r5,0
.L737:
	ltr	%r1,%r1
	jne	.L738
	ltr	%r4,%r4
	jne	.L739
	lr	%r2,%r5
.L739:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kebr	%f0,%f2
	jl	.L748
	jh	.L749
	lhi	%r2,0
	j	.L747
.L748:
	lhi	%r2,-1
	j	.L747
.L749:
	lhi	%r2,1
.L747:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdbr	%f0,%f2
	jl	.L753
	jh	.L754
	lhi	%r2,0
	j	.L752
.L753:
	lhi	%r2,-1
	j	.L752
.L754:
	lhi	%r2,1
.L752:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	lr	%r1,%r4
	msr	%r1,%r13
	lr	%r2,%r12
	msr	%r2,%r5
	ar	%r1,%r2
	lr	%r3,%r13
	mlr	%r2,%r5
	ar	%r2,%r1
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r3
	lr	%r5,%r2
	lr	%r3,%r1
	mlr	%r2,%r5
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r3,%r3
	jhe	.L767
	lcr	%r3,%r3
	lhi	%r5,1
	j	.L761
.L767:
	lhi	%r5,0
.L761:
	lhi	%r4,33
	lhi	%r1,0
	j	.L762
.L765:
	tml	%r3,1
	je	.L763
	ar	%r1,%r2
.L763:
	sll	%r2,1
	sra	%r3,1
.L762:
	ltr	%r3,%r3
	je	.L764
	ahi	%r4,-1
	tml	%r4,255
	jne	.L765
.L764:
	ltr	%r5,%r5
	je	.L768
	lcr	%r2,%r1
	j	.L766
.L768:
	lr	%r2,%r1
.L766:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	jhe	.L774
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L771
.L774:
	lhi	%r12,0
.L771:
	ltr	%r3,%r3
	jhe	.L772
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
.L772:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L773
	lcr	%r2,%r2
.L773:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ltr	%r2,%r2
	jhe	.L780
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L777
.L780:
	lhi	%r12,0
.L777:
	ltr	%r3,%r3
	jhe	.L778
	lcr	%r3,%r3
.L778:
	lhi	%r4,1
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L779
	lcr	%r2,%r2
.L779:
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L795
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,17
	lhi	%r1,1
	lhi	%r5,17
	j	.L783
.L785:
	sll	%r3,1
	n	%r3,.L796-.L795(%r13)
	sll	%r1,1
.L783:
	clr	%r3,%r2
	jhe	.L790
	ahi	%r0,-1
	brct	%r5,.L793
	j	.L794
.L793:
	tml	%r3,32768
	je	.L785
	lhi	%r5,0
	j	.L787
.L788:
	clr	%r2,%r3
	jl	.L786
	sr	%r2,%r3
	n	%r2,.L796-.L795(%r13)
	or	%r5,%r1
.L786:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
	j	.L787
.L790:
	lhi	%r5,0
	j	.L787
.L794:
	lhi	%r5,0
.L787:
	tml	%r1,65535
	jne	.L788
	ltr	%r4,%r4
	jne	.L789
	lr	%r2,%r5
.L789:
	n	%r2,.L796-.L795(%r13)
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L795:
.L796:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB130:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,33
	lhi	%r1,1
	lhi	%r5,33
	j	.L798
.L800:
	sll	%r3,1
	sll	%r1,1
.L798:
	clr	%r3,%r2
	jhe	.L805
	ahi	%r0,-1
	brct	%r5,.L808
	j	.L809
.L808:
	ltr	%r3,%r3
	jhe	.L800
	lhi	%r5,0
	j	.L802
.L803:
	clr	%r2,%r3
	jl	.L801
	sr	%r2,%r3
	or	%r5,%r1
.L801:
	srl	%r1,1
	srl	%r3,1
	j	.L802
.L805:
	lhi	%r5,0
	j	.L802
.L809:
	lhi	%r5,0
.L802:
	ltr	%r1,%r1
	jne	.L803
	ltr	%r4,%r4
	jne	.L804
	lr	%r2,%r5
.L804:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r13,%r3
	tml	%r4,32
	je	.L812
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lr	%r0,%r2
	j	.L813
.L812:
	ltr	%r4,%r4
	je	.L814
	lr	%r2,%r3
	sll	%r3,0(%r4)
	lr	%r1,%r3
	sll	%r12,0(%r4)
	lhi	%r3,32
	sr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r12
	lr	%r0,%r2
.L813:
	lr	%r2,%r0
	lr	%r3,%r1
.L814:
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r13,%r3
	tml	%r4,32
	je	.L818
	sra	%r2,31
	lr	%r0,%r2
	sra	%r12,4064(%r4)
	lr	%r1,%r12
	j	.L819
.L818:
	ltr	%r4,%r4
	je	.L820
	lr	%r3,%r2
	sra	%r3,0(%r4)
	lr	%r0,%r3
	lhi	%r3,32
	sr	%r3,%r4
	sll	%r2,0(%r3)
	lr	%r3,%r13
	srl	%r3,0(%r4)
	or	%r2,%r3
	lr	%r1,%r2
.L819:
	lr	%r2,%r0
	lr	%r3,%r1
.L820:
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	larl	%r13,.L824
	ahi	%r15,-128
	.cfi_def_cfa_offset 224
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,56
	stm	%r4,%r5,96(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,40
	lhi	%r6,0
	l	%r1,.L825-.L824(%r13)
	nr	%r1,%r5
	lr	%r7,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,24
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,112(%r11)
	lr	%r1,%r5
	n	%r1,.L826-.L824(%r13)
	st	%r1,116(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,104(%r11)
	lr	%r1,%r5
	n	%r1,.L827-.L824(%r13)
	st	%r1,108(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,8
	lhi	%r1,255
	nr	%r1,%r4
	lr	%r8,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,24
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,120(%r11)
	l	%r1,.L825-.L824(%r13)
	nr	%r1,%r4
	st	%r1,120(%r11)
	lhi	%r1,0
	st	%r1,124(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,40
	l	%r12,.L826-.L824(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	sldl	%r2,56
	l	%r12,96(%r11)
	or	%r12,%r2
	lr	%r4,%r12
	l	%r12,100(%r11)
	or	%r12,%r3
	lr	%r5,%r12
	lr	%r12,%r4
	or	%r12,%r6
	lr	%r2,%r12
	lr	%r4,%r5
	or	%r4,%r7
	lr	%r3,%r4
	lm	%r6,%r7,112(%r11)
	lr	%r12,%r6
	or	%r12,%r2
	lr	%r4,%r12
	lr	%r12,%r7
	or	%r12,%r3
	lr	%r5,%r12
	lm	%r6,%r7,104(%r11)
	lr	%r12,%r6
	or	%r12,%r4
	lr	%r2,%r12
	lr	%r12,%r7
	or	%r12,%r5
	lr	%r3,%r12
	lr	%r12,%r8
	or	%r12,%r2
	lr	%r5,%r3
	l	%r2,120(%r11)
	or	%r2,%r12
	lr	%r8,%r2
	lr	%r1,%r0
	or	%r1,%r8
	lr	%r2,%r1
	lr	%r3,%r5
	lm	%r6,%r15,152(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 15, 96
	br	%r14
	.section	.rodata
	.align	8
.L824:
.L827:
	.long	-16777216
.L826:
	.long	16711680
.L825:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L829
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L830-.L829(%r5)
	lr	%r1,%r2
	sll	%r1,8
	n	%r1,.L831-.L829(%r5)
	sll	%r2,24
	or	%r2,%r4
	or	%r2,%r3
	or	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L829:
.L831:
	.long	16711680
.L830:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L841
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	cl	%r2,.L842-.L841(%r13)
	jh	.L837
	lhi	%r2,16
	j	.L833
.L837:
	lhi	%r2,0
.L833:
	lhi	%r3,16
	sr	%r3,%r2
	srl	%r1,0(%r3)
	tml	%r1,65280
	jne	.L838
	lhi	%r3,8
	j	.L834
.L838:
	lhi	%r3,0
.L834:
	lhi	%r4,8
	sr	%r4,%r3
	srl	%r1,0(%r4)
	ar	%r2,%r3
	tml	%r1,240
	jne	.L839
	lhi	%r3,4
	j	.L835
.L839:
	lhi	%r3,0
.L835:
	lhi	%r4,4
	sr	%r4,%r3
	srl	%r1,0(%r4)
	ar	%r2,%r3
	tml	%r1,12
	jne	.L840
	lhi	%r3,2
	j	.L836
.L840:
	lhi	%r3,0
.L836:
	lhi	%r4,2
	lr	%r5,%r4
	sr	%r5,%r3
	srl	%r1,0(%r5)
	ar	%r2,%r3
	lhi	%r3,2
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sr	%r4,%r1
	lr	%r1,%r3
	msr	%r1,%r4
	ar	%r2,%r1
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L841:
.L842:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cr	%r4,%r2
	jh	.L845
	jl	.L846
	clr	%r5,%r3
	jh	.L847
	jl	.L848
	lhi	%r2,1
	j	.L844
.L845:
	lhi	%r2,0
	j	.L844
.L846:
	lhi	%r2,2
	j	.L844
.L847:
	lhi	%r2,0
	j	.L844
.L848:
	lhi	%r2,2
.L844:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__cmpdi2
	ahi	%r2,-1
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	tml	%r2,65535
	jne	.L857
	lhi	%r2,16
	j	.L853
.L857:
	lhi	%r2,0
.L853:
	srl	%r1,0(%r2)
	tml	%r1,255
	jne	.L858
	lhi	%r3,8
	j	.L854
.L858:
	lhi	%r3,0
.L854:
	srl	%r1,0(%r3)
	ar	%r2,%r3
	tml	%r1,15
	jne	.L859
	lhi	%r3,4
	j	.L855
.L859:
	lhi	%r3,0
.L855:
	srl	%r1,0(%r3)
	ar	%r2,%r3
	tml	%r1,3
	jne	.L860
	lhi	%r3,2
	j	.L856
.L860:
	lhi	%r3,0
.L856:
	srl	%r1,0(%r3)
	lhi	%r4,3
	nr	%r1,%r4
	ar	%r2,%r3
	lhi	%r3,1
	nr	%r3,%r1
	st	%r3,100(%r11)
	xi	103(%r11),1
	srl	%r1,1
	lhi	%r3,2
	sr	%r3,%r1
	l	%r1,100(%r11)
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	lm	%r11,%r15,148(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r12,%r2
	lr	%r13,%r3
	tml	%r4,32
	je	.L863
	lhi	%r0,0
	srl	%r2,4064(%r4)
	lr	%r1,%r2
	j	.L864
.L863:
	ltr	%r4,%r4
	je	.L865
	lr	%r3,%r2
	srl	%r3,0(%r4)
	lr	%r0,%r3
	lhi	%r3,32
	sr	%r3,%r4
	sll	%r2,0(%r3)
	lr	%r3,%r13
	srl	%r3,0(%r4)
	or	%r2,%r3
	lr	%r1,%r2
.L864:
	lr	%r2,%r0
	lr	%r3,%r1
.L865:
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L869
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	l	%r12,.L870-.L869(%r13)
	nr	%r12,%r2
	l	%r10,.L870-.L869(%r13)
	nr	%r10,%r3
	lr	%r0,%r12
	msr	%r0,%r10
	lr	%r1,%r0
	srl	%r1,16
	n	%r0,.L870-.L869(%r13)
	srl	%r2,16
	msr	%r10,%r2
	ar	%r1,%r10
	lr	%r10,%r1
	sll	%r10,16
	ar	%r10,%r0
	srl	%r1,16
	lr	%r4,%r1
	lr	%r0,%r10
	lr	%r1,%r10
	srl	%r1,16
	n	%r0,.L870-.L869(%r13)
	srl	%r3,16
	msr	%r12,%r3
	ar	%r1,%r12
	lr	%r12,%r1
	sll	%r12,16
	ar	%r12,%r0
	srl	%r1,16
	ar	%r1,%r4
	msr	%r2,%r3
	ar	%r2,%r1
	lr	%r3,%r12
	lm	%r10,%r13,40(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L869:
.L870:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r6,%r2
	lr	%r7,%r3
	lr	%r8,%r4
	lr	%r10,%r3
	lr	%r12,%r5
	lr	%r3,%r5
	lr	%r2,%r7
	brasl	%r14,__muldsi3
	msr	%r12,%r6
	msr	%r10,%r8
	ar	%r12,%r10
	ar	%r12,%r2
	lr	%r2,%r12
	lm	%r6,%r15,120(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L874
	ahi	%r2,-1
.L874:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	xr	%r2,%r3
	lr	%r1,%r2
	srl	%r1,16
	xr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,8
	xr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,4
	xr	%r2,%r1
	lhi	%r1,15
	nr	%r2,%r1
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,16
	xr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,8
	xr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	xr	%r1,%r2
	lhi	%r2,15
	nr	%r1,%r2
	lhi	%r2,27030
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L881
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,1
	l	%r12,.L882-.L881(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L882-.L881(%r13)
	nr	%r12,%r5
	slr	%r3,%r12
	slbr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r2,2
	l	%r12,.L883-.L881(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L883-.L881(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	l	%r12,.L883-.L881(%r13)
	nr	%r12,%r4
	lr	%r2,%r12
	l	%r12,.L883-.L881(%r13)
	nr	%r12,%r5
	lr	%r4,%r0
	lr	%r5,%r1
	alr	%r5,%r12
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r1,.L884-.L881(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	l	%r1,.L884-.L881(%r13)
	nr	%r1,%r3
	ar	%r4,%r1
	lr	%r1,%r4
	srl	%r1,16
	ar	%r4,%r1
	lr	%r2,%r4
	srl	%r2,8
	ar	%r2,%r4
	lhi	%r1,127
	nr	%r2,%r1
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L881:
.L884:
	.long	252645135
.L883:
	.long	858993459
.L882:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L886
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	srl	%r3,1
	n	%r3,.L887-.L886(%r5)
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L888-.L886(%r5)
	n	%r1,.L888-.L886(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L889-.L886(%r5)
	lr	%r2,%r1
	srl	%r2,16
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,8
	ar	%r2,%r1
	lhi	%r1,63
	nr	%r2,%r1
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L886:
.L889:
	.long	252645135
.L888:
	.long	858993459
.L887:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L896
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,31
	ld	%f2,.L897-.L896(%r5)
.L893:
	tml	%r2,1
	je	.L891
	mdbr	%f2,%f0
.L891:
	lr	%r3,%r2
	srl	%r3,31
	ar	%r2,%r3
	sra	%r2,1
	je	.L892
	mdbr	%f0,%f0
	j	.L893
.L892:
	ltr	%r1,%r1
	je	.L895
	ld	%f0,.L897-.L896(%r5)
	ddbr	%f0,%f2
	j	.L894
.L895:
	ldr	%f0,%f2
.L894:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L896:
.L897:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L904
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,31
	le	%f2,.L905-.L904(%r5)
.L901:
	tml	%r2,1
	je	.L899
	meebr	%f2,%f0
.L899:
	lr	%r3,%r2
	srl	%r3,31
	ar	%r2,%r3
	sra	%r2,1
	je	.L900
	meebr	%f0,%f0
	j	.L901
.L900:
	ltr	%r1,%r1
	je	.L903
	le	%f0,.L905-.L904(%r5)
	debr	%f0,%f2
	j	.L902
.L903:
	ler	%f0,%f2
.L902:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L904:
.L905:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	clr	%r4,%r2
	jh	.L908
	jl	.L909
	clr	%r5,%r3
	jh	.L910
	jl	.L911
	lhi	%r2,1
	j	.L907
.L908:
	lhi	%r2,0
	j	.L907
.L909:
	lhi	%r2,2
	j	.L907
.L910:
	lhi	%r2,0
	j	.L907
.L911:
	lhi	%r2,2
.L907:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__ucmpdi2
	ahi	%r2,-1
	lm	%r11,%r15,140(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 96
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,2
.globl __floatundisf
.globl __floatundidf
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
