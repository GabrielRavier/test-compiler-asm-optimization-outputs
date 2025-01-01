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
	je	.L18
	cgije	%r1,1,.L31
	cgije	%r1,2,.L32
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L32:
	icy	%r1,-1(%r4,%r3)
	stcy	%r1,-1(%r4,%r2)
	aghi	%r4,-1
.L31:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	brctg	%r4,.L18
	br	%r14
.L18:
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
.L7:
	cgrje	%r2,%r3,.L8
	cgije	%r4,0,.L8
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L27
	cgije	%r0,1,.L33
	cgije	%r0,2,.L34
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L34:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L33:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgrje	%r1,%r4,.L8
.L27:
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
.L8:
	br	%r14
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
	cgije	%r5,0,.L58
	llcr	%r4,%r4
	lgr	%r0,%r5
	tmll	%r5,1
	je	.L50
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L58
	aghi	%r3,1
	aghi	%r2,1
	aghi	%r5,-1
	je	.L58
.L50:
	srlg	%r0,%r0,1
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L58
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L45
.L43:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	crje	%r4,%r12,.L44
.L45:
	aghik	%r12,%r5,-1
	lgr	%r5,%r12
	aghik	%r11,%r3,1
	aghik	%r1,%r2,1
	lgr	%r2,%r1
	llgc	%r3,1(%r3)
	stc	%r3,0(%r1)
	crje	%r4,%r3,.L44
	aghik	%r5,%r12,-1
	aghik	%r3,%r11,1
	aghik	%r2,%r1,1
	brctg	%r0,.L43
.L44:
	aghi	%r2,1
	ltgr	%r5,%r5
	lghi	%r5,0
	locgre	%r2,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L58:
	aghi	%r2,1
	ltgr	%r5,%r5
	lghi	%r3,0
	locgre	%r2,%r3
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
	cgije	%r4,0,.L80
	llcr	%r3,%r3
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L70
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L80
	aghi	%r2,1
	aghi	%r4,-1
	je	.L80
.L70:
	srlg	%r5,%r5,1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L80
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L65
.L63:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L64
.L65:
	aghik	%r1,%r2,1
	lgr	%r2,%r1
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	llc	%r12,0(%r1)
	crje	%r12,%r3,.L64
	aghik	%r2,%r1,1
	aghik	%r4,%r0,-1
	brctg	%r5,.L63
.L64:
	ltgr	%r4,%r4
	lghi	%r3,0
	locgre	%r2,%r3
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L80:
	ltgr	%r4,%r4
	lghi	%r4,0
	locgre	%r2,%r4
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
	cgije	%r4,0,.L100
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L92
	clc	0(1,%r3),0(%r2)
	jne	.L100
	aghi	%r2,1
	aghi	%r3,1
	aghi	%r4,-1
	je	.L100
.L92:
	srlg	%r0,%r0,1
	clc	0(1,%r3),0(%r2)
	jne	.L100
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L87
.L85:
	clc	0(1,%r3),0(%r2)
	jne	.L86
.L87:
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	aghik	%r5,%r2,1
	lgr	%r2,%r5
	aghik	%r1,%r3,1
	lgr	%r3,%r1
	clc	0(1,%r1),0(%r5)
	jne	.L86
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,1
	aghik	%r3,%r1,1
	brctg	%r0,.L85
.L86:
	cgije	%r4,0,.L89
	llc	%r4,0(%r2)
	llc	%r3,0(%r3)
	sr	%r4,%r3
.L88:
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L89:
	.cfi_restore_state
	lhi	%r4,0
	j	.L88
.L100:
	.cfi_restore 12
	cgije	%r4,0,.L102
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L103:
	lgfr	%r2,%r2
	br	%r14
.L102:
	lhi	%r2,0
	j	.L103
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
	cgije	%r4,0,.L108
	brasl	%r14,memcpy@PLT
.L108:
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
	je	.L116
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L111
.L116:
	srlg	%r0,%r4,1
	aghi	%r0,1
.L112:
	brctg	%r0,.L114
	j	.L120
.L114:
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L121
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crjlh	%r1,%r3,.L112
	br	%r14
.L121:
	br	%r14
.L120:
	lghi	%r2,0
.L111:
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
	cgije	%r4,0,.L124
	agrk	%r5,%r2,%r4
	lgr	%r1,%r2
	sgrk	%r4,%r5,%r2
	risbg	%r0,%r4,62,128+63,0
	je	.L132
	cgije	%r0,1,.L136
	cgije	%r0,2,.L137
	stc	%r3,0(%r2)
	aghi	%r1,1
.L137:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L136:
	stc	%r3,0(%r1)
	aghi	%r1,1
	cgrje	%r5,%r1,.L124
.L132:
	srlg	%r4,%r4,2
.L125:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	aghi	%r1,4
	brctg	%r4,.L125
.L124:
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
	j	.L145
.L143:
	aghi	%r3,1
	aghi	%r2,1
.L145:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L143
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
	icm	%r0,1,0(%r2)
	ber	%r14
.L148:
	llcr	%r1,%r0
	crje	%r1,%r3,.L154
	aghi	%r2,1
	icm	%r0,1,0(%r2)
	jne	.L148
	br	%r14
.L154:
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
.L158:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L157
	aghi	%r2,1
	cijlh	%r1,0,.L158
	lghi	%r2,0
.L157:
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ic	%r4,0(%r2)
	ic	%r5,0(%r3)
	llcr	%r12,%r4
	llcr	%r0,%r5
	lghi	%r1,1
	crjlh	%r12,%r0,.L163
