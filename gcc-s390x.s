	.file	"mini-libc.c"
	.machinemode zarch
	.machine "zEC12"
.text
	.align	8
.globl make_ti
	.type	make_ti, @function
make_ti:
.LFB0:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lghi	%r0,0
	lghi	%r1,0
	lgr	%r0,%r3
	lgr	%r1,%r4
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE0:
	.size	make_ti, .-make_ti
	.align	8
.globl make_tu
	.type	make_tu, @function
make_tu:
.LFB1:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lghi	%r0,0
	lghi	%r1,0
	lgr	%r0,%r3
	lgr	%r1,%r4
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE1:
	.size	make_tu, .-make_tu
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clgrjle	%r2,%r3,.L6
	agr	%r3,%r4
	agrk	%r0,%r2,%r4
	lgr	%r1,%r4
	j	.L7
.L8:
	lcgr	%r5,%r4
	sgrk	%r12,%r3,%r4
	llgc	%r12,-1(%r1,%r12)
	agr	%r5,%r0
	stcy	%r12,-1(%r1,%r5)
	aghi	%r1,-1
.L7:
	cgijlh	%r1,0,.L8
	j	.L9
.L6:
	cgrjlh	%r2,%r3,.L12
	j	.L9
.L11:
	llgc	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	j	.L10
.L12:
	lghi	%r1,0
.L10:
	cgrjlh	%r1,%r4,.L11
.L9:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	llgcr	%r4,%r4
	j	.L15
.L17:
	aghi	%r5,-1
	aghi	%r3,1
	aghi	%r2,1
.L15:
	cgije	%r5,0,.L16
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	llcr	%r1,%r1
	crjlh	%r1,%r4,.L17
.L16:
	cgije	%r5,0,.L19
	aghi	%r2,1
	j	.L18
.L19:
	lghi	%r2,0
.L18:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	8
.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	llgcr	%r3,%r3
	j	.L22
.L24:
	aghi	%r2,1
	aghi	%r4,-1
.L22:
	cgije	%r4,0,.L23
	llc	%r1,0(%r2)
	crjlh	%r1,%r3,.L24
.L23:
	cgijlh	%r4,0,.L25
	lghi	%r2,0
.L25:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	8
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L29
.L31:
	aghi	%r4,-1
	aghi	%r2,1
	aghi	%r3,1
.L29:
	cgije	%r4,0,.L30
	llc	%r5,0(%r2)
	llc	%r1,0(%r3)
	crje	%r5,%r1,.L31
.L30:
	cgije	%r4,0,.L33
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	j	.L32
.L33:
	lhi	%r2,0
.L32:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lghi	%r1,0
	j	.L36
.L37:
	llgc	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L36:
	cgrjlh	%r1,%r4,.L37
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	8
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	llgcr	%r3,%r3
	aghi	%r4,-1
	j	.L40
.L42:
	llc	%r5,0(%r4,%r2)
	aghik	%r1,%r4,-1
	crjlh	%r5,%r3,.L43
	agr	%r2,%r4
	j	.L41
.L43:
	lgr	%r4,%r1
.L40:
	cgijlh	%r4,-1,.L42
	lghi	%r2,0
.L41:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	8
.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	agr	%r4,%r2
	lgr	%r1,%r2
	j	.L46
.L47:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L46:
	cgrjlh	%r1,%r4,.L47
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L50
.L51:
	aghi	%r3,1
	aghi	%r2,1
.L50:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	llcr	%r1,%r1
	cijlh	%r1,0,.L51
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	llgcr	%r3,%r3
	j	.L54
.L56:
	aghi	%r2,1
.L54:
	llc	%r1,0(%r2)
	cije	%r1,0,.L55
	crjlh	%r1,%r3,.L56
.L55:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	8
.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
.L60:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L59
	aghi	%r2,1
	llc	%r1,-1(%r2)
	cijlh	%r1,0,.L60
	lghi	%r2,0
.L59:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	8
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L64
.L66:
	aghi	%r2,1
	aghi	%r3,1
.L64:
	llc	%r4,0(%r2)
	llc	%r1,0(%r3)
	crjlh	%r4,%r1,.L65
	lr	%r1,%r4
	cijlh	%r1,0,.L66
.L65:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	8
.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	j	.L69
.L70:
	aghi	%r1,1
.L69:
	llc	%r3,0(%r1)
	cijlh	%r3,0,.L70
	sgrk	%r2,%r1,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	8
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r4
	cgije	%r4,0,.L77
	lay	%r1,-1(%r1,%r2)
	j	.L74
.L76:
	aghi	%r2,1
	aghi	%r3,1
.L74:
	llc	%r4,0(%r2)
	cije	%r4,0,.L75
	llc	%r4,0(%r3)
	cije	%r4,0,.L75
	cgrje	%r2,%r1,.L75
	llc	%r5,0(%r2)
	crje	%r5,%r4,.L76
.L75:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	j	.L73
.L77:
	lhi	%r2,0
.L73:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	j	.L80
.L81:
	llgc	%r5,1(%r1)
	stc	%r5,0(%r3)
	llgc	%r5,0(%r1)
	stc	%r5,1(%r3)
	aghi	%r3,2
	aghi	%r1,2
.L80:
	agrk	%r5,%r2,%r4
	sgr	%r5,%r1
	cgijh	%r5,1,.L81
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	8
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB16:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isalpha, .-isalpha
	.align	8
.globl isascii
	.type	isascii, @function
isascii:
.LFB17:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clfi	%r2,127
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE17:
	.size	isascii, .-isascii
	.align	8
.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cije	%r2,32,.L89
	cijlh	%r2,9,.L90
	lhi	%r2,1
	j	.L88
.L89:
	lhi	%r2,1
	j	.L88
.L90:
	lhi	%r2,0
.L88:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clijle	%r2,31,.L94
	cijlh	%r2,127,.L95
	lhi	%r2,1
	j	.L93
.L94:
	lhi	%r2,1
	j	.L93
.L95:
	lhi	%r2,0
.L93:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	8
.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB20:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-48
	clfi	%r2,9
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE20:
	.size	isdigit, .-isdigit
	.align	8
.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB21:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-33
	clfi	%r2,93
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE21:
	.size	isgraph, .-isgraph
	.align	8
.globl islower
	.type	islower, @function
islower:
.LFB22:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-97
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE22:
	.size	islower, .-islower
	.align	8
.globl isprint
	.type	isprint, @function
isprint:
.LFB23:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-32
	clfi	%r2,94
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE23:
	.size	isprint, .-isprint
	.align	8
.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cije	%r2,32,.L107
	ahi	%r2,-9
	clijh	%r2,4,.L108
	lhi	%r2,1
	j	.L106
.L107:
	lhi	%r2,1
	j	.L106
.L108:
	lhi	%r2,0
.L106:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	8
.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-65
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clijle	%r2,31,.L114
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L115
	ahik	%r1,%r2,-8232
	clijle	%r1,1,.L116
	slfi	%r2,65529
	clijh	%r2,2,.L117
	lhi	%r2,1
	j	.L113
.L114:
	lhi	%r2,1
	j	.L113
.L115:
	lhi	%r2,1
	j	.L113
.L116:
	lhi	%r2,1
	j	.L113
.L117:
	lhi	%r2,0
.L113:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-48
	clfi	%r2,9
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswdigit, .-iswdigit
	.align	8
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clijh	%r2,254,.L122
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L123
.L122:
	lhi	%r1,8231
	clrjle	%r2,%r1,.L124
	ahik	%r1,%r2,-8234
	llill	%r3,47061
	clrjle	%r1,%r3,.L125
	slfi	%r1,49110
	lhi	%r3,8184
	clrjle	%r1,%r3,.L126
	ahi	%r1,-8188
	iilf	%r3,1048579
	clrjh	%r1,%r3,.L127
	nilf	%r2,65534
	llill	%r1,65534
	crje	%r2,%r1,.L128
	lhi	%r2,1
	j	.L123
.L124:
	lhi	%r2,1
	j	.L123
.L125:
	lhi	%r2,1
	j	.L123
.L126:
	lhi	%r2,1
	j	.L123
.L127:
	lhi	%r2,0
	j	.L123
.L128:
	lhi	%r2,0
