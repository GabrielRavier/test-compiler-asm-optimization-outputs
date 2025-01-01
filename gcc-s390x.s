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
	nilf	%r3,255
	lgr	%r1,%r2
	cgije	%r4,1,.L143
	aghi	%r4,-2
	srlg	%r5,%r4,8
	cgijlh	%r5,0,.L142
.L145:
	stc	%r3,0(%r1)
	exrl	%r4,.L154
.L141:
	br	%r14
.L142:
	pfd	2,1024(%r1)
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brctg	%r5,.L142
	j	.L145
.L143:
	stc	%r3,0(%r2)
	br	%r14
.L154:
	mvc	1(1,%r1),0(%r1)
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
	cgije	%r1,0,.L157
.L158:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L158
.L157:
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
	jne	.L165
	br	%r14
.L167:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L165:
	crjlh	%r1,%r3,.L167
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
.L175:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L174
	la	%r2,1(%r2)
	cijlh	%r1,0,.L175
	lghi	%r2,0
.L174:
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
	crje	%r0,%r5,.L179
	j	.L180
.L181:
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	llcr	%r0,%r1
	crjlh	%r0,%r5,.L180
.L179:
	cijlh	%r0,0,.L181
.L180:
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
	cli	0(%r2),0
	je	.L189
	lgr	%r1,%r2
.L188:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L188
	sgrk	%r2,%r1,%r2
	br	%r14
.L189:
	lghi	%r2,0
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
	cgije	%r4,0,.L200
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L202
.L196:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L195
	la	%r0,1(%r3)
	brctg	%r4,.L198
.L195:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L198:
	crjlh	%r5,%r1,.L195
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L203
	lgr	%r3,%r0
	j	.L196
.L200:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L203:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L195
.L202:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L195
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
	cgijle	%r4,1,.L205
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L214
	cgije	%r4,1,.L218
	cgije	%r4,2,.L219
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L219:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L218:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L205
.L214:
	srlg	%r1,%r0,2
.L207:
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
	brctg	%r1,.L207
.L205:
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
	cije	%r2,32,.L248
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L248:
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
	clijle	%r2,31,.L256
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L257
.L256:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L257:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L256
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
	clijle	%r2,254,.L268
	lhi	%r1,8231
	clrjle	%r2,%r1,.L266
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L266
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L266
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
.L266:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L268:
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
	clijle	%r1,9,.L272
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L272:
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
	jo	.L280
	kdbr	%f0,%f2
	jnh	.L283
	sdbr	%f0,%f2
	br	%r14
.L283:
	lzdr	%f0
	br	%r14
.L280:
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
	jo	.L289
	kebr	%f0,%f2
	jnh	.L292
	sebr	%f0,%f2
	br	%r14
.L292:
	lzer	%f0
	br	%r14
.L289:
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
	jo	.L302
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L296
	cijlh	%r1,0,.L302
	br	%r14
.L296:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L302
	ldr	%f2,%f0
.L302:
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
	jo	.L312
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L306
	cijlh	%r1,0,.L312
	br	%r14
.L306:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L312
	ler	%f2,%f0
.L312:
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
	jo	.L321
	cxbr	%f4,%f4
	jo	.L326
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L328
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
	je	.L318
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L319:
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
.L328:
	cije	%r1,0,.L326
.L321:
	lxr	%f0,%f4
.L326:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L318:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L319
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
	jo	.L336
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L332
	cije	%r1,0,.L336
	br	%r14
.L332:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L336:
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
	jo	.L346
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L342
	cije	%r1,0,.L346
	br	%r14
.L342:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L346:
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
	jo	.L362
	cxbr	%f0,%f0
	jo	.L357
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L364
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
	je	.L354
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L355:
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
.L364:
	cije	%r1,0,.L362
.L357:
	lxr	%f0,%f4
.L362:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L354:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L355
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
	cije	%r2,0,.L369
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L368:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L368
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L369:
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
	cgije	%r3,0,.L383
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L383:
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
	je	.L386
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L386:
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
	je	.L396
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L415
.L406:
	srlg	%r10,%r10,1
.L398:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L395
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L395
	agrk	%r12,%r11,%r9
	brctg	%r10,.L398
