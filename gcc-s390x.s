	.file	"mini-libc.c"
	.machinemode zarch
	.machine "zEC12"
.text
	.align	8
	.align	16
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
	.align	16
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
	.align	16
.globl memmove
	.type	memmove, @function
memmove:
.LFB2:
	.cfi_startproc
	clgr	%r2,%r3
	jle	.L7
	cgije	%r4,0,.L8
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L22
	cgije	%r5,1,.L35
	cgijlh	%r5,2,.L52
.L36:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L35:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	brctg	%r4,.L22
	br	%r14
.L7:
	ber	%r14
	cgije	%r4,0,.L8
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L31
	cgije	%r0,1,.L37
	cgije	%r0,2,.L38
	mvc	0(1,%r2),0(%r3)
	lghi	%r1,1
.L38:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L37:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgrje	%r1,%r4,.L8
.L31:
	srlg	%r5,%r5,2
.L10:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L10
.L8:
	br	%r14
.L22:
	srlg	%r1,%r1,2
.L9:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r0,-3(%r4,%r3)
	stcy	%r0,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	aghi	%r4,-4
	brctg	%r1,.L9
	br	%r14
.L52:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r0
	j	.L36
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	8
	.align	16
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	llcr	%r4,%r4
	cgije	%r5,0,.L56
	aghik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L74
.L64:
	srlg	%r1,%r5,1
.L55:
	llgc	%r5,0(%r3)
	la	%r0,1(%r2)
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L72
	llgc	%r5,1(%r3)
	lgr	%r2,%r0
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L72
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r1,.L55
.L56:
	lghi	%r2,0
	br	%r14
.L72:
	la	%r2,1(%r2)
	br	%r14
.L74:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L72
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L64
	j	.L56
	.cfi_endproc
.LFE3:
	.size	memccpy, .-memccpy
	.align	8
	.align	16
.globl memchr
	.type	memchr, @function
memchr:
.LFB4:
	.cfi_startproc
	llcr	%r3,%r3
	cgije	%r4,0,.L80
	aghik	%r1,%r4,-1
	tmll	%r4,1
	jne	.L95
.L83:
	srlg	%r0,%r4,1
.L77:
	llc	%r1,0(%r2)
	la	%r4,1(%r2)
	crje	%r1,%r3,.L96
	llc	%r5,0(%r4)
	lgr	%r2,%r4
	crje	%r5,%r3,.L97
	la	%r2,1(%r4)
	brctg	%r0,.L77
.L80:
	lghi	%r2,0
.L76:
	br	%r14
.L95:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L76
	la	%r2,1(%r2)
	cgijlh	%r1,0,.L83
	lghi	%r2,0
	br	%r14
.L96:
	br	%r14
.L97:
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memchr, .-memchr
	.align	8
	.align	16
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB5:
	.cfi_startproc
	cgije	%r4,0,.L104
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L119
.L107:
	srlg	%r4,%r4,1
.L100:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L116
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	la	%r2,2(%r2)
	crjlh	%r1,%r5,.L116
	la	%r3,2(%r3)
	brctg	%r4,.L100
.L104:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L116:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L119:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L116
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cgijlh	%r0,0,.L107
	j	.L104
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
	.align	16
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	cgije	%r4,0,.L122
	brasl	%r14,memcpy@PLT
.L122:
	lgr	%r2,%r12
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	8
	.align	16
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	llcr	%r3,%r3
	lay	%r1,-1(%r2,%r4)
	tmll	%r4,1
	je	.L133
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r5,%r3,.L128
.L133:
	srlg	%r4,%r4,1
	aghi	%r4,1
.L129:
	brctg	%r4,.L131
	lghi	%r2,0
.L128:
	br	%r14
.L131:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghik	%r5,%r1,-1
	crje	%r0,%r3,.L138
	llc	%r0,0(%r5)
	aghi	%r1,-2
	lgr	%r2,%r5
	crjlh	%r0,%r3,.L129
	br	%r14
.L138:
	br	%r14
	.cfi_endproc
.LFE7:
	.size	memrchr, .-memrchr
	.align	8
	.align	16
.globl memset
	.type	memset, @function
memset:
.LFB8:
	.cfi_startproc
	cgije	%r4,0,.L141
	la	%r0,0(%r4,%r2)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L151
	cgije	%r5,1,.L155
	cgije	%r5,2,.L156
	stc	%r3,0(%r2)
	la	%r1,1(%r2)
.L156:
	stc	%r3,0(%r1)
	la	%r1,1(%r1)
.L155:
	stc	%r3,0(%r1)
	la	%r1,1(%r1)
	cgrje	%r0,%r1,.L141
.L151:
	srlg	%r4,%r4,2
.L142:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	la	%r1,4(%r1)
	brctg	%r4,.L142
.L141:
	br	%r14
	.cfi_endproc
.LFE8:
	.size	memset, .-memset
	.align	8
	.align	16
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB9:
	.cfi_startproc
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgije	%r1,0,.L165
.L166:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L166
.L165:
	br	%r14
	.cfi_endproc
.LFE9:
	.size	stpcpy, .-stpcpy
	.align	8
	.align	16
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB10:
	.cfi_startproc
	cli	0(%r2),0
	llcr	%r3,%r3
	llc	%r1,0(%r2)
	jne	.L173
	br	%r14
.L175:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L173:
	crjlh	%r1,%r3,.L175
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strchrnul, .-strchrnul
	.align	8
	.align	16
.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
.L183:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L182
	la	%r2,1(%r2)
	cijlh	%r1,0,.L183
	lghi	%r2,0
.L182:
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
	.align	8
	.align	16
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB12:
	.cfi_startproc
	llc	%r0,0(%r2)
	llc	%r5,0(%r3)
	lghi	%r4,1
	crje	%r0,%r5,.L187
	j	.L188
.L189:
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	llcr	%r0,%r1
	crjlh	%r0,%r5,.L188
.L187:
	cijlh	%r0,0,.L189
.L188:
	srk	%r2,%r0,%r5
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE12:
	.size	strcmp, .-strcmp
	.align	8
	.align	16
.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	lgr	%r1,%r2
	cli	0(%r2),0
	je	.L194
.L195:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L195
.L194:
	sgrk	%r2,%r1,%r2
	br	%r14
	.cfi_endproc
.LFE13:
	.size	strlen, .-strlen
	.align	8
	.align	16
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB14:
	.cfi_startproc
	cgije	%r4,0,.L204
.L216:
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L201
	llc	%r1,0(%r3)
	la	%r2,1(%r2)
	cije	%r1,0,.L201
	brctg	%r4,.L211
.L201:
	llc	%r0,0(%r3)
	srk	%r2,%r5,%r0
	lgfr	%r2,%r2
	br	%r14
.L211:
	crjlh	%r1,%r5,.L201
	la	%r3,1(%r3)
	j	.L216
.L204:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
	.align	16
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cgijle	%r4,1,.L218
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L227
	cgije	%r4,1,.L231
	cgije	%r4,2,.L232
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L232:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L231:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L218
.L227:
	srlg	%r1,%r0,2
.L220:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	la	%r3,8(%r3)
	la	%r2,8(%r2)
	brctg	%r1,.L220
.L218:
	br	%r14
	.cfi_endproc
.LFE15:
	.size	swab, .-swab
	.align	8
	.align	16
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
	.align	16
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
	.align	16
.globl isblank
	.type	isblank, @function
isblank:
.LFB18:
	.cfi_startproc
	lr	%r1,%r2
	xilf	%r1,9
	lpr	%r0,%r1
	ahi	%r0,-1
	chi	%r2,32
	lhi	%r3,1
	srlk	%r2,%r0,31
	locre	%r2,%r3
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isblank, .-isblank
	.align	8
	.align	16
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB19:
	.cfi_startproc
	lr	%r1,%r2
	xilf	%r1,127
	lpr	%r0,%r1
	ahi	%r0,-1
	clfi	%r2,31
	lhi	%r3,1
	srlk	%r2,%r0,31
	locrnh	%r2,%r3
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE19:
	.size	iscntrl, .-iscntrl
	.align	8
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
.globl isspace
	.type	isspace, @function
