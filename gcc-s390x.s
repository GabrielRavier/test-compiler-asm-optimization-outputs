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
	cgije	%r4,0,.L7
	lgr	%r1,%r4
.L8:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	aghi	%r4,-1
	brctg	%r1,.L8
	br	%r14
.L6:
	cgrje	%r2,%r3,.L7
	cgije	%r4,0,.L7
	lghi	%r1,0
	sgr	%r4,%r1
.L9:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	brctg	%r4,.L9
.L7:
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
	lgr	%r0,%r5
	cgije	%r5,0,.L17
.L16:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgrje	%r1,%r4,.L17
	aghi	%r0,-1
	aghi	%r3,1
	aghi	%r2,1
	brctg	%r5,.L16
.L17:
	aghi	%r2,1
	ltgr	%r0,%r0
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
	lgr	%r1,%r2
	lgr	%r0,%r4
	lgr	%r5,%r4
	cgije	%r4,0,.L27
.L26:
	llc	%r2,0(%r1)
	crje	%r2,%r3,.L27
	aghi	%r1,1
	aghi	%r0,-1
	brctg	%r5,.L26
.L27:
	ltgr	%r0,%r0
	lghi	%r2,0
	locgrne	%r2,%r1
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
	lgr	%r5,%r4
	lgr	%r1,%r4
	cgije	%r4,0,.L38
.L37:
	llc	%r0,0(%r2)
	llc	%r4,0(%r3)
	crjlh	%r0,%r4,.L38
	aghi	%r5,-1
	aghi	%r2,1
	aghi	%r3,1
	brctg	%r1,.L37
.L38:
	cgije	%r5,0,.L42
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L40:
	lgfr	%r2,%r2
	br	%r14
.L42:
	lhi	%r2,0
	j	.L40
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	lgr	%r5,%r4
	cgije	%r4,0,.L47
	lghi	%r1,0
	sgr	%r5,%r1
.L48:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	aghi	%r1,1
	brctg	%r5,.L48
.L47:
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
.L53:
	brctg	%r1,.L55
	j	.L57
.L55:
	llc	%r4,0(%r5,%r2)
	aghik	%r0,%r5,-1
	crje	%r4,%r3,.L58
	lgr	%r5,%r0
	j	.L53
.L58:
	agr	%r2,%r5
	br	%r14
.L57:
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
	lgr	%r1,%r4
	cgije	%r4,0,.L61
	lgr	%r4,%r2
.L62:
	stc	%r3,0(%r4)
	aghi	%r4,1
	brctg	%r1,.L62
.L61:
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
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgije	%r1,0,.L67
.L68:
	aghi	%r3,1
	aghi	%r2,1
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L68
.L67:
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
	lgr	%r1,%r2
	cli	0(%r2),0
	je	.L73
.L72:
	llc	%r2,0(%r1)
	crje	%r2,%r3,.L73
	aghi	%r1,1
	llc	%r2,0(%r1)
	cijlh	%r2,0,.L72
.L73:
	lgr	%r2,%r1
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
.L79:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L78
	aghi	%r2,1
	llc	%r1,-1(%r2)
	cijlh	%r1,0,.L79
	lghi	%r2,0
.L78:
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
	llc	%r4,0(%r2)
	llc	%r1,0(%r3)
	crjlh	%r4,%r1,.L85
.L84:
	llc	%r1,0(%r2)
	cije	%r1,0,.L85
	aghi	%r2,1
	aghi	%r3,1
	llc	%r4,0(%r2)
	llc	%r1,0(%r3)
	crje	%r4,%r1,.L84
.L85:
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
	lgr	%r4,%r2
	cli	0(%r2),0
	je	.L90
.L91:
	aghi	%r2,1
	llc	%r3,0(%r2)
	cijlh	%r3,0,.L91
.L90:
	sgr	%r2,%r4
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
	cgije	%r4,0,.L100
	llc	%r4,0(%r2)
	cije	%r4,0,.L97
.L98:
	llc	%r4,0(%r3)
	cije	%r4,0,.L97
	brctg	%r1,.L102
	j	.L97
.L102:
	llc	%r5,0(%r2)
	llc	%r4,0(%r3)
	crjlh	%r5,%r4,.L97
	aghi	%r2,1
	aghi	%r3,1
	llc	%r4,0(%r2)
	cijlh	%r4,0,.L98
.L97:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L96:
	lgfr	%r2,%r2
	br	%r14
.L100:
	lhi	%r2,0
	j	.L96
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cgijle	%r4,1,.L104
	aghi	%r4,-2
	srlg	%r1,%r4,1
	aghi	%r1,1
.L106:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
	brctg	%r1,.L106
.L104:
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
	cije	%r2,32,.L132
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L131:
	lgfr	%r2,%r2
	br	%r14
.L132:
	lhi	%r2,1
	j	.L131
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
	clijle	%r2,31,.L138
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L139
	ahik	%r1,%r2,-8232
	clijle	%r1,1,.L140
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	j	.L137
.L138:
	lhi	%r2,1
.L137:
	lgfr	%r2,%r2
	br	%r14
.L139:
	lhi	%r2,1
	j	.L137
.L140:
	lhi	%r2,1
	j	.L137
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
	clijle	%r2,254,.L151
	lhi	%r1,8231
	clrjle	%r2,%r1,.L147
	ahik	%r1,%r2,-8234
	llill	%r3,47061
	clrjle	%r1,%r3,.L148
	slfi	%r1,49110
	lhi	%r3,8184
	clrjle	%r1,%r3,.L149
	ahi	%r1,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r1,1048580
	lhi	%r1,0
	locrnl	%r2,%r1
	j	.L146
