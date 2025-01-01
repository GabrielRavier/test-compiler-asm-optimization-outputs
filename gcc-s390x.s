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
	clgrjle	%r2,%r3,.L7
	cgije	%r4,0,.L8
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L22
	cgije	%r1,1,.L35
	cgijlh	%r1,2,.L52
.L36:
	icy	%r1,-1(%r4,%r3)
	stcy	%r1,-1(%r4,%r2)
	aghi	%r4,-1
.L35:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	brctg	%r4,.L22
	br	%r14
.L7:
	cgrjlh	%r2,%r3,.L53
.L8:
	br	%r14
.L53:
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
	srlg	%r4,%r5,2
.L10:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	la	%r5,1(%r1)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,1(%r5,%r2)
	ic	%r0,2(%r5,%r3)
	stc	%r0,2(%r5,%r2)
	aghik	%r1,%r5,3
	brctg	%r4,.L10
	br	%r14
.L22:
	srlg	%r5,%r5,2
.L9:
	icy	%r1,-1(%r4,%r3)
	stcy	%r1,-1(%r4,%r2)
	lay	%r1,-1(%r4)
	icy	%r4,-2(%r4,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r4,-3(%r1,%r3)
	stcy	%r4,-3(%r1,%r2)
	aghik	%r4,%r1,-3
	brctg	%r5,.L9
	br	%r14
.L52:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
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
	cgije	%r5,0,.L77
	llcr	%r4,%r4
	lgr	%r0,%r5
	tmll	%r5,1
	je	.L65
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L78
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	aghi	%r5,-1
	je	.L77
.L65:
	srlg	%r0,%r0,1
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L78
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L58:
	aghik	%r12,%r5,-1
	lgr	%r5,%r12
	la	%r11,1(%r3)
	la	%r1,1(%r2)
	lgr	%r2,%r1
	llgc	%r3,1(%r3)
	stc	%r3,0(%r1)
	crje	%r4,%r3,.L74
	aghik	%r5,%r12,-1
	aghik	%r3,%r11,1
	aghik	%r2,%r1,1
	brctg	%r0,.L56
.L60:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L56:
	.cfi_restore_state
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	crjlh	%r4,%r12,.L58
.L74:
	cgije	%r5,0,.L60
	la	%r2,1(%r2)
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L78:
	cgije	%r5,0,.L77
	la	%r2,1(%r2)
	br	%r14
.L77:
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
	cgije	%r4,0,.L104
	llcr	%r3,%r3
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L93
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L105
	la	%r2,1(%r2)
	aghi	%r4,-1
	je	.L104
.L93:
	srlg	%r5,%r5,1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L105
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L87:
	la	%r1,1(%r2)
	lgr	%r2,%r1
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	llc	%r12,0(%r1)
	crje	%r12,%r3,.L101
	aghik	%r2,%r1,1
	aghik	%r4,%r0,-1
	brctg	%r5,.L85
.L90:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L85:
	.cfi_restore_state
	llc	%r1,0(%r2)
	crjlh	%r1,%r3,.L87
.L101:
	cgije	%r4,0,.L90
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L104:
	lghi	%r2,0
	br	%r14
.L105:
	cgije	%r4,0,.L104
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
	cgije	%r4,0,.L132
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L120
	clc	0(1,%r3),0(%r2)
	jne	.L133
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	aghi	%r4,-1
	je	.L132
.L120:
	srlg	%r0,%r0,1
	clc	0(1,%r3),0(%r2)
	jne	.L133
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L113:
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	la	%r5,1(%r2)
	lgr	%r2,%r5
	la	%r1,1(%r3)
	lgr	%r3,%r1
	clc	0(1,%r1),0(%r5)
	jne	.L129
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,1
	aghik	%r3,%r1,1
	brctg	%r0,.L111
.L115:
	lhi	%r4,0
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L111:
	.cfi_restore_state
	clc	0(1,%r3),0(%r2)
	je	.L113
.L129:
	cgije	%r4,0,.L115
	llc	%r4,0(%r2)
	llc	%r3,0(%r3)
	sr	%r4,%r3
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L133:
	cgijlh	%r4,0,.L138
.L132:
	lhi	%r2,0
.L135:
	lgfr	%r2,%r2
	br	%r14
.L138:
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
	j	.L135
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
	cgije	%r4,0,.L141
	brasl	%r14,memcpy@PLT
.L141:
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
	lay	%r5,-1(%r2,%r4)
	tmll	%r4,1
	je	.L152
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L147
.L152:
	srlg	%r0,%r4,1
	aghi	%r0,1
.L148:
	brctg	%r0,.L150
	lghi	%r2,0
.L147:
	br	%r14
.L150:
	lgr	%r2,%r5
	lay	%r5,-1(%r5)
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L157
	lgr	%r2,%r5
	lay	%r5,-1(%r5)
	llc	%r1,0(%r2)
	crjlh	%r1,%r3,.L148
	br	%r14
.L157:
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
	cgije	%r4,0,.L160
	la	%r0,0(%r4,%r2)
	lgr	%r5,%r2
	risbg	%r1,%r4,62,128+63,0
	je	.L170
	cgije	%r1,1,.L174
	cgije	%r1,2,.L175
	stc	%r3,0(%r2)
	la	%r5,1(%r2)
.L175:
	stc	%r3,0(%r5)
	la	%r5,1(%r5)
.L174:
	stc	%r3,0(%r5)
	la	%r5,1(%r5)
	cgrje	%r0,%r5,.L160
.L170:
	srlg	%r4,%r4,2
.L161:
	stc	%r3,0(%r5)
	stc	%r3,1(%r5)
	stc	%r3,2(%r5)
	stc	%r3,3(%r5)
	la	%r5,4(%r5)
	brctg	%r4,.L161
.L160:
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
	j	.L190
.L185:
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L190:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L185
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
	jne	.L193
	br	%r14
.L195:
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	ber	%r14
.L193:
	crjlh	%r1,%r3,.L195
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
.L203:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L202
	la	%r2,1(%r2)
	cijlh	%r1,0,.L203
	lghi	%r2,0
.L202:
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
	crje	%r0,%r5,.L207
	j	.L208
.L209:
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llcr	%r0,%r1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r0,%r5,.L208
.L207:
	cijlh	%r0,0,.L209
.L208:
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
	je	.L214
.L215:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L215
.L214:
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
	cgije	%r4,0,.L224
.L236:
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L221
	llc	%r1,0(%r3)
	cije	%r1,0,.L221
	brctg	%r4,.L231
.L221:
	llc	%r0,0(%r3)
	srk	%r2,%r5,%r0
	lgfr	%r2,%r2
	br	%r14
.L231:
	crjlh	%r1,%r5,.L221
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	j	.L236
.L224:
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
	cgijle	%r4,1,.L238
	nill	%r4,65534
	la	%r5,0(%r4,%r2)
	aghik	%r1,%r4,-2
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L247
	cgije	%r4,1,.L251
	cgije	%r4,2,.L252
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L252:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L251:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L238
.L247:
	srlg	%r5,%r0,2
.L240:
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
	brctg	%r5,.L240
.L238:
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
	cije	%r2,32,.L281
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L281:
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
	clijle	%r2,31,.L289
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L290
.L289:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L290:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L289
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
	clijle	%r2,254,.L301
	lhi	%r1,8231
	clrjle	%r2,%r1,.L299
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L299
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L299
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
.L299:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L301:
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
	clijle	%r1,9,.L305
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L305:
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
	jo	.L313
	kdbr	%f0,%f2
	jnh	.L316
	sdbr	%f0,%f2
	br	%r14
.L316:
	lzdr	%f0
	br	%r14
.L313:
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
	jo	.L322
	kebr	%f0,%f2
	jnh	.L325
	sebr	%f0,%f2
	br	%r14
.L325:
	lzer	%f0
	br	%r14
.L322:
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
	jo	.L335
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L329
	cijlh	%r1,0,.L335
	br	%r14
.L329:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L335
	ldr	%f2,%f0
.L335:
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
	jo	.L345
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L339
	cijlh	%r1,0,.L345
	br	%r14
.L339:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L345
	ler	%f2,%f0
.L345:
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
	jo	.L354
	cxbr	%f4,%f4
	jo	.L359
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L361
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
	je	.L351
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L352:
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
.L361:
	cije	%r1,0,.L359
.L354:
	lxr	%f0,%f4
.L359:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L351:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L352
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
	jo	.L369
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L365
	cije	%r1,0,.L369
	br	%r14
.L365:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L369:
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
	jo	.L379
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L375
	cije	%r1,0,.L379
	br	%r14
.L375:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L379:
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
	jo	.L395
	cxbr	%f0,%f0
	jo	.L390
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L397
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
	je	.L387
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L388:
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
.L397:
	cije	%r1,0,.L395
.L390:
	lxr	%f0,%f4
.L395:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L387:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L388
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
	cije	%r2,0,.L402
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L401:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	srl	%r1,6
	cijlh	%r1,0,.L401
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L402:
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
	cgije	%r3,0,.L416
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L416:
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
	je	.L419
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L419:
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
	je	.L429
	lgr	%r12,%r3
	lgr	%r11,%r8
	tmll	%r8,1
	jne	.L448
.L439:
	srlg	%r11,%r11,1
.L431:
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L428
	agr	%r12,%r10
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L428
	agr	%r12,%r10
	brctg	%r11,.L431
.L429:
	lg	%r1,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r1)
	msgr	%r8,%r10
	agrk	%r7,%r13,%r8
	cgije	%r10,0,.L428
	lgr	%r4,%r10
	lgr	%r3,%r9
	lgr	%r2,%r7
	brasl	%r14,memmove@PLT