isspace:
.LFB24:
	.cfi_startproc
	cije	%r2,32,.L261
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L261:
	lhi	%r0,1
	risbg	%r2,%r0,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE24:
	.size	isspace, .-isspace
	.align	8
	.align	16
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
	.align	16
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB26:
	.cfi_startproc
	clijle	%r2,31,.L269
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L270
.L269:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L270:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L269
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r3,%r2
	risbg	%r2,%r3,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE26:
	.size	iswcntrl, .-iswcntrl
	.align	8
	.align	16
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
	.align	16
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB28:
	.cfi_startproc
	clijle	%r2,254,.L281
	lhi	%r1,8231
	clrjle	%r2,%r1,.L279
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L279
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L279
	risbg	%r5,%r2,48,128+62,0
	slfi	%r2,65532
	xilf	%r5,65534
	lcr	%r1,%r5
	clfi	%r2,1048580
	srl	%r1,31
	lhi	%r2,0
	locrnl	%r1,%r2
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L279:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L281:
	ahi	%r2,1
	lhi	%r1,0
	nilf	%r2,127
	clfi	%r2,32
	alcr	%r1,%r1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	8
	.align	16
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	ahik	%r1,%r2,-48
	clijle	%r1,9,.L285
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L285:
	lhi	%r0,1
	risbg	%r2,%r0,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE29:
	.size	iswxdigit, .-iswxdigit
	.align	8
	.align	16
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
	.align	16
.globl fdim
	.type	fdim, @function
fdim:
.LFB31:
	.cfi_startproc
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L293
	kdbr	%f0,%f2
	jnh	.L296
	sdbr	%f0,%f2
	br	%r14
.L296:
	lzdr	%f0
	br	%r14
.L293:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	8
	.align	16
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L302
	kebr	%f0,%f2
	jnh	.L305
	sebr	%f0,%f2
	br	%r14
.L305:
	lzer	%f0
	br	%r14
.L302:
	ler	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fdimf, .-fdimf
	.align	8
	.align	16
.globl fmax
	.type	fmax, @function
fmax:
.LFB33:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L315
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L309
	cijlh	%r1,0,.L315
	br	%r14
.L309:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L315
	ldr	%f2,%f0
.L315:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE33:
	.size	fmax, .-fmax
	.align	8
	.align	16
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB34:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L325
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L319
	cijlh	%r1,0,.L325
	br	%r14
.L319:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L325
	ler	%f2,%f0
.L325:
	ler	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmaxf, .-fmaxf
	.align	8
	.align	16
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB35:
	.cfi_startproc
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f4,0(%r4)
	cxbr	%f0,%f0
	ld	%f6,8(%r4)
	jo	.L334
	cxbr	%f4,%f4
	jo	.L339
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L341
	kxbr	%f0,%f4
	lhi	%r0,0
	lhi	%r4,1
	ldgr	%f1,%r15
	.cfi_register 15, 20
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	locrl	%r0,%r4
	tmll	%r0,1
	je	.L331
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L332:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L341:
	cije	%r1,0,.L339
.L334:
	lxr	%f0,%f4
.L339:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L331:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L332
	.cfi_endproc
.LFE35:
	.size	fmaxl, .-fmaxl
	.align	8
	.align	16
.globl fmin
	.type	fmin, @function
fmin:
.LFB36:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L349
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L345
	cije	%r1,0,.L349
	br	%r14
.L345:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L349:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE36:
	.size	fmin, .-fmin
	.align	8
	.align	16
.globl fminf
	.type	fminf, @function
fminf:
.LFB37:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L359
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L355
	cije	%r1,0,.L359
	br	%r14
.L355:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L359:
	ler	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE37:
	.size	fminf, .-fminf
	.align	8
	.align	16
.globl fminl
	.type	fminl, @function
fminl:
.LFB38:
	.cfi_startproc
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	ld	%f0,0(%r4)
	cxbr	%f4,%f4
	ld	%f2,8(%r4)
	jo	.L375
	cxbr	%f0,%f0
	jo	.L370
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L377
	kxbr	%f4,%f0
	lhi	%r0,0
	lhi	%r4,1
	ldgr	%f1,%r15
	.cfi_register 15, 20
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	locrl	%r0,%r4
	tmll	%r0,1
	je	.L367
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L368:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L377:
	cije	%r1,0,.L375
.L370:
	lxr	%f0,%f4
.L375:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L367:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L368
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	8
	.align	16
.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L382
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L381:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L381
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L382:
	larl	%r2,.LANCHOR0
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.align	8
	.align	16
.globl srand
	.type	srand, @function
srand:
.LFB40:
	.cfi_startproc
	ahi	%r2,-1
	llgfr	%r2,%r2
	stgrl	%r2,.LANCHOR0+8
	br	%r14
	.cfi_endproc
.LFE40:
	.size	srand, .-srand
	.align	8
	.align	16
.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	larl	%r1,.LANCHOR0
	llihf	%r2,1481765933
	oilf	%r2,1284865837
	msg	%r2,8(%r1)
	aghi	%r2,1
	stg	%r2,8(%r1)
	srlg	%r2,%r2,33
	br	%r14
	.cfi_endproc
.LFE41:
	.size	rand, .-rand
	.align	8
	.align	16
.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	cgije	%r3,0,.L396
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L396:
	mvghi	8(%r2),0
	mvghi	0(%r2),0
	br	%r14
	.cfi_endproc
.LFE42:
	.size	insque, .-insque
	.align	8
	.align	16
.globl remque
	.type	remque, @function
remque:
.LFB43:
	.cfi_startproc
	ltg	%r1,0(%r2)
	je	.L399
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L399:
	ltg	%r2,8(%r2)
	ber	%r14
	stg	%r1,0(%r2)
	br	%r14
	.cfi_endproc
.LFE43:
	.size	remque, .-remque
	.align	8
	.align	16
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
	stg	%r4,160(%r15)
	lgr	%r9,%r5
	lgr	%r7,%r2
	lgr	%r13,%r3
	ltg	%r8,0(%r4)
	je	.L409
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L428
.L419:
	srlg	%r10,%r10,1
.L411:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L408
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L408
	agrk	%r12,%r11,%r9
	brctg	%r10,.L411
.L409:
	lgr	%r12,%r9
	msgr	%r12,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L408
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L408:
	lgr	%r2,%r12
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
	.cfi_def_cfa_offset 160
	br	%r14
.L428:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L408
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L419
	j	.L409
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	8
	.align	16
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
	ltg	%r7,0(%r4)
	je	.L431
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L447
.L438:
	srlg	%r7,%r11,1
.L433:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L430
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L430
	agr	%r12,%r10
	brctg	%r7,.L433
.L431:
	lghi	%r8,0
.L430:
	lgr	%r2,%r8
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
.L447:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L430
	agr	%r12,%r10
	cgijlh	%r7,1,.L438
	lghi	%r8,0
	j	.L430
	.cfi_endproc
.LFE45:
	.size	lfind, .-lfind
	.align	8
	.align	16
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
	.align	16
.globl atoi
	.type	atoi, @function
atoi:
.LFB47:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L458:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L452
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L452
	cije	%r4,43,.L453
	cije	%r4,45,.L454
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L472
	lgr	%r3,%r2
	lhi	%r12,0
.L456:
	lhi	%r2,0
.L460:
	ahik	%r0,%r4,-48
	llc	%r4,1(%r3)
	sllk	%r1,%r2,2
	la	%r3,1(%r3)
	ar	%r1,%r2
	ahik	%r5,%r4,-48
	sll	%r1,1
	srk	%r2,%r1,%r0
	clijle	%r5,9,.L460
	cije	%r12,0,.L457
.L459:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L452:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L458
.L454:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L463
	lhi	%r12,1
	j	.L456
.L453:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r12,0
	clijle	%r0,9,.L456
.L472:
	lhi	%r2,0
.L457:
	lcr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r2
	br	%r14
.L463:
	.cfi_restore_state
	lhi	%r2,0
	j	.L459
	.cfi_endproc
.LFE47:
	.size	atoi, .-atoi
	.align	8
	.align	16
.globl atol
	.type	atol, @function
atol:
.LFB48:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L481:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L475
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L475
	cije	%r3,43,.L476
	cije	%r3,45,.L477
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L495
	lgr	%r1,%r2
	lhi	%r12,0
.L479:
	lghi	%r2,0
.L483:
	ahik	%r0,%r3,-48
	llc	%r3,1(%r1)
	la	%r1,1(%r1)
	sllg	%r4,%r2,2
	ahik	%r5,%r3,-48
	agr	%r2,%r4
	sllg	%r2,%r2,1
	sgfr	%r2,%r0
	clijle	%r5,9,.L483
	cije	%r12,0,.L480
