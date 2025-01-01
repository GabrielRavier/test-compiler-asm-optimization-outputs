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
	cgije	%r5,0,.L76
	ldgr	%f0,%r12
	.cfi_register 12, 16
	llcr	%r4,%r4
	aghik	%r12,%r5,-1
	lgr	%r1,%r5
	tmll	%r5,1
	jne	.L81
.L64:
	srlg	%r12,%r1,1
.L55:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L73
	aghi	%r5,-1
	la	%r2,1(%r2)
	llgc	%r0,1(%r3)
	stc	%r0,0(%r2)
	crje	%r4,%r0,.L73
	aghi	%r5,-1
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r12,.L55
.L59:
	lghi	%r2,0
.L82:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L73:
	.cfi_restore_state
	cgije	%r5,0,.L59
	la	%r2,1(%r2)
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L81:
	.cfi_restore_state
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	crje	%r4,%r0,.L73
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	lgr	%r5,%r12
	cgijlh	%r12,0,.L64
	lghi	%r2,0
	j	.L82
.L76:
	.cfi_restore 12
	lghi	%r2,0
	br	%r14
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
	cgije	%r4,0,.L90
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L105
.L93:
	srlg	%r1,%r1,1
.L85:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L101
	la	%r2,1(%r2)
	aghi	%r4,-1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L101
	la	%r2,1(%r2)
	aghi	%r4,-1
	brctg	%r1,.L85
.L90:
	lghi	%r2,0
.L84:
	br	%r14
.L105:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L101
	la	%r2,1(%r2)
	lgr	%r4,%r5
	cgijlh	%r5,0,.L93
	lghi	%r2,0
	br	%r14
.L101:
	cgije	%r4,0,.L90
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
	cgije	%r4,0,.L112
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L128
.L117:
	srlg	%r0,%r1,1
.L108:
	clc	0(1,%r3),0(%r2)
	jne	.L126
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	clc	0(1,%r3),0(%r2)
	jne	.L126
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	brctg	%r0,.L108
.L112:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L126:
	cgije	%r4,0,.L112
	llc	%r2,0(%r2)
	llc	%r3,0(%r3)
	sr	%r2,%r3
	lgfr	%r2,%r2
	br	%r14
.L128:
	clc	0(1,%r3),0(%r2)
	jne	.L126
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	lgr	%r4,%r5
	cgijlh	%r5,0,.L117
	j	.L112
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
	cgije	%r4,0,.L131
	brasl	%r14,memcpy@PLT
.L131:
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
	je	.L142
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L137
.L142:
	srlg	%r4,%r4,1
	aghi	%r4,1
.L138:
	brctg	%r4,.L140
	lghi	%r2,0
.L137:
	br	%r14
.L140:
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	llc	%r5,0(%r1)
	crje	%r5,%r3,.L147
	lgr	%r2,%r0
	aghi	%r1,-2
	llc	%r0,0(%r2)
	crjlh	%r0,%r3,.L138
	br	%r14
.L147:
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
	cgije	%r4,0,.L150
	la	%r0,0(%r4,%r2)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L160
	cgije	%r5,1,.L164
	cgije	%r5,2,.L165
	stc	%r3,0(%r2)
	la	%r1,1(%r2)
.L165:
	stc	%r3,0(%r1)
	la	%r1,1(%r1)
.L164:
	stc	%r3,0(%r1)
	la	%r1,1(%r1)
	cgrje	%r0,%r1,.L150
.L160:
	srlg	%r4,%r4,2
.L151:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	la	%r1,4(%r1)
	brctg	%r4,.L151
.L150:
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
	j	.L180
.L175:
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L180:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L175
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
	llcr	%r3,%r3
	llc	%r1,0(%r2)
	cli	0(%r2),0
	jne	.L183
	br	%r14
.L185:
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	ber	%r14
.L183:
	crjlh	%r1,%r3,.L185
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
.L193:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L192
	la	%r2,1(%r2)
	cijlh	%r1,0,.L193
	lghi	%r2,0
.L192:
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
	crje	%r0,%r5,.L197
	j	.L198
.L199:
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llcr	%r0,%r1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r0,%r5,.L198
.L197:
	cijlh	%r0,0,.L199
.L198:
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
	je	.L204
.L205:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L205
.L204:
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
	cgije	%r4,0,.L214
.L226:
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L211
	llc	%r1,0(%r3)
	cije	%r1,0,.L211
	brctg	%r4,.L221
.L211:
	llc	%r0,0(%r3)
	srk	%r2,%r5,%r0
	lgfr	%r2,%r2
	br	%r14
.L221:
	crjlh	%r1,%r5,.L211
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	j	.L226
.L214:
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
	cgijle	%r4,1,.L228
	nill	%r4,65534
	la	%r5,0(%r4,%r2)
	aghik	%r1,%r4,-2
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L237
	cgije	%r4,1,.L241
	cgije	%r4,2,.L242
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L242:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L241:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L228
.L237:
	srlg	%r5,%r0,2
.L230:
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
	brctg	%r5,.L230
.L228:
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
	lgr	%r3,%r2
	lr	%r1,%r2
	xilf	%r1,9
	lpr	%r0,%r1
	ahi	%r0,-1
	srlk	%r2,%r0,31
	chi	%r3,32
	lhi	%r4,1
	locre	%r2,%r4
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
	lgr	%r3,%r2
	lr	%r1,%r2
	xilf	%r1,127
	lpr	%r0,%r1
	ahi	%r0,-1
	srlk	%r2,%r0,31
	clfi	%r3,31
	lhi	%r4,1
	locrnh	%r2,%r4
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
	cije	%r2,32,.L271
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L271:
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
	clijle	%r2,31,.L279
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L280
.L279:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L280:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L279
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
	clijle	%r2,254,.L291
	lhi	%r1,8231
	clrjle	%r2,%r1,.L289
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L289
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L289
	ahi	%r0,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r0,1048580
	lhi	%r5,0
	locrnl	%r2,%r5
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L289:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L291:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	risbg	%r2,%r2,63,128+63,0
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
	clijle	%r1,9,.L295
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L295:
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
	jo	.L303
	kdbr	%f0,%f2
	jnh	.L306
	sdbr	%f0,%f2
	br	%r14
.L306:
	lzdr	%f0
	br	%r14
.L303:
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
	jo	.L312
	kebr	%f0,%f2
	jnh	.L315
	sebr	%f0,%f2
	br	%r14
.L315:
	lzer	%f0
	br	%r14
.L312:
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
	jo	.L325
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L319
	cijlh	%r1,0,.L325
	br	%r14
.L319:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L325
	ldr	%f2,%f0
