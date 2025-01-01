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
	cgrjlh	%r2,%r3,.L12
	br	%r14
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
	lghi	%r1,0
	aghi	%r4,1
	j	.L39
.L40:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L39:
	brctg	%r4,.L40
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
	j	.L43
.L45:
	llc	%r4,0(%r5,%r2)
	aghik	%r0,%r5,-1
	crjlh	%r4,%r3,.L46
	agr	%r2,%r5
	br	%r14
.L46:
	lgr	%r5,%r0
.L43:
	brctg	%r1,.L45
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
	j	.L49
.L50:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L49:
	brctg	%r4,.L50
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
	j	.L53
.L54:
	aghi	%r3,1
	aghi	%r2,1
.L53:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L54
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
	j	.L57
.L59:
	aghi	%r2,1
.L57:
	llc	%r1,0(%r2)
	cije	%r1,0,.L58
	crjlh	%r1,%r3,.L59
.L58:
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
.L63:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L62
	aghi	%r2,1
	llc	%r1,-1(%r2)
	cijlh	%r1,0,.L63
	lghi	%r2,0
.L62:
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
	j	.L73
.L74:
	aghi	%r1,1
.L73:
	llc	%r3,0(%r1)
	cijlh	%r3,0,.L74
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
	j	.L119
.L121:
	lhi	%r2,1
	j	.L119
.L122:
	lhi	%r2,1
.L119:
	lgfr	%r2,%r2
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
	jo	.L147
	kdbr	%f0,%f2
	jnh	.L150
	sdbr	%f0,%f2
	br	%r14
.L147:
	ldr	%f0,%f2
	br	%r14
.L150:
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
	jo	.L156
	kebr	%f0,%f2
	jnh	.L159
	sebr	%f0,%f2
	br	%r14
.L156:
	ler	%f0,%f2
	br	%r14
.L159:
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
	crje	%r2,%r1,.L163
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L163:
	kdbr	%f0,%f2
	jnl	.L162
	ldr	%f0,%f2
	br	%r14
.L165:
	ldr	%f0,%f2
.L162:
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
	jo	.L176
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L174
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L174:
	kebr	%f0,%f2
	jnl	.L173
	ler	%f0,%f2
	br	%r14
.L176:
	ler	%f0,%f2
.L173:
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
	jno	.L184
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L184:
	cxbr	%f4,%f4
	jno	.L186
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
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
	br	%r14
.L187:
	kxbr	%f0,%f4
	jnl	.L189
	lxr	%f0,%f4
.L189:
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
	jo	.L200
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
	j	.L202
.L198:
	kdbr	%f0,%f2
	blr	%r14
	j	.L205
.L200:
	ldr	%f0,%f2
	br	%r14
.L202:
	ldr	%f0,%f2
	br	%r14
.L205:
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
	crje	%r2,%r1,.L211
	tceb	%f0,1365
	bner	%r14
	j	.L215
.L211:
	kebr	%f0,%f2
	blr	%r14
	j	.L218
.L213:
	ler	%f0,%f2
	br	%r14
.L215:
	ler	%f0,%f2
	br	%r14
.L218:
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
	jno	.L223
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L223:
	cxbr	%f0,%f0
	jno	.L225
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L225:
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	crje	%r3,%r1,.L226
	tcxb	%f4,1365
	je	.L227
	lxr	%f0,%f4
.L227:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L226:
	kxbr	%f4,%f0
	jnl	.L228
	lxr	%f0,%f4
.L228:
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
	cgijlh	%r3,0,.L244
	mvghi	8(%r2),0
	mvghi	0(%r2),0
	br	%r14
.L244:
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	ber	%r14
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
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
	je	.L248
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L248:
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
	j	.L252
.L255:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L253
	msgr	%r10,%r9
	lgdr	%r2,%f8
	agr	%r2,%r10
	j	.L254
.L253:
	aghi	%r10,1