.L151:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
.L146:
	lgfr	%r2,%r2
	br	%r14
.L147:
	lhi	%r2,1
	j	.L146
.L148:
	lhi	%r2,1
	j	.L146
.L149:
	lhi	%r2,1
	j	.L146
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
	clijle	%r1,9,.L155
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
.L154:
	lgfr	%r2,%r2
	br	%r14
.L155:
	lhi	%r2,1
	j	.L154
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
	jo	.L163
	kdbr	%f0,%f2
	jnh	.L166
	sdbr	%f0,%f2
	br	%r14
.L163:
	ldr	%f0,%f2
	br	%r14
.L166:
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
	jo	.L172
	kebr	%f0,%f2
	jnh	.L175
	sebr	%f0,%f2
	br	%r14
.L172:
	ler	%f0,%f2
	br	%r14
.L175:
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
	jo	.L183
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L179
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L179:
	kdbr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L178
	ldr	%f0,%f2
	br	%r14
.L183:
	ldr	%f0,%f2
.L178:
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
	jo	.L193
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L189
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L189:
	kebr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L188
	ler	%f0,%f2
	br	%r14
.L193:
	ler	%f0,%f2
.L188:
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
	jo	.L211
	cxbr	%f4,%f4
	jo	.L212
	tcxb	%f0,1365
	ipm	%r4
	srl	%r4,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r4,%r3,.L201
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r13
	.cfi_register 13, 20
	tcxb	%f0,1365
	je	.L206
	lgdr	%r3,%f4
	lgdr	%r1,%f6
.L202:
	lgr	%r12,%r3
	lgr	%r13,%r1
	stmg	%r12,%r13,0(%r2)
	lgdr	%r13,%f1
	.cfi_restore 13
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
.L211:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L212:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L206:
	.cfi_register 12, 21
	.cfi_register 13, 20
	lgdr	%r3,%f0
	lgdr	%r1,%f2
	j	.L202
.L201:
	.cfi_restore 12
	.cfi_restore 13
	kxbr	%f0,%f4
	lhi	%r3,0
	lhi	%r4,1
	locrl	%r3,%r4
	llcr	%r3,%r3
	cije	%r3,0,.L204
	lgdr	%r4,%f4
	lgdr	%r3,%f6
.L205:
	lgr	%r0,%r4
	lgr	%r1,%r3
	stmg	%r0,%r1,0(%r2)
	br	%r14
.L204:
	lgdr	%r4,%f0
	lgdr	%r3,%f2
	j	.L205
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
	jo	.L220
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L216
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L216:
	kdbr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L219
	ldr	%f2,%f0
.L219:
	ldr	%f0,%f2
	br	%r14
.L220:
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
	jo	.L231
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	crje	%r2,%r1,.L227
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L227:
	kebr	%f0,%f2
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r1,%r1
	cije	%r1,0,.L230
	ler	%f2,%f0
.L230:
	ler	%f0,%f2
	br	%r14
.L231:
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
	jo	.L250
	cxbr	%f4,%f4
	jo	.L251
	tcxb	%f0,1365
	ipm	%r4
	srl	%r4,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r4,%r3,.L240
	ldgr	%f3,%r12
	.cfi_register 12, 21
	ldgr	%f1,%r13
	.cfi_register 13, 20
	tcxb	%f0,1365
	je	.L245
	lgdr	%r3,%f0
	lgdr	%r1,%f2
.L241:
	lgr	%r12,%r3
	lgr	%r13,%r1
	stmg	%r12,%r13,0(%r2)
	lgdr	%r13,%f1
	.cfi_restore 13
	lgdr	%r12,%f3
	.cfi_restore 12
	br	%r14
.L250:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L251:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L245:
	.cfi_register 12, 21
	.cfi_register 13, 20
	lgdr	%r3,%f4
	lgdr	%r1,%f6
	j	.L241
.L240:
	.cfi_restore 12
	.cfi_restore 13
	kxbr	%f0,%f4
	lhi	%r3,0
	lhi	%r4,1
	locrl	%r3,%r4
	llcr	%r3,%r3
	cije	%r3,0,.L243
	lgdr	%r4,%f0
	lgdr	%r3,%f2
.L244:
	lgr	%r0,%r4
	lgr	%r1,%r3
	stmg	%r0,%r1,0(%r2)
	br	%r14
.L243:
	lgdr	%r4,%f4
	lgdr	%r3,%f6
	j	.L244
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
	lr	%r1,%r2
	cije	%r2,0,.L256
	larl	%r2,s.0
	larl	%r4,digits
.L255:
	risbg	%r3,%r1,58,128+63,0
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r2),0(%r3)
	aghi	%r2,1
	srl	%r1,6
	cijlh	%r1,0,.L255
.L254:
	mvi	0(%r2),0
	larl	%r2,s.0
	br	%r14
.L256:
	larl	%r2,s.0
	j	.L254
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
	cgije	%r3,0,.L267
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r1,0(%r2)
	ber	%r14
	lg	%r1,0(%r2)
	stg	%r2,8(%r1)
	br	%r14
.L267:
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
	je	.L270
	lg	%r1,0(%r2)
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L270:
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
	ltg	%r13,0(%r4)
	je	.L274
	lgr	%r12,%r3
	lghi	%r10,0
	sgrk	%r11,%r13,%r10
