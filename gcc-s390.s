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
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	clr	%r2,%r3
	jle	.L2
	ar	%r3,%r4
	lr	%r12,%r3
	lr	%r0,%r2
	ar	%r0,%r4
	lr	%r1,%r4
	j	.L3
.L4:
	lcr	%r3,%r4
	lr	%r5,%r12
	sr	%r5,%r4
	ahi	%r5,-1
	ar	%r3,%r0
	ahi	%r3,-1
	ic	%r5,0(%r1,%r5)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,-1
.L3:
	ltr	%r1,%r1
	jne	.L4
	j	.L5
.L2:
	cr	%r2,%r3
	jne	.L8
	j	.L5
.L7:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	j	.L6
.L8:
	lhi	%r1,0
.L6:
	cr	%r1,%r4
	jne	.L7
.L5:
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
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
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,255
	nr	%r4,%r1
	j	.L11
.L13:
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L11:
	ltr	%r5,%r5
	je	.L12
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
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
	l	%r11,44(%r11)
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
	j	.L18
.L20:
	ahi	%r2,1
	ahi	%r4,-1
.L18:
	ltr	%r4,%r4
	je	.L19
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	jne	.L20
.L19:
	ltr	%r4,%r4
	jne	.L21
	lhi	%r2,0
.L21:
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
	j	.L25
.L27:
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L25:
	ltr	%r4,%r4
	je	.L26
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	je	.L27
.L26:
	ltr	%r4,%r4
	je	.L29
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	j	.L28
.L29:
	lhi	%r2,0
.L28:
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
	j	.L32
.L33:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L32:
	cr	%r1,%r4
	jne	.L33
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
	ahi	%r4,-1
	j	.L36
.L38:
	lhi	%r5,0
	ic	%r5,0(%r4,%r2)
	lr	%r1,%r4
	ahi	%r1,-1
	cr	%r3,%r5
	jne	.L39
	ar	%r2,%r4
	j	.L37
.L39:
	lr	%r4,%r1
.L36:
	chi	%r4,-1
	jne	.L38
	lhi	%r2,0
.L37:
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
	lr	%r1,%r2
	j	.L42
.L43:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L42:
	cr	%r1,%r4
	jne	.L43
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
	j	.L46
.L47:
	ahi	%r3,1
	ahi	%r2,1
.L46:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L47
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
	j	.L50
.L52:
	ahi	%r2,1
.L50:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L51
	cr	%r3,%r1
	jne	.L52
.L51:
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
.L56:
	lr	%r2,%r1
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	je	.L55
	ahi	%r1,1
	lhi	%r2,-4096
	lhi	%r4,0
	ic	%r4,4095(%r1,%r2)
	lr	%r2,%r4
	ltr	%r2,%r2
	jne	.L56
.L55:
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
	j	.L60
.L62:
	ahi	%r2,1
	ahi	%r3,1
.L60:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L61
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L62
.L61:
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
	lr	%r1,%r3
	j	.L65
.L66:
	ahi	%r1,1
.L65:
	lhi	%r2,0
	ic	%r2,0(%r1)
	ltr	%r2,%r2
	jne	.L66
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
	je	.L73
	ahi	%r4,-1
	ar	%r4,%r2
	j	.L70
.L72:
	ahi	%r2,1
	ahi	%r3,1
.L70:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L71
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L71
	cr	%r2,%r4
	je	.L71
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r1
	je	.L72
.L71:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	j	.L69
.L73:
	lhi	%r2,0
.L69:
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
	lr	%r1,%r2
	j	.L76
.L77:
	mvc	0(1,%r3),1(%r1)
	mvc	1(1,%r3),0(%r1)
	ahi	%r3,2
	ahi	%r1,2
.L76:
	lr	%r5,%r2
	ar	%r5,%r4
	sr	%r5,%r1
	chi	%r5,1
	jh	.L77
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
	je	.L85
	chi	%r2,9
	jne	.L86
	lhi	%r2,1
	j	.L84
.L85:
	lhi	%r2,1
	j	.L84
.L86:
	lhi	%r2,0
.L84:
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
	jle	.L90
	chi	%r2,127
	jne	.L91
	lhi	%r2,1
	j	.L89
.L90:
	lhi	%r2,1
	j	.L89
.L91:
	lhi	%r2,0
.L89:
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
	je	.L103
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	jh	.L104
	lhi	%r2,1
	j	.L102
.L103:
	lhi	%r2,1
	j	.L102
.L104:
	lhi	%r2,0