.L162:
	tml	%r4,255
	je	.L163
	ic	%r4,0(%r1,%r2)
	aghi	%r1,1
	icy	%r5,-1(%r1,%r3)
	llcr	%r12,%r4
	llcr	%r0,%r5
	crje	%r12,%r0,.L162
.L163:
	llcr	%r2,%r4
	llcr	%r3,%r5
	sr	%r2,%r3
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
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
	je	.L171
.L172:
	aghi	%r1,1
	cli	0(%r1),0
	jne	.L172
.L171:
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
	cgije	%r4,0,.L181
.L184:
	icm	%r5,1,0(%r2)
	je	.L178
	llc	%r1,0(%r3)
	cije	%r1,0,.L178
	brctg	%r4,.L182
	j	.L178
.L182:
	llcr	%r0,%r5
	crjlh	%r1,%r0,.L178
	aghi	%r2,1
	aghi	%r3,1
	j	.L184
.L178:
	llcr	%r2,%r5
	llc	%r3,0(%r3)
	sr	%r2,%r3
.L177:
	lgfr	%r2,%r2
	br	%r14
.L181:
	lhi	%r2,0
	j	.L177
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
	cgijle	%r4,1,.L186
	nill	%r4,65534
	la	%r5,0(%r4,%r2)
	aghik	%r1,%r4,-2
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L195
	cgije	%r4,1,.L199
	cgije	%r4,2,.L200
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L200:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L199:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
	cgrje	%r2,%r5,.L186
.L195:
	srlg	%r1,%r0,2
.L188:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	aghi	%r3,8
	aghi	%r2,8
	brctg	%r1,.L188
.L186:
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
	cije	%r2,32,.L226
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
.L225:
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L226:
	lhi	%r0,1
	j	.L225
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
	clijle	%r2,31,.L234
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L234
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L234
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r3,%r2
	j	.L231
.L234:
	lhi	%r3,1
.L231:
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
	clijle	%r2,254,.L245
	lhi	%r1,8231
	clrjle	%r2,%r1,.L243
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L243
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L243
	ahi	%r0,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r0,1048580
	lhi	%r5,0
	locrnl	%r2,%r5
	j	.L240
.L245:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L240
.L243:
	lhi	%r2,1
.L240:
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
	clijle	%r1,9,.L249
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
.L248:
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L249:
	lhi	%r0,1
	j	.L248
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
	jo	.L257
	kdbr	%f0,%f2
	jnh	.L260
	sdbr	%f0,%f2
	br	%r14
.L257:
	ldr	%f0,%f2
	br	%r14
.L260:
	lzdr	%f0
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
	jo	.L266
	kebr	%f0,%f2
	jnh	.L269
	sebr	%f0,%f2
	br	%r14
.L266:
	ler	%f0,%f2
	br	%r14
.L269:
	lzer	%f0
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
	jo	.L279
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L273
	cijlh	%r1,0,.L279
	br	%r14
.L273:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L279
	ldr	%f2,%f0
.L279:
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
	jo	.L289
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L283
	cijlh	%r1,0,.L289
	br	%r14
.L283:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L289
	ler	%f2,%f0
.L289:
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
	jo	.L298
	cxbr	%f4,%f4
	jo	.L300
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L293
	cije	%r1,0,.L300
.L298:
	lxr	%f0,%f4
.L300:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L293:
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
	je	.L295
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L296:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	br	%r14
.L295:
	.cfi_restore_state
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L296
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
	jo	.L309
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L305
	cijlh	%r1,0,.L303
.L309:
	ldr	%f0,%f2
.L303:
	br	%r14
.L305:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	j	.L309
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
	jo	.L319
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L315
	cijlh	%r1,0,.L313
.L319:
	ler	%f0,%f2
.L313:
	br	%r14
.L315:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	j	.L319
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
	jo	.L332
	cxbr	%f0,%f0
	jo	.L330
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L325
	cije	%r1,0,.L332
.L330:
	lxr	%f0,%f4
.L332:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L325:
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
	je	.L327
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L328:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	br	%r14
.L327:
	.cfi_restore_state
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L328
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
	cije	%r2,0,.L338
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L337:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	aghi	%r2,1
	srl	%r1,6
	cijlh	%r1,0,.L337
.L336:
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L338:
	larl	%r2,.LANCHOR0
	j	.L336
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LC0:
	.quad	6364136223846793005
.text
	.align	8
	.align	16
.globl rand
	.type	rand, @function
rand:
.LFB41:
	.cfi_startproc
	larl	%r1,.LANCHOR0
	lgrl	%r2,.LC0
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
	cgije	%r3,0,.L349
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L349:
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
	je	.L352
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L352:
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
	lgr	%r14,%r15
	lay	%r15,-176(%r15)
	.cfi_def_cfa_offset 336
	aghi	%r14,-8
	std	%f10,0(%r14)
	.cfi_offset 25, -168
	lgr	%r9,%r2
	lgr	%r13,%r3
	stg	%r4,160(%r15)
	lgr	%r10,%r5
	ltg	%r8,0(%r4)
	je	.L356
	lgr	%r12,%r3
	lzdr	%f10
	lgr	%r11,%r8
	tmll	%r8,1
	je	.L361
	lgr	%r7,%r3
	basr	%r14,%r6
	cije	%r2,0,.L355
	lgdr	%r1,%f10
	aghi	%r1,1
	agr	%r12,%r10
	cgrje	%r8,%r1,.L356
