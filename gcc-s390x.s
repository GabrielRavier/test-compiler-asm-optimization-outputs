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
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
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
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
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
	clgrjle	%r2,%r3,.L6
	lgr	%r5,%r2
	aghik	%r1,%r4,1
	j	.L7
.L8:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r5)
	aghi	%r4,-1
.L7:
	brctg	%r1,.L8
	br	%r14
.L6:
	cgrje	%r2,%r3,.L13
	lghi	%r1,0
	aghi	%r4,1
	j	.L10
.L13:
	br	%r14
.L11:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L10:
	brctg	%r4,.L11
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
	llgcr	%r4,%r4
	aghik	%r1,%r5,1
	j	.L16
.L18:
	aghi	%r5,-1
	aghi	%r3,1
	aghi	%r2,1
.L16:
	brctg	%r1,.L21
	j	.L17
.L21:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cgrjlh	%r0,%r4,.L18
.L17:
	aghi	%r2,1
	ltgr	%r5,%r5
	lghi	%r1,0
	locgre	%r2,%r1
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
	llgcr	%r3,%r3
	aghik	%r1,%r4,1
	j	.L24
.L26:
	aghi	%r2,1
	aghi	%r4,-1
.L24:
	brctg	%r1,.L29
	j	.L25
.L29:
	llc	%r5,0(%r2)
	crjlh	%r5,%r3,.L26
.L25:
	ltgr	%r4,%r4
	lghi	%r1,0
	locgre	%r2,%r1
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
	aghik	%r1,%r4,1
	j	.L32
.L34:
	aghi	%r4,-1
	aghi	%r2,1
	aghi	%r3,1
.L32:
	brctg	%r1,.L37
	j	.L33
.L37:
	llc	%r0,0(%r2)
	llc	%r5,0(%r3)
	crje	%r0,%r5,.L34
.L33:
	cgije	%r4,0,.L36
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L35:
	lgfr	%r2,%r2
	br	%r14
.L36:
	lhi	%r2,0
	j	.L35
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	lghi	%r1,0
	aghi	%r4,1
	j	.L40
.L41:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L40:
	brctg	%r4,.L41
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
	llgcr	%r3,%r3
	lay	%r5,-1(%r4)
	la	%r1,1(%r4)
.L44:
	brctg	%r1,.L46
	j	.L48
.L46:
	llc	%r4,0(%r5,%r2)
	aghik	%r0,%r5,-1
	crje	%r4,%r3,.L49
	lgr	%r5,%r0
	j	.L44
.L49:
	agr	%r2,%r5
	br	%r14
.L48:
	lghi	%r2,0
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
	lgr	%r1,%r2
	aghi	%r4,1
	j	.L52
.L53:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L52:
	brctg	%r4,.L53
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
	j	.L56
.L57:
	aghi	%r3,1
	aghi	%r2,1
.L56:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L57
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
	llgcr	%r3,%r3
	j	.L60
.L62:
	aghi	%r2,1
.L60:
	llc	%r1,0(%r2)
	cije	%r1,0,.L61
	crjlh	%r1,%r3,.L62
.L61:
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
.L66:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L65
	aghi	%r2,1
	llc	%r1,-1(%r2)
	cijlh	%r1,0,.L66
	lghi	%r2,0
.L65:
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
	j	.L71
.L73:
	aghi	%r2,1
	aghi	%r3,1
.L71:
	llc	%r4,0(%r2)
	llc	%r1,0(%r3)
	crjlh	%r4,%r1,.L72
	cijlh	%r4,0,.L73
.L72:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	lgfr	%r2,%r2
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
	lgr	%r1,%r2
	j	.L76
.L77:
	aghi	%r1,1
.L76:
	llc	%r3,0(%r1)
	cijlh	%r3,0,.L77
	sgrk	%r2,%r1,%r2
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
	lgr	%r1,%r4
	cgije	%r4,0,.L84
.L81:
	llc	%r4,0(%r2)
	cije	%r4,0,.L82
	llc	%r4,0(%r3)
	cije	%r4,0,.L82
	brctg	%r1,.L85
	j	.L82
.L85:
	llc	%r5,0(%r2)
	llc	%r4,0(%r3)
	crjlh	%r5,%r4,.L82
	aghi	%r2,1
	aghi	%r3,1
	j	.L81
.L82:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L80:
	lgfr	%r2,%r2
	br	%r14
.L84:
	lhi	%r2,0
	j	.L80
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	srlg	%r5,%r4,1
	aghik	%r1,%r5,1
	ltgr	%r4,%r4
	lghi	%r4,1
	locgrnhe	%r1,%r4
	j	.L88
.L89:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L88:
	brctg	%r1,.L89
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
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	clfi	%r2,127
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	lgr	%r3,%r2
	lr	%r1,%r2
	xilf	%r1,9
	lpr	%r1,%r1
	ahi	%r1,-1
	srlk	%r2,%r1,31
	chi	%r3,32
	lhi	%r1,1
	locre	%r2,%r1
	lgfr	%r2,%r2
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
	lgr	%r3,%r2
	lr	%r1,%r2
	xilf	%r1,127
	lpr	%r1,%r1
	ahi	%r1,-1
	srlk	%r2,%r1,31
	clfi	%r3,31
	lhi	%r1,1
	locrnh	%r2,%r1
	lgfr	%r2,%r2
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
	ahi	%r2,-48
	clfi	%r2,9
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	ahi	%r2,-33
	clfi	%r2,93
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	ahi	%r2,-97
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	ahi	%r2,-32
	clfi	%r2,94
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	cije	%r2,32,.L114
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L113:
	lgfr	%r2,%r2
	br	%r14
.L114:
	lhi	%r2,1
	j	.L113
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	8
.globl isupper
	.type	isupper, @function
isupper:
.LFB25:
	.cfi_startproc
	ahi	%r2,-65
	clfi	%r2,25
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
.L119:
	lgfr	%r2,%r2
	br	%r14
.L121:
	lhi	%r2,1
	j	.L119
.L122:
	lhi	%r2,1
	j	.L119
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB27:
	.cfi_startproc
	ahi	%r2,-48
	clfi	%r2,9
	lghi	%r2,0
	slbgr	%r2,%r2
	lcgr	%r2,%r2
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
	clijle	%r2,254,.L133
	lhi	%r1,8231
	clrjle	%r2,%r1,.L129
	ahik	%r1,%r2,-8234
	llill	%r3,47061
	clrjle	%r1,%r3,.L130
	slfi	%r1,49110
	lhi	%r3,8184
	clrjle	%r1,%r3,.L131
	ahi	%r1,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r1,1048580
	lhi	%r1,0
	locrnl	%r2,%r1
	j	.L128
.L133:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
.L128:
	lgfr	%r2,%r2
	br	%r14
.L129:
	lhi	%r2,1
	j	.L128