.L325:
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
	jo	.L335
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L329
	cijlh	%r1,0,.L335
	br	%r14
.L329:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L335
	ler	%f2,%f0
.L335:
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
	ld	%f6,8(%r4)
	cxbr	%f0,%f0
	jo	.L344
	cxbr	%f4,%f4
	jo	.L349
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L351
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	kxbr	%f0,%f4
	lhi	%r0,0
	lhi	%r4,1
	locrl	%r0,%r4
	tmll	%r0,1
	je	.L341
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L342:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	br	%r14
.L351:
	cije	%r1,0,.L349
.L344:
	lxr	%f0,%f4
.L349:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L341:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L342
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
	jo	.L359
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L355
	cije	%r1,0,.L359
	br	%r14
.L355:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L359:
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
	jo	.L369
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L365
	cije	%r1,0,.L369
	br	%r14
.L365:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L369:
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
	ld	%f2,8(%r4)
	cxbr	%f4,%f4
	jo	.L385
	cxbr	%f0,%f0
	jo	.L380
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L387
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	kxbr	%f4,%f0
	lhi	%r0,0
	lhi	%r4,1
	locrl	%r0,%r4
	tmll	%r0,1
	je	.L377
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L378:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	br	%r14
.L387:
	cije	%r1,0,.L385
.L380:
	lxr	%f0,%f4
.L385:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L377:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L378
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
	cije	%r2,0,.L392
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L391:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	srl	%r1,6
	cijlh	%r1,0,.L391
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L392:
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
	cgije	%r3,0,.L406
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L406:
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
	je	.L409
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L409:
	ltg	%r4,8(%r2)
	ber	%r14
	lg	%r2,0(%r2)
	stg	%r2,0(%r4)
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
	lgr	%r9,%r2
	lgr	%r13,%r3
	stg	%r4,160(%r15)
	lgr	%r10,%r5
	ltg	%r8,0(%r4)
	je	.L419
	lgr	%r12,%r3
	lgr	%r11,%r8
	tmll	%r8,1
	jne	.L438
.L429:
	srlg	%r11,%r11,1
.L421:
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L418
	agr	%r12,%r10
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L418
	agr	%r12,%r10
	brctg	%r11,.L421
.L419:
	lg	%r1,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r1)
	msgr	%r8,%r10
	agrk	%r7,%r13,%r8
	cgije	%r10,0,.L418
	lgr	%r4,%r10
	lgr	%r3,%r9
	lgr	%r2,%r7
	brasl	%r14,memmove@PLT
.L418:
	lgr	%r2,%r7
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
.L438:
	.cfi_restore_state
	lgr	%r7,%r3
	basr	%r14,%r6
	cije	%r2,0,.L418
	agrk	%r12,%r13,%r10
	cgijlh	%r8,1,.L429
	j	.L419
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
	je	.L441
	lgr	%r10,%r2
	lgr	%r12,%r3
	lgr	%r9,%r5
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L457
.L448:
	srlg	%r7,%r11,1
.L443:
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L440
	agr	%r12,%r9
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L440
	agr	%r12,%r9
	brctg	%r7,.L443
.L441:
	lghi	%r8,0
.L440:
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
.L457:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L440
	agr	%r12,%r9
	cgijlh	%r7,1,.L448
	lghi	%r8,0
	j	.L440
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
	lhi	%r5,4
.L462:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L464
	ahik	%r1,%r3,-9
	slrk	%r1,%r5,%r1
	lhi	%r4,0
	alcr	%r4,%r4
	cije	%r4,0,.L476
.L464:
	la	%r2,1(%r2)
	j	.L462
.L476:
	cije	%r3,43,.L471
	cije	%r3,45,.L477
	lhi	%r5,0
	llc	%r0,0(%r2)
	ahik	%r3,%r0,-48
	clijle	%r3,9,.L467
.L468:
	lcr	%r2,%r4
	ltr	%r5,%r5
	locrne	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L477:
	lhi	%r5,1
.L465:
	la	%r2,1(%r2)
	llc	%r0,0(%r2)
	ahik	%r3,%r0,-48
	clijh	%r3,9,.L468
.L467:
	sllk	%r1,%r4,2
	ar	%r1,%r4
	sll	%r1,1
	la	%r2,1(%r2)
	ahi	%r0,-48
	srk	%r4,%r1,%r0
	llc	%r0,0(%r2)
	ahik	%r3,%r0,-48
	clijle	%r3,9,.L467
	lcr	%r2,%r4
	ltr	%r5,%r5
	locrne	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L471:
	lhi	%r5,0
	j	.L465
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
	lgr	%r1,%r2
	lhi	%r0,4
.L480:
	llc	%r3,0(%r1)
	cli	0(%r1),32
	je	.L482
	ahik	%r2,%r3,-9
	slrk	%r2,%r0,%r2
	lhi	%r5,0
	alcr	%r5,%r5
	cije	%r5,0,.L496
.L482:
	la	%r1,1(%r1)
	j	.L480
.L496:
	cije	%r3,43,.L483
	cije	%r3,45,.L497
.L484:
	llc	%r0,0(%r1)
	ahik	%r4,%r0,-48
	lghi	%r2,0
	clijh	%r4,9,.L486
.L485:
	sllg	%r3,%r2,2
	agr	%r2,%r3
	sllg	%r2,%r2,1
	la	%r1,1(%r1)
	ahi	%r0,-48
	sgfr	%r2,%r0
	llc	%r0,0(%r1)
	ahik	%r4,%r0,-48
	clijle	%r4,9,.L485
.L486:
	lcgr	%r1,%r2
	ltr	%r5,%r5
	locgre	%r2,%r1
	br	%r14
.L497:
	lhi	%r5,1
.L483:
	la	%r1,1(%r1)
	j	.L484
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
	cgije	%r4,0,.L502
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L505
.L512:
	jle	.L501
	agrk	%r8,%r11,%r9
	aghi	%r12,-1
	sgr	%r12,%r10
	cgije	%r12,0,.L502
.L505:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	agr	%r11,%r8
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L512
	lgr	%r12,%r10
	cgijlh	%r12,0,.L505
.L502:
	lghi	%r11,0
.L501:
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
	cije	%r4,0,.L515
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L518
.L521:
	jle	.L517
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
.L517:
	sra	%r12,1
	je	.L515
.L518:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	agr	%r11,%r9
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jne	.L521
.L514:
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
.L515:
	.cfi_restore_state
	lghi	%r11,0
	j	.L514
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
	j	.L546
.L549:
	crje	%r1,%r3,.L548
	la	%r2,4(%r2)
.L546:
	lt	%r1,0(%r2)
	jne	.L549
.L543:
	lghi	%r2,0
	br	%r14
