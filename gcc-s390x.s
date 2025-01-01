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
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L17
	cgije	%r1,1,.L30
	cgije	%r1,2,.L31
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L31:
	icy	%r1,-1(%r4,%r3)
	stcy	%r1,-1(%r4,%r2)
	aghi	%r4,-1
.L30:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	brctg	%r4,.L17
	br	%r14
.L17:
	srlg	%r5,%r5,2
.L8:
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
	brctg	%r5,.L8
	br	%r14
.L6:
	cgrje	%r2,%r3,.L7
	cgije	%r4,0,.L7
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L26
	cgije	%r0,1,.L32
	cgije	%r0,2,.L33
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L33:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L32:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgrje	%r1,%r4,.L7
.L26:
	srlg	%r4,%r5,2
.L9:
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
	lgr	%r0,%r5
	cgije	%r5,0,.L57
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	llcr	%r12,%r4
	lgr	%r4,%r5
	tmll	%r5,1
	je	.L49
	llgc	%r5,0(%r3)
	stc	%r5,0(%r2)
	llcr	%r10,%r5
	crje	%r10,%r12,.L43
	aghi	%r3,1
	aghi	%r2,1
	aghi	%r0,-1
	je	.L43
.L49:
	srlg	%r4,%r4,1
.L42:
	llgc	%r11,0(%r3)
	stc	%r11,0(%r2)
	llcr	%r1,%r11
	crje	%r1,%r12,.L43
	aghik	%r11,%r0,-1
	lgr	%r0,%r11
	aghik	%r10,%r3,1
	aghik	%r5,%r2,1
	lgr	%r2,%r5
	llgc	%r3,1(%r3)
	stc	%r3,0(%r5)
	llcr	%r1,%r3
	crje	%r1,%r12,.L43
	aghik	%r0,%r11,-1
	aghik	%r3,%r10,1
	aghik	%r2,%r5,1
	brctg	%r4,.L42
.L43:
	aghi	%r2,1
	ltgr	%r0,%r0
	lghi	%r12,0
	locgre	%r2,%r12
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L57:
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
	lgr	%r1,%r4
	cgije	%r4,0,.L79
	llcr	%r3,%r3
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L69
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L79
	aghi	%r2,1
	aghi	%r1,-1
	je	.L79
.L69:
	srlg	%r5,%r5,1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L79
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L64
.L62:
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L63
.L64:
	aghik	%r4,%r2,1
	lgr	%r2,%r4
	aghik	%r0,%r1,-1
	lgr	%r1,%r0
	llc	%r12,0(%r4)
	crje	%r12,%r3,.L63
	aghik	%r2,%r4,1
	aghik	%r1,%r0,-1
	brctg	%r5,.L62
.L63:
	ltgr	%r1,%r1
	lghi	%r3,0
	locgre	%r2,%r3
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L79:
	ltgr	%r1,%r1
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
	lgr	%r1,%r4
	cgije	%r4,0,.L99
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L91
	llc	%r5,0(%r2)
	llc	%r4,0(%r3)
	crjlh	%r5,%r4,.L99
	aghi	%r2,1
	aghi	%r3,1
	aghi	%r1,-1
	je	.L99
.L91:
	srlg	%r0,%r0,1
	llc	%r5,0(%r2)
	llc	%r4,0(%r3)
	crjlh	%r5,%r4,.L99
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L86
.L84:
	llc	%r12,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r12,%r5,.L85
.L86:
	aghik	%r12,%r1,-1
	lgr	%r1,%r12
	aghik	%r5,%r2,1
	lgr	%r2,%r5
	aghik	%r4,%r3,1
	lgr	%r3,%r4
	llc	%r10,0(%r5)
	llc	%r11,0(%r4)
	crjlh	%r10,%r11,.L85
	aghik	%r1,%r12,-1
	aghik	%r2,%r5,1
	aghik	%r3,%r4,1
	brctg	%r0,.L84
.L85:
	cgije	%r1,0,.L88
	llc	%r0,0(%r2)
	llc	%r1,0(%r3)
	sr	%r0,%r1
.L87:
	lgfr	%r2,%r0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L88:
	.cfi_restore_state
	lhi	%r0,0
	j	.L87
.L99:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	cgije	%r1,0,.L101
	llc	%r2,0(%r2)
	llc	%r3,0(%r3)
	sr	%r2,%r3
.L102:
	lgfr	%r2,%r2
	br	%r14
.L101:
	lhi	%r2,0
	j	.L102
	.cfi_endproc
.LFE5:
	.size	memcmp, .-memcmp
	.align	8
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
	cgije	%r4,0,.L107
	brasl	%r14,memcpy@PLT
.L107:
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
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	llcr	%r3,%r3
	lay	%r5,-1(%r2,%r4)
	tmll	%r4,1
	je	.L115
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L110
.L115:
	srlg	%r0,%r4,1
	aghi	%r0,1
.L111:
	brctg	%r0,.L113
	j	.L119
.L113:
	lgr	%r2,%r5
	aghik	%r4,%r5,-1
	llc	%r5,0(%r5)
	crje	%r5,%r3,.L120
	lgr	%r2,%r4
	aghik	%r5,%r4,-1
	llc	%r1,0(%r4)
	crjlh	%r1,%r3,.L111
	br	%r14
.L120:
	br	%r14
.L119:
	lghi	%r2,0
.L110:
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
	lgr	%r5,%r4
	cgije	%r4,0,.L123
	agr	%r5,%r2
	lgr	%r1,%r2
	sgrk	%r4,%r5,%r2
	risbg	%r0,%r4,62,128+63,0
	je	.L131
	cgije	%r0,1,.L135
	cgije	%r0,2,.L136
	stc	%r3,0(%r2)
	aghi	%r1,1
.L136:
	stc	%r3,0(%r1)
	aghi	%r1,1
.L135:
	stc	%r3,0(%r1)
	aghi	%r1,1
	cgrje	%r5,%r1,.L123
.L131:
	srlg	%r4,%r4,2
.L124:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	aghi	%r1,4
	brctg	%r4,.L124
.L123:
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
	cgije	%r1,0,.L141
.L142:
	aghi	%r3,1
	aghi	%r2,1
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cgijlh	%r0,0,.L142
.L141:
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
	llcr	%r3,%r3
	icm	%r0,1,0(%r2)
	ber	%r14
.L146:
	llcr	%r1,%r0
	crje	%r1,%r3,.L152
	aghi	%r2,1
	icm	%r0,1,0(%r2)
	jne	.L146
	br	%r14
.L152:
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
.L156:
	ic	%r1,0(%r2)
	llcr	%r4,%r1
	crje	%r4,%r3,.L155
	aghi	%r2,1
	cijlh	%r4,0,.L156
	lghi	%r2,0
.L155:
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ic	%r4,0(%r2)
	ic	%r5,0(%r3)
	llcr	%r12,%r4
	llcr	%r0,%r5
	lghi	%r1,1
	crjlh	%r12,%r0,.L161
.L160:
	llcr	%r12,%r4
	cije	%r12,0,.L161
	ic	%r4,0(%r1,%r2)
	aghi	%r1,1
	icy	%r5,-1(%r1,%r3)
	llcr	%r12,%r4
	llcr	%r0,%r5
	crje	%r12,%r0,.L160