.L130:
	lhi	%r2,1
	j	.L128
.L131:
	lhi	%r2,1
	j	.L128
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	ahik	%r1,%r2,-48
	clijle	%r1,9,.L137
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L136:
	lgfr	%r2,%r2
	br	%r14
.L137:
	lhi	%r2,1
	j	.L136
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	8
.globl toascii
	.type	toascii, @function
toascii:
.LFB30:
	.cfi_startproc
	risbg	%r2,%r2,57,128+63,0
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
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L145
	kdbr	%f0,%f2
	jnh	.L148
	sdbr	%f0,%f2
	br	%r14
.L145:
	ldr	%f0,%f2
	br	%r14
.L148:
	lzdr	%f0
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
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L154
	kebr	%f0,%f2
	jnh	.L157
	sebr	%f0,%f2
	br	%r14
.L154:
	ler	%f0,%f2
	br	%r14
.L157:
	lzer	%f0
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
	cdbr	%f0,%f0
	jo	.L165
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L161
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L161:
	kdbr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L160
	ldr	%f0,%f2
	br	%r14
.L165:
	ldr	%f0,%f2
.L160:
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
	cebr	%f0,%f0
	jo	.L175
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L171
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L171:
	kebr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L170
	ler	%f0,%f2
	br	%r14
.L175:
	ler	%f0,%f2
.L170:
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
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f4,0(%r4)
	ld	%f6,8(%r4)
	cxbr	%f0,%f0
	jo	.L193
	cxbr	%f4,%f4
	jo	.L194
	tcxb	%f0,1365
	ipm	%r4
	srl	%r4,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r4,%r3,.L183
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r13
	.cfi_register 13, 20
	tcxb	%f0,1365
	je	.L188
	lgdr	%r3,%f4
	lgdr	%r1,%f6
.L184:
	lgr	%r12,%r3
	lgr	%r13,%r1
	stmg	%r12,%r13,0(%r2)
	lgdr	%r13,%f1
	.cfi_restore 13
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
.L193:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L194:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L188:
	.cfi_register 12, 21
	.cfi_register 13, 20
	lgdr	%r3,%f0
	lgdr	%r1,%f2
	j	.L184
.L183:
	.cfi_restore 12
	.cfi_restore 13
	kxbr	%f0,%f4
	lhi	%r3,0
	lhi	%r4,1
	locrl	%r3,%r4
	llcr	%r3,%r3
	cije	%r3,0,.L186
	lgdr	%r4,%f4
	lgdr	%r3,%f6
.L187:
	lgr	%r0,%r4
	lgr	%r1,%r3
	stmg	%r0,%r1,0(%r2)
	br	%r14
.L186:
	lgdr	%r4,%f0
	lgdr	%r3,%f2
	j	.L187
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L202
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L198
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L198:
	kdbr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L201
	ldr	%f2,%f0
.L201:
	ldr	%f0,%f2
	br	%r14
.L202:
	ldr	%f0,%f2
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
	cebr	%f0,%f0
	jo	.L213
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L209
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L209:
	kebr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L212
	ler	%f2,%f0
.L212:
	ler	%f0,%f2
	br	%r14
.L213:
	ler	%f0,%f2
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
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f4,0(%r4)
	ld	%f6,8(%r4)
	cxbr	%f0,%f0
	jo	.L232
	cxbr	%f4,%f4
	jo	.L233
	tcxb	%f0,1365
	ipm	%r4
	srl	%r4,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r4,%r3,.L222
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r13
	.cfi_register 13, 20
	tcxb	%f0,1365
	je	.L227
	lgdr	%r3,%f0
	lgdr	%r1,%f2
.L223:
	lgr	%r12,%r3
	lgr	%r13,%r1
	stmg	%r12,%r13,0(%r2)
	lgdr	%r13,%f1
	.cfi_restore 13
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
.L232:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L233:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L227:
	.cfi_register 12, 21
	.cfi_register 13, 20
	lgdr	%r3,%f4
	lgdr	%r1,%f6
	j	.L223
.L222:
	.cfi_restore 12
	.cfi_restore 13
	kxbr	%f0,%f4
	lhi	%r3,0
	lhi	%r4,1
	locrl	%r3,%r4
	llcr	%r3,%r3
	cije	%r3,0,.L225
	lgdr	%r4,%f0
	lgdr	%r3,%f2
.L226:
	lgr	%r0,%r4
	lgr	%r1,%r3
	stmg	%r0,%r1,0(%r2)
	br	%r14
.L225:
	lgdr	%r4,%f4
	lgdr	%r3,%f6
	j	.L226
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
	larl	%r1,s.0
	larl	%r4,digits
	j	.L236
.L237:
	risbg	%r3,%r2,58,128+63,0
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	aghi	%r1,1
	srl	%r2,6
.L236:
	cijlh	%r2,0,.L237
	mvi	0(%r1),0
	larl	%r2,s.0
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
	ahi	%r2,-1
	llgfr	%r2,%r2
	stgrl	%r2,seed
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
	lgrl	%r2,.LC0
	larl	%r1,seed
	msg	%r2,0(%r1)
	aghi	%r2,1
	stgrl	%r2,seed
	srlg	%r2,%r2,33
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
	lgr	%r1,%r3
	cgije	%r3,0,.L247
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	ber	%r14
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
	br	%r14
.L247:
	mvghi	8(%r2),0
	mvghi	0(%r2),0
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
	ltg	%r1,0(%r2)
	je	.L250
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L250:
	ltg	%r1,8(%r2)
	ber	%r14
	lg	%r1,8(%r2)
	lg	%r2,0(%r2)
	stg	%r2,0(%r1)
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
	lay	%r15,-168(%r15)
	.cfi_def_cfa_offset 328
	aghi	%r14,-8
	std	%f8,0(%r14)
	.cfi_offset 24, -168
	lgr	%r8,%r2
	ldgr	%f8,%r3
	lgr	%r7,%r4
	lgr	%r9,%r5
	lg	%r13,0(%r4)
	lgr	%r11,%r3
	lghi	%r10,0
	aghik	%r12,%r13,1
	j	.L254
.L255:
	aghi	%r10,1
.L254:
	brctg	%r12,.L257
	j	.L259
.L257:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L255
	msgr	%r10,%r9
	lgdr	%r2,%f8
	agr	%r2,%r10
	j	.L256
.L259:
	aghik	%r1,%r13,1
	stg	%r1,0(%r7)
	msgr	%r13,%r9
	lgr	%r4,%r9
	lgr	%r3,%r8
	lgdr	%r1,%f8
	la	%r2,0(%r13,%r1)
	brasl	%r14,memcpy@PLT
.L256:
	ld	%f8,160(%r15)
	lmg	%r7,%r15,224(%r15)
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
	.cfi_def_cfa_offset 160
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
	lgr	%r8,%r2
	lgr	%r7,%r3
	lgr	%r9,%r5
	lgr	%r11,%r3
	lghi	%r10,0
	lg	%r1,0(%r4)
	aghik	%r12,%r1,1
	j	.L262