.L277:
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L281
	aghi	%r10,1
	agr	%r12,%r9
	brctg	%r11,.L277
.L274:
	aghik	%r1,%r13,1
	stg	%r1,0(%r7)
	msgr	%r13,%r9
	lgr	%r4,%r9
	lgr	%r3,%r8
	lgdr	%r1,%f8
	la	%r2,0(%r13,%r1)
	brasl	%r14,memcpy@PLT
.L276:
	ld	%f8,160(%r15)
	lmg	%r7,%r15,224(%r15)
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
	.cfi_restore 24
	.cfi_def_cfa_offset 160
	br	%r14
.L281:
	.cfi_restore_state
	msgr	%r10,%r9
	lgdr	%r2,%f8
	agr	%r2,%r10
	j	.L276
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
	ltg	%r12,0(%r4)
	je	.L287
	lgr	%r8,%r2
	lgr	%r7,%r3
	lgr	%r9,%r5
	lgr	%r11,%r3
	lghi	%r10,0
	sgr	%r12,%r10
.L286:
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L291
	aghi	%r10,1
	agr	%r11,%r9
	brctg	%r12,.L286
	lghi	%r2,0
	j	.L284
.L291:
	msgr	%r10,%r9
	agrk	%r2,%r7,%r10
.L284:
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
.L287:
	.cfi_restore_state
	lghi	%r2,0
	j	.L284
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
	j	.L296
.L297:
	aghi	%r12,1
.L296:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L297
	llc	%r1,0(%r12)
	cije	%r1,43,.L303
	cijlh	%r1,45,.L304
	lhi	%r3,1
.L298:
	aghi	%r12,1
.L299:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijh	%r1,9,.L305
	lhi	%r1,0
.L301:
	sllk	%r2,%r1,2
	ar	%r2,%r1
	sll	%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	srk	%r1,%r2,%r1
	llc	%r2,0(%r12)
	ahi	%r2,-48
	clijle	%r2,9,.L301
.L300:
	lcr	%r2,%r1
	ltr	%r3,%r3
	locrne	%r2,%r1
	lgfr	%r2,%r2
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L303:
	.cfi_restore_state
	lhi	%r3,0
	j	.L298
.L304:
	lhi	%r3,0
	j	.L299
.L305:
	lhi	%r1,0
	j	.L300
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
	j	.L311
.L312:
	aghi	%r12,1
.L311:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L312
	llc	%r1,0(%r12)
	cije	%r1,43,.L318
	cijlh	%r1,45,.L319
	lhi	%r3,1
.L313:
	aghi	%r12,1
.L314:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijh	%r1,9,.L320
	lghi	%r2,0
.L316:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L316
.L315:
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L318:
	.cfi_restore_state
	lhi	%r3,0
	j	.L313
.L319:
	lhi	%r3,0
	j	.L314
.L320:
	lghi	%r2,0
	j	.L315
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
	j	.L326
.L327:
	aghi	%r12,1
.L326:
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	cijlh	%r2,0,.L327
	llc	%r1,0(%r12)
	cije	%r1,43,.L333
	cijlh	%r1,45,.L334
	lhi	%r3,1
.L328:
	aghi	%r12,1
.L329:
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijh	%r1,9,.L335
	lghi	%r2,0
.L331:
	sllg	%r1,%r2,2
	agr	%r2,%r1
	sllg	%r2,%r2,1
	aghi	%r12,1
	llc	%r1,-1(%r12)
	ahi	%r1,-48
	sgfr	%r2,%r1
	llc	%r1,0(%r12)
	ahi	%r1,-48
	clijle	%r1,9,.L331
.L330:
	lcgr	%r1,%r2
	ltr	%r3,%r3
	locgre	%r2,%r1
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L333:
	.cfi_restore_state
	lhi	%r3,0
	j	.L328
.L334:
	lhi	%r3,0
	j	.L329
.L335:
	lghi	%r2,0
	j	.L330
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
	lgr	%r10,%r5
	lgr	%r11,%r4
	cgijlh	%r4,0,.L344
	lghi	%r2,0
	j	.L341
.L350:
	srlg	%r11,%r11,1
.L343:
	cgije	%r11,0,.L349
.L344:
	srlg	%r12,%r11,1
	msgr	%r12,%r10
	agr	%r12,%r9
	lgr	%r3,%r12
	lgr	%r2,%r8
	basr	%r14,%r6
	cijl	%r2,0,.L350
	cijle	%r2,0,.L346
	agrk	%r9,%r12,%r10
	srlg	%r1,%r11,1
	aghi	%r11,-1
	sgr	%r11,%r1
	j	.L343
.L349:
	lghi	%r2,0
.L341:
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
.L346:
	.cfi_restore_state
	lgr	%r2,%r12
	j	.L341
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
	lgr	%r10,%r3
	lgr	%r9,%r5
	lg	%r7,320(%r15)
	lr	%r12,%r4
	cijlh	%r4,0,.L355
	lghi	%r2,0
	j	.L353
.L354:
	sra	%r12,1
	je	.L360
.L355:
	srak	%r1,%r12,1
	lgr	%r11,%r9
	msgfr	%r11,%r1
	agr	%r11,%r10
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L357
	cijle	%r2,0,.L354
	agrk	%r10,%r11,%r9
	ahi	%r12,-1
	j	.L354
.L360:
	lghi	%r2,0
	j	.L353
.L357:
	lgr	%r2,%r11