.L161:
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
.globl strlen
	.type	strlen, @function
strlen:
.LFB13:
	.cfi_startproc
	lgr	%r4,%r2
	cli	0(%r2),0
	je	.L169
.L170:
	aghi	%r2,1
	llc	%r3,0(%r2)
	cijlh	%r3,0,.L170
.L169:
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
	cgije	%r4,0,.L179
	icm	%r5,1,0(%r2)
	je	.L176
.L177:
	icm	%r0,1,0(%r3)
	je	.L176
	brctg	%r4,.L180
	j	.L176
.L180:
	llcr	%r1,%r0
	llcr	%r0,%r5
	crjlh	%r1,%r0,.L176
	aghi	%r2,1
	aghi	%r3,1
	icm	%r5,1,0(%r2)
	jne	.L177
.L176:
	llcr	%r2,%r5
	llc	%r3,0(%r3)
	sr	%r2,%r3
.L175:
	lgfr	%r2,%r2
	br	%r14
.L179:
	lhi	%r2,0
	j	.L175
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cgijle	%r4,1,.L182
	nill	%r4,65534
	la	%r5,0(%r4,%r2)
	aghi	%r4,-2
	srlg	%r1,%r4,1
	aghi	%r1,1
	risbg	%r4,%r1,62,128+63,0
	je	.L191
	cgije	%r4,1,.L195
	cgije	%r4,2,.L196
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L196:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L195:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
	cgrje	%r2,%r5,.L182
.L191:
	srlg	%r0,%r1,2
.L184:
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
	brctg	%r0,.L184
.L182:
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
	lpr	%r0,%r1
	ahi	%r0,-1
	srlk	%r2,%r0,31
	chi	%r3,32
	lhi	%r4,1
	locre	%r2,%r4
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
	lpr	%r0,%r1
	ahi	%r0,-1
	srlk	%r2,%r0,31
	clfi	%r3,31
	lhi	%r4,1
	locrnh	%r2,%r4
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
	cije	%r2,32,.L222
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
.L221:
	lgfr	%r2,%r0
	br	%r14
.L222:
	lhi	%r0,1
	j	.L221
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
	clijle	%r2,31,.L228
	ahik	%r1,%r2,-127
	clijle	%r1,32,.L229
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L230
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r3,%r2
	j	.L227
.L228:
	lhi	%r3,1
.L227:
	lgfr	%r2,%r3
	br	%r14
.L229:
	lhi	%r3,1
	j	.L227
.L230:
	lhi	%r3,1
	j	.L227
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
	clijle	%r2,254,.L241
	lhi	%r1,8231
	clrjle	%r2,%r1,.L237
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L238
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L239
	ahi	%r0,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r0,1048580
	lhi	%r5,0
	locrnl	%r2,%r5
	j	.L236
.L241:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
.L236:
	lgfr	%r2,%r2
	br	%r14
.L237:
	lhi	%r2,1
	j	.L236
.L238:
	lhi	%r2,1
	j	.L236
.L239:
	lhi	%r2,1
	j	.L236
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
	clijle	%r1,9,.L245
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
.L244:
	lgfr	%r2,%r0
	br	%r14
.L245:
	lhi	%r0,1
	j	.L244
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
	jo	.L253
	kdbr	%f0,%f2
	jnh	.L256
	sdbr	%f0,%f2
	br	%r14
.L253:
	ldr	%f0,%f2
	br	%r14
.L256:
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
	jo	.L262
	kebr	%f0,%f2
	jnh	.L265
	sebr	%f0,%f2
	br	%r14
.L262:
	ler	%f0,%f2
	br	%r14
.L265:
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
	jo	.L273
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L269
	cijlh	%r1,0,.L275
	br	%r14
.L269:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	llcr	%r4,%r0
	cijlh	%r4,0,.L271
	ldr	%f2,%f0
.L271:
	ldr	%f0,%f2
	br	%r14
.L273:
	ldr	%f0,%f2
	br	%r14
.L275:
	ldr	%f0,%f2
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
	jo	.L283
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L279
	cijlh	%r1,0,.L285
	br	%r14
.L279:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	llcr	%r4,%r0
	cijlh	%r4,0,.L281
	ler	%f2,%f0
.L281:
	ler	%f0,%f2
	br	%r14
.L283:
	ler	%f0,%f2
	br	%r14
.L285:
	ler	%f0,%f2
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
	jo	.L294
	cxbr	%f4,%f4
	jo	.L296
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L289
	cije	%r1,0,.L296
	lxr	%f0,%f4
.L296:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L289:
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
	llcr	%r5,%r0
	cije	%r5,0,.L291
	lgdr	%r12,%f4
	lgdr	%r1,%f6
.L292:
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
.L291:
	.cfi_restore_state
	lgdr	%r12,%f0
	lgdr	%r1,%f2
	j	.L292
.L294:
	.cfi_def_cfa_offset 160
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 15
	lxr	%f0,%f4
	j	.L296
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
	jo	.L305
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L301
	cijlh	%r1,0,.L299
	ldr	%f0,%f2
	br	%r14
.L301:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	llcr	%r4,%r0
	cijlh	%r4,0,.L299
	ldr	%f0,%f2
	br	%r14
.L305:
	ldr	%f0,%f2
.L299:
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
	jo	.L315
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L311
	cijlh	%r1,0,.L309
	ler	%f0,%f2
	br	%r14
.L311:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	llcr	%r4,%r0
	cijlh	%r4,0,.L309
	ler	%f0,%f2
	br	%r14
.L315:
	ler	%f0,%f2
.L309:
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
	jo	.L328
	cxbr	%f0,%f0
	jo	.L326
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L321
	cije	%r1,0,.L328
	lxr	%f0,%f4
.L328:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L321:
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
	llcr	%r5,%r0
	cije	%r5,0,.L323
	lgdr	%r12,%f4
	lgdr	%r1,%f6
.L324:
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
.L323:
	.cfi_restore_state
	lgdr	%r12,%f0
	lgdr	%r1,%f2
	j	.L324
.L326:
	.cfi_def_cfa_offset 160
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 15
	lxr	%f0,%f4
	j	.L328
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L334
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L333:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	aghi	%r2,1
	srl	%r1,6
	cijlh	%r1,0,.L333
.L332:
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L334:
	larl	%r2,.LANCHOR0
	j	.L332
	.cfi_endproc
.LFE39:
	.size	l64a, .-l64a
	.align	8
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
.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	lgr	%r1,%r3
	cgije	%r3,0,.L345
	lg	%r3,0(%r3)
	stg	%r3,0(%r2)
	stg	%r1,8(%r2)
	stg	%r2,0(%r1)
	ltg	%r4,0(%r2)
	ber	%r14
	stg	%r2,8(%r4)
	br	%r14