.L252:
	brctg	%r12,.L255
	aghik	%r1,%r13,1
	stg	%r1,0(%r7)
	msgr	%r13,%r9
	lgr	%r4,%r9
	lgr	%r3,%r8
	lgdr	%r1,%f8
	la	%r2,0(%r13,%r1)
	brasl	%r14,memcpy@PLT
.L254:
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
	j	.L258
.L261:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	agr	%r11,%r9
	cijlh	%r2,0,.L259
	msgr	%r10,%r9
	agrk	%r2,%r7,%r10
	j	.L260
.L259:
	aghi	%r10,1
.L258:
	brctg	%r12,.L261
	lghi	%r2,0
.L260:
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
	j	.L266
.L267:
	aghi	%r12,1
.L266:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L267
	llc	%r1,0(%r12)
	cije	%r1,43,.L273
	cijlh	%r1,45,.L274
	lhi	%r3,1
	j	.L268
.L273:
	lhi	%r3,0
.L268:
	aghi	%r12,1
	j	.L269
.L274:
	lhi	%r3,0
.L269:
	lhi	%r1,0
	j	.L270
.L271:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sll	%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
.L270:
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L271
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
	j	.L278
.L279:
	aghi	%r12,1
.L278:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L279
	llc	%r1,0(%r12)
	cije	%r1,43,.L285
	cijlh	%r1,45,.L286
	lhi	%r3,1
	j	.L280
.L285:
	lhi	%r3,0
.L280:
	aghi	%r12,1
	j	.L281
.L286:
	lhi	%r3,0
.L281:
	lghi	%r2,0
	j	.L282
.L283:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L282:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L283
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
	j	.L290
.L291:
	aghi	%r12,1
.L290:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L291
	llc	%r1,0(%r12)
	cije	%r1,43,.L297
	cijlh	%r1,45,.L298
	lhi	%r3,1
	j	.L292
.L297:
	lhi	%r3,0
.L292:
	aghi	%r12,1
	j	.L293
.L298:
	lhi	%r3,0
.L293:
	lghi	%r2,0
	j	.L294
.L295:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
.L294:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L295
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
	j	.L302
.L306:
	srlg	%r12,%r11,1
	msgr	%r12,%r10
	agr	%r12,%r9
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	cijhe	%r2,0,.L303
	srlg	%r11,%r11,1
	j	.L302
.L303:
	cijle	%r2,0,.L307
	agrk	%r9,%r12,%r10
	srlg	%r1,%r11,1
	aghi	%r11,-1
	sgr	%r11,%r1
.L302:
	cgijlh	%r11,0,.L306
	lghi	%r2,0
	j	.L305
.L307:
	lgr	%r2,%r12
.L305:
	lmg	%r8,%r15,224(%r15)
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
	j	.L310
.L313:
	srak	%r1,%r12,1
	lgr	%r11,%r9
	msgfr	%r11,%r1
	agr	%r11,%r10
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L314
	cijle	%r2,0,.L312
	agrk	%r10,%r11,%r9
	ahi	%r12,-1
.L312:
	sra	%r12,1
.L310:
	cijlh	%r12,0,.L313
	lghi	%r2,0
	j	.L311
.L314:
	lgr	%r2,%r11
.L311:
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
	j	.L331
.L333:
	aghi	%r2,4
.L331:
	lt	%r1,0(%r2)
	je	.L332
	c	%r3,0(%r2)
	jne	.L333
.L332:
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
	j	.L338
.L340:
	aghi	%r2,4
	aghi	%r3,4
.L338:
	clc	0(4,%r3),0(%r2)
	jne	.L339
	lt	%r1,0(%r2)
	je	.L339
	lt	%r1,0(%r3)
	jne	.L340
.L339:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L343
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L341
.L343:
	lhi	%r2,-1
.L341:
	lgfr	%r2,%r2
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
	lgr	%r1,%r2