.L396:
	lgr	%r12,%r9
	msgr	%r12,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L395
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L395:
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
.L415:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L395
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L406
	j	.L396
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
	je	.L418
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L434
.L425:
	srlg	%r7,%r11,1
.L420:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L417
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L417
	agr	%r12,%r10
	brctg	%r7,.L420
.L418:
	lghi	%r8,0
.L417:
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
.L434:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L417
	agr	%r12,%r10
	cgijlh	%r7,1,.L425
	lghi	%r8,0
	j	.L417
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
.L445:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L439
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L439
	cije	%r3,43,.L440
	cijlh	%r3,45,.L459
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L450
	lhi	%r12,1
.L443:
	lhi	%r4,0
.L447:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L447
	sr	%r5,%r1
	ltr	%r12,%r12
	locrne	%r5,%r4
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L439:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L445
.L459:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L443
.L450:
	lhi	%r5,0
.L460:
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L440:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L443
	lhi	%r5,0
	j	.L460
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L469:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L463
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L463
	cije	%r4,43,.L464
	cije	%r4,45,.L465
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L474
	lgr	%r3,%r2
	lhi	%r11,0
.L467:
	lghi	%r5,0
.L471:
	ahik	%r0,%r4,-48
	llc	%r4,1(%r3)
	sllg	%r1,%r5,2
	la	%r3,1(%r3)
	agr	%r1,%r5
	lgfr	%r2,%r0
	sllg	%r1,%r1,1
	ahik	%r12,%r4,-48
	lgr	%r5,%r1
	sgfr	%r5,%r0
	clijle	%r12,9,.L471
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L463:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L469
.L465:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L474
	lhi	%r11,1
	j	.L467
.L464:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L467
.L474:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
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
	cgije	%r4,0,.L487
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L490
.L497:
	jle	.L486
	aghi	%r12,-1
	agrk	%r8,%r11,%r9
	sgr	%r12,%r10
	cgije	%r12,0,.L487
.L490:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	lgr	%r2,%r7
	agr	%r11,%r8
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L497
	lgr	%r12,%r10
	cgijlh	%r12,0,.L490
.L487:
	lghi	%r11,0
.L486:
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
	cije	%r4,0,.L500
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lr	%r11,%r4
	j	.L503
.L507:
	ahi	%r11,-1
	agrk	%r8,%r12,%r9
	sra	%r11,1
	cije	%r11,0,.L500
.L503:
	srak	%r10,%r11,1
	lgr	%r12,%r9
	msgfr	%r12,%r10
	lg	%r4,320(%r15)
	lgr	%r2,%r7
	agr	%r12,%r8
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L499
	jh	.L507
	lr	%r11,%r10
	cijlh	%r11,0,.L503
.L500:
	lghi	%r12,0
.L499:
	lgr	%r2,%r12
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
	j	.L530
.L532:
	crje	%r1,%r3,.L531
	la	%r2,4(%r2)
.L530:
	lt	%r1,0(%r2)
	jne	.L532
	lghi	%r2,0
	br	%r14
.L531:
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
	crje	%r4,%r5,.L535
	j	.L536
.L546:
	cije	%r5,0,.L536
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L536
.L535:
	cijlh	%r4,0,.L546
.L536:
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
.L549:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L549
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
	je	.L555
	lgr	%r1,%r2
.L554:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L554
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L555:
	lghi	%r2,0
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
	cgije	%r4,0,.L565
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L581
.L568:
	srlg	%r0,%r1,1
.L559:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L561
	la	%r5,4(%r2)
	cije	%r1,0,.L561
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L561
	cije	%r4,0,.L561
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L559
.L565:
	lhi	%r3,0
.L582:
	lgfr	%r2,%r3
	br	%r14
.L561:
	l	%r2,0(%r2)
	lhi	%r0,1
	c	%r2,0(%r3)
	lhi	%r3,0
	locrh	%r3,%r0
	lhi	%r1,-1
	locrl	%r3,%r1
	lgfr	%r2,%r3
	br	%r14
.L581:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L561
	cije	%r4,0,.L561
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L568
	lhi	%r3,0
	j	.L582
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
	cgije	%r4,0,.L588
	aghik	%r1,%r4,-1
	tmll	%r4,1
	jne	.L604