.L123:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahik	%r1,%r2,-48
	clijle	%r1,9,.L132
	oill	%r2,32
	ahi	%r2,-97
	clijh	%r2,5,.L133
	lhi	%r2,1
	j	.L131
.L132:
	lhi	%r2,1
	j	.L131
.L133:
	lhi	%r2,0
.L131:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	8
.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbg	%r2,%r2,57,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE30:
	.size	toascii, .-toascii
	.align	8
.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L138
	cdbr	%f2,%f2
	jo	.L141
	kdbr	%f0,%f2
	jnh	.L144
	sdbr	%f0,%f2
	j	.L138
.L141:
	ldr	%f0,%f2
	j	.L138
.L144:
	lzdr	%f0
.L138:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L147
	cebr	%f2,%f2
	jo	.L150
	kebr	%f0,%f2
	jnh	.L153
	sebr	%f0,%f2
	j	.L147
.L150:
	ler	%f0,%f2
	j	.L147
.L153:
	lzer	%f0
.L147:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	8
.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L159
	cdbr	%f2,%f2
	jo	.L156
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L157
	tcdb	%f0,1365
	je	.L156
	ldr	%f0,%f2
	j	.L156
.L157:
	kdbr	%f0,%f2
	jnl	.L156
	ldr	%f0,%f2
	j	.L156
.L159:
	ldr	%f0,%f2
.L156:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L170
	cebr	%f2,%f2
	jo	.L167
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L168
	tceb	%f0,1365
	je	.L167
	ler	%f0,%f2
	j	.L167
.L168:
	kebr	%f0,%f2
	jnl	.L167
	ler	%f0,%f2
	j	.L167
.L170:
	ler	%f0,%f2
.L167:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	ldgr	%f1,%r11
	.cfi_register 11, 20
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f4,0(%r4)
	ld	%f6,8(%r4)
	cxbr	%f0,%f0
	jno	.L178
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	j	.L177
.L178:
	cxbr	%f4,%f4
	jno	.L180
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L177
.L180:
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L181
	tcxb	%f0,1365
	je	.L182
	lxr	%f0,%f4
.L182:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L177
.L181:
	kxbr	%f0,%f4
	jnl	.L183
	lxr	%f0,%f4
.L183:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L177:
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L194
	cdbr	%f2,%f2
	jo	.L191
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L192
	tcdb	%f0,1365
	je	.L196
	j	.L191
.L192:
	kdbr	%f0,%f2
	jnl	.L199
	j	.L191
.L194:
	ldr	%f0,%f2
	j	.L191
.L196:
	ldr	%f0,%f2
	j	.L191
.L199:
	ldr	%f0,%f2
.L191:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	8
.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L205
	cebr	%f2,%f2
	jo	.L202
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L203
	tceb	%f0,1365
	je	.L207
	j	.L202
.L203:
	kebr	%f0,%f2
	jnl	.L210
	j	.L202
.L205:
	ler	%f0,%f2
	j	.L202
.L207:
	ler	%f0,%f2
	j	.L202
.L210:
	ler	%f0,%f2
.L202:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	8
.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	ldgr	%f1,%r11
	.cfi_register 11, 20
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	cxbr	%f4,%f4
	jno	.L213
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L212
.L213:
	cxbr	%f0,%f0
	jno	.L215
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	j	.L212
.L215:
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L216
	tcxb	%f4,1365
	je	.L217
	lxr	%f0,%f4
.L217:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L212
.L216:
	kxbr	%f4,%f0
	jnl	.L218
	lxr	%f0,%f4
.L218:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L212:
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE38:
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
.LFB39:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	larl	%r1,s.0
	j	.L226
.L227:
	risbg	%r3,%r2,58,128+63,0
	larl	%r4,digits
	llgc	%r3,0(%r3,%r4)
	stc	%r3,0(%r1)
	aghi	%r1,1
	srl	%r2,6
.L226:
	cijlh	%r2,0,.L227
	mvi	0(%r1),0
	larl	%r2,s.0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	8
.globl srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ahi	%r2,-1
	llgfr	%r2,%r2
	stgrl	%r2,seed
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.section	.rodata
	.align	8
.LC0:
	.quad	6364136223846793005
.text
	.align	8
.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgrl	%r2,.LC0
	larl	%r1,seed
	msg	%r2,0(%r1)
	aghi	%r2,1
	stgrl	%r2,seed
	srlg	%r2,%r2,33
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	8
.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r3
	cgijlh	%r3,0,.L234
	mvghi	8(%r2),0
	mvghi	0(%r2),0
	j	.L233
.L234:
	lg	%r3,0(%r1)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	je	.L233
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
.L233:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	8
.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ltg	%r1,0(%r2)
	je	.L238
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L238:
	ltg	%r1,8(%r2)
	je	.L237
	lg	%r1,8(%r2)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
.L237:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	8
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB44:
	.cfi_startproc
	stmg	%r7,%r15,56(%r15)
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	stg	%r2,160(%r11)
	lgr	%r12,%r3
	lgr	%r13,%r4
	lgr	%r10,%r5
	lg	%r7,0(%r13)
	lgr	%r8,%r12
	lghi	%r9,0
	j	.L242
.L245:
	lgr	%r3,%r8
	lg	%r2,160(%r11)
	basr	%r14,%r6
	agr	%r8,%r10
	cijlh	%r2,0,.L243
	msgr	%r9,%r10
	agrk	%r2,%r12,%r9
	j	.L244
.L243:
	aghi	%r9,1
.L242:
	cgrjlh	%r9,%r7,.L245
	aghik	%r1,%r7,1
	stg	%r1,0(%r13)
	msgr	%r7,%r10
	agrk	%r2,%r12,%r7
	lgr	%r4,%r10
	lg	%r3,160(%r11)
	brasl	%r14,memcpy@PLT