.L346:
	aghi	%r3,4
	aghi	%r1,4
	ly	%r4,-4(%r3)
	sty	%r4,-4(%r1)
	cijlh	%r4,0,.L346
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
	j	.L350
.L351:
	aghi	%r1,4
.L350:
	lt	%r3,0(%r1)
	jne	.L351
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
	j	.L354
.L356:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L354:
	brctg	%r1,.L361
	j	.L355
.L361:
	clc	0(4,%r3),0(%r2)
	jne	.L355
	lt	%r5,0(%r2)
	je	.L355
	lt	%r5,0(%r3)
	jne	.L356
.L355:
	cgije	%r4,0,.L359
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L360
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L357
.L359:
	lhi	%r2,0
	j	.L357
.L360:
	lhi	%r2,-1
.L357:
	lgfr	%r2,%r2
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
	aghik	%r1,%r4,1
	j	.L364
.L366:
	aghi	%r4,-1
	aghi	%r2,4
.L364:
	brctg	%r1,.L369
	j	.L365
.L369:
	c	%r3,0(%r2)
	jne	.L366
.L365:
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
	j	.L372
.L374:
	aghi	%r4,-1
	aghi	%r2,4
	aghi	%r3,4
.L372:
	brctg	%r1,.L379
	j	.L373
.L379:
	clc	0(4,%r3),0(%r2)
	je	.L374
.L373:
	cgije	%r4,0,.L377
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L378
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L375
.L377:
	lhi	%r2,0
	j	.L375
.L378:
	lhi	%r2,-1
.L375:
	lgfr	%r2,%r2
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
	lghi	%r1,0
	aghik	%r5,%r4,1
	j	.L382
.L383:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
.L382:
	aghi	%r4,-1
	brctg	%r5,.L383
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
	cgrje	%r2,%r3,.L386
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjhe	%r5,%r1,.L391
	aghik	%r1,%r4,-1
	sllg	%r1,%r1,2
	aghik	%r4,%r1,4
	srlg	%r4,%r4,2
	aghi	%r4,1
	j	.L388
.L389:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L388:
	brctg	%r4,.L389
	br	%r14
.L390:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
	j	.L387
.L391:
	lghi	%r1,0
	aghik	%r5,%r4,1
.L387:
	aghi	%r4,-1
	brctg	%r5,.L390
.L386:
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
	lgr	%r5,%r2
	aghik	%r1,%r4,1
	j	.L394
.L395:
	aghi	%r5,4
	sty	%r3,-4(%r5)
.L394:
	aghi	%r4,-1
	brctg	%r1,.L395
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
	clgrjhe	%r2,%r3,.L398
	aghik	%r1,%r4,1
	j	.L399
.L400:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L399:
	brctg	%r1,.L400
	br	%r14
.L398:
	cgrjlh	%r2,%r3,.L404
	br	%r14
.L403:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
	j	.L402
.L404:
	lghi	%r1,0
	aghi	%r4,1
.L402:
	brctg	%r4,.L403
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
	j	.L433
.L436:
	srlk	%r4,%r2,0(%r1)
	tmll	%r4,1
	je	.L434
	ahik	%r2,%r1,1
	j	.L435
.L434:
	ahi	%r1,1
.L433:
	brct	%r3,.L436
	lhi	%r2,0
.L435:
	lgfr	%r2,%r2
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
	lgr	%r1,%r2
	cgije	%r2,0,.L442
	lhi	%r2,1
	j	.L440
.L441:
	sra	%r1,1
	lgfr	%r1,%r1
	ahi	%r2,1
.L440:
	tmll	%r1,1
	je	.L441
	j	.L439
.L442:
	lhi	%r2,0