.L361:
	srlg	%r11,%r11,1
.L358:
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L355
	agr	%r12,%r10
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L355
	agr	%r12,%r10
	brctg	%r11,.L358
.L356:
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	msgr	%r8,%r10
	lgr	%r4,%r10
	lgr	%r3,%r9
	la	%r2,0(%r8,%r13)
	brasl	%r14,memcpy@PLT
	lgr	%r7,%r2
.L355:
	lgr	%r2,%r7
	ld	%f10,168(%r15)
	lmg	%r7,%r15,232(%r15)
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
	.cfi_def_cfa_offset 160
	br	%r14
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
	je	.L369
	lgr	%r10,%r2
	lgr	%r12,%r3
	lgr	%r9,%r5
	lghi	%r13,0
	lgr	%r11,%r7
	tmll	%r7,1
	je	.L374
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L368
	aghi	%r13,1
	agr	%r12,%r9
	cgrje	%r7,%r13,.L369
.L374:
	srlg	%r7,%r11,1
.L371:
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L368
	agr	%r12,%r9
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L368
	agr	%r12,%r9
	brctg	%r7,.L371
.L369:
	lghi	%r8,0
.L368:
	lgr	%r2,%r8
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L384
.L385:
	aghi	%r12,1
.L384:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r3,%r2
	cijlh	%r2,0,.L385
	cije	%r11,43,.L391
	cijlh	%r11,45,.L392
	lhi	%r4,1
.L386:
	aghi	%r12,1
.L387:
	ic	%r1,0(%r12)
	llcr	%r2,%r1
	ahi	%r2,-48
	clijh	%r2,9,.L389
.L388:
	sllk	%r0,%r3,2
	ar	%r0,%r3
	sll	%r0,1
	aghi	%r12,1
	llcr	%r5,%r1
	ahi	%r5,-48
	srk	%r3,%r0,%r5
	ic	%r1,0(%r12)
	llcr	%r14,%r1
	ahi	%r14,-48
	clijle	%r14,9,.L388