.L244:
	lmg	%r7,%r15,224(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	8
.globl lfind
	.type	lfind, @function
lfind:
.LFB45:
	.cfi_startproc
	stmg	%r7,%r15,56(%r15)
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r7,%r2
	lgr	%r12,%r3
	lgr	%r9,%r5
	lg	%r13,0(%r4)
	lgr	%r8,%r12
	lghi	%r10,0
	j	.L248
.L251:
	lgr	%r3,%r8
	lgr	%r2,%r7
	basr	%r14,%r6
	agr	%r8,%r9
	cijlh	%r2,0,.L249
	msgr	%r10,%r9
	agrk	%r2,%r12,%r10
	j	.L250
.L249:
	aghi	%r10,1
.L248:
	cgrjlh	%r10,%r13,.L251
	lghi	%r2,0
.L250:
	lmg	%r7,%r15,216(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	8
.globl abs
	.type	abs, @function
abs:
.LFB46:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lpr	%r2,%r2
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE46:
	.size	abs, .-abs
	.align	8
.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	j	.L256
.L257:
	aghi	%r12,1
.L256:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L257
	llc	%r1,0(%r12)
	cije	%r1,43,.L263
	cijlh	%r1,45,.L264
	lhi	%r3,1
	j	.L258
.L263:
	lhi	%r3,0
.L258:
	aghi	%r12,1
	j	.L259
.L264:
	lhi	%r3,0
.L259:
	lhi	%r1,0
	j	.L260
.L261:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sllk	%r1,%r2,1
	aghi	%r12,1
	llc	%r2,-1(%r12)
	ahi	%r2,-48
	sr	%r1,%r2
.L260:
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L261
	cijlh	%r3,0,.L262
	lcr	%r1,%r1
.L262:
	lgfr	%r2,%r1
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	8
.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	j	.L268
.L269:
	aghi	%r12,1
.L268:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L269
	llc	%r1,0(%r12)
	cije	%r1,43,.L275
	cijlh	%r1,45,.L276
	lhi	%r3,1
	j	.L270
.L275:
	lhi	%r3,0
.L270:
	aghi	%r12,1
	j	.L271
.L276:
	lhi	%r3,0
.L271:
	lghi	%r2,0
	j	.L272
.L273:
	sllg	%r1,%r2,2
	agr	%r1,%r2
	sllg	%r2,%r1,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L272:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L273
	cijlh	%r3,0,.L274
	lcgr	%r2,%r2
.L274:
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB49:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	j	.L280
.L281:
	aghi	%r12,1
.L280:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L281
	llc	%r1,0(%r12)
	cije	%r1,43,.L287
	cijlh	%r1,45,.L288
	lhi	%r3,1
	j	.L282
.L287:
	lhi	%r3,0
.L282:
	aghi	%r12,1
	j	.L283
.L288:
	lhi	%r3,0
.L283:
	lghi	%r2,0
	j	.L284
.L285:
	sllg	%r1,%r2,2
	agr	%r1,%r2
	sllg	%r2,%r1,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L284:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L285
	cijlh	%r3,0,.L286
	lcgr	%r2,%r2
.L286:
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE49:
	.size	atoll, .-atoll
	.align	8
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB50:
	.cfi_startproc
	stmg	%r7,%r15,56(%r15)
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r12,%r4
	lgr	%r9,%r5
	j	.L292
.L296:
	srlg	%r10,%r12,1
	msgr	%r10,%r9
	agr	%r10,%r8
	lgr	%r3,%r10
	lgr	%r2,%r7
	basr	%r14,%r6
	lr	%r1,%r2
	cijhe	%r2,0,.L293
	srlg	%r12,%r12,1
	j	.L292
.L293:
	cijle	%r1,0,.L297
	agrk	%r8,%r10,%r9
	srlg	%r1,%r12,1
	aghi	%r12,-1
	sgr	%r12,%r1
.L292:
	cgijlh	%r12,0,.L296
	lghi	%r2,0
	j	.L295
.L297:
	lgr	%r2,%r10
.L295:
	lmg	%r7,%r15,216(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE50:
	.size	bsearch, .-bsearch
	.align	8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	stmg	%r7,%r15,56(%r15)
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r7,%r2
	lgr	%r8,%r5
	lr	%r10,%r4
	lgr	%r9,%r3
	j	.L300
.L303:
	srak	%r1,%r10,1
	lgr	%r12,%r8
	msgfr	%r12,%r1
	agr	%r12,%r9
	lg	%r4,320(%r11)
	lgr	%r3,%r12
	lgr	%r2,%r7
	basr	%r14,%r6
	lr	%r1,%r2
	cije	%r2,0,.L304
	cijle	%r1,0,.L302
	agrk	%r9,%r12,%r8
	ahi	%r10,-1
.L302:
	sra	%r10,1
.L300:
	cijlh	%r10,0,.L303
	lghi	%r2,0
	j	.L301
.L304:
	lgr	%r2,%r12
.L301:
	lmg	%r7,%r15,216(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r5,%r2
	lgr	%r1,%r3
	dsgr	%r0,%r4
	lgr	%r12,%r0
	lgr	%r13,%r1
	lgr	%r1,%r13
	lgr	%r0,%r12
	st	%r1,0(%r5)
	st	%r0,4(%r5)
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE52:
	.size	div, .-div
	.align	8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB53:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lpgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE53:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB54:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r5,%r2
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r5)
	stg	%r0,8(%r5)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE54:
	.size	imaxdiv, .-imaxdiv
	.align	8
.globl labs
	.type	labs, @function
labs:
.LFB55:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lpgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE55:
	.size	labs, .-labs
	.align	8
.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB56:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r5,%r2
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r5)
	stg	%r0,8(%r5)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE56:
	.size	ldiv, .-ldiv
	.align	8
.globl llabs
	.type	llabs, @function
llabs:
.LFB57:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lpgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE57:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB58:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r5,%r2
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r5)
	stg	%r0,8(%r5)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE58:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L321
.L323:
	aghi	%r2,4
.L321:
	lt	%r1,0(%r2)
	je	.L322
	c	%r3,0(%r2)
	jne	.L323
.L322:
	lt	%r1,0(%r2)
	jne	.L324
	lghi	%r2,0
.L324:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L328
.L330:
	aghi	%r2,4
	aghi	%r3,4
.L328:
	clc	0(4,%r3),0(%r2)
	jne	.L329
	lt	%r1,0(%r2)
	je	.L329
	lt	%r1,0(%r3)
	jne	.L330
.L329:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L333
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L332
	lhi	%r1,0
.L332:
	llcr	%r2,%r1
	j	.L331
.L333:
	lhi	%r2,-1
.L331:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
.L336:
	aghi	%r3,4
	aghi	%r1,4
	ly	%r4,-4(%r3)
	sty	%r4,-4(%r1)
	cijlh	%r4,0,.L336
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	8
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	j	.L339
.L340:
	aghi	%r1,4
.L339:
	lt	%r3,0(%r1)
	jne	.L340
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L343
.L345:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L343:
	cgije	%r4,0,.L344
	clc	0(4,%r3),0(%r2)
	jne	.L344
	lt	%r1,0(%r2)
	je	.L344
	lt	%r1,0(%r3)
	jne	.L345
.L344:
	cgije	%r4,0,.L348
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L349
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L347
	lhi	%r1,0
.L347:
	llcr	%r2,%r1
	j	.L346
.L348:
	lhi	%r2,0
	j	.L346
.L349:
	lhi	%r2,-1
.L346:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L352
.L354:
	aghi	%r4,-1
	aghi	%r2,4
.L352:
	cgije	%r4,0,.L353
	c	%r3,0(%r2)
	jne	.L354
.L353:
	cgijlh	%r4,0,.L355
	lghi	%r2,0
.L355:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L359
.L361:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L359:
	cgije	%r4,0,.L360
	clc	0(4,%r3),0(%r2)
	je	.L361
.L360:
	cgije	%r4,0,.L364
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L365
	lhi	%r1,1
	l	%r3,0(%r3)
	jl	.L363
	lhi	%r1,0
.L363:
	llcr	%r2,%r1
	j	.L362
.L364:
	lhi	%r2,0
	j	.L362
.L365:
	lhi	%r2,-1
.L362:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lghi	%r1,0
	j	.L368
.L369:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
.L368:
	aghi	%r4,-1
	cgijlh	%r4,-1,.L369
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cgrje	%r2,%r3,.L372
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjhe	%r5,%r1,.L377
	aghi	%r4,-1
	sllg	%r4,%r4,2
	j	.L374
.L375:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	aghi	%r4,-4
.L374:
	cgijlh	%r4,-4,.L375
	j	.L372
.L376:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	j	.L373
.L377:
	lghi	%r1,0
.L373:
	aghi	%r4,-1
	cgijlh	%r4,-1,.L376
.L372:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	j	.L380
.L381:
	aghi	%r1,4
	sty	%r3,-4(%r1)
.L380:
	aghi	%r4,-1
	cgijlh	%r4,-1,.L381
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clgrjhe	%r2,%r3,.L384
	agr	%r2,%r4
	agr	%r3,%r4
	lgr	%r1,%r4
	j	.L385
.L386:
	lcgr	%r5,%r4
	sgrk	%r12,%r2,%r4
	llgc	%r0,-1(%r1,%r12)
	agr	%r5,%r3
	stcy	%r0,-1(%r1,%r5)
	aghi	%r1,-1
.L385:
	cgijlh	%r1,0,.L386
	j	.L383
.L384:
	cgrjlh	%r2,%r3,.L390
	j	.L383
.L389:
	llgc	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
	j	.L388
.L390:
	lghi	%r1,0
.L388:
	cgrjlh	%r1,%r4,.L389
.L383:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB70:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	rllg	%r2,%r2,0(%r3)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE70:
	.size	rotl64, .-rotl64
	.align	8
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB71:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lcr	%r3,%r3
	rllg	%r2,%r2,0(%r3)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE71:
	.size	rotr64, .-rotr64
	.align	8
.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB72:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	rll	%r2,%r2,0(%r3)
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl32, .-rotl32
	.align	8
.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB73:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE73:
	.size	rotr32, .-rotr32
	.align	8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB74:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	sllg	%r4,%r2,0(%r3)
	lhi	%r1,64
	sr	%r1,%r3
	srlg	%r2,%r2,0(%r1)
	ogr	%r2,%r4
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlg	%r4,%r2,0(%r3)
	lhi	%r1,64
	sr	%r1,%r3
	sllg	%r2,%r2,0(%r1)
	ogr	%r2,%r4
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE75:
	.size	rotr_sz, .-rotr_sz
	.align	8
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,16
	sr	%r1,%r3
	srl	%r2,0(%r1)
	or	%r2,%r4
	llghr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r4,%r2,0(%r3)
	lhi	%r1,16
	sr	%r1,%r3
	sll	%r2,0(%r1)
	or	%r2,%r4
	llghr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	8
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,8
	sr	%r1,%r3
	srl	%r2,0(%r1)
	or	%r2,%r4
	llgcr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	8
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r4,%r2,0(%r3)
	lhi	%r1,8
	sr	%r1,%r3
	sll	%r2,0(%r1)
	or	%r2,%r4
	llgcr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	srlg	%r2,%r1,8
	rosbg	%r2,%r1,48,55,8
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r3,%r2,48,128+55,64-8
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,40,47,8
	rosbg	%r1,%r2,32,63,40
	ork	%r2,%r1,%r3
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r3,%r2
	risbgn	%r1,%r3,48,128+55,64-40
	rosbg	%r1,%r3,56,63,8
	risbgn	%r2,%r3,40,128+47,64-24
	ogr	%r1,%r2
	risbgn	%r2,%r3,32,128+39,64-8
	ogr	%r1,%r2
	rosbg	%r1,%r3,24,31,8
	lgr	%r2,%r1
	rosbg	%r2,%r3,16,23,24
	rosbg	%r2,%r3,8,15,40
	rosbg	%r2,%r3,0,7,56
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	8
.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L419
.L422:
	srlk	%r3,%r2,0(%r1)
	tmll	%r3,1
	je	.L420
	ahi	%r1,1
	j	.L421
.L420:
	ahi	%r1,1
.L419:
	cijlh	%r1,32,.L422
	lhi	%r1,0
.L421:
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgije	%r2,0,.L428
	lhi	%r2,1
	j	.L426
.L427:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r2,1
.L426:
	tmll	%r1,1
	je	.L427
	j	.L425
.L428:
	lhi	%r2,0
.L425:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	larl	%r5,.L437
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L438-.L437(%r5)
	jl	.L433
	keb	%f0,.L439-.L437(%r5)
	jnh	.L436
	lhi	%r2,1
	j	.L431
.L433:
	lhi	%r2,1
	j	.L431
.L436:
	lhi	%r2,0
.L431:
	lgfr	%r2,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L437:
.L439:
	.long	2139095039
.L438:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	larl	%r5,.L447
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L448-.L447(%r5)
	jl	.L443
	kdb	%f0,.L449-.L447(%r5)
	jnh	.L446
	lhi	%r2,1
	j	.L441
.L443:
	lhi	%r2,1
	j	.L441
.L446:
	lhi	%r2,0
.L441:
	lgfr	%r2,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L447:
.L449:
	.long	2146435071
	.long	-1
.L448:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	ldgr	%f1,%r11
	.cfi_register 11, 20
	larl	%r5,.L457
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L458-.L457(%r5)
	ld	%f6,.L458-.L457+8(%r5)
	kxbr	%f0,%f4
	jl	.L453
	ld	%f4,.L459-.L457(%r5)
	ld	%f6,.L459-.L457+8(%r5)
	kxbr	%f0,%f4
	jnh	.L456
	lhi	%r2,1
	j	.L451
.L453:
	lhi	%r2,1
	j	.L451
.L456:
	lhi	%r2,0
.L451:
	lgfr	%r2,%r2
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L457:
.L459:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L458:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	gl_isinfl, .-gl_isinfl
	.align	8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB88:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cxfbr	%f0,%r3
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE88:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	larl	%r5,.L468
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L463
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	je	.L463
	cijhe	%r2,0,.L467
	le	%f2,.L469-.L468(%r5)
	j	.L466
.L467:
	le	%f2,.L470-.L468(%r5)
.L466:
	tmll	%r2,1
	je	.L465
	meebr	%f0,%f2
.L465:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L463
	meebr	%f2,%f2
	j	.L466
.L463:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L468:
.L470:
	.long	1073741824
.L469:
	.long	1056964608
	.align	2
.text
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	8
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	larl	%r5,.L477
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L472
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	je	.L472
	cijhe	%r2,0,.L476
	ld	%f2,.L478-.L477(%r5)
	j	.L475
.L476:
	ld	%f2,.L479-.L477(%r5)
.L475:
	tmll	%r2,1
	je	.L474
	mdbr	%f0,%f2
.L474:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L472
	mdbr	%f2,%f2
	j	.L475
.L472:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L477:
.L479:
	.long	1073741824
	.long	0
.L478:
	.long	1071644672
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	ldgr	%f1,%r11
	.cfi_register 11, 20
	larl	%r5,.L486
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	cxbr	%f0,%f0
	jo	.L481
	lxr	%f4,%f0
	axbr	%f4,%f0
	cxbr	%f0,%f4
	je	.L481
	cijhe	%r4,0,.L485
	ld	%f4,.L487-.L486(%r5)
	ld	%f6,.L487-.L486+8(%r5)
	j	.L484
.L485:
	ld	%f4,.L488-.L486(%r5)
	ld	%f6,.L488-.L486+8(%r5)
.L484:
	tmll	%r4,1
	je	.L483
	mxbr	%f0,%f4
.L483:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L481
	mxbr	%f4,%f4
	j	.L484
.L481:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L486:
.L488:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L487:
	.long	1073610752
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE91:
	.size	ldexpl, .-ldexpl
	.align	8
.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	agr	%r4,%r2
	lgr	%r1,%r2
	j	.L490
.L491:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
.L490:
	cgrjlh	%r1,%r4,.L491
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r0,0
	lghi	%r1,0
	lgr	%r5,%r2
	srst	%r1,%r5
	jo	.-4
	j	.L494
.L496:
	aghi	%r3,1
	aghi	%r1,1
	aghi	%r4,-1
.L494:
	cgije	%r4,0,.L495
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	llcr	%r5,%r5
	cijlh	%r5,0,.L496
.L495:
	cgijlh	%r4,0,.L497
	mvi	0(%r1),0
.L497:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lghi	%r2,0
	j	.L500
.L502:
	aghi	%r2,1
.L500:
	cgrje	%r2,%r3,.L501
	llc	%r4,0(%r2,%r1)
	cijlh	%r4,0,.L502
.L501:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	j	.L505
.L507:
	aghi	%r1,1
	llc	%r5,-1(%r1)
	llc	%r4,0(%r2)
	crje	%r5,%r4,.L506
	j	.L508
.L510:
	lgr	%r1,%r3
.L508:
	llc	%r4,0(%r1)
	cijlh	%r4,0,.L507
	aghi	%r2,1
.L505:
	llc	%r1,0(%r2)
	cijlh	%r1,0,.L510
	lghi	%r2,0
.L506:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	8
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lghi	%r2,0
.L514:
	llc	%r4,0(%r1)
	crjlh	%r4,%r3,.L513
	lgr	%r2,%r1
.L513:
	aghi	%r1,1
	llc	%r4,-1(%r1)
	cijlh	%r4,0,.L514
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	8
.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	stmg	%r8,%r15,64(%r15)
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lgr	%r10,%r3
	lhi	%r0,0
	lghi	%r9,0
	lgr	%r1,%r10
	srst	%r9,%r1
	jo	.-4
	slgr	%r9,%r10
	jhe	.L521
	llc	%r8,0(%r10)
	j	.L519
.L520:
	lgr	%r4,%r9
	lgr	%r3,%r10
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L522
	aghi	%r12,1
.L519:
	lgfr	%r3,%r8
	lgr	%r2,%r12
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgijlh	%r2,0,.L520
	j	.L518
.L521:
	lgr	%r2,%r12
	j	.L518
.L522:
	lgr	%r2,%r12
.L518:
	lmg	%r8,%r15,224(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	ldgr	%f6,%r11
	.cfi_register 11, 19
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lzdr	%f4
	kdbr	%f0,%f4
	jnl	.L525
	kdbr	%f2,%f4
	jh	.L527
.L525:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L528
	kdbr	%f2,%f4
	jnl	.L528
.L527:
	lcdbr	%f0,%f0
.L528:
	lgdr	%r11,%f6
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	stmg	%r8,%r15,64(%r15)
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r9,%r4
	lgr	%r10,%r5
	sgrk	%r8,%r3,%r10
	agr	%r8,%r2
	cgije	%r10,0,.L539
	clgrjh	%r10,%r3,.L544
	lgr	%r12,%r2
	j	.L540
.L542:
	llc	%r2,0(%r12)
	llc	%r1,0(%r9)
	crjlh	%r2,%r1,.L541
	aghik	%r2,%r12,1
	aghik	%r4,%r10,-1
	la	%r3,1(%r9)
	brasl	%r14,memcmp@PLT
	cije	%r2,0,.L545
.L541:
	aghi	%r12,1
.L540:
	clgrjle	%r12,%r8,.L542
	lghi	%r2,0
	j	.L539
.L544:
	lghi	%r2,0
	j	.L539
.L545:
	lgr	%r2,%r12
.L539:
	lmg	%r8,%r15,224(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r4
	brasl	%r14,memcpy@PLT
	agr	%r2,%r12
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	larl	%r5,.L569
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L566
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L550
.L566:
	lhi	%r3,0
.L550:
	kdb	%f0,.L570-.L569(%r5)
	jhe	.L561
	j	.L567
.L554:
	ahi	%r1,1
	mdb	%f0,.L571-.L569(%r5)
	j	.L552
.L561:
	lhi	%r1,0
.L552:
	kdb	%f0,.L570-.L569(%r5)
	jhe	.L554
	j	.L555
.L567:
	kdb	%f0,.L571-.L569(%r5)
	jnl	.L568
	lzdr	%f2
	cdbr	%f0,%f2
	jne	.L563
	lhi	%r1,0
	j	.L555
.L558:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L557
.L563:
	lhi	%r1,0
.L557:
	kdb	%f0,.L571-.L569(%r5)
	jl	.L558
	j	.L555
.L568:
	lhi	%r1,0
.L555:
	st	%r1,0(%r2)
	cije	%r3,0,.L559
	lcdbr	%f0,%f0
.L559:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L569:
.L571:
	.long	1071644672
	.long	0
.L570:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	lghi	%r2,0
	j	.L573
.L575:
	tmll	%r1,1
	je	.L574
	agr	%r2,%r3
.L574:
	sllg	%r3,%r3,1
	srlg	%r1,%r1,1
.L573:
	cgijlh	%r1,0,.L575
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r5,33
	lhi	%r1,1
	j	.L578
.L580:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L578:
	clrjhe	%r3,%r2,.L585
	ahi	%r5,-1
	je	.L586
	cijhe	%r3,0,.L580
	lhi	%r5,0
	j	.L582
.L583:
	clrjl	%r2,%r3,.L581
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L581:
	srl	%r1,1
	srlg	%r3,%r3,1
	j	.L582
.L585:
	lhi	%r5,0
	j	.L582
.L586:
	lhi	%r5,0
.L582:
	cijlh	%r1,0,.L583
	cgijlh	%r4,0,.L584
	lr	%r2,%r5
.L584:
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgije	%r2,0,.L591
	sllg	%r2,%r1,8
	flogr	%r2,%r2
	ahi	%r2,-33
	j	.L590
.L591:
	lhi	%r2,7
.L590:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgijhe	%r2,0,.L594
	lghi	%r2,-1
	xgr	%r1,%r2
.L594:
	cgije	%r1,0,.L596
	flogr	%r2,%r1
	ahi	%r2,-1
	j	.L595
.L596:
	lhi	%r2,63
.L595:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L599
.L601:
	tmll	%r2,1
	je	.L600
	ar	%r1,%r3
.L600:
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L599:
	cgijlh	%r2,0,.L601
	llgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r5,%r4,3
	risbg	%r1,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L604
	agrk	%r0,%r3,%r4
	clgrjhe	%r0,%r2,.L605
.L604:
	risbgn	%r0,%r5,32,128+60,3
	lghi	%r5,0
	j	.L606
.L607:
	lg	%r12,0(%r5,%r3)
	stg	%r12,0(%r5,%r2)
	aghi	%r5,8
.L606:
	cgrjlh	%r5,%r0,.L607
	llgfr	%r1,%r1
	j	.L608
.L609:
	llgc	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L608:
	clrjl	%r1,%r4,.L609
	j	.L603
.L611:
	llgc	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L605:
	ahik	%r1,%r4,-1
	llgfr	%r4,%r1
	cijlh	%r1,-1,.L611
.L603:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r1,%r4,1
	clgrjl	%r2,%r3,.L614
	agrk	%r5,%r3,%r4
	clgrjhe	%r5,%r2,.L615
.L614:
	risbgn	%r5,%r1,32,128+62,1
	lghi	%r1,0
	j	.L616
.L617:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L616:
	cgrjlh	%r1,%r5,.L617
	tmll	%r4,1
	je	.L613
	ahi	%r4,-1
	llgfr	%r1,%r4
	algfr	%r3,%r4
	llgc	%r3,0(%r3)
	stc	%r3,0(%r1,%r2)
	j	.L613
.L619:
	llgc	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L615:
	ahik	%r1,%r4,-1
	llgfr	%r4,%r1
	cijlh	%r1,-1,.L619
.L613:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r5,%r4,2
	risbg	%r1,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L622
	agrk	%r0,%r3,%r4
	clgrjhe	%r0,%r2,.L623
.L622:
	risbgn	%r0,%r5,32,128+61,2
	lghi	%r5,0
	j	.L624
.L625:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	aghi	%r5,4
.L624:
	cgrjlh	%r5,%r0,.L625
	llgfr	%r1,%r1
	j	.L626
.L627:
	llgc	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L626:
	clrjl	%r1,%r4,.L627
	j	.L621
.L629:
	llgc	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
.L623:
	ahik	%r1,%r4,-1
	llgfr	%r4,%r1
	cijlh	%r1,-1,.L629
.L621:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	8
.globl __modi
	.type	__modi, @function
__modi:
.LFB110:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r3
	lgr	%r5,%r2
	dsgr	%r4,%r1
	lgr	%r2,%r4
	lgr	%r3,%r5
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE110:
	.size	__modi, .-__modi
	.align	8
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB111:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdlfbr	%f0,0,%r2,0
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__uitod, .-__uitod
	.align	8
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB112:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	celfbr	%f0,0,%r2,0
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__uitof, .-__uitof
	.align	8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB113:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdlgbr	%f0,0,%r2,0
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	celgbr	%f0,0,%r2,0
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE114:
	.size	__ulltof, .-__ulltof
	.align	8
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB115:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r5,%r2
	lghi	%r4,0
	dlgr	%r4,%r3
	llgfr	%r2,%r4
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE115:
	.size	__umodi, .-__umodi
	.align	8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L644
.L646:
	lhi	%r3,15
	sr	%r3,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L645
	ahi	%r1,1
.L644:
	cijlh	%r1,16,.L646
.L645:
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L649
.L651:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L650
	ahi	%r1,1
.L649:
	cijlh	%r1,16,.L651
.L650:
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	larl	%r5,.L659
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L660-.L659(%r5)
	jnhe	.L658
	seb	%f0,.L660-.L659(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	j	.L656
.L658:
	cgebr	%r2,5,%f0
.L656:
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L659:
.L660:
	.long	1191182336
	.align	2
.text
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lhi	%r3,0
	j	.L662
.L664:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	je	.L663
	ahi	%r1,1
.L663:
	ahi	%r3,1
.L662:
	cijlh	%r3,16,.L664
	risbg	%r2,%r1,63,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	lhi	%r3,0
	j	.L667
.L669:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	je	.L668
	ahi	%r1,1
.L668:
	ahi	%r3,1
.L667:
	cijlh	%r3,16,.L669
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB121:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r1,0
	j	.L672
.L674:
	tmll	%r2,1
	je	.L673
	ar	%r1,%r3
.L673:
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L672:
	cgijlh	%r2,0,.L674
	llgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgije	%r2,0,.L681
	lhi	%r2,0
	j	.L678
.L680:
	tmll	%r3,1
	je	.L679
	ar	%r2,%r1
.L679:
	risbgn	%r1,%r1,32,128+62,1
	srlg	%r3,%r3,1
.L678:
	cgijlh	%r3,0,.L680
	j	.L677
.L681:
	lhi	%r2,0
.L677:
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r5,33
	lhi	%r1,1
	j	.L684
.L686:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L684:
	clrjhe	%r3,%r2,.L691
	ahi	%r5,-1
	je	.L692
	cijhe	%r3,0,.L686
	lhi	%r5,0
	j	.L688
.L689:
	clrjl	%r2,%r3,.L687
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L687:
	srl	%r1,1
	srlg	%r3,%r3,1
	j	.L688
.L691:
	lhi	%r5,0
	j	.L688
.L692:
	lhi	%r5,0
.L688:
	cijlh	%r1,0,.L689
	cgijlh	%r4,0,.L690
	lr	%r2,%r5
.L690:
	llgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	kebr	%f0,%f2
	jl	.L697
	jh	.L698
	lhi	%r2,0
	j	.L696
.L697:
	lhi	%r2,-1
	j	.L696
.L698:
	lhi	%r2,1
.L696:
	lgfr	%r2,%r2
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	kdbr	%f0,%f2
	jl	.L702
	jh	.L703
	lhi	%r2,0
	j	.L701
.L702:
	lhi	%r2,-1
	j	.L701
.L703:
	lhi	%r2,1
.L701:
	lgfr	%r2,%r2
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	msgr	%r2,%r3
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB127:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	msgr	%r2,%r3
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE127:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cijhe	%r3,0,.L716
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r5,1
	j	.L710
.L716:
	lhi	%r5,0
.L710:
	lhi	%r4,33
	lhi	%r1,0
	j	.L711
.L714:
	tmll	%r3,1
	je	.L712
	ar	%r1,%r2
.L712:
	sll	%r2,1
	lgfr	%r2,%r2
	sra	%r3,1
	lgfr	%r3,%r3
.L711:
	cgije	%r3,0,.L713
	ahi	%r4,-1
	tml	%r4,255
	jne	.L714
.L713:
	cije	%r5,0,.L715
	lcr	%r1,%r1
.L715:
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgijhe	%r2,0,.L723
	lcgr	%r1,%r1
	lhi	%r12,1
	j	.L720
.L723:
	lhi	%r12,0
.L720:
	cgijhe	%r3,0,.L721
	lcgr	%r3,%r3
	xilf	%r12,1
.L721:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	cije	%r12,0,.L722
	lcgr	%r2,%r2
.L722:
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	cgijhe	%r2,0,.L729
	lcgr	%r1,%r1
	lhi	%r12,1
	j	.L726
.L729:
	lhi	%r12,0
.L726:
	cgijhe	%r3,0,.L727
	lcgr	%r3,%r3
.L727:
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	cije	%r12,0,.L728
	lcgr	%r2,%r2
.L728:
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r5,17
	lhi	%r1,1
	j	.L732
.L734:
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
.L732:
	clrjhe	%r3,%r2,.L739
	ahi	%r5,-1
	je	.L740
	tmll	%r3,32768
	je	.L734
	lhi	%r5,0
	j	.L736
.L737:
	clrjl	%r2,%r3,.L735
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r5,%r1
.L735:
	risbgn	%r1,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
	j	.L736
.L739:
	lhi	%r5,0
	j	.L736
.L740:
	lhi	%r5,0
.L736:
	llhr	%r0,%r1
	cijlh	%r0,0,.L737
	cgijlh	%r4,0,.L738
	lr	%r2,%r5
.L738:
	llghr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lhi	%r5,65
	lghi	%r1,1
	j	.L744
.L746:
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
.L744:
	clgrjhe	%r3,%r2,.L751
	ahi	%r5,-1
	je	.L752
	tmlh	%r3,32768
	je	.L746
	lghi	%r5,0
	j	.L748
.L749:
	clgrjl	%r2,%r3,.L747
	sgr	%r2,%r3
	ogr	%r5,%r1
.L747:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	j	.L748
.L751:
	lghi	%r5,0
	j	.L748
.L752:
	lghi	%r5,0
.L748:
	cgijlh	%r1,0,.L749
	cgijlh	%r4,0,.L750
	lgr	%r2,%r5
.L750:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	tmll	%r3,32
	je	.L756
	lghi	%r2,0
	sll	%r1,4064(%r3)
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	j	.L758
.L756:
	cgije	%r3,0,.L758
	lr	%r4,%r1
	lr	%r5,%r3
	sllk	%r0,%r4,0(%r5)
	lghi	%r2,0
	lr	%r2,%r0
	srag	%r1,%r1,32
	sll	%r1,0(%r5)
	lhi	%r5,32
	srk	%r3,%r5,%r3
	srl	%r4,0(%r3)
	or	%r4,%r1
	risbgn	%r2,%r4,0,0+32-1,64-0-32
.L758:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	lgr	%r12,%r0
	lgr	%r13,%r1
	tmll	%r4,64
	je	.L762
	lghi	%r0,0
	lghi	%r1,0
	sllg	%r3,%r13,4032(%r4)
	lgr	%r0,%r3
	j	.L763
.L762:
	cgijlh	%r4,0,.L764
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	j	.L765
.L764:
	lgr	%r3,%r13
	lr	%r5,%r4
	lghi	%r0,0
	lghi	%r1,0
	sllg	%r1,%r3,0(%r5)
	sllg	%r5,%r12,0(%r5)
	lhi	%r12,64
	srk	%r4,%r12,%r4
	srlg	%r3,%r3,0(%r4)
	ogr	%r3,%r5
	lgr	%r0,%r3
.L763:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L765:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	tmll	%r3,32
	je	.L768
	srag	%r1,%r1,32
	srak	%r4,%r1,31
	lghi	%r2,0
	risbgn	%r2,%r4,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r2,%r1
	j	.L770
.L768:
	cgije	%r3,0,.L770
	srag	%r4,%r1,32
	srak	%r5,%r4,0(%r3)
	lghi	%r2,0
	risbgn	%r2,%r5,0,0+32-1,64-0-32
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srlk	%r3,%r1,0(%r3)
	or	%r4,%r3
	lr	%r2,%r4
.L770:
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	lgr	%r12,%r0
	lgr	%r13,%r1
	tmll	%r4,64
	je	.L774
	lghi	%r0,0
	lghi	%r1,0
	srag	%r0,%r12,63
	srag	%r12,%r12,4032(%r4)
	lgr	%r1,%r12
	j	.L775
.L774:
	cgijlh	%r4,0,.L776
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	j	.L777
.L776:
	lgr	%r3,%r12
	lghi	%r0,0
	lghi	%r1,0
	srag	%r0,%r3,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r3,%r3,0(%r5)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
.L775:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L777:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r3,%r2
	risbgn	%r5,%r3,48,128+55,64-40
	risbgn	%r4,%r3,40,128+47,64-24
	risbgn	%r2,%r3,32,128+39,64-8
	sllg	%r1,%r3,56
	rosbg	%r1,%r3,56,63,8
	ogr	%r1,%r5
	ogr	%r1,%r4
	ogr	%r1,%r2
	rosbg	%r1,%r3,24,31,8
	lgr	%r2,%r1
	rosbg	%r2,%r3,16,23,24
	rosbg	%r2,%r3,8,15,40
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r3,%r2,48,128+55,64-8
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,56,63,40
	or	%r1,%r3
	rosbg	%r1,%r2,40,47,8
	llgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	llill	%r1,65535
	clrjh	%r2,%r1,.L788
	lhi	%r1,16
	j	.L784
.L788:
	lhi	%r1,0
.L784:
	lhi	%r3,16
	sr	%r3,%r1
	srl	%r2,0(%r3)
	tml	%r2,65280
	jne	.L789
	lhi	%r3,8
	j	.L785
.L789:
	lhi	%r3,0
.L785:
	lhi	%r4,8
	sr	%r4,%r3
	srl	%r2,0(%r4)
	ar	%r1,%r3
	tml	%r2,240
	jne	.L790
	lhi	%r3,4
	j	.L786
.L790:
	lhi	%r3,0
.L786:
	lhi	%r4,4
	sr	%r4,%r3
	srl	%r2,0(%r4)
	ar	%r1,%r3
	tml	%r2,12
	jne	.L791
	lhi	%r3,2
	j	.L787
.L791:
	lhi	%r3,0
.L787:
	lhi	%r4,2
	srk	%r5,%r4,%r3
	srl	%r2,0(%r5)
	ar	%r1,%r3
	risbg	%r3,%r2,62,128+62,0
	ahi	%r3,-1
	risbgn	%r3,%r3,64-1,128+63,32+1
	llcr	%r3,%r3
	sr	%r4,%r2
	lr	%r2,%r3
	msr	%r2,%r4
	ar	%r1,%r2
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r12,0(%r2)
	lg	%r13,8(%r2)
	lgr	%r1,%r12
	lpgr	%r2,%r1
	aghi	%r2,-1
	srag	%r2,%r2,63
	lgfr	%r2,%r2
	lghi	%r3,-1
	xgrk	%r4,%r2,%r3
	ngr	%r4,%r1
	ngrk	%r1,%r2,%r13
	ogr	%r4,%r1
	flogr	%r4,%r4
	nilf	%r2,64
	ar	%r2,%r4
	lgfr	%r2,%r2
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r4,%r2,64-32,128+63,0+32
	risbgn	%r1,%r3,64-32,128+63,0+32
	crjl	%r4,%r1,.L797
	crjh	%r4,%r1,.L798
	clrjh	%r3,%r2,.L799
	clrjl	%r3,%r2,.L800
	lhi	%r2,1
	j	.L796
.L797:
	lhi	%r2,0
	j	.L796
.L798:
	lhi	%r2,2
	j	.L796
.L799:
	lhi	%r2,0
	j	.L796
.L800:
	lhi	%r2,2
.L796:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__cmpdi2@PLT
	ahi	%r2,-1
	lgfr	%r2,%r2
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r2)
	lg	%r1,8(%r2)
	lg	%r4,0(%r3)
	lg	%r5,8(%r3)
	cgrjh	%r4,%r0,.L806
	cgrjl	%r4,%r0,.L807
	clgrjh	%r5,%r1,.L808
	clgrjl	%r5,%r1,.L809
	lhi	%r2,1
	j	.L805
.L806:
	lhi	%r2,0
	j	.L805
.L807:
	lhi	%r2,2
	j	.L805
.L808:
	lhi	%r2,0
	j	.L805
.L809:
	lhi	%r2,2
.L805:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	tml	%r2,65535
	jne	.L816
	lhi	%r1,16
	j	.L812
.L816:
	lhi	%r1,0
.L812:
	srl	%r2,0(%r1)
	tml	%r2,255
	jne	.L817
	lhi	%r3,8
	j	.L813
.L817:
	lhi	%r3,0
.L813:
	srl	%r2,0(%r3)
	ar	%r1,%r3
	tmll	%r2,15
	jne	.L818
	lhi	%r3,4
	j	.L814
.L818:
	lhi	%r3,0
.L814:
	srl	%r2,0(%r3)
	ar	%r1,%r3
	tmll	%r2,3
	jne	.L819
	lhi	%r3,2
	j	.L815
.L819:
	lhi	%r3,0
.L815:
	srl	%r2,0(%r3)
	nilf	%r2,3
	ar	%r1,%r3
	risbg	%r4,%r2,63,128+63,0
	xilf	%r4,1
	srl	%r2,1
	lhi	%r3,2
	srk	%r2,%r3,%r2
	lcr	%r4,%r4
	nr	%r2,%r4
	ar	%r1,%r2
	lgfr	%r2,%r1
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	lgr	%r5,%r3
	lpgr	%r1,%r5
	aghi	%r1,-1
	srag	%r1,%r1,63
	lgfr	%r1,%r1
	ngr	%r2,%r1
	lghi	%r3,-1
	xgrk	%r4,%r1,%r3
	ngr	%r4,%r5
	ogr	%r4,%r2
	lcgr	%r2,%r4
	ngr	%r4,%r2
	flogr	%r4,%r4
	lghi	%r2,63
	sr	%r2,%r4
	nilf	%r1,64
	ar	%r2,%r1
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r12,0(%r2)
	lg	%r13,8(%r2)
	cgijlh	%r13,0,.L824
	cgije	%r12,0,.L826
	lcgr	%r1,%r12
	ngrk	%r4,%r12,%r1
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	j	.L825
.L824:
	lcgr	%r4,%r13
	ngr	%r4,%r13
	flogr	%r4,%r4
	lhi	%r2,64
	sr	%r2,%r4
	j	.L825
.L826:
	lhi	%r2,0
.L825:
	lgfr	%r2,%r2
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r2
	tmll	%r3,32
	je	.L829
	lghi	%r2,0
	iihf	%r2,0
	risbgn	%r1,%r1,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r2,%r1
	j	.L831
.L829:
	cgije	%r3,0,.L831
	risbgn	%r4,%r1,64-32,128+63,0+32
	lr	%r12,%r3
	srl	%r4,0(%r12)
	lghi	%r2,0
	risbgn	%r2,%r4,0,0+32-1,64-0-32
	risbgn	%r4,%r1,64-32,128+63,0+32
	lhi	%r5,32
	srk	%r3,%r5,%r3
	sllk	%r3,%r4,0(%r3)
	srl	%r1,0(%r12)
	or	%r1,%r3
	lr	%r2,%r1
.L831:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	ldgr	%f6,%r8
	.cfi_register 8, 19
	ldgr	%f4,%r9
	.cfi_register 9, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	lgr	%r8,%r0
	lgr	%r9,%r1
	tmll	%r4,64
	je	.L835
	lghi	%r0,0
	lghi	%r1,0
	srlg	%r1,%r8,4032(%r4)
	j	.L836
.L835:
	cgijlh	%r4,0,.L837
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	j	.L838
.L837:
	lgr	%r5,%r8
	lr	%r3,%r4
	lghi	%r0,0
	lghi	%r1,0
	srlg	%r0,%r5,0(%r3)
	lhi	%r12,64
	srk	%r4,%r12,%r4
	sllg	%r5,%r5,0(%r4)
	srlg	%r3,%r9,0(%r3)
	ogrk	%r1,%r5,%r3
.L836:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L838:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	lgdr	%r9,%f4
	.cfi_restore 9
	lgdr	%r8,%f6
	.cfi_restore 8
	br	%r14
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r12,%r2
	lgr	%r4,%r3
	risbg	%r5,%r12,48,128+63,0
	risbg	%r0,%r4,48,128+63,0
	lr	%r1,%r5
	msr	%r1,%r0
	lghi	%r2,0
	lr	%r2,%r1
	lr	%r3,%r2
	srlk	%r1,%r3,16
	nilh	%r3,0
	lr	%r2,%r3
	srlk	%r3,%r12,16
	msr	%r0,%r3
	ar	%r1,%r0
	sllk	%r0,%r1,16
	ar	%r0,%r2
	lr	%r2,%r0
	srl	%r1,16
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	lr	%r0,%r2
	srlk	%r1,%r0,16
	nilh	%r0,0
	lr	%r2,%r0
	srl	%r4,16
	msr	%r5,%r4
	ar	%r1,%r5
	sllk	%r5,%r1,16
	ar	%r5,%r2
	lr	%r2,%r5
	srag	%r5,%r2,32
	srl	%r1,16
	ar	%r1,%r5
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srag	%r1,%r2,32
	msr	%r3,%r4
	ar	%r3,%r1
	risbgn	%r2,%r3,0,0+32-1,64-0-32
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	stmg	%r8,%r15,64(%r15)
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r8,%r2
	lgr	%r10,%r3
	lr	%r9,%r8
	lr	%r12,%r10
	llgfr	%r3,%r12
	llgfr	%r2,%r9
	brasl	%r14,__muldsi3@PLT
	lgr	%r1,%r2
	lgr	%r2,%r1
	srag	%r1,%r1,32
	srag	%r8,%r8,32
	msr	%r12,%r8
	srag	%r10,%r10,32
	msr	%r9,%r10
	ar	%r12,%r9
	ar	%r12,%r1
	risbgn	%r2,%r12,0,0+32-1,64-0-32
	lmg	%r8,%r15,224(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbg	%r0,%r3,32,128+63,0
	risbg	%r10,%r4,32,128+63,0
	lgr	%r5,%r0
	msgr	%r5,%r10
	lghi	%r12,0
	lghi	%r13,0
	lgr	%r13,%r5
	srlg	%r1,%r5,32
	nihf	%r5,0
	lgr	%r13,%r5
	srlg	%r3,%r3,32
	msgr	%r10,%r3
	agr	%r1,%r10
	sllg	%r10,%r1,32
	agrk	%r13,%r10,%r5
	srlg	%r1,%r1,32
	lgr	%r12,%r1
	lgr	%r5,%r13
	srlg	%r1,%r5,32
	nihf	%r5,0
	lgr	%r13,%r5
	srlg	%r4,%r4,32
	msgr	%r0,%r4
	agr	%r1,%r0
	sllg	%r0,%r1,32
	agrk	%r13,%r0,%r5
	srlg	%r1,%r1,32
	agr	%r1,%r12
	lgr	%r12,%r1
	msgr	%r3,%r4
	agr	%r3,%r1
	lgr	%r12,%r3
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	lgdr	%r10,%f6
	.cfi_restore 10
	br	%r14
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	8
.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	stmg	%r6,%r15,48(%r15)
	.cfi_offset 6, -112
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r10,%r2
	lg	%r6,0(%r3)
	lg	%r7,8(%r3)
	lg	%r8,0(%r4)
	lg	%r9,8(%r4)
	lgr	%r13,%r7
	lgr	%r12,%r9
	lgr	%r4,%r9
	lgr	%r3,%r7
	la	%r2,160(%r11)
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	lgr	%r4,%r2
	lgr	%r5,%r3
	msgr	%r12,%r6
	msgr	%r8,%r13
	agr	%r12,%r8
	agr	%r12,%r2
	lgr	%r4,%r12
	stg	%r4,0(%r10)
	stg	%r5,8(%r10)
	lgr	%r2,%r10
	lmg	%r6,%r15,224(%r11)
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
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE152:
	.size	__multi3, .-__multi3
	.align	8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB153:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lcgr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE153:
	.size	__negdi2, .-__negdi2
	.align	8
.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	lghi	%r4,0
	lghi	%r5,0
	slgr	%r5,%r1
	slbgr	%r4,%r0
	stg	%r4,0(%r2)
	stg	%r5,8(%r2)
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srag	%r1,%r2,32
	xr	%r2,%r1
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	lhi	%r1,27030
	srak	%r2,%r1,0(%r2)
	risbg	%r2,%r2,63,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	xgr	%r2,%r3
	srag	%r1,%r2,32
	xr	%r2,%r1
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	lhi	%r1,27030
	srak	%r2,%r1,0(%r2)
	risbg	%r2,%r2,63,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	lhi	%r1,27030
	srak	%r2,%r1,0(%r2)
	risbg	%r2,%r2,63,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	larl	%r5,.L859
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlg	%r1,%r2,1
	ng	%r1,.L860-.L859(%r5)
	sgrk	%r1,%r2,%r1
	srlg	%r2,%r1,2
	ng	%r2,.L861-.L859(%r5)
	ng	%r1,.L861-.L859(%r5)
	agr	%r1,%r2
	srlg	%r2,%r1,4
	agr	%r1,%r2
	ng	%r1,.L862-.L859(%r5)
	risbgn	%r2,%r1,64-32,128+63,0+32
	ar	%r1,%r2
	srlk	%r2,%r1,16
	ar	%r1,%r2
	srlk	%r2,%r1,8
	ar	%r2,%r1
	risbg	%r2,%r2,57,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L859:
.L862:
	.quad	1085102592571150095
.L861:
	.quad	3689348814741910323
.L860:
	.quad	6148914691236517205
	.align	2
.text
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r1,%r2,1
	nilf	%r1,1431655765
	sr	%r2,%r1
	srlk	%r1,%r2,2
	nilf	%r1,858993459
	nilf	%r2,858993459
	ar	%r2,%r1
	srlk	%r1,%r2,4
	ar	%r2,%r1
	nilf	%r2,252645135
	srlk	%r1,%r2,16
	ar	%r2,%r1
	srlk	%r1,%r2,8
	ar	%r2,%r1
	risbg	%r2,%r2,58,128+63,0
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align	8
.LC19:
	.quad	6148914691236517205
	.align	8
.LC20:
	.quad	3689348814741910323
	.align	8
.LC21:
	.quad	1085102592571150095
.text
	.align	8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	lghi	%r2,0
	lghi	%r3,0
	srlg	%r3,%r5,1
	rosbg	%r3,%r4,0,0,63
	srlg	%r2,%r4,1
	lghi	%r0,0
	lghi	%r1,0
	lgrl	%r12,.LC19
	ngrk	%r0,%r2,%r12
	ngrk	%r1,%r3,%r12
	lgr	%r2,%r4
	lgr	%r3,%r5
	slgr	%r3,%r1
	slbgr	%r2,%r0
	lghi	%r4,0
	lghi	%r5,0
	srlg	%r5,%r3,2
	rosbg	%r5,%r2,0,1,62
	srlg	%r4,%r2,2
	lghi	%r0,0
	lghi	%r1,0
	lgrl	%r12,.LC20
	ngrk	%r0,%r4,%r12
	ngrk	%r1,%r5,%r12
	lghi	%r4,0
	lghi	%r5,0
	ngrk	%r4,%r2,%r12
	ngrk	%r5,%r3,%r12
	lgr	%r2,%r0
	lgr	%r3,%r1
	algr	%r3,%r5
	alcgr	%r2,%r4
	lghi	%r4,0
	lghi	%r5,0
	srlg	%r5,%r3,4
	rosbg	%r5,%r2,0,3,60
	srlg	%r4,%r2,4
	algr	%r5,%r3
	alcgr	%r4,%r2
	lgrl	%r1,.LC21
	ngrk	%r2,%r4,%r1
	ngrk	%r3,%r5,%r1
	lghi	%r4,0
	lghi	%r5,0
	lgr	%r5,%r2
	lghi	%r4,0
	agrk	%r2,%r5,%r3
	risbgn	%r1,%r2,64-32,128+63,0+32
	ar	%r1,%r2
	srlk	%r2,%r1,16
	ar	%r1,%r2
	srlk	%r2,%r1,8
	ar	%r2,%r1
	llgcr	%r2,%r2
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	larl	%r5,.L873
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r3,%r2,64-1,128+63,32+1
	llcr	%r3,%r3
	ld	%f2,.L874-.L873(%r5)
.L870:
	tmll	%r2,1
	je	.L868
	mdbr	%f2,%f0
.L868:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L869
	mdbr	%f0,%f0
	j	.L870
.L869:
	cije	%r3,0,.L872
	ld	%f0,.L874-.L873(%r5)
	ddbr	%f0,%f2
	j	.L871
.L872:
	ldr	%f0,%f2
.L871:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L873:
.L874:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	ldgr	%f4,%r11
	.cfi_register 11, 18
	larl	%r5,.L881
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r3,%r2,64-1,128+63,32+1
	llcr	%r3,%r3
	le	%f2,.L882-.L881(%r5)
.L878:
	tmll	%r2,1
	je	.L876
	meebr	%f2,%f0
.L876:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L877
	meebr	%f0,%f0
	j	.L878
.L877:
	cije	%r3,0,.L880
	le	%f0,.L882-.L881(%r5)
	debr	%f0,%f2
	j	.L879
.L880:
	ler	%f0,%f2
.L879:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L881:
.L882:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	risbgn	%r4,%r2,64-32,128+63,0+32
	risbgn	%r1,%r3,64-32,128+63,0+32
	clrjl	%r4,%r1,.L885
	clrjh	%r4,%r1,.L886
	clrjh	%r3,%r2,.L887
	clrjl	%r3,%r2,.L888
	lhi	%r2,1
	j	.L884
.L885:
	lhi	%r2,0
	j	.L884
.L886:
	lhi	%r2,2
	j	.L884
.L887:
	lhi	%r2,0
	j	.L884
.L888:
	lhi	%r2,2
.L884:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	brasl	%r14,__ucmpdi2@PLT
	ahi	%r2,-1
	lgfr	%r2,%r2
	lmg	%r11,%r15,248(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa 15, 160
	br	%r14
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r0,0(%r2)
	lg	%r1,8(%r2)
	lg	%r4,0(%r3)
	lg	%r5,8(%r3)
	clgrjh	%r4,%r0,.L894
	clgrjl	%r4,%r0,.L895
	clgrjh	%r5,%r1,.L896
	clgrjl	%r5,%r1,.L897
	lhi	%r2,1
	j	.L893
.L894:
	lhi	%r2,0
	j	.L893
.L895:
	lhi	%r2,2
	j	.L893
.L896:
	lhi	%r2,0
	j	.L893
.L897:
	lhi	%r2,2
.L893:
	lgfr	%r2,%r2
	lgdr	%r11,%f0
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
