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
	cije	%r2,32,.L98
	chi	%r2,9
	lhi	%r2,0
	lhi	%r1,1
	locre	%r2,%r1
.L97:
	lgfr	%r2,%r2
	br	%r14
.L98:
	lhi	%r2,1
	j	.L97
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	clijle	%r2,31,.L103
	chi	%r2,127
	lhi	%r2,0
	lhi	%r1,1
	locre	%r2,%r1
.L102:
	lgfr	%r2,%r2
	br	%r14
.L103:
	lhi	%r2,1
	j	.L102
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
	cije	%r2,32,.L116
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L115:
	lgfr	%r2,%r2
	br	%r14
.L116:
	lhi	%r2,1
	j	.L115
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
	clijle	%r2,31,.L123
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L124
	ahik	%r1,%r2,-8232
	clijle	%r1,1,.L125
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	j	.L122
.L123:
	lhi	%r2,1
.L122:
	lgfr	%r2,%r2
	br	%r14
.L124:
	lhi	%r2,1
	j	.L122
.L125:
	lhi	%r2,1
	j	.L122
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
	clijle	%r2,254,.L138
	lhi	%r1,8231
	clrjle	%r2,%r1,.L133
	ahik	%r1,%r2,-8234
	llill	%r3,47061
	clrjle	%r1,%r3,.L134
	slfi	%r1,49110
	lhi	%r3,8184
	clrjle	%r1,%r3,.L135
	ahi	%r1,-8188
	iilf	%r3,1048579
	clrjh	%r1,%r3,.L136
	nilf	%r2,65534
	cfi	%r2,65534
	lhi	%r2,0
	lhi	%r1,1
	locrne	%r2,%r1
	j	.L132
.L138:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
.L132:
	lgfr	%r2,%r2
	br	%r14
.L133:
	lhi	%r2,1
	j	.L132
.L134:
	lhi	%r2,1
	j	.L132
.L135:
	lhi	%r2,1
	j	.L132
.L136:
	lhi	%r2,0
	j	.L132
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
	clijle	%r1,9,.L142
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L141:
	lgfr	%r2,%r2
	br	%r14
.L142:
	lhi	%r2,1
	j	.L141
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
	jo	.L151
	kdbr	%f0,%f2
	jnh	.L154
	sdbr	%f0,%f2
	br	%r14
.L151:
	ldr	%f0,%f2
	br	%r14
.L154:
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
	jo	.L160
	kebr	%f0,%f2
	jnh	.L163
	sebr	%f0,%f2
	br	%r14
.L160:
	ler	%f0,%f2
	br	%r14
.L163:
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
	jo	.L169
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L167
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L167:
	kdbr	%f0,%f2
	jnl	.L166
	ldr	%f0,%f2
	br	%r14
.L169:
	ldr	%f0,%f2
.L166:
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
	jo	.L180
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L178
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L178:
	kebr	%f0,%f2
	jnl	.L177
	ler	%f0,%f2
	br	%r14
.L180:
	ler	%f0,%f2
.L177:
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
	jo	.L199
	cxbr	%f4,%f4
	jo	.L200
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L191
	tcxb	%f0,1365
	je	.L192
	lxr	%f0,%f4
.L192:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L199:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L200:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L191:
	kxbr	%f0,%f4
	jnl	.L193
	lxr	%f0,%f4
.L193:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
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
	cdbr	%f0,%f0
	jo	.L206
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L204
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L204:
	kdbr	%f0,%f2
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L206:
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
	jo	.L219
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L217
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L217:
	kebr	%f0,%f2
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L219:
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
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	cxbr	%f4,%f4
	jo	.L240
	cxbr	%f0,%f0
	jo	.L241
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L232
	tcxb	%f4,1365
	je	.L233
	lxr	%f0,%f4
.L233:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L240:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L241:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L232:
	kxbr	%f4,%f0
	jnl	.L234
	lxr	%f0,%f4
.L234:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
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
	larl	%r1,s.0
	larl	%r4,digits
	j	.L244
.L245:
	risbg	%r3,%r2,58,128+63,0
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	aghi	%r1,1
	srl	%r2,6
.L244:
	cijlh	%r2,0,.L245
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
	cgije	%r3,0,.L254
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	ber	%r14
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
	br	%r14
.L254:
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
	je	.L257
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L257:
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
	j	.L261
.L262:
	aghi	%r10,1
.L261:
	brctg	%r12,.L264
	j	.L265