.L353:
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
	lt	%r1,0(%r2)
	je	.L378
.L377:
	c	%r3,0(%r2)
	je	.L378
	aghi	%r2,4
	lt	%r1,0(%r2)
	jne	.L377
.L378:
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
	clc	0(4,%r3),0(%r2)
	jne	.L386
.L385:
	lt	%r1,0(%r2)
	je	.L386
	lt	%r1,0(%r3)
	je	.L386
	aghi	%r2,4
	aghi	%r3,4
	clc	0(4,%r3),0(%r2)
	je	.L385
.L386:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L390
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
.L388:
	lgfr	%r2,%r2
	br	%r14
.L390:
	lhi	%r2,-1
	j	.L388
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
.L394:
	aghi	%r3,4
	aghi	%r1,4
	ly	%r4,-4(%r3)
	sty	%r4,-4(%r1)
	cijlh	%r4,0,.L394
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
	lt	%r1,0(%r2)
	je	.L400
	lgr	%r1,%r2
.L399:
	aghi	%r1,4
	lt	%r3,0(%r1)
	jne	.L399
.L398:
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L400:
	lgr	%r1,%r2
	j	.L398
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	lgr	%r5,%r4
	lgr	%r1,%r4
	cgije	%r4,0,.L405
.L404:
	clc	0(4,%r3),0(%r2)
	jne	.L405
	lt	%r4,0(%r2)
	je	.L405
	lt	%r4,0(%r3)
	je	.L405
	aghi	%r5,-1
	aghi	%r2,4
	aghi	%r3,4
	brctg	%r1,.L404
.L405:
	cgije	%r5,0,.L409
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L410
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L407
.L409:
	lhi	%r2,0
.L407:
	lgfr	%r2,%r2
	br	%r14
.L410:
	lhi	%r2,-1
	j	.L407
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	lgr	%r5,%r4
	lgr	%r1,%r4
	cgije	%r4,0,.L417
.L416:
	c	%r3,0(%r2)
	je	.L417
	aghi	%r5,-1
	aghi	%r2,4
	brctg	%r1,.L416
.L417:
	ltgr	%r5,%r5
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
	lgr	%r5,%r4
	lgr	%r1,%r4
	cgije	%r4,0,.L427
.L426:
	clc	0(4,%r3),0(%r2)
	jne	.L427
	aghi	%r5,-1
	aghi	%r2,4
	aghi	%r3,4
	brctg	%r1,.L426
.L427:
	cgije	%r5,0,.L431
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L432
	lhi	%r1,0
	lhi	%r2,1
	locrl	%r1,%r2
	llcr	%r2,%r1
	j	.L429
.L431:
	lhi	%r2,0
.L429:
	lgfr	%r2,%r2
	br	%r14
.L432:
	lhi	%r2,-1
	j	.L429
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	aghik	%r1,%r4,-1
	cgije	%r4,0,.L438
	lgr	%r4,%r1
	lghi	%r1,0
	aghik	%r5,%r4,1
.L439:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r4,-1
	aghi	%r1,4
	brctg	%r5,.L439
.L438:
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
	cgrje	%r2,%r3,.L444
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjl	%r5,%r1,.L445
	aghik	%r1,%r4,-1
	cgije	%r4,0,.L453
	lgr	%r4,%r1
	lghi	%r1,0
	aghik	%r5,%r4,1
.L446:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r4,-1
	aghi	%r1,4
	brctg	%r5,.L446
.L444:
	br	%r14
.L453:
	br	%r14
.L445:
	cgije	%r4,0,.L444
	aghi	%r4,-1
	sllg	%r5,%r4,2
	nihh	%r4,16383
	aghi	%r4,1
.L447:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	aghi	%r5,-4
	brctg	%r4,.L447
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
	aghik	%r1,%r4,-1
	cgije	%r4,0,.L456
	lgr	%r4,%r1
	lgr	%r5,%r2
	aghi	%r1,1
.L457:
	aghi	%r5,4
	sty	%r3,-4(%r5)
	aghi	%r4,-1
	brctg	%r1,.L457
.L456:
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
	clgrjhe	%r2,%r3,.L462
	cgije	%r4,0,.L461
	lgr	%r1,%r4
.L464:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
	brctg	%r1,.L464
	br	%r14
.L462:
	cgrje	%r2,%r3,.L461
	cgije	%r4,0,.L461
	lghi	%r1,0
	sgr	%r4,%r1
.L465:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
	brctg	%r4,.L465
.L461:
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
	lhi	%r3,32
.L500:
	srlk	%r4,%r2,0(%r1)
	tmll	%r4,1
	jne	.L503
	ahi	%r1,1
	brct	%r3,.L500
	lhi	%r2,0
	j	.L499
.L503:
	ahik	%r2,%r1,1
.L499:
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
	lgr	%r3,%r2
	cgije	%r2,0,.L508
	tmll	%r2,1
	jne	.L509
	lhi	%r2,1
.L507:
	srak	%r1,%r3,1
	lgfr	%r3,%r1
	ahi	%r2,1
	tmll	%r1,1
	je	.L507
.L506:
	lgfr	%r2,%r2
	br	%r14
.L508:
	lhi	%r2,0
	j	.L506
.L509:
	lhi	%r2,1
	j	.L506
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	larl	%r5,.L517
	keb	%f0,.L518-.L517(%r5)
	jl	.L515
	keb	%f0,.L519-.L517(%r5)
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L513:
	lgfr	%r2,%r2
	br	%r14