.L102:
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
	larl	%r5,.L114
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L110
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L111
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L112
	a	%r2,.L115-.L114(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	jh	.L113
	lhi	%r2,1
	j	.L109
.L110:
	lhi	%r2,1
	j	.L109
.L111:
	lhi	%r2,1
	j	.L109
.L112:
	lhi	%r2,1
	j	.L109
.L113:
	lhi	%r2,0
.L109:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L114:
.L115:
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
	larl	%r5,.L126
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,254
	clr	%r2,%r1
	jh	.L119
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L120
.L119:
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L121
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L127-.L126(%r5)
	jle	.L122
	l	%r1,.L128-.L126(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L123
	l	%r1,.L129-.L126(%r5)
	ar	%r1,%r2
	cl	%r1,.L130-.L126(%r5)
	jh	.L124
	n	%r2,.L131-.L126(%r5)
	c	%r2,.L131-.L126(%r5)
	je	.L125
	lhi	%r2,1
	j	.L120
.L121:
	lhi	%r2,1
	j	.L120
.L122:
	lhi	%r2,1
	j	.L120
.L123:
	lhi	%r2,1
	j	.L120
.L124:
	lhi	%r2,0
	j	.L120
.L125:
	lhi	%r2,0
.L120:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L126:
.L131:
	.long	65534
.L130:
	.long	1048579
.L129:
	.long	-65532
.L128:
	.long	-57344
.L127:
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
	jle	.L134
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	jh	.L135
	lhi	%r2,1
	j	.L133
.L134:
	lhi	%r2,1
	j	.L133
.L135:
	lhi	%r2,0
.L133:
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
	larl	%r5,.L147
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L140
	cdbr	%f2,%f2
	jo	.L143
	kdbr	%f0,%f2
	jnh	.L146
	sdbr	%f0,%f2
	j	.L140
.L143:
	ldr	%f0,%f2
	j	.L140
.L146:
	ld	%f0,.L148-.L147(%r5)
.L140:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L147:
.L148:
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
	larl	%r5,.L157
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L150
	cebr	%f2,%f2
	jo	.L153
	kebr	%f0,%f2
	jnh	.L156
	sebr	%f0,%f2
	j	.L150
.L153:
	ler	%f0,%f2
	j	.L150
.L156:
	le	%f0,.L158-.L157(%r5)
.L150:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L157:
.L158:
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
	jo	.L163
	cdbr	%f2,%f2
	jo	.L160
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L161
	tcdb	%f0,1365
	je	.L160
	ldr	%f0,%f2
	j	.L160
.L161:
	kdbr	%f0,%f2
	jnl	.L160
	ldr	%f0,%f2
	j	.L160
.L163:
	ldr	%f0,%f2
.L160:
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
	jo	.L174
	cebr	%f2,%f2
	jo	.L171
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L172
	tceb	%f0,1365
	je	.L171
	ler	%f0,%f2
	j	.L171
.L172:
	kebr	%f0,%f2
	jnl	.L171
	ler	%f0,%f2
	j	.L171
.L174:
	ler	%f0,%f2
.L171:
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
	jno	.L182
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	j	.L181
.L182:
	cxbr	%f1,%f1
	jno	.L184
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L181
.L184:
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f1,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L185
	tcxb	%f0,1365
	je	.L186
	lxr	%f0,%f1
.L186:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L181
.L185:
	kxbr	%f0,%f1
	jnl	.L187
	lxr	%f0,%f1
.L187:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L181:
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
	jo	.L198
	cdbr	%f2,%f2
	jo	.L195
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L196
	tcdb	%f0,1365
	je	.L200
	j	.L195
.L196:
	kdbr	%f0,%f2
	jnl	.L203
	j	.L195
.L198:
	ldr	%f0,%f2
	j	.L195
.L200:
	ldr	%f0,%f2
	j	.L195
.L203:
	ldr	%f0,%f2
.L195:
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
	jo	.L209
	cebr	%f2,%f2
	jo	.L206
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L207
	tceb	%f0,1365
	je	.L211
	j	.L206
.L207:
	kebr	%f0,%f2
	jnl	.L214
	j	.L206
.L209:
	ler	%f0,%f2
	j	.L206
.L211:
	ler	%f0,%f2
	j	.L206
.L214:
	ler	%f0,%f2
.L206:
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
	jno	.L217
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L216
.L217:
	cxbr	%f0,%f0
	jno	.L219
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	j	.L216
.L219:
	tcxb	%f1,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L220
	tcxb	%f1,1365
	je	.L221
	lxr	%f0,%f1
.L221:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L216
.L220:
	kxbr	%f1,%f0
	jnl	.L222
	lxr	%f0,%f1
.L222:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L216:
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
	j	.L230
.L231:
	lhi	%r3,63
	nr	%r3,%r2
	larl	%r4,digits
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L230:
	ltr	%r2,%r2
	jne	.L231
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
	jne	.L238
	lhi	%r1,0
	st	%r1,4(%r2)
	st	%r1,0(%r2)
	j	.L237
.L238:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	je	.L237
	l	%r1,0(%r2)
	st	%r2,4(%r1)
.L237:
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
	je	.L242
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L242:
	icm	%r1,15,4(%r2)
	je	.L241
	l	%r1,4(%r2)
	l	%r2,0(%r2)
	st	%r2,0(%r1)
.L241:
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
	lr	%r8,%r3
	lr	%r7,%r4
	lr	%r12,%r5
	lr	%r13,%r6
	l	%r9,0(%r7)
	lr	%r6,%r8
	lhi	%r10,0
	j	.L246
.L249:
	lr	%r3,%r6
	l	%r2,100(%r11)
	basr	%r14,%r13
	ar	%r6,%r12
	ltr	%r2,%r2
	jne	.L247
	msr	%r10,%r12
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L248
.L247:
	ahi	%r10,1
.L246:
	cr	%r10,%r9
	jne	.L249
	lr	%r1,%r9
	ahi	%r1,1
	st	%r1,0(%r7)
	msr	%r9,%r12
	lr	%r2,%r8
	ar	%r2,%r9
	lr	%r4,%r12
	l	%r3,100(%r11)
	brasl	%r14,memcpy
.L248:
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
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r7,%r2
	lr	%r12,%r3
	lr	%r9,%r5
	l	%r13,0(%r4)
	lr	%r8,%r12
	lhi	%r10,0
	j	.L252
.L255:
	lr	%r3,%r8
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r8,%r9
	ltr	%r2,%r2
	jne	.L253
	msr	%r10,%r9
	lr	%r2,%r12
	ar	%r2,%r10
	j	.L254
.L253:
	ahi	%r10,1
.L252:
	cr	%r10,%r13
	jne	.L255
	lhi	%r2,0
.L254:
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
	j	.L260
.L261:
	ahi	%r12,1
.L260:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L261
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L267
	chi	%r1,45
	jne	.L268
	lhi	%r3,1
	j	.L262
.L267:
	lhi	%r3,0
.L262:
	ahi	%r12,1
	j	.L263
.L268:
	lhi	%r3,0
.L263:
	lhi	%r2,0
	j	.L264
.L265:
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
.L264:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jle	.L265
	ltr	%r3,%r3
	jne	.L266
	lcr	%r2,%r2
.L266:
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
	j	.L272
.L273:
	ahi	%r12,1
.L272:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L273
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L279
	chi	%r1,45
	jne	.L280
	lhi	%r3,1
	j	.L274
.L279:
	lhi	%r3,0
.L274:
	ahi	%r12,1
	j	.L275
.L280:
	lhi	%r3,0
.L275:
	lhi	%r2,0
	j	.L276
.L277:
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
.L276:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jle	.L277
	ltr	%r3,%r3
	jne	.L278
	lcr	%r2,%r2
.L278:
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
	j	.L284
.L285:
	ahi	%r12,1
.L284:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L285
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L291
	chi	%r1,45
	jne	.L292
	lhi	%r1,1
	j	.L286
.L291:
	lhi	%r1,0
.L286:
	ahi	%r12,1
	j	.L287
.L292:
	lhi	%r1,0
.L287:
	lhi	%r2,0
	lhi	%r3,0
	j	.L288
.L289:
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
.L288:
	lhi	%r4,0
	ic	%r4,0(%r12)
	ahi	%r4,-48
	lhi	%r5,9
	clr	%r4,%r5
	jle	.L289
	ltr	%r1,%r1
	jne	.L290
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L290
	ahi	%r2,-1
.L290:
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
	j	.L297
.L301:
	lr	%r10,%r12
	srl	%r10,1
	msr	%r10,%r9
	ar	%r10,%r8
	lr	%r3,%r10
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L298
	srl	%r12,1
	j	.L297
.L298:
	ltr	%r2,%r2
	jle	.L302
	ar	%r10,%r9
	lr	%r8,%r10
	lr	%r1,%r12
	srl	%r1,1
	ahi	%r12,-1
	sr	%r12,%r1
.L297:
	ltr	%r12,%r12
	jne	.L301
	lhi	%r2,0
	j	.L300
.L302:
	lr	%r2,%r10
.L300:
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
	j	.L305
.L308:
	lr	%r12,%r10
	sra	%r12,1
	msr	%r12,%r8
	ar	%r12,%r9
	l	%r4,192(%r11)
	lr	%r3,%r12
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L309
	ltr	%r2,%r2
	jle	.L307
	ar	%r12,%r8
	lr	%r9,%r12
	ahi	%r10,-1
.L307:
	sra	%r10,1
.L305:
	ltr	%r10,%r10
	jne	.L308
	lhi	%r2,0
	j	.L306
.L309:
	lr	%r2,%r12
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
	lr	%r5,%r2
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r5)
	st	%r0,4(%r5)
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
	jhe	.L314
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L314
	ahi	%r2,-1
.L314:
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
	lr	%r4,%r6
	lr	%r5,%r7
	lr	%r2,%r8
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
	lr	%r5,%r2
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r5)
	st	%r0,4(%r5)
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
	jhe	.L325
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L325
	ahi	%r2,-1