.L264:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L262
	msgr	%r10,%r9
	lgdr	%r2,%f8
	agr	%r2,%r10
	j	.L263
.L265:
	aghik	%r1,%r13,1
	stg	%r1,0(%r7)
	msgr	%r13,%r9
	lgr	%r4,%r9
	lgr	%r3,%r8
	lgdr	%r1,%f8
	la	%r2,0(%r13,%r1)
	brasl	%r14,memcpy@PLT
.L263:
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
	j	.L268
.L269:
	aghi	%r10,1
.L268:
	brctg	%r12,.L271
	j	.L272
.L271:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L269
	msgr	%r10,%r9
	agrk	%r2,%r7,%r10
	j	.L270
.L272:
	lghi	%r2,0
.L270:
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
	j	.L277
.L278:
	aghi	%r12,1
.L277:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L278
	llc	%r1,0(%r12)
	cije	%r1,43,.L284
	cijlh	%r1,45,.L285
	lhi	%r3,1
.L279:
	aghi	%r12,1
.L280:
	lhi	%r1,0
	j	.L281
.L284:
	lhi	%r3,0
	j	.L279
.L285:
	lhi	%r3,0
	j	.L280
.L282:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sll	%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
.L281:
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L282
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
	j	.L289
.L290:
	aghi	%r12,1
.L289:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L290
	llc	%r1,0(%r12)
	cije	%r1,43,.L296
	cijlh	%r1,45,.L297
	lhi	%r3,1
.L291:
	aghi	%r12,1
.L292:
	lghi	%r2,0
	j	.L293
.L296:
	lhi	%r3,0
	j	.L291
.L297:
	lhi	%r3,0
	j	.L292
.L294:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L293:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L294
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
	j	.L301
.L302:
	aghi	%r12,1
.L301:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L302
	llc	%r1,0(%r12)
	cije	%r1,43,.L308
	cijlh	%r1,45,.L309
	lhi	%r3,1
.L303:
	aghi	%r12,1
.L304:
	lghi	%r2,0
	j	.L305
.L308:
	lhi	%r3,0
	j	.L303
.L309:
	lhi	%r3,0
	j	.L304
.L306:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L305:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L306
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
	j	.L313
.L320:
	srlg	%r11,%r11,1
.L313:
	cgije	%r11,0,.L319
	srlg	%r12,%r11,1
	msgr	%r12,%r10
	agr	%r12,%r9
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	cijl	%r2,0,.L320
	cijle	%r2,0,.L318
	agrk	%r9,%r12,%r10
	srlg	%r1,%r11,1
	aghi	%r11,-1
	sgr	%r11,%r1
	j	.L313
.L319:
	lghi	%r2,0
.L316:
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
.L318:
	.cfi_restore_state
	lgr	%r2,%r12
	j	.L316
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
	j	.L323
.L325:
	sra	%r12,1
.L323:
	cije	%r12,0,.L328
	srak	%r1,%r12,1
	lgr	%r11,%r9
	msgfr	%r11,%r1
	agr	%r11,%r10
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L327
	cijle	%r2,0,.L325
	agrk	%r10,%r11,%r9
	ahi	%r12,-1
	j	.L325
.L328:
	lghi	%r2,0