.L515:
	lhi	%r2,1
	j	.L513
	.section	.rodata
	.align	8
.L517:
.L519:
	.long	2139095039
.L518:
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
	larl	%r5,.L525
	kdb	%f0,.L526-.L525(%r5)
	jl	.L523
	kdb	%f0,.L527-.L525(%r5)
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L521:
	lgfr	%r2,%r2
	br	%r14
.L523:
	lhi	%r2,1
	j	.L521
	.section	.rodata
	.align	8
.L525:
.L527:
	.long	2146435071
	.long	-1
.L526:
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
	larl	%r5,.L533
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L534-.L533(%r5)
	ld	%f6,.L534-.L533+8(%r5)
	kxbr	%f0,%f4
	jl	.L531
	ld	%f4,.L535-.L533(%r5)
	ld	%f6,.L535-.L533+8(%r5)
	kxbr	%f0,%f4
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L529:
	lgfr	%r2,%r2
	br	%r14
.L531:
	lhi	%r2,1
	j	.L529
	.section	.rodata
	.align	8
.L533:
.L535:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L534:
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
	larl	%r5,.L546
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L545
	le	%f2,.L547-.L546(%r5)
	j	.L542
.L545:
	le	%f2,.L548-.L546(%r5)
	j	.L542
.L541:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L539
	meebr	%f2,%f2
.L542:
	tmll	%r2,1
	je	.L541
	meebr	%f0,%f2
	j	.L541
.L539:
	br	%r14
	.section	.rodata
	.align	8
.L546:
.L548:
	.long	1056964608
.L547:
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
	larl	%r5,.L557
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	cijl	%r2,0,.L556
	ld	%f2,.L558-.L557(%r5)
	j	.L553
.L556:
	ld	%f2,.L559-.L557(%r5)
	j	.L553
.L552:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L550
	mdbr	%f2,%f2
.L553:
	tmll	%r2,1
	je	.L552
	mdbr	%f0,%f2
	j	.L552
.L550:
	br	%r14
	.section	.rodata
	.align	8
.L557:
.L559:
	.long	1071644672
	.long	0
.L558:
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
	larl	%r5,.L568
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L561
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f4,%f0
	je	.L561
	cijl	%r4,0,.L567
	ld	%f0,.L569-.L568(%r5)
	ld	%f2,.L569-.L568+8(%r5)
	j	.L564
.L567:
	ld	%f0,.L570-.L568(%r5)
	ld	%f2,.L570-.L568+8(%r5)
	j	.L564
.L563:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L561
	mxbr	%f0,%f0
.L564:
	tmll	%r4,1
	je	.L563
	mxbr	%f4,%f0
	j	.L563
.L561:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L568:
.L570:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L569:
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
	lgr	%r5,%r4
	cgije	%r4,0,.L572
	lgr	%r1,%r2
.L573:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r4,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r4,%r0
	stcy	%r4,-1(%r1)
	bcr	7,%r0
	brctg	%r5,.L573
.L572:
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
	lghi	%r1,0
	lgr	%r5,%r2
	srst	%r1,%r5
	jo	.-4
	lgr	%r0,%r4
	lgr	%r5,%r4
	cgije	%r4,0,.L579
.L578:
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	cgije	%r4,0,.L579
	aghi	%r3,1
	aghi	%r1,1
	aghi	%r0,-1
	brctg	%r5,.L578
.L579:
	cgijlh	%r0,0,.L581
	mvi	0(%r1),0
.L581:
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
	lgr	%r4,%r3
	sgr	%r4,%r2
	cgije	%r3,0,.L594
.L587:
	llc	%r3,0(%r2,%r1)
	cijlh	%r3,0,.L589
	br	%r14
.L594:
	br	%r14
.L589:
	aghi	%r2,1
	brctg	%r4,.L587
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r12,%r2
	cli	0(%r2),0
	je	.L605
.L597:
	lgr	%r1,%r3
.L600:
	llc	%r4,0(%r1)
	cije	%r4,0,.L606
	aghi	%r1,1
	llc	%r5,-1(%r1)
	llc	%r4,0(%r12)
	crjlh	%r5,%r4,.L600
	lgr	%r2,%r12
.L598:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L605:
	.cfi_restore_state
	lghi	%r2,0
	j	.L598
.L606:
	aghi	%r12,1
	llc	%r1,0(%r12)
	cijlh	%r1,0,.L597
	lghi	%r2,0
	j	.L598
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
.L610:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	llc	%r4,-1(%r1)
	cijlh	%r4,0,.L610
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
	jhe	.L615
	lgr	%r11,%r3
	llgc	%r9,0(%r3)
.L616:
	lgr	%r3,%r9
	lgr	%r2,%r12
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgije	%r2,0,.L615
	lgr	%r4,%r10
	lgr	%r3,%r11
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L619
	aghi	%r12,1
	j	.L616
.L619:
	lgr	%r2,%r12
.L615:
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
	jl	.L635
.L623:
	lzdr	%f4
	kdbr	%f0,%f4
	jnh	.L626
	kdbr	%f2,%f4
	jl	.L625
.L626:
	br	%r14
.L635:
	kdbr	%f2,%f4
	jnh	.L623
.L625:
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
	sgrk	%r11,%r3,%r5
	agr	%r11,%r2
	cgije	%r5,0,.L638
	clgrjh	%r5,%r3,.L642
	clgrjh	%r2,%r11,.L643
	llc	%r9,0(%r4)
	aghik	%r8,%r4,1
	aghik	%r10,%r5,-1
	j	.L640