.L428:
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
.L448:
	.cfi_restore_state
	lgr	%r7,%r3
	basr	%r14,%r6
	cije	%r2,0,.L428
	agrk	%r12,%r13,%r10
	cgijlh	%r8,1,.L439
	j	.L429
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
	ltg	%r13,0(%r4)
	je	.L451
	lgr	%r10,%r2
	lgr	%r7,%r3
	lgr	%r9,%r5
	lgr	%r12,%r3
	lgr	%r11,%r13
	tmll	%r13,1
	jne	.L467
.L458:
	srlg	%r13,%r11,1
.L453:
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L450
	agr	%r12,%r9
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L450
	agr	%r12,%r9
	brctg	%r13,.L453
.L451:
	lghi	%r8,0
.L450:
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
.L467:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L450
	agrk	%r12,%r7,%r9
	cgijlh	%r13,1,.L458
	lghi	%r8,0
	j	.L450
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
.L472:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L474
	ahik	%r1,%r3,-9
	slrk	%r1,%r5,%r1
	lhi	%r0,0
	alcr	%r0,%r0
	cije	%r0,0,.L486
.L474:
	la	%r2,1(%r2)
	j	.L472
.L486:
	cije	%r3,43,.L481
	cije	%r3,45,.L487
	lhi	%r5,0
	llc	%r4,0(%r2)
	ahik	%r3,%r4,-48
	clijle	%r3,9,.L477
.L478:
	lcr	%r2,%r0
	ltr	%r5,%r5
	locrne	%r2,%r0
	lgfr	%r2,%r2
	br	%r14
.L487:
	lhi	%r5,1
.L475:
	la	%r2,1(%r2)
	llc	%r4,0(%r2)
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L478
.L477:
	sllk	%r1,%r0,2
	ar	%r0,%r1
	sll	%r0,1
	la	%r2,1(%r2)
	ahi	%r4,-48
	sr	%r0,%r4
	llc	%r4,0(%r2)
	ahik	%r3,%r4,-48
	clijle	%r3,9,.L477
	lcr	%r2,%r0
	ltr	%r5,%r5
	locrne	%r2,%r0
	lgfr	%r2,%r2
	br	%r14
.L481:
	lhi	%r5,0
	j	.L475
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
.L490:
	llc	%r3,0(%r1)
	cli	0(%r1),32
	je	.L492
	ahik	%r2,%r3,-9
	slrk	%r2,%r0,%r2
	lhi	%r5,0
	alcr	%r5,%r5
	cije	%r5,0,.L506
.L492:
	la	%r1,1(%r1)
	j	.L490
.L506:
	cije	%r3,43,.L493
	cije	%r3,45,.L507
.L494:
	llc	%r0,0(%r1)
	ahik	%r4,%r0,-48
	lghi	%r2,0
	clijh	%r4,9,.L496