.L548:
	cije	%r1,0,.L543
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
	crje	%r4,%r5,.L552
	j	.L553
.L563:
	cije	%r5,0,.L553
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L553
.L552:
	cijlh	%r4,0,.L563
.L553:
	cr	%r4,%r5
	lhi	%r2,0
	lhi	%r0,1
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
.L566:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L566
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
	je	.L570
.L571:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L571
.L570:
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
	cgije	%r4,0,.L581
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L598
.L587:
	srlg	%r0,%r1,1
.L576:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L577
	cije	%r1,0,.L577
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L577
	cije	%r5,0,.L577
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L576
.L581:
	lhi	%r0,0
	lgfr	%r2,%r0
	br	%r14
.L577:
	cgije	%r4,0,.L581
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r0,0
	lhi	%r3,1
	locrh	%r0,%r3
	lhi	%r4,-1
	locrnhe	%r0,%r4
	lgfr	%r2,%r0
	br	%r14
.L598:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L577
	cije	%r5,0,.L577
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r0
	cgijlh	%r0,0,.L587
	j	.L581
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
	cgije	%r4,0,.L606
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L621
.L609:
	srlg	%r0,%r1,1
.L601:
	c	%r3,0(%r2)
	je	.L617
	aghi	%r4,-1
	la	%r2,4(%r2)
	c	%r3,0(%r2)
	je	.L617
	aghi	%r4,-1
	la	%r2,4(%r2)
	brctg	%r0,.L601
.L606:
	lghi	%r2,0
.L600:
	br	%r14
.L621:
	c	%r3,0(%r2)
	je	.L617
	la	%r2,4(%r2)
	lgr	%r4,%r5
	cgijlh	%r5,0,.L609
	lghi	%r2,0
	br	%r14
.L617:
	cgije	%r4,0,.L606
	br	%r14
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
	cgije	%r4,0,.L629
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L646
.L635:
	srlg	%r0,%r1,1
.L624:
	clc	0(4,%r2),0(%r3)
	jne	.L644
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	clc	0(4,%r2),0(%r3)
	jne	.L644
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L624
.L629:
	lhi	%r5,0
	lgfr	%r2,%r5
	br	%r14
.L644:
	cgije	%r4,0,.L629
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r5,0
	lhi	%r3,1
	locrh	%r5,%r3
	lhi	%r4,-1
	locrnhe	%r5,%r4
	lgfr	%r2,%r5
	br	%r14
.L646:
	clc	0(4,%r2),0(%r3)
	jne	.L644
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r5
	cgijlh	%r5,0,.L635
	j	.L629
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
	cgije	%r4,0,.L649
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L649:
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
	cgrje	%r2,%r3,.L656
	aghik	%r5,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r1,%r4,2
	clgrjhe	%r0,%r1,.L700
	cgije	%r4,0,.L656
	sllg	%r1,%r5,2
	risbg	%r4,%r5,2,128+63,0
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L671
	cgije	%r5,1,.L687
	cgije	%r5,2,.L688
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L688:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L687:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L656
.L671:
	srlg	%r4,%r4,2
.L659:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L659
	br	%r14
.L700:
	lghi	%r1,0
	cgije	%r4,0,.L656
	risbg	%r0,%r4,62,128+63,0
	je	.L680
	cgije	%r0,1,.L685
	cgije	%r0,2,.L686
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	aghik	%r5,%r4,-2
	lghi	%r1,4
.L686:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r5,-1
	aghi	%r1,4
.L685:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
	cgije	%r5,0,.L656
.L680:
	srlg	%r4,%r4,2
.L658:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r4,.L658
.L656:
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
	cgije	%r4,0,.L703
	lgr	%r1,%r2
	risbg	%r0,%r4,62,128+63,0
	je	.L713
	cgije	%r0,1,.L717
	cgije	%r0,2,.L718
	la	%r1,4(%r2)
	st	%r3,0(%r2)
	aghik	%r5,%r4,-2
.L718:
	st	%r3,0(%r1)
	la	%r1,4(%r1)
	aghi	%r5,-1
.L717:
	la	%r1,4(%r1)
	sty	%r3,-4(%r1)
	cgije	%r5,0,.L703
.L713:
	srlg	%r4,%r4,2
.L704:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	la	%r1,16(%r1)
	sty	%r3,-4(%r1)
	brctg	%r4,.L704
.L703:
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
	jhe	.L727
	cgije	%r4,0,.L726
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L742
	cgije	%r5,1,.L755
	cgijlh	%r5,2,.L772
.L756:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L755:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L742
	br	%r14
.L727:
	ber	%r14
	cgije	%r4,0,.L726
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L751
	cgije	%r0,1,.L757
	cgije	%r0,2,.L758
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L758:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L757:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L726
.L751:
	srlg	%r5,%r5,2
.L730:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L730
.L726:
	br	%r14
.L742:
	srlg	%r1,%r1,2
.L729:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L729
	br	%r14
.L772:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L756
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
	sllk	%r1,%r2,0(%r3)
	lcr	%r3,%r3
	nilf	%r3,15
	srl	%r2,0(%r3)
	or	%r2,%r1
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
	srlk	%r1,%r2,0(%r3)
	lcr	%r3,%r3
	nilf	%r3,15
	sll	%r2,0(%r3)
	or	%r2,%r1
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
	sllk	%r1,%r2,0(%r3)
	lcr	%r3,%r3
	nilf	%r3,7
	srl	%r2,0(%r3)
	or	%r2,%r1
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
	srlk	%r1,%r2,0(%r3)
	lcr	%r3,%r3
	nilf	%r3,7
	sll	%r2,0(%r3)
	or	%r2,%r1
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
.L803:
	srlk	%r5,%r2,0(%r1)
	ahik	%r3,%r1,1
	lr	%r1,%r3
	tmll	%r5,1
	jne	.L802
	srlk	%r0,%r2,0(%r3)
	ahi	%r1,1
	tmll	%r0,1
	jne	.L802
	srlk	%r5,%r2,0(%r1)
	ahik	%r1,%r3,2
	tmll	%r5,1
	jne	.L802
	srlk	%r0,%r2,0(%r1)
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L802
	brct	%r4,.L803
	lhi	%r1,0
.L802:
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
	cgije	%r2,0,.L818
	risbg	%r3,%r2,63,128+63,0
	jne	.L816
	lhi	%r3,1
.L817:
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	ahi	%r3,1
	tmll	%r1,1
	je	.L817
.L816:
	lgfr	%r2,%r3
	br	%r14