.L639:
	aghi	%r12,1
	clgrjl	%r11,%r12,.L647
.L640:
	llc	%r1,0(%r12)
	crjlh	%r1,%r9,.L639
	lgr	%r4,%r10
	lgr	%r3,%r8
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L639
	lgr	%r2,%r12
	j	.L638
.L647:
	lghi	%r2,0
.L638:
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
.L642:
	.cfi_restore_state
	lghi	%r2,0
	j	.L638
.L643:
	lghi	%r2,0
	j	.L638
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
	larl	%r5,.L675
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L674
	lhi	%r3,0
.L653:
	kdb	%f0,.L676-.L675(%r5)
	jnhe	.L671
	lhi	%r1,0
.L657:
	ahi	%r1,1
	mdb	%f0,.L677-.L675(%r5)
	kdb	%f0,.L676-.L675(%r5)
	jhe	.L657
.L658:
	st	%r1,0(%r2)
	cije	%r3,0,.L661
	lcdbr	%f0,%f0
.L661:
	br	%r14
.L674:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L653
.L671:
	kdb	%f0,.L677-.L675(%r5)
	jnl	.L672
	lzdr	%f2
	cdbr	%f0,%f2
	je	.L664
	lhi	%r1,0
.L660:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L677-.L675(%r5)
	jl	.L660
	j	.L658
.L672:
	lhi	%r1,0
	j	.L658
.L664:
	lhi	%r1,0
	j	.L658
	.section	.rodata
	.align	8
.L675:
.L677:
	.long	1071644672
	.long	0
.L676:
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
	lgr	%r4,%r2
	cgije	%r2,0,.L681
	lghi	%r2,0
.L680:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r1,%r1
	ngr	%r1,%r3
	agr	%r2,%r1
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L680
	br	%r14
.L681:
	lghi	%r2,0
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
	clrjhe	%r3,%r2,.L686
	lhi	%r1,1
	lhi	%r0,32
.L685:
	cijl	%r3,0,.L686
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L686
	brct	%r0,.L685
.L686:
	lhi	%r5,0
	cijlh	%r1,0,.L687
.L688:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	br	%r14
.L690:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L688
.L687:
	clrjl	%r2,%r3,.L690
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L690
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
	lgr	%r4,%r2
	cgije	%r2,0,.L711
	lhi	%r2,0
.L710:
	risbg	%r1,%r4,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srlg	%r4,%r4,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r4,0,.L710
.L709:
	llgfr	%r2,%r2
	br	%r14
.L711:
	lhi	%r2,0
	j	.L709
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	srlk	%r1,%r4,3
	risbg	%r0,%r4,32,128+60,0
	clgrjhe	%r2,%r3,.L715
.L718:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r1,0,.L717
	lghi	%r5,0
	risbgn	%r1,%r1,32,128+60,3
	aghi	%r1,-8
	srlg	%r1,%r1,3
	aghi	%r1,1
.L721:
	lg	%r12,0(%r5,%r3)
	stg	%r12,0(%r5,%r2)
	aghi	%r5,8
	brctg	%r1,.L721
.L717:
	clrjhe	%r0,%r4,.L714
	llgfr	%r1,%r0
	srk	%r5,%r4,%r0
	ahik	%r12,%r0,1
	clr	%r12,%r4
	lhi	%r4,1
	locrnle	%r5,%r4
.L722:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	aghi	%r1,1
	brct	%r5,.L722
.L714:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L715:
	agrk	%r5,%r3,%r4
	clgrjl	%r5,%r2,.L718
	cgije	%r4,0,.L734
	ahi	%r4,-1
	llgfr	%r4,%r4
	aghik	%r1,%r4,1
.L723:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	aghi	%r4,-1
	brctg	%r1,.L723
	br	%r14
.L734:
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
	srlk	%r1,%r4,1
	clgrjhe	%r2,%r3,.L737
.L740:
	cije	%r1,0,.L739
	lghi	%r5,0
	risbgn	%r1,%r1,32,128+62,1
	aghi	%r1,-2
	srlg	%r1,%r1,1
	aghi	%r1,1
.L743:
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	aghi	%r5,2
	brctg	%r1,.L743
.L739:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	algfr	%r3,%r4
	algfr	%r2,%r4
	mvc	0(1,%r2),0(%r3)
	br	%r14
.L737:
	agrk	%r5,%r3,%r4
	clgrjl	%r5,%r2,.L740
	cgije	%r4,0,.L749
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	aghik	%r4,%r1,1
.L744:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
	brctg	%r4,.L744
	br	%r14
.L749:
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
	srlk	%r1,%r4,2
	risbg	%r0,%r4,32,128+61,0
	clgrjhe	%r2,%r3,.L752
.L755:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r1,0,.L754
	lghi	%r5,0
	risbgn	%r1,%r1,32,128+61,2
	aghi	%r1,-4
	srlg	%r1,%r1,2
	aghi	%r1,1
.L758:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	aghi	%r5,4
	brctg	%r1,.L758
.L754:
	clrjhe	%r0,%r4,.L751
	llgfr	%r1,%r0
	srk	%r5,%r4,%r0
	ahik	%r12,%r0,1
	clr	%r12,%r4
	lhi	%r4,1
	locrnle	%r5,%r4
.L759:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	aghi	%r1,1
	brct	%r5,.L759