.L263:
	aghi	%r10,1
.L262:
	brctg	%r12,.L265
	j	.L267
.L265:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L263
	msgr	%r10,%r9
	agrk	%r2,%r7,%r10
	j	.L264
.L267:
	lghi	%r2,0
.L264:
	lmg	%r7,%r15,216(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa_offset 160
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
	lpr	%r2,%r2
	lgfr	%r2,%r2
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L272
.L273:
	aghi	%r12,1
.L272:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L273
	llc	%r1,0(%r12)
	cije	%r1,43,.L279
	cijlh	%r1,45,.L280
	lhi	%r3,1
.L274:
	aghi	%r12,1
.L275:
	lhi	%r1,0
	j	.L276
.L279:
	lhi	%r3,0
	j	.L274
.L280:
	lhi	%r3,0
	j	.L275
.L277:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sll	%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
.L276:
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L277
	lcr	%r2,%r1
	ltr	%r3,%r3
	locrne	%r2,%r1
	lgfr	%r2,%r2
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L285
.L286:
	aghi	%r12,1
.L285:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L286
	llc	%r1,0(%r12)
	cije	%r1,43,.L292
	cijlh	%r1,45,.L293
	lhi	%r3,1
.L287:
	aghi	%r12,1
.L288:
	lghi	%r2,0
	j	.L289
.L292:
	lhi	%r3,0
	j	.L287
.L293:
	lhi	%r3,0
	j	.L288
.L290:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L289:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L290
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L298
.L299:
	aghi	%r12,1
.L298:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L299
	llc	%r1,0(%r12)
	cije	%r1,43,.L305
	cijlh	%r1,45,.L306
	lhi	%r3,1
.L300:
	aghi	%r12,1
.L301:
	lghi	%r2,0
	j	.L302
.L305:
	lhi	%r3,0
	j	.L300
.L306:
	lhi	%r3,0
	j	.L301
.L303:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L302:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L303
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r11,%r4
	lgr	%r10,%r5
	j	.L311
.L319:
	srlg	%r11,%r11,1
.L311:
	cgije	%r11,0,.L318
	srlg	%r12,%r11,1
	msgr	%r12,%r10
	agr	%r12,%r9
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	cijl	%r2,0,.L319
	cijle	%r2,0,.L316
	agrk	%r9,%r12,%r10
	srlg	%r1,%r11,1
	aghi	%r11,-1
	sgr	%r11,%r1
	j	.L311
.L318:
	lghi	%r2,0
.L314:
	lmg	%r8,%r15,224(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_offset 160
	br	%r14
.L316:
	.cfi_restore_state
	lgr	%r2,%r12
	j	.L314
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
	lgr	%r8,%r2
	lgr	%r9,%r5
	lg	%r7,320(%r15)
	lr	%r12,%r4
	lgr	%r10,%r3
	j	.L322
.L324:
	sra	%r12,1
.L322:
	cije	%r12,0,.L328
	srak	%r1,%r12,1
	lgr	%r11,%r9
	msgfr	%r11,%r1
	agr	%r11,%r10
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L326
	cijle	%r2,0,.L324
	agrk	%r10,%r11,%r9
	ahi	%r12,-1
	j	.L324
.L328:
	lghi	%r2,0
.L323:
	lmg	%r7,%r15,216(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa_offset 160
	br	%r14
.L326:
	.cfi_restore_state
	lgr	%r2,%r11
	j	.L323
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB52:
	.cfi_startproc
	lgr	%r1,%r3
	dsgr	%r0,%r4
	st	%r1,0(%r2)
	st	%r0,4(%r2)
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
	lpgr	%r2,%r2
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	lpgr	%r2,%r2
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	lpgr	%r2,%r2
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
	lgr	%r1,%r3
	dsgr	%r0,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
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
	j	.L345
.L347:
	aghi	%r2,4
.L345:
	lt	%r1,0(%r2)
	je	.L346
	c	%r3,0(%r2)
	jne	.L347
.L346:
	lt	%r1,0(%r2)
	lghi	%r1,0
	locgre	%r2,%r1
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
	j	.L352
.L354:
	aghi	%r2,4
	aghi	%r3,4
.L352:
	clc	0(4,%r3),0(%r2)
	jne	.L353
	lt	%r1,0(%r2)
	je	.L353
	lt	%r1,0(%r3)
	jne	.L354
.L353:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L357
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
.L355:
	lgfr	%r2,%r2
	br	%r14
.L357:
	lhi	%r2,-1
	j	.L355
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	lgr	%r1,%r2
.L360:
	aghi	%r3,4
	aghi	%r1,4
	ly	%r4,-4(%r3)
	sty	%r4,-4(%r1)
	cijlh	%r4,0,.L360
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
	lgr	%r1,%r2
	j	.L364
.L365:
	aghi	%r1,4
.L364:
	lt	%r3,0(%r1)
	jne	.L365
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
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
	aghik	%r1,%r4,1
.L368:
	brctg	%r1,.L375
	j	.L369
.L375:
	clc	0(4,%r3),0(%r2)
	jne	.L369
	lt	%r5,0(%r2)
	je	.L369
	lt	%r5,0(%r3)
	je	.L369
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
	j	.L368
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
.L371:
	lgfr	%r2,%r2
	br	%r14
.L374:
	lhi	%r2,-1
	j	.L371
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	aghik	%r1,%r4,1
	j	.L378
.L380:
	aghi	%r4,-1
	aghi	%r2,4
.L378:
	brctg	%r1,.L383
	j	.L379
.L383:
	c	%r3,0(%r2)
	jne	.L380
.L379:
	ltgr	%r4,%r4
	lghi	%r1,0
	locgre	%r2,%r1
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
	aghik	%r1,%r4,1
	j	.L386
.L388:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L386:
	brctg	%r1,.L393
	j	.L387
.L393:
	clc	0(4,%r3),0(%r2)
	je	.L388
.L387:
	cgije	%r4,0,.L391
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L392
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L389
.L391:
	lhi	%r2,0
.L389:
	lgfr	%r2,%r2
	br	%r14
.L392:
	lhi	%r2,-1
	j	.L389
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	lghi	%r1,0
	aghik	%r5,%r4,1
	j	.L396
.L397:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
.L396:
	aghi	%r4,-1
	brctg	%r5,.L397
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
	cgrje	%r2,%r3,.L400
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjhe	%r5,%r1,.L405
	aghik	%r1,%r4,-1
	sllg	%r1,%r1,2
	aghik	%r4,%r1,4
	srlg	%r4,%r4,2
	aghi	%r4,1
	j	.L402
.L403:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L402:
	brctg	%r4,.L403
	br	%r14
.L404:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
.L401:
	aghi	%r4,-1
	brctg	%r5,.L404
.L400:
	br	%r14
.L405:
	lghi	%r1,0
	aghik	%r5,%r4,1
	j	.L401
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	lgr	%r5,%r2
	aghik	%r1,%r4,1
	j	.L408
.L409:
	aghi	%r5,4
	sty	%r3,-4(%r5)
.L408:
	aghi	%r4,-1
	brctg	%r1,.L409
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
	clgrjhe	%r2,%r3,.L412
	aghik	%r1,%r4,1
	j	.L413
.L414:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L413:
	brctg	%r1,.L414
	br	%r14
.L412:
	cgrje	%r2,%r3,.L419
	lghi	%r1,0
	aghi	%r4,1
	j	.L416
.L419:
	br	%r14
.L417:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
.L416:
	brctg	%r4,.L417
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
	rllg	%r2,%r2,0(%r3)
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
	lcr	%r3,%r3
	rllg	%r2,%r2,0(%r3)
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
	rll	%r2,%r2,0(%r3)
	llgfr	%r2,%r2
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
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	llgfr	%r2,%r2
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
	sllg	%r4,%r2,0(%r3)
	lhi	%r1,64
	sr	%r1,%r3
	srlg	%r2,%r2,0(%r1)
	ogr	%r2,%r4
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
	srlg	%r4,%r2,0(%r3)
	lhi	%r1,64
	sr	%r1,%r3
	sllg	%r2,%r2,0(%r1)
	ogr	%r2,%r4
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
	sllk	%r1,%r2,0(%r3)
	lhi	%r4,16
	srk	%r3,%r4,%r3
	srl	%r2,0(%r3)
	or	%r2,%r1
	llghr	%r2,%r2
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
	srlk	%r1,%r2,0(%r3)
	lhi	%r4,16
	srk	%r3,%r4,%r3
	sll	%r2,0(%r3)
	or	%r2,%r1
	llghr	%r2,%r2
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
	sllk	%r1,%r2,0(%r3)
	lhi	%r4,8
	srk	%r3,%r4,%r3
	srl	%r2,0(%r3)
	or	%r2,%r1
	llgcr	%r2,%r2
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
	srlk	%r1,%r2,0(%r3)
	lhi	%r4,8
	srk	%r3,%r4,%r3
	sll	%r2,0(%r3)
	or	%r2,%r1
	llgcr	%r2,%r2
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
	srlg	%r1,%r2,8
	rosbg	%r1,%r2,48,55,8
	lgr	%r2,%r1
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
	risbgn	%r3,%r2,48,128+55,64-8
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,40,47,8
	rosbg	%r1,%r2,32,63,40
	ork	%r2,%r1,%r3
	llgfr	%r2,%r2
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
	lhi	%r1,0
	lhi	%r3,33
.L448:
	brct	%r3,.L451
	j	.L452
.L451:
	srlk	%r4,%r2,0(%r1)
	tmll	%r4,1
	jne	.L453
	ahi	%r1,1
	j	.L448
.L453:
	ahik	%r2,%r1,1
.L450:
	lgfr	%r2,%r2
	br	%r14
.L452:
	lhi	%r2,0
	j	.L450
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	lgr	%r1,%r2
	cgije	%r2,0,.L459
	lhi	%r2,1
	j	.L457
.L458:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r2,1
.L457:
	tmll	%r1,1
	je	.L458
.L456:
	lgfr	%r2,%r2
	br	%r14
.L459:
	lhi	%r2,0
	j	.L456
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	larl	%r5,.L466
	keb	%f0,.L467-.L466(%r5)
	jl	.L464
	keb	%f0,.L468-.L466(%r5)
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L462:
	lgfr	%r2,%r2
	br	%r14
.L464:
	lhi	%r2,1
	j	.L462
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
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	larl	%r5,.L474
	kdb	%f0,.L475-.L474(%r5)
	jl	.L472
	kdb	%f0,.L476-.L474(%r5)
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L470:
	lgfr	%r2,%r2
	br	%r14
.L472:
	lhi	%r2,1
	j	.L470
	.section	.rodata
	.align	8
.L474:
.L476:
	.long	2146435071
	.long	-1
.L475:
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
	larl	%r5,.L482
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L483-.L482(%r5)
	ld	%f6,.L483-.L482+8(%r5)
	kxbr	%f0,%f4
	jl	.L480
	ld	%f4,.L484-.L482(%r5)
	ld	%f6,.L484-.L482+8(%r5)
	kxbr	%f0,%f4
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L478:
	lgfr	%r2,%r2
	br	%r14
.L480:
	lhi	%r2,1
	j	.L478
	.section	.rodata
	.align	8
.L482:
.L484:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L483:
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
	cxfbr	%f0,%r3
	std	%f0,0(%r2)
	std	%f2,8(%r2)
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
	larl	%r5,.L495
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L494
	le	%f2,.L496-.L495(%r5)
	j	.L491
.L494:
	le	%f2,.L497-.L495(%r5)
	j	.L491
.L490:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L488
	meebr	%f2,%f2
.L491:
	tmll	%r2,1
	je	.L490
	meebr	%f0,%f2
	j	.L490
.L488:
	br	%r14
	.section	.rodata
	.align	8
.L495:
.L497:
	.long	1056964608
.L496:
	.long	1073741824
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
	larl	%r5,.L506
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L505
	ld	%f2,.L507-.L506(%r5)
	j	.L502
.L505:
	ld	%f2,.L508-.L506(%r5)
	j	.L502
.L501:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L499
	mdbr	%f2,%f2
.L502:
	tmll	%r2,1
	je	.L501
	mdbr	%f0,%f2
	j	.L501
.L499:
	br	%r14
	.section	.rodata
	.align	8
.L506:
.L508:
	.long	1071644672
	.long	0
.L507:
	.long	1073741824
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
	larl	%r5,.L517
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L510
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f4,%f0
	je	.L510
	cijl	%r4,0,.L516
	ld	%f0,.L518-.L517(%r5)
	ld	%f2,.L518-.L517+8(%r5)
	j	.L513
.L516:
	ld	%f0,.L519-.L517(%r5)
	ld	%f2,.L519-.L517+8(%r5)
	j	.L513
.L512:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L510
	mxbr	%f0,%f0
.L513:
	tmll	%r4,1
	je	.L512
	mxbr	%f4,%f0
	j	.L512
.L510:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L517:
.L519:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L518:
	.long	1073741824
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
	lgr	%r1,%r2
	aghi	%r4,1
	j	.L521
.L522:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
.L521:
	brctg	%r4,.L522
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
	lhi	%r0,0
	lghi	%r5,0
	lgr	%r1,%r2
	srst	%r5,%r1
	jo	.-4
	aghik	%r1,%r4,1
	j	.L525
.L527:
	aghi	%r3,1
	aghi	%r5,1
	aghi	%r4,-1
.L525:
	brctg	%r1,.L529
	j	.L526
.L529:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r5)
	cgijlh	%r0,0,.L527
.L526:
	cgijlh	%r4,0,.L528
	mvi	0(%r5),0
.L528:
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
	lgr	%r1,%r2
	lghi	%r2,0
	aghi	%r3,1
.L532:
	brctg	%r3,.L535
	br	%r14
.L535:
	llc	%r4,0(%r2,%r1)
	cijlh	%r4,0,.L534
	br	%r14
.L534:
	aghi	%r2,1
	j	.L532
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
.L539:
	llc	%r1,0(%r2)
	cije	%r1,0,.L545
	lgr	%r1,%r3
.L542:
	llc	%r4,0(%r1)
	cije	%r4,0,.L546
	aghi	%r1,1
	llc	%r5,-1(%r1)
	llc	%r4,0(%r2)
	crjlh	%r5,%r4,.L542
	br	%r14
.L546:
	aghi	%r2,1
	j	.L539
.L545:
	lghi	%r2,0
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
	lgr	%r1,%r2
	lghi	%r2,0
.L550:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	llc	%r4,-1(%r1)
	cijlh	%r4,0,.L550
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
	stmg	%r9,%r15,72(%r15)
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	lhi	%r0,0
	lghi	%r10,0
	lgr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slgr	%r10,%r3
	jhe	.L555
	lgr	%r11,%r3
	llgc	%r9,0(%r3)
.L556:
	lgr	%r3,%r9
	lgr	%r2,%r12
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgije	%r2,0,.L555
	lgr	%r4,%r10
	lgr	%r3,%r11
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L559
	aghi	%r12,1
	j	.L556
.L559:
	lgr	%r2,%r12
.L555:
	lmg	%r9,%r15,232(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 160
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
	lzdr	%f4
	kdbr	%f0,%f4
	jl	.L575
.L563:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L566
	kdbr	%f2,%f4
	jl	.L565
.L566:
	br	%r14
.L575:
	kdbr	%f2,%f4
	jnh	.L563
.L565:
	lcdbr	%f0,%f0
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
	lgr	%r12,%r2
	sgrk	%r10,%r3,%r5
	agr	%r10,%r2
	cgije	%r5,0,.L578
	lgr	%r11,%r4
	clgrjh	%r5,%r3,.L583
	aghik	%r8,%r4,1
	aghik	%r9,%r5,-1
	j	.L579
.L580:
	aghi	%r12,1
.L579:
	clgrjh	%r12,%r10,.L586
	llc	%r2,0(%r12)
	llc	%r1,0(%r11)
	crjlh	%r2,%r1,.L580
	lgr	%r4,%r9
	lgr	%r3,%r8
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L580
	lgr	%r2,%r12
	j	.L578
.L586:
	lghi	%r2,0
.L578:
	lmg	%r8,%r15,224(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_offset 160
	br	%r14
.L583:
	.cfi_restore_state
	lghi	%r2,0
	j	.L578
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB100:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r4
	brasl	%r14,memcpy@PLT
	agr	%r2,%r12
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	larl	%r5,.L614
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L612
	lhi	%r3,0
.L592:
	kdb	%f0,.L615-.L614(%r5)
	jnhe	.L613
	lhi	%r1,0
	j	.L594
.L612:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L592
.L596:
	ahi	%r1,1
	mdb	%f0,.L616-.L614(%r5)
.L594:
	kdb	%f0,.L615-.L614(%r5)
	jhe	.L596
.L597:
	st	%r1,0(%r2)
	cije	%r3,0,.L601
	lcdbr	%f0,%f0
.L601:
	br	%r14
.L613:
	kdb	%f0,.L616-.L614(%r5)
	jnl	.L610
	lzdr	%f2
	cdbr	%f0,%f2
	jne	.L605
	lhi	%r1,0
	j	.L597
.L600:
	ahi	%r1,-1
	adbr	%f0,%f0
.L599:
	kdb	%f0,.L616-.L614(%r5)
	jl	.L600
	j	.L597
.L605:
	lhi	%r1,0
	j	.L599
.L610:
	lhi	%r1,0
	j	.L597
	.section	.rodata
	.align	8
.L614:
.L616:
	.long	1071644672
	.long	0
.L615:
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
	lgr	%r1,%r2
	lghi	%r2,0
	j	.L618
.L619:
	risbg	%r4,%r1,63,128+63,0
	msgr	%r4,%r3
	sllg	%r3,%r3,1
	srlg	%r1,%r1,1
	la	%r2,0(%r2,%r4)
.L618:
	cgijlh	%r1,0,.L619
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L622
.L626:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L622:
	clrjhe	%r3,%r2,.L634
	brct	%r5,.L632
	j	.L635
.L632:
	cijhe	%r3,0,.L626
	lhi	%r5,0
	j	.L624
.L634:
	lhi	%r5,0
	j	.L624
.L635:
	lhi	%r5,0
	j	.L624
.L627:
	srl	%r1,1
	srlg	%r3,%r3,1
.L624:
	cije	%r1,0,.L636
	clrjl	%r2,%r3,.L627
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L627
.L636:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
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
	sllg	%r4,%r2,8
	flogr	%r4,%r4
	ahi	%r4,-33
	ltgr	%r2,%r2
	lhi	%r1,7
	locre	%r4,%r1
	lgfr	%r2,%r4
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
	srag	%r1,%r2,63
	xgrk	%r4,%r1,%r2
	flogr	%r4,%r4
	ahi	%r4,-1
	cgr	%r1,%r2
	lhi	%r1,63
	locre	%r4,%r1
	lgfr	%r2,%r4
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
	lhi	%r4,0
	j	.L647
.L648:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r3
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	ar	%r4,%r1
.L647:
	cgijlh	%r2,0,.L648
	llgfr	%r2,%r4
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
	srlk	%r5,%r4,3
	risbg	%r0,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L651
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L651
	ahik	%r1,%r4,1
	j	.L652
.L656:
	.cfi_register 12, 16
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L655:
	brct	%r1,.L656
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L658:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L652:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L658
	br	%r14
.L651:
	lghi	%r1,0
	risbg	%r5,%r5,35,128+63,0
	aghi	%r5,1
	brctg	%r5,.L670
	j	.L671
.L670:
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L654:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L654
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L660
	cgijlh	%r4,0,.L655
.L660:
	lhi	%r1,1
	j	.L655
.L671:
	.cfi_restore 12
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L665
	cgijlh	%r4,0,.L666
.L665:
	lhi	%r1,1
	j	.L666
.L667:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L666:
	brct	%r1,.L667
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
	srlk	%r5,%r4,1
	clgrjl	%r2,%r3,.L674
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L674
	ahik	%r1,%r4,1
	j	.L675
.L674:
	lghi	%r1,0
	llgtr	%r5,%r5
	aghi	%r5,1
	j	.L676
.L677:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L676:
	brctg	%r5,.L677
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	algfr	%r3,%r4
	algfr	%r2,%r4
	mvc	0(1,%r2),0(%r3)
	br	%r14
.L679:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L675:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L679
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
	srlk	%r5,%r4,2
	risbg	%r0,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L683
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L683
	ahik	%r1,%r4,1
	j	.L684
.L688:
	.cfi_register 12, 16
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L687:
	brct	%r1,.L688
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L690:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L684:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L690
	br	%r14
.L683:
	lghi	%r1,0
	risbg	%r5,%r5,34,128+63,0
	aghi	%r5,1
	brctg	%r5,.L702
	j	.L703
.L702:
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L686:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L686
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L692
	cgijlh	%r4,0,.L687
.L692:
	lhi	%r1,1
	j	.L687
.L703:
	.cfi_restore 12
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L697
	cgijlh	%r4,0,.L698
.L697:
	lhi	%r1,1
	j	.L698
.L699:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L698:
	brct	%r1,.L699
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
	lgr	%r5,%r2
	dsgr	%r4,%r3
	lgr	%r2,%r4
	lgfr	%r2,%r2
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
	cdlfbr	%f0,0,%r2,0
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
	celfbr	%f0,0,%r2,0
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
	cdlgbr	%f0,0,%r2,0
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
	celgbr	%f0,0,%r2,0
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
	lgr	%r5,%r2
	lghi	%r4,0
	dlgr	%r4,%r3
	llgfr	%r2,%r4
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
	lhi	%r4,0
	lhi	%r5,15
	lhi	%r3,17
.L718:
	brct	%r3,.L720
	j	.L719
.L720:
	srk	%r1,%r5,%r4
	srak	%r1,%r2,0(%r1)
	tmll	%r1,1
	jne	.L719
	ahi	%r4,1
	j	.L718
.L719:
	lgfr	%r2,%r4
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
	lhi	%r3,0
	lhi	%r1,17
.L723:
	brct	%r1,.L725
	j	.L724
.L725:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L724
	ahi	%r3,1
	j	.L723
.L724:
	lgfr	%r2,%r3
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
	larl	%r5,.L735
	keb	%f0,.L736-.L735(%r5)
	jhe	.L734
	cgebr	%r2,5,%f0
	br	%r14
.L734:
	seb	%f0,.L736-.L735(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L735:
.L736:
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
	lhi	%r5,0
	lhi	%r4,0
	lhi	%r3,17
	j	.L738
.L739:
	srak	%r1,%r2,0(%r4)
	nilf	%r1,1
	ahi	%r4,1
	ar	%r5,%r1
.L738:
	brct	%r3,.L739
	risbg	%r2,%r5,63,128+63,0
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
	lhi	%r5,0
	lhi	%r4,0
	lhi	%r3,17
	j	.L742
.L743:
	srak	%r1,%r2,0(%r4)
	nilf	%r1,1
	ahi	%r4,1
	ar	%r5,%r1
.L742:
	brct	%r3,.L743
	lgfr	%r2,%r5
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
	lhi	%r4,0
	j	.L746
.L747:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r3
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	ar	%r4,%r1
.L746:
	cgijlh	%r2,0,.L747
	llgfr	%r2,%r4
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
	lgr	%r4,%r2
	cgije	%r2,0,.L753
	lhi	%r2,0
	j	.L751
.L752:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r4
	risbgn	%r4,%r4,32,128+62,1
	srlg	%r3,%r3,1
	ar	%r2,%r1
.L751:
	cgijlh	%r3,0,.L752
.L750:
	llgfr	%r2,%r2
	br	%r14
.L753:
	lhi	%r2,0
	j	.L750
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	lhi	%r1,1
	lhi	%r5,33
	j	.L756
.L760:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L756:
	clrjhe	%r3,%r2,.L768
	brct	%r5,.L766
	j	.L769
.L766:
	cijhe	%r3,0,.L760
	lhi	%r5,0
	j	.L758
.L768:
	lhi	%r5,0
	j	.L758
.L769:
	lhi	%r5,0
	j	.L758
.L761:
	srl	%r1,1
	srlg	%r3,%r3,1
.L758:
	cije	%r1,0,.L770
	clrjl	%r2,%r3,.L761
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L761
.L770:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
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
	kebr	%f0,%f2
	jl	.L775
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L773:
	lgfr	%r2,%r2
	br	%r14
.L775:
	lhi	%r2,-1
	j	.L773
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	kdbr	%f0,%f2
	jl	.L780
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L778:
	lgfr	%r2,%r2
	br	%r14
.L780:
	lhi	%r2,-1
	j	.L778
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB126:
	.cfi_startproc
	msgr	%r2,%r3
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
	msgr	%r2,%r3
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
	cijl	%r3,0,.L794
	lhi	%r0,0
.L787:
	lhi	%r5,33
	lhi	%r4,0
	j	.L788
.L794:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L787
.L790:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	sll	%r2,1
	lgfr	%r2,%r2
	sra	%r3,1
	lgfr	%r3,%r3
	ar	%r4,%r1
.L788:
	cgije	%r3,0,.L789
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L790
.L789:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r1,%r2
	cgijl	%r2,0,.L802
	lhi	%r12,0
.L797:
	cgijl	%r3,0,.L803
.L798:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L802:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L797
.L803:
	lcgr	%r3,%r3
	xilf	%r12,1
	j	.L798
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r1,%r2
	cgijl	%r2,0,.L810
	lhi	%r12,0
.L806:
	lpgr	%r3,%r3
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L810:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L806
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	lhi	%r1,1
	lhi	%r5,17
.L813:
	clrjhe	%r3,%r2,.L825
	brct	%r5,.L823
	j	.L826
.L823:
	tmll	%r3,32768
	jne	.L827
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	j	.L813
.L825:
	lhi	%r0,0
	j	.L815
.L826:
	lhi	%r0,0
	j	.L815
.L827:
	lhi	%r0,0
	j	.L815
.L818:
	risbgn	%r1,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
.L815:
	llhr	%r5,%r1
	cije	%r5,0,.L828
	clrjl	%r2,%r3,.L818
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L818
.L828:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llghr	%r2,%r2
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
	lghi	%r1,1
	lhi	%r5,65
	j	.L831
.L835:
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
.L831:
	clgrjhe	%r3,%r2,.L843
	brct	%r5,.L841
	j	.L844
.L841:
	tmlh	%r3,32768
	je	.L835
	lghi	%r5,0
	j	.L833
.L843:
	lghi	%r5,0
	j	.L833
.L844:
	lghi	%r5,0
	j	.L833
.L836:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
.L833:
	cgije	%r1,0,.L845
	clgrjl	%r2,%r3,.L836
	sgr	%r2,%r3
	ogr	%r5,%r1
	j	.L836
.L845:
	ltgr	%r4,%r4
	locgre	%r2,%r5
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
	tmll	%r3,32
	je	.L848
	lghi	%r4,0
	sllk	%r1,%r2,4064(%r3)
	risbgn	%r4,%r1,0,0+32-1,64-0-32
.L849:
	lgr	%r2,%r4
.L850:
	br	%r14
.L848:
	cgije	%r3,0,.L850
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
	j	.L849
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L854
	lghi	%r3,0
	sllg	%r1,%r1,4032(%r4)
.L855:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L854:
	cgije	%r4,0,.L858
	sllg	%r3,%r1,0(%r4)
	sllg	%r5,%r5,0(%r4)
	lhi	%r0,64
	srk	%r4,%r0,%r4
	srlg	%r1,%r1,0(%r4)
	ogr	%r1,%r5
	j	.L855
.L858:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
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
	tmll	%r3,32
	je	.L861
	srag	%r1,%r2,32
	srak	%r2,%r1,31
	lghi	%r4,0
	risbgn	%r4,%r2,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r4,%r1
.L862:
	lgr	%r2,%r4
.L863:
	br	%r14
.L861:
	cgije	%r3,0,.L863
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
	j	.L862
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	tmll	%r4,64
	je	.L867
	srag	%r5,%r1,63
	srag	%r1,%r1,4032(%r4)
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L867:
	cgije	%r4,0,.L875
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srag	%r5,%r1,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	sllg	%r1,%r1,0(%r12)
	srlg	%r3,%r3,0(%r4)
	ogr	%r1,%r3
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L875:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
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
	risbgn	%r3,%r2,48,128+55,64-8
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,56,63,40
	or	%r1,%r3
	rosbg	%r1,%r2,40,47,8
	llgfr	%r2,%r1
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
	clfi	%r2,65535
	lhi	%r1,0
	slbr	%r1,%r1
	lcr	%r1,%r1
	sll	%r1,4
	lhi	%r3,16
	sr	%r3,%r1
	srl	%r2,0(%r3)
	risbg	%r3,%r2,48,128+55,0
	ahi	%r3,-1
	risbgn	%r3,%r3,60,128+60,64-28
	lhi	%r4,8
	sr	%r4,%r3
	srl	%r2,0(%r4)
	ar	%r1,%r3
	risbg	%r3,%r2,56,128+59,0
	ahi	%r3,-1
	risbgn	%r3,%r3,61,128+61,64-29
	lhi	%r4,4
	sr	%r4,%r3
	srl	%r2,0(%r4)
	ar	%r1,%r3
	risbg	%r3,%r2,60,128+61,0
	ahi	%r3,-1
	risbgn	%r3,%r3,62,128+62,64-30
	lhi	%r4,2
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
	lg	%r3,0(%r2)
	lg	%r5,8(%r2)
	lpgr	%r2,%r3
	aghi	%r2,-1
	srag	%r2,%r2,63
	lgfr	%r1,%r2
	lghi	%r4,-1
	xgrk	%r4,%r1,%r4
	ngr	%r4,%r3
	ngr	%r1,%r5
	ogr	%r4,%r1
	flogr	%r4,%r4
	nilf	%r2,64
	ar	%r2,%r4
	lgfr	%r2,%r2
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
	srag	%r4,%r2,32
	srag	%r1,%r3,32
	crjl	%r4,%r1,.L887
	crjh	%r4,%r1,.L888
	clrjl	%r2,%r3,.L889
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L886:
	lgfr	%r2,%r2
	br	%r14
.L887:
	lhi	%r2,0
	j	.L886
.L888:
	lhi	%r2,2
	j	.L886
.L889:
	lhi	%r2,0
	j	.L886
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	brasl	%r14,__cmpdi2@PLT
	ahi	%r2,-1
	lgfr	%r2,%r2
	lmg	%r14,%r15,272(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
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
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	lg	%r1,0(%r3)
	lg	%r2,8(%r3)
	cgrjl	%r4,%r1,.L897
	cgrjh	%r4,%r1,.L898
	clgrjl	%r5,%r2,.L899
	clgr	%r5,%r2
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L896:
	lgfr	%r2,%r2
	br	%r14
.L897:
	lhi	%r2,0
	j	.L896
.L898:
	lhi	%r2,2
	j	.L896
.L899:
	lhi	%r2,0
	j	.L896
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	llhr	%r1,%r2
	ahi	%r1,-1
	risbgn	%r1,%r1,59,128+59,64-27
	srl	%r2,0(%r1)
	llcr	%r3,%r2
	ahi	%r3,-1
	risbgn	%r3,%r3,60,128+60,64-28
	srl	%r2,0(%r3)
	ar	%r1,%r3
	risbg	%r3,%r2,60,128+63,0
	ahi	%r3,-1
	risbgn	%r3,%r3,61,128+61,64-29
	srl	%r2,0(%r3)
	ar	%r1,%r3
	risbg	%r3,%r2,62,128+63,0
	ahi	%r3,-1
	risbgn	%r3,%r3,62,128+62,64-30
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
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	lpgr	%r2,%r3
	aghi	%r2,-1
	srag	%r2,%r2,63
	lgfr	%r4,%r2
	ngr	%r1,%r4
	lghi	%r5,-1
	xgr	%r4,%r5
	ngr	%r4,%r3
	ogr	%r4,%r1
	lcgr	%r1,%r4
	ngr	%r4,%r1
	flogr	%r4,%r4
	lghi	%r1,63
	sgr	%r1,%r4
	nilf	%r2,64
	ar	%r2,%r1
	lgfr	%r2,%r2
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
	lg	%r3,0(%r2)
	lg	%r1,8(%r2)
	cgijlh	%r1,0,.L907
	lcgr	%r4,%r3
	ngr	%r4,%r3
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r3,%r3
	locre	%r2,%r1
.L908:
	lgfr	%r2,%r2
	br	%r14
.L907:
	lcgr	%r4,%r1
	ngr	%r4,%r1
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L908
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	tmll	%r3,32
	je	.L912
	lghi	%r4,0
	iihf	%r4,0
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r4,%r1
.L913:
	lgr	%r2,%r4
.L914:
	br	%r14
.L912:
	cgije	%r3,0,.L914
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
	j	.L913
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	tmll	%r4,64
	je	.L918
	lghi	%r5,0
	srlg	%r1,%r1,4032(%r4)
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L918:
	cgije	%r4,0,.L926
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlg	%r5,%r1,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	sllg	%r1,%r1,0(%r12)
	srlg	%r3,%r3,0(%r4)
	ogr	%r1,%r3
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L926:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r2
	risbg	%r4,%r2,48,128+63,0
	risbg	%r5,%r3,48,128+63,0
	lr	%r1,%r4
	msr	%r1,%r5
	lghi	%r2,0
	lr	%r2,%r1
	srlk	%r1,%r2,16
	risbg	%r12,%r2,48,128+63,0
	lr	%r2,%r12
	srl	%r0,16
	msr	%r5,%r0
	ar	%r1,%r5
	sllk	%r5,%r1,16
	ar	%r5,%r2
	lr	%r2,%r5
	srl	%r1,16
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srlk	%r1,%r2,16
	risbg	%r5,%r2,48,128+63,0
	lr	%r2,%r5
	srl	%r3,16
	msr	%r4,%r3
	ar	%r1,%r4
	sllk	%r4,%r1,16
	ar	%r4,%r2
	lr	%r2,%r4
	srag	%r4,%r2,32
	srl	%r1,16
	ar	%r1,%r4
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srag	%r4,%r2,32
	lr	%r1,%r0
	msr	%r1,%r3
	ar	%r1,%r4
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	lgdr	%r12,%f0
	.cfi_restore 12
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r11,%r2
	lgr	%r12,%r3
	llgfr	%r3,%r3
	llgfr	%r2,%r2
	brasl	%r14,__muldsi3@PLT
	srag	%r3,%r2,32
	srag	%r1,%r11,32
	msr	%r1,%r12
	srag	%r12,%r12,32
	msr	%r12,%r11
	ar	%r1,%r12
	ar	%r1,%r3
	risbgn	%r2,%r1,0,64-32-1,32
	lmg	%r11,%r15,248(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbg	%r0,%r3,32,128+63,0
	risbg	%r12,%r4,32,128+63,0
	lgr	%r11,%r0
	msgr	%r11,%r12
	srlg	%r1,%r11,32
	srlg	%r3,%r3,32
	msgr	%r12,%r3
	agr	%r1,%r12
	srlg	%r12,%r1,32
	srlg	%r4,%r4,32
	msgr	%r0,%r4
	algfr	%r0,%r1
	lgr	%r1,%r0
	sllg	%r0,%r0,32
	algfr	%r0,%r11
	srlg	%r1,%r1,32
	agr	%r1,%r12
	msgr	%r3,%r4
	agrk	%r1,%r3,%r1
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
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
	lgr	%r11,%r2
	lg	%r8,0(%r3)
	lg	%r9,8(%r3)
	lg	%r10,0(%r4)
	lg	%r12,8(%r4)
	lgr	%r4,%r12
	lgr	%r3,%r9
	la	%r2,160(%r15)
	brasl	%r14,__mulddi3@PLT
	msgr	%r12,%r8
	msgr	%r10,%r9
	agr	%r12,%r10
	ag	%r12,160(%r15)
	stg	%r12,0(%r11)
	lg	%r1,168(%r15)
	stg	%r1,8(%r11)
	lgr	%r2,%r11
	lmg	%r8,%r15,240(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_offset 160
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
	lcgr	%r2,%r2
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
	lghi	%r4,0
	lghi	%r5,0
	slg	%r5,8(%r3)
	slbg	%r4,0(%r3)
	stg	%r4,0(%r2)
	stg	%r5,8(%r2)
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
	lr	%r1,%r2
	rxsbg	%r1,%r2,32,63,32
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	lhi	%r2,27030
	sra	%r2,0(%r1)
	risbg	%r2,%r2,63,128+63,0
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
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	lhi	%r1,27030
	srak	%r2,%r1,0(%r2)
	risbg	%r2,%r2,63,128+63,0
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
	larl	%r5,.L952
	srlg	%r1,%r2,1
	ng	%r1,.L953-.L952(%r5)
	sgr	%r2,%r1
	srlg	%r1,%r2,2
	ng	%r1,.L954-.L952(%r5)
	ng	%r2,.L954-.L952(%r5)
	agr	%r2,%r1
	srlg	%r1,%r2,4
	agr	%r2,%r1
	ng	%r2,.L955-.L952(%r5)
	srlg	%r1,%r2,32
	ar	%r1,%r2
	srlk	%r2,%r1,16
	ar	%r1,%r2
	srlk	%r2,%r1,8
	ar	%r2,%r1
	risbg	%r2,%r2,57,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L952:
.L955:
	.quad	1085102592571150095
.L954:
	.quad	3689348814741910323
.L953:
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	srlg	%r1,%r3,1
	srlg	%r0,%r2,1
	lgrl	%r12,.LC19
	ngrk	%r4,%r0,%r12
	ngrk	%r5,%r1,%r12
	slgr	%r3,%r5
	slbgr	%r2,%r4
	srlg	%r4,%r3,2
	srlg	%r5,%r2,2
	lgrl	%r12,.LC20
	ngrk	%r0,%r5,%r12
	ngrk	%r1,%r4,%r12
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
	larl	%r5,.L968
	srlk	%r3,%r2,31
	ld	%f2,.L969-.L968(%r5)
	j	.L964
.L962:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L963
	mdbr	%f0,%f0
.L964:
	tmll	%r2,1
	je	.L962
	mdbr	%f2,%f0
	j	.L962
.L963:
	cije	%r3,0,.L966
	ld	%f0,.L969-.L968(%r5)
	ddbr	%f0,%f2
	br	%r14
.L966:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L968:
.L969:
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
	larl	%r5,.L977
	srlk	%r3,%r2,31
	le	%f2,.L978-.L977(%r5)
	j	.L973
.L971:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L972
	meebr	%f0,%f0
.L973:
	tmll	%r2,1
	je	.L971
	meebr	%f2,%f0
	j	.L971
.L972:
	cije	%r3,0,.L975
	le	%f0,.L978-.L977(%r5)
	debr	%f0,%f2
	br	%r14
.L975:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L977:
.L978:
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
	risbgn	%r4,%r2,64-32,128+63,0+32
	risbgn	%r1,%r3,64-32,128+63,0+32
	clrjl	%r4,%r1,.L981
	clrjh	%r4,%r1,.L982
	clrjl	%r2,%r3,.L983
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L980:
	lgfr	%r2,%r2
	br	%r14
.L981:
	lhi	%r2,0
	j	.L980
.L982:
	lhi	%r2,2
	j	.L980
.L983:
	lhi	%r2,0
	j	.L980
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	stmg	%r14,%r15,112(%r15)
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	brasl	%r14,__ucmpdi2@PLT
	ahi	%r2,-1
	lgfr	%r2,%r2
	lmg	%r14,%r15,272(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
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
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	lg	%r1,0(%r3)
	lg	%r2,8(%r3)
	clgrjl	%r4,%r1,.L991
	clgrjh	%r4,%r1,.L992
	clgrjl	%r5,%r2,.L993
	clgr	%r5,%r2
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L990:
	lgfr	%r2,%r2
	br	%r14
.L991:
	lhi	%r2,0
	j	.L990
.L992:
	lhi	%r2,2
	j	.L990
.L993:
	lhi	%r2,0
	j	.L990
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