.L818:
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
	larl	%r5,.L827
	keb	%f0,.L828-.L827(%r5)
	jl	.L825
	keb	%f0,.L829-.L827(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L825:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L827:
.L829:
	.long	2139095039
.L828:
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
	larl	%r5,.L835
	kdb	%f0,.L836-.L835(%r5)
	jl	.L833
	kdb	%f0,.L837-.L835(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L833:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L835:
.L837:
	.long	2146435071
	.long	-1
.L836:
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
	larl	%r5,.L843
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L844-.L843(%r5)
	ld	%f6,.L844-.L843+8(%r5)
	kxbr	%f0,%f4
	jl	.L841
	ld	%f4,.L845-.L843(%r5)
	ld	%f6,.L845-.L843+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L841:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L843:
.L845:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L844:
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
	larl	%r5,.L863
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L861
	le	%f4,.L864-.L863(%r5)
	j	.L852
.L862:
	meebr	%f4,%f4
.L852:
	tmll	%r2,1
	je	.L851
	meebr	%f0,%f4
.L851:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cijlh	%r1,0,.L862
	br	%r14
.L861:
	le	%f4,.L865-.L863(%r5)
	j	.L852
	.section	.rodata
	.align	8
.L863:
.L865:
	.long	1056964608
.L864:
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
	larl	%r5,.L881
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L879
	ld	%f4,.L882-.L881(%r5)
	j	.L870
.L880:
	mdbr	%f4,%f4
.L870:
	tmll	%r2,1
	je	.L869
	mdbr	%f0,%f4
.L869:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cijlh	%r1,0,.L880
	br	%r14
.L879:
	ld	%f4,.L883-.L881(%r5)
	j	.L870
	.section	.rodata
	.align	8
.L881:
.L883:
	.long	1071644672
	.long	0
.L882:
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
	larl	%r5,.L899
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L885
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L885
	cijl	%r4,0,.L897
	ld	%f0,.L900-.L899(%r5)
	ld	%f2,.L900-.L899+8(%r5)
	j	.L888
.L898:
	mxbr	%f0,%f0
.L888:
	tmll	%r4,1
	je	.L887
	mxbr	%f4,%f0
.L887:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cijlh	%r1,0,.L898
.L885:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L897:
	ld	%f0,.L901-.L899(%r5)
	ld	%f2,.L901-.L899+8(%r5)
	j	.L888
	.section	.rodata
	.align	8
.L899:
.L901:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L900:
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
	cgije	%r4,0,.L926
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L913
	cgije	%r5,1,.L917
	cgije	%r5,2,.L918
	la	%r1,1(%r2)
	lgr	%r12,%r3
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L918:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r3,1(%r3)
	xr	%r5,%r12
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L917:
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	llgc	%r5,-1(%r1)
	llgc	%r12,-1(%r3)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	cgrje	%r0,%r3,.L903
.L913:
	srlg	%r4,%r4,2
.L904:
	xc	0(3,%r1),0(%r3)
	la	%r3,4(%r3)
	la	%r1,4(%r1)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L904
.L903:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L926:
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
	je	.L931
.L932:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L932
.L931:
	cgije	%r4,0,.L954
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r4,-1
	lgr	%r5,%r4
	tmll	%r4,1
	jne	.L959
.L943:
	srlg	%r12,%r5,1
.L933:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L951
	la	%r1,1(%r1)
	aghi	%r4,-1
	llgc	%r0,1(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L951
	la	%r3,2(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
	brctg	%r12,.L933
	mvi	0(%r1),0
.L936:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L951:
	.cfi_restore_state
	cgijlh	%r4,0,.L936
	mvi	0(%r1),0
	j	.L936
.L959:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L951
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	lgr	%r4,%r12
	cgijlh	%r12,0,.L943
	mvi	0(%r1),0
	j	.L936
.L954:
	.cfi_restore 12
	mvi	0(%r1),0
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
	cgije	%r3,0,.L961
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L973
	cgije	%r5,1,.L984
	cgije	%r5,2,.L985
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L985:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L984:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L961
.L973:
	srlg	%r0,%r4,2
.L962:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	aghik	%r4,%r2,1
	lgr	%r2,%r4
	la	%r5,0(%r4,%r1)
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
	brctg	%r0,.L962
	br	%r14
.L961:
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
	je	.L997
.L1001:
	lgr	%r1,%r3
	j	.L996
.L995:
	la	%r1,1(%r1)
	crje	%r4,%r5,.L994
.L996:
	llc	%r4,0(%r1)
	cijlh	%r4,0,.L995
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1001
.L997:
	lghi	%r2,0
.L994:
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
.L1005:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1005
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	llc	%r11,0(%r3)
	lgr	%r1,%r3
	cli	0(%r3),0
	je	.L1010
.L1011:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L1011
.L1010:
	slgr	%r1,%r3
	jhe	.L1012
	aghik	%r10,%r1,-1
	j	.L1018
.L1036:
	la	%r2,1(%r2)
	cije	%r0,0,.L1035
.L1018:
	llc	%r0,0(%r2)
	crjlh	%r0,%r11,.L1036
	cgije	%r2,0,.L1012
	lr	%r12,%r11
	lgr	%r4,%r3
	cije	%r11,0,.L1014
	lgr	%r1,%r2
	aghik	%r5,%r10,1
.L1015:
	llc	%r0,0(%r4)
	cije	%r0,0,.L1014
	brctg	%r5,.L1030
.L1014:
	llc	%r0,0(%r4)
	crje	%r0,%r12,.L1012
	la	%r2,1(%r2)
	j	.L1018
.L1030:
	crjlh	%r0,%r12,.L1014
	la	%r1,1(%r1)
	la	%r4,1(%r4)
	llc	%r12,0(%r1)
	cli	0(%r1),0
	jne	.L1015
	j	.L1014
.L1035:
	lghi	%r2,0
.L1012:
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
	jl	.L1047
.L1039:
	lzdr	%f6
	kdbr	%f0,%f6
	jnh	.L1042
	kdbr	%f2,%f6
	jl	.L1041
.L1042:
	br	%r14
.L1047:
	kdbr	%f2,%f4
	jnh	.L1039
.L1041:
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
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r12,%r2
	cgije	%r5,0,.L1049
	clgrjl	%r3,%r5,.L1059
	sgrk	%r10,%r3,%r5
	algr	%r10,%r2
	jnle	.L1059
	llc	%r9,0(%r4)
	j	.L1056
.L1051:
	clgrjh	%r12,%r10,.L1059
.L1056:
	ic	%r1,0(%r12)
	lgr	%r2,%r12
	la	%r12,1(%r12)
	llcr	%r0,%r1
	crjlh	%r0,%r9,.L1051
	la	%r1,1(%r4)
	lgr	%r0,%r5
	aghi	%r0,-1
	je	.L1049
	lgr	%r3,%r12
	aghik	%r11,%r5,-1
	tmll	%r0,1
	je	.L1068
	clc	1(1,%r4),0(%r12)
	jne	.L1076
	la	%r3,1(%r12)
	la	%r1,2(%r4)
	lay	%r0,-2(%r5)
	cgije	%r5,2,.L1049
.L1068:
	srlg	%r11,%r11,1
.L1052:
	clc	0(1,%r1),0(%r3)
	jne	.L1076
	aghi	%r0,-1
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	clc	0(1,%r1),0(%r3)
	jne	.L1076
	aghi	%r0,-1
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	brctg	%r11,.L1052
.L1049:
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
.L1076:
	.cfi_restore_state
	cgije	%r0,0,.L1049
	clc	0(1,%r1),0(%r3)
	je	.L1049
	clgrjle	%r12,%r10,.L1056
.L1059:
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
	cgije	%r4,0,.L1082
	brasl	%r14,memmove@PLT
.L1082:
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
	larl	%r5,.L1116
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1114
	lhi	%r3,0
	kdb	%f0,.L1117-.L1116(%r5)
	jnhe	.L1110
.L1115:
	lhi	%r1,0
.L1093:
	ahi	%r1,1
	mdb	%f0,.L1118-.L1116(%r5)
	kdb	%f0,.L1117-.L1116(%r5)
	jhe	.L1093
.L1094:
	st	%r1,0(%r2)
	cije	%r3,0,.L1097
	lcdbr	%f0,%f0
.L1097:
	br	%r14
.L1114:
	lcdbr	%f0,%f0
	lhi	%r3,1
	kdb	%f0,.L1117-.L1116(%r5)
	jhe	.L1115
.L1110:
	kdb	%f0,.L1118-.L1116(%r5)
	jnl	.L1111
	lzdr	%f4
	lhi	%r1,0
	cdbr	%f0,%f4
	je	.L1094
.L1096:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1118-.L1116(%r5)
	jnl	.L1094
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1118-.L1116(%r5)
	jl	.L1096
	j	.L1094
.L1111:
	lhi	%r1,0
	j	.L1094
	.section	.rodata
	.align	8
.L1116:
.L1118:
	.long	1071644672
	.long	0
.L1117:
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
	cgije	%r4,0,.L1122
.L1121:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L1121
	br	%r14
.L1122:
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
	lhi	%r1,1
	lhi	%r0,16
	clrjhe	%r3,%r2,.L1143
.L1126:
	cijl	%r3,0,.L1127
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1127
	cijl	%r3,0,.L1127
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1127
	brct	%r0,.L1126
.L1135:
	lhi	%r0,0
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1127:
	cije	%r1,0,.L1135
.L1143:
	lhi	%r0,0
.L1131:
	clrjl	%r2,%r3,.L1130
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
.L1130:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1131
	ltgr	%r4,%r4
	locre	%r2,%r0
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
	.align	16
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB105:
	.cfi_startproc
	srag	%r1,%r2,63
	xgrk	%r4,%r2,%r1
	flogr	%r4,%r4
	ahi	%r4,-1
	cgr	%r2,%r1
	lhi	%r0,63
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
	cgije	%r2,0,.L1155
.L1156:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L1156
.L1155:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r1,%r4,3
	risbg	%r12,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L1161
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1226
.L1161:
	cije	%r1,0,.L1164
	risbgn	%r0,%r1,32,128+60,3
	lghi	%r1,0
	aghik	%r11,%r0,-8
	srlg	%r5,%r11,3
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1189
	cgije	%r11,1,.L1205
	cgije	%r11,2,.L1206
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L1206:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L1205:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r0,%r1,.L1164
.L1189:
	srlg	%r5,%r5,2
.L1165:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1165
.L1164:
	clrjhe	%r12,%r4,.L1160
	llgfr	%r12,%r12
	lghi	%r1,-1
	xgrk	%r5,%r12,%r1
	ar	%r5,%r4
	risbg	%r0,%r5,62,128+63,0
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	aghik	%r1,%r12,1
	clrjhe	%r1,%r4,.L1160
	cije	%r0,0,.L1180
	cije	%r0,1,.L1208
	cijlh	%r0,2,.L1227
.L1209:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1208:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1160
.L1180:
	srlk	%r4,%r5,2
.L1166:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r11,3(%r1,%r3)
	stc	%r11,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1166
.L1160:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1226:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1160
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1198
	cgije	%r12,1,.L1203
	cgije	%r12,2,.L1204
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1204:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1203:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1160
.L1198:
	srlg	%r4,%r4,2
.L1167:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1167
	j	.L1160
.L1227:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1209
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
	clgrjl	%r2,%r3,.L1230
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1284
.L1230:
	cije	%r1,0,.L1280
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r0,%r1,32,128+62,1
	lghi	%r1,0
	aghik	%r12,%r0,-2
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1248
	cgije	%r12,1,.L1264
	cgije	%r12,2,.L1265
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L1265:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1264:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L1233
.L1248:
	srlg	%r5,%r5,2
.L1234:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1234
.L1233:
	tmll	%r4,1
	je	.L1229
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1229:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1284:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1279
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1257
	cgije	%r5,1,.L1262
	cgije	%r5,2,.L1263
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1263:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1262:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1279
.L1257:
	srlg	%r4,%r4,2
.L1235:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	stcy	%r0,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1235
	br	%r14
.L1280:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1279:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r1,%r4,2
	risbg	%r12,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L1287
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1352
.L1287:
	cije	%r1,0,.L1290
	risbgn	%r0,%r1,32,128+61,2
	lghi	%r1,0
	aghik	%r11,%r0,-4
	srlg	%r5,%r11,2
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L1315
	cgije	%r11,1,.L1331
	cgije	%r11,2,.L1332
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lghi	%r1,4
.L1332:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
.L1331:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r0,%r1,.L1290
.L1315:
	srlg	%r5,%r5,2
.L1291:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L1291
.L1290:
	clrjhe	%r12,%r4,.L1286
	llgfr	%r12,%r12
	lghi	%r1,-1
	xgrk	%r5,%r12,%r1
	ar	%r5,%r4
	risbg	%r0,%r5,62,128+63,0
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	aghik	%r1,%r12,1
	clrjhe	%r1,%r4,.L1286
	cije	%r0,0,.L1306
	cije	%r0,1,.L1334
	cijlh	%r0,2,.L1353
.L1335:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L1334:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1286
.L1306:
	srlk	%r4,%r5,2
.L1292:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r11,3(%r1,%r3)
	stc	%r11,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1292
.L1286:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1352:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r11,%r0
	cgije	%r4,0,.L1286
	aghik	%r4,%r11,1
	risbg	%r12,%r4,62,128+63,0
	je	.L1324
	cgije	%r12,1,.L1329
	cgije	%r12,2,.L1330
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	aghi	%r11,-1
.L1330:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,-1
.L1329:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,-1
	cgije	%r11,-1,.L1286
.L1324:
	srlg	%r4,%r4,2
.L1293:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	icy	%r1,-1(%r11,%r3)
	stcy	%r1,-1(%r11,%r2)
	icy	%r5,-2(%r11,%r3)
	stcy	%r5,-2(%r11,%r2)
	icy	%r0,-3(%r11,%r3)
	stcy	%r0,-3(%r11,%r2)
	aghi	%r11,-4
	brctg	%r4,.L1293
	j	.L1286
.L1353:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L1335
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
.L1369:
	srk	%r3,%r4,%r1
	srak	%r5,%r2,0(%r3)
	tmll	%r5,1
	jne	.L1368
	ahik	%r5,%r1,1
	lr	%r1,%r5
	srk	%r3,%r4,%r5
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1368
	ahi	%r1,1
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1368
	ahik	%r1,%r5,2
	srk	%r3,%r4,%r1
	srak	%r3,%r2,0(%r3)
	tmll	%r3,1
	jne	.L1368
	ahik	%r1,%r5,3
	brct	%r0,.L1369
.L1368:
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
.L1379:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1378
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1378
	ahi	%r1,1
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1378
	ahik	%r1,%r0,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1378
	ahik	%r1,%r0,3
	brct	%r4,.L1379
.L1378:
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
	larl	%r5,.L1395
	keb	%f0,.L1396-.L1395(%r5)
	jhe	.L1394
	cgebr	%r2,5,%f0
	br	%r14
.L1394:
	seb	%f0,.L1396-.L1395(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1395:
.L1396:
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
	lhi	%r5,4
.L1398:
	srak	%r4,%r2,0(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,1(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	srak	%r4,%r2,2(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,3(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	ahi	%r3,4
	brct	%r5,.L1398
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
	lhi	%r5,4
.L1406:
	srak	%r4,%r2,0(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,1(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	srak	%r4,%r2,2(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,3(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	ahi	%r3,4
	brct	%r5,.L1406
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
	cgije	%r2,0,.L1414
.L1415:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srl	%r2,1
	sll	%r3,1
	cijlh	%r2,0,.L1415
.L1414:
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
	cgijlh	%r2,0,.L1425
	j	.L1420
.L1421:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r2
	ar	%r4,%r0
	risbgn	%r2,%r2,32,128+62,1
	srlg	%r3,%r3,1
.L1425:
	cgijlh	%r3,0,.L1421
.L1420:
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
	lhi	%r1,1
	lhi	%r0,16
	clrjhe	%r3,%r2,.L1445
.L1428:
	cijl	%r3,0,.L1429
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1429
	cijl	%r3,0,.L1429
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1429
	brct	%r0,.L1428
.L1437:
	lhi	%r0,0
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1429:
	cije	%r1,0,.L1437
.L1445:
	lhi	%r0,0
.L1433:
	clrjl	%r2,%r3,.L1432
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
.L1432:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1433
	ltgr	%r4,%r4
	locre	%r2,%r0
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
	lhi	%r2,0
	lhi	%r1,1
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
	lhi	%r2,0
	lhi	%r1,1
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
	cijl	%r3,0,.L1475
	lhi	%r0,0
.L1463:
	cgije	%r3,0,.L1468
	lhi	%r5,32
	lhi	%r4,0
	j	.L1465
.L1476:
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1464
.L1465:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srag	%r3,%r3,1
	jne	.L1476
.L1464:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L1475:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L1463
.L1468:
	lhi	%r4,0
	j	.L1464
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
	cgijl	%r2,0,.L1502
	lhi	%r5,0
.L1479:
	cgijhe	%r3,0,.L1480
	lcgr	%r3,%r3
	xilf	%r5,1
.L1480:
	lr	%r4,%r2
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1503
	lhi	%r3,1
	lhi	%r2,16
.L1481:
	cijl	%r1,0,.L1482
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1482
	cijl	%r1,0,.L1482
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1482
	brct	%r2,.L1481
.L1491:
	lhi	%r0,0
	llgfr	%r2,%r0
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1482:
	cije	%r3,0,.L1491
.L1500:
	lhi	%r0,0
.L1486:
	clrjl	%r4,%r1,.L1485
	sr	%r4,%r1
	or	%r0,%r3
.L1485:
	srl	%r3,1
	srl	%r1,1
	cijlh	%r3,0,.L1486
	llgfr	%r2,%r0
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1502:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1479
.L1503:
	lhi	%r3,1
	j	.L1500
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
	cgijl	%r2,0,.L1529
	lhi	%r5,0
.L1506:
	lr	%r4,%r2
	lpgr	%r3,%r3
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1530
	lhi	%r0,1
	lhi	%r2,16
.L1507:
	cijl	%r1,0,.L1528
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1528
	cijl	%r1,0,.L1528
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1528
	brct	%r2,.L1507
	llgfr	%r2,%r4
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1530:
	lhi	%r0,1
.L1521:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L1528:
	cijlh	%r0,0,.L1521
	llgfr	%r2,%r4
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1529:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1506
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
	lhi	%r5,8
	clrjhe	%r3,%r2,.L1534
.L1533:
	tmll	%r3,32768
	jne	.L1534
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1534
	tmll	%r3,32768
	jne	.L1534
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1534
	brct	%r5,.L1533
	lhi	%r1,0
.L1534:
	llhr	%r5,%r1
	tml	%r1,65535
	je	.L1542
	lhi	%r0,0
	j	.L1538
.L1550:
	llhr	%r5,%r5
.L1538:
	clrjl	%r2,%r3,.L1537
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
.L1537:
	srl	%r5,1
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cijlh	%r5,0,.L1550
	ltgr	%r4,%r4
	locre	%r2,%r0
	llghr	%r2,%r2
	br	%r14
.L1542:
	lr	%r0,%r1
	ltgr	%r4,%r4
	locre	%r2,%r0
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
	lhi	%r5,32
	clgrjhe	%r3,%r2,.L1570
.L1553:
	tmlh	%r3,32768
	jne	.L1554
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1554
	tmlh	%r3,32768
	jne	.L1554
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1554
	brct	%r5,.L1553
.L1562:
	lghi	%r0,0
	ltgr	%r4,%r4
	locgre	%r2,%r0
	br	%r14
.L1554:
	cgije	%r1,0,.L1562
.L1570:
	lghi	%r0,0
.L1558:
	clgrjl	%r2,%r3,.L1557
	sgr	%r2,%r3
	ogr	%r0,%r1
.L1557:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L1558
	ltgr	%r4,%r4
	locgre	%r2,%r0
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
	je	.L1574
	sllk	%r0,%r2,4064(%r3)
	lhi	%r4,0
.L1575:
	llgfr	%r2,%r4
	rosbg	%r2,%r0,0,31,32
.L1573:
	br	%r14
.L1574:
	cgije	%r3,0,.L1573
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	srag	%r2,%r2,32
	sll	%r2,0(%r3)
	or	%r0,%r2
	j	.L1575
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
	lg	%r3,8(%r3)
	tmll	%r4,64
	je	.L1580
	sllg	%r1,%r3,4032(%r4)
	lghi	%r3,0
.L1588:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1580:
	cgije	%r4,0,.L1588
	ldgr	%f0,%r12
	.cfi_register 12, 16
	sllg	%r5,%r3,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	srlg	%r0,%r3,0(%r12)
	sllg	%r4,%r1,0(%r4)
	ogr	%r4,%r0
	stg	%r4,0(%r2)
	stg	%r5,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
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
	je	.L1593
	srag	%r2,%r2,32
	srak	%r1,%r2,31
	sra	%r2,4064(%r3)
.L1594:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1592:
	br	%r14
.L1593:
	cgije	%r3,0,.L1592
	srag	%r4,%r2,32
	srak	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1594
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
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L1599
	srag	%r0,%r5,63
	srag	%r1,%r5,4032(%r4)
	lgr	%r5,%r0
.L1607:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1599:
	cgije	%r4,0,.L1607
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srag	%r3,%r5,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	sllg	%r0,%r5,0(%r12)
	srlg	%r4,%r1,0(%r4)
	ogr	%r4,%r0
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
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
	slbr	%r3,%r3
	lcr	%r0,%r3
	sll	%r0,4
	lhi	%r1,16
	sr	%r1,%r0
	srlk	%r1,%r2,0(%r1)
	risbg	%r2,%r1,48,128+55,0
	ahi	%r2,-1
	risbgn	%r5,%r2,60,128+60,64-28
	lhi	%r4,8
	sr	%r4,%r5
	srl	%r1,0(%r4)
	ar	%r0,%r5
	risbg	%r3,%r1,56,128+59,0
	ahi	%r3,-1
	risbgn	%r2,%r3,61,128+61,64-29
	lhi	%r5,4
	sr	%r5,%r2
	srl	%r1,0(%r5)
	ark	%r0,%r2,%r0
	risbg	%r4,%r1,60,128+61,0
	ahi	%r4,-1
	risbgn	%r3,%r4,62,128+62,64-30
	lhi	%r2,2
	srk	%r5,%r2,%r3
	srl	%r1,0(%r5)
	sr	%r2,%r1
	tmll	%r1,2
	lhi	%r1,0
	locrne	%r2,%r1
	ar	%r3,%r0
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
	lpgr	%r1,%r3
	aghi	%r1,-1
	srlg	%r1,%r1,63
	lay	%r4,-1(%r1)
	ngr	%r4,%r3
	ltgr	%r3,%r3
	lghi	%r0,0
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
	jl	.L1621
	jh	.L1622
	clr	%r2,%r3
	lhi	%r2,1
	lhi	%r0,2
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1621:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1622:
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
	jl	.L1628
	jh	.L1629
	clr	%r2,%r3
	lhi	%r2,1
	lhi	%r0,2
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1628:
	lhi	%r2,0
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1629:
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
	lg	%r1,8(%r3)
	lg	%r2,0(%r2)
	cg	%r2,0(%r3)
	jl	.L1635
	jh	.L1636
	clgr	%r4,%r1
	lhi	%r5,1
	lhi	%r0,2
	locrh	%r5,%r0
	lhi	%r3,0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1635:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1636:
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
	risbgn	%r4,%r3,59,128+59,64-27
	srlk	%r1,%r2,0(%r4)
	llcr	%r2,%r1
	ahi	%r2,-1
	risbgn	%r5,%r2,60,128+60,64-28
	srl	%r1,0(%r5)
	ar	%r4,%r5
	risbg	%r0,%r1,60,128+63,0
	ahi	%r0,-1
	risbgn	%r3,%r0,61,128+61,64-29
	srl	%r1,0(%r3)
	ark	%r4,%r3,%r4
	risbg	%r2,%r1,62,128+63,0
	ahi	%r2,-1
	risbgn	%r3,%r2,62,128+62,64-30
	srl	%r1,0(%r3)
	risbg	%r0,%r1,63,128+63,0
	xilf	%r0,1
	risbgn	%r1,%r1,64-1,128+63,62+1
	lhi	%r5,2
	srk	%r1,%r5,%r1
	lcr	%r2,%r0
	nr	%r2,%r1
	ar	%r3,%r4
	ar	%r2,%r3
	lgfr	%r2,%r2
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
	lg	%r4,8(%r2)
	lpgr	%r1,%r4
	aghi	%r1,-1
	srlg	%r1,%r1,63
	ltgr	%r4,%r4
	lghi	%r3,0
	locge	%r3,0(%r2)
	lgr	%r2,%r3
	lay	%r0,-1(%r1)
	ngr	%r0,%r4
	ogr	%r2,%r0
	lcgr	%r5,%r2
	ngr	%r2,%r5
	flogr	%r4,%r2
	lghi	%r3,63
	sgr	%r3,%r4
	sllk	%r4,%r1,6
	ar	%r4,%r3
	lgfr	%r2,%r4
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
	jne	.L1645
	lcgr	%r3,%r1
	ngr	%r3,%r1
	flogr	%r4,%r3
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
	lgfr	%r2,%r2
	br	%r14
.L1645:
	lcgr	%r0,%r4
	ngr	%r4,%r0
	flogr	%r4,%r4
	lghi	%r2,63
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
	je	.L1650
	risbgn	%r2,%r2,64-32,128+63,0+32
	srl	%r2,4064(%r3)
	lhi	%r1,0
.L1651:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1649:
	br	%r14
.L1650:
	cgije	%r3,0,.L1649
	risbgn	%r4,%r2,64-32,128+63,0+32
	srlk	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1651
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
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L1656
	srlg	%r1,%r5,4032(%r4)
	lghi	%r5,0
.L1664:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1656:
	cgije	%r4,0,.L1664
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlg	%r3,%r5,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	sllg	%r0,%r5,0(%r12)
	srlg	%r4,%r1,0(%r4)
	ogr	%r4,%r0
	stg	%r3,0(%r2)
	stg	%r4,8(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbg	%r4,%r2,48,128+63,0
	risbg	%r1,%r3,48,128+63,0
	lr	%r5,%r4
	msr	%r5,%r1
	srlk	%r12,%r5,16
	srlk	%r0,%r2,16
	msr	%r1,%r0
	ar	%r1,%r12
	llhr	%r2,%r1
	srl	%r3,16
	msr	%r4,%r3
	ar	%r4,%r2
	llhr	%r5,%r5
	sllk	%r12,%r4,16
	ar	%r5,%r12
	lghi	%r2,0
	lr	%r2,%r5
	srl	%r1,16
	msr	%r3,%r0
	ar	%r1,%r3
	srl	%r4,16
	ar	%r1,%r4
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	lgdr	%r12,%f0
	.cfi_restore 12
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r5,%r2
	risbg	%r4,%r2,48,128+63,0
	risbg	%r1,%r3,48,128+63,0
	lr	%r2,%r4
	msr	%r2,%r1
	srlk	%r0,%r2,16
	srlk	%r12,%r5,16
	msr	%r1,%r12
	ar	%r1,%r0
	llhr	%r0,%r1
	srlk	%r11,%r3,16
	msr	%r4,%r11
	ar	%r4,%r0
	llhr	%r2,%r2
	sllk	%r0,%r4,16
	ar	%r0,%r2
	lghi	%r2,0
	lr	%r2,%r0
	srl	%r1,16
	msr	%r12,%r11
	ar	%r1,%r12
	srl	%r4,16
	ar	%r1,%r4
	risbgn	%r2,%r1,0,0+32-1,64-0-32
	srag	%r1,%r3,32
	msr	%r1,%r5
	srag	%r4,%r2,32
	ar	%r1,%r4
	srag	%r5,%r5,32
	msr	%r3,%r5
	ar	%r3,%r1
	risbgn	%r2,%r3,0,64-32-1,32
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r5,%r3,32,128+63,0
	risbg	%r1,%r4,32,128+63,0
	lgr	%r11,%r5
	msgr	%r11,%r1
	srlg	%r0,%r11,32
	srlg	%r3,%r3,32
	msgr	%r1,%r3
	agr	%r1,%r0
	srlg	%r4,%r4,32
	msgr	%r5,%r4
	algfr	%r5,%r1
	sllg	%r0,%r5,32
	algfr	%r0,%r11
	srlg	%r1,%r1,32
	msgr	%r3,%r4
	agr	%r1,%r3
	srlg	%r5,%r5,32
	agr	%r1,%r5
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	lgdr	%r11,%f2
	.cfi_restore 11
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
	lg	%r10,8(%r3)
	lg	%r9,0(%r4)
	lg	%r12,8(%r4)
	lgr	%r4,%r12
	lgr	%r3,%r10
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
	stg	%r4,0(%r2)
	stg	%r5,8(%r2)
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
	.align	16
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
.LFB156:
	.cfi_startproc
	lg	%r1,8(%r2)
	xg	%r1,0(%r2)
	lr	%r3,%r1
	rxsbg	%r3,%r1,32,63,32
	rxsbg	%r3,%r3,48,63,48
	rxsbg	%r3,%r3,40,63,56
	rxsbg	%r3,%r3,36,63,60
	nilf	%r3,15
	lhi	%r0,27030
	sra	%r0,0(%r3)
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
	.align	16
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	larl	%r5,.L1692
	srlg	%r1,%r2,1
	ng	%r1,.L1693-.L1692(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L1694-.L1692(%r5)
	ng	%r2,.L1694-.L1692(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1695-.L1692(%r5)
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
.L1692:
.L1695:
	.quad	1085102592571150095
.L1694:
	.quad	3689348814741910323
.L1693:
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
	nilf	%r0,858993459
	nilf	%r2,858993459
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	srlg	%r1,%r3,1
	srlg	%r0,%r2,1
	llihf	%r12,1431655765
	oilf	%r12,1431655765
	ngrk	%r4,%r0,%r12
	ngrk	%r5,%r1,%r12
	slgr	%r3,%r5
	slbgr	%r2,%r4
	srlg	%r1,%r3,2
	srlg	%r0,%r2,2
	llihf	%r12,858993459
	oilf	%r12,858993459
	ngrk	%r4,%r0,%r12
	ngrk	%r5,%r1,%r12
	ngr	%r2,%r12
	ngr	%r3,%r12
	algr	%r5,%r3
	alcgr	%r4,%r2
	srlg	%r0,%r5,4
	rosbg	%r0,%r4,0,3,60
	srlg	%r12,%r4,4
	algr	%r0,%r5
	alcgr	%r12,%r4
	llihf	%r1,252645135
	oilf	%r1,252645135
	ngrk	%r5,%r12,%r1
	llihf	%r4,252645135
	oilf	%r4,252645135
	ngrk	%r2,%r0,%r4
	agr	%r5,%r2
	srlg	%r3,%r5,32
	ar	%r3,%r5
	srlk	%r0,%r3,16
	ar	%r0,%r3
	srlk	%r12,%r0,8
	ar	%r12,%r0
	llgcr	%r2,%r12
	lgdr	%r12,%f2
	.cfi_restore 12
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
	larl	%r5,.L1712
	ldr	%f2,%f0
	lgr	%r3,%r2
	ld	%f0,.L1713-.L1712(%r5)
	j	.L1704
.L1710:
	mdbr	%f2,%f2
.L1704:
	tmll	%r3,1
	je	.L1702
	mdbr	%f0,%f2
.L1702:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cijlh	%r1,0,.L1710
	cijl	%r2,0,.L1711
	br	%r14
.L1711:
	ld	%f4,.L1713-.L1712(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1712:
.L1713:
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
	larl	%r5,.L1725
	ler	%f2,%f0
	lgr	%r3,%r2
	le	%f0,.L1726-.L1725(%r5)
	j	.L1717
.L1723:
	meebr	%f2,%f2
.L1717:
	tmll	%r3,1
	je	.L1715
	meebr	%f0,%f2
.L1715:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cijlh	%r1,0,.L1723
	cijl	%r2,0,.L1724
	br	%r14
.L1724:
	le	%f4,.L1726-.L1725(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1725:
.L1726:
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
	jl	.L1729
	jh	.L1730
	clr	%r2,%r3
	lhi	%r2,1
	lhi	%r0,2
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1729:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1730:
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
	jl	.L1736
	jh	.L1737
	clr	%r2,%r3
	lhi	%r2,1
	lhi	%r0,2
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1736:
	lhi	%r2,0
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1737:
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
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	clc	0(8,%r2),0(%r3)
	jl	.L1743
	jh	.L1744
	clgr	%r4,%r1
	lhi	%r2,1
	lhi	%r0,2
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1743:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1744:
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