.L495:
	sllg	%r3,%r2,2
	agr	%r2,%r3
	sllg	%r2,%r2,1
	la	%r1,1(%r1)
	ahi	%r0,-48
	sgfr	%r2,%r0
	llc	%r0,0(%r1)
	ahik	%r4,%r0,-48
	clijle	%r4,9,.L495
.L496:
	lcgr	%r1,%r2
	ltr	%r5,%r5
	locgre	%r2,%r1
	br	%r14
.L507:
	lhi	%r5,1
.L493:
	la	%r1,1(%r1)
	j	.L494
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
	cgije	%r4,0,.L512
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L515
.L522:
	jle	.L511
	agrk	%r8,%r11,%r9
	aghi	%r12,-1
	sgr	%r12,%r10
	cgije	%r12,0,.L512
.L515:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	agr	%r11,%r8
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L522
	lgr	%r12,%r10
	cgijlh	%r12,0,.L515
.L512:
	lghi	%r11,0
.L511:
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
	cije	%r4,0,.L525
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L528
.L531:
	cijle	%r2,0,.L527
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
.L527:
	sra	%r12,1
	je	.L525
.L528:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	agr	%r11,%r9
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cijlh	%r2,0,.L531
.L524:
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
.L525:
	.cfi_restore_state
	lghi	%r11,0
	j	.L524
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
	j	.L556
.L559:
	crje	%r1,%r3,.L558
	la	%r2,4(%r2)
.L556:
	lt	%r1,0(%r2)
	jne	.L559
.L553:
	lghi	%r2,0
	br	%r14
.L558:
	cije	%r1,0,.L553
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
	crje	%r4,%r5,.L562
	j	.L563
.L573:
	cije	%r5,0,.L563
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L563
.L562:
	cijlh	%r4,0,.L573
.L563:
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
.L576:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L576
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
	je	.L580
.L581:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L581
.L580:
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
	cgije	%r4,0,.L609
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r4
	tmll	%r4,1
	jne	.L614
.L597:
	srlg	%r0,%r0,1
.L586:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L587
	cije	%r5,0,.L587
	aghik	%r11,%r4,-1
	lgr	%r4,%r11
	la	%r5,4(%r2)
	lgr	%r2,%r5
	la	%r1,4(%r3)
	lgr	%r3,%r1
	l	%r12,0(%r5)
	c	%r12,0(%r1)
	jne	.L587
	cije	%r12,0,.L587
	aghik	%r4,%r11,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L586
.L591:
	lhi	%r2,0
.L615:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L587:
	.cfi_restore_state
	cgije	%r4,0,.L591
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r11,-1
	locrnhe	%r2,%r11
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L614:
	.cfi_restore_state
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L587
	cije	%r1,0,.L587
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	aghi	%r4,-1
	jne	.L597
	lhi	%r2,0
	j	.L615
.L609:
	.cfi_restore 11
	.cfi_restore 12
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
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
	cgije	%r4,0,.L623
	lgr	%r5,%r4
	tmll	%r4,1
	jne	.L638
.L626:
	srlg	%r5,%r5,1
.L618:
	c	%r3,0(%r2)
	je	.L634
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	la	%r1,4(%r2)
	lgr	%r2,%r1
	c	%r3,0(%r1)
	je	.L634
	aghik	%r4,%r0,-1
	aghik	%r2,%r1,4
	brctg	%r5,.L618
.L623:
	lghi	%r2,0
.L617:
	br	%r14
.L638:
	c	%r3,0(%r2)
	je	.L634
	la	%r2,4(%r2)
	aghi	%r4,-1
	jne	.L626
	lghi	%r2,0
	br	%r14
.L634:
	cgije	%r4,0,.L623
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
	cgije	%r4,0,.L664
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r4
	tmll	%r4,1
	jne	.L669
.L652:
	srlg	%r0,%r0,1
.L641:
	clc	0(4,%r2),0(%r3)
	jne	.L661
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	la	%r5,4(%r2)
	lgr	%r2,%r5
	la	%r1,4(%r3)
	lgr	%r3,%r1
	clc	0(4,%r5),0(%r1)
	jne	.L661
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L641
.L646:
	lhi	%r2,0
.L670:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L661:
	.cfi_restore_state
	cgije	%r4,0,.L646
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r12,-1
	locrnhe	%r2,%r12
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L669:
	.cfi_restore_state
	clc	0(4,%r2),0(%r3)
	jne	.L661
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	aghi	%r4,-1
	jne	.L652
	lhi	%r2,0
	j	.L670
.L664:
	.cfi_restore 12
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
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
	cgije	%r4,0,.L673
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L673:
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
	cgrje	%r2,%r3,.L680
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjhe	%r0,%r5,.L724
	cgije	%r4,0,.L680
	sllg	%r4,%r1,2
	nihh	%r1,16383
	aghi	%r1,1
	risbg	%r5,%r1,62,128+63,0
	je	.L695
	cgije	%r5,1,.L711
	cgije	%r5,2,.L712
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
.L712:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	aghi	%r4,-4
.L711:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
	cgije	%r4,-4,.L680
.L695:
	srlg	%r1,%r1,2
.L683:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	aghik	%r5,%r4,-4
	ly	%r0,-4(%r4,%r3)
	sty	%r0,-4(%r4,%r2)
	ly	%r4,-8(%r4,%r3)
	sty	%r4,-4(%r5,%r2)
	ly	%r0,-8(%r5,%r3)
	sty	%r0,-8(%r5,%r2)
	aghik	%r4,%r5,-12
	brctg	%r1,.L683
	br	%r14
.L724:
	lghi	%r5,0
	cgije	%r4,0,.L680
	aghik	%r4,%r1,1
	risbg	%r0,%r4,62,128+63,0
	je	.L704
	cgije	%r0,1,.L709
	cgije	%r0,2,.L710
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	aghi	%r1,-1
	lghi	%r5,4
.L710:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r1,-1
	aghi	%r5,4
.L709:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
	cgije	%r1,0,.L680
.L704:
	srlg	%r4,%r4,2
.L682:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	aghik	%r1,%r5,4
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r5,8(%r5,%r3)
	st	%r5,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	aghik	%r5,%r1,12
	brctg	%r4,.L682
