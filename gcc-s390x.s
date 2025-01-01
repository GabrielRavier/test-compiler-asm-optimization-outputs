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
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
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
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clgrjle	%r2,%r3,.L6
	agrk	%r5,%r3,%r4
	agrk	%r0,%r2,%r4
	lgr	%r1,%r4
	aghik	%r3,%r4,1
	j	.L7
.L8:
	sgrk	%r10,%r5,%r4
	sgrk	%r12,%r0,%r4
	icy	%r10,-1(%r1,%r10)
	stcy	%r10,-1(%r1,%r12)
	aghi	%r1,-1
.L7:
	brctg	%r3,.L8
	j	.L9
.L6:
	cgrjlh	%r2,%r3,.L12
	j	.L9
.L11:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	j	.L10
.L12:
	lghi	%r1,0
	aghi	%r4,1
.L10:
	brctg	%r4,.L11
.L9:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	lgdr	%r10,%f4
	.cfi_restore 10
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
	aghik	%r1,%r5,1
	j	.L15
.L17:
	aghi	%r5,-1
	aghi	%r3,1
	aghi	%r2,1
.L15:
	brctg	%r1,.L20
	j	.L16
.L20:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cgrjlh	%r0,%r4,.L17
.L16:
	aghi	%r2,1
	ltgr	%r5,%r5
	lghi	%r1,0
	locgre	%r2,%r1
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
	aghik	%r1,%r4,1
	j	.L23
.L25:
	aghi	%r2,1
	aghi	%r4,-1
.L23:
	brctg	%r1,.L28
	j	.L24
.L28:
	llc	%r5,0(%r2)
	crjlh	%r5,%r3,.L25
.L24:
	ltgr	%r4,%r4
	lghi	%r1,0
	locgre	%r2,%r1
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
	aghik	%r1,%r4,1
	j	.L31
.L33:
	aghi	%r4,-1
	aghi	%r2,1
	aghi	%r3,1
.L31:
	brctg	%r1,.L36
	j	.L32
.L36:
	llc	%r0,0(%r2)
	llc	%r5,0(%r3)
	crje	%r0,%r5,.L33
.L32:
	cgije	%r4,0,.L35
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	j	.L34
.L35:
	lhi	%r2,0
.L34:
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
	aghi	%r4,1
	j	.L39
.L40:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L39:
	brctg	%r4,.L40
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
	lay	%r5,-1(%r4)
	la	%r1,1(%r4)
	j	.L43
.L45:
	llc	%r4,0(%r5,%r2)
	aghik	%r0,%r5,-1
	crjlh	%r4,%r3,.L46
	agr	%r2,%r5
	j	.L44
.L46:
	lgr	%r5,%r0
.L43:
	brctg	%r1,.L45
	lghi	%r2,0
.L44:
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
	lgr	%r1,%r2
	aghi	%r4,1
	j	.L49
.L50:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L49:
	brctg	%r4,.L50
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
	j	.L53
.L54:
	aghi	%r3,1
	aghi	%r2,1
.L53:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L54
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
	j	.L57
.L59:
	aghi	%r2,1
.L57:
	llc	%r1,0(%r2)
	cije	%r1,0,.L58
	crjlh	%r1,%r3,.L59
.L58:
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
.L63:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L62
	aghi	%r2,1
	llc	%r1,-1(%r2)
	cijlh	%r1,0,.L63
	lghi	%r2,0
.L62:
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
	j	.L68
.L70:
	aghi	%r2,1
	aghi	%r3,1
.L68:
	llc	%r4,0(%r2)
	llc	%r1,0(%r3)
	crjlh	%r4,%r1,.L69
	cijlh	%r4,0,.L70
.L69:
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
	j	.L73
.L74:
	aghi	%r1,1
.L73:
	llc	%r3,0(%r1)
	cijlh	%r3,0,.L74
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
	cgije	%r4,0,.L81
	j	.L78
.L80:
	aghi	%r2,1
	aghi	%r3,1
.L78:
	llc	%r4,0(%r2)
	cije	%r4,0,.L79
	llc	%r4,0(%r3)
	cije	%r4,0,.L79
	brctg	%r1,.L82
	j	.L79
.L82:
	llc	%r5,0(%r2)
	llc	%r4,0(%r3)
	crje	%r5,%r4,.L80
.L79:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	j	.L77
.L81:
	lhi	%r2,0
.L77:
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
	srlg	%r5,%r4,1
	aghik	%r1,%r5,1
	ltgr	%r4,%r4
	lghi	%r4,1
	locgrnhe	%r1,%r4
	j	.L85
.L86:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L85:
	brctg	%r1,.L86
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
	cije	%r2,32,.L95
	chi	%r2,9
	lhi	%r2,0
	lhi	%r1,1
	locre	%r2,%r1
	j	.L94
.L95:
	lhi	%r2,1
.L94:
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
	clijle	%r2,31,.L100
	chi	%r2,127
	lhi	%r2,0
	lhi	%r1,1
	locre	%r2,%r1
	j	.L99
.L100:
	lhi	%r2,1
.L99:
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
	cije	%r2,32,.L113
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	j	.L112
.L113:
	lhi	%r2,1
.L112:
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
	clijle	%r2,31,.L120
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L121
	ahik	%r1,%r2,-8232
	clijle	%r1,1,.L122
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	j	.L119
.L120:
	lhi	%r2,1
	j	.L119
.L121:
	lhi	%r2,1
	j	.L119
.L122:
	lhi	%r2,1
.L119:
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
	clijh	%r2,254,.L128
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L129
.L128:
	lhi	%r1,8231
	clrjle	%r2,%r1,.L130
	ahik	%r1,%r2,-8234
	llill	%r3,47061
	clrjle	%r1,%r3,.L131
	slfi	%r1,49110
	lhi	%r3,8184
	clrjle	%r1,%r3,.L132
	ahi	%r1,-8188
	iilf	%r3,1048579
	clrjh	%r1,%r3,.L133
	nilf	%r2,65534
	cfi	%r2,65534
	lhi	%r2,0
	lhi	%r1,1
	locrne	%r2,%r1
	j	.L129
.L130:
	lhi	%r2,1
	j	.L129