.L591:
	srlg	%r4,%r4,1
.L585:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	brctg	%r4,.L585
.L588:
	lghi	%r2,0
	br	%r14
.L604:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgijlh	%r1,0,.L591
	j	.L588
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
	cgije	%r4,0,.L613
	aghik	%r1,%r4,-1
	tmll	%r4,1
	jne	.L628
.L616:
	srlg	%r4,%r4,1
.L607:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L625
	l	%r5,4(%r2)
	la	%r3,4(%r3)
	c	%r5,0(%r3)
	jne	.L625
	la	%r2,8(%r2)
	la	%r3,4(%r3)
	brctg	%r4,.L607
.L613:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L625:
	c	%r5,0(%r3)
	lhi	%r0,1
	lhi	%r2,0
	locrh	%r2,%r0
	lhi	%r3,-1
	locrl	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
.L628:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L625
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r1,0,.L616
	j	.L613
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
	cgije	%r4,0,.L631
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L631:
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
	cgrje	%r2,%r3,.L638
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjhe	%r0,%r5,.L682
	cgije	%r4,0,.L638
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L653
	cgije	%r5,1,.L669
	cgije	%r5,2,.L670
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L670:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L669:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L638
.L653:
	srlg	%r4,%r4,2
.L641:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L641
	br	%r14
.L682:
	lghi	%r5,0
	cgije	%r4,0,.L638
	risbg	%r0,%r4,62,128+63,0
	je	.L662
	cgije	%r0,1,.L667
	cgije	%r0,2,.L668
	l	%r1,0(%r3)
	lghi	%r5,4
	st	%r1,0(%r2)
	aghik	%r1,%r4,-2
.L668:
	l	%r0,0(%r5,%r3)
	aghi	%r1,-1
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
.L667:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
	cgije	%r1,0,.L638
.L662:
	srlg	%r4,%r4,2
.L640:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	aghi	%r5,16
	brctg	%r4,.L640
.L638:
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
	cgije	%r4,0,.L685
	lgr	%r1,%r2
	risbg	%r0,%r4,62,128+63,0
	je	.L695
	cgije	%r0,1,.L699
	cgije	%r0,2,.L700
	st	%r3,0(%r2)
	la	%r1,4(%r2)
	aghik	%r5,%r4,-2
.L700:
	st	%r3,0(%r1)
	aghi	%r5,-1
	la	%r1,4(%r1)
.L699:
	st	%r3,0(%r1)
	la	%r1,4(%r1)
	cgije	%r5,0,.L685
.L695:
	srlg	%r4,%r4,2
.L686:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	la	%r1,16(%r1)
	brctg	%r4,.L686
.L685:
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
	jhe	.L709
	cgije	%r4,0,.L708
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L724
	cgije	%r5,1,.L737
	cgijlh	%r5,2,.L754
.L738:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L737:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L724
	br	%r14
.L709:
	ber	%r14
	cgije	%r4,0,.L708
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L733
	cgije	%r0,1,.L739
	cgije	%r0,2,.L740
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L740:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L739:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L708
.L733:
	srlg	%r5,%r5,2
.L712:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L712
.L708:
	br	%r14
.L724:
	srlg	%r1,%r1,2
.L711:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L711
	br	%r14
.L754:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L738
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
.L785:
	ahik	%r3,%r1,1
	srlk	%r5,%r2,0(%r1)
	srlk	%r0,%r2,0(%r3)
	lr	%r1,%r3
	tmll	%r5,1
	jne	.L784
	ahi	%r1,1
	tmll	%r0,1
	srlk	%r5,%r2,0(%r1)
	jne	.L784
	ahik	%r1,%r3,2
	tmll	%r5,1
	srlk	%r0,%r2,0(%r1)
	jne	.L784
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L784
	brct	%r4,.L785
	lhi	%r1,0
.L784:
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
	cgije	%r2,0,.L800
	risbg	%r3,%r2,63,128+63,0
	jne	.L798
	lhi	%r3,1
.L799:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L799
.L798:
	lgfr	%r2,%r3
	br	%r14