.L474:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L475:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L481
.L477:
	llc	%r3,1(%r2)
	la	%r1,1(%r2)
	ahik	%r0,%r3,-48
	clijh	%r0,9,.L486
	lhi	%r12,1
	j	.L479
.L476:
	llc	%r3,1(%r2)
	la	%r1,1(%r2)
	lhi	%r12,0
	ahik	%r2,%r3,-48
	clijle	%r2,9,.L479
.L495:
	lghi	%r2,0
.L480:
	lcgr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L486:
	.cfi_restore_state
	lghi	%r2,0
	j	.L474
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	8
	.align	16
.globl atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	jg	atol@PLT
	.cfi_endproc
.LFE171:
	.size	atoll, .-atoll
	.align	8
	.align	16
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
	cgije	%r4,0,.L500
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L503
.L510:
	jle	.L499
	aghi	%r12,-1
	agrk	%r8,%r11,%r9
	sgr	%r12,%r10
	cgije	%r12,0,.L500
.L503:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	lgr	%r2,%r7
	agr	%r11,%r8
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L510
	lgr	%r12,%r10
	cgijlh	%r12,0,.L503
.L500:
	lghi	%r11,0
.L499:
	lgr	%r2,%r11
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
.LFE50:
	.size	bsearch, .-bsearch
	.align	8
	.align	16
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
	lg	%r7,320(%r15)
	cije	%r4,0,.L513
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L516
.L519:
	jle	.L515
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
.L515:
	sra	%r12,1
	je	.L513
.L516:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	lgr	%r4,%r7
	lgr	%r2,%r8
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jne	.L519
.L512:
	lgr	%r2,%r11
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
.L513:
	.cfi_restore_state
	lghi	%r11,0
	j	.L512
	.cfi_endproc
.LFE51:
	.size	bsearch_r, .-bsearch_r
	.align	8
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
.globl labs
	.type	labs, @function
labs:
.LFB167:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE167:
	.size	labs, .-labs
	.align	8
	.align	16
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
	.align	16
.globl llabs
	.type	llabs, @function
llabs:
.LFB169:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE169:
	.size	llabs, .-llabs
	.align	8
	.align	16
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
	.align	16
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB59:
	.cfi_startproc
	j	.L542
.L544:
	crje	%r1,%r3,.L543
	la	%r2,4(%r2)
.L542:
	lt	%r1,0(%r2)
	jne	.L544
	lghi	%r2,0
	br	%r14
.L543:
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcschr, .-wcschr
	.align	8
	.align	16
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB60:
	.cfi_startproc
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lghi	%r1,4
	crje	%r4,%r5,.L547
	j	.L548
.L558:
	cije	%r5,0,.L548
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L548
.L547:
	cijlh	%r4,0,.L558
.L548:
	cr	%r4,%r5
	lhi	%r0,1
	lhi	%r2,0
	locrh	%r2,%r0
	lhi	%r3,-1
	locrnhe	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	8
	.align	16
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	lghi	%r1,0
.L561:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L561
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcscpy, .-wcscpy
	.align	8
	.align	16
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB62:
	.cfi_startproc
	lt	%r1,0(%r2)
	lgr	%r1,%r2
	je	.L565
.L566:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L566
.L565:
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
	.align	16
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	cgije	%r4,0,.L577
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L593
.L580:
	srlg	%r0,%r1,1
.L571:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L573
	la	%r5,4(%r2)
	cije	%r1,0,.L573
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L573
	cije	%r4,0,.L573
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L571
.L577:
	lhi	%r3,0
.L594:
	lgfr	%r2,%r3
	br	%r14
.L573:
	l	%r2,0(%r2)
	lhi	%r0,1
	c	%r2,0(%r3)
	lhi	%r3,0
	locrh	%r3,%r0
	lhi	%r1,-1
	locrl	%r3,%r1
	lgfr	%r2,%r3
	br	%r14
.L593:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L573
	cije	%r4,0,.L573
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L580
	lhi	%r3,0
	j	.L594
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
	.align	16
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	cgije	%r4,0,.L600
	aghik	%r1,%r4,-1
	tmll	%r4,1
	jne	.L616
.L603:
	srlg	%r4,%r4,1
.L597:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	brctg	%r4,.L597
.L600:
	lghi	%r2,0
	br	%r14
.L616:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgijlh	%r1,0,.L603
	j	.L600
	.cfi_endproc
.LFE64:
	.size	wmemchr, .-wmemchr
	.align	8
	.align	16
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB65:
	.cfi_startproc
	cgije	%r4,0,.L625
	aghik	%r1,%r4,-1
	tmll	%r4,1
	jne	.L640
.L628:
	srlg	%r4,%r4,1
.L619:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L637
	l	%r5,4(%r2)
	la	%r3,4(%r3)
	c	%r5,0(%r3)
	jne	.L637
	la	%r2,8(%r2)
	la	%r3,4(%r3)
	brctg	%r4,.L619
.L625:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L637:
	c	%r5,0(%r3)
	lhi	%r0,1
	lhi	%r2,0
	locrh	%r2,%r0
	lhi	%r3,-1
	locrl	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