.L131:
	lhi	%r2,1
	j	.L129
.L132:
	lhi	%r2,1
	j	.L129
.L133:
	lhi	%r2,0
.L129:
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
	clijle	%r1,9,.L138
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	j	.L137
.L138:
	lhi	%r2,1
.L137:
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
	jo	.L144
	cdbr	%f2,%f2
	jo	.L147
	kdbr	%f0,%f2
	jnh	.L150
	sdbr	%f0,%f2
	j	.L144
.L147:
	ldr	%f0,%f2
	j	.L144
.L150:
	lzdr	%f0
.L144:
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
	jo	.L153
	cebr	%f2,%f2
	jo	.L156
	kebr	%f0,%f2
	jnh	.L159
	sebr	%f0,%f2
	j	.L153
.L156:
	ler	%f0,%f2
	j	.L153
.L159:
	lzer	%f0
.L153:
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
	jo	.L165
	cdbr	%f2,%f2
	jo	.L162
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L163
	tcdb	%f0,1365
	je	.L162
	ldr	%f0,%f2
	j	.L162
.L163:
	kdbr	%f0,%f2
	jnl	.L162
	ldr	%f0,%f2
	j	.L162
.L165:
	ldr	%f0,%f2
.L162:
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
	jo	.L176
	cebr	%f2,%f2
	jo	.L173
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L174
	tceb	%f0,1365
	je	.L173
	ler	%f0,%f2
	j	.L173
.L174:
	kebr	%f0,%f2
	jnl	.L173
	ler	%f0,%f2
	j	.L173
.L176:
	ler	%f0,%f2
.L173:
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
	jno	.L184
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	j	.L183
.L184:
	cxbr	%f4,%f4
	jno	.L186
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L183
.L186:
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L187
	tcxb	%f0,1365
	je	.L188
	lxr	%f0,%f4
.L188:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L183
.L187:
	kxbr	%f0,%f4
	jnl	.L189
	lxr	%f0,%f4
.L189:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L183:
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
	jo	.L200
	cdbr	%f2,%f2
	jo	.L197
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L198
	tcdb	%f0,1365
	je	.L202
	j	.L197
.L198:
	kdbr	%f0,%f2
	jnl	.L205
	j	.L197
.L200:
	ldr	%f0,%f2
	j	.L197
.L202:
	ldr	%f0,%f2
	j	.L197
.L205:
	ldr	%f0,%f2
.L197:
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
	jo	.L211
	cebr	%f2,%f2
	jo	.L208
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L209
	tceb	%f0,1365
	je	.L213
	j	.L208
.L209:
	kebr	%f0,%f2
	jnl	.L216
	j	.L208
.L211:
	ler	%f0,%f2
	j	.L208
.L213:
	ler	%f0,%f2
	j	.L208
.L216:
	ler	%f0,%f2
.L208:
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
	jno	.L219
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L218
.L219:
	cxbr	%f0,%f0
	jno	.L221
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	j	.L218
.L221:
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L222
	tcxb	%f4,1365
	je	.L223
	lxr	%f0,%f4
.L223:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L218
.L222:
	kxbr	%f4,%f0
	jnl	.L224
	lxr	%f0,%f4
.L224:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L218:
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
	j	.L232
.L233:
	risbg	%r3,%r2,58,128+63,0
	larl	%r4,digits
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	aghi	%r1,1
	srl	%r2,6
.L232:
	cijlh	%r2,0,.L233
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
	.section	.rodata.cst8,"aM",@progbits,8
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
	cgijlh	%r3,0,.L240
	mvghi	8(%r2),0
	mvghi	0(%r2),0
	j	.L239
.L240:
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	je	.L239
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
.L239:
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
	je	.L244
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L244:
	ltg	%r1,8(%r2)
	je	.L243
	lg	%r1,8(%r2)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
.L243:
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
	lgr	%r14,%r15
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	aghi	%r14,-8
	std	%f10,0(%r14)
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	.cfi_offset 25, -168
	lgr	%r8,%r2
	ldgr	%f10,%r3
	stg	%r4,160(%r11)
	lgr	%r9,%r5
	lg	%r13,0(%r4)
	lgr	%r12,%r3
	lghi	%r10,0
	aghik	%r7,%r13,1
	j	.L248
.L251:
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r12,%r9
	cijlh	%r2,0,.L249
	msgr	%r10,%r9
	lgdr	%r2,%f10
	agr	%r2,%r10
	j	.L250
.L249:
	aghi	%r10,1
.L248:
	brctg	%r7,.L251
	lg	%r1,160(%r11)
	aghik	%r2,%r13,1
	stg	%r2,0(%r1)
	msgr	%r13,%r9
	lgr	%r4,%r9
	lgr	%r3,%r8
	lgdr	%r1,%f10
	la	%r2,0(%r13,%r1)
	brasl	%r14,memcpy@PLT