.L439:
	lgfr	%r2,%r2
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
	larl	%r5,.L450
	keb	%f0,.L451-.L450(%r5)
	jl	.L447
	keb	%f0,.L452-.L450(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L445
.L447:
	lhi	%r2,1
.L445:
	lgfr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L450:
.L452:
	.long	2139095039
.L451:
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
	larl	%r5,.L459
	kdb	%f0,.L460-.L459(%r5)
	jl	.L456
	kdb	%f0,.L461-.L459(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L454
.L456:
	lhi	%r2,1
.L454:
	lgfr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L459:
.L461:
	.long	2146435071
	.long	-1
.L460:
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
	larl	%r5,.L468
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L469-.L468(%r5)
	ld	%f6,.L469-.L468+8(%r5)
	kxbr	%f0,%f4
	jl	.L465
	ld	%f4,.L470-.L468(%r5)
	ld	%f6,.L470-.L468+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L463
.L465:
	lhi	%r2,1
.L463:
	lgfr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L468:
.L470:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L469:
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
	larl	%r5,.L479
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	cijhe	%r2,0,.L478
	le	%f2,.L480-.L479(%r5)
	j	.L477
.L478:
	le	%f2,.L481-.L479(%r5)
.L477:
	tmll	%r2,1
	je	.L476
	meebr	%f0,%f2
.L476:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L474
	meebr	%f2,%f2
	j	.L477
.L474:
	br	%r14
	.section	.rodata
	.align	8
.L479:
.L481:
	.long	1073741824
.L480:
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
	larl	%r5,.L488
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	cijhe	%r2,0,.L487
	ld	%f2,.L489-.L488(%r5)
	j	.L486
.L487:
	ld	%f2,.L490-.L488(%r5)
.L486:
	tmll	%r2,1
	je	.L485
	mdbr	%f0,%f2
.L485:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L483
	mdbr	%f2,%f2
	j	.L486
.L483:
	br	%r14
	.section	.rodata
	.align	8
.L488:
.L490:
	.long	1073741824
	.long	0
.L489:
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
	larl	%r5,.L497
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L492
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f4,%f0
	je	.L492
	cijhe	%r4,0,.L496
	ld	%f0,.L498-.L497(%r5)
	ld	%f2,.L498-.L497+8(%r5)
	j	.L495
.L496:
	ld	%f0,.L499-.L497(%r5)
	ld	%f2,.L499-.L497+8(%r5)
.L495:
	tmll	%r4,1
	je	.L494
	mxbr	%f4,%f0
.L494:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L492
	mxbr	%f0,%f0
	j	.L495
.L492:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L497:
.L499:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L498:
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
	lgr	%r1,%r2
	aghi	%r4,1
	j	.L501
.L502:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
.L501:
	brctg	%r4,.L502
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
	j	.L505
.L507:
	aghi	%r3,1
	aghi	%r5,1
	aghi	%r4,-1
.L505:
	brctg	%r1,.L509
	j	.L506
.L509:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r5)
	cgijlh	%r0,0,.L507
.L506:
	cgijlh	%r4,0,.L508
	mvi	0(%r5),0
.L508:
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
	j	.L512
.L514:
	aghi	%r2,1
.L512:
	brctg	%r3,.L515
	br	%r14
.L515:
	llc	%r4,0(%r2,%r1)
	cijlh	%r4,0,.L514
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
	j	.L518
.L520:
	aghi	%r1,1
	llc	%r5,-1(%r1)
	llc	%r4,0(%r2)
	crjlh	%r5,%r4,.L521
	br	%r14
.L523:
	lgr	%r1,%r3
.L521:
	llc	%r4,0(%r1)
	cijlh	%r4,0,.L520
	aghi	%r2,1
.L518:
	llc	%r1,0(%r2)
	cijlh	%r1,0,.L523
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
.L527:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	llc	%r4,-1(%r1)
	cijlh	%r4,0,.L527
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
	jhe	.L535
	llgc	%r9,0(%r3)
	j	.L533
.L534:
	lgr	%r4,%r10
	lgr	%r3,%r11
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L536
	aghi	%r12,1
.L533:
	lgr	%r3,%r9
	lgr	%r2,%r12
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgijlh	%r2,0,.L534
	j	.L532
.L535:
	j	.L532
.L536:
	lgr	%r2,%r12
.L532:
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
	jnl	.L539
	kdbr	%f2,%f4
	jh	.L541
.L539:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L542
	kdbr	%f2,%f4
	jnl	.L542
.L541:
	lcdbr	%f0,%f0
.L542:
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
	cgije	%r5,0,.L557
	clgrjh	%r5,%r3,.L558
	aghik	%r8,%r4,1
	aghik	%r9,%r5,-1
	j	.L554
.L556:
	llc	%r2,0(%r12)
	llc	%r1,0(%r11)
	crjlh	%r2,%r1,.L555
	lgr	%r4,%r9
	lgr	%r3,%r8
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cije	%r2,0,.L559
.L555:
	aghi	%r12,1
.L554:
	clgrjle	%r12,%r10,.L556
	lghi	%r2,0
	j	.L553
.L557:
	j	.L553
.L558:
	lghi	%r2,0
	j	.L553
.L559:
	lgr	%r2,%r12
.L553:
	lmg	%r8,%r15,224(%r15)
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
	larl	%r5,.L583
	lzdr	%f2
	kdbr	%f0,%f2
	jnl	.L580
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L564
.L580:
	lhi	%r3,0
.L564:
	kdb	%f0,.L584-.L583(%r5)
	jhe	.L575
	j	.L581
.L568:
	ahi	%r1,1
	mdb	%f0,.L585-.L583(%r5)
	j	.L566
.L575:
	lhi	%r1,0
.L566:
	kdb	%f0,.L584-.L583(%r5)
	jhe	.L568
	j	.L569
.L581:
	kdb	%f0,.L585-.L583(%r5)
	jnl	.L582
	lzdr	%f2
	cdbr	%f0,%f2
	jne	.L577
	lhi	%r1,0
	j	.L569
.L572:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L571
.L577:
	lhi	%r1,0
.L571:
	kdb	%f0,.L585-.L583(%r5)
	jl	.L572
	j	.L569
.L582:
	lhi	%r1,0
.L569:
	st	%r1,0(%r2)
	cije	%r3,0,.L573
	lcdbr	%f0,%f0
.L573:
	br	%r14
	.section	.rodata
	.align	8
.L583:
.L585:
	.long	1071644672
	.long	0
.L584:
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
	j	.L587
.L589:
	agrk	%r4,%r2,%r3
	tmll	%r1,1
	locgrne	%r2,%r4
	sllg	%r3,%r3,1
	srlg	%r1,%r1,1
.L587:
	cgijlh	%r1,0,.L589
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
	j	.L592
.L596:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L592:
	clrjl	%r3,%r2,.L593
	lhi	%r5,0
	j	.L594
.L603:
	lhi	%r5,0
	j	.L594
.L593:
	brct	%r5,.L602
	j	.L603
.L602:
	cijhe	%r3,0,.L596
	lhi	%r5,0
	j	.L594
.L598:
	clrjl	%r2,%r3,.L597
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L597:
	srl	%r1,1
	srlg	%r3,%r3,1
.L594:
	cijlh	%r1,0,.L598
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
	j	.L615
.L617:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L615:
	cgijlh	%r2,0,.L617
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
	clgrjl	%r2,%r3,.L620
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L620
	ahik	%r1,%r4,1
	j	.L621
.L620:
	lghi	%r1,0
	risbg	%r5,%r5,35,128+63,0
	aghi	%r5,1
	j	.L622
.L623:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L622:
	brctg	%r5,.L623
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L629
	cgijlh	%r4,0,.L624
.L629:
	lhi	%r1,1
	j	.L624
.L625:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L624:
	brct	%r1,.L625
	j	.L619
.L627:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L621:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L627
.L619:
	lgdr	%r12,%f0
	.cfi_restore 12
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
	clgrjl	%r2,%r3,.L632
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L632
	ahik	%r1,%r4,1
	j	.L633
.L632:
	lghi	%r1,0
	llgtr	%r5,%r5
	aghi	%r5,1
	j	.L634
.L635:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L634:
	brctg	%r5,.L635
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	algfr	%r3,%r4
	algfr	%r2,%r4
	mvc	0(1,%r2),0(%r3)
	br	%r14
.L637:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L633:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L637
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
	clgrjl	%r2,%r3,.L641
	agrk	%r1,%r3,%r4
	clgrjl	%r1,%r2,.L641
	ahik	%r1,%r4,1
	j	.L642
.L641:
	lghi	%r1,0
	risbg	%r5,%r5,34,128+63,0
	aghi	%r5,1
	j	.L643
.L644:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L643:
	brctg	%r5,.L644
	llgfr	%r5,%r0
	srk	%r1,%r4,%r0
	ahi	%r1,1
	clrjh	%r0,%r4,.L650
	cgijlh	%r4,0,.L645
.L650:
	lhi	%r1,1
	j	.L645
.L646:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	aghi	%r5,1
.L645:
	brct	%r1,.L646
	j	.L640
.L648:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L642:
	ahi	%r4,-1
	llgfr	%r4,%r4
	brct	%r1,.L648
.L640:
	lgdr	%r12,%f0
	.cfi_restore 12
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
	j	.L665
.L667:
	srk	%r1,%r5,%r4
	srak	%r1,%r2,0(%r1)
	tmll	%r1,1
	jne	.L666
	ahi	%r4,1
.L665:
	brct	%r3,.L667
.L666:
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
	j	.L670
.L672:
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L671
	ahi	%r3,1
.L670:
	brct	%r1,.L672
.L671:
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
	larl	%r5,.L680
	keb	%f0,.L681-.L680(%r5)
	jnhe	.L679
	seb	%f0,.L681-.L680(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
.L679:
	cgebr	%r2,5,%f0
	br	%r14
	.section	.rodata
	.align	8
.L680:
.L681:
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
	j	.L683
.L685:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L683:
	brct	%r1,.L685
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
	j	.L688
.L690:
	srak	%r0,%r2,0(%r4)
	ahik	%r5,%r3,1
	tmll	%r0,1
	locrne	%r3,%r5
	ahi	%r4,1
.L688:
	brct	%r1,.L690
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
	j	.L693
.L695:
	ark	%r4,%r1,%r3
	tmll	%r2,1
	locrne	%r1,%r4
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
.L693:
	cgijlh	%r2,0,.L695
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
	cgije	%r2,0,.L702
	lhi	%r2,0
	j	.L699
.L701:
	ark	%r4,%r2,%r1
	tmll	%r3,1
	locrne	%r2,%r4
	risbgn	%r1,%r1,32,128+62,1
	srlg	%r3,%r3,1
.L699:
	cgijlh	%r3,0,.L701
	j	.L698
.L702:
	lhi	%r2,0
.L698:
	llgfr	%r2,%r2
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L705
.L709:
	risbgn	%r3,%r3,32,128+62,1
	sll	%r1,1
.L705:
	clrjl	%r3,%r2,.L706
	lhi	%r5,0
	j	.L707
.L716:
	lhi	%r5,0
	j	.L707
.L706:
	brct	%r5,.L715
	j	.L716
.L715:
	cijhe	%r3,0,.L709
	lhi	%r5,0
	j	.L707
.L711:
	clrjl	%r2,%r3,.L710
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L710:
	srl	%r1,1
	srlg	%r3,%r3,1
.L707:
	cijlh	%r1,0,.L711
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
	jl	.L720
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L719
.L720:
	lhi	%r2,-1
.L719:
	lgfr	%r2,%r2
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
	kdbr	%f0,%f2
	jl	.L725
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	j	.L724
.L725:
	lhi	%r2,-1
.L724:
	lgfr	%r2,%r2
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
	cijhe	%r3,0,.L739
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L733
.L739:
	lhi	%r0,0
.L733:
	lhi	%r5,33
	lhi	%r1,0
	j	.L734
.L737:
	ark	%r4,%r1,%r2
	tmll	%r3,1
	locrne	%r1,%r4
	sll	%r2,1
	lgfr	%r2,%r2
	sra	%r3,1
	lgfr	%r3,%r3
.L734:
	cgije	%r3,0,.L736
	ahik	%r4,%r5,-1
	lr	%r5,%r4
	tml	%r4,255
	jne	.L737
.L736:
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
	cgijhe	%r2,0,.L746
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L743
.L746:
	lhi	%r12,0
.L743:
	cgijhe	%r3,0,.L744
	lcgr	%r3,%r3
	xilf	%r12,1
.L744:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r1,%r2
	cgijhe	%r2,0,.L752
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L749
.L752:
	lhi	%r12,0
.L749:
	lpgr	%r3,%r3
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r1,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
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
	lhi	%r1,1
	lhi	%r5,17
	j	.L755
.L759:
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
.L755:
	clrjl	%r3,%r2,.L756
	lhi	%r0,0
	j	.L757
.L766:
	lhi	%r0,0
	j	.L757
.L756:
	brct	%r5,.L765
	j	.L766
.L765:
	tmll	%r3,32768
	je	.L759
	lhi	%r0,0
	j	.L757
.L761:
	clrjl	%r2,%r3,.L760
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
.L760:
	risbgn	%r1,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
.L757:
	llhr	%r5,%r1
	cijlh	%r5,0,.L761
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
	j	.L769
.L773:
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
.L769:
	clgrjl	%r3,%r2,.L770
	lghi	%r5,0
	j	.L771
.L780:
	lghi	%r5,0
	j	.L771
.L770:
	brct	%r5,.L779
	j	.L780
.L779:
	tmlh	%r3,32768
	je	.L773
	lghi	%r5,0
	j	.L771
.L775:
	clgrjl	%r2,%r3,.L774
	sgr	%r2,%r3
	ogr	%r5,%r1
.L774:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
.L771:
	cgijlh	%r1,0,.L775
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
	je	.L783
	lghi	%r4,0
	sllk	%r1,%r2,4064(%r3)
	risbgn	%r4,%r1,0,0+32-1,64-0-32
	j	.L784
.L783:
	cgije	%r3,0,.L785
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
.L784:
	lgr	%r2,%r4
.L785:
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L789
	lghi	%r1,0
	sllg	%r0,%r13,4032(%r4)
	j	.L790
.L789:
	cgijlh	%r4,0,.L791
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L792
.L791:
	sllg	%r1,%r13,0(%r4)
	sllg	%r5,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r3,%r13,0(%r3)
	ogrk	%r0,%r3,%r5
.L790:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L792:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
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
	je	.L795
	srag	%r1,%r2,32
	srak	%r2,%r1,31
	lghi	%r4,0
	risbgn	%r4,%r2,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r4,%r1
	j	.L796
.L795:
	cgije	%r3,0,.L797
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
.L796:
	lgr	%r2,%r4
.L797:
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L801
	srag	%r0,%r12,63
	srag	%r1,%r12,4032(%r4)
	j	.L802
.L801:
	cgijlh	%r4,0,.L803
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L804
.L803:
	srag	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
.L802:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L804:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
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
	crjl	%r4,%r1,.L824
	crjh	%r4,%r1,.L825
	clrjl	%r2,%r3,.L826
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L823
.L824:
	lhi	%r2,0
	j	.L823
.L825:
	lhi	%r2,2
	j	.L823
.L826:
	lhi	%r2,0
.L823:
	lgfr	%r2,%r2
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
	cgrjl	%r4,%r2,.L833
	cgrjh	%r4,%r2,.L834
	clgrjl	%r5,%r3,.L835
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L832
.L833:
	lhi	%r2,0
	j	.L832
.L834:
	lhi	%r2,2
	j	.L832
.L835:
	lhi	%r2,0
.L832:
	lgfr	%r2,%r2
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
	cgijlh	%r13,0,.L851
	lcgr	%r0,%r12
	ngr	%r0,%r12
	flogr	%r0,%r0
	lghi	%r2,63
	sgr	%r2,%r0
	ahi	%r2,65
	ltgr	%r12,%r12
	lhi	%r1,0
	locre	%r2,%r1
	j	.L852
.L851:
	lcgr	%r4,%r13
	ngr	%r4,%r13
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
.L852:
	lgfr	%r2,%r2
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
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
	tmll	%r3,32
	je	.L856
	lghi	%r4,0
	iihf	%r4,0
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r4,%r1
	j	.L857
.L856:
	cgije	%r3,0,.L858
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
.L857:
	lgr	%r2,%r4
.L858:
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lg	%r12,0(%r3)
	lg	%r13,8(%r3)
	tmll	%r4,64
	je	.L862
	lghi	%r0,0
	srlg	%r1,%r12,4032(%r4)
	j	.L863
.L862:
	cgijlh	%r4,0,.L864
	stg	%r12,0(%r2)
	stg	%r13,8(%r2)
	j	.L865
.L864:
	srlg	%r0,%r12,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r3,%r12,0(%r3)
	srlg	%r4,%r13,0(%r4)
	ogrk	%r1,%r3,%r4
.L863:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
.L865:
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
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
	larl	%r5,.L886
	srlg	%r1,%r2,1
	ng	%r1,.L887-.L886(%r5)
	sgr	%r2,%r1
	srlg	%r1,%r2,2
	ng	%r1,.L888-.L886(%r5)
	ng	%r2,.L888-.L886(%r5)
	agr	%r2,%r1
	srlg	%r1,%r2,4
	agr	%r2,%r1
	ng	%r2,.L889-.L886(%r5)
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
.L886:
.L889:
	.quad	1085102592571150095
.L888:
	.quad	3689348814741910323
.L887:
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
	larl	%r5,.L900
	srlk	%r3,%r2,31
	ld	%f2,.L901-.L900(%r5)
.L897:
	tmll	%r2,1
	je	.L895
	mdbr	%f2,%f0
.L895:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L896
	mdbr	%f0,%f0
	j	.L897
.L896:
	cije	%r3,0,.L899
	ld	%f0,.L901-.L900(%r5)
	ddbr	%f0,%f2
	br	%r14
.L899:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L900:
.L901:
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
	larl	%r5,.L908
	srlk	%r3,%r2,31
	le	%f2,.L909-.L908(%r5)
.L905:
	tmll	%r2,1
	je	.L903
	meebr	%f2,%f0
.L903:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L904
	meebr	%f0,%f0
	j	.L905
.L904:
	cije	%r3,0,.L907
	le	%f0,.L909-.L908(%r5)
	debr	%f0,%f2
	br	%r14
.L907:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L908:
.L909:
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
	clrjl	%r4,%r1,.L912
	clrjh	%r4,%r1,.L913
	clrjl	%r2,%r3,.L914
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L911
.L912:
	lhi	%r2,0
	j	.L911
.L913:
	lhi	%r2,2
	j	.L911
.L914:
	lhi	%r2,0
.L911:
	lgfr	%r2,%r2
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
	clgrjl	%r4,%r2,.L921
	clgrjh	%r4,%r2,.L922
	clgrjl	%r5,%r3,.L923
	clgr	%r5,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
	j	.L920
.L921:
	lhi	%r2,0
	j	.L920
.L922:
	lhi	%r2,2
	j	.L920
.L923:
	lhi	%r2,0
.L920:
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