.L751:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L752:
	agrk	%r5,%r3,%r4
	clgrjl	%r5,%r2,.L755
	cgije	%r4,0,.L771
	ahi	%r4,-1
	llgfr	%r4,%r4
	aghik	%r1,%r4,1
.L760:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	aghi	%r4,-1
	brctg	%r1,.L760
	br	%r14
.L771:
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
	lhi	%r3,0
	lhi	%r5,15
	lhi	%r4,16
.L787:
	srk	%r1,%r5,%r3
	srak	%r1,%r2,0(%r1)
	tmll	%r1,1
	jne	.L786
	ahi	%r3,1
	brct	%r4,.L787
.L786:
	lgfr	%r2,%r3
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
	lhi	%r1,0
	lhi	%r3,16
.L793:
	srak	%r4,%r2,0(%r1)
	tmll	%r4,1
	jne	.L792
	ahi	%r1,1
	brct	%r3,.L793
.L792:
	lgfr	%r2,%r1
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
	larl	%r5,.L805
	keb	%f0,.L806-.L805(%r5)
	jhe	.L804
	cgebr	%r2,5,%f0
	br	%r14
.L804:
	seb	%f0,.L806-.L805(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L805:
.L806:
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
	lgr	%r5,%r2
	lhi	%r2,0
	lhi	%r4,0
	lhi	%r3,16
.L808:
	srak	%r1,%r5,0(%r4)
	nilf	%r1,1
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L808
	risbg	%r2,%r2,63,128+63,0
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
	lgr	%r5,%r2
	lhi	%r2,0
	lhi	%r4,0
	lhi	%r3,16
.L812:
	srak	%r1,%r5,0(%r4)
	nilf	%r1,1
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L812
	lgfr	%r2,%r2
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
	lgr	%r4,%r2
	cgije	%r2,0,.L818
	lhi	%r2,0
.L817:
	risbg	%r1,%r4,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srlg	%r4,%r4,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r4,0,.L817
.L816:
	llgfr	%r2,%r2
	br	%r14
.L818:
	lhi	%r2,0
	j	.L816
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
	cgije	%r2,0,.L824
	cgije	%r3,0,.L825
	lhi	%r2,0
.L823:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	risbgn	%r4,%r4,32,128+62,1
	srlg	%r3,%r3,1
	cgijlh	%r3,0,.L823
.L822:
	llgfr	%r2,%r2
	br	%r14
.L824:
	lhi	%r2,0
	j	.L822
.L825:
	lhi	%r2,0
	j	.L822
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
	clrjhe	%r3,%r2,.L830
	lhi	%r1,1
	lhi	%r0,32
.L829:
	cijl	%r3,0,.L830
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L830
	brct	%r0,.L829
.L830:
	lhi	%r5,0
	cijlh	%r1,0,.L831
.L832:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	br	%r14
.L834:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L832
.L831:
	clrjl	%r2,%r3,.L834
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L834
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
	jl	.L847
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L845:
	lgfr	%r2,%r2
	br	%r14
.L847:
	lhi	%r2,-1
	j	.L845
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
	jl	.L852
	lhi	%r1,0
	lhi	%r2,1
	locrh	%r1,%r2
	llcr	%r2,%r1
.L850:
	lgfr	%r2,%r2
	br	%r14
.L852:
	lhi	%r2,-1
	j	.L850
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
	cijl	%r3,0,.L868
	lhi	%r0,0
.L859:
	cgije	%r3,0,.L864
	lhi	%r5,32
	lhi	%r4,0
.L861:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srak	%r1,%r3,1
	lgfr	%r3,%r1
	cije	%r1,0,.L860
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L861
.L860:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L868:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L859
.L864:
	lhi	%r4,0
	j	.L860
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
	cgijl	%r2,0,.L876
	lhi	%r12,0
.L871:
	cgijl	%r3,0,.L877
.L872:
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
.L876:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L871
.L877:
	lcgr	%r3,%r3
	risbgn	%r12,%r12,64-1,128+63,63+1
	xilf	%r12,1
	llcr	%r12,%r12
	j	.L872
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
	cgijl	%r2,0,.L884
	lhi	%r12,0
.L880:
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
.L884:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L880
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
	clrjhe	%r3,%r2,.L888
	lhi	%r1,1
	lhi	%r5,16
.L887:
	tmll	%r3,32768
	jne	.L888
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L888
	brct	%r5,.L887
.L888:
	llhr	%r5,%r1
	lhi	%r0,0
	cijlh	%r5,0,.L889
.L890:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llghr	%r2,%r2
	br	%r14
.L892:
	risbgn	%r5,%r1,64-15,128+63,48+15
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cije	%r5,0,.L890
.L889:
	clrjl	%r2,%r3,.L892
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L892
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
	clgrjhe	%r3,%r2,.L904
	lghi	%r1,1
	lhi	%r5,64
.L903:
	tmlh	%r3,32768
	jne	.L904
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L904
	brct	%r5,.L903
.L904:
	lghi	%r5,0
	cgijlh	%r1,0,.L905
.L906:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L908:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgije	%r1,0,.L906
.L905:
	clgrjl	%r2,%r3,.L908
	sgr	%r2,%r3
	ogr	%r5,%r1
	j	.L908
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
	je	.L919
	lghi	%r4,0
	sllk	%r1,%r2,4064(%r3)
	risbgn	%r4,%r1,0,0+32-1,64-0-32
.L920:
	lgr	%r2,%r4
.L921:
	br	%r14
.L919:
	cgije	%r3,0,.L921
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
	j	.L920
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
	je	.L925
	lghi	%r3,0
	sllg	%r1,%r1,4032(%r4)
.L926:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L925:
	cgije	%r4,0,.L929
	sllg	%r3,%r1,0(%r4)
	sllg	%r5,%r5,0(%r4)
	lhi	%r0,64
	srk	%r4,%r0,%r4
	srlg	%r1,%r1,0(%r4)
	ogr	%r1,%r5
	j	.L926
.L929:
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
	je	.L932
	srag	%r1,%r2,32
	srak	%r2,%r1,31
	lghi	%r4,0
	risbgn	%r4,%r2,0,0+32-1,64-0-32
	sra	%r1,4064(%r3)
	lr	%r4,%r1
.L933:
	lgr	%r2,%r4
.L934:
	br	%r14
.L932:
	cgije	%r3,0,.L934
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
	j	.L933
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
	je	.L938
	srag	%r5,%r1,63
	srag	%r1,%r1,4032(%r4)
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L938:
	cgije	%r4,0,.L946
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
.L946:
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
	risbgn	%r3,%r2,64-1,128+63,62+1
	xilf	%r3,1
	llcr	%r3,%r3
	sr	%r4,%r2
	lcr	%r2,%r3
	nr	%r2,%r4
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
	crjl	%r4,%r1,.L958
	crjh	%r4,%r1,.L959
	clrjl	%r2,%r3,.L960
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L957:
	lgfr	%r2,%r2
	br	%r14
.L958:
	lhi	%r2,0
	j	.L957
.L959:
	lhi	%r2,2
	j	.L957
.L960:
	lhi	%r2,0
	j	.L957
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
	cgrjl	%r4,%r1,.L968
	cgrjh	%r4,%r1,.L969
	clgrjl	%r5,%r2,.L970
	clgr	%r5,%r2
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L967:
	lgfr	%r2,%r2
	br	%r14
.L968:
	lhi	%r2,0
	j	.L967
.L969:
	lhi	%r2,2
	j	.L967
.L970:
	lhi	%r2,0
	j	.L967
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
	cgijlh	%r1,0,.L978
	lcgr	%r4,%r3
	ngr	%r4,%r3
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r3,%r3
	locre	%r2,%r1
.L979:
	lgfr	%r2,%r2
	br	%r14
.L978:
	lcgr	%r4,%r1
	ngr	%r4,%r1
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L979
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
	je	.L983
	lghi	%r4,0
	iihf	%r4,0
	risbgn	%r1,%r2,64-32,128+63,0+32
	srl	%r1,4064(%r3)
	lr	%r4,%r1
.L984:
	lgr	%r2,%r4
.L985:
	br	%r14
.L983:
	cgije	%r3,0,.L985
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
	j	.L984
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
	je	.L989
	lghi	%r5,0
	srlg	%r1,%r1,4032(%r4)
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L989:
	cgije	%r4,0,.L997
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
.L997:
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
	larl	%r5,.L1023
	srlg	%r1,%r2,1
	ng	%r1,.L1024-.L1023(%r5)
	sgr	%r2,%r1
	srlg	%r1,%r2,2
	ng	%r1,.L1025-.L1023(%r5)
	ng	%r2,.L1025-.L1023(%r5)
	agr	%r2,%r1
	srlg	%r1,%r2,4
	agr	%r2,%r1
	ng	%r2,.L1026-.L1023(%r5)
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
.L1023:
.L1026:
	.quad	1085102592571150095
.L1025:
	.quad	3689348814741910323
.L1024:
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
	larl	%r5,.L1039
	srlk	%r3,%r2,31
	ld	%f2,.L1040-.L1039(%r5)
	j	.L1035
.L1033:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1034
	mdbr	%f0,%f0
.L1035:
	tmll	%r2,1
	je	.L1033
	mdbr	%f2,%f0
	j	.L1033
.L1034:
	cije	%r3,0,.L1037
	ld	%f0,.L1040-.L1039(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1037:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1039:
.L1040:
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
	larl	%r5,.L1048
	srlk	%r3,%r2,31
	le	%f2,.L1049-.L1048(%r5)
	j	.L1044
.L1042:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1043
	meebr	%f0,%f0
.L1044:
	tmll	%r2,1
	je	.L1042
	meebr	%f2,%f0
	j	.L1042
.L1043:
	cije	%r3,0,.L1046
	le	%f0,.L1049-.L1048(%r5)
	debr	%f0,%f2
	br	%r14
.L1046:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1048:
.L1049:
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
	clrjl	%r4,%r1,.L1052
	clrjh	%r4,%r1,.L1053
	clrjl	%r2,%r3,.L1054
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L1051:
	lgfr	%r2,%r2
	br	%r14
.L1052:
	lhi	%r2,0
	j	.L1051
.L1053:
	lhi	%r2,2
	j	.L1051
.L1054:
	lhi	%r2,0
	j	.L1051
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
	clgrjl	%r4,%r1,.L1062
	clgrjh	%r4,%r1,.L1063
	clgrjl	%r5,%r2,.L1064
	clgr	%r5,%r2
	lhi	%r2,2
	lhi	%r1,1
	locrle	%r2,%r1
.L1061:
	lgfr	%r2,%r2
	br	%r14
.L1062:
	lhi	%r2,0
	j	.L1061
.L1063:
	lhi	%r2,2
	j	.L1061
.L1064:
	lhi	%r2,0
	j	.L1061
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