.L325:
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
	lr	%r4,%r6
	lr	%r5,%r7
	lr	%r2,%r8
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
	j	.L332
.L334:
	ahi	%r2,4
.L332:
	icm	%r1,15,0(%r2)
	je	.L333
	c	%r3,0(%r2)
	jne	.L334
.L333:
	icm	%r1,15,0(%r2)
	jne	.L335
	lhi	%r2,0
.L335:
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
	j	.L339
.L341:
	ahi	%r2,4
	ahi	%r3,4
.L339:
	clc	0(4,%r3),0(%r2)
	jne	.L340
	icm	%r1,15,0(%r2)
	je	.L340
	icm	%r1,15,0(%r3)
	jne	.L341
.L340:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L344
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L343
	lhi	%r1,0
.L343:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L342
.L344:
	lhi	%r2,-1
.L342:
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
.L347:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	lr	%r4,%r2
	ahi	%r4,-4
	la	%r4,0(%r1,%r4)
	icm	%r4,15,0(%r4)
	jne	.L347
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
	lr	%r2,%r3
	j	.L350
.L351:
	ahi	%r2,4
.L350:
	icm	%r1,15,0(%r2)
	jne	.L351
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
	j	.L354
.L356:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L354:
	ltr	%r4,%r4
	je	.L355
	clc	0(4,%r3),0(%r2)
	jne	.L355
	icm	%r1,15,0(%r2)
	je	.L355
	icm	%r1,15,0(%r3)
	jne	.L356
.L355:
	ltr	%r4,%r4
	je	.L359
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L360
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L358
	lhi	%r1,0
.L358:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L357
.L359:
	lhi	%r2,0
	j	.L357
.L360:
	lhi	%r2,-1
.L357:
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
	j	.L363
.L365:
	ahi	%r4,-1
	ahi	%r2,4
.L363:
	ltr	%r4,%r4
	je	.L364
	c	%r3,0(%r2)
	jne	.L365
.L364:
	ltr	%r4,%r4
	jne	.L366
	lhi	%r2,0
.L366:
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
	j	.L370
.L372:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L370:
	ltr	%r4,%r4
	je	.L371
	clc	0(4,%r3),0(%r2)
	je	.L372
.L371:
	ltr	%r4,%r4
	je	.L375
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L376
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L374
	lhi	%r1,0
.L374:
	lhi	%r2,255
	nr	%r2,%r1
	j	.L373
.L375:
	lhi	%r2,0
	j	.L373
.L376:
	lhi	%r2,-1
.L373:
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
	j	.L379
.L380:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
.L379:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L380
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
	je	.L383
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jhe	.L388
	ahi	%r4,-1
	sll	%r4,2
	j	.L385
.L386:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	ahi	%r4,-4
.L385:
	chi	%r4,-4
	jne	.L386
	j	.L383
.L387:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	j	.L384
.L388:
	lhi	%r1,0
.L384:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L387
.L383:
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
	lr	%r1,%r2
	j	.L391
.L392:
	st	%r3,0(%r1)
	ahi	%r1,4
.L391:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L392
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
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	clr	%r2,%r3
	jhe	.L395
	ar	%r2,%r4
	lr	%r0,%r2
	ar	%r3,%r4
	lr	%r5,%r3
	lr	%r1,%r4
	j	.L396
.L397:
	lcr	%r2,%r4
	lr	%r3,%r0
	sr	%r3,%r4
	ahi	%r3,-1
	ar	%r2,%r5
	ahi	%r2,-1
	ic	%r3,0(%r1,%r3)
	stc	%r3,0(%r1,%r2)
	ahi	%r1,-1
.L396:
	ltr	%r1,%r1
	jne	.L397
	j	.L394
.L395:
	cr	%r2,%r3
	jne	.L401
	j	.L394
.L400:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	j	.L399
.L401:
	lhi	%r1,0
.L399:
	cr	%r1,%r4
	jne	.L400
.L394:
	l	%r11,44(%r11)
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
	lhi	%r2,0
	lhi	%r3,0
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
	lhi	%r2,0
	lhi	%r3,0
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
	larl	%r5,.L416
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
	n	%r2,.L417-.L416(%r5)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L416:
.L417:
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
	larl	%r5,.L419
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
	n	%r2,.L420-.L419(%r5)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L419:
.L420:
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
	larl	%r5,.L426
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
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
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	st	%r11,44(%r15)
	larl	%r5,.L429
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	lr	%r3,%r1
	srl	%r3,24
	l	%r2,.L430-.L429(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L431-.L429(%r5)
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
.L429:
.L431:
	.long	65280
.L430:
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
	larl	%r13,.L433
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r4,0
	lhi	%r5,0
	l	%r1,.L434-.L433(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,56
	lhi	%r0,0
	lhi	%r1,0
	l	%r12,.L435-.L433(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	lhi	%r1,0
	srdl	%r0,40
	lhi	%r8,0
	lhi	%r9,0
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r8,%r12
	or	%r1,%r5
	lr	%r9,%r1
	lhi	%r4,0
	lhi	%r5,0
	l	%r1,.L436-.L433(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,24
	lhi	%r0,0
	lhi	%r1,0
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	lhi	%r5,0
	lhi	%r12,255
	nr	%r12,%r2
	lr	%r4,%r12
	lhi	%r5,0
	srdl	%r4,8
	lhi	%r8,0
	lhi	%r9,0
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r8,%r12
	or	%r1,%r5
	lr	%r9,%r1
	lhi	%r4,0
	lhi	%r5,0
	l	%r1,.L434-.L433(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	lhi	%r5,0
	l	%r12,.L435-.L433(%r13)
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,24
	lhi	%r8,0
	lhi	%r9,0
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r8,%r12
	or	%r1,%r5
	lr	%r9,%r1
	lhi	%r4,0
	lhi	%r5,0
	l	%r1,.L436-.L433(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,40
	lhi	%r0,0
	lhi	%r1,0
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r9
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	lhi	%r5,0
	lhi	%r12,255
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,56
	lhi	%r2,0
	lhi	%r3,0
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
.L433:
.L436:
	.long	65280
.L435:
	.long	16711680
.L434:
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
	j	.L438
.L441:
	lr	%r3,%r2
	srl	%r3,0(%r1)
	tml	%r3,1
	je	.L439
	ahi	%r1,1
	lr	%r2,%r1
	j	.L440
.L439:
	ahi	%r1,1
.L438:
	chi	%r1,32
	jne	.L441
	lhi	%r2,0
.L440:
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
	je	.L447
	lhi	%r2,1
	j	.L445
.L446:
	sra	%r1,1
	ahi	%r2,1
.L445:
	tml	%r1,1
	je	.L446
	j	.L444
.L447:
	lhi	%r2,0
.L444:
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
	larl	%r5,.L456
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L457-.L456(%r5)
	jl	.L452
	keb	%f0,.L458-.L456(%r5)
	jnh	.L455
	lhi	%r2,1
	j	.L450
.L452:
	lhi	%r2,1
	j	.L450
.L455:
	lhi	%r2,0
.L450:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L456:
.L458:
	.long	2139095039
.L457:
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
	larl	%r5,.L466
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L467-.L466(%r5)
	jl	.L462
	kdb	%f0,.L468-.L466(%r5)
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
	.long	2146435071
	.long	-1
.L467:
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
	larl	%r5,.L476
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L477-.L476(%r5)
	ld	%f3,.L477-.L476+8(%r5)
	kxbr	%f0,%f1
	jl	.L472
	ld	%f1,.L478-.L476(%r5)
	ld	%f3,.L478-.L476+8(%r5)
	kxbr	%f0,%f1
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
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L477:
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
	larl	%r5,.L487
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L482
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	je	.L482
	ltr	%r2,%r2
	jhe	.L486
	le	%f2,.L488-.L487(%r5)
	j	.L485
.L486:
	le	%f2,.L489-.L487(%r5)
.L485:
	tml	%r2,1
	je	.L484
	meebr	%f0,%f2
.L484:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	je	.L482
	meebr	%f2,%f2
	j	.L485
.L482:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L487:
.L489:
	.long	1073741824
.L488:
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
	larl	%r5,.L496
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L491
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	je	.L491
	ltr	%r2,%r2
	jhe	.L495
	ld	%f2,.L497-.L496(%r5)
	j	.L494
.L495:
	ld	%f2,.L498-.L496(%r5)
.L494:
	tml	%r2,1
	je	.L493
	mdbr	%f0,%f2
.L493:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	je	.L491
	mdbr	%f2,%f2
	j	.L494
.L491:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L496:
.L498:
	.long	1073741824
	.long	0
.L497:
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
	larl	%r5,.L505
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	cxbr	%f0,%f0
	jo	.L500
	lxr	%f1,%f0
	axbr	%f1,%f0
	cxbr	%f0,%f1
	je	.L500
	ltr	%r4,%r4
	jhe	.L504
	ld	%f1,.L506-.L505(%r5)
	ld	%f3,.L506-.L505+8(%r5)
	j	.L503
.L504:
	ld	%f1,.L507-.L505(%r5)
	ld	%f3,.L507-.L505+8(%r5)
.L503:
	tml	%r4,1
	je	.L502
	mxbr	%f0,%f1
.L502:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	je	.L500
	mxbr	%f1,%f1
	j	.L503
.L500:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L505:
.L507:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L506:
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
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L509
.L510:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L509:
	cr	%r1,%r4
	jne	.L510
	l	%r11,44(%r11)
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
	j	.L513
.L515:
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L513:
	ltr	%r4,%r4
	je	.L514
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	jne	.L515
.L514:
	ltr	%r4,%r4
	jne	.L516
	mvi	0(%r1),0
.L516:
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L519
.L521:
	ahi	%r2,1
.L519:
	cr	%r2,%r3
	je	.L520
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	jne	.L521
.L520:
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
	j	.L524
.L526:
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	je	.L525
.L527:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L526
	ahi	%r2,1
.L524:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L529
	lr	%r1,%r3
	j	.L527
.L529:
	lhi	%r2,0
.L525:
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
.L533:
	lr	%r4,%r1
	lhi	%r5,0
	ic	%r5,0(%r1)
	cr	%r3,%r5
	jne	.L532
	lr	%r2,%r4
.L532:
	ahi	%r1,1
	lhi	%r4,-4096
	lhi	%r5,0
	ic	%r5,4095(%r1,%r4)
	lr	%r4,%r5
	ltr	%r4,%r4
	jne	.L533
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
	lr	%r1,%r10
	srst	%r9,%r1
	jo	.-4
	slr	%r9,%r10
	jhe	.L537
	lhi	%r8,0
	ic	%r8,0(%r10)
	lr	%r12,%r2
	j	.L538
.L539:
	lr	%r4,%r9
	lr	%r3,%r10
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L541
	ahi	%r12,1
.L538:
	lr	%r3,%r8
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	jne	.L539
	j	.L537
.L541:
	lr	%r2,%r12
.L537:
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
	larl	%r5,.L556
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L557-.L556(%r5)
	jnl	.L544
	kdb	%f2,.L557-.L556(%r5)
	jh	.L546
.L544:
	kdb	%f0,.L557-.L556(%r5)
	jnh	.L547
	kdb	%f2,.L557-.L556(%r5)
	jnl	.L547
.L546:
	lcdbr	%f0,%f0
.L547:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L556:
.L557:
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
	sr	%r8,%r10
	ar	%r8,%r12
	ltr	%r10,%r10
	je	.L563
	clr	%r10,%r3
	jh	.L564
	j	.L560
.L562:
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r9)
	cr	%r2,%r1
	jne	.L561
	lr	%r2,%r12
	ahi	%r2,1
	lr	%r4,%r10
	ahi	%r4,-1
	lr	%r3,%r9
	ahi	%r3,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	je	.L565
.L561:
	ahi	%r12,1
.L560:
	clr	%r12,%r8
	jle	.L562
	lhi	%r2,0
	j	.L559
.L563:
	lr	%r2,%r12
	j	.L559
.L564:
	lhi	%r2,0
	j	.L559
.L565:
	lr	%r2,%r12
.L559:
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
	larl	%r5,.L589
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L590-.L589(%r5)
	jnl	.L586
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L570
.L586:
	lhi	%r3,0
.L570:
	kdb	%f0,.L591-.L589(%r5)
	jhe	.L581
	j	.L587
.L574:
	ahi	%r1,1
	mdb	%f0,.L592-.L589(%r5)
	j	.L572
.L581:
	lhi	%r1,0
.L572:
	kdb	%f0,.L591-.L589(%r5)
	jhe	.L574
	j	.L575
.L587:
	kdb	%f0,.L592-.L589(%r5)
	jnl	.L588
	cdb	%f0,.L590-.L589(%r5)
	jne	.L583
	lhi	%r1,0
	j	.L575
.L578:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L577
.L583:
	lhi	%r1,0
.L577:
	kdb	%f0,.L592-.L589(%r5)
	jl	.L578
	j	.L575
.L588:
	lhi	%r1,0
.L575:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	je	.L579
	lcdbr	%f0,%f0
.L579:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L589:
.L592:
	.long	1071644672
	.long	0
.L591:
	.long	1072693248
	.long	0
.L590:
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
	j	.L594
.L597:
	lhi	%r12,0
	lhi	%r10,1
	nr	%r10,%r1
	lr	%r13,%r10
	lr	%r10,%r12
	or	%r10,%r13
	je	.L595
	alr	%r3,%r5
	alcr	%r2,%r4
.L595:
	sldl	%r4,1
	srdl	%r0,1
.L594:
	lr	%r10,%r0
	or	%r10,%r1
	jne	.L597
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
	lhi	%r5,33
	lhi	%r1,1
	j	.L600
.L602:
	sll	%r3,1
	sll	%r1,1
.L600:
	clr	%r3,%r2
	jhe	.L607
	ahi	%r5,-1
	je	.L608
	ltr	%r3,%r3
	jhe	.L602
	lhi	%r5,0
	j	.L604
.L605:
	clr	%r2,%r3
	jl	.L603
	sr	%r2,%r3
	or	%r5,%r1
.L603:
	srl	%r1,1
	srl	%r3,1
	j	.L604
.L607:
	lhi	%r5,0
	j	.L604
.L608:
	lhi	%r5,0
.L604:
	ltr	%r1,%r1
	jne	.L605
	ltr	%r4,%r4
	jne	.L606
	lr	%r2,%r5
.L606:
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
	je	.L613
	sll	%r2,8
	brasl	%r14,__clzsi2
	ahi	%r2,-1
	j	.L612
.L613:
	lhi	%r2,7
.L612:
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
	jhe	.L616
	lhi	%r4,0
	lhi	%r5,0
	lhi	%r1,-1
	xr	%r1,%r2
	lr	%r4,%r1
	lhi	%r1,-1
	xr	%r1,%r3
	lr	%r5,%r1
	lr	%r2,%r4
	lr	%r3,%r5
.L616:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L620
	brasl	%r14,__clzdi2
	ahi	%r2,-1
	j	.L618
.L620:
	lhi	%r2,63
.L618:
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
	j	.L623
.L625:
	tml	%r1,1
	je	.L624
	ar	%r2,%r3
.L624:
	srl	%r1,1
	sll	%r3,1
.L623:
	ltr	%r1,%r1
	jne	.L625
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r0,%r4
	srl	%r0,3
	lhi	%r1,-8
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L628
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jhe	.L629
.L628:
	sll	%r0,3
	lhi	%r5,0
	j	.L630
.L631:
	l	%r12,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r12,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
.L630:
	cr	%r5,%r0
	jne	.L631
	j	.L632
.L633:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L632:
	clr	%r4,%r1
	jh	.L633
	j	.L627
.L635:
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L629:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L635
.L627:
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	st	%r11,44(%r15)
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r5,%r4
	srl	%r5,1
	clr	%r2,%r3
	jl	.L638
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jhe	.L639
.L638:
	sll	%r5,1
	lhi	%r1,0
	j	.L640
.L641:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L640:
	cr	%r1,%r5
	jne	.L641
	tml	%r4,1
	je	.L637
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	j	.L637
.L643:
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L639:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L643
.L637:
	l	%r11,44(%r11)
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
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r0,%r4
	srl	%r0,2
	lhi	%r1,-4
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L646
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jhe	.L647
.L646:
	sll	%r0,2
	lhi	%r5,0
	j	.L648
.L649:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L648:
	cr	%r5,%r0
	jne	.L649
	j	.L650
.L651:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L650:
	clr	%r4,%r1
	jh	.L651
	j	.L645
.L653:
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L647:
	ahi	%r4,-1
	chi	%r4,-1
	jne	.L653
.L645:
	lm	%r11,%r12,44(%r11)
	.cfi_restore 12
	.cfi_restore 11
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
	larl	%r5,.L659
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L658
	adb	%f0,.L660-.L659(%r5)
.L658:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L659:
.L660:
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
	larl	%r5,.L663
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L662
	adb	%f0,.L664-.L663(%r5)
.L662:
	ledbr	%f0,%f0
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L663:
.L664:
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L672
.L674:
	lhi	%r3,15
	sr	%r3,%r2
	lr	%r4,%r1
	sra	%r4,0(%r3)
	tml	%r4,1
	jne	.L673
	ahi	%r2,1
.L672:
	chi	%r2,16
	jne	.L674
.L673:
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L677
.L679:
	lr	%r3,%r1
	sra	%r3,0(%r2)
	tml	%r3,1
	jne	.L678
	ahi	%r2,1
.L677:
	chi	%r2,16
	jne	.L679
.L678:
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
	larl	%r5,.L687
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L688-.L687(%r5)
	jnhe	.L686
	seb	%f0,.L688-.L687(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L689-.L687(%r5)
	j	.L684
.L686:
	cfebr	%r2,5,%f0
.L684:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L687:
.L688:
	.long	1191182336
.L689:
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
	j	.L691
.L693:
	lr	%r4,%r2
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L692
	ahi	%r1,1
.L692:
	ahi	%r3,1
.L691:
	chi	%r3,16
	jne	.L693
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
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r1,0
	j	.L696
.L698:
	lr	%r4,%r3
	sra	%r4,0(%r1)
	tml	%r4,1
	je	.L697
	ahi	%r2,1
.L697:
	ahi	%r1,1
.L696:
	chi	%r1,16
	jne	.L698
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
	j	.L701
.L703:
	tml	%r1,1
	je	.L702
	ar	%r2,%r3
.L702:
	srl	%r1,1
	sll	%r3,1
.L701:
	ltr	%r1,%r1
	jne	.L703
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
	je	.L710
	lhi	%r2,0
	j	.L707
.L709:
	tml	%r3,1
	je	.L708
	ar	%r2,%r1
.L708:
	sll	%r1,1
	srl	%r3,1
.L707:
	ltr	%r3,%r3
	jne	.L709
	j	.L706
.L710:
	lhi	%r2,0
.L706:
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
	lhi	%r5,33
	lhi	%r1,1
	j	.L713
.L715:
	sll	%r3,1
	sll	%r1,1
.L713:
	clr	%r3,%r2
	jhe	.L720
	ahi	%r5,-1
	je	.L721
	ltr	%r3,%r3
	jhe	.L715
	lhi	%r5,0
	j	.L717
.L718:
	clr	%r2,%r3
	jl	.L716
	sr	%r2,%r3
	or	%r5,%r1
.L716:
	srl	%r1,1
	srl	%r3,1
	j	.L717
.L720:
	lhi	%r5,0
	j	.L717
.L721:
	lhi	%r5,0
.L717:
	ltr	%r1,%r1
	jne	.L718
	ltr	%r4,%r4
	jne	.L719
	lr	%r2,%r5
.L719:
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
	jl	.L726
	jh	.L727
	lhi	%r2,0
	j	.L725
.L726:
	lhi	%r2,-1
	j	.L725
.L727:
	lhi	%r2,1
.L725:
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
	jl	.L731
	jh	.L732
	lhi	%r2,0
	j	.L730
.L731:
	lhi	%r2,-1
	j	.L730
.L732:
	lhi	%r2,1
.L730:
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
	lr	%r1,%r3
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	lr	%r12,%r1
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
	lhi	%r4,0
	lr	%r3,%r1
	lhi	%r2,0
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
	jhe	.L745
	lcr	%r3,%r3
	lhi	%r5,1
	j	.L739
.L745:
	lhi	%r5,0
.L739:
	lhi	%r4,33
	lhi	%r1,0
	j	.L740
.L743:
	tml	%r3,1
	je	.L741
	ar	%r1,%r2
.L741:
	sll	%r2,1
	sra	%r3,1
.L740:
	ltr	%r3,%r3
	je	.L742
	ahi	%r4,-1
	tml	%r4,255
	jne	.L743
.L742:
	ltr	%r5,%r5
	je	.L746
	lcr	%r2,%r1
	j	.L744
.L746:
	lr	%r2,%r1
.L744:
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
	jhe	.L752
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L749
.L752:
	lhi	%r12,0
.L749:
	ltr	%r3,%r3
	jhe	.L750
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
.L750:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L751
	lcr	%r2,%r2
.L751:
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
	jhe	.L758
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L755
.L758:
	lhi	%r12,0
.L755:
	ltr	%r3,%r3
	jhe	.L756
	lcr	%r3,%r3
.L756:
	lhi	%r4,1
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L757
	lcr	%r2,%r2
.L757:
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
	larl	%r13,.L771
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r5,17
	lhi	%r1,1
	j	.L761
.L763:
	sll	%r3,1
	n	%r3,.L772-.L771(%r13)
	sll	%r1,1
.L761:
	clr	%r3,%r2
	jhe	.L768
	ahi	%r5,-1
	je	.L769
	tml	%r3,32768
	je	.L763
	lhi	%r5,0
	j	.L765
.L766:
	clr	%r2,%r3
	jl	.L764
	sr	%r2,%r3
	n	%r2,.L772-.L771(%r13)
	or	%r5,%r1
.L764:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
	j	.L765
.L768:
	lhi	%r5,0
	j	.L765
.L769:
	lhi	%r5,0
.L765:
	tml	%r1,65535
	jne	.L766
	ltr	%r4,%r4
	jne	.L767
	lr	%r2,%r5
.L767:
	n	%r2,.L772-.L771(%r13)
	lm	%r11,%r13,44(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L771:
.L772:
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
	lhi	%r5,33
	lhi	%r1,1
	j	.L774
.L776:
	sll	%r3,1
	sll	%r1,1
.L774:
	clr	%r3,%r2
	jhe	.L781
	ahi	%r5,-1
	je	.L782
	ltr	%r3,%r3
	jhe	.L776
	lhi	%r5,0
	j	.L778
.L779:
	clr	%r2,%r3
	jl	.L777
	sr	%r2,%r3
	or	%r5,%r1
.L777:
	srl	%r1,1
	srl	%r3,1
	j	.L778
.L781:
	lhi	%r5,0
	j	.L778
.L782:
	lhi	%r5,0
.L778:
	ltr	%r1,%r1
	jne	.L779
	ltr	%r4,%r4
	jne	.L780
	lr	%r2,%r5
.L780:
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
	je	.L786
	lhi	%r0,0
	lhi	%r1,0
	lr	%r2,%r13
	sll	%r2,4064(%r4)
	lr	%r0,%r2
	j	.L787
.L786:
	ltr	%r4,%r4
	je	.L788
	lr	%r2,%r13
	lhi	%r0,0
	lhi	%r1,0
	lr	%r3,%r2
	sll	%r3,0(%r4)
	lr	%r1,%r3
	sll	%r12,0(%r4)
	lhi	%r3,32
	sr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r12
	lr	%r0,%r2
.L787:
	lr	%r2,%r0
	lr	%r3,%r1
.L788:
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
	je	.L792
	lhi	%r0,0
	lhi	%r1,0
	lr	%r2,%r12
	sra	%r2,31
	lr	%r0,%r2
	sra	%r12,4064(%r4)
	lr	%r1,%r12
	j	.L793
.L792:
	ltr	%r4,%r4
	je	.L794
	lr	%r2,%r12
	lhi	%r0,0
	lhi	%r1,0
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
.L793:
	lr	%r2,%r0
	lr	%r3,%r1
.L794:
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
	larl	%r13,.L798
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
	lhi	%r7,0
	l	%r1,.L799-.L798(%r13)
	nr	%r1,%r5
	lr	%r7,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,24
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,112(%r11)
	lr	%r1,%r5
	n	%r1,.L800-.L798(%r13)
	st	%r1,116(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,104(%r11)
	lr	%r1,%r5
	n	%r1,.L801-.L798(%r13)
	st	%r1,108(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,8
	lhi	%r8,0
	lhi	%r9,0
	lhi	%r1,255
	nr	%r1,%r4
	lr	%r8,%r1
	lhi	%r9,0
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,24
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,120(%r11)
	l	%r1,.L799-.L798(%r13)
	nr	%r1,%r4
	st	%r1,120(%r11)
	lhi	%r1,0
	st	%r1,124(%r11)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,40
	lhi	%r0,0
	lhi	%r1,0
	l	%r12,.L800-.L798(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	lhi	%r1,0
	sldl	%r2,56
	lhi	%r4,0
	lhi	%r5,0
	l	%r12,96(%r11)
	or	%r12,%r2
	lr	%r4,%r12
	l	%r12,100(%r11)
	or	%r12,%r3
	lr	%r5,%r12
	lhi	%r2,0
	lhi	%r3,0
	lr	%r12,%r4
	or	%r12,%r6
	lr	%r2,%r12
	lr	%r4,%r5
	or	%r4,%r7
	lr	%r3,%r4
	lhi	%r4,0
	lhi	%r5,0
	lm	%r6,%r7,112(%r11)
	lr	%r12,%r6
	or	%r12,%r2
	lr	%r4,%r12
	lr	%r12,%r7
	or	%r12,%r3
	lr	%r5,%r12
	lhi	%r2,0
	lhi	%r3,0
	lm	%r6,%r7,104(%r11)
	lr	%r12,%r6
	or	%r12,%r4
	lr	%r2,%r12
	lr	%r12,%r7
	or	%r12,%r5
	lr	%r3,%r12
	lhi	%r4,0
	lhi	%r5,0
	lr	%r12,%r8
	or	%r12,%r2
	lr	%r4,%r12
	lr	%r5,%r3
	lhi	%r8,0
	lhi	%r9,0
	l	%r2,120(%r11)
	or	%r2,%r4
	lr	%r8,%r2
	lr	%r9,%r5
	lhi	%r2,0
	lhi	%r3,0
	lr	%r1,%r0
	or	%r1,%r8
	lr	%r2,%r1
	lr	%r3,%r9
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
.L798:
.L801:
	.long	-16777216
.L800:
	.long	16711680
.L799:
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
	larl	%r5,.L803
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L804-.L803(%r5)
	lr	%r1,%r2
	sll	%r1,8
	n	%r1,.L805-.L803(%r5)
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
.L803:
.L805:
	.long	16711680
.L804:
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
	larl	%r13,.L815
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	cl	%r1,.L816-.L815(%r13)
	jh	.L811
	lhi	%r2,16
	j	.L807
.L811:
	lhi	%r2,0
.L807:
	lhi	%r3,16
	sr	%r3,%r2
	srl	%r1,0(%r3)
	tml	%r1,65280
	jne	.L812
	lhi	%r3,8
	j	.L808
.L812:
	lhi	%r3,0
.L808:
	lhi	%r4,8
	sr	%r4,%r3
	srl	%r1,0(%r4)
	ar	%r2,%r3
	tml	%r1,240
	jne	.L813
	lhi	%r3,4
	j	.L809
.L813:
	lhi	%r3,0
.L809:
	lhi	%r4,4
	sr	%r4,%r3
	srl	%r1,0(%r4)
	ar	%r2,%r3
	tml	%r1,12
	jne	.L814
	lhi	%r3,2
	j	.L810
.L814:
	lhi	%r3,0
.L810:
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
.L815:
.L816:
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
	lr	%r0,%r2
	lr	%r1,%r3
	cr	%r4,%r0
	jh	.L819
	jl	.L820
	clr	%r5,%r1
	jh	.L821
	jl	.L822
	lhi	%r2,1
	j	.L818
.L819:
	lhi	%r2,0
	j	.L818
.L820:
	lhi	%r2,2
	j	.L818
.L821:
	lhi	%r2,0
	j	.L818
.L822:
	lhi	%r2,2
.L818:
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
	tml	%r1,65535
	jne	.L831
	lhi	%r2,16
	j	.L827
.L831:
	lhi	%r2,0
.L827:
	srl	%r1,0(%r2)
	tml	%r1,255
	jne	.L832
	lhi	%r3,8
	j	.L828
.L832:
	lhi	%r3,0
.L828:
	srl	%r1,0(%r3)
	ar	%r2,%r3
	tml	%r1,15
	jne	.L833
	lhi	%r3,4
	j	.L829
.L833:
	lhi	%r3,0
.L829:
	srl	%r1,0(%r3)
	ar	%r2,%r3
	tml	%r1,3
	jne	.L834
	lhi	%r3,2
	j	.L830
.L834:
	lhi	%r3,0
.L830:
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
	je	.L837
	lhi	%r0,0
	lhi	%r1,0
	lr	%r2,%r12
	srl	%r2,4064(%r4)
	lr	%r1,%r2
	j	.L838
.L837:
	ltr	%r4,%r4
	je	.L839
	lr	%r2,%r12
	lhi	%r0,0
	lhi	%r1,0
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
.L838:
	lr	%r2,%r0
	lr	%r3,%r1
.L839:
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
	larl	%r13,.L843
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	l	%r12,.L844-.L843(%r13)
	nr	%r12,%r2
	l	%r10,.L844-.L843(%r13)
	nr	%r10,%r3
	lr	%r0,%r12
	msr	%r0,%r10
	lhi	%r4,0
	lhi	%r5,0
	lr	%r5,%r0
	lr	%r1,%r0
	srl	%r1,16
	n	%r0,.L844-.L843(%r13)
	lr	%r5,%r0
	srl	%r2,16
	msr	%r10,%r2
	ar	%r1,%r10
	lr	%r10,%r1
	sll	%r10,16
	ar	%r10,%r0
	lr	%r5,%r10
	srl	%r1,16
	lr	%r4,%r1
	lr	%r0,%r5
	lr	%r1,%r0
	srl	%r1,16
	n	%r0,.L844-.L843(%r13)
	lr	%r5,%r0
	srl	%r3,16
	msr	%r12,%r3
	ar	%r1,%r12
	lr	%r12,%r1
	sll	%r12,16
	ar	%r12,%r0
	lr	%r5,%r12
	srl	%r1,16
	ar	%r1,%r4
	lr	%r4,%r1
	msr	%r2,%r3
	ar	%r2,%r1
	lr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	lm	%r10,%r13,40(%r11)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L843:
.L844:
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
	lr	%r9,%r5
	lr	%r10,%r7
	lr	%r12,%r9
	lr	%r3,%r9
	lr	%r2,%r7
	brasl	%r14,__muldsi3
	lr	%r4,%r2
	lr	%r5,%r3
	msr	%r12,%r6
	msr	%r10,%r8
	ar	%r12,%r10
	ar	%r12,%r2
	lr	%r4,%r12
	lr	%r2,%r4
	lr	%r3,%r5
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
	je	.L848
	ahi	%r2,-1
.L848:
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
	larl	%r13,.L855
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,1
	lhi	%r0,0
	lhi	%r1,0
	l	%r12,.L856-.L855(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L856-.L855(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	slr	%r3,%r1
	slbr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r2,2
	lhi	%r0,0
	lhi	%r1,0
	l	%r12,.L857-.L855(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	l	%r12,.L857-.L855(%r13)
	nr	%r12,%r3
	lr	%r1,%r12
	lhi	%r2,0
	lhi	%r3,0
	l	%r12,.L857-.L855(%r13)
	nr	%r12,%r4
	lr	%r2,%r12
	l	%r12,.L857-.L855(%r13)
	nr	%r12,%r5
	lr	%r3,%r12
	lr	%r4,%r0
	lr	%r5,%r1
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r1,.L858-.L855(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	l	%r1,.L858-.L855(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	ar	%r4,%r5
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
.L855:
.L858:
	.long	252645135
.L857:
	.long	858993459
.L856:
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
	larl	%r5,.L860
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r3,%r2
	srl	%r3,1
	n	%r3,.L861-.L860(%r5)
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L862-.L860(%r5)
	n	%r1,.L862-.L860(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L863-.L860(%r5)
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
.L860:
.L863:
	.long	252645135
.L862:
	.long	858993459
.L861:
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
	larl	%r5,.L870
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,31
	ld	%f2,.L871-.L870(%r5)
.L867:
	tml	%r2,1
	je	.L865
	mdbr	%f2,%f0
.L865:
	lr	%r3,%r2
	srl	%r3,31
	ar	%r2,%r3
	sra	%r2,1
	je	.L866
	mdbr	%f0,%f0
	j	.L867
.L866:
	ltr	%r1,%r1
	je	.L869
	ld	%f0,.L871-.L870(%r5)
	ddbr	%f0,%f2
	j	.L868
.L869:
	ldr	%f0,%f2
.L868:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L870:
.L871:
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
	larl	%r5,.L878
	.cfi_offset 11, -52
	lr	%r11,%r15
	.cfi_def_cfa_register 11
	lr	%r1,%r2
	srl	%r1,31
	le	%f2,.L879-.L878(%r5)
.L875:
	tml	%r2,1
	je	.L873
	meebr	%f2,%f0
.L873:
	lr	%r3,%r2
	srl	%r3,31
	ar	%r2,%r3
	sra	%r2,1
	je	.L874
	meebr	%f0,%f0
	j	.L875
.L874:
	ltr	%r1,%r1
	je	.L877
	le	%f0,.L879-.L878(%r5)
	debr	%f0,%f2
	j	.L876
.L877:
	ler	%f0,%f2
.L876:
	l	%r11,44(%r11)
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L878:
.L879:
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
	lr	%r0,%r2
	lr	%r1,%r3
	clr	%r4,%r0
	jh	.L882
	jl	.L883
	clr	%r5,%r1
	jh	.L884
	jl	.L885
	lhi	%r2,1
	j	.L881
.L882:
	lhi	%r2,0
	j	.L881
.L883:
	lhi	%r2,2
	j	.L881
.L884:
	lhi	%r2,0
	j	.L881
.L885:
	lhi	%r2,2
.L881:
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