.L250:
	ld	%f10,168(%r11)
	lmg	%r7,%r15,232(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 25
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
	lgr	%r14,%r15
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	aghi	%r14,-8
	std	%f8,0(%r14)
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	.cfi_offset 24, -168
	lgr	%r7,%r2
	ldgr	%f8,%r3
	lgr	%r8,%r5
	lgr	%r10,%r3
	lghi	%r9,0
	lg	%r1,0(%r4)
	aghik	%r12,%r1,1
	j	.L254
.L257:
	lgr	%r3,%r10
	lgr	%r2,%r7
	basr	%r14,%r6
	agr	%r10,%r8
	cijlh	%r2,0,.L255
	msgr	%r9,%r8
	lgdr	%r2,%f8
	agr	%r2,%r9
	j	.L256
.L255:
	aghi	%r9,1
.L254:
	brctg	%r12,.L257
	lghi	%r2,0
.L256:
	ld	%f8,160(%r11)
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
	.cfi_restore 24
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
	j	.L262
.L263:
	aghi	%r12,1
.L262:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L263
	llc	%r1,0(%r12)
	cije	%r1,43,.L269
	cijlh	%r1,45,.L270
	lhi	%r3,1
	j	.L264
.L269:
	lhi	%r3,0
.L264:
	aghi	%r12,1
	j	.L265
.L270:
	lhi	%r3,0
.L265:
	lhi	%r1,0
	j	.L266
.L267:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sll	%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
.L266:
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L267
	lcr	%r2,%r1
	ltr	%r3,%r3
	locrne	%r2,%r1
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
	j	.L274
.L275:
	aghi	%r12,1
.L274:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L275
	llc	%r1,0(%r12)
	cije	%r1,43,.L281
	cijlh	%r1,45,.L282
	lhi	%r3,1
	j	.L276
.L281:
	lhi	%r3,0
.L276:
	aghi	%r12,1
	j	.L277
.L282:
	lhi	%r3,0
.L277:
	lghi	%r2,0
	j	.L278
.L279:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L278:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L279
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
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
	j	.L286
.L287:
	aghi	%r12,1
.L286:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L287
	llc	%r1,0(%r12)
	cije	%r1,43,.L293
	cijlh	%r1,45,.L294
	lhi	%r3,1
	j	.L288
.L293:
	lhi	%r3,0
.L288:
	aghi	%r12,1
	j	.L289
.L294:
	lhi	%r3,0
.L289:
	lghi	%r2,0
	j	.L290
.L291:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L290:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L291
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
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
	lgr	%r10,%r4
	lgr	%r9,%r5
	j	.L298
.L302:
	srlg	%r12,%r10,1
	msgr	%r12,%r9
	agr	%r12,%r8
	lgr	%r3,%r12
	lgr	%r2,%r7
	basr	%r14,%r6
	cijhe	%r2,0,.L299
	srlg	%r10,%r10,1
	j	.L298
.L299:
	cijle	%r2,0,.L303
	agrk	%r8,%r12,%r9
	srlg	%r1,%r10,1
	aghi	%r10,-1
	sgr	%r10,%r1
.L298:
	cgijlh	%r10,0,.L302
	lghi	%r2,0
	j	.L301
.L303:
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
	lr	%r12,%r4
	lgr	%r9,%r3
	j	.L306
.L309:
	srak	%r1,%r12,1
	lgr	%r10,%r8
	msgfr	%r10,%r1
	agr	%r10,%r9
	lg	%r4,320(%r11)
	lgr	%r3,%r10
	lgr	%r2,%r7
	basr	%r14,%r6
	cije	%r2,0,.L310
	cijle	%r2,0,.L308
	agrk	%r9,%r10,%r8
	ahi	%r12,-1
.L308:
	sra	%r12,1
.L306:
	cijlh	%r12,0,.L309
	lghi	%r2,0
	j	.L307
.L310:
	lgr	%r2,%r10
.L307:
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
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lgr	%r1,%r3
	dsgr	%r0,%r4
	st	%r1,0(%r2)
	st	%r0,4(%r2)
	lgdr	%r11,%f0
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	j	.L327
.L329:
	aghi	%r2,4
.L327:
	lt	%r1,0(%r2)
	je	.L328
	c	%r3,0(%r2)
	jne	.L329
.L328:
	lt	%r1,0(%r2)
	lghi	%r1,0
	locgre	%r2,%r1
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
	j	.L334
.L336:
	aghi	%r2,4
	aghi	%r3,4
.L334:
	clc	0(4,%r3),0(%r2)
	jne	.L335
	lt	%r1,0(%r2)
	je	.L335
	lt	%r1,0(%r3)
	jne	.L336
.L335:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L339
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L337
.L339:
	lhi	%r2,-1
.L337:
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
.L342:
	aghi	%r3,4
	aghi	%r1,4
	ly	%r4,-4(%r3)
	sty	%r4,-4(%r1)
	cijlh	%r4,0,.L342
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
	j	.L346
.L347:
	aghi	%r1,4
.L346:
	lt	%r3,0(%r1)
	jne	.L347
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
	aghik	%r1,%r4,1
	j	.L350
.L352:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L350:
	brctg	%r1,.L357
	j	.L351
.L357:
	clc	0(4,%r3),0(%r2)
	jne	.L351
	lt	%r5,0(%r2)
	je	.L351
	lt	%r5,0(%r3)
	jne	.L352
.L351:
	cgije	%r4,0,.L355
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L356
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L353
.L355:
	lhi	%r2,0
	j	.L353
.L356:
	lhi	%r2,-1
.L353:
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
	aghik	%r1,%r4,1
	j	.L360
.L362:
	aghi	%r4,-1
	aghi	%r2,4
.L360:
	brctg	%r1,.L365
	j	.L361
.L365:
	c	%r3,0(%r2)
	jne	.L362
.L361:
	ltgr	%r4,%r4
	lghi	%r1,0
	locgre	%r2,%r1
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
	aghik	%r1,%r4,1
	j	.L368
.L370:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L368:
	brctg	%r1,.L375
	j	.L369
.L375:
	clc	0(4,%r3),0(%r2)
	je	.L370
.L369:
	cgije	%r4,0,.L373
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L374
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L371
.L373:
	lhi	%r2,0
	j	.L371
.L374:
	lhi	%r2,-1
.L371:
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
	aghik	%r5,%r4,1
	j	.L378
.L379:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
.L378:
	aghi	%r4,-1
	brctg	%r5,.L379
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
	cgrje	%r2,%r3,.L382
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjhe	%r5,%r1,.L387
	aghik	%r1,%r4,-1
	sllg	%r1,%r1,2
	aghik	%r4,%r1,4
	srlg	%r4,%r4,2
	aghi	%r4,1
	j	.L384
.L385:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L384:
	brctg	%r4,.L385
	j	.L382
.L386:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
	j	.L383
.L387:
	lghi	%r1,0
	aghik	%r5,%r4,1
.L383:
	aghi	%r4,-1
	brctg	%r5,.L386
.L382:
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
	lgr	%r5,%r2
	aghik	%r1,%r4,1
	j	.L390
.L391:
	aghi	%r5,4
	sty	%r3,-4(%r5)
.L390:
	aghi	%r4,-1
	brctg	%r1,.L391
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	clgrjhe	%r2,%r3,.L394
	agrk	%r5,%r2,%r4
	agr	%r3,%r4
	lgr	%r1,%r4
	aghik	%r2,%r4,1
	j	.L395
.L396:
	sgrk	%r10,%r5,%r4
	sgrk	%r12,%r3,%r4
	icy	%r0,-1(%r1,%r10)
	stcy	%r0,-1(%r1,%r12)
	aghi	%r1,-1
.L395:
	brctg	%r2,.L396
	j	.L393
.L394:
	cgrjlh	%r2,%r3,.L400
	j	.L393
.L399:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
	j	.L398
.L400:
	lghi	%r1,0
	aghi	%r4,1
.L398:
	brctg	%r4,.L399
.L393:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	lgdr	%r10,%f4
	.cfi_restore 10
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
	sllk	%r1,%r2,0(%r3)
	lhi	%r4,16
	srk	%r3,%r4,%r3
	srl	%r2,0(%r3)
	or	%r2,%r1
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
	srlk	%r1,%r2,0(%r3)
	lhi	%r4,16
	srk	%r3,%r4,%r3
	sll	%r2,0(%r3)
	or	%r2,%r1
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
	sllk	%r1,%r2,0(%r3)
	lhi	%r4,8
	srk	%r3,%r4,%r3
	srl	%r2,0(%r3)
	or	%r2,%r1
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
	srlk	%r1,%r2,0(%r3)
	lhi	%r4,8
	srk	%r3,%r4,%r3
	sll	%r2,0(%r3)
	or	%r2,%r1
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
	srlg	%r1,%r2,8
	rosbg	%r1,%r2,48,55,8
	lgr	%r2,%r1
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
	risbgn	%r1,%r2,48,128+55,64-40
	rosbg	%r1,%r2,56,63,8
	risbgn	%r2,%r2,40,128+47,64-24
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
	lhi	%r3,33
	j	.L429
.L432:
	srlk	%r4,%r2,0(%r1)
	tmll	%r4,1
	je	.L430
	ahik	%r2,%r1,1
	j	.L431
.L430:
	ahi	%r1,1
.L429:
	brct	%r3,.L432
	lhi	%r2,0
.L431:
	lgfr	%r2,%r2
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
	cgije	%r2,0,.L438
	lhi	%r2,1
	j	.L436
.L437:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r2,1
.L436:
	tmll	%r1,1
	je	.L437
	j	.L435
.L438:
	lhi	%r2,0
.L435:
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
	larl	%r5,.L446
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L447-.L446(%r5)
	jl	.L443
	keb	%f0,.L448-.L446(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L441
.L443:
	lhi	%r2,1
.L441:
	lgfr	%r2,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L446:
.L448:
	.long	2139095039
.L447:
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
	larl	%r5,.L455
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	kdb	%f0,.L456-.L455(%r5)
	jl	.L452
	kdb	%f0,.L457-.L455(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L450
.L452:
	lhi	%r2,1
.L450:
	lgfr	%r2,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L455:
.L457:
	.long	2146435071
	.long	-1
.L456:
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
	larl	%r5,.L464
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L465-.L464(%r5)
	ld	%f6,.L465-.L464+8(%r5)
	kxbr	%f0,%f4
	jl	.L461
	ld	%f4,.L466-.L464(%r5)
	ld	%f6,.L466-.L464+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L459
.L461:
	lhi	%r2,1
.L459:
	lgfr	%r2,%r2
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L464:
.L466:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L465:
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
	larl	%r5,.L475
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cebr	%f0,%f0
	jo	.L470
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	je	.L470
	cijhe	%r2,0,.L474
	le	%f2,.L476-.L475(%r5)
	j	.L473
.L474:
	le	%f2,.L477-.L475(%r5)
.L473:
	tmll	%r2,1
	je	.L472
	meebr	%f0,%f2
.L472:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L470
	meebr	%f2,%f2
	j	.L473
.L470:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L475:
.L477:
	.long	1073741824
.L476:
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
	larl	%r5,.L484
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	cdbr	%f0,%f0
	jo	.L479
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	je	.L479
	cijhe	%r2,0,.L483
	ld	%f2,.L485-.L484(%r5)
	j	.L482
.L483:
	ld	%f2,.L486-.L484(%r5)
.L482:
	tmll	%r2,1
	je	.L481
	mdbr	%f0,%f2
.L481:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L479
	mdbr	%f2,%f2
	j	.L482
.L479:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L484:
.L486:
	.long	1073741824
	.long	0
.L485:
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
	larl	%r5,.L493
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L488
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f4,%f0
	je	.L488
	cijhe	%r4,0,.L492
	ld	%f0,.L494-.L493(%r5)
	ld	%f2,.L494-.L493+8(%r5)
	j	.L491
.L492:
	ld	%f0,.L495-.L493(%r5)
	ld	%f2,.L495-.L493+8(%r5)
.L491:
	tmll	%r4,1
	je	.L490
	mxbr	%f4,%f0
.L490:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L488
	mxbr	%f0,%f0
	j	.L491
.L488:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	lgdr	%r11,%f1
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L493:
.L495:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L494:
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
	lgr	%r1,%r2
	aghi	%r4,1
	j	.L497
.L498:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
.L497:
	brctg	%r4,.L498
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
	lghi	%r5,0
	lgr	%r1,%r2
	srst	%r5,%r1
	jo	.-4
	aghik	%r1,%r4,1
	j	.L501
.L503:
	aghi	%r3,1
	aghi	%r5,1
	aghi	%r4,-1
.L501:
	brctg	%r1,.L505
	j	.L502
.L505:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r5)
	cgijlh	%r0,0,.L503
.L502:
	cgijlh	%r4,0,.L504
	mvi	0(%r5),0
.L504:
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
	aghi	%r3,1
	j	.L508
.L510:
	aghi	%r2,1
.L508:
	brctg	%r3,.L511
	j	.L509
.L511:
	llc	%r4,0(%r2,%r1)
	cijlh	%r4,0,.L510
.L509:
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
	j	.L514
.L516:
	aghi	%r1,1
	llc	%r5,-1(%r1)
	llc	%r4,0(%r2)
	crjlh	%r5,%r4,.L517
	j	.L515
.L519:
	lgr	%r1,%r3
.L517:
	llc	%r4,0(%r1)
	cijlh	%r4,0,.L516
	aghi	%r2,1
.L514:
	llc	%r1,0(%r2)
	cijlh	%r1,0,.L519
	lghi	%r2,0
.L515:
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
.L523:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	llc	%r4,-1(%r1)
	cijlh	%r4,0,.L523
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
	lgr	%r1,%r3
	srst	%r9,%r1
	jo	.-4
	slgr	%r9,%r3
	jhe	.L531
	llc	%r8,0(%r3)
	j	.L529
.L530:
	lgr	%r4,%r9
	lgr	%r3,%r10
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L532
	aghi	%r12,1
.L529:
	lgfr	%r3,%r8
	lgr	%r2,%r12
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgijlh	%r2,0,.L530
	j	.L528
.L531:
	j	.L528
.L532:
	lgr	%r2,%r12
.L528:
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
	jnl	.L535
	kdbr	%f2,%f4
	jh	.L537
.L535:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L538
	kdbr	%f2,%f4
	jnl	.L538
.L537:
	lcdbr	%f0,%f0
.L538:
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
	lgr	%r12,%r2
	lgr	%r10,%r4
	lgr	%r8,%r5
	sgrk	%r9,%r3,%r5
	agr	%r9,%r2
	cgije	%r5,0,.L553
	clgrjh	%r5,%r3,.L554
	j	.L550
.L552:
	llc	%r2,0(%r12)
	llc	%r1,0(%r10)
	crjlh	%r2,%r1,.L551
	aghik	%r4,%r8,-1
	la	%r3,1(%r10)
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cije	%r2,0,.L555
.L551:
	aghi	%r12,1
.L550:
	clgrjle	%r12,%r9,.L552
	lghi	%r2,0
	j	.L549
.L553:
	j	.L549
.L554:
	lghi	%r2,0
	j	.L549
.L555:
	lgr	%r2,%r12
.L549:
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
	larl	%r5,.L579
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L576
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L560
.L576:
	lhi	%r3,0
.L560:
	kdb	%f0,.L580-.L579(%r5)
	jhe	.L571
	j	.L577
.L564:
	ahi	%r1,1
	mdb	%f0,.L581-.L579(%r5)
	j	.L562
.L571:
	lhi	%r1,0
.L562:
	kdb	%f0,.L580-.L579(%r5)
	jhe	.L564
	j	.L565
.L577:
	kdb	%f0,.L581-.L579(%r5)
	jnl	.L578
	lzdr	%f2
	cdbr	%f0,%f2
	jne	.L573
	lhi	%r1,0
	j	.L565
.L568:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L567
.L573:
	lhi	%r1,0
.L567:
	kdb	%f0,.L581-.L579(%r5)
	jl	.L568
	j	.L565
.L578:
	lhi	%r1,0
.L565:
	st	%r1,0(%r2)
	cije	%r3,0,.L569
	lcdbr	%f0,%f0
.L569:
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L579:
.L581:
	.long	1071644672
	.long	0
.L580:
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
	j	.L583
.L585:
	agrk	%r4,%r2,%r3
	tmll	%r1,1
	locgrne	%r2,%r4
	sllg	%r3,%r3,1
	srlg	%r1,%r1,1
.L583:
	cgijlh	%r1,0,.L585
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L588
.L592:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L588:
	clrjl	%r3,%r2,.L589
	lhi	%r5,0
	j	.L590
.L599:
	lhi	%r5,0
	j	.L590
.L589:
	brct	%r5,.L598
	j	.L599
.L598:
	cijhe	%r3,0,.L592
	lhi	%r5,0
	j	.L590
.L594:
	clrjl	%r2,%r3,.L593
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L593:
	srl	%r1,1
	srlg	%r3,%r3,1
.L590:
	cijlh	%r1,0,.L594
	ltgr	%r4,%r4
	locre	%r2,%r5
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
	sllg	%r4,%r2,8
	flogr	%r4,%r4
	ahi	%r4,-33
	ltgr	%r2,%r2
	lhi	%r1,7
	locre	%r4,%r1
	lgfr	%r2,%r4
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
	lghi	%r1,-1
	xgrk	%r1,%r2,%r1
	ltgr	%r2,%r2
	locgrl	%r2,%r1
	flogr	%r4,%r2
	ahi	%r4,-1
	ltgr	%r2,%r2
	lhi	%r1,63
	locre	%r4,%r1
	lgfr	%r2,%r4
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
	j	.L611
.L613:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L611:
	cgijlh	%r2,0,.L613
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
	risbg	%r0,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L616
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L616
	ahik	%r1,%r4,1
	j	.L617
.L616:
	lghi	%r1,0
	risbg	%r5,%r5,35,128+63,0
	aghi	%r5,1
	j	.L618
.L619:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L618:
	brctg	%r5,.L619
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L625
	cgijlh	%r4,0,.L620
.L625:
	lhi	%r1,1
	j	.L620
.L621:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L620:
	brct	%r1,.L621
	j	.L615
.L623:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L617:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L623
.L615:
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
	srlk	%r5,%r4,1
	clgrjl	%r2,%r3,.L628
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L628
	ahik	%r1,%r4,1
	j	.L629
.L628:
	lghi	%r1,0
	llgtr	%r5,%r5
	aghi	%r5,1
	j	.L630
.L631:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L630:
	brctg	%r5,.L631
	tmll	%r4,1
	je	.L627
	ahi	%r4,-1
	algfr	%r3,%r4
	algfr	%r2,%r4
	mvc	0(1,%r2),0(%r3)
	j	.L627
.L633:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L629:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L633
.L627:
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
	risbg	%r0,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L637
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L637
	ahik	%r1,%r4,1
	j	.L638
.L637:
	lghi	%r1,0
	risbg	%r5,%r5,34,128+63,0
	aghi	%r5,1
	j	.L639
.L640:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L639:
	brctg	%r5,.L640
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L646
	cgijlh	%r4,0,.L641
.L646:
	lhi	%r1,1
	j	.L641
.L642:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L641:
	brct	%r1,.L642
	j	.L636
.L644:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L638:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L644
.L636:
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
	lgr	%r5,%r2
	dsgr	%r4,%r3
	lgr	%r2,%r4
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
	lhi	%r4,0
	lhi	%r3,17
	j	.L661
.L663:
	lhi	%r1,15
	sr	%r1,%r4
	srak	%r1,%r2,0(%r1)
	tmll	%r1,1
	jne	.L662
	ahi	%r4,1
.L661:
	brct	%r3,.L663
.L662:
	lgfr	%r2,%r4
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
	lhi	%r3,0
	lhi	%r1,17
	j	.L666
.L668:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L667
	ahi	%r3,1
.L666:
	brct	%r1,.L668
.L667:
	lgfr	%r2,%r3
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
	larl	%r5,.L676
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	keb	%f0,.L677-.L676(%r5)
	jnhe	.L675
	seb	%f0,.L677-.L676(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	j	.L673
.L675:
	cgebr	%r2,5,%f0
.L673:
	lgdr	%r11,%f2
	.cfi_restore 11
	.cfi_def_cfa_register 15
	br	%r14
	.section	.rodata
	.align	8
.L676:
.L677:
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
	lhi	%r3,0
	lhi	%r4,0
	lhi	%r1,17
	j	.L679
.L681:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L679:
	brct	%r1,.L681
	risbg	%r2,%r3,63,128+63,0
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
	lhi	%r3,0
	lhi	%r4,0
	lhi	%r1,17
	j	.L684
.L686:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L684:
	brct	%r1,.L686
	lgfr	%r2,%r3
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
	j	.L689
.L691:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L689:
	cgijlh	%r2,0,.L691
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
	cgije	%r2,0,.L698
	lhi	%r2,0
	j	.L695
.L697:
	ark	%r4,%r2,%r1
	tmll	%r3,1
	locrne	%r2,%r4
	risbgn	%r1,%r1,32,128+62,1
	srlg	%r3,%r3,1
.L695:
	cgijlh	%r3,0,.L697
	j	.L694
.L698:
	lhi	%r2,0
.L694:
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L701
.L705:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L701:
	clrjl	%r3,%r2,.L702
	lhi	%r5,0
	j	.L703
.L712:
	lhi	%r5,0
	j	.L703
.L702:
	brct	%r5,.L711
	j	.L712
.L711:
	cijhe	%r3,0,.L705
	lhi	%r5,0
	j	.L703
.L707:
	clrjl	%r2,%r3,.L706
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L706:
	srl	%r1,1
	srlg	%r3,%r3,1
.L703:
	cijlh	%r1,0,.L707
	ltgr	%r4,%r4
	locre	%r2,%r5
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
	jl	.L716
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L715
.L716:
	lhi	%r2,-1
.L715:
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
	jl	.L721
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L720
.L721:
	lhi	%r2,-1
.L720:
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
	cijhe	%r3,0,.L735
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L729
.L735:
	lhi	%r0,0
.L729:
	lhi	%r5,33
	lhi	%r1,0
	j	.L730
.L733:
	ark	%r4,%r1,%r2
	tmll	%r3,1
	locrne	%r1,%r4
	sll	%r2,1
	lgfr	%r2,%r2
	sra	%r3,1
	lgfr	%r3,%r3
.L730:
	cgije	%r3,0,.L732
	ahik	%r4,%r5,-1
	lr	%r5,%r4
	tml	%r4,255
	jne	.L733
.L732:
	lcr	%r2,%r1
	ltr	%r0,%r0
	locre	%r2,%r1
	lgfr	%r2,%r2
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
	cgijhe	%r2,0,.L742
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L739
.L742:
	lhi	%r12,0
.L739:
	cgijhe	%r3,0,.L740
	lcgr	%r3,%r3
	xilf	%r12,1
.L740:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
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
	cgijhe	%r2,0,.L748
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L745
.L748:
	lhi	%r12,0
.L745:
	lpgr	%r3,%r3
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
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
	lhi	%r1,1
	lhi	%r5,17
	j	.L751
.L755:
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
.L751:
	clrjl	%r3,%r2,.L752
	lhi	%r0,0
	j	.L753
.L762:
	lhi	%r0,0
	j	.L753
.L752:
	brct	%r5,.L761
	j	.L762
.L761:
	tmll	%r3,32768
	je	.L755
	lhi	%r0,0
	j	.L753
.L757:
	clrjl	%r2,%r3,.L756
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
.L756:
	risbgn	%r1,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
.L753:
	llhr	%r5,%r1
	cijlh	%r5,0,.L757
	ltgr	%r4,%r4
	locre	%r2,%r0
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
	lghi	%r1,1
	lhi	%r5,65
	j	.L765
.L769:
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
.L765:
	clgrjl	%r3,%r2,.L766
	lghi	%r5,0
	j	.L767
.L776:
	lghi	%r5,0
	j	.L767
.L766:
	brct	%r5,.L775
	j	.L776
.L775:
	tmlh	%r3,32768
	je	.L769
	lghi	%r5,0
	j	.L767
.L771:
	clgrjl	%r2,%r3,.L770
	sgr	%r2,%r3
	ogr	%r5,%r1
.L770:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
.L767:
	cgijlh	%r1,0,.L771
	ltgr	%r4,%r4
	locgre	%r2,%r5
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
	tmll	%r3,32
	je	.L779
	lghi	%r4,0
	sllk	%r1,%r2,4064(%r3)
	risbgn	%r4,%r1,0,0+32-1,64-0-32
	j	.L780
.L779:
	cgije	%r3,0,.L781
	sllk	%r1,%r2,0(%r3)
	lghi	%r4,0
	lr	%r4,%r1
	srag	%r5,%r2,32
	sll	%r5,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r1,%r2,0(%r1)
	or	%r1,%r5
	risbgn	%r4,%r1,0,0+32-1,64-0-32
.L780:
	lgr	%r2,%r4
.L781:
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
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L785
	lghi	%r1,0
	sllg	%r0,%r13,4032(%r4)
	j	.L786
.L785:
	cgijlh	%r4,0,.L787
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L788
.L787:
	sllg	%r1,%r13,0(%r4)
	sllg	%r5,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r3,%r13,0(%r3)
	ogrk	%r0,%r3,%r5
.L786:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L788:
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
	tmll	%r3,32
	je	.L791
	srag	%r1,%r2,32
	srak	%r2,%r1,31
	lghi	%r4,0
	risbgn	%r4,%r2,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r4,%r1
	j	.L792
.L791:
	cgije	%r3,0,.L793
	srag	%r1,%r2,32
	srak	%r5,%r1,0(%r3)
	lghi	%r4,0
	risbgn	%r4,%r5,0,0+32-1,64-0-32
	lhi	%r5,32
	sr	%r5,%r3
	sllk	%r5,%r1,0(%r5)
	srlk	%r1,%r2,0(%r3)
	or	%r1,%r5
	lr	%r4,%r1
.L792:
	lgr	%r2,%r4
.L793:
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
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L797
	srag	%r0,%r12,63
	srag	%r1,%r12,4032(%r4)
	j	.L798
.L797:
	cgijlh	%r4,0,.L799
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L800
.L799:
	srag	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
.L798:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L800:
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
	risbgn	%r5,%r2,48,128+55,64-40
	risbgn	%r4,%r2,40,128+47,64-24
	risbgn	%r2,%r2,32,128+39,64-8
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
	clfi	%r2,65535
	lhi	%r1,0
	lhi	%r3,16
	locrle	%r1,%r3
	sr	%r3,%r1
	srl	%r2,0(%r3)
	tml	%r2,65280
	lhi	%r4,0
	lhi	%r3,8
	locre	%r4,%r3
	sr	%r3,%r4
	srl	%r2,0(%r3)
	ar	%r1,%r4
	tml	%r2,240
	lhi	%r4,0
	lhi	%r3,4
	locre	%r4,%r3
	sr	%r3,%r4
	srl	%r2,0(%r3)
	ar	%r1,%r4
	tml	%r2,12
	lhi	%r3,0
	lhi	%r4,2
	locre	%r3,%r4
	srk	%r5,%r4,%r3
	srl	%r2,0(%r5)
	ar	%r1,%r3
	risbg	%r3,%r2,62,128+62,0
	ahi	%r3,-1
	srl	%r3,31
	sr	%r4,%r2
	lr	%r2,%r3
	msr	%r2,%r4
	ar	%r2,%r1
	lgfr	%r2,%r2
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
	lpgr	%r2,%r12
	aghi	%r2,-1
	srag	%r2,%r2,63
	lgfr	%r1,%r2
	lghi	%r3,-1
	xgrk	%r4,%r1,%r3
	ngr	%r4,%r12
	ngr	%r1,%r13
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
	srag	%r4,%r2,32
	srag	%r1,%r3,32
	crjl	%r4,%r1,.L820
	crjh	%r4,%r1,.L821
	clrjl	%r2,%r3,.L822
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L819
.L820:
	lhi	%r2,0
	j	.L819
.L821:
	lhi	%r2,2
	j	.L819
.L822:
	lhi	%r2,0
.L819:
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
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	cgrjl	%r4,%r2,.L829
	cgrjh	%r4,%r2,.L830
	clgrjl	%r5,%r3,.L831
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L828
.L829:
	lhi	%r2,0
	j	.L828
.L830:
	lhi	%r2,2
	j	.L828
.L831:
	lhi	%r2,0
.L828:
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
	lhi	%r1,0
	lhi	%r3,16
	locre	%r1,%r3
	srl	%r2,0(%r1)
	tml	%r2,255
	lhi	%r3,0
	lhi	%r4,8
	locre	%r3,%r4
	srl	%r2,0(%r3)
	ar	%r1,%r3
	tmll	%r2,15
	lhi	%r3,0
	lhi	%r4,4
	locre	%r3,%r4
	srl	%r2,0(%r3)
	ar	%r1,%r3
	tmll	%r2,3
	lhi	%r3,0
	lhi	%r4,2
	locre	%r3,%r4
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
	ar	%r2,%r1
	lgfr	%r2,%r2
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
	lg	%r0,0(%r2)
	lg	%r1,8(%r2)
	lpgr	%r2,%r1
	aghi	%r2,-1
	srag	%r2,%r2,63
	lgfr	%r4,%r2
	ngrk	%r3,%r4,%r0
	lghi	%r5,-1
	xgr	%r4,%r5
	ngr	%r4,%r1
	ogr	%r4,%r3
	lcgr	%r1,%r4
	ngr	%r4,%r1
	flogr	%r4,%r4
	lghi	%r1,63
	sgr	%r1,%r4
	nilf	%r2,64
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
	cgijlh	%r13,0,.L847
	lcgr	%r0,%r12
	ngr	%r0,%r12
	flogr	%r0,%r0
	lghi	%r2,63
	sgr	%r2,%r0
	ahi	%r2,65
	ltgr	%r12,%r12
	lhi	%r1,0
	locre	%r2,%r1
	j	.L848
.L847:
	lcgr	%r4,%r13
	ngr	%r4,%r13
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
.L848:
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
	ldgr	%f0,%r11
	.cfi_register 11, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	tmll	%r3,32
	je	.L852
	lghi	%r4,0
	iihf	%r4,0
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r4,%r1
	j	.L853
.L852:
	cgije	%r3,0,.L854
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,0(%r3)
	lghi	%r4,0
	risbgn	%r4,%r1,0,0+32-1,64-0-32
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r5,32
	sr	%r5,%r3
	sllk	%r5,%r1,0(%r5)
	srlk	%r1,%r2,0(%r3)
	or	%r1,%r5
	lr	%r4,%r1
.L853:
	lgr	%r2,%r4
.L854:
	lgdr	%r11,%f0
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L858
	lghi	%r0,0
	srlg	%r1,%r12,4032(%r4)
	j	.L859
.L858:
	cgijlh	%r4,0,.L860
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L861
.L860:
	srlg	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
.L859:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L861:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	.cfi_def_cfa_register 15
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
	risbg	%r5,%r2,48,128+63,0
	risbg	%r0,%r3,48,128+63,0
	lr	%r1,%r5
	msr	%r1,%r0
	lghi	%r2,0
	lr	%r2,%r1
	srlk	%r1,%r2,16
	risbg	%r3,%r2,48,128+63,0
	lr	%r2,%r3
	srlk	%r3,%r12,16
	msr	%r0,%r3
	ar	%r1,%r0
	sllk	%r0,%r1,16
	ar	%r0,%r2
	lr	%r2,%r0
	srl	%r1,16
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srlk	%r1,%r2,16
	risbg	%r0,%r2,48,128+63,0
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
	stmg	%r10,%r15,80(%r15)
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
	lgr	%r10,%r2
	lgr	%r12,%r3
	llgfr	%r3,%r3
	llgfr	%r2,%r2
	brasl	%r14,__muldsi3@PLT
	srag	%r3,%r2,32
	srag	%r1,%r10,32
	msr	%r1,%r12
	srag	%r12,%r12,32
	msr	%r12,%r10
	ar	%r1,%r12
	ar	%r1,%r3
	risbgn	%r2,%r1,0,64-32-1,32
	lmg	%r10,%r15,240(%r11)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	srlg	%r1,%r5,32
	nihf	%r5,0
	srlg	%r3,%r3,32
	msgr	%r10,%r3
	agr	%r1,%r10
	sllg	%r10,%r1,32
	agrk	%r13,%r10,%r5
	srlg	%r12,%r1,32
	srlg	%r1,%r13,32
	risbg	%r5,%r13,32,128+63,0
	srlg	%r4,%r4,32
	msgr	%r0,%r4
	agr	%r1,%r0
	sllg	%r0,%r1,32
	agrk	%r13,%r0,%r5
	srlg	%r1,%r1,32
	agr	%r1,%r12
	msgr	%r3,%r4
	agrk	%r12,%r3,%r1
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
	stmg	%r8,%r15,64(%r15)
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
	lg	%r8,0(%r3)
	lg	%r9,8(%r3)
	lg	%r12,0(%r4)
	lg	%r13,8(%r4)
	lgr	%r4,%r13
	lgr	%r3,%r9
	la	%r2,160(%r11)
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r11)
	lg	%r3,168(%r11)
	lgr	%r1,%r8
	msgr	%r1,%r13
	msgr	%r12,%r9
	agr	%r1,%r12
	agrk	%r4,%r1,%r2
	stg	%r4,0(%r10)
	stg	%r3,8(%r10)
	lgr	%r2,%r10
	lmg	%r8,%r15,240(%r11)
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
	lghi	%r4,0
	lghi	%r5,0
	slg	%r5,8(%r3)
	slbg	%r4,0(%r3)
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
	lr	%r1,%r2
	rxsbg	%r1,%r2,32,63,32
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	lhi	%r2,27030
	sra	%r2,0(%r1)
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
	lg	%r1,8(%r2)
	xg	%r1,0(%r2)
	rxsbg	%r1,%r1,32,63,32
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	lhi	%r2,27030
	sra	%r2,0(%r1)
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
	larl	%r5,.L882
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlg	%r1,%r2,1
	ng	%r1,.L883-.L882(%r5)
	sgr	%r2,%r1
	srlg	%r1,%r2,2
	ng	%r1,.L884-.L882(%r5)
	ng	%r2,.L884-.L882(%r5)
	agr	%r2,%r1
	srlg	%r1,%r2,4
	agr	%r2,%r1
	ng	%r2,.L885-.L882(%r5)
	srlg	%r1,%r2,32
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
.L882:
.L885:
	.quad	1085102592571150095
.L884:
	.quad	3689348814741910323
.L883:
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
	.section	.rodata.cst8
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
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	srlg	%r5,%r3,1
	rosbg	%r5,%r2,0,0,63
	srlg	%r4,%r2,1
	lgrl	%r12,.LC19
	ngrk	%r0,%r4,%r12
	ngrk	%r1,%r5,%r12
	slgr	%r3,%r1
	slbgr	%r2,%r0
	srlg	%r5,%r3,2
	rosbg	%r5,%r2,0,1,62
	srlg	%r4,%r2,2
	lgrl	%r12,.LC20
	ngrk	%r0,%r4,%r12
	ngrk	%r1,%r5,%r12
	ngrk	%r4,%r2,%r12
	ngrk	%r5,%r3,%r12
	lgr	%r2,%r0
	lgr	%r3,%r1
	algr	%r3,%r5
	alcgr	%r2,%r4
	srlg	%r5,%r3,4
	rosbg	%r5,%r2,0,3,60
	srlg	%r4,%r2,4
	algr	%r5,%r3
	alcgr	%r4,%r2
	lgrl	%r1,.LC21
	ngrk	%r2,%r4,%r1
	ngrk	%r3,%r5,%r1
	agr	%r2,%r3
	srlg	%r1,%r2,32
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
	larl	%r5,.L896
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r3,%r2,31
	ld	%f2,.L897-.L896(%r5)
.L893:
	tmll	%r2,1
	je	.L891
	mdbr	%f2,%f0
.L891:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L892
	mdbr	%f0,%f0
	j	.L893
.L892:
	cije	%r3,0,.L895
	ld	%f0,.L897-.L896(%r5)
	ddbr	%f0,%f2
	j	.L894
.L895:
	ldr	%f0,%f2
.L894:
	lgdr	%r11,%f4
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
	larl	%r5,.L904
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	srlk	%r3,%r2,31
	le	%f2,.L905-.L904(%r5)
.L901:
	tmll	%r2,1
	je	.L899
	meebr	%f2,%f0
.L899:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L900
	meebr	%f0,%f0
	j	.L901
.L900:
	cije	%r3,0,.L903
	le	%f0,.L905-.L904(%r5)
	debr	%f0,%f2
	j	.L902
.L903:
	ler	%f0,%f2
.L902:
	lgdr	%r11,%f4
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
	clrjl	%r4,%r1,.L908
	clrjh	%r4,%r1,.L909
	clrjl	%r2,%r3,.L910
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L907
.L908:
	lhi	%r2,0
	j	.L907
.L909:
	lhi	%r2,2
	j	.L907
.L910:
	lhi	%r2,0
.L907:
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
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	clgrjl	%r4,%r2,.L917
	clgrjh	%r4,%r2,.L918
	clgrjl	%r5,%r3,.L919
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L916
.L917:
	lhi	%r2,0
	j	.L916
.L918:
	lhi	%r2,2
	j	.L916
.L919:
	lhi	%r2,0
.L916:
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