.L345:
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
	je	.L348
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L348:
	ltg	%r4,8(%r2)
	ber	%r14
	lg	%r2,0(%r2)
	stg	%r2,0(%r4)
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
	std	%f8,0(%r14)
	.cfi_offset 24, -168
	lgr	%r9,%r2
	ldgr	%f8,%r3
	lgr	%r8,%r4
	lgr	%r10,%r5
	ltg	%r13,0(%r4)
	je	.L352
	lgr	%r12,%r3
	mvghi	160(%r15),0
	lgr	%r11,%r13
	tmll	%r13,1
	je	.L357
	lgr	%r7,%r3
	basr	%r14,%r6
	cije	%r2,0,.L351
	agsi	160(%r15),1
	agr	%r12,%r10
	lg	%r1,160(%r15)
	cgrje	%r13,%r1,.L352
.L357:
	srlg	%r11,%r11,1
.L354:
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L351
	agr	%r12,%r10
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L351
	agr	%r12,%r10
	brctg	%r11,.L354
.L352:
	aghik	%r0,%r13,1
	stg	%r0,0(%r8)
	msgr	%r13,%r10
	lgr	%r4,%r10
	lgr	%r3,%r9
	lgdr	%r2,%f8
	la	%r2,0(%r13,%r2)
	brasl	%r14,memcpy@PLT
	lgr	%r7,%r2
.L351:
	lgr	%r2,%r7
	ld	%f8,168(%r15)
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
	ltg	%r7,0(%r4)
	je	.L365
	lgr	%r10,%r2
	lgr	%r12,%r3
	lgr	%r9,%r5
	lghi	%r13,0
	lgr	%r11,%r7
	tmll	%r7,1
	je	.L370
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L364
	aghi	%r13,1
	agr	%r12,%r9
	cgrje	%r7,%r13,.L365
.L370:
	srlg	%r7,%r11,1
.L367:
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L364
	agr	%r12,%r9
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L364
	agr	%r12,%r9
	brctg	%r7,.L367
.L365:
	lghi	%r8,0
.L364:
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L380
.L381:
	aghi	%r12,1
.L380:
	ic	%r11,0(%r12)
	llgcr	%r2,%r11
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L381
	llcr	%r1,%r11
	cije	%r1,43,.L382
	cijlh	%r1,45,.L383
	lhi	%r2,1
.L382:
	aghi	%r12,1
.L383:
	ic	%r0,0(%r12)
	llcr	%r3,%r0
	ahi	%r3,-48
	clijh	%r3,9,.L385
.L384:
	sllk	%r5,%r4,2
	ar	%r5,%r4
	sll	%r5,1
	aghi	%r12,1
	llcr	%r14,%r0
	ahi	%r14,-48
	srk	%r4,%r5,%r14
	ic	%r0,0(%r12)
	llcr	%r11,%r0
	ahi	%r11,-48
	clijle	%r11,9,.L384