.L324:
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
.L327:
	.cfi_restore_state
	lgr	%r2,%r11
	j	.L324
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
	larl	%r5,.L467
	keb	%f0,.L468-.L467(%r5)
	jl	.L464
	keb	%f0,.L469-.L467(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L462:
	lgfr	%r2,%r2
	br	%r14
.L464:
	lhi	%r2,1
	j	.L462
	.section	.rodata
	.align	8
.L467:
.L469:
	.long	2139095039
.L468:
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
	larl	%r5,.L476
	kdb	%f0,.L477-.L476(%r5)
	jl	.L473
	kdb	%f0,.L478-.L476(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L471:
	lgfr	%r2,%r2
	br	%r14
.L473:
	lhi	%r2,1
	j	.L471
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
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	larl	%r5,.L485
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L486-.L485(%r5)
	ld	%f6,.L486-.L485+8(%r5)
	kxbr	%f0,%f4
	jl	.L482
	ld	%f4,.L487-.L485(%r5)
	ld	%f6,.L487-.L485+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L480:
	lgfr	%r2,%r2
	br	%r14
.L482:
	lhi	%r2,1
	j	.L480
	.section	.rodata
	.align	8
.L485:
.L487:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L486:
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
	larl	%r5,.L497
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L496
	le	%f2,.L498-.L497(%r5)
	j	.L494
.L496:
	le	%f2,.L499-.L497(%r5)
	j	.L494
.L493:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L491
	meebr	%f2,%f2
.L494:
	tmll	%r2,1
	je	.L493
	meebr	%f0,%f2
	j	.L493
.L491:
	br	%r14
	.section	.rodata
	.align	8
.L497:
.L499:
	.long	1056964608
.L498:
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
	larl	%r5,.L507
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L506
	ld	%f2,.L508-.L507(%r5)
	j	.L504
.L506:
	ld	%f2,.L509-.L507(%r5)
	j	.L504
.L503:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L501
	mdbr	%f2,%f2
.L504:
	tmll	%r2,1
	je	.L503
	mdbr	%f0,%f2
	j	.L503
.L501:
	br	%r14
	.section	.rodata
	.align	8
.L507:
.L509:
	.long	1071644672
	.long	0
.L508:
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
	jo	.L511
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f4,%f0
	je	.L511
	cijl	%r4,0,.L516
	ld	%f0,.L518-.L517(%r5)
	ld	%f2,.L518-.L517+8(%r5)
	j	.L514
.L516:
	ld	%f0,.L519-.L517(%r5)
	ld	%f2,.L519-.L517+8(%r5)
	j	.L514
.L513:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L511
	mxbr	%f0,%f0
.L514:
	tmll	%r4,1
	je	.L513
	mxbr	%f4,%f0
	j	.L513
.L511:
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
	lgr	%r11,%r3
	lhi	%r0,0
	lghi	%r10,0
	lgr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slgr	%r10,%r3
	jhe	.L555
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
	jl	.L574
.L562:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L565
	kdbr	%f2,%f4
	jl	.L564
.L565:
	br	%r14
.L574:
	kdbr	%f2,%f4
	jnh	.L562
.L564:
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
	lgr	%r11,%r4
	sgrk	%r10,%r3,%r5
	agr	%r10,%r2
	cgije	%r5,0,.L577
	clgrjh	%r5,%r3,.L582
	aghik	%r8,%r4,1
	aghik	%r9,%r5,-1
	j	.L578
.L579:
	aghi	%r12,1
.L578:
	clgrjh	%r12,%r10,.L584
	llc	%r2,0(%r12)
	llc	%r1,0(%r11)
	crjlh	%r2,%r1,.L579
	lgr	%r4,%r9
	lgr	%r3,%r8
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L579
	lgr	%r2,%r12
	j	.L577
.L584:
	lghi	%r2,0
.L577:
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
.L582:
	.cfi_restore_state
	lghi	%r2,0
	j	.L577
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
	larl	%r5,.L610
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L608
	lhi	%r3,0
.L589:
	kdb	%f0,.L611-.L610(%r5)
	jnhe	.L609
	lhi	%r1,0
	j	.L591
.L608:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L589
.L593:
	ahi	%r1,1
	mdb	%f0,.L612-.L610(%r5)
.L591:
	kdb	%f0,.L611-.L610(%r5)
	jhe	.L593
.L594:
	st	%r1,0(%r2)
	cije	%r3,0,.L598
	lcdbr	%f0,%f0
.L598:
	br	%r14
.L609:
	kdb	%f0,.L612-.L610(%r5)
	jnl	.L607
	lzdr	%f2
	cdbr	%f0,%f2
	jne	.L602
	lhi	%r1,0
	j	.L594
.L597:
	ahi	%r1,-1
	adbr	%f0,%f0
.L596:
	kdb	%f0,.L612-.L610(%r5)
	jl	.L597
	j	.L594
.L602:
	lhi	%r1,0
	j	.L596
.L607:
	lhi	%r1,0
	j	.L594
	.section	.rodata
	.align	8
.L610:
.L612:
	.long	1071644672
	.long	0
.L611:
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
	j	.L614
.L616:
	agrk	%r4,%r2,%r3
	tmll	%r1,1
	locgrne	%r2,%r4
	sllg	%r3,%r3,1
	srlg	%r1,%r1,1
.L614:
	cgijlh	%r1,0,.L616
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
	j	.L619
.L623:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L619:
	clrjhe	%r3,%r2,.L631
	brct	%r5,.L629
	j	.L632
.L629:
	cijhe	%r3,0,.L623
	lhi	%r5,0
	j	.L621
.L631:
	lhi	%r5,0
	j	.L621
.L632:
	lhi	%r5,0
	j	.L621
.L624:
	srl	%r1,1
	srlg	%r3,%r3,1
.L621:
	cije	%r1,0,.L633
	clrjl	%r2,%r3,.L624
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L624
.L633:
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
	lhi	%r1,0
	j	.L645
.L647:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L645:
	cgijlh	%r2,0,.L647
	llgfr	%r2,%r1
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r4,3
	risbg	%r0,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L650
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L650
	ahik	%r1,%r4,1
	j	.L651
.L650:
	lghi	%r1,0
	risbg	%r5,%r5,35,128+63,0
	aghi	%r5,1
	j	.L652
.L653:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L652:
	brctg	%r5,.L653
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L659
	cgijlh	%r4,0,.L654
.L659:
	lhi	%r1,1
	j	.L654
.L655:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L654:
	brct	%r1,.L655
.L649:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L657:
	.cfi_restore_state
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L651:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L657
	j	.L649
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
	clgrjl	%r2,%r3,.L662
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L662
	ahik	%r1,%r4,1
	j	.L663
.L662:
	lghi	%r1,0
	llgtr	%r5,%r5
	aghi	%r5,1
	j	.L664
.L665:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L664:
	brctg	%r5,.L665
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	algfr	%r3,%r4
	algfr	%r2,%r4
	mvc	0(1,%r2),0(%r3)
	br	%r14
.L667:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L663:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L667
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r4,2
	risbg	%r0,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L671
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L671
	ahik	%r1,%r4,1
	j	.L672
.L671:
	lghi	%r1,0
	risbg	%r5,%r5,34,128+63,0
	aghi	%r5,1
	j	.L673
.L674:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L673:
	brctg	%r5,.L674
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L680
	cgijlh	%r4,0,.L675
.L680:
	lhi	%r1,1
	j	.L675
.L676:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L675:
	brct	%r1,.L676
.L670:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L678:
	.cfi_restore_state
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L672:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L678
	j	.L670
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
.L695:
	brct	%r3,.L697
	j	.L696
.L697:
	srk	%r1,%r5,%r4
	srak	%r1,%r2,0(%r1)
	tmll	%r1,1
	jne	.L696
	ahi	%r4,1
	j	.L695
.L696:
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
.L700:
	brct	%r1,.L702
	j	.L701
.L702:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L701
	ahi	%r3,1
	j	.L700
.L701:
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
	larl	%r5,.L711
	keb	%f0,.L712-.L711(%r5)
	jhe	.L710
	cgebr	%r2,5,%f0
	br	%r14
.L710:
	seb	%f0,.L712-.L711(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L711:
.L712:
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
	lhi	%r3,0
	lhi	%r4,0
	lhi	%r1,17
	j	.L714
.L716:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L714:
	brct	%r1,.L716
	risbg	%r2,%r3,63,128+63,0
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
	lhi	%r3,0
	lhi	%r4,0
	lhi	%r1,17
	j	.L719
.L721:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L719:
	brct	%r1,.L721
	lgfr	%r2,%r3
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
	lhi	%r1,0
	j	.L724
.L726:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L724:
	cgijlh	%r2,0,.L726
	llgfr	%r2,%r1
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
	lgr	%r1,%r2
	cgije	%r2,0,.L733
	lhi	%r2,0
	j	.L730
.L732:
	ark	%r4,%r2,%r1
	tmll	%r3,1
	locrne	%r2,%r4
	risbgn	%r1,%r1,32,128+62,1
	srlg	%r3,%r3,1
.L730:
	cgijlh	%r3,0,.L732
.L729:
	llgfr	%r2,%r2
	br	%r14
.L733:
	lhi	%r2,0
	j	.L729
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
	j	.L736
.L740:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L736:
	clrjhe	%r3,%r2,.L748
	brct	%r5,.L746
	j	.L749
.L746:
	cijhe	%r3,0,.L740
	lhi	%r5,0
	j	.L738
.L748:
	lhi	%r5,0
	j	.L738
.L749:
	lhi	%r5,0
	j	.L738
.L741:
	srl	%r1,1
	srlg	%r3,%r3,1
.L738:
	cije	%r1,0,.L750
	clrjl	%r2,%r3,.L741
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L741
.L750:
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
	jl	.L754
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L753:
	lgfr	%r2,%r2
	br	%r14
.L754:
	lhi	%r2,-1
	j	.L753
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
	jl	.L759
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L758:
	lgfr	%r2,%r2
	br	%r14
.L759:
	lhi	%r2,-1
	j	.L758
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
	cijl	%r3,0,.L775
	lhi	%r0,0
.L767:
	lhi	%r5,33
	lhi	%r1,0
	j	.L768
.L775:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L767
.L771:
	ark	%r4,%r1,%r2
	tmll	%r3,1
	locrne	%r1,%r4
	sll	%r2,1
	lgfr	%r2,%r2
	sra	%r3,1
	lgfr	%r3,%r3
.L768:
	cgije	%r3,0,.L770
	ahik	%r4,%r5,-1
	lr	%r5,%r4
	tml	%r4,255
	jne	.L771
.L770:
	lcr	%r2,%r1
	ltr	%r0,%r0
	locre	%r2,%r1
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
	cgijl	%r2,0,.L782
	lhi	%r12,0
.L778:
	cgijl	%r3,0,.L783
.L779:
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
.L782:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L778
.L783:
	lcgr	%r3,%r3
	xilf	%r12,1
	j	.L779
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
	cgijl	%r2,0,.L790
	lhi	%r12,0
.L786:
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
.L790:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L786
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
.L793:
	clrjhe	%r3,%r2,.L805
	brct	%r5,.L803
	j	.L806
.L803:
	tmll	%r3,32768
	jne	.L807
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	j	.L793
.L805:
	lhi	%r0,0
	j	.L795
.L806:
	lhi	%r0,0
	j	.L795
.L807:
	lhi	%r0,0
	j	.L795
.L798:
	risbgn	%r1,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
.L795:
	llhr	%r5,%r1
	cije	%r5,0,.L808
	clrjl	%r2,%r3,.L798
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L798
.L808:
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
	j	.L811
.L815:
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
.L811:
	clgrjhe	%r3,%r2,.L823
	brct	%r5,.L821
	j	.L824
.L821:
	tmlh	%r3,32768
	je	.L815
	lghi	%r5,0
	j	.L813
.L823:
	lghi	%r5,0
	j	.L813
.L824:
	lghi	%r5,0
	j	.L813
.L816:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
.L813:
	cgije	%r1,0,.L825
	clgrjl	%r2,%r3,.L816
	sgr	%r2,%r3
	ogr	%r5,%r1
	j	.L816
.L825:
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
	je	.L828
	lghi	%r4,0
	sllk	%r1,%r2,4064(%r3)
	risbgn	%r4,%r1,0,0+32-1,64-0-32
.L829:
	lgr	%r2,%r4
.L830:
	br	%r14
.L828:
	cgije	%r3,0,.L830
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
	j	.L829
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L834
	lghi	%r1,0
	sllg	%r0,%r13,4032(%r4)
.L835:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L837:
	lgdr	%r13,%f0
	.cfi_remember_state
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L834:
	.cfi_restore_state
	cgije	%r4,0,.L838
	sllg	%r1,%r13,0(%r4)
	sllg	%r5,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r3,%r13,0(%r3)
	ogrk	%r0,%r3,%r5
	j	.L835
.L838:
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L837
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
	je	.L841
	srag	%r1,%r2,32
	srak	%r2,%r1,31
	lghi	%r4,0
	risbgn	%r4,%r2,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r4,%r1
.L842:
	lgr	%r2,%r4
.L843:
	br	%r14
.L841:
	cgije	%r3,0,.L843
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
	j	.L842
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L847
	srag	%r0,%r12,63
	srag	%r1,%r12,4032(%r4)
.L848:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L850:
	lgdr	%r13,%f0
	.cfi_remember_state
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L847:
	.cfi_restore_state
	cgije	%r4,0,.L851
	srag	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
	j	.L848
.L851:
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L850
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
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
	crjl	%r4,%r1,.L871
	crjh	%r4,%r1,.L872
	clrjl	%r2,%r3,.L873
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L870:
	lgfr	%r2,%r2
	br	%r14
.L871:
	lhi	%r2,0
	j	.L870
.L872:
	lhi	%r2,2
	j	.L870
.L873:
	lhi	%r2,0
	j	.L870
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
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	cgrjl	%r4,%r2,.L880
	cgrjh	%r4,%r2,.L881
	clgrjl	%r5,%r3,.L882
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L879:
	lgfr	%r2,%r2
	br	%r14
.L880:
	lhi	%r2,0
	j	.L879
.L881:
	lhi	%r2,2
	j	.L879
.L882:
	lhi	%r2,0
	j	.L879
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r2)
	lg	%r13,8(%r2)
	cgijlh	%r13,0,.L898
	lcgr	%r0,%r12
	ngr	%r0,%r12
	flogr	%r0,%r0
	lghi	%r2,63
	sgr	%r2,%r0
	ahi	%r2,65
	ltgr	%r12,%r12
	lhi	%r1,0
	locre	%r2,%r1
.L899:
	lgfr	%r2,%r2
	lgdr	%r13,%f0
	.cfi_remember_state
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L898:
	.cfi_restore_state
	lcgr	%r4,%r13
	ngr	%r4,%r13
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L899
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
	je	.L903
	lghi	%r4,0
	iihf	%r4,0
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r4,%r1
.L904:
	lgr	%r2,%r4
.L905:
	br	%r14
.L903:
	cgije	%r3,0,.L905
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
	j	.L904
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L909
	lghi	%r0,0
	srlg	%r1,%r12,4032(%r4)
.L910:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L912:
	lgdr	%r13,%f0
	.cfi_remember_state
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L909:
	.cfi_restore_state
	cgije	%r4,0,.L913
	srlg	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
	j	.L910
.L913:
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L912
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	risbg	%r0,%r3,32,128+63,0
	risbg	%r11,%r4,32,128+63,0
	lgr	%r5,%r0
	msgr	%r5,%r11
	srlg	%r1,%r5,32
	nihf	%r5,0
	srlg	%r3,%r3,32
	msgr	%r11,%r3
	agr	%r1,%r11
	sllg	%r11,%r1,32
	agrk	%r13,%r11,%r5
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
	lg	%r12,0(%r4)
	lg	%r13,8(%r4)
	lgr	%r4,%r13
	lgr	%r3,%r9
	la	%r2,160(%r15)
	brasl	%r14,__mulddi3@PLT
	lg	%r2,160(%r15)
	lg	%r3,168(%r15)
	lgr	%r1,%r8
	msgr	%r1,%r13
	msgr	%r12,%r9
	agr	%r1,%r12
	agrk	%r4,%r1,%r2
	stg	%r4,0(%r11)
	stg	%r3,8(%r11)
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
	larl	%r5,.L934
	srlg	%r1,%r2,1
	ng	%r1,.L935-.L934(%r5)
	sgr	%r2,%r1
	srlg	%r1,%r2,2
	ng	%r1,.L936-.L934(%r5)
	ng	%r2,.L936-.L934(%r5)
	agr	%r2,%r1
	srlg	%r1,%r2,4
	agr	%r2,%r1
	ng	%r2,.L937-.L934(%r5)
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
.L934:
.L937:
	.quad	1085102592571150095
.L936:
	.quad	3689348814741910323
.L935:
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
	larl	%r5,.L948
	srlk	%r3,%r2,31
	ld	%f2,.L949-.L948(%r5)
	j	.L945
.L943:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L944
	mdbr	%f0,%f0
.L945:
	tmll	%r2,1
	je	.L943
	mdbr	%f2,%f0
	j	.L943
.L944:
	cije	%r3,0,.L947
	ld	%f0,.L949-.L948(%r5)
	ddbr	%f0,%f2
	br	%r14
.L947:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L948:
.L949:
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
	larl	%r5,.L956
	srlk	%r3,%r2,31
	le	%f2,.L957-.L956(%r5)
	j	.L953
.L951:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L952
	meebr	%f0,%f0
.L953:
	tmll	%r2,1
	je	.L951
	meebr	%f2,%f0
	j	.L951
.L952:
	cije	%r3,0,.L955
	le	%f0,.L957-.L956(%r5)
	debr	%f0,%f2
	br	%r14
.L955:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L956:
.L957:
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
	clrjl	%r4,%r1,.L960
	clrjh	%r4,%r1,.L961
	clrjl	%r2,%r3,.L962
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L959:
	lgfr	%r2,%r2
	br	%r14
.L960:
	lhi	%r2,0
	j	.L959
.L961:
	lhi	%r2,2
	j	.L959
.L962:
	lhi	%r2,0
	j	.L959
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
	lg	%r2,0(%r3)
	lg	%r3,8(%r3)
	clgrjl	%r4,%r2,.L969
	clgrjh	%r4,%r2,.L970
	clgrjl	%r5,%r3,.L971
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L968:
	lgfr	%r2,%r2
	br	%r14
.L969:
	lhi	%r2,0
	j	.L968
.L970:
	lhi	%r2,2
	j	.L968
.L971:
	lhi	%r2,0
	j	.L968
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