.L640:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L637
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r1,0,.L628
	j	.L625
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
	.align	16
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	cgije	%r4,0,.L643
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L643:
	lgr	%r2,%r12
	lmg	%r12,%r15,256(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	8
	.align	16
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cgrje	%r2,%r3,.L650
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjhe	%r0,%r5,.L694
	cgije	%r4,0,.L650
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L665
	cgije	%r5,1,.L681
	cgije	%r5,2,.L682
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L682:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L681:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L650
.L665:
	srlg	%r4,%r4,2
.L653:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L653
	br	%r14
.L694:
	lghi	%r5,0
	cgije	%r4,0,.L650
	risbg	%r0,%r4,62,128+63,0
	je	.L674
	cgije	%r0,1,.L679
	cgije	%r0,2,.L680
	l	%r1,0(%r3)
	lghi	%r5,4
	st	%r1,0(%r2)
	aghik	%r1,%r4,-2
.L680:
	l	%r0,0(%r5,%r3)
	aghi	%r1,-1
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
.L679:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
	cgije	%r1,0,.L650
.L674:
	srlg	%r4,%r4,2
.L652:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	aghi	%r5,16
	brctg	%r4,.L652
.L650:
	br	%r14
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	8
	.align	16
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	aghik	%r5,%r4,-1
	cgije	%r4,0,.L697
	lgr	%r1,%r2
	risbg	%r0,%r4,62,128+63,0
	je	.L707
	cgije	%r0,1,.L711
	cgije	%r0,2,.L712
	st	%r3,0(%r2)
	la	%r1,4(%r2)
	aghik	%r5,%r4,-2
.L712:
	st	%r3,0(%r1)
	aghi	%r5,-1
	la	%r1,4(%r1)
.L711:
	st	%r3,0(%r1)
	la	%r1,4(%r1)
	cgije	%r5,0,.L697
.L707:
	srlg	%r4,%r4,2
.L698:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	la	%r1,16(%r1)
	brctg	%r4,.L698
.L697:
	br	%r14
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	8
	.align	16
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	clgr	%r2,%r3
	jhe	.L721
	cgije	%r4,0,.L720
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L736
	cgije	%r5,1,.L749
	cgijlh	%r5,2,.L766
.L750:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L749:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L736
	br	%r14
.L721:
	ber	%r14
	cgije	%r4,0,.L720
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L745
	cgije	%r0,1,.L751
	cgije	%r0,2,.L752
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L752:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L751:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L720
.L745:
	srlg	%r5,%r5,2
.L724:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L724
.L720:
	br	%r14
.L736:
	srlg	%r1,%r1,2
.L723:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L723
	br	%r14
.L766:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L750
	.cfi_endproc
.LFE69:
	.size	bcopy, .-bcopy
	.align	8
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB173:
	.cfi_startproc
	rllg	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.align	8
	.align	16
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB175:
	.cfi_startproc
	lcr	%r3,%r3
	rllg	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE175:
	.size	rotr_sz, .-rotr_sz
	.align	8
	.align	16
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB76:
	.cfi_startproc
	nilf	%r3,15
	lcr	%r1,%r3
	sllk	%r3,%r2,0(%r3)
	nilf	%r1,15
	srl	%r2,0(%r1)
	or	%r2,%r3
	llghr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl16, .-rotl16
	.align	8
	.align	16
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB77:
	.cfi_startproc
	nilf	%r3,15
	lcr	%r1,%r3
	srlk	%r3,%r2,0(%r3)
	nilf	%r1,15
	sll	%r2,0(%r1)
	or	%r2,%r3
	llghr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr16, .-rotr16
	.align	8
	.align	16
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB78:
	.cfi_startproc
	nilf	%r3,7
	lcr	%r1,%r3
	sllk	%r3,%r2,0(%r3)
	nilf	%r1,7
	srl	%r2,0(%r1)
	or	%r2,%r3
	llgcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE78:
	.size	rotl8, .-rotl8
	.align	8
	.align	16
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB79:
	.cfi_startproc
	nilf	%r3,7
	lcr	%r1,%r3
	srlk	%r3,%r2,0(%r3)
	nilf	%r1,7
	sll	%r2,0(%r1)
	or	%r2,%r3
	llgcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE79:
	.size	rotr8, .-rotr8
	.align	8
	.align	16
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB80:
	.cfi_startproc
	lrvr	%r2,%r2
	srl	%r2,16
	llghr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE80:
	.size	bswap_16, .-bswap_16
	.align	8
	.align	16
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB81:
	.cfi_startproc
	lrvr	%r2,%r2
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE81:
	.size	bswap_32, .-bswap_32
	.align	8
	.align	16
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB82:
	.cfi_startproc
	lrvgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE82:
	.size	bswap_64, .-bswap_64
	.align	8
	.align	16
.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	lhi	%r1,0
	lhi	%r4,8
.L797:
	ahik	%r3,%r1,1
	srlk	%r5,%r2,0(%r1)
	srlk	%r0,%r2,0(%r3)
	lr	%r1,%r3
	tmll	%r5,1
	jne	.L796
	ahi	%r1,1
	tmll	%r0,1
	srlk	%r5,%r2,0(%r1)
	jne	.L796
	ahik	%r1,%r3,2
	tmll	%r5,1
	srlk	%r0,%r2,0(%r1)
	jne	.L796
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L796
	brct	%r4,.L797
	lhi	%r1,0
.L796:
	lgfr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
	.align	16
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	cgije	%r2,0,.L812
	risbg	%r3,%r2,63,128+63,0
	jne	.L810
	lhi	%r3,1
.L811:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L811
.L810:
	lgfr	%r2,%r3
	br	%r14
.L812:
	lhi	%r3,0
	lgfr	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
	.align	16
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	larl	%r5,.L821
	keb	%f0,.L822-.L821(%r5)
	jl	.L819
	keb	%f0,.L823-.L821(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L819:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L821:
.L823:
	.long	2139095039
.L822:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinff, .-gl_isinff
	.align	8
	.align	16
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB86:
	.cfi_startproc
	larl	%r5,.L829
	kdb	%f0,.L830-.L829(%r5)
	jl	.L827
	kdb	%f0,.L831-.L829(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L827:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L829:
.L831:
	.long	2146435071
	.long	-1
.L830:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE86:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
	.align	16
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB87:
	.cfi_startproc
	larl	%r5,.L837
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L838-.L837(%r5)
	ld	%f6,.L838-.L837+8(%r5)
	kxbr	%f0,%f4
	jl	.L835
	ld	%f4,.L839-.L837(%r5)
	ld	%f6,.L839-.L837+8(%r5)
	lhi	%r1,1
	kxbr	%f0,%f4
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L835:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L837:
.L839:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L838:
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
	.align	16
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
	.align	16
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB89:
	.cfi_startproc
	larl	%r5,.L858
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L856
	le	%f4,.L859-.L858(%r5)
.L844:
	tmll	%r2,1
	je	.L845
.L846:
	meebr	%f0,%f4
.L845:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L843
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L846
.L857:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L846
	j	.L857
.L843:
	br	%r14
.L856:
	le	%f4,.L860-.L858(%r5)
	j	.L844
	.section	.rodata
	.align	8
.L858:
.L860:
	.long	1056964608
.L859:
	.long	1073741824
	.align	2
.text
	.cfi_endproc
.LFE89:
	.size	ldexpf, .-ldexpf
	.align	8
	.align	16
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB90:
	.cfi_startproc
	larl	%r5,.L877
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L875
	ld	%f4,.L878-.L877(%r5)
.L863:
	tmll	%r2,1
	je	.L864
.L865:
	mdbr	%f0,%f4
.L864:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L862
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L865
.L876:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L865
	j	.L876
.L862:
	br	%r14
.L875:
	ld	%f4,.L879-.L877(%r5)
	j	.L863
	.section	.rodata
	.align	8
.L877:
.L879:
	.long	1071644672
	.long	0
.L878:
	.long	1073741824
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE90:
	.size	ldexp, .-ldexp
	.align	8
	.align	16
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB91:
	.cfi_startproc
	larl	%r5,.L896
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L881
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L881
	cijl	%r4,0,.L894
	ld	%f0,.L897-.L896(%r5)
	ld	%f2,.L897-.L896+8(%r5)
.L882:
	tmll	%r4,1
	je	.L883
.L884:
	mxbr	%f4,%f0
.L883:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L881
	mxbr	%f0,%f0
	tmll	%r4,1
	jne	.L884
.L895:
	mxbr	%f0,%f0
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L884
	j	.L895
.L881:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L894:
	ld	%f0,.L898-.L896(%r5)
	ld	%f2,.L898-.L896+8(%r5)
	j	.L882
	.section	.rodata
	.align	8
.L896:
.L898:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L897:
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
	.align	16
.globl memxor
	.type	memxor, @function
memxor:
.LFB92:
	.cfi_startproc
	cgije	%r4,0,.L923
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L910
	cgije	%r5,1,.L914
	cgije	%r5,2,.L915
	lgr	%r12,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L915:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
.L914:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
	cgrje	%r0,%r3,.L900
.L910:
	srlg	%r4,%r4,2
.L901:
	xc	0(3,%r1),0(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L901
.L900:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L923:
	br	%r14
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	8
	.align	16
.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	lgr	%r1,%r2
	cli	0(%r2),0
	je	.L928
.L929:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L929
.L928:
	cgije	%r4,0,.L931
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L950
.L940:
	srlg	%r4,%r4,1
.L930:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L951
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L952
	la	%r1,2(%r1)
	brctg	%r4,.L930
.L931:
	mvi	0(%r1),0
.L933:
	br	%r14
.L950:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L933
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgijlh	%r0,0,.L940
	mvi	0(%r1),0
	br	%r14
.L951:
	br	%r14
.L952:
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strncat, .-strncat
	.align	8
	.align	16
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB94:
	.cfi_startproc
	lgr	%r1,%r2
	lghi	%r2,0
	cgije	%r3,0,.L954
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L966
	cgije	%r5,1,.L977
	cgije	%r5,2,.L978
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L978:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L977:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L954
.L966:
	srlg	%r0,%r4,2
.L955:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	aghik	%r4,%r2,1
	la	%r5,0(%r4,%r1)
	lgr	%r2,%r4
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	aghik	%r2,%r4,2
	la	%r5,2(%r4,%r1)
	cli	0(%r5),0
	ber	%r14
	aghik	%r2,%r4,3
	brctg	%r0,.L955
	br	%r14
.L954:
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
	.align	16
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L990
.L994:
	lgr	%r1,%r3
	j	.L989
.L988:
	crje	%r4,%r5,.L987
.L989:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L988
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L994
.L990:
	lghi	%r2,0
.L987:
	br	%r14
	.cfi_endproc
.LFE95:
	.size	strpbrk, .-strpbrk
	.align	8
	.align	16
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB96:
	.cfi_startproc
	lgr	%r1,%r2
	lghi	%r2,0
.L998:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L998
	br	%r14
	.cfi_endproc
.LFE96:
	.size	strrchr, .-strrchr
	.align	8
	.align	16
.globl strstr
	.type	strstr, @function
strstr:
.LFB97:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f4,%r10
	.cfi_register 10, 18
	llc	%r11,0(%r3)
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cli	0(%r3),0
	je	.L1002
	lgr	%r10,%r3
.L1004:
	la	%r10,1(%r10)
	cli	0(%r10),0
	jne	.L1004
	slgr	%r10,%r3
	jhe	.L1002
	aghi	%r10,-1
	j	.L1010
.L1025:
	la	%r2,1(%r2)
	cije	%r1,0,.L1024
.L1010:
	llc	%r1,0(%r2)
	crjlh	%r1,%r11,.L1025
	lgr	%r5,%r3
	lgr	%r4,%r2
	aghik	%r0,%r10,1
.L1006:
	llc	%r12,0(%r5)
	la	%r4,1(%r4)
	cije	%r12,0,.L1007
	brctg	%r0,.L1020
.L1007:
	llc	%r12,0(%r5)
	crje	%r12,%r1,.L1002
	la	%r2,1(%r2)
	j	.L1010
.L1020:
	crjlh	%r12,%r1,.L1007
	llc	%r1,0(%r4)
	la	%r5,1(%r5)
	cli	0(%r4),0
	jne	.L1006
	j	.L1007
.L1024:
	lghi	%r2,0
.L1002:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
	.align	16
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	lzdr	%f4
	kdbr	%f0,%f4
	jl	.L1037
	jnh	.L1031
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1030
.L1031:
	br	%r14
.L1037:
	kdbr	%f2,%f4
	jnh	.L1031
.L1030:
	lcdbr	%f0,%f0
	br	%r14
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	8
	.align	16
.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lgr	%r12,%r2
	cgije	%r5,0,.L1039
	clgrjl	%r3,%r5,.L1047
	sgrk	%r0,%r3,%r5
	algr	%r0,%r2
	jnle	.L1047
	llc	%r11,0(%r4)
	j	.L1044
.L1041:
	clgrjl	%r0,%r12,.L1047
.L1044:
	ic	%r1,0(%r12)
	lgr	%r2,%r12
	llcr	%r3,%r1
	la	%r12,1(%r12)
	crjlh	%r3,%r11,.L1041
	cgije	%r5,1,.L1039
	lghi	%r1,1
	sgrk	%r9,%r5,%r1
	tmll	%r9,1
	je	.L1051
	clc	1(1,%r4),1(%r2)
	jne	.L1041
	lghi	%r1,2
	cgije	%r5,2,.L1039
.L1051:
	srlg	%r3,%r9,1
.L1042:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1041
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1041
	aghi	%r1,2
	brctg	%r3,.L1042
.L1039:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
.L1047:
	.cfi_restore_state
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	8
	.align	16
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
	lgr	%r11,%r2
	lgr	%r12,%r4
	cgije	%r4,0,.L1061
	brasl	%r14,memmove@PLT
.L1061:
	agrk	%r2,%r11,%r12
	lmg	%r11,%r15,248(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	8
	.align	16
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	larl	%r5,.L1093
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1090
	kdb	%f0,.L1094-.L1093(%r5)
	jnhe	.L1091
	lhi	%r3,0
.L1070:
	lhi	%r1,0
.L1076:
	ahi	%r1,1
	mdb	%f0,.L1095-.L1093(%r5)
	kdb	%f0,.L1094-.L1093(%r5)
	jhe	.L1076
	st	%r1,0(%r2)
	cije	%r3,0,.L1067
.L1072:
	lcdbr	%f0,%f0
.L1067:
	br	%r14
.L1091:
	kdb	%f0,.L1095-.L1093(%r5)
	jnl	.L1073
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1082
.L1073:
	mvhi	0(%r2),0
	br	%r14
.L1090:
	lcdbr	%f6,%f0
	kdb	%f0,.L1096-.L1093(%r5)
	jnle	.L1092
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1070
.L1092:
	kdb	%f0,.L1097-.L1093(%r5)
	jh	.L1080
	ldr	%f0,%f6
	mvhi	0(%r2),0
	lcdbr	%f0,%f0
	br	%r14
.L1080:
	lhi	%r3,1
.L1071:
	ldr	%f0,%f6
	lhi	%r1,0
.L1078:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1095-.L1093(%r5)
	jl	.L1078
	st	%r1,0(%r2)
	cijlh	%r3,0,.L1072
	br	%r14
.L1082:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1071
	.section	.rodata
	.align	8
.L1093:
.L1097:
	.long	-1075838976
	.long	0
.L1096:
	.long	-1074790400
	.long	0
.L1095:
	.long	1071644672
	.long	0
.L1094:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE101:
	.size	frexp, .-frexp
	.align	8
	.align	16
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB102:
	.cfi_startproc
	lgr	%r4,%r2
	lghi	%r2,0
	cgije	%r4,0,.L1101
.L1100:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1100
	br	%r14
.L1101:
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__muldi3, .-__muldi3
	.align	8
	.align	16
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB103:
	.cfi_startproc
	clrjhe	%r3,%r2,.L1131
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L1105:
	cijl	%r3,0,.L1106
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1122
	cijl	%r3,0,.L1106
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1122
	ahi	%r5,-2
	brct	%r12,.L1105
.L1108:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1122:
	.cfi_restore_state
	lhi	%r5,0
	cije	%r1,0,.L1108
.L1106:
	lhi	%r5,0
.L1111:
	clrjl	%r2,%r3,.L1110
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1110:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1111
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1131:
	lhi	%r1,1
	lhi	%r5,0
.L1126:
	clrjl	%r2,%r3,.L1128
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1128:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1126
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
	.align	16
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	sllg	%r4,%r2,8
	lhi	%r1,7
	flogr	%r4,%r4
	ahi	%r4,-33
	ltgr	%r2,%r2
	locre	%r4,%r1
	lgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
	.align	16
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	srag	%r1,%r2,63
	xgrk	%r4,%r2,%r1
	lhi	%r0,63
	flogr	%r4,%r4
	ahi	%r4,-1
	cgr	%r2,%r1
	locre	%r4,%r0
	lgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
	.align	16
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	lhi	%r4,0
	cgije	%r2,0,.L1142
.L1143:
	risbg	%r1,%r2,63,128+63,0
	srlg	%r2,%r2,1
	lcr	%r0,%r1
	nr	%r0,%r3
	risbgn	%r3,%r3,32,128+62,1
	ar	%r4,%r0
	cgijlh	%r2,0,.L1143
.L1142:
	llgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	8
	.align	16
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlk	%r1,%r4,3
	risbg	%r12,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L1148
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1213
.L1148:
	cije	%r1,0,.L1151
	risbgn	%r0,%r1,32,128+60,3
	aghik	%r11,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r11,3
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1176
	cgije	%r11,1,.L1192
	cgije	%r11,2,.L1193
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L1193:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L1192:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r0,%r1,.L1151
.L1176:
	srlg	%r5,%r5,2
.L1152:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1152
.L1151:
	clrjhe	%r12,%r4,.L1147
	llgfr	%r12,%r12
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	lghi	%r5,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r5
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjhe	%r1,%r4,.L1147
	cije	%r0,0,.L1167
	cije	%r0,1,.L1195
	cijlh	%r0,2,.L1214
.L1196:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1195:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1147
.L1167:
	srlk	%r4,%r11,2
.L1153:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1153
.L1147:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1213:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1147
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1185
	cgije	%r12,1,.L1190
	cgije	%r12,2,.L1191
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1191:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1190:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1147
.L1185:
	srlg	%r4,%r4,2
.L1154:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1154
	j	.L1147
.L1214:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1196
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
	.align	16
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	srlk	%r1,%r4,1
	clgrjl	%r2,%r3,.L1217
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1271
.L1217:
	cije	%r1,0,.L1267
	risbgn	%r0,%r1,32,128+62,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-2
	lghi	%r1,0
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1235
	cgije	%r12,1,.L1251
	cgije	%r12,2,.L1252
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L1252:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1251:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L1220
.L1235:
	srlg	%r5,%r5,2
.L1221:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1221
.L1220:
	tmll	%r4,1
	je	.L1216
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1216:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1271:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1266
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1244
	cgije	%r5,1,.L1249
	cgije	%r5,2,.L1250
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1250:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1249:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1266
.L1244:
	srlg	%r4,%r4,2
.L1222:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	stcy	%r0,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1222
	br	%r14
.L1267:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1266:
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
	.align	16
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlk	%r1,%r4,2
	risbg	%r12,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L1274
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1339
.L1274:
	cije	%r1,0,.L1277
	risbgn	%r0,%r1,32,128+61,2
	aghik	%r11,%r0,-4
	lghi	%r1,0
	srlg	%r5,%r11,2
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1302
	cgije	%r11,1,.L1318
	cgije	%r11,2,.L1319
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lghi	%r1,4
.L1319:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
.L1318:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r0,%r1,.L1277
.L1302:
	srlg	%r5,%r5,2
.L1278:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L1278
.L1277:
	clrjhe	%r12,%r4,.L1273
	llgfr	%r12,%r12
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	lghi	%r5,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r5
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjhe	%r1,%r4,.L1273
	cije	%r0,0,.L1293
	cije	%r0,1,.L1321
	cijlh	%r0,2,.L1340
.L1322:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1321:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1273
.L1293:
	srlk	%r4,%r11,2
.L1279:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1279
.L1273:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1339:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1273
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1311
	cgije	%r12,1,.L1316
	cgije	%r12,2,.L1317
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1317:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1316:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1273
.L1311:
	srlg	%r4,%r4,2
.L1280:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1280
	j	.L1273
.L1340:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1322
	.cfi_endproc
.LFE109:
	.size	__cmovw, .-__cmovw
	.align	8
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB116:
	.cfi_startproc
	lhi	%r1,0
	lhi	%r4,15
	lhi	%r0,4
.L1356:
	srk	%r3,%r4,%r1
	srak	%r5,%r2,0(%r3)
	tmll	%r5,1
	jne	.L1355
	ahik	%r5,%r1,1
	srk	%r3,%r4,%r5
	lr	%r1,%r5
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1355
	ahi	%r1,1
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1355
	ahik	%r1,%r5,2
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1355
	ahik	%r1,%r5,3
	brct	%r0,.L1356
.L1355:
	lgfr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	8
	.align	16
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	lhi	%r1,0
	lhi	%r4,4
.L1366:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1365
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1365
	ahi	%r1,1
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1365
	ahik	%r1,%r0,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1365
	ahik	%r1,%r0,3
	brct	%r4,.L1366
.L1365:
	lgfr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
	.align	16
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L1382
	keb	%f0,.L1383-.L1382(%r5)
	jhe	.L1381
	cgebr	%r2,5,%f0
	br	%r14
.L1381:
	seb	%f0,.L1383-.L1382(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1382:
.L1383:
	.long	1191182336
	.align	2
.text
	.cfi_endproc
.LFE118:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
	.align	16
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB119:
	.cfi_startproc
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r0,4
.L1385:
	srak	%r5,%r2,0(%r3)
	srak	%r4,%r2,1(%r3)
	nilf	%r5,1
	nilf	%r4,1
	ar	%r1,%r5
	srak	%r5,%r2,2(%r3)
	ar	%r1,%r4
	nilf	%r5,1
	srak	%r4,%r2,3(%r3)
	ar	%r1,%r5
	nilf	%r4,1
	ahi	%r3,4
	ar	%r1,%r4
	brct	%r0,.L1385
	risbg	%r2,%r1,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__parityhi2, .-__parityhi2
	.align	8
	.align	16
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r0,4
.L1393:
	srak	%r5,%r2,0(%r3)
	srak	%r4,%r2,1(%r3)
	nilf	%r5,1
	nilf	%r4,1
	ar	%r1,%r5
	srak	%r5,%r2,2(%r3)
	ar	%r1,%r4
	nilf	%r5,1
	srak	%r4,%r2,3(%r3)
	ar	%r1,%r5
	nilf	%r4,1
	ahi	%r3,4
	ar	%r1,%r4
	brct	%r0,.L1393
	lgfr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
	.align	16
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	lhi	%r4,0
	cgije	%r2,0,.L1401
.L1402:
	risbg	%r1,%r2,63,128+63,0
	srl	%r2,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r4,%r0
	cijlh	%r2,0,.L1402
.L1401:
	llgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
	.align	16
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	lhi	%r4,0
	cgijlh	%r2,0,.L1412
	j	.L1407
.L1408:
	risbg	%r1,%r3,63,128+63,0
	srlg	%r3,%r3,1
	lcr	%r0,%r1
	nr	%r0,%r2
	risbgn	%r2,%r2,32,128+62,1
	ar	%r4,%r0
.L1412:
	cgijlh	%r3,0,.L1408
.L1407:
	llgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
	.align	16
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	clrjhe	%r3,%r2,.L1441
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L1415:
	cijl	%r3,0,.L1416
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1432
	cijl	%r3,0,.L1416
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1432
	ahi	%r5,-2
	brct	%r12,.L1415
.L1418:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1432:
	.cfi_restore_state
	lhi	%r5,0
	cije	%r1,0,.L1418
.L1416:
	lhi	%r5,0
.L1421:
	clrjl	%r2,%r3,.L1420
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1420:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1421
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1441:
	lhi	%r1,1
	lhi	%r5,0
.L1436:
	clrjl	%r2,%r3,.L1438
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1438:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1436
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
	.align	16
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB124:
	.cfi_startproc
	kebr	%f0,%f2
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	lhi	%r0,-1
	locrl	%r2,%r0
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
	.align	16
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB125:
	.cfi_startproc
	kdbr	%f0,%f2
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	lhi	%r0,-1
	locrl	%r2,%r0
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
	.align	16
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
	.align	16
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
	.align	16
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB128:
	.cfi_startproc
	cijl	%r3,0,.L1470
	cgije	%r3,0,.L1463
	lhi	%r0,0
.L1459:
	lhi	%r5,32
	lhi	%r4,0
	j	.L1462
.L1471:
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1461
.L1462:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	srag	%r3,%r3,1
	lgfr	%r2,%r2
	jne	.L1471
.L1461:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
.L1460:
	lgfr	%r2,%r2
	br	%r14
.L1470:
	lcr	%r3,%r3
	lhi	%r0,1
	lgfr	%r3,%r3
	j	.L1459
.L1463:
	lhi	%r2,0
	j	.L1460
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
	.align	16
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	cgijl	%r2,0,.L1496
	lhi	%r0,0
.L1474:
	cgijhe	%r3,0,.L1475
	lcgr	%r3,%r3
	xilf	%r0,1
.L1475:
	lr	%r4,%r2
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1497
	lhi	%r2,32
	lhi	%r3,1
	lhi	%r5,16
.L1476:
	cijl	%r1,0,.L1477
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1478
	cijl	%r1,0,.L1477
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1478
	ahi	%r2,-2
	brct	%r5,.L1476
.L1479:
	llgfr	%r2,%r2
	lcgr	%r3,%r2
	ltr	%r0,%r0
	locgrne	%r2,%r3
	br	%r14
.L1478:
	cije	%r3,0,.L1486
.L1477:
	lhi	%r2,0
.L1482:
	clrjl	%r4,%r1,.L1481
	sr	%r4,%r1
	or	%r2,%r3
.L1481:
	srl	%r3,1
	srl	%r1,1
	cijlh	%r3,0,.L1482
	llgfr	%r2,%r2
	lcgr	%r3,%r2
	ltr	%r0,%r0
	locgrne	%r2,%r3
	br	%r14
.L1496:
	lcgr	%r2,%r2
	lhi	%r0,1
	j	.L1474
.L1497:
	lhi	%r3,1
	j	.L1477
.L1486:
	lhi	%r2,0
	j	.L1479
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
	.align	16
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	cgijl	%r2,0,.L1524
	lhi	%r5,0
.L1500:
	lpgr	%r3,%r3
	lr	%r1,%r3
	lr	%r4,%r2
	clrjle	%r2,%r3,.L1525
	lhi	%r0,1
	lhi	%r2,16
.L1501:
	cijl	%r1,0,.L1507
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1523
	cijl	%r1,0,.L1507
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1523
	brct	%r2,.L1501
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L1525:
	lhi	%r0,1
.L1507:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L1523:
	cijlh	%r0,0,.L1507
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L1524:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1500
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	8
	.align	16
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	lhi	%r1,1
	lhi	%r0,8
	clrjhe	%r3,%r2,.L1529
.L1528:
	tmll	%r3,32768
	jne	.L1529
	sllk	%r5,%r1,1
	risbgn	%r3,%r3,48,128+62,1
	lr	%r1,%r5
	clrjle	%r2,%r3,.L1544
	tmll	%r3,32768
	jne	.L1529
	sllk	%r5,%r1,1
	risbgn	%r3,%r3,48,128+62,1
	lr	%r1,%r5
	clrjle	%r2,%r3,.L1544
	brct	%r0,.L1528
	lhi	%r5,0
.L1531:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llghr	%r2,%r2
	br	%r14
.L1544:
	tml	%r5,65534
	je	.L1531
.L1529:
	lhi	%r5,0
.L1534:
	clrjl	%r2,%r3,.L1533
	sr	%r2,%r3
	or	%r5,%r1
	llghr	%r2,%r2
.L1533:
	risbgn	%r0,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
	lr	%r1,%r0
	cijlh	%r0,0,.L1534
	ltgr	%r4,%r4
	locre	%r2,%r5
	llghr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
	.align	16
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	lghi	%r1,1
	lhi	%r0,32
	clgrjhe	%r3,%r2,.L1550
.L1549:
	risbg	%r5,%r3,32,128+32,0
	jne	.L1550
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1566
	risbg	%r5,%r3,32,128+32,0
	jne	.L1550
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1566
	brct	%r0,.L1549
.L1552:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L1566:
	cgije	%r1,0,.L1552
.L1550:
	lghi	%r5,0
.L1555:
	clgrjl	%r2,%r3,.L1554
	sgr	%r2,%r3
	ogr	%r5,%r1
.L1554:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L1555
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
	.align	16
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB133:
	.cfi_startproc
	tmll	%r3,32
	je	.L1570
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L1571:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L1569:
	br	%r14
.L1570:
	cgije	%r3,0,.L1569
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L1571
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
	.align	16
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	lg	%r1,0(%r3)
	lg	%r0,8(%r3)
	tmll	%r4,64
	je	.L1576
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L1577:
	lgr	%r0,%r4
.L1578:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L1576:
	cgije	%r4,0,.L1578
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L1577
	.cfi_endproc
.LFE134:
	.size	__ashlti3, .-__ashlti3
	.align	8
	.align	16
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	tmll	%r3,32
	je	.L1584
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L1585:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1583:
	br	%r14
.L1584:
	cgije	%r3,0,.L1583
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L1585
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
	.align	16
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L1590
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L1591:
	lgr	%r0,%r4
.L1592:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1590:
	cgije	%r4,0,.L1592
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L1591
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	8
	.align	16
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	lrvgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
	.align	16
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB138:
	.cfi_startproc
	lrvr	%r2,%r2
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE138:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
	.align	16
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	clfi	%r2,65535
	lhi	%r3,0
	lhi	%r1,16
	slbr	%r3,%r3
	lhi	%r4,8
	lhi	%r0,4
	lcr	%r3,%r3
	sll	%r3,4
	sr	%r1,%r3
	srlk	%r1,%r2,0(%r1)
	risbg	%r2,%r1,48,128+55,0
	ahi	%r2,-1
	risbgn	%r5,%r2,60,128+60,64-28
	sr	%r4,%r5
	ar	%r3,%r5
	srl	%r1,0(%r4)
	risbg	%r4,%r1,56,128+59,0
	ahi	%r4,-1
	risbgn	%r5,%r4,61,128+61,64-29
	ark	%r4,%r5,%r3
	srk	%r3,%r0,%r5
	lhi	%r2,2
	srl	%r1,0(%r3)
	risbg	%r0,%r1,60,128+61,0
	ahi	%r0,-1
	risbgn	%r3,%r0,62,128+62,64-30
	srk	%r5,%r2,%r3
	srl	%r1,0(%r5)
	sr	%r2,%r1
	tmll	%r1,2
	lhi	%r1,0
	locrne	%r2,%r1
	ar	%r3,%r4
	ar	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__clzsi2, .-__clzsi2
	.align	8
	.align	16
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	lg	%r3,0(%r2)
	lghi	%r0,0
	lpgr	%r1,%r3
	aghi	%r1,-1
	srlg	%r1,%r1,63
	lay	%r4,-1(%r1)
	ngr	%r4,%r3
	ltgr	%r3,%r3
	locge	%r0,8(%r2)
	ogr	%r4,%r0
	flogr	%r4,%r4
	sllk	%r5,%r1,6
	ar	%r5,%r4
	lgfr	%r2,%r5
	br	%r14
	.cfi_endproc
.LFE140:
	.size	__clzti2, .-__clzti2
	.align	8
	.align	16
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB141:
	.cfi_startproc
	srag	%r4,%r2,32
	srag	%r1,%r3,32
	cr	%r4,%r1
	jl	.L1607
	jh	.L1608
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1607:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1608:
	lhi	%r2,2
	risbg	%r2,%r2,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
	.align	16
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	srag	%r4,%r2,32
	srag	%r1,%r3,32
	cr	%r4,%r1
	jl	.L1614
	jh	.L1615
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1614:
	lhi	%r2,0
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1615:
	lhi	%r2,2
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
	.align	16
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
.LFB143:
	.cfi_startproc
	lg	%r4,8(%r2)
	lg	%r2,0(%r2)
	lg	%r1,8(%r3)
	cg	%r2,0(%r3)
	jl	.L1621
	jh	.L1622
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r5,1
	locrh	%r5,%r0
	lhi	%r3,0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1621:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1622:
	lhi	%r5,2
	risbg	%r2,%r5,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
	.align	16
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB144:
	.cfi_startproc
	llhr	%r3,%r2
	ahi	%r3,-1
	risbgn	%r5,%r3,59,128+59,64-27
	srlk	%r1,%r2,0(%r5)
	llcr	%r2,%r1
	ahi	%r2,-1
	risbgn	%r3,%r2,60,128+60,64-28
	srl	%r1,0(%r3)
	risbg	%r0,%r1,60,128+63,0
	ahi	%r0,-1
	risbgn	%r2,%r0,61,128+61,64-29
	ar	%r5,%r3
	srl	%r1,0(%r2)
	ar	%r5,%r2
	risbg	%r3,%r1,62,128+63,0
	ahi	%r3,-1
	risbgn	%r2,%r3,62,128+62,64-30
	lhi	%r4,2
	srl	%r1,0(%r2)
	ar	%r5,%r2
	risbg	%r0,%r1,63,128+63,0
	risbgn	%r1,%r1,64-1,128+63,62+1
	xilf	%r0,1
	sr	%r4,%r1
	lcr	%r3,%r0
	nr	%r3,%r4
	ar	%r3,%r5
	lgfr	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
	.align	16
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	lg	%r5,8(%r2)
	lghi	%r4,0
	lpgr	%r1,%r5
	aghi	%r1,-1
	ltgr	%r5,%r5
	locge	%r4,0(%r2)
	srlg	%r2,%r1,63
	lay	%r0,-1(%r2)
	ngr	%r0,%r5
	ogr	%r4,%r0
	lcgr	%r5,%r4
	ngr	%r4,%r5
	flogr	%r4,%r4
	lghi	%r3,63
	sll	%r2,6
	sgr	%r3,%r4
	ar	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	8
	.align	16
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	lg	%r1,0(%r2)
	ltg	%r4,8(%r2)
	jne	.L1631
	lcgr	%r3,%r1
	ngr	%r3,%r1
	lghi	%r2,63
	flogr	%r4,%r3
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
	lgfr	%r2,%r2
	br	%r14
.L1631:
	lcgr	%r0,%r4
	ngr	%r4,%r0
	lghi	%r2,63
	flogr	%r4,%r4
	sgr	%r2,%r4
	ahi	%r2,1
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE146:
	.size	__ffsti2, .-__ffsti2
	.align	8
	.align	16
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB147:
	.cfi_startproc
	tmll	%r3,32
	je	.L1636
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
.L1637:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1635:
	br	%r14
.L1636:
	cgije	%r3,0,.L1635
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	j	.L1637
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
	.align	16
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L1642
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L1643:
	lgr	%r0,%r4
.L1644:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1642:
	cgije	%r4,0,.L1644
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L1643
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
	.align	16
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	risbg	%r4,%r2,48,128+63,0
	risbg	%r1,%r3,48,128+63,0
	lr	%r5,%r4
	msr	%r5,%r1
	srl	%r3,16
	srl	%r2,16
	msr	%r4,%r3
	msr	%r1,%r2
	msr	%r2,%r3
	srlk	%r3,%r5,16
	lghi	%r0,0
	llhr	%r5,%r5
	ar	%r1,%r3
	llhr	%r3,%r1
	srl	%r1,16
	ar	%r3,%r4
	ar	%r1,%r2
	srlk	%r2,%r3,16
	sll	%r3,16
	ar	%r1,%r2
	ar	%r5,%r3
	lr	%r0,%r5
	risbgn	%r0,%r1,0,0+32-1,64-0-32
	lgr	%r2,%r0
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__muldsi3, .-__muldsi3
	.align	8
	.align	16
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB150:
	.cfi_startproc
	risbg	%r4,%r2,48,128+63,0
	risbg	%r1,%r3,48,128+63,0
	lr	%r5,%r4
	msr	%r5,%r1
	srlk	%r0,%r3,16
	ldgr	%f0,%r12
	.cfi_register 12, 16
	msr	%r4,%r0
	srlk	%r12,%r2,16
	msr	%r1,%r12
	msr	%r12,%r0
	srag	%r0,%r3,32
	msr	%r0,%r2
	srag	%r2,%r2,32
	msr	%r3,%r2
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlk	%r11,%r5,16
	ar	%r1,%r11
	llhr	%r11,%r1
	srl	%r1,16
	ar	%r4,%r11
	ar	%r1,%r12
	sllk	%r12,%r4,16
	srl	%r4,16
	llhr	%r5,%r5
	ar	%r1,%r4
	ar	%r5,%r12
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lr	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srag	%r4,%r2,32
	ar	%r4,%r0
	ar	%r3,%r4
	risbgn	%r2,%r3,0,64-32-1,32
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
	.align	16
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	risbg	%r1,%r3,32,128+63,0
	risbg	%r5,%r4,32,128+63,0
	srlg	%r3,%r3,32
	lgr	%r0,%r1
	msgr	%r0,%r5
	msgr	%r5,%r3
	srlg	%r4,%r4,32
	msgr	%r3,%r4
	msgr	%r1,%r4
	srlg	%r4,%r0,32
	agr	%r4,%r5
	srlg	%r5,%r4,32
	agr	%r5,%r3
	algfr	%r1,%r4
	srlg	%r3,%r1,32
	sllg	%r1,%r1,32
	agrk	%r4,%r5,%r3
	algfr	%r1,%r0
	stg	%r4,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	8
	.align	16
.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	stmg	%r8,%r15,64(%r15)
	lgr	%r5,%r3
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lg	%r10,8(%r3)
	lg	%r12,8(%r4)
	lg	%r8,0(%r5)
	lgr	%r1,%r4
	lg	%r9,0(%r1)
	lgr	%r3,%r10
	lgr	%r4,%r12
	msgr	%r10,%r9
	msgr	%r12,%r8
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	lgr	%r11,%r2
	la	%r2,160(%r15)
	brasl	%r14,__mulddi3@PLT
	lg	%r0,168(%r15)
	lgr	%r2,%r11
	stg	%r0,8(%r11)
	agr	%r12,%r10
	ag	%r12,160(%r15)
	stg	%r12,0(%r11)
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
	.align	16
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
	.align	16
.globl __negti2
	.type	__negti2, @function
__negti2:
.LFB154:
	.cfi_startproc
	lghi	%r4,0
	lghi	%r5,0
	slg	%r5,8(%r3)
	slbg	%r4,0(%r3)
	stg	%r5,8(%r2)
	stg	%r4,0(%r2)
	br	%r14
	.cfi_endproc
.LFE154:
	.size	__negti2, .-__negti2
	.align	8
	.align	16
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB155:
	.cfi_startproc
	lhi	%r3,27030
	lr	%r1,%r2
	rxsbg	%r1,%r2,32,63,32
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	srak	%r2,%r3,0(%r1)
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE155:
	.size	__paritydi2, .-__paritydi2
	.align	8
	.align	16
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	lg	%r1,8(%r2)
	lhi	%r3,27030
	xg	%r1,0(%r2)
	lr	%r4,%r1
	rxsbg	%r4,%r1,32,63,32
	rxsbg	%r4,%r4,48,63,48
	rxsbg	%r4,%r4,40,63,56
	rxsbg	%r4,%r4,36,63,60
	nilf	%r4,15
	srak	%r0,%r3,0(%r4)
	risbg	%r2,%r0,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE156:
	.size	__parityti2, .-__parityti2
	.align	8
	.align	16
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB157:
	.cfi_startproc
	lhi	%r1,27030
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	srak	%r2,%r1,0(%r2)
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.cfi_endproc
.LFE157:
	.size	__paritysi2, .-__paritysi2
	.align	8
	.align	16
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	larl	%r5,.L1672
	srlg	%r1,%r2,1
	ng	%r1,.L1673-.L1672(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L1674-.L1672(%r5)
	ng	%r0,.L1674-.L1672(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1675-.L1672(%r5)
	srlg	%r2,%r3,32
	ar	%r2,%r3
	srlk	%r4,%r2,16
	ar	%r4,%r2
	srlk	%r1,%r4,8
	ar	%r1,%r4
	risbg	%r2,%r1,57,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1672:
.L1675:
	.quad	1085102592571150095
.L1674:
	.quad	3689348814741910323
.L1673:
	.quad	6148914691236517205
	.align	2
.text
	.cfi_endproc
.LFE158:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
	.align	16
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB159:
	.cfi_startproc
	srlk	%r1,%r2,1
	nilf	%r1,1431655765
	sr	%r2,%r1
	srlk	%r0,%r2,2
	nilf	%r2,858993459
	nilf	%r0,858993459
	ar	%r2,%r0
	srlk	%r3,%r2,4
	ar	%r3,%r2
	nilf	%r3,252645135
	srlk	%r2,%r3,16
	ar	%r3,%r2
	srlk	%r4,%r3,8
	ar	%r4,%r3
	risbg	%r2,%r4,58,128+63,0
	br	%r14
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
	.align	16
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lg	%r10,0(%r2)
	lg	%r11,8(%r2)
	srlg	%r5,%r10,1
	llihf	%r12,1431655765
	oilf	%r12,1431655765
	ngrk	%r0,%r5,%r12
	srlg	%r4,%r11,1
	ngrk	%r1,%r4,%r12
	slgr	%r11,%r1
	slbgr	%r10,%r0
	llihf	%r2,858993459
	llihf	%r12,858993459
	oilf	%r2,858993459
	oilf	%r12,858993459
	ngrk	%r0,%r10,%r2
	srlg	%r3,%r10,2
	ngrk	%r4,%r3,%r2
	ngrk	%r1,%r11,%r12
	srlg	%r5,%r11,2
	ngrk	%r10,%r5,%r12
	algr	%r10,%r1
	srlg	%r11,%r10,4
	alcgr	%r4,%r0
	llihf	%r2,252645135
	rosbg	%r11,%r4,0,3,60
	srlg	%r3,%r4,4
	algr	%r11,%r10
	alcgr	%r3,%r4
	oilf	%r2,252645135
	llihf	%r4,252645135
	oilf	%r4,252645135
	ngrk	%r5,%r11,%r4
	ngrk	%r0,%r3,%r2
	agr	%r0,%r5
	srlg	%r12,%r0,32
	ar	%r12,%r0
	srlk	%r1,%r12,16
	ar	%r1,%r12
	srlk	%r10,%r1,8
	ar	%r10,%r1
	lgdr	%r12,%f2
	.cfi_restore 12
	llgcr	%r2,%r10
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	br	%r14
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	8
	.align	16
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	larl	%r5,.L1691
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L1692-.L1691(%r5)
	tmll	%r2,1
	je	.L1682
.L1684:
	mdbr	%f0,%f2
.L1682:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L1683
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L1684
.L1689:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L1684
	j	.L1689
.L1683:
	cijl	%r2,0,.L1690
	br	%r14
.L1690:
	ld	%f4,.L1692-.L1691(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1691:
.L1692:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE161:
	.size	__powidf2, .-__powidf2
	.align	8
	.align	16
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB162:
	.cfi_startproc
	larl	%r5,.L1703
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L1704-.L1703(%r5)
	tmll	%r2,1
	je	.L1694
.L1696:
	meebr	%f0,%f2
.L1694:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L1695
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L1696
.L1701:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L1696
	j	.L1701
.L1695:
	cijl	%r2,0,.L1702
	br	%r14
.L1702:
	le	%f4,.L1704-.L1703(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1703:
.L1704:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE162:
	.size	__powisf2, .-__powisf2
	.align	8
	.align	16
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB163:
	.cfi_startproc
	risbgn	%r4,%r2,64-32,128+63,0+32
	risbgn	%r1,%r3,64-32,128+63,0+32
	clr	%r4,%r1
	jl	.L1707
	jh	.L1708
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1707:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1708:
	lhi	%r2,2
	risbg	%r2,%r2,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
	.align	16
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	risbgn	%r4,%r2,64-32,128+63,0+32
	risbgn	%r1,%r3,64-32,128+63,0+32
	clr	%r4,%r1
	jl	.L1714
	jh	.L1715
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1714:
	lhi	%r2,0
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1715:
	lhi	%r2,2
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE164:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align	8
	.align	16
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	clc	0(8,%r2),0(%r3)
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	jl	.L1721
	jh	.L1722
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1721:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1722:
	lhi	%r2,2
	risbg	%r2,%r2,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE165:
	.size	__ucmpti2, .-__ucmpti2
.bss
	.align	8
	.set	.LANCHOR0,. + 0
	.type	s.0, @object
	.size	s.0, 7
s.0:
	.zero	7
	.zero	1
	.type	seed, @object
	.size	seed, 8
seed:
	.zero	8
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