.L385:
	lcr	%r12,%r4
	ltr	%r2,%r2
	locrne	%r12,%r4
	lgfr	%r2,%r12
	lmg	%r11,%r15,248(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L394
.L395:
	aghi	%r12,1
.L394:
	ic	%r11,0(%r12)
	llgcr	%r2,%r11
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L395
	llcr	%r1,%r11
	cije	%r1,43,.L396
	cijlh	%r1,45,.L397
	lhi	%r4,1
.L396:
	aghi	%r12,1
.L397:
	ic	%r0,0(%r12)
	llcr	%r3,%r0
	ahi	%r3,-48
	lghi	%r2,0
	clijh	%r3,9,.L399
.L398:
	sllg	%r5,%r2,2
	agr	%r2,%r5
	sllg	%r2,%r2,1
	aghi	%r12,1
	llcr	%r14,%r0
	ahi	%r14,-48
	sgfr	%r2,%r14
	ic	%r0,0(%r12)
	llcr	%r11,%r0
	ahi	%r11,-48
	clijle	%r11,9,.L398
.L399:
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
	j	.L407
.L408:
	aghi	%r12,1
.L407:
	ic	%r11,0(%r12)
	llgcr	%r2,%r11
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L408
	llcr	%r1,%r11
	cije	%r1,43,.L409
	cijlh	%r1,45,.L410
	lhi	%r4,1
.L409:
	aghi	%r12,1
.L410:
	ic	%r0,0(%r12)
	llcr	%r3,%r0
	ahi	%r3,-48
	lghi	%r2,0
	clijh	%r3,9,.L412
.L411:
	sllg	%r5,%r2,2
	agr	%r2,%r5
	sllg	%r2,%r2,1
	aghi	%r12,1
	llcr	%r14,%r0
	ahi	%r14,-48
	sgfr	%r2,%r14
	ic	%r0,0(%r12)
	llcr	%r11,%r0
	ahi	%r11,-48
	clijle	%r11,9,.L411
.L412:
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
	cgije	%r4,0,.L420
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L423
.L424:
	lgr	%r12,%r10
.L421:
	cgije	%r12,0,.L420
.L423:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	agr	%r11,%r8
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	cijl	%r2,0,.L424
	cijle	%r2,0,.L419
	agrk	%r8,%r11,%r9
	aghi	%r12,-1
	sgr	%r12,%r10
	j	.L421
.L420:
	lghi	%r11,0
.L419:
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
	cije	%r4,0,.L429
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L432
.L431:
	sra	%r12,1
	je	.L429
.L432:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	agr	%r11,%r9
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L428
	cijle	%r2,0,.L431
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
	j	.L431
.L429:
	lghi	%r11,0
.L428:
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
	je	.L452
.L451:
	crje	%r1,%r3,.L452
	aghi	%r2,4
	lt	%r1,0(%r2)
	jne	.L451
.L452:
	ltr	%r1,%r1
	lghi	%r0,0
	locgre	%r2,%r0
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
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lghi	%r1,4
	crjlh	%r4,%r5,.L460
.L459:
	cije	%r4,0,.L460
	cije	%r5,0,.L460
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crje	%r4,%r5,.L459
.L460:
	crjl	%r4,%r5,.L465
	cr	%r4,%r5
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
.L462:
	lgfr	%r2,%r2
	br	%r14
.L465:
	lhi	%r2,-1
	j	.L462
	.cfi_endproc
.LFE60:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB61:
	.cfi_startproc
	lghi	%r1,0
.L469:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L469
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
	je	.L475
	lgr	%r1,%r2
.L474:
	aghi	%r1,4
	lt	%r3,0(%r1)
	jne	.L474
.L473:
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L475:
	lgr	%r1,%r2
	j	.L473
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	lgr	%r1,%r4
	cgije	%r4,0,.L497
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L488
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L497
	cije	%r4,0,.L497
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r1,-1
	je	.L497
.L488:
	srlg	%r0,%r0,1
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L497
	cije	%r5,0,.L497
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L481
.L479:
	l	%r11,0(%r2)
	c	%r11,0(%r3)
	jne	.L480
	cije	%r11,0,.L480
.L481:
	aghik	%r11,%r1,-1
	lgr	%r1,%r11
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r4,%r3,4
	lgr	%r3,%r4
	l	%r12,0(%r5)
	c	%r12,0(%r4)
	jne	.L480
	cije	%r12,0,.L480
	aghik	%r1,%r11,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r4,4
	brctg	%r0,.L479
.L480:
	cgije	%r1,0,.L484
	l	%r0,0(%r2)
	l	%r2,0(%r3)
	crjl	%r0,%r2,.L485
	cr	%r0,%r2
	lhi	%r3,0
	lhi	%r1,1
	locrh	%r3,%r1
	j	.L482
.L484:
	lhi	%r3,0
.L482:
	lgfr	%r2,%r3
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L485:
	.cfi_restore_state
	lhi	%r3,-1
	j	.L482
.L497:
	.cfi_restore 11
	.cfi_restore 12
	cgije	%r1,0,.L500
	l	%r2,0(%r2)
	l	%r3,0(%r3)
	crjl	%r2,%r3,.L502
	cr	%r2,%r3
	lhi	%r4,0
	lhi	%r1,1
	locrh	%r4,%r1
	j	.L503
.L500:
	lhi	%r4,0
.L503:
	lgfr	%r2,%r4
	br	%r14
.L502:
	lhi	%r4,-1
	j	.L503
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	lgr	%r1,%r4
	cgije	%r4,0,.L509
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L515
	c	%r3,0(%r2)
	je	.L509
	aghi	%r2,4
	aghi	%r1,-1
	je	.L509
.L515:
	srlg	%r5,%r5,1
.L508:
	c	%r3,0(%r2)
	je	.L509
	aghik	%r0,%r1,-1
	lgr	%r1,%r0
	aghik	%r4,%r2,4
	lgr	%r2,%r4
	c	%r3,0(%r4)
	je	.L509
	aghik	%r1,%r0,-1
	aghik	%r2,%r4,4
	brctg	%r5,.L508
.L509:
	ltgr	%r1,%r1
	lghi	%r3,0
	locgre	%r2,%r3
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
	lgr	%r1,%r4
	cgije	%r4,0,.L543
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L535
	clc	0(4,%r2),0(%r3)
	jne	.L543
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r1,-1
	je	.L543
.L535:
	srlg	%r0,%r0,1
	clc	0(4,%r2),0(%r3)
	jne	.L543
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L528
.L526:
	clc	0(4,%r2),0(%r3)
	jne	.L527
.L528:
	aghik	%r12,%r1,-1
	lgr	%r1,%r12
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r4,%r3,4
	lgr	%r3,%r4
	clc	0(4,%r5),0(%r4)
	jne	.L527
	aghik	%r1,%r12,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r4,4
	brctg	%r0,.L526
.L527:
	cgije	%r1,0,.L531
	l	%r0,0(%r2)
	l	%r1,0(%r3)
	crjl	%r0,%r1,.L532
	cr	%r0,%r1
	lhi	%r2,0
	lhi	%r3,1
	locrh	%r2,%r3
	j	.L529
.L531:
	lhi	%r2,0
.L529:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L532:
	.cfi_restore_state
	lhi	%r2,-1
	j	.L529
.L543:
	.cfi_restore 12
	cgije	%r1,0,.L545
	l	%r2,0(%r2)
	l	%r3,0(%r3)
	crjl	%r2,%r3,.L547
	cr	%r2,%r3
	lhi	%r4,0
	lhi	%r5,1
	locrh	%r4,%r5
	j	.L548
.L545:
	lhi	%r4,0
.L548:
	lgfr	%r2,%r4
	br	%r14
.L547:
	lhi	%r4,-1
	j	.L548
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
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
	cgije	%r4,0,.L553
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L553:
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
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cgrje	%r2,%r3,.L557
	sgrk	%r5,%r2,%r3
	sllg	%r1,%r4,2
	clgrjl	%r5,%r1,.L558
	aghik	%r0,%r4,-1
	lghi	%r1,0
	cgije	%r4,0,.L557
	aghik	%r5,%r0,1
	risbg	%r4,%r5,62,128+63,0
	je	.L579
	cgije	%r4,1,.L584
	cgije	%r4,2,.L585
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r0,-1
	aghi	%r1,4
.L585:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r0,-1
	aghi	%r1,4
.L584:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cgije	%r0,0,.L557
.L579:
	srlg	%r5,%r5,2
.L559:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghik	%r4,%r1,4
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r1,8(%r1,%r3)
	st	%r1,4(%r4,%r2)
	l	%r0,8(%r4,%r3)
	st	%r0,8(%r4,%r2)
	aghik	%r1,%r4,12
	brctg	%r5,.L559
.L557:
	br	%r14
.L558:
	aghik	%r5,%r4,-1
	cgije	%r4,0,.L557
	sllg	%r1,%r5,2
	risbg	%r4,%r5,2,128+63,0
	aghi	%r4,1
	risbg	%r0,%r4,62,128+63,0
	je	.L570
	cgije	%r0,1,.L586
	cgije	%r0,2,.L587
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L587:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L586:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L557
.L570:
	srlg	%r4,%r4,2
.L560:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghik	%r5,%r1,-4
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r1,-8(%r1,%r3)
	sty	%r1,-4(%r5,%r2)
	ly	%r0,-8(%r5,%r3)
	sty	%r0,-8(%r5,%r2)
	aghik	%r1,%r5,-12
	brctg	%r4,.L560
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
	aghik	%r5,%r4,-1
	cgije	%r4,0,.L594
	lgr	%r1,%r2
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L602
	cgije	%r0,1,.L606
	cgije	%r0,2,.L607
	st	%r3,0(%r2)
	aghi	%r1,4
	aghi	%r5,-1
.L607:
	st	%r3,0(%r1)
	aghi	%r1,4
	aghi	%r5,-1
.L606:
	aghi	%r1,4
	sty	%r3,-4(%r1)
	cgije	%r5,0,.L594
.L602:
	srlg	%r5,%r4,2
.L595:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	aghi	%r1,16
	sty	%r3,-4(%r1)
	brctg	%r5,.L595
.L594:
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
	clgrjhe	%r2,%r3,.L612
	cgije	%r4,0,.L611
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L623
	cgije	%r1,1,.L636
	cgije	%r1,2,.L637
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L637:
	icy	%r1,-1(%r4,%r2)
	stcy	%r1,-1(%r4,%r3)
	aghi	%r4,-1
.L636:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r4,.L623
	br	%r14
.L623:
	srlg	%r5,%r5,2
.L614:
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
	brctg	%r5,.L614
	br	%r14
.L612:
	cgrje	%r2,%r3,.L611
	cgije	%r4,0,.L611
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L632
	cgije	%r0,1,.L638
	cgije	%r0,2,.L639
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L639:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L638:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L611
.L632:
	srlg	%r4,%r5,2
.L615:
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
	brctg	%r4,.L615
.L611:
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
	rllg	%r2,%r2,0(%r3)
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
	lcr	%r3,%r3
	rllg	%r2,%r2,0(%r3)
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
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,40,47,8
	rosbg	%r1,%r2,32,63,40
	risbgn	%r2,%r2,48,128+55,64-8
	or	%r2,%r1
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
	srlg	%r1,%r2,56
	rosbg	%r1,%r2,0,7,56
	risbgn	%r2,%r2,48,128+55,64-40
	ogr	%r1,%r2
	risbgn	%r0,%r3,40,128+47,64-24
	ogr	%r1,%r0
	risbgn	%r4,%r3,32,128+39,64-8
	ogr	%r1,%r4
	rosbg	%r1,%r3,24,31,8
	lgr	%r2,%r1
	rosbg	%r2,%r3,16,23,24
	rosbg	%r2,%r3,8,15,40
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
	lhi	%r4,8
.L676:
	srlk	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L684
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srlk	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L684
	ahik	%r1,%r0,1
	srlk	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L684
	ahik	%r1,%r0,2
	srlk	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L684
	ahik	%r1,%r0,3
	brct	%r4,.L676
	lhi	%r2,0
	j	.L675
.L684:
	ahik	%r2,%r1,1
.L675:
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
	cgije	%r2,0,.L691
	nilf	%r2,1
	jne	.L689
	lhi	%r2,1
.L690:
	srak	%r1,%r3,1
	lgfr	%r3,%r1
	ahi	%r2,1
	tmll	%r1,1
	je	.L690
.L689:
	lgfr	%r2,%r2
	br	%r14
.L691:
	lhi	%r2,0
	j	.L689
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	larl	%r5,.L699
	keb	%f0,.L700-.L699(%r5)
	jl	.L697
	keb	%f0,.L701-.L699(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L695:
	lgfr	%r2,%r2
	br	%r14
.L697:
	lhi	%r2,1
	j	.L695
	.section	.rodata
	.align	8
.L699:
.L701:
	.long	2139095039
.L700:
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
	larl	%r5,.L707
	kdb	%f0,.L708-.L707(%r5)
	jl	.L705
	kdb	%f0,.L709-.L707(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L703:
	lgfr	%r2,%r2
	br	%r14
.L705:
	lhi	%r2,1
	j	.L703
	.section	.rodata
	.align	8
.L707:
.L709:
	.long	2146435071
	.long	-1
.L708:
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
	larl	%r5,.L715
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L716-.L715(%r5)
	ld	%f6,.L716-.L715+8(%r5)
	kxbr	%f0,%f4
	jl	.L713
	ld	%f4,.L717-.L715(%r5)
	ld	%f6,.L717-.L715+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L711:
	lgfr	%r2,%r2
	br	%r14
.L713:
	lhi	%r2,1
	j	.L711
	.section	.rodata
	.align	8
.L715:
.L717:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L716:
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
	larl	%r5,.L728
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L727
	le	%f4,.L729-.L728(%r5)
	j	.L724
.L727:
	le	%f4,.L730-.L728(%r5)
	j	.L724
.L723:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L721
	meebr	%f4,%f4
.L724:
	tmll	%r2,1
	je	.L723
	meebr	%f0,%f4
	j	.L723
.L721:
	br	%r14
	.section	.rodata
	.align	8
.L728:
.L730:
	.long	1056964608
.L729:
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
	larl	%r5,.L739
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L738
	ld	%f4,.L740-.L739(%r5)
	j	.L735
.L738:
	ld	%f4,.L741-.L739(%r5)
	j	.L735
.L734:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L732
	mdbr	%f4,%f4
.L735:
	tmll	%r2,1
	je	.L734
	mdbr	%f0,%f4
	j	.L734
.L732:
	br	%r14
	.section	.rodata
	.align	8
.L739:
.L741:
	.long	1071644672
	.long	0
.L740:
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
	larl	%r5,.L750
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L743
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L743
	cijl	%r4,0,.L749
	ld	%f0,.L751-.L750(%r5)
	ld	%f2,.L751-.L750+8(%r5)
	j	.L746
.L749:
	ld	%f0,.L752-.L750(%r5)
	ld	%f2,.L752-.L750+8(%r5)
	j	.L746
.L745:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L743
	mxbr	%f0,%f0
.L746:
	tmll	%r4,1
	je	.L745
	mxbr	%f4,%f0
	j	.L745
.L743:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L750:
.L752:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L751:
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
	cgije	%r4,0,.L771
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L762
	cgije	%r5,1,.L766
	cgije	%r5,2,.L767
	llgc	%r5,0(%r2)
	llgc	%r12,0(%r3)
	aghi	%r3,1
	xr	%r5,%r12
	stc	%r5,0(%r2)
	aghi	%r1,1
.L767:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	aghi	%r3,1
	xr	%r5,%r12
	stc	%r5,0(%r1)
	aghi	%r1,1
.L766:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r12,-1(%r3)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	cgrje	%r0,%r3,.L754
.L762:
	srlg	%r4,%r4,2
.L755:
	xc	0(1,%r1),0(%r3)
	xc	1(1,%r1),1(%r3)
	xc	2(1,%r1),2(%r3)
	aghi	%r3,4
	aghi	%r1,4
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L755
.L754:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L771:
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
	lgr	%r5,%r4
	cgije	%r4,0,.L790
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L782
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	cgije	%r4,0,.L790
	aghi	%r3,1
	aghi	%r1,1
	aghi	%r5,-1
	je	.L790
.L782:
	srlg	%r0,%r0,1
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	cgije	%r4,0,.L790
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L778
.L776:
	llgc	%r11,0(%r3)
	stc	%r11,0(%r1)
	cgije	%r11,0,.L777
.L778:
	aghik	%r11,%r3,1
	aghik	%r4,%r1,1
	lgr	%r1,%r4
	aghik	%r12,%r5,-1
	lgr	%r5,%r12
	llgc	%r3,1(%r3)
	stc	%r3,0(%r4)
	cgije	%r3,0,.L777
	aghik	%r3,%r11,1
	aghik	%r1,%r4,1
	aghik	%r5,%r12,-1
	brctg	%r0,.L776
.L777:
	cgijlh	%r5,0,.L779
	mvi	0(%r1),0
.L779:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L790:
	cgijlh	%r5,0,.L792
	mvi	0(%r1),0
	br	%r14
.L792:
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
	lgr	%r5,%r3
	cgije	%r3,0,.L821
	risbg	%r4,%r3,62,128+63,0
	je	.L808
	cgije	%r4,1,.L819
	cgije	%r4,2,.L820
	llc	%r0,0(%r2,%r1)
	cije	%r0,0,.L796
	aghi	%r2,1
.L820:
	llc	%r4,0(%r2,%r1)
	cijlh	%r4,0,.L824
.L796:
	br	%r14
.L821:
	lgr	%r2,%r3
	br	%r14
.L824:
	aghi	%r2,1
.L819:
	llc	%r0,0(%r2,%r1)
	cije	%r0,0,.L796
	aghi	%r2,1
	cgrje	%r5,%r2,.L801
.L808:
	srlg	%r3,%r3,2
.L797:
	llc	%r4,0(%r2,%r1)
	cije	%r4,0,.L796
	aghik	%r4,%r2,1
	lgr	%r2,%r4
	llc	%r0,0(%r4,%r1)
	cije	%r0,0,.L796
	aghik	%r2,%r4,1
	llc	%r0,1(%r4,%r1)
	cije	%r0,0,.L796
	aghik	%r2,%r4,2
	llc	%r0,2(%r4,%r1)
	cije	%r0,0,.L796
	aghik	%r2,%r4,3
	brctg	%r3,.L797
.L801:
	lgr	%r2,%r5
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
	icm	%r0,1,0(%r2)
	je	.L833
.L827:
	lgr	%r1,%r3
	llcr	%r5,%r0
.L830:
	icm	%r4,1,0(%r1)
	je	.L834
	aghi	%r1,1
	llcr	%r4,%r4
	crjlh	%r4,%r5,.L830
.L828:
	br	%r14
.L833:
	lghi	%r2,0
	br	%r14
.L834:
	aghi	%r2,1
	icm	%r0,1,0(%r2)
	jne	.L827
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
	lgr	%r4,%r2
	lghi	%r2,0
.L838:
	ic	%r1,0(%r4)
	llcr	%r1,%r1
	cr	%r1,%r3
	locgre	%r2,%r4
	aghi	%r4,1
	cijlh	%r1,0,.L838
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
	lhi	%r0,0
	lghi	%r10,0
	lgr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slgr	%r10,%r3
	jhe	.L846
	lgr	%r11,%r3
	llgc	%r9,0(%r3)
.L844:
	lgr	%r3,%r9
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgije	%r2,0,.L842
	lgr	%r4,%r10
	lgr	%r3,%r11
	lgr	%r2,%r12
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L842
	aghik	%r2,%r12,1
	j	.L844
.L846:
	lgr	%r12,%r2
.L842:
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
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	lzdr	%f4
	kdbr	%f0,%f4
	jl	.L858
.L850:
	lzdr	%f6
	kdbr	%f0,%f6
	jnh	.L853
	kdbr	%f2,%f6
	jl	.L852
.L853:
	br	%r14
.L858:
	kdbr	%f2,%f4
	jnh	.L850
.L852:
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
	cgije	%r5,0,.L860
	lgr	%r8,%r5
	clgrjl	%r3,%r5,.L865
	sgrk	%r11,%r3,%r5
	algr	%r11,%r2
	jnle	.L866
	llc	%r10,0(%r4)
	aghi	%r8,-1
	aghik	%r9,%r4,1
	j	.L863
.L862:
	aghi	%r12,1
	clgrjl	%r11,%r12,.L870
.L863:
	llc	%r1,0(%r12)
	crjlh	%r1,%r10,.L862
	lgr	%r4,%r8
	lgr	%r3,%r9
	la	%r2,1(%r12)
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L862
	lgr	%r2,%r12
	j	.L860
.L870:
	lghi	%r2,0
.L860:
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
.L865:
	.cfi_restore_state
	lghi	%r2,0
	j	.L860
.L866:
	lghi	%r2,0
	j	.L860
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
	larl	%r5,.L898
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L897
	lhi	%r3,0
.L876:
	kdb	%f0,.L899-.L898(%r5)
	jnhe	.L894
	lhi	%r1,0
.L880:
	ahi	%r1,1
	mdb	%f0,.L900-.L898(%r5)
	kdb	%f0,.L899-.L898(%r5)
	jhe	.L880
.L881:
	st	%r1,0(%r2)
	cije	%r3,0,.L884
	lcdbr	%f0,%f0
.L884:
	br	%r14
.L897:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L876
.L894:
	kdb	%f0,.L900-.L898(%r5)
	jnl	.L895
	lzdr	%f4
	cdbr	%f0,%f4
	je	.L887
	lhi	%r1,0
.L883:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L900-.L898(%r5)
	jl	.L883
	j	.L881
.L895:
	lhi	%r1,0
	j	.L881
.L887:
	lhi	%r1,0
	j	.L881
	.section	.rodata
	.align	8
.L898:
.L900:
	.long	1071644672
	.long	0
.L899:
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
	cgije	%r2,0,.L904
	lghi	%r2,0
.L903:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L903
	br	%r14
.L904:
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
	clrjhe	%r3,%r2,.L936
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L908:
	cijl	%r3,0,.L909
	sllk	%r0,%r3,1
	llgfr	%r3,%r0
	sll	%r1,1
	clrjhe	%r0,%r2,.L909
	ahi	%r5,-1
	cijl	%r3,0,.L909
	sllk	%r0,%r3,1
	llgfr	%r3,%r0
	sll	%r1,1
	clrjhe	%r0,%r2,.L909
	ahi	%r5,-1
	brct	%r12,.L908
	lr	%r1,%r5
.L909:
	cije	%r1,0,.L917
	lhi	%r5,0
	j	.L913
.L937:
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L912:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L911
.L913:
	clrjl	%r2,%r3,.L912
	j	.L937
.L917:
	lr	%r5,%r1
.L911:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L936:
	lhi	%r1,1
	cije	%r1,0,.L928
	lhi	%r5,0
	j	.L929
.L931:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L933
.L929:
	clrjl	%r2,%r3,.L931
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L931
.L928:
	lr	%r5,%r1
.L933:
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
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB106:
	.cfi_startproc
	lgr	%r4,%r2
	cgije	%r2,0,.L950
	lhi	%r2,0
.L949:
	risbg	%r1,%r4,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srlg	%r4,%r4,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r4,0,.L949
.L948:
	llgfr	%r2,%r2
	br	%r14
.L950:
	lhi	%r2,0
	j	.L948
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
	risbg	%r1,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L954
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L954
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L1007
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L989
	cgije	%r5,1,.L994
	cgije	%r5,2,.L995
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L995:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L994:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1007
.L989:
	srlg	%r4,%r4,2
.L960:
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
	brctg	%r4,.L960
	br	%r14
.L954:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L957
	risbgn	%r12,%r5,32,128+60,3
	lghi	%r5,0
	aghik	%r11,%r12,-8
	srlg	%r0,%r11,3
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L980
	cgije	%r11,1,.L996
	cgije	%r11,2,.L997
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L997:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L996:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
	cgrje	%r12,%r5,.L957
.L980:
	srlg	%r0,%r0,2
.L958:
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
	brctg	%r0,.L958
.L957:
	clrjhe	%r1,%r4,.L953
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L953
	cije	%r11,0,.L971
	cije	%r11,1,.L999
	cije	%r11,2,.L1000
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1000:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L999:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L953
.L971:
	srlk	%r4,%r5,2
.L959:
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
	brct	%r4,.L959
.L953:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1007:
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
	clgrjl	%r2,%r3,.L1011
	agrk	%r5,%r3,%r4
	clgrjh	%r2,%r5,.L1011
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1048
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1034
	cgije	%r5,1,.L1039
	cgije	%r5,2,.L1040
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1040:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1039:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1048
.L1034:
	srlg	%r4,%r4,2
.L1016:
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
	brctg	%r4,.L1016
	br	%r14
.L1011:
	cije	%r1,0,.L1049
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r0,%r1,32,128+62,1
	lghi	%r1,0
	aghik	%r12,%r0,-2
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1025
	cgije	%r12,1,.L1041
	cgije	%r12,2,.L1042
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1042:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1041:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r1,%r0,.L1014
.L1025:
	srlg	%r5,%r5,2
.L1015:
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
	brctg	%r5,.L1015
.L1014:
	tmll	%r4,1
	je	.L1010
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1010:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1049:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1048:
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
	risbg	%r1,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L1055
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L1055
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L1108
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1090
	cgije	%r5,1,.L1095
	cgije	%r5,2,.L1096
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1096:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1095:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1108
.L1090:
	srlg	%r4,%r4,2
.L1061:
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
	brctg	%r4,.L1061
	br	%r14
.L1055:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1058
	risbgn	%r12,%r5,32,128+61,2
	lghi	%r5,0
	aghik	%r11,%r12,-4
	srlg	%r0,%r11,2
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1081
	cgije	%r11,1,.L1097
	cgije	%r11,2,.L1098
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1098:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1097:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
	cgrje	%r12,%r5,.L1058
.L1081:
	srlg	%r0,%r0,2
.L1059:
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
	brctg	%r0,.L1059
.L1058:
	clrjhe	%r1,%r4,.L1054
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1054
	cije	%r11,0,.L1072
	cije	%r11,1,.L1100
	cije	%r11,2,.L1101
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1101:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1100:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1054
.L1072:
	srlk	%r4,%r5,2
.L1060:
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
	brct	%r4,.L1060
.L1054:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1108:
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
	lhi	%r1,0
	lhi	%r5,15
	lhi	%r0,4
.L1125:
	srk	%r3,%r5,%r1
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L1124
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srk	%r4,%r5,%r3
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1124
	ahik	%r1,%r3,1
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1124
	ahik	%r1,%r3,2
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1124
	ahik	%r1,%r3,3
	brct	%r0,.L1125
.L1124:
	lgfr	%r2,%r1
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
	lhi	%r4,4
.L1135:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1134
	ahik	%r0,%r1,1
	lr	%r1,%r0
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1134
	ahik	%r1,%r0,1
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1134
	ahik	%r1,%r0,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1134
	ahik	%r1,%r0,3
	brct	%r4,.L1135
.L1134:
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
	larl	%r5,.L1151
	keb	%f0,.L1152-.L1151(%r5)
	jhe	.L1150
	cgebr	%r2,5,%f0
	br	%r14
.L1150:
	seb	%f0,.L1152-.L1151(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1151:
.L1152:
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
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r5,4
.L1154:
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
	brct	%r5,.L1154
	risbg	%r2,%r1,63,128+63,0
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
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r5,4
.L1162:
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
	brct	%r5,.L1162
	lgfr	%r2,%r1
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
	cgije	%r2,0,.L1172
	lhi	%r2,0
.L1171:
	risbg	%r1,%r4,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srlg	%r4,%r4,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r4,0,.L1171
.L1170:
	llgfr	%r2,%r2
	br	%r14
.L1172:
	lhi	%r2,0
	j	.L1170
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
	cgije	%r2,0,.L1178
	cgije	%r3,0,.L1179
	lhi	%r2,0
.L1177:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	risbgn	%r4,%r4,32,128+62,1
	srlg	%r3,%r3,1
	cgijlh	%r3,0,.L1177
.L1176:
	llgfr	%r2,%r2
	br	%r14
.L1178:
	lhi	%r2,0
	j	.L1176
.L1179:
	lhi	%r2,0
	j	.L1176
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	clrjhe	%r3,%r2,.L1211
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r12,16
.L1183:
	cijl	%r3,0,.L1184
	sllk	%r0,%r3,1
	llgfr	%r3,%r0
	sll	%r1,1
	clrjhe	%r0,%r2,.L1184
	ahi	%r5,-1
	cijl	%r3,0,.L1184
	sllk	%r0,%r3,1
	llgfr	%r3,%r0
	sll	%r1,1
	clrjhe	%r0,%r2,.L1184
	ahi	%r5,-1
	brct	%r12,.L1183
	lr	%r1,%r5
.L1184:
	cije	%r1,0,.L1192
	lhi	%r5,0
	j	.L1188
.L1212:
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
.L1187:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L1186
.L1188:
	clrjl	%r2,%r3,.L1187
	j	.L1212
.L1192:
	lr	%r5,%r1
.L1186:
	ltgr	%r4,%r4
	locre	%r2,%r5
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1211:
	lhi	%r1,1
	cije	%r1,0,.L1203
	lhi	%r5,0
	j	.L1204
.L1206:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L1208
.L1204:
	clrjl	%r2,%r3,.L1206
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r5,%r1
	j	.L1206
.L1203:
	lr	%r5,%r1
.L1208:
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
	jl	.L1217
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L1215:
	lgfr	%r2,%r2
	br	%r14
.L1217:
	lhi	%r2,-1
	j	.L1215
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
	jl	.L1222
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L1220:
	lgfr	%r2,%r2
	br	%r14
.L1222:
	lhi	%r2,-1
	j	.L1220
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
	cijl	%r3,0,.L1236
	lhi	%r0,0
.L1229:
	cgije	%r3,0,.L1234
	lhi	%r5,32
	lhi	%r4,0
.L1231:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srak	%r1,%r3,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1230
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1231
.L1230:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L1236:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L1229
.L1234:
	lhi	%r4,0
	j	.L1230
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
	cgijl	%r2,0,.L1244
	lhi	%r12,0
.L1239:
	cgijl	%r3,0,.L1245
.L1240:
	lghi	%r4,0
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r0,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r0
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L1244:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L1239
.L1245:
	lcgr	%r3,%r3
	xilf	%r12,1
	j	.L1240
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
	cgijl	%r2,0,.L1252
	lhi	%r12,0
.L1248:
	lpgr	%r3,%r3
	lghi	%r4,1
	llgfr	%r3,%r3
	llgfr	%r2,%r1
	brasl	%r14,__udivmodsi4@PLT
	lcgr	%r0,%r2
	ltr	%r12,%r12
	locgrne	%r2,%r0
	lmg	%r12,%r15,256(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L1252:
	.cfi_restore_state
	lcgr	%r1,%r2
	lhi	%r12,1
	j	.L1248
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
	clrjhe	%r3,%r2,.L1256
	lhi	%r1,1
	lhi	%r5,8
.L1255:
	tmll	%r3,32768
	jne	.L1256
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1256
	tmll	%r3,32768
	jne	.L1256
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1256
	brct	%r5,.L1255
	lhi	%r1,0
.L1256:
	llhr	%r0,%r1
	cije	%r0,0,.L1264
	lhi	%r0,0
	j	.L1260
.L1259:
	risbgn	%r5,%r1,64-15,128+63,48+15
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cije	%r5,0,.L1258
.L1260:
	clrjl	%r2,%r3,.L1259
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L1259
.L1264:
	lr	%r0,%r1
.L1258:
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
	clgrjhe	%r3,%r2,.L1275
	lghi	%r1,1
	lhi	%r5,32
.L1274:
	tmlh	%r3,32768
	jne	.L1275
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1275
	risbg	%r0,%r3,32,128+32,0
	jne	.L1275
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1275
	brct	%r5,.L1274
	lgr	%r1,%r0
.L1275:
	cgije	%r1,0,.L1283
	lghi	%r5,0
	j	.L1279
.L1278:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgije	%r1,0,.L1277
.L1279:
	clgrjl	%r2,%r3,.L1278
	sgr	%r2,%r3
	ogr	%r5,%r1
	j	.L1278
.L1283:
	lgr	%r5,%r1
.L1277:
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
	je	.L1293
	sllk	%r0,%r2,4064(%r3)
	lhi	%r4,0
.L1294:
	llgfr	%r2,%r4
	rosbg	%r2,%r0,0,31,32
.L1292:
	br	%r14
.L1293:
	cgije	%r3,0,.L1292
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	srag	%r2,%r2,32
	sll	%r2,0(%r3)
	or	%r0,%r2
	j	.L1294
	.cfi_endproc
.LFE133:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
.LFB134:
	.cfi_startproc
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	tmll	%r4,64
	je	.L1299
	sllg	%r1,%r3,4032(%r4)
	lghi	%r3,0
.L1304:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1299:
	cgije	%r4,0,.L1304
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
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB135:
	.cfi_startproc
	tmll	%r3,32
	je	.L1309
	srag	%r2,%r2,32
	srak	%r1,%r2,31
	sra	%r2,4064(%r3)
.L1310:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1308:
	br	%r14
.L1309:
	cgije	%r3,0,.L1308
	srag	%r4,%r2,32
	srak	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1310
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L1315
	srag	%r0,%r5,63
	srag	%r1,%r5,4032(%r4)
	lgr	%r5,%r0
.L1320:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1315:
	cgije	%r4,0,.L1320
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
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB137:
	.cfi_startproc
	lgr	%r3,%r2
	sllg	%r1,%r2,56
	rosbg	%r1,%r2,56,63,8
	risbgn	%r2,%r2,48,128+55,64-40
	ogr	%r1,%r2
	risbgn	%r0,%r3,40,128+47,64-24
	ogr	%r1,%r0
	risbgn	%r4,%r3,32,128+39,64-8
	ogr	%r1,%r4
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
	sllk	%r1,%r2,24
	rosbg	%r1,%r2,56,63,40
	risbgn	%r3,%r2,48,128+55,64-8
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
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	lg	%r3,0(%r2)
	lpgr	%r1,%r3
	aghi	%r1,-1
	srlg	%r0,%r1,63
	llcr	%r1,%r0
	ahik	%r4,%r1,-1
	lgfr	%r5,%r4
	ngr	%r5,%r3
	ltgr	%r3,%r3
	lghi	%r3,0
	locge	%r3,8(%r2)
	ogr	%r5,%r3
	flogr	%r4,%r5
	sllk	%r2,%r1,6
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
	crjl	%r4,%r1,.L1334
	crjh	%r4,%r1,.L1335
	clrjl	%r2,%r3,.L1336
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r0,1
	locrle	%r2,%r0
.L1333:
	lgfr	%r2,%r2
	br	%r14
.L1334:
	lhi	%r2,0
	j	.L1333
.L1335:
	lhi	%r2,2
	j	.L1333
.L1336:
	lhi	%r2,0
	j	.L1333
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
	cgrjl	%r4,%r1,.L1344
	cgrjh	%r4,%r1,.L1345
	clgrjl	%r5,%r2,.L1346
	clgr	%r5,%r2
	lhi	%r3,2
	lhi	%r0,1
	locrle	%r3,%r0
.L1343:
	lgfr	%r2,%r3
	br	%r14
.L1344:
	lhi	%r3,0
	j	.L1343
.L1345:
	lhi	%r3,2
	j	.L1343
.L1346:
	lhi	%r3,0
	j	.L1343
	.cfi_endproc
.LFE143:
	.size	__cmpti2, .-__cmpti2
	.align	8
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
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	lg	%r3,8(%r2)
	lpgr	%r1,%r3
	aghi	%r1,-1
	srlg	%r0,%r1,63
	ltgr	%r3,%r3
	lghi	%r4,0
	locge	%r4,0(%r2)
	llcr	%r2,%r0
	ahik	%r5,%r2,-1
	lgfr	%r1,%r5
	ngr	%r1,%r3
	ogr	%r4,%r1
	lcgr	%r3,%r4
	ngr	%r4,%r3
	flogr	%r4,%r4
	lghi	%r0,63
	sgr	%r0,%r4
	sll	%r2,6
	ar	%r2,%r0
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
	lg	%r1,0(%r2)
	ltg	%r4,8(%r2)
	jne	.L1354
	lcgr	%r3,%r1
	ngr	%r3,%r1
	flogr	%r4,%r3
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
.L1355:
	lgfr	%r2,%r2
	br	%r14
.L1354:
	lcgr	%r0,%r4
	ngr	%r4,%r0
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L1355
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
	je	.L1359
	risbgn	%r2,%r2,64-32,128+63,0+32
	srl	%r2,4064(%r3)
	lhi	%r1,0
.L1360:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1358:
	br	%r14
.L1359:
	cgije	%r3,0,.L1358
	risbgn	%r4,%r2,64-32,128+63,0+32
	srlk	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1360
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
	je	.L1365
	srlg	%r3,%r1,4032(%r4)
	lghi	%r1,0
.L1369:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1365:
	cgije	%r4,0,.L1369
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlg	%r0,%r1,0(%r4)
	lhi	%r12,64
	sr	%r12,%r4
	sllg	%r1,%r1,0(%r12)
	srlg	%r4,%r3,0(%r4)
	ogr	%r4,%r1
	stg	%r0,0(%r2)
	stg	%r4,8(%r2)
	lgdr	%r12,%f0
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
	larl	%r5,.L1397
	srlg	%r1,%r2,1
	ng	%r1,.L1398-.L1397(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L1399-.L1397(%r5)
	ng	%r2,.L1399-.L1397(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1400-.L1397(%r5)
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
.L1397:
.L1400:
	.quad	1085102592571150095
.L1399:
	.quad	3689348814741910323
.L1398:
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
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	larl	%r5,.L1413
	ldr	%f2,%f0
	lgr	%r3,%r2
	ld	%f0,.L1414-.L1413(%r5)
	j	.L1409
.L1407:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1408
	mdbr	%f2,%f2
.L1409:
	tmll	%r3,1
	je	.L1407
	mdbr	%f0,%f2
	j	.L1407
.L1408:
	cijl	%r2,0,.L1412
.L1406:
	br	%r14
.L1412:
	ld	%f4,.L1414-.L1413(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1413:
.L1414:
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
	larl	%r5,.L1422
	ler	%f2,%f0
	lgr	%r3,%r2
	le	%f0,.L1423-.L1422(%r5)
	j	.L1418
.L1416:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1417
	meebr	%f2,%f2
.L1418:
	tmll	%r3,1
	je	.L1416
	meebr	%f0,%f2
	j	.L1416
.L1417:
	cijl	%r2,0,.L1421
.L1415:
	br	%r14
.L1421:
	le	%f4,.L1423-.L1422(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1422:
.L1423:
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
	clrjl	%r4,%r1,.L1426
	clrjh	%r4,%r1,.L1427
	clrjl	%r2,%r3,.L1428
	clr	%r2,%r3
	lhi	%r2,2
	lhi	%r0,1
	locrle	%r2,%r0
.L1425:
	lgfr	%r2,%r2
	br	%r14
.L1426:
	lhi	%r2,0
	j	.L1425
.L1427:
	lhi	%r2,2
	j	.L1425
.L1428:
	lhi	%r2,0
	j	.L1425
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
	clgrjl	%r4,%r1,.L1436
	clgrjh	%r4,%r1,.L1437
	clgrjl	%r5,%r2,.L1438
	clgr	%r5,%r2
	lhi	%r3,2
	lhi	%r0,1
	locrle	%r3,%r0
.L1435:
	lgfr	%r2,%r3
	br	%r14
.L1436:
	lhi	%r3,0
	j	.L1435
.L1437:
	lhi	%r3,2
	j	.L1435
.L1438:
	lhi	%r3,0
	j	.L1435
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