.L800:
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
	larl	%r5,.L809
	keb	%f0,.L810-.L809(%r5)
	jl	.L807
	keb	%f0,.L811-.L809(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L807:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L809:
.L811:
	.long	2139095039
.L810:
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
	larl	%r5,.L817
	kdb	%f0,.L818-.L817(%r5)
	jl	.L815
	kdb	%f0,.L819-.L817(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L815:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L817:
.L819:
	.long	2146435071
	.long	-1
.L818:
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
	larl	%r5,.L825
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L826-.L825(%r5)
	ld	%f6,.L826-.L825+8(%r5)
	kxbr	%f0,%f4
	jl	.L823
	ld	%f4,.L827-.L825(%r5)
	ld	%f6,.L827-.L825+8(%r5)
	lhi	%r1,1
	kxbr	%f0,%f4
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L823:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L825:
.L827:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L826:
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
	larl	%r5,.L846
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L844
	le	%f4,.L847-.L846(%r5)
.L832:
	tmll	%r2,1
	je	.L833
.L834:
	meebr	%f0,%f4
.L833:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L831
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L834
.L845:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L834
	j	.L845
.L831:
	br	%r14
.L844:
	le	%f4,.L848-.L846(%r5)
	j	.L832
	.section	.rodata
	.align	8
.L846:
.L848:
	.long	1056964608
.L847:
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
	larl	%r5,.L865
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L863
	ld	%f4,.L866-.L865(%r5)
.L851:
	tmll	%r2,1
	je	.L852
.L853:
	mdbr	%f0,%f4
.L852:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L850
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L853
.L864:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L853
	j	.L864
.L850:
	br	%r14
.L863:
	ld	%f4,.L867-.L865(%r5)
	j	.L851
	.section	.rodata
	.align	8
.L865:
.L867:
	.long	1071644672
	.long	0
.L866:
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
	larl	%r5,.L884
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L869
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L869
	cijl	%r4,0,.L882
	ld	%f0,.L885-.L884(%r5)
	ld	%f2,.L885-.L884+8(%r5)
.L870:
	tmll	%r4,1
	je	.L871
.L872:
	mxbr	%f4,%f0
.L871:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L869
	mxbr	%f0,%f0
	tmll	%r4,1
	jne	.L872
.L883:
	mxbr	%f0,%f0
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L872
	j	.L883
.L869:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L882:
	ld	%f0,.L886-.L884(%r5)
	ld	%f2,.L886-.L884+8(%r5)
	j	.L870
	.section	.rodata
	.align	8
.L884:
.L886:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L885:
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
	cgije	%r4,0,.L911
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L898
	cgije	%r5,1,.L902
	cgije	%r5,2,.L903
	lgr	%r12,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L903:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
.L902:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
	cgrje	%r0,%r3,.L888
.L898:
	srlg	%r4,%r4,2
.L889:
	xc	0(3,%r1),0(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L889
.L888:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L911:
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
	je	.L916
.L917:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L917
.L916:
	cgije	%r4,0,.L919
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L938
.L928:
	srlg	%r4,%r4,1
.L918:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L939
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L940
	la	%r1,2(%r1)
	brctg	%r4,.L918
.L919:
	mvi	0(%r1),0
.L921:
	br	%r14
.L938:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L921
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgijlh	%r0,0,.L928
	mvi	0(%r1),0
	br	%r14
.L939:
	br	%r14
.L940:
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
	cgije	%r3,0,.L942
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L954
	cgije	%r5,1,.L965
	cgije	%r5,2,.L966
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L966:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L965:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L942
.L954:
	srlg	%r0,%r4,2
.L943:
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
	brctg	%r0,.L943
	br	%r14
.L942:
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
	je	.L978
.L982:
	lgr	%r1,%r3
	j	.L977
.L976:
	crje	%r4,%r5,.L975
.L977:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L976
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L982
.L978:
	lghi	%r2,0
.L975:
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
.L986:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L986
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
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ic	%r8,0(%r3)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	tml	%r8,255
	je	.L989
	llcr	%r10,%r8
	lgr	%r9,%r3
.L991:
	la	%r9,1(%r9)
	cli	0(%r9),0
	jne	.L991
	slgr	%r9,%r3
	jhe	.L989
	aghi	%r9,-1
	llcr	%r8,%r8
	j	.L999
.L1011:
	la	%r2,1(%r2)
	cije	%r1,0,.L1010
.L999:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1011
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L993:
	la	%r11,1(%r5)
	brctg	%r0,.L1007
.L995:
	crje	%r12,%r1,.L989
.L996:
	la	%r2,1(%r2)
	j	.L999
.L1007:
	crjlh	%r12,%r1,.L996
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L995
	cli	1(%r5),0
	je	.L996
	lgr	%r5,%r11
	j	.L993
.L1010:
	lghi	%r2,0
.L989:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	lgdr	%r8,%f1
	.cfi_restore 8
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
	jl	.L1023
	jnh	.L1017
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1016
.L1017:
	br	%r14
.L1023:
	kdbr	%f2,%f4
	jnh	.L1017
.L1016:
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
	cgije	%r5,0,.L1025
	clgrjl	%r3,%r5,.L1033
	sgrk	%r0,%r3,%r5
	algr	%r0,%r2
	jnle	.L1033
	llc	%r11,0(%r4)
	j	.L1030
.L1027:
	clgrjl	%r0,%r12,.L1033
.L1030:
	ic	%r1,0(%r12)
	lgr	%r2,%r12
	llcr	%r3,%r1
	la	%r12,1(%r12)
	crjlh	%r3,%r11,.L1027
	cgije	%r5,1,.L1025
	lghi	%r1,1
	sgrk	%r9,%r5,%r1
	tmll	%r9,1
	je	.L1037
	clc	1(1,%r4),1(%r2)
	jne	.L1027
	lghi	%r1,2
	cgije	%r5,2,.L1025
.L1037:
	srlg	%r3,%r9,1
.L1028:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1027
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1027
	aghi	%r1,2
	brctg	%r3,.L1028
.L1025:
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
.L1033:
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
	cgije	%r4,0,.L1047
	brasl	%r14,memmove@PLT
.L1047:
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
	larl	%r5,.L1079
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1076
	kdb	%f0,.L1080-.L1079(%r5)
	jnhe	.L1077
	lhi	%r3,0
.L1056:
	lhi	%r1,0
.L1062:
	ahi	%r1,1
	mdb	%f0,.L1081-.L1079(%r5)
	kdb	%f0,.L1080-.L1079(%r5)
	jhe	.L1062
.L1063:
	st	%r1,0(%r2)
	cije	%r3,0,.L1053
	lcdbr	%f0,%f0
.L1053:
	br	%r14
.L1077:
	kdb	%f0,.L1081-.L1079(%r5)
	jnl	.L1059
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1068
.L1059:
	mvhi	0(%r2),0
	br	%r14
.L1076:
	lcdbr	%f6,%f0
	kdb	%f0,.L1082-.L1079(%r5)
	jnle	.L1078
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1056
.L1078:
	kdb	%f0,.L1083-.L1079(%r5)
	jnh	.L1059
	lhi	%r3,1
.L1057:
	ldr	%f0,%f6
	lhi	%r1,0
.L1064:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1081-.L1079(%r5)
	jl	.L1064
	j	.L1063
.L1068:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1057
	.section	.rodata
	.align	8
.L1079:
.L1083:
	.long	-1075838976
	.long	0
.L1082:
	.long	-1074790400
	.long	0
.L1081:
	.long	1071644672
	.long	0
.L1080:
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
	cgije	%r4,0,.L1087
.L1086:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1086
	br	%r14
.L1087:
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
	clrjhe	%r3,%r2,.L1117
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L1091:
	cijl	%r3,0,.L1092
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1108
	cijl	%r3,0,.L1092
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1108
	ahi	%r5,-2
	brct	%r12,.L1091
.L1094:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1108:
	.cfi_restore_state
	lhi	%r5,0
	cije	%r1,0,.L1094
.L1092:
	lhi	%r5,0
.L1097:
	clrjl	%r2,%r3,.L1096
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1096:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1097
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1117:
	lhi	%r1,1
	lhi	%r5,0
.L1112:
	clrjl	%r2,%r3,.L1114
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1114:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1112
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
	cgije	%r2,0,.L1128
.L1129:
	risbg	%r1,%r2,63,128+63,0
	srlg	%r2,%r2,1
	lcr	%r0,%r1
	nr	%r0,%r3
	risbgn	%r3,%r3,32,128+62,1
	ar	%r4,%r0
	cgijlh	%r2,0,.L1129
.L1128:
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
	clgrjl	%r2,%r3,.L1134
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1199
.L1134:
	cije	%r1,0,.L1137
	risbgn	%r0,%r1,32,128+60,3
	aghik	%r11,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r11,3
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1162
	cgije	%r11,1,.L1178
	cgije	%r11,2,.L1179
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L1179:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L1178:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r0,%r1,.L1137
.L1162:
	srlg	%r5,%r5,2
.L1138:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1138
.L1137:
	clrjhe	%r12,%r4,.L1133
	llgfr	%r12,%r12
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	lghi	%r5,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r5
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjhe	%r1,%r4,.L1133
	cije	%r0,0,.L1153
	cije	%r0,1,.L1181
	cijlh	%r0,2,.L1200
.L1182:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1181:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1133
.L1153:
	srlk	%r4,%r11,2
.L1139:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1139
.L1133:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1199:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1133
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1171
	cgije	%r12,1,.L1176
	cgije	%r12,2,.L1177
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1177:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1176:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1133
.L1171:
	srlg	%r4,%r4,2
.L1140:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1140
	j	.L1133
.L1200:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1182
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
	clgrjl	%r2,%r3,.L1203
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1257
.L1203:
	cije	%r1,0,.L1253
	risbgn	%r0,%r1,32,128+62,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-2
	lghi	%r1,0
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1221
	cgije	%r12,1,.L1237
	cgije	%r12,2,.L1238
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L1238:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1237:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L1206
.L1221:
	srlg	%r5,%r5,2
.L1207:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1207
.L1206:
	tmll	%r4,1
	je	.L1202
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1202:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1257:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1252
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1230
	cgije	%r5,1,.L1235
	cgije	%r5,2,.L1236
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1236:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1235:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1252
.L1230:
	srlg	%r4,%r4,2
.L1208:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	stcy	%r0,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1208
	br	%r14
.L1253:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1252:
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
	clgrjl	%r2,%r3,.L1260
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1325
.L1260:
	cije	%r1,0,.L1263
	risbgn	%r0,%r1,32,128+61,2
	aghik	%r11,%r0,-4
	lghi	%r1,0
	srlg	%r5,%r11,2
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1288
	cgije	%r11,1,.L1304
	cgije	%r11,2,.L1305
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lghi	%r1,4
.L1305:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
.L1304:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r0,%r1,.L1263
.L1288:
	srlg	%r5,%r5,2
.L1264:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L1264
.L1263:
	clrjhe	%r12,%r4,.L1259
	llgfr	%r12,%r12
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	lghi	%r5,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r5
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjhe	%r1,%r4,.L1259
	cije	%r0,0,.L1279
	cije	%r0,1,.L1307
	cijlh	%r0,2,.L1326
.L1308:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1307:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1259
.L1279:
	srlk	%r4,%r11,2
.L1265:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1265
.L1259:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1325:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1259
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1297
	cgije	%r12,1,.L1302
	cgije	%r12,2,.L1303
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1303:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1302:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1259
.L1297:
	srlg	%r4,%r4,2
.L1266:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1266
	j	.L1259
.L1326:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1308
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
.L1342:
	srk	%r3,%r4,%r1
	srak	%r5,%r2,0(%r3)
	tmll	%r5,1
	jne	.L1341
	ahik	%r5,%r1,1
	srk	%r3,%r4,%r5
	lr	%r1,%r5
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1341
	ahi	%r1,1
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1341
	ahik	%r1,%r5,2
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1341
	ahik	%r1,%r5,3
	brct	%r0,.L1342
.L1341:
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
.L1352:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1351
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1351
	ahi	%r1,1
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1351
	ahik	%r1,%r0,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1351
	ahik	%r1,%r0,3
	brct	%r4,.L1352
.L1351:
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
	larl	%r5,.L1368
	keb	%f0,.L1369-.L1368(%r5)
	jhe	.L1367
	cgebr	%r2,5,%f0
	br	%r14
.L1367:
	seb	%f0,.L1369-.L1368(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1368:
.L1369:
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
.L1371:
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
	brct	%r0,.L1371
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
.L1379:
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
	brct	%r0,.L1379
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
	cgije	%r2,0,.L1387
.L1388:
	risbg	%r1,%r2,63,128+63,0
	srl	%r2,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r4,%r0
	cijlh	%r2,0,.L1388
.L1387:
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
	cgijlh	%r2,0,.L1398
	j	.L1393
.L1394:
	risbg	%r1,%r3,63,128+63,0
	srlg	%r3,%r3,1
	lcr	%r0,%r1
	nr	%r0,%r2
	risbgn	%r2,%r2,32,128+62,1
	ar	%r4,%r0
.L1398:
	cgijlh	%r3,0,.L1394
.L1393:
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
	clrjhe	%r3,%r2,.L1427
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L1401:
	cijl	%r3,0,.L1402
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1418
	cijl	%r3,0,.L1402
	sllk	%r0,%r3,1
	sll	%r1,1
	llgfr	%r3,%r0
	clrjhe	%r0,%r2,.L1418
	ahi	%r5,-2
	brct	%r12,.L1401
.L1404:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1418:
	.cfi_restore_state
	lhi	%r5,0
	cije	%r1,0,.L1404
.L1402:
	lhi	%r5,0
.L1407:
	clrjl	%r2,%r3,.L1406
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1406:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1407
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1427:
	lhi	%r1,1
	lhi	%r5,0
.L1422:
	clrjl	%r2,%r3,.L1424
	sr	%r2,%r3
	or	%r5,%r1
	llgfr	%r2,%r2
.L1424:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1422
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
	cijl	%r3,0,.L1456
	cgije	%r3,0,.L1449
	lhi	%r0,0
.L1445:
	lhi	%r5,32
	lhi	%r4,0
	j	.L1448
.L1457:
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1447
.L1448:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	srag	%r3,%r3,1
	lgfr	%r2,%r2
	jne	.L1457
.L1447:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
.L1446:
	lgfr	%r2,%r2
	br	%r14
.L1456:
	lcr	%r3,%r3
	lhi	%r0,1
	lgfr	%r3,%r3
	j	.L1445
.L1449:
	lhi	%r2,0
	j	.L1446
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
	cgijl	%r2,0,.L1482
	lhi	%r5,0
.L1460:
	cgijhe	%r3,0,.L1461
	lcgr	%r3,%r3
	xilf	%r5,1
.L1461:
	lr	%r4,%r2
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1483
	lhi	%r3,1
	lhi	%r2,16
.L1462:
	cijl	%r1,0,.L1463
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1464
	cijl	%r1,0,.L1463
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1464
	brct	%r2,.L1462
.L1473:
	lghi	%r2,0
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L1464:
	cije	%r3,0,.L1473
.L1463:
	lhi	%r0,0
.L1468:
	clrjl	%r4,%r1,.L1467
	sr	%r4,%r1
	or	%r0,%r3
.L1467:
	srl	%r3,1
	srl	%r1,1
	cijlh	%r3,0,.L1468
	llgfr	%r2,%r0
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L1482:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1460
.L1483:
	lhi	%r3,1
	j	.L1463
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
	cgijl	%r2,0,.L1510
	lhi	%r5,0
.L1486:
	lpgr	%r3,%r3
	lr	%r1,%r3
	lr	%r4,%r2
	clrjle	%r2,%r3,.L1511
	lhi	%r0,1
	lhi	%r2,16
.L1487:
	cijl	%r1,0,.L1493
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1509
	cijl	%r1,0,.L1493
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1509
	brct	%r2,.L1487
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L1511:
	lhi	%r0,1
.L1493:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L1509:
	cijlh	%r0,0,.L1493
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L1510:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1486
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
	clrjhe	%r3,%r2,.L1515
.L1514:
	tmll	%r3,32768
	jne	.L1515
	sllk	%r5,%r1,1
	risbgn	%r3,%r3,48,128+62,1
	lr	%r1,%r5
	clrjle	%r2,%r3,.L1530
	tmll	%r3,32768
	jne	.L1515
	sllk	%r5,%r1,1
	risbgn	%r3,%r3,48,128+62,1
	lr	%r1,%r5
	clrjle	%r2,%r3,.L1530
	brct	%r0,.L1514
	lhi	%r5,0
.L1517:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llghr	%r2,%r2
	br	%r14
.L1530:
	tml	%r5,65534
	je	.L1517
.L1515:
	lhi	%r5,0
.L1520:
	clrjl	%r2,%r3,.L1519
	sr	%r2,%r3
	or	%r5,%r1
	llghr	%r2,%r2
.L1519:
	risbgn	%r0,%r1,64-15,128+63,48+15
	srlg	%r3,%r3,1
	lr	%r1,%r0
	cijlh	%r0,0,.L1520
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
	clgrjhe	%r3,%r2,.L1536
.L1535:
	risbg	%r5,%r3,32,128+32,0
	jne	.L1536
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1552
	risbg	%r5,%r3,32,128+32,0
	jne	.L1536
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1552
	brct	%r0,.L1535
.L1538:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L1552:
	cgije	%r1,0,.L1538
.L1536:
	lghi	%r5,0
.L1541:
	clgrjl	%r2,%r3,.L1540
	sgr	%r2,%r3
	ogr	%r5,%r1
.L1540:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L1541
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
	je	.L1556
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L1557:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L1555:
	br	%r14
.L1556:
	cgije	%r3,0,.L1555
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L1557
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
	je	.L1562
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L1563:
	lgr	%r0,%r4
.L1564:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L1562:
	cgije	%r4,0,.L1564
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L1563
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
	je	.L1570
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L1571:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1569:
	br	%r14
.L1570:
	cgije	%r3,0,.L1569
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L1571
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
	je	.L1576
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L1577:
	lgr	%r0,%r4
.L1578:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1576:
	cgije	%r4,0,.L1578
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L1577
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
	jl	.L1593
	jh	.L1594
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1593:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1594:
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
	jl	.L1600
	jh	.L1601
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L1600:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L1601:
	lhi	%r0,1
	lgfr	%r2,%r0
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
	jl	.L1606
	jh	.L1607
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r5,1
	locrh	%r5,%r0
	lhi	%r3,0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1606:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1607:
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
	jne	.L1616
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
.L1616:
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
	je	.L1621
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
.L1622:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1620:
	br	%r14
.L1621:
	cgije	%r3,0,.L1620
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	j	.L1622
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
	je	.L1627
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L1628:
	lgr	%r0,%r4
.L1629:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1627:
	cgije	%r4,0,.L1629
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L1628
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
	larl	%r5,.L1657
	srlg	%r1,%r2,1
	ng	%r1,.L1658-.L1657(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L1659-.L1657(%r5)
	ng	%r0,.L1659-.L1657(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1660-.L1657(%r5)
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
.L1657:
.L1660:
	.quad	1085102592571150095
.L1659:
	.quad	3689348814741910323
.L1658:
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
	larl	%r5,.L1676
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L1677-.L1676(%r5)
	tmll	%r2,1
	je	.L1667
.L1669:
	mdbr	%f0,%f2
.L1667:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L1668
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L1669
.L1674:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L1669
	j	.L1674
.L1668:
	cijl	%r2,0,.L1675
	br	%r14
.L1675:
	ld	%f4,.L1677-.L1676(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1676:
.L1677:
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
	larl	%r5,.L1688
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L1689-.L1688(%r5)
	tmll	%r2,1
	je	.L1679
.L1681:
	meebr	%f0,%f2
.L1679:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L1680
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L1681
.L1686:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L1681
	j	.L1686
.L1680:
	cijl	%r2,0,.L1687
	br	%r14
.L1687:
	le	%f4,.L1689-.L1688(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1688:
.L1689:
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
	jl	.L1692
	jh	.L1693
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1692:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1693:
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
	jl	.L1699
	jh	.L1700
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L1699:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L1700:
	lhi	%r0,1
	lgfr	%r2,%r0
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
	jl	.L1705
	jh	.L1706
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1705:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1706:
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
	.align	8
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