.L680:
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
	cgije	%r4,0,.L727
	lgr	%r1,%r2
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L737
	cgije	%r0,1,.L741
	cgije	%r0,2,.L742
	la	%r1,4(%r2)
	st	%r3,0(%r2)
	aghi	%r5,-1
.L742:
	st	%r3,0(%r1)
	la	%r1,4(%r1)
	aghi	%r5,-1
.L741:
	la	%r1,4(%r1)
	sty	%r3,-4(%r1)
	cgije	%r5,0,.L727
.L737:
	srlg	%r5,%r4,2
.L728:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	la	%r1,16(%r1)
	sty	%r3,-4(%r1)
	brctg	%r5,.L728
.L727:
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
	clgrjhe	%r2,%r3,.L751
	cgije	%r4,0,.L750
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L766
	cgije	%r1,1,.L779
	cgijlh	%r1,2,.L796
.L780:
	icy	%r1,-1(%r4,%r2)
	stcy	%r1,-1(%r4,%r3)
	aghi	%r4,-1
.L779:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r4,.L766
	br	%r14
.L751:
	cgrjlh	%r2,%r3,.L797
.L750:
	br	%r14
.L797:
	cgije	%r4,0,.L750
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L775
	cgije	%r0,1,.L781
	cgije	%r0,2,.L782
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L782:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L781:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L750
.L775:
	srlg	%r4,%r5,2
.L754:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	la	%r5,1(%r1)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r1,2(%r1,%r2)
	stc	%r1,1(%r5,%r3)
	ic	%r0,2(%r5,%r2)
	stc	%r0,2(%r5,%r3)
	aghik	%r1,%r5,3
	brctg	%r4,.L754
	br	%r14
.L766:
	srlg	%r5,%r5,2
.L753:
	icy	%r1,-1(%r4,%r2)
	stcy	%r1,-1(%r4,%r3)
	lay	%r1,-1(%r4)
	icy	%r4,-2(%r4,%r2)
	stcy	%r4,-1(%r1,%r3)
	icy	%r0,-2(%r1,%r2)
	stcy	%r0,-2(%r1,%r3)
	icy	%r4,-3(%r1,%r2)
	stcy	%r4,-3(%r1,%r3)
	aghik	%r4,%r1,-3
	brctg	%r5,.L753
	br	%r14
.L796:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
	j	.L780
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
	lhi	%r5,8
.L828:
	srlk	%r4,%r2,0(%r1)
	ahik	%r3,%r1,1
	lr	%r1,%r3
	tmll	%r4,1
	jne	.L827
	srlk	%r0,%r2,0(%r3)
	ahik	%r1,%r3,1
	tmll	%r0,1
	jne	.L827
	srlk	%r4,%r2,0(%r1)
	ahik	%r1,%r3,2
	tmll	%r4,1
	jne	.L827
	srlk	%r0,%r2,0(%r1)
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L827
	brct	%r5,.L828
	lhi	%r1,0
.L827:
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
	cgije	%r2,0,.L843
	risbg	%r3,%r2,63,128+63,0
	jne	.L841
	lhi	%r3,1
.L842:
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	ahi	%r3,1
	tmll	%r1,1
	je	.L842
.L841:
	lgfr	%r2,%r3
	br	%r14