.L389:
	lcr	%r12,%r3
	ltr	%r4,%r4
	locrne	%r12,%r3
	lgfr	%r2,%r12
	lmg	%r11,%r15,248(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
.L391:
	.cfi_restore_state
	lhi	%r4,0
	j	.L386
.L392:
	lhi	%r4,0
	j	.L387
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L398
.L399:
	aghi	%r12,1
.L398:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L399
	cije	%r11,43,.L400
	cijlh	%r11,45,.L401
	lhi	%r4,1
.L400:
	aghi	%r12,1
.L401:
	ic	%r1,0(%r12)
	llcr	%r3,%r1
	ahi	%r3,-48
	lghi	%r2,0
	clijh	%r3,9,.L403
.L402:
	sllg	%r0,%r2,2
	agr	%r2,%r0
	sllg	%r2,%r2,1
	aghi	%r12,1
	llcr	%r5,%r1
	ahi	%r5,-48
	sgfr	%r2,%r5
	ic	%r1,0(%r12)
	llcr	%r14,%r1
	ahi	%r14,-48
	clijle	%r14,9,.L402
.L403:
	lcgr	%r12,%r2
	ltr	%r4,%r4
	locgre	%r2,%r12
	lmg	%r11,%r15,248(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	8
	.align	16
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
	lgr	%r12,%r2
	j	.L411
.L412:
	aghi	%r12,1
.L411:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L412
	cije	%r11,43,.L413
	cijlh	%r11,45,.L414
	lhi	%r4,1
.L413:
	aghi	%r12,1
.L414:
	ic	%r1,0(%r12)
	llcr	%r3,%r1
	ahi	%r3,-48
	lghi	%r2,0
	clijh	%r3,9,.L416
.L415:
	sllg	%r0,%r2,2
	agr	%r2,%r0
	sllg	%r2,%r2,1
	aghi	%r12,1
	llcr	%r5,%r1
	ahi	%r5,-48
	sgfr	%r2,%r5
	ic	%r1,0(%r12)
	llcr	%r14,%r1
	ahi	%r14,-48
	clijle	%r14,9,.L415
.L416:
	lcgr	%r12,%r2
	ltr	%r4,%r4
	locgre	%r2,%r12
	lmg	%r11,%r15,248(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
	.cfi_endproc
.LFE49:
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
	cgije	%r4,0,.L424
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L427
.L428:
	lgr	%r12,%r10
.L425:
	cgije	%r12,0,.L424
.L427:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	agr	%r11,%r8
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L428
	jle	.L423
	agrk	%r8,%r11,%r9
	aghi	%r12,-1
	sgr	%r12,%r10
	j	.L425
.L424:
	lghi	%r11,0
.L423:
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
	cije	%r4,0,.L433
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L436
.L435:
	sra	%r12,1
	je	.L433
.L436:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	agr	%r11,%r9
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L432
	cijle	%r2,0,.L435
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
	j	.L435
.L433:
	lghi	%r11,0
.L432:
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
.LFB55:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE55:
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
.LFB57:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE57:
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
	j	.L461
.L457:
	aghi	%r2,4
.L461:
	lt	%r1,0(%r2)
	je	.L456
	crjlh	%r1,%r3,.L457
.L456:
	ltr	%r1,%r1
	lghi	%r0,0
	locgre	%r2,%r0
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
	crjlh	%r4,%r5,.L465
.L464:
	cije	%r4,0,.L465
	cije	%r5,0,.L465
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crje	%r4,%r5,.L464
.L465:
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
.L474:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L474
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
	je	.L478
.L479:
	aghi	%r1,4
	lt	%r3,0(%r1)
	jne	.L479
.L478:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cgije	%r4,0,.L485
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L493
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L485
	cije	%r1,0,.L485
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r4,-1
	je	.L485
.L493:
	srlg	%r0,%r0,1
.L484:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L485
	cije	%r5,0,.L485
	aghik	%r11,%r4,-1
	lgr	%r4,%r11
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r1,%r3,4
	lgr	%r3,%r1
	l	%r12,0(%r5)
	c	%r12,0(%r1)
	jne	.L485
	cije	%r12,0,.L485
	aghik	%r4,%r11,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L484
.L485:
	cgije	%r4,0,.L489
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r11,-1
	locrnhe	%r2,%r11
.L487:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L489:
	.cfi_restore_state
	lhi	%r2,0
	j	.L487
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
	cgije	%r4,0,.L505
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L511
	c	%r3,0(%r2)
	je	.L505
	aghi	%r2,4
	aghi	%r4,-1
	je	.L505
.L511:
	srlg	%r5,%r5,1
.L504:
	c	%r3,0(%r2)
	je	.L505
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	aghik	%r1,%r2,4
	lgr	%r2,%r1
	c	%r3,0(%r1)
	je	.L505
	aghik	%r4,%r0,-1
	aghik	%r2,%r1,4
	brctg	%r5,.L504
.L505:
	ltgr	%r4,%r4
	lghi	%r3,0
	locgre	%r2,%r3
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cgije	%r4,0,.L523
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L531
	clc	0(4,%r2),0(%r3)
	jne	.L523
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r4,-1
	je	.L523
.L531:
	srlg	%r0,%r0,1
.L522:
	clc	0(4,%r2),0(%r3)
	jne	.L523
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r1,%r3,4
	lgr	%r3,%r1
	clc	0(4,%r5),0(%r1)
	jne	.L523
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L522
.L523:
	cgije	%r4,0,.L527
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r12,-1
	locrnhe	%r2,%r12
.L525:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L527:
	.cfi_restore_state
	lhi	%r2,0
	j	.L525
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
	cgije	%r4,0,.L541
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L541:
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
	cgrje	%r2,%r3,.L545
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjl	%r0,%r5,.L546
	lghi	%r5,0
	cgije	%r4,0,.L545
	aghik	%r4,%r1,1
	risbg	%r0,%r4,62,128+63,0
	je	.L567
	cgije	%r0,1,.L572
	cgije	%r0,2,.L573
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r1,-1
	aghi	%r5,4
.L573:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r1,-1
	aghi	%r5,4
.L572:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
	cgije	%r1,0,.L545
.L567:
	srlg	%r4,%r4,2
.L547:
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
	brctg	%r4,.L547
.L545:
	br	%r14
.L546:
	cgije	%r4,0,.L545
	sllg	%r4,%r1,2
	nihh	%r1,16383
	aghi	%r1,1
	risbg	%r5,%r1,62,128+63,0
	je	.L558
	cgije	%r5,1,.L574
	cgije	%r5,2,.L575
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
.L575:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	aghi	%r4,-4
.L574:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
	cgije	%r4,-4,.L545
.L558:
	srlg	%r1,%r1,2
.L548:
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
	brctg	%r1,.L548
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
	cgije	%r4,0,.L582
	lgr	%r1,%r2
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L590
	cgije	%r0,1,.L594
	cgije	%r0,2,.L595
	st	%r3,0(%r2)
	aghi	%r1,4
	aghi	%r5,-1
.L595:
	st	%r3,0(%r1)
	aghi	%r1,4
	aghi	%r5,-1
.L594:
	aghi	%r1,4
	sty	%r3,-4(%r1)
	cgije	%r5,0,.L582
.L590:
	srlg	%r5,%r4,2
.L583:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	aghi	%r1,16
	sty	%r3,-4(%r1)
	brctg	%r5,.L583
.L582:
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
	clgrjhe	%r2,%r3,.L600
	cgije	%r4,0,.L599
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L611
	cgije	%r1,1,.L624
	cgije	%r1,2,.L625
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L625:
	icy	%r1,-1(%r4,%r2)
	stcy	%r1,-1(%r4,%r3)
	aghi	%r4,-1
.L624:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r4,.L611
	br	%r14
.L611:
	srlg	%r5,%r5,2
.L602:
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
	brctg	%r5,.L602
	br	%r14
.L600:
	cgrje	%r2,%r3,.L599
	cgije	%r4,0,.L599
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L620
	cgije	%r0,1,.L626
	cgije	%r0,2,.L627
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L627:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L626:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L599
.L620:
	srlg	%r4,%r5,2
.L603:
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
	brctg	%r4,.L603
.L599:
	br	%r14
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
.LFB74:
	.cfi_startproc
	rllg	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE74:
	.size	rotl_sz, .-rotl_sz
	.align	8
	.align	16
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB75:
	.cfi_startproc
	lcr	%r3,%r3
	rllg	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE75:
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
.L664:
	srlk	%r5,%r2,0(%r1)
	ahik	%r3,%r1,1
	lr	%r1,%r3
	tmll	%r5,1
	jne	.L663
	srlk	%r0,%r2,0(%r3)
	ahik	%r1,%r3,1
	tmll	%r0,1
	jne	.L663
	srlk	%r5,%r2,0(%r1)
	ahik	%r1,%r3,2
	tmll	%r5,1
	jne	.L663
	srlk	%r0,%r2,0(%r1)
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L663
	brct	%r4,.L664
	lhi	%r1,0
.L663:
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
	cgije	%r2,0,.L679
	risbg	%r3,%r2,63,128+63,0
	jne	.L677
	lhi	%r3,1
.L678:
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	ahi	%r3,1
	tmll	%r1,1
	je	.L678
.L677:
	lgfr	%r2,%r3
	br	%r14
.L679:
	lhi	%r3,0
	j	.L677
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
	larl	%r5,.L687
	keb	%f0,.L688-.L687(%r5)
	jl	.L685
	keb	%f0,.L689-.L687(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L683:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L685:
	lhi	%r2,1
	j	.L683
	.section	.rodata
	.align	8
.L687:
.L689:
	.long	2139095039
.L688:
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
	larl	%r5,.L695
	kdb	%f0,.L696-.L695(%r5)
	jl	.L693
	kdb	%f0,.L697-.L695(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L691:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L693:
	lhi	%r2,1
	j	.L691
	.section	.rodata
	.align	8
.L695:
.L697:
	.long	2146435071
	.long	-1
.L696:
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
	larl	%r5,.L703
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L704-.L703(%r5)
	ld	%f6,.L704-.L703+8(%r5)
	kxbr	%f0,%f4
	jl	.L701
	ld	%f4,.L705-.L703(%r5)
	ld	%f6,.L705-.L703+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L699:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L701:
	lhi	%r2,1
	j	.L699
	.section	.rodata
	.align	8
.L703:
.L705:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L704:
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
	larl	%r5,.L716
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L715
	le	%f4,.L717-.L716(%r5)
	j	.L712
.L715:
	le	%f4,.L718-.L716(%r5)
	j	.L712
.L711:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L709
	meebr	%f4,%f4
.L712:
	tmll	%r2,1
	je	.L711
	meebr	%f0,%f4
	j	.L711
.L709:
	br	%r14
	.section	.rodata
	.align	8
.L716:
.L718:
	.long	1056964608
.L717:
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
	larl	%r5,.L727
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L726
	ld	%f4,.L728-.L727(%r5)
	j	.L723
.L726:
	ld	%f4,.L729-.L727(%r5)
	j	.L723
.L722:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L720
	mdbr	%f4,%f4
.L723:
	tmll	%r2,1
	je	.L722
	mdbr	%f0,%f4
	j	.L722
.L720:
	br	%r14
	.section	.rodata
	.align	8
.L727:
.L729:
	.long	1071644672
	.long	0
.L728:
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
	larl	%r5,.L738
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L731
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L731
	cijl	%r4,0,.L737
	ld	%f0,.L739-.L738(%r5)
	ld	%f2,.L739-.L738+8(%r5)
	j	.L734
.L737:
	ld	%f0,.L740-.L738(%r5)
	ld	%f2,.L740-.L738+8(%r5)
	j	.L734
.L733:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L731
	mxbr	%f0,%f0
.L734:
	tmll	%r4,1
	je	.L733
	mxbr	%f4,%f0
	j	.L733
.L731:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L738:
.L740:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L739:
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
	cgije	%r4,0,.L759
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L750
	cgije	%r5,1,.L754
	cgije	%r5,2,.L755
	llgc	%r5,0(%r2)
	llgc	%r12,0(%r3)
	aghi	%r3,1
	xr	%r5,%r12
	stc	%r5,0(%r2)
	aghi	%r1,1
.L755:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	aghi	%r3,1
	xr	%r5,%r12
	stc	%r5,0(%r1)
	aghi	%r1,1
.L754:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r12,-1(%r3)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	cgrje	%r0,%r3,.L742
.L750:
	srlg	%r4,%r4,2
.L743:
	xc	0(1,%r1),0(%r3)
	xc	1(1,%r1),1(%r3)
	xc	2(1,%r1),2(%r3)
	aghi	%r3,4
	aghi	%r1,4
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L743
.L742:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L759:
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
	lhi	%r0,0
	lghi	%r1,0
	lgr	%r5,%r2
	srst	%r1,%r5
	jo	.-4
	cgije	%r4,0,.L778
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L770
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L778
	aghi	%r3,1
	aghi	%r1,1
	aghi	%r4,-1
	je	.L778
.L770:
	srlg	%r0,%r0,1
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L778
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L766
.L764:
	llgc	%r11,0(%r3)
	stc	%r11,0(%r1)
	cgije	%r11,0,.L765
.L766:
	aghik	%r11,%r3,1
	aghik	%r5,%r1,1
	lgr	%r1,%r5
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	llgc	%r3,1(%r3)
	stc	%r3,0(%r5)
	cgije	%r3,0,.L765
	aghik	%r3,%r11,1
	aghik	%r1,%r5,1
	aghik	%r4,%r12,-1
	brctg	%r0,.L764
.L765:
	cgijlh	%r4,0,.L767
	mvi	0(%r1),0
.L767:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L778:
	cgijlh	%r4,0,.L780
	mvi	0(%r1),0
	br	%r14
.L780:
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
	cgije	%r3,0,.L809
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L796
	cgije	%r5,1,.L807
	cgije	%r5,2,.L808
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L808:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L807:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L784
.L796:
	srlg	%r0,%r4,2
.L785:
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
	brctg	%r0,.L785
	br	%r14
.L809:
	lghi	%r2,0
	br	%r14
.L784:
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
.L821:
	icm	%r5,1,0(%r2)
	je	.L818
	lgr	%r1,%r3
	llcr	%r0,%r5
.L817:
	llc	%r4,0(%r1)
	cije	%r4,0,.L822
	aghi	%r1,1
	crjlh	%r4,%r0,.L817
.L815:
	br	%r14
.L822:
	aghi	%r2,1
	j	.L821
.L818:
	lghi	%r2,0
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
.L826:
	ic	%r4,0(%r1)
	llcr	%r5,%r4
	cr	%r5,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	tml	%r4,255
	jne	.L826
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
	lhi	%r0,0
	lghi	%r10,0
	lgr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slgr	%r10,%r3
	jhe	.L835
	lgr	%r11,%r3
	llgc	%r9,0(%r3)
.L833:
	lgr	%r3,%r9
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgije	%r2,0,.L831
	lgr	%r4,%r10
	lgr	%r3,%r11
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L831
	aghik	%r2,%r12,1
	j	.L833
.L835:
	lgr	%r12,%r2
.L831:
	lgr	%r2,%r12
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
	.align	16
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	lzdr	%f4
	kdbr	%f0,%f4
	jl	.L847
.L839:
	lzdr	%f6
	kdbr	%f0,%f6
	jnh	.L842
	kdbr	%f2,%f6
	jl	.L841
.L842:
	br	%r14
.L847:
	kdbr	%f2,%f4
	jnh	.L839
.L841:
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
	lgr	%r12,%r2
	cgije	%r5,0,.L853
	clgrjl	%r3,%r5,.L855
	sgrk	%r11,%r3,%r5
	algr	%r11,%r2
	jnle	.L855
	llc	%r8,0(%r4)
	aghik	%r7,%r5,-1
	aghik	%r9,%r4,1
	j	.L852
.L851:
	clgrjh	%r12,%r11,.L855
.L852:
	ic	%r1,0(%r12)
	lgr	%r10,%r12
	aghi	%r12,1
	llcr	%r0,%r1
	crjlh	%r0,%r8,.L851
	lgr	%r4,%r7
	lgr	%r3,%r9
	lgr	%r2,%r12
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L851
	j	.L849
.L853:
	lgr	%r10,%r2
	j	.L849
.L855:
	lghi	%r10,0
.L849:
	lgr	%r2,%r10
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
.LFE99:
	.size	memmem, .-memmem
	.align	8
	.align	16
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
	.align	16
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	larl	%r5,.L885
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L884
	lhi	%r3,0
.L863:
	kdb	%f0,.L886-.L885(%r5)
	jnhe	.L881
	lhi	%r1,0
.L867:
	ahi	%r1,1
	mdb	%f0,.L887-.L885(%r5)
	kdb	%f0,.L886-.L885(%r5)
	jhe	.L867
.L868:
	st	%r1,0(%r2)
	cije	%r3,0,.L871
	lcdbr	%f0,%f0
.L871:
	br	%r14
.L884:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L863
.L881:
	kdb	%f0,.L887-.L885(%r5)
	jnl	.L882
	lzdr	%f4
	lhi	%r1,0
	cdbr	%f0,%f4
	je	.L868
.L870:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L887-.L885(%r5)
	jl	.L870
	j	.L868
.L882:
	lhi	%r1,0
	j	.L868
	.section	.rodata
	.align	8
.L885:
.L887:
	.long	1071644672
	.long	0
.L886:
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
	cgije	%r4,0,.L891
.L890:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L890
	br	%r14
.L891:
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
	clrjhe	%r3,%r2,.L896
.L895:
	cijl	%r3,0,.L896
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L896
	cijl	%r3,0,.L896
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L896
	brct	%r0,.L895
	lhi	%r1,0
.L896:
	lhi	%r0,0
	cijlh	%r1,0,.L900
.L898:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L899:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L898
.L900:
	clrjl	%r2,%r3,.L899
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
	j	.L899
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
	cgije	%r2,0,.L922
.L923:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L923
.L922:
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
	clgrjl	%r2,%r3,.L928
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L928
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L981
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L963
	cgije	%r5,1,.L968
	cgije	%r5,2,.L969
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L969:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L968:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L981
.L963:
	srlg	%r4,%r4,2
.L934:
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
	brctg	%r4,.L934
	br	%r14
.L928:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L931
	risbgn	%r12,%r5,32,128+60,3
	lghi	%r5,0
	aghik	%r11,%r12,-8
	srlg	%r0,%r11,3
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L954
	cgije	%r11,1,.L970
	cgije	%r11,2,.L971
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L971:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L970:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
	cgrje	%r12,%r5,.L931
.L954:
	srlg	%r0,%r0,2
.L932:
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
	brctg	%r0,.L932
.L931:
	clrjhe	%r1,%r4,.L927
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L927
	cije	%r11,0,.L945
	cije	%r11,1,.L973
	cije	%r11,2,.L974
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L974:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L973:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L927
.L945:
	srlk	%r4,%r5,2
.L933:
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
	brct	%r4,.L933
.L927:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L981:
	br	%r14
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
	clgrjl	%r2,%r3,.L985
	agrk	%r5,%r3,%r4
	clgrjh	%r2,%r5,.L985
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1022
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1008
	cgije	%r5,1,.L1013
	cgije	%r5,2,.L1014
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1014:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1013:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1022
.L1008:
	srlg	%r4,%r4,2
.L990:
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
	brctg	%r4,.L990
	br	%r14
.L985:
	cije	%r1,0,.L1023
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r0,%r1,32,128+62,1
	lghi	%r1,0
	aghik	%r12,%r0,-2
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L999
	cgije	%r12,1,.L1015
	cgije	%r12,2,.L1016
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1016:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1015:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L988
.L999:
	srlg	%r5,%r5,2
.L989:
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
	brctg	%r5,.L989
.L988:
	tmll	%r4,1
	je	.L984
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L984:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1023:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1022:
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
	clgrjl	%r2,%r3,.L1029
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L1029
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L1082
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1064
	cgije	%r5,1,.L1069
	cgije	%r5,2,.L1070
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1070:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1069:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1082
.L1064:
	srlg	%r4,%r4,2
.L1035:
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
	brctg	%r4,.L1035
	br	%r14
.L1029:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1032
	risbgn	%r12,%r5,32,128+61,2
	lghi	%r5,0
	aghik	%r11,%r12,-4
	srlg	%r0,%r11,2
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1055
	cgije	%r11,1,.L1071
	cgije	%r11,2,.L1072
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1072:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1071:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
	cgrje	%r12,%r5,.L1032
.L1055:
	srlg	%r0,%r0,2
.L1033:
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
	brctg	%r0,.L1033
.L1032:
	clrjhe	%r1,%r4,.L1028
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1028
	cije	%r11,0,.L1046
	cije	%r11,1,.L1074
	cije	%r11,2,.L1075
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1075:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1074:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1028
.L1046:
	srlk	%r4,%r5,2
.L1034:
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
	brct	%r4,.L1034
.L1028:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1082:
	br	%r14
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
.L1099:
	srk	%r3,%r5,%r1
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L1098
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srk	%r4,%r5,%r3
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1098
	ahik	%r1,%r3,1
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1098
	ahik	%r1,%r3,2
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1098
	ahik	%r1,%r3,3
	brct	%r0,.L1099
.L1098:
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
.L1109:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1108
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1108
	ahik	%r1,%r0,1
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1108
	ahik	%r1,%r0,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1108
	ahik	%r1,%r0,3
	brct	%r4,.L1109
.L1108:
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
	larl	%r5,.L1125
	keb	%f0,.L1126-.L1125(%r5)
	jhe	.L1124
	cgebr	%r2,5,%f0
	br	%r14
.L1124:
	seb	%f0,.L1126-.L1125(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1125:
.L1126:
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
.L1128:
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
	brct	%r5,.L1128
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
.L1136:
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
	brct	%r5,.L1136
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
.LFB121:
	.cfi_startproc
	lhi	%r4,0
	cgije	%r2,0,.L1144
.L1145:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L1145
.L1144:
	llgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE121:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
	.align	16
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	lhi	%r4,0
	cgijlh	%r2,0,.L1155
	j	.L1150
.L1151:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r2
	ar	%r4,%r0
	risbgn	%r2,%r2,32,128+62,1
	srlg	%r3,%r3,1
.L1155:
	cgijlh	%r3,0,.L1151
.L1150:
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
	clrjhe	%r3,%r2,.L1159
.L1158:
	cijl	%r3,0,.L1159
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1159
	cijl	%r3,0,.L1159
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1159
	brct	%r0,.L1158
	lhi	%r1,0
.L1159:
	lhi	%r0,0
	cijlh	%r1,0,.L1163
.L1161:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1162:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L1161
.L1163:
	clrjl	%r2,%r3,.L1162
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
	j	.L1162
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
	cijl	%r3,0,.L1198
	lhi	%r0,0
.L1191:
	cgije	%r3,0,.L1196
	lhi	%r5,32
	lhi	%r4,0
.L1193:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srag	%r3,%r3,1
	je	.L1192
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1193
.L1192:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L1198:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L1191
.L1196:
	lhi	%r4,0
	j	.L1192
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	cgijl	%r2,0,.L1206
	lhi	%r12,0
.L1201:
	cgijl	%r3,0,.L1207
.L1202:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r2
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
.L1206:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r12,1
	j	.L1201
.L1207:
	lcgr	%r3,%r3
	xilf	%r12,1
	j	.L1202
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	cgijl	%r2,0,.L1214
	lhi	%r12,0
.L1210:
	lpgr	%r3,%r3
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r2
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
.L1214:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r12,1
	j	.L1210
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
	clrjhe	%r3,%r2,.L1218
.L1217:
	tmll	%r3,32768
	jne	.L1218
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1218
	tmll	%r3,32768
	jne	.L1218
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1218
	brct	%r5,.L1217
	lhi	%r1,0
.L1218:
	tml	%r1,65535
	je	.L1226
	lhi	%r0,0
	j	.L1222
.L1221:
	risbgn	%r5,%r1,64-15,128+63,48+15
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cije	%r5,0,.L1220
.L1222:
	clrjl	%r2,%r3,.L1221
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L1221
.L1226:
	lr	%r0,%r1
.L1220:
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
	clgrjhe	%r3,%r2,.L1237
.L1236:
	tmlh	%r3,32768
	jne	.L1237
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1237
	tmlh	%r3,32768
	jne	.L1237
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1237
	brct	%r5,.L1236
	lghi	%r1,0
.L1237:
	lghi	%r0,0
	cgijlh	%r1,0,.L1241
.L1239:
	ltgr	%r4,%r4
	locgre	%r2,%r0
	br	%r14
.L1240:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgije	%r1,0,.L1239
.L1241:
	clgrjl	%r2,%r3,.L1240
	sgr	%r2,%r3
	ogr	%r0,%r1
	j	.L1240
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
	je	.L1255
	sllk	%r0,%r2,4064(%r3)
	lhi	%r4,0
.L1256:
	llgfr	%r2,%r4
	rosbg	%r2,%r0,0,31,32
.L1254:
	br	%r14
.L1255:
	cgije	%r3,0,.L1254
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	srag	%r2,%r2,32
	sll	%r2,0(%r3)
	or	%r0,%r2
	j	.L1256
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
	je	.L1261
	sllg	%r1,%r3,4032(%r4)
	lghi	%r3,0
.L1266:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1261:
	cgije	%r4,0,.L1266
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
	je	.L1271
	srag	%r2,%r2,32
	srak	%r1,%r2,31
	sra	%r2,4064(%r3)
.L1272:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1270:
	br	%r14
.L1271:
	cgije	%r3,0,.L1270
	srag	%r4,%r2,32
	srak	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1272
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
	je	.L1277
	srag	%r0,%r5,63
	srag	%r1,%r5,4032(%r4)
	lgr	%r5,%r0
.L1282:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1277:
	cgije	%r4,0,.L1282
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
	jl	.L1296
	jh	.L1297
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
.L1295:
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1296:
	lhi	%r3,0
	j	.L1295
.L1297:
	lhi	%r3,2
	j	.L1295
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
	jl	.L1306
	jh	.L1307
	clgr	%r4,%r1
	lhi	%r5,1
	lhi	%r3,2
	locrh	%r5,%r3
	lhi	%r0,0
	locrnhe	%r5,%r0
.L1305:
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1306:
	lhi	%r5,0
	j	.L1305
.L1307:
	lhi	%r5,2
	j	.L1305
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
	jne	.L1316
	lcgr	%r3,%r1
	ngr	%r3,%r1
	flogr	%r4,%r3
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
.L1317:
	lgfr	%r2,%r2
	br	%r14
.L1316:
	lcgr	%r0,%r4
	ngr	%r4,%r0
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L1317
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
	je	.L1321
	risbgn	%r2,%r2,64-32,128+63,0+32
	srl	%r2,4064(%r3)
	lhi	%r1,0
.L1322:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1320:
	br	%r14
.L1321:
	cgije	%r3,0,.L1320
	risbgn	%r4,%r2,64-32,128+63,0+32
	srlk	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1322
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
	je	.L1327
	srlg	%r1,%r5,4032(%r4)
	lghi	%r5,0
.L1332:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1327:
	cgije	%r4,0,.L1332
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	lgr	%r11,%r3
	llgfr	%r3,%r3
	llgfr	%r2,%r2
	brasl	%r14,__muldsi3@PLT
	srag	%r1,%r12,32
	msr	%r1,%r11
	srag	%r0,%r11,32
	msr	%r12,%r0
	ar	%r1,%r12
	srag	%r3,%r2,32
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
	larl	%r5,.L1360
	srlg	%r1,%r2,1
	ng	%r1,.L1361-.L1360(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L1362-.L1360(%r5)
	ng	%r2,.L1362-.L1360(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1363-.L1360(%r5)
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
.L1360:
.L1363:
	.quad	1085102592571150095
.L1362:
	.quad	3689348814741910323
.L1361:
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
	lgrl	%r12,.LC19
	ngrk	%r4,%r0,%r12
	ngrk	%r5,%r1,%r12
	slgr	%r3,%r5
	slbgr	%r2,%r4
	srlg	%r1,%r3,2
	srlg	%r0,%r2,2
	lgrl	%r12,.LC20
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
	lgrl	%r1,.LC21
	ngrk	%r5,%r12,%r1
	lgrl	%r4,.LC21
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
	larl	%r5,.L1376
	ldr	%f2,%f0
	lgr	%r3,%r2
	ld	%f0,.L1377-.L1376(%r5)
	j	.L1372
.L1370:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1371
	mdbr	%f2,%f2
.L1372:
	tmll	%r3,1
	je	.L1370
	mdbr	%f0,%f2
	j	.L1370
.L1371:
	cijl	%r2,0,.L1375
.L1369:
	br	%r14
.L1375:
	ld	%f4,.L1377-.L1376(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1376:
.L1377:
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
	larl	%r5,.L1385
	ler	%f2,%f0
	lgr	%r3,%r2
	le	%f0,.L1386-.L1385(%r5)
	j	.L1381
.L1379:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1380
	meebr	%f2,%f2
.L1381:
	tmll	%r3,1
	je	.L1379
	meebr	%f0,%f2
	j	.L1379
.L1380:
	cijl	%r2,0,.L1384
.L1378:
	br	%r14
.L1384:
	le	%f4,.L1386-.L1385(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1385:
.L1386:
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
	jl	.L1389
	jh	.L1390
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
.L1388:
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1389:
	lhi	%r3,0
	j	.L1388
.L1390:
	lhi	%r3,2
	j	.L1388
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
	.align	16
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
.LFB165:
	.cfi_startproc
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	clc	0(8,%r2),0(%r3)
	jl	.L1399
	jh	.L1400
	clgr	%r4,%r1
	lhi	%r2,1
	lhi	%r3,2
	locrh	%r2,%r3
	lhi	%r0,0
	locrnhe	%r2,%r0
.L1398:
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1399:
	lhi	%r2,0
	j	.L1398
.L1400:
	lhi	%r2,2
	j	.L1398
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