.L843:
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
	larl	%r5,.L852
	keb	%f0,.L853-.L852(%r5)
	jl	.L850
	keb	%f0,.L854-.L852(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L850:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L852:
.L854:
	.long	2139095039
.L853:
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
	larl	%r5,.L860
	kdb	%f0,.L861-.L860(%r5)
	jl	.L858
	kdb	%f0,.L862-.L860(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L858:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L860:
.L862:
	.long	2146435071
	.long	-1
.L861:
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
	larl	%r5,.L868
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L869-.L868(%r5)
	ld	%f6,.L869-.L868+8(%r5)
	kxbr	%f0,%f4
	jl	.L866
	ld	%f4,.L870-.L868(%r5)
	ld	%f6,.L870-.L868+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L866:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L868:
.L870:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L869:
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
	larl	%r5,.L888
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L886
	le	%f4,.L889-.L888(%r5)
	j	.L877
.L887:
	meebr	%f4,%f4
.L877:
	tmll	%r2,1
	je	.L876
	meebr	%f0,%f4
.L876:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cijlh	%r1,0,.L887
	br	%r14
.L886:
	le	%f4,.L890-.L888(%r5)
	j	.L877
	.section	.rodata
	.align	8
.L888:
.L890:
	.long	1056964608
.L889:
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
	larl	%r5,.L906
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L904
	ld	%f4,.L907-.L906(%r5)
	j	.L895
.L905:
	mdbr	%f4,%f4
.L895:
	tmll	%r2,1
	je	.L894
	mdbr	%f0,%f4
.L894:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cijlh	%r1,0,.L905
	br	%r14
.L904:
	ld	%f4,.L908-.L906(%r5)
	j	.L895
	.section	.rodata
	.align	8
.L906:
.L908:
	.long	1071644672
	.long	0
.L907:
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
	larl	%r5,.L924
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L910
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L910
	cijl	%r4,0,.L922
	ld	%f0,.L925-.L924(%r5)
	ld	%f2,.L925-.L924+8(%r5)
	j	.L913
.L923:
	mxbr	%f0,%f0
.L913:
	tmll	%r4,1
	je	.L912
	mxbr	%f4,%f0
.L912:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cijlh	%r1,0,.L923
.L910:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L922:
	ld	%f0,.L926-.L924(%r5)
	ld	%f2,.L926-.L924+8(%r5)
	j	.L913
	.section	.rodata
	.align	8
.L924:
.L926:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L925:
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
	cgije	%r4,0,.L951
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L938
	cgije	%r5,1,.L942
	cgije	%r5,2,.L943
	la	%r1,1(%r2)
	lgr	%r12,%r3
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L943:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r3,1(%r3)
	xr	%r5,%r12
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L942:
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	llgc	%r5,-1(%r1)
	llgc	%r12,-1(%r3)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	cgrje	%r0,%r3,.L928
.L938:
	srlg	%r4,%r4,2
.L929:
	xc	0(3,%r1),0(%r3)
	la	%r3,4(%r3)
	la	%r1,4(%r1)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L929
.L928:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L951:
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
	je	.L956
.L957:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L957
.L956:
	cgije	%r4,0,.L979
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L968
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L980
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
	je	.L979
.L968:
	srlg	%r0,%r0,1
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L980
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L960:
	la	%r11,1(%r3)
	la	%r5,1(%r1)
	lgr	%r1,%r5
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	llgc	%r3,1(%r3)
	stc	%r3,0(%r5)
	cgije	%r3,0,.L976
	aghik	%r3,%r11,1
	aghik	%r1,%r5,1
	aghik	%r4,%r12,-1
	brctg	%r0,.L958
	mvi	0(%r1),0
.L961:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L958:
	.cfi_restore_state
	llgc	%r11,0(%r3)
	stc	%r11,0(%r1)
	cgijlh	%r11,0,.L960
.L976:
	cgijlh	%r4,0,.L961
	mvi	0(%r1),0
	j	.L961
.L980:
	.cfi_restore 11
	.cfi_restore 12
	cgijlh	%r4,0,.L981
.L979:
	mvi	0(%r1),0
	br	%r14
.L981:
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
	cgije	%r3,0,.L1013
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L997
	cgije	%r5,1,.L1008
	cgije	%r5,2,.L1009
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1009:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1008:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrjlh	%r3,%r2,.L997
	br	%r14
.L997:
	srlg	%r0,%r4,2
.L986:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	aghik	%r4,%r2,1
	lgr	%r2,%r4
	la	%r5,0(%r4,%r1)
	cli	0(%r5),0
	ber	%r14
	aghik	%r2,%r4,1
	la	%r3,1(%r4,%r1)
	cli	0(%r3),0
	ber	%r14
	aghik	%r2,%r4,2
	la	%r5,2(%r4,%r1)
	cli	0(%r5),0
	ber	%r14
	aghik	%r2,%r4,3
	brctg	%r0,.L986
	br	%r14
.L1013:
	lghi	%r2,0
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
	je	.L1022
.L1026:
	lgr	%r1,%r3
	j	.L1021
.L1020:
	la	%r1,1(%r1)
	crje	%r4,%r5,.L1019
.L1021:
	llc	%r4,0(%r1)
	cijlh	%r4,0,.L1020
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1026
.L1022:
	lghi	%r2,0
.L1019:
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
.L1030:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1030
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
	je	.L1035
.L1036:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L1036
.L1035:
	slgr	%r1,%r3
	jhe	.L1037
	aghik	%r10,%r1,-1
	j	.L1043
.L1061:
	la	%r2,1(%r2)
	cije	%r0,0,.L1060
.L1043:
	llc	%r0,0(%r2)
	crjlh	%r0,%r11,.L1061
	cgije	%r2,0,.L1037
	llc	%r12,0(%r2)
	lgr	%r4,%r3
	cli	0(%r2),0
	je	.L1039
	lgr	%r1,%r2
	aghik	%r5,%r10,1
.L1040:
	llc	%r0,0(%r4)
	cije	%r0,0,.L1039
	brctg	%r5,.L1055
.L1039:
	llc	%r0,0(%r4)
	crje	%r0,%r12,.L1037
	la	%r2,1(%r2)
	j	.L1043
.L1055:
	crjlh	%r0,%r12,.L1039
	la	%r1,1(%r1)
	la	%r4,1(%r4)
	llc	%r12,0(%r1)
	cli	0(%r1),0
	jne	.L1040
	j	.L1039
.L1060:
	lghi	%r2,0
.L1037:
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
	jl	.L1072
.L1064:
	lzdr	%f6
	kdbr	%f0,%f6
	jnh	.L1067
	kdbr	%f2,%f6
	jl	.L1066
.L1067:
	br	%r14
.L1072:
	kdbr	%f2,%f4
	jnh	.L1064
.L1066:
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
	lgr	%r1,%r2
	cgije	%r5,0,.L1082
	clgrjl	%r3,%r5,.L1083
	ldgr	%f5,%r6
	.cfi_register 6, 22
	ldgr	%f3,%r7
	.cfi_register 7, 21
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	sgrk	%r8,%r3,%r5
	algr	%r8,%r2
	jnle	.L1084
	llc	%r7,0(%r4)
	j	.L1081
.L1076:
	clgrjh	%r1,%r8,.L1084
.L1081:
	ic	%r3,0(%r1)
	lgr	%r2,%r1
	la	%r1,1(%r1)
	llcr	%r0,%r3
	crjlh	%r0,%r7,.L1076
	la	%r3,1(%r4)
	lgr	%r0,%r5
	aghi	%r0,-1
	je	.L1074
	lgr	%r12,%r1
	lgr	%r9,%r0
	tmll	%r0,1
	je	.L1093
	clc	1(1,%r4),0(%r1)
	jne	.L1101
	la	%r12,1(%r1)
	la	%r3,1(%r3)
	aghi	%r0,-1
	je	.L1074
.L1093:
	srlg	%r9,%r9,1
.L1077:
	clc	0(1,%r3),0(%r12)
	jne	.L1101
	aghik	%r6,%r0,-1
	lgr	%r0,%r6
	la	%r10,1(%r12)
	lgr	%r12,%r10
	la	%r11,1(%r3)
	lgr	%r3,%r11
	clc	0(1,%r11),0(%r10)
	jne	.L1101
	aghik	%r0,%r6,-1
	aghik	%r12,%r10,1
	aghik	%r3,%r11,1
	brctg	%r9,.L1077
.L1074:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	lgdr	%r8,%f1
	.cfi_restore 8
	lgdr	%r7,%f3
	.cfi_restore 7
	lgdr	%r6,%f5
	.cfi_restore 6
	br	%r14
.L1101:
	.cfi_restore_state
	cgije	%r0,0,.L1074
	clc	0(1,%r3),0(%r12)
	je	.L1074
	clgrjle	%r1,%r8,.L1081
.L1084:
	lghi	%r2,0
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
	lgdr	%r7,%f3
	.cfi_restore 7
	lgdr	%r6,%f5
	.cfi_restore 6
	br	%r14
.L1082:
	br	%r14
.L1083:
	lghi	%r2,0
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
	cgije	%r4,0,.L1110
	brasl	%r14,memmove@PLT
.L1110:
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
	larl	%r5,.L1144
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1142
	lhi	%r3,0
	kdb	%f0,.L1145-.L1144(%r5)
	jnhe	.L1138
.L1143:
	lhi	%r1,0
.L1121:
	ahi	%r1,1
	mdb	%f0,.L1146-.L1144(%r5)
	kdb	%f0,.L1145-.L1144(%r5)
	jhe	.L1121
.L1122:
	st	%r1,0(%r2)
	cije	%r3,0,.L1125
	lcdbr	%f0,%f0
.L1125:
	br	%r14
.L1142:
	lcdbr	%f0,%f0
	lhi	%r3,1
	kdb	%f0,.L1145-.L1144(%r5)
	jhe	.L1143
.L1138:
	kdb	%f0,.L1146-.L1144(%r5)
	jnl	.L1139
	lzdr	%f4
	lhi	%r1,0
	cdbr	%f0,%f4
	je	.L1122
.L1124:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1146-.L1144(%r5)
	jnl	.L1122
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1146-.L1144(%r5)
	jl	.L1124
	j	.L1122
.L1139:
	lhi	%r1,0
	j	.L1122
	.section	.rodata
	.align	8
.L1144:
.L1146:
	.long	1071644672
	.long	0
.L1145:
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
	cgije	%r4,0,.L1150
.L1149:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L1149
	br	%r14
.L1150:
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
	clrjhe	%r3,%r2,.L1171
.L1154:
	cijl	%r3,0,.L1155
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1155
	cijl	%r3,0,.L1155
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1155
	brct	%r0,.L1154
.L1163:
	lhi	%r0,0
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1155:
	cije	%r1,0,.L1163
.L1171:
	lhi	%r0,0
.L1159:
	clrjl	%r2,%r3,.L1158
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
.L1158:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1159
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
	cgije	%r2,0,.L1183
.L1184:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L1184
.L1183:
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
	srlk	%r5,%r4,3
	risbg	%r1,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L1189
	agrk	%r0,%r3,%r4
	clgrjle	%r2,%r0,.L1256
.L1189:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1192
	risbgn	%r12,%r5,32,128+60,3
	lghi	%r5,0
	aghik	%r11,%r12,-8
	srlg	%r0,%r11,3
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1217
	cgije	%r11,1,.L1233
	cgije	%r11,2,.L1234
	lg	%r5,0(%r3)
	stg	%r5,0(%r2)
	lghi	%r5,8
.L1234:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L1233:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
	cgrje	%r12,%r5,.L1192
.L1217:
	srlg	%r0,%r0,2
.L1193:
	lg	%r12,0(%r5,%r3)
	stg	%r12,0(%r5,%r2)
	aghik	%r12,%r5,8
	lg	%r11,8(%r5,%r3)
	stg	%r11,8(%r5,%r2)
	lg	%r5,16(%r5,%r3)
	stg	%r5,8(%r12,%r2)
	lg	%r11,16(%r12,%r3)
	stg	%r11,16(%r12,%r2)
	aghik	%r5,%r12,24
	brctg	%r0,.L1193
.L1192:
	clrjhe	%r1,%r4,.L1188
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1188
	cije	%r11,0,.L1208
	cije	%r11,1,.L1236
	cijlh	%r11,2,.L1257
.L1237:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1236:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1188
.L1208:
	srlk	%r4,%r5,2
.L1194:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	la	%r11,1(%r1)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,1(%r11,%r2)
	ic	%r12,2(%r11,%r3)
	stc	%r12,2(%r11,%r2)
	aghik	%r1,%r11,3
	brct	%r4,.L1194
.L1188:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1256:
	ahik	%r1,%r4,-1
	llgfr	%r5,%r1
	lgr	%r1,%r5
	cgije	%r4,0,.L1254
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1226
	cgije	%r0,1,.L1231
	cgije	%r0,2,.L1232
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1232:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1231:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1254
.L1226:
	srlg	%r4,%r4,2
.L1195:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lay	%r5,-1(%r1)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r1,-2(%r1,%r3)
	stcy	%r1,-1(%r5,%r2)
	icy	%r0,-2(%r5,%r3)
	stcy	%r0,-2(%r5,%r2)
	aghik	%r1,%r5,-3
	brctg	%r4,.L1195
	br	%r14
.L1254:
	br	%r14
.L1257:
	.cfi_register 11, 17
	.cfi_register 12, 16
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	j	.L1237
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
	clgrjl	%r2,%r3,.L1260
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1314
.L1260:
	cije	%r1,0,.L1310
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r0,%r1,32,128+62,1
	lghi	%r1,0
	aghik	%r12,%r0,-2
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1278
	cgije	%r12,1,.L1294
	cgije	%r12,2,.L1295
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L1295:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1294:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L1263
.L1278:
	srlg	%r5,%r5,2
.L1264:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	la	%r12,2(%r1)
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r1,4(%r1,%r3)
	sth	%r1,2(%r12,%r2)
	lh	%r0,4(%r12,%r3)
	sth	%r0,4(%r12,%r2)
	aghik	%r1,%r12,6
	brctg	%r5,.L1264
.L1263:
	tmll	%r4,1
	je	.L1259
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1259:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1314:
	ahik	%r0,%r4,-1
	llgfr	%r5,%r0
	lgr	%r1,%r5
	cgije	%r4,0,.L1309
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1287
	cgije	%r0,1,.L1292
	cgije	%r0,2,.L1293
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1293:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1292:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1309
.L1287:
	srlg	%r4,%r4,2
.L1265:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lay	%r5,-1(%r1)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r1,-2(%r1,%r3)
	stcy	%r1,-1(%r5,%r2)
	icy	%r0,-2(%r5,%r3)
	stcy	%r0,-2(%r5,%r2)
	aghik	%r1,%r5,-3
	brctg	%r4,.L1265
	br	%r14
.L1310:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1309:
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
	srlk	%r5,%r4,2
	risbg	%r1,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L1317
	agrk	%r0,%r3,%r4
	clgrjle	%r2,%r0,.L1384
.L1317:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1320
	risbgn	%r12,%r5,32,128+61,2
	lghi	%r5,0
	aghik	%r11,%r12,-4
	srlg	%r0,%r11,2
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1345
	cgije	%r11,1,.L1361
	cgije	%r11,2,.L1362
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lghi	%r5,4
.L1362:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1361:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
	cgrje	%r12,%r5,.L1320
.L1345:
	srlg	%r0,%r0,2
.L1321:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	aghik	%r12,%r5,4
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r5,8(%r5,%r3)
	st	%r5,4(%r12,%r2)
	l	%r11,8(%r12,%r3)
	st	%r11,8(%r12,%r2)
	aghik	%r5,%r12,12
	brctg	%r0,.L1321
.L1320:
	clrjhe	%r1,%r4,.L1316
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1316
	cije	%r11,0,.L1336
	cije	%r11,1,.L1364
	cijlh	%r11,2,.L1385
.L1365:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1364:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1316
.L1336:
	srlk	%r4,%r5,2
.L1322:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	la	%r11,1(%r1)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,1(%r11,%r2)
	ic	%r12,2(%r11,%r3)
	stc	%r12,2(%r11,%r2)
	aghik	%r1,%r11,3
	brct	%r4,.L1322
.L1316:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1384:
	ahik	%r1,%r4,-1
	llgfr	%r5,%r1
	lgr	%r1,%r5
	cgije	%r4,0,.L1382
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1354
	cgije	%r0,1,.L1359
	cgije	%r0,2,.L1360
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1360:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1359:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1382
.L1354:
	srlg	%r4,%r4,2
.L1323:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lay	%r5,-1(%r1)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r1,-2(%r1,%r3)
	stcy	%r1,-1(%r5,%r2)
	icy	%r0,-2(%r5,%r3)
	stcy	%r0,-2(%r5,%r2)
	aghik	%r1,%r5,-3
	brctg	%r4,.L1323
	br	%r14
.L1382:
	br	%r14
.L1385:
	.cfi_register 11, 17
	.cfi_register 12, 16
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	j	.L1365
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
	lhi	%r5,15
	lhi	%r0,4
.L1401:
	srk	%r3,%r5,%r1
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L1400
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srk	%r4,%r5,%r3
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1400
	ahik	%r1,%r3,1
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1400
	ahik	%r1,%r3,2
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1400
	ahik	%r1,%r3,3
	brct	%r0,.L1401
.L1400:
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
.L1411:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1410
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srak	%r5,%r2,0(%r3)
	tmll	%r5,1
	jne	.L1410
	ahik	%r1,%r3,1
	srak	%r0,%r2,0(%r1)
	tmll	%r0,1
	jne	.L1410
	ahik	%r1,%r3,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1410
	ahik	%r1,%r3,3
	brct	%r4,.L1411
.L1410:
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
	larl	%r5,.L1427
	keb	%f0,.L1428-.L1427(%r5)
	jhe	.L1426
	cgebr	%r2,5,%f0
	br	%r14
.L1426:
	seb	%f0,.L1428-.L1427(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1427:
.L1428:
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
.L1430:
	srak	%r4,%r2,0(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	ahi	%r3,1
	srak	%r0,%r2,0(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	srak	%r4,%r2,1(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,2(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	ahi	%r3,3
	brct	%r5,.L1430
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
.L1438:
	srak	%r4,%r2,0(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	ahi	%r3,1
	srak	%r0,%r2,0(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	srak	%r4,%r2,1(%r3)
	nilf	%r4,1
	ar	%r1,%r4
	srak	%r0,%r2,2(%r3)
	nilf	%r0,1
	ar	%r1,%r0
	ahi	%r3,3
	brct	%r5,.L1438
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
	cgije	%r2,0,.L1446
.L1447:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srl	%r2,1
	sll	%r3,1
	cijlh	%r2,0,.L1447
.L1446:
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
	cgijlh	%r2,0,.L1457
	j	.L1452
.L1453:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r2
	ar	%r4,%r0
	risbgn	%r2,%r2,32,128+62,1
	srlg	%r3,%r3,1
.L1457:
	cgijlh	%r3,0,.L1453
.L1452:
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
	clrjhe	%r3,%r2,.L1477
.L1460:
	cijl	%r3,0,.L1461
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1461
	cijl	%r3,0,.L1461
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1461
	brct	%r0,.L1460
.L1469:
	lhi	%r0,0
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1461:
	cije	%r1,0,.L1469
.L1477:
	lhi	%r0,0
.L1465:
	clrjl	%r2,%r3,.L1464
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
.L1464:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1465
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
	cijl	%r3,0,.L1507
	lhi	%r0,0
.L1495:
	cgije	%r3,0,.L1500
	lhi	%r5,32
	lhi	%r4,0
	j	.L1497
.L1508:
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1496
.L1497:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srag	%r3,%r3,1
	jne	.L1508
.L1496:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L1507:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L1495
.L1500:
	lhi	%r4,0
	j	.L1496
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
	cgijl	%r2,0,.L1534
	lhi	%r5,0
.L1511:
	cgijhe	%r3,0,.L1512
	lcgr	%r3,%r3
	xilf	%r5,1
.L1512:
	lr	%r4,%r2
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1535
	lhi	%r3,1
	lhi	%r2,16
.L1513:
	cijl	%r1,0,.L1514
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1514
	cijl	%r1,0,.L1514
	sll	%r1,1
	sll	%r3,1
	clrjle	%r4,%r1,.L1514
	brct	%r2,.L1513
.L1523:
	lhi	%r0,0
	llgfr	%r2,%r0
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1514:
	cije	%r3,0,.L1523
.L1532:
	lhi	%r0,0
.L1518:
	clrjl	%r4,%r1,.L1517
	sr	%r4,%r1
	or	%r0,%r3
.L1517:
	srl	%r3,1
	srl	%r1,1
	cijlh	%r3,0,.L1518
	llgfr	%r2,%r0
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1534:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1511
.L1535:
	lhi	%r3,1
	j	.L1532
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
	cgijl	%r2,0,.L1561
	lhi	%r5,0
.L1538:
	lr	%r4,%r2
	lpgr	%r3,%r3
	lr	%r1,%r3
	clrjle	%r2,%r3,.L1562
	lhi	%r0,1
	lhi	%r2,16
.L1539:
	cijl	%r1,0,.L1560
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1560
	cijl	%r1,0,.L1560
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L1560
	brct	%r2,.L1539
	llgfr	%r2,%r4
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1562:
	lhi	%r0,1
.L1553:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L1560:
	cijlh	%r0,0,.L1553
	llgfr	%r2,%r4
	lcgr	%r4,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r4
	br	%r14
.L1561:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L1538
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
	clrjhe	%r3,%r2,.L1566
.L1565:
	tmll	%r3,32768
	jne	.L1566
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1566
	tmll	%r3,32768
	jne	.L1566
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1566
	brct	%r5,.L1565
	lhi	%r1,0
.L1566:
	llhr	%r5,%r1
	tml	%r1,65535
	je	.L1574
	lhi	%r0,0
	j	.L1570
.L1582:
	llhr	%r5,%r5
.L1570:
	clrjl	%r2,%r3,.L1569
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
.L1569:
	srl	%r5,1
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cijlh	%r5,0,.L1582
	ltgr	%r4,%r4
	locre	%r2,%r0
	llghr	%r2,%r2
	br	%r14
.L1574:
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
	clgrjhe	%r3,%r2,.L1602
.L1585:
	tmlh	%r3,32768
	jne	.L1586
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1586
	tmlh	%r3,32768
	jne	.L1586
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1586
	brct	%r5,.L1585
.L1594:
	lghi	%r0,0
	ltgr	%r4,%r4
	locgre	%r2,%r0
	br	%r14
.L1586:
	cgije	%r1,0,.L1594
.L1602:
	lghi	%r0,0
.L1590:
	clgrjl	%r2,%r3,.L1589
	sgr	%r2,%r3
	ogr	%r0,%r1
.L1589:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L1590
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
	je	.L1606
	sllk	%r0,%r2,4064(%r3)
	lhi	%r4,0
.L1607:
	llgfr	%r2,%r4
	rosbg	%r2,%r0,0,31,32
.L1605:
	br	%r14
.L1606:
	cgije	%r3,0,.L1605
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	srag	%r2,%r2,32
	sll	%r2,0(%r3)
	or	%r0,%r2
	j	.L1607
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
	je	.L1612
	sllg	%r1,%r3,4032(%r4)
	lghi	%r3,0
.L1620:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1612:
	cgije	%r4,0,.L1620
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
	je	.L1625
	srag	%r2,%r2,32
	srak	%r1,%r2,31
	sra	%r2,4064(%r3)
.L1626:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1624:
	br	%r14
.L1625:
	cgije	%r3,0,.L1624
	srag	%r4,%r2,32
	srak	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1626
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
	je	.L1631
	srag	%r0,%r5,63
	srag	%r1,%r5,4032(%r4)
	lgr	%r5,%r0
.L1639:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1631:
	cgije	%r4,0,.L1639
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
	jl	.L1653
	jh	.L1654
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1653:
	lhi	%r3,0
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1654:
	lhi	%r3,2
	risbg	%r2,%r3,62,128+63,0
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
	jl	.L1660
	jh	.L1661
	clr	%r2,%r3
	lhi	%r0,1
	lhi	%r2,2
	locrh	%r0,%r2
	lhi	%r3,0
	locrhe	%r3,%r0
	ahi	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L1660:
	lhi	%r3,0
	ahi	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L1661:
	lhi	%r3,2
	ahi	%r3,-1
	lgfr	%r2,%r3
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
	jl	.L1667
	jh	.L1668
	clgr	%r4,%r1
	lhi	%r5,1
	lhi	%r3,2
	locrh	%r5,%r3
	lhi	%r0,0
	locrnhe	%r5,%r0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1667:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1668:
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
	jne	.L1677
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
.L1677:
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
	je	.L1682
	risbgn	%r2,%r2,64-32,128+63,0+32
	srl	%r2,4064(%r3)
	lhi	%r1,0
.L1683:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1681:
	br	%r14
.L1682:
	cgije	%r3,0,.L1681
	risbgn	%r4,%r2,64-32,128+63,0+32
	srlk	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1683
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
	je	.L1688
	srlg	%r1,%r5,4032(%r4)
	lghi	%r5,0
.L1696:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1688:
	cgije	%r4,0,.L1696
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
	larl	%r5,.L1724
	srlg	%r1,%r2,1
	ng	%r1,.L1725-.L1724(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L1726-.L1724(%r5)
	ng	%r2,.L1726-.L1724(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1727-.L1724(%r5)
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
.L1724:
.L1727:
	.quad	1085102592571150095
.L1726:
	.quad	3689348814741910323
.L1725:
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
	larl	%r5,.L1744
	ldr	%f2,%f0
	lgr	%r3,%r2
	ld	%f0,.L1745-.L1744(%r5)
	j	.L1736
.L1742:
	mdbr	%f2,%f2
.L1736:
	tmll	%r3,1
	je	.L1734
	mdbr	%f0,%f2
.L1734:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cijlh	%r1,0,.L1742
	cijl	%r2,0,.L1743
	br	%r14
.L1743:
	ld	%f4,.L1745-.L1744(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1744:
.L1745:
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
	larl	%r5,.L1757
	ler	%f2,%f0
	lgr	%r3,%r2
	le	%f0,.L1758-.L1757(%r5)
	j	.L1749
.L1755:
	meebr	%f2,%f2
.L1749:
	tmll	%r3,1
	je	.L1747
	meebr	%f0,%f2
.L1747:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cijlh	%r1,0,.L1755
	cijl	%r2,0,.L1756
	br	%r14
.L1756:
	le	%f4,.L1758-.L1757(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1757:
.L1758:
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
	jl	.L1761
	jh	.L1762
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1761:
	lhi	%r3,0
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1762:
	lhi	%r3,2
	risbg	%r2,%r3,62,128+63,0
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
	jl	.L1768
	jh	.L1769
	clr	%r2,%r3
	lhi	%r0,1
	lhi	%r2,2
	locrh	%r0,%r2
	lhi	%r3,0
	locrhe	%r3,%r0
	ahi	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L1768:
	lhi	%r3,0
	ahi	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L1769:
	lhi	%r3,2
	ahi	%r3,-1
	lgfr	%r2,%r3
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
	jl	.L1775
	jh	.L1776
	clgr	%r4,%r1
	lhi	%r2,1
	lhi	%r3,2
	locrh	%r2,%r3
	lhi	%r0,0
	locrnhe	%r2,%r0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1775:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1776:
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
