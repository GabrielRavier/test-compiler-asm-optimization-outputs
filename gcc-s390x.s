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
	cgije	%r1,2,.L36
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L36:
	icy	%r1,-1(%r4,%r3)
	stcy	%r1,-1(%r4,%r2)
	aghi	%r4,-1
.L35:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	brctg	%r4,.L22
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
.L7:
	cgrje	%r2,%r3,.L8
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
	cgije	%r5,0,.L76
	llcr	%r4,%r4
	lgr	%r0,%r5
	tmll	%r5,1
	je	.L64
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L77
	aghi	%r3,1
	aghi	%r2,1
	aghi	%r5,-1
	je	.L76
.L64:
	srlg	%r0,%r0,1
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L77
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L57
.L55:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	crje	%r4,%r12,.L73
.L57:
	aghik	%r12,%r5,-1
	lgr	%r5,%r12
	aghik	%r11,%r3,1
	aghik	%r1,%r2,1
	lgr	%r2,%r1
	llgc	%r3,1(%r3)
	stc	%r3,0(%r1)
	crje	%r4,%r3,.L73
	aghik	%r5,%r12,-1
	aghik	%r3,%r11,1
	aghik	%r2,%r1,1
	brctg	%r0,.L55
.L59:
	lghi	%r2,0
	j	.L54
.L73:
	cgije	%r5,0,.L59
	aghi	%r2,1
.L54:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L77:
	cgije	%r5,0,.L76
	aghi	%r2,1
	br	%r14
.L76:
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
	cgije	%r4,0,.L103
	llcr	%r3,%r3
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L92
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L104
	aghi	%r2,1
	aghi	%r4,-1
	je	.L103
.L92:
	srlg	%r5,%r5,1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L104
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L86
.L84:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L100
.L86:
	aghik	%r1,%r2,1
	lgr	%r2,%r1
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	llc	%r12,0(%r1)
	crje	%r12,%r3,.L100
	aghik	%r2,%r1,1
	aghik	%r4,%r0,-1
	brctg	%r5,.L84
.L89:
	lghi	%r2,0
	j	.L83
.L100:
	cgije	%r4,0,.L89
.L83:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L104:
	cgije	%r4,0,.L103
	br	%r14
.L103:
	lghi	%r2,0
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
	cgije	%r4,0,.L131
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L119
	clc	0(1,%r3),0(%r2)
	jne	.L132
	aghi	%r2,1
	aghi	%r3,1
	aghi	%r4,-1
	je	.L131
.L119:
	srlg	%r0,%r0,1
	clc	0(1,%r3),0(%r2)
	jne	.L132
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L112
.L110:
	clc	0(1,%r3),0(%r2)
	jne	.L128
.L112:
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	aghik	%r5,%r2,1
	lgr	%r2,%r5
	aghik	%r1,%r3,1
	lgr	%r3,%r1
	clc	0(1,%r1),0(%r5)
	jne	.L128
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,1
	aghik	%r3,%r1,1
	brctg	%r0,.L110
.L114:
	lhi	%r4,0
	j	.L113
.L128:
	cgije	%r4,0,.L114
	llc	%r4,0(%r2)
	llc	%r3,0(%r3)
	sr	%r4,%r3
.L113:
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L132:
	cgije	%r4,0,.L131
	llc	%r2,0(%r2)
	llc	%r1,0(%r3)
	sr	%r2,%r1
.L134:
	lgfr	%r2,%r2
	br	%r14
.L131:
	lhi	%r2,0
	j	.L134
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
	cgije	%r4,0,.L139
	brasl	%r14,memcpy@PLT
.L139:
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
	je	.L150
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L145
.L150:
	srlg	%r0,%r4,1
	aghi	%r0,1
.L146:
	brctg	%r0,.L148
	j	.L155
.L148:
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L156
	lgr	%r2,%r5
	aghi	%r5,-1
	llc	%r1,0(%r2)
	crjlh	%r1,%r3,.L146
	br	%r14
.L156:
	br	%r14
.L155:
	lghi	%r2,0
.L145:
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
	cgije	%r4,0,.L159
	la	%r0,0(%r4,%r2)
	lgr	%r5,%r2
	risbg	%r1,%r4,62,128+63,0
	je	.L169
	cgije	%r1,1,.L173
	cgije	%r1,2,.L174
	stc	%r3,0(%r2)
	aghik	%r5,%r2,1
.L174:
	stc	%r3,0(%r5)
	aghi	%r5,1
.L173:
	stc	%r3,0(%r5)
	aghi	%r5,1
	cgrje	%r0,%r5,.L159
.L169:
	srlg	%r0,%r4,2
.L160:
	stc	%r3,0(%r5)
	stc	%r3,1(%r5)
	stc	%r3,2(%r5)
	stc	%r3,3(%r5)
	aghi	%r5,4
	brctg	%r0,.L160
.L159:
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
	j	.L189
.L184:
	aghi	%r3,1
	aghi	%r2,1
.L189:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L184
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
	ber	%r14
.L192:
	crje	%r1,%r3,.L199
	aghi	%r2,1
	llc	%r1,0(%r2)
	cli	0(%r2),0
	jne	.L192
	br	%r14
.L199:
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
	aghi	%r2,1
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
	crjlh	%r0,%r5,.L208
.L207:
	cije	%r0,0,.L208
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llcr	%r0,%r1
	llc	%r5,-1(%r4,%r3)
	crje	%r0,%r5,.L207
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
	aghi	%r1,1
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
	j	.L221
.L231:
	crjlh	%r1,%r5,.L221
	aghi	%r2,1
	aghi	%r3,1
	j	.L236
.L221:
	llc	%r0,0(%r3)
	srk	%r2,%r5,%r0
.L220:
	lgfr	%r2,%r2
	br	%r14
.L224:
	lhi	%r2,0
	j	.L220
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
	aghi	%r3,2
	aghi	%r2,2
.L252:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
.L251:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	aghi	%r3,2
	aghi	%r2,2
	cgrje	%r2,%r5,.L238
.L247:
	srlg	%r1,%r0,2
.L240:
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
	brctg	%r1,.L240
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
.L280:
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L281:
	lhi	%r0,1
	j	.L280
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
	clijle	%r1,32,.L289
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L289
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r3,%r2
	j	.L286
.L289:
	lhi	%r3,1
.L286:
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
	clijle	%r2,254,.L300
	lhi	%r1,8231
	clrjle	%r2,%r1,.L298
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L298
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L298
	ahi	%r0,-8188
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	clfi	%r0,1048580
	lhi	%r5,0
	locrnl	%r2,%r5
	j	.L295
.L300:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L295
.L298:
	lhi	%r2,1
.L295:
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
	clijle	%r1,9,.L304
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
.L303:
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L304:
	lhi	%r0,1
	j	.L303
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
	jo	.L312
	kdbr	%f0,%f2
	jnh	.L315
	sdbr	%f0,%f2
	br	%r14
.L312:
	ldr	%f0,%f2
	br	%r14
.L315:
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
	jo	.L321
	kebr	%f0,%f2
	jnh	.L324
	sebr	%f0,%f2
	br	%r14
.L321:
	ler	%f0,%f2
	br	%r14
.L324:
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
	jo	.L334
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L328
	cijlh	%r1,0,.L334
	br	%r14
.L328:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L334
	ldr	%f2,%f0
.L334:
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
	jo	.L344
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L338
	cijlh	%r1,0,.L344
	br	%r14
.L338:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L344
	ler	%f2,%f0
.L344:
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
	jo	.L353
	cxbr	%f4,%f4
	jo	.L358
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L348
	cije	%r1,0,.L358
.L353:
	lxr	%f0,%f4
.L358:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L348:
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
	je	.L350
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L351:
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
.L350:
	.cfi_restore_state
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L351
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
	jo	.L367
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L363
	cijlh	%r1,0,.L361
.L367:
	ldr	%f0,%f2
.L361:
	br	%r14
.L363:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	j	.L367
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
	jo	.L377
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L373
	cijlh	%r1,0,.L371
.L377:
	ler	%f0,%f2
.L371:
	br	%r14
.L373:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	j	.L377
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
	jo	.L393
	cxbr	%f0,%f0
	jo	.L388
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	crje	%r1,%r3,.L383
	cije	%r1,0,.L393
.L388:
	lxr	%f0,%f4
.L393:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L383:
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
	je	.L385
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L386:
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
.L385:
	.cfi_restore_state
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L386
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
	cije	%r2,0,.L399
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L398:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	aghi	%r2,1
	srl	%r1,6
	cijlh	%r1,0,.L398
.L397:
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L399:
	larl	%r2,.LANCHOR0
	j	.L397
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
	cgije	%r3,0,.L413
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L413:
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
	je	.L416
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L416:
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
	je	.L426
	lgr	%r12,%r3
	lgr	%r11,%r8
	tmll	%r8,1
	je	.L433
	lgr	%r7,%r3
	basr	%r14,%r6
	cije	%r2,0,.L425
	agrk	%r12,%r13,%r10
	cgije	%r8,1,.L426
.L433:
	srlg	%r11,%r11,1
.L428:
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L425
	agr	%r12,%r10
	lgr	%r7,%r12
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	cije	%r2,0,.L425
	agr	%r12,%r10
	brctg	%r11,.L428
.L426:
	lg	%r1,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r1)
	msgr	%r8,%r10
	lgr	%r4,%r10
	lgr	%r3,%r9
	la	%r2,0(%r8,%r13)
	brasl	%r14,memcpy@PLT
	lgr	%r7,%r2
.L425:
	lgr	%r2,%r7
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
	ltg	%r13,0(%r4)
	je	.L443
	lgr	%r10,%r2
	lgr	%r7,%r3
	lgr	%r9,%r5
	lgr	%r12,%r3
	lgr	%r11,%r13
	tmll	%r13,1
	je	.L450
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L442
	agrk	%r12,%r7,%r9
	cgije	%r13,1,.L443
.L450:
	srlg	%r13,%r11,1
.L445:
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L442
	agr	%r12,%r9
	lgr	%r8,%r12
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	cije	%r2,0,.L442
	agr	%r12,%r9
	brctg	%r13,.L445
.L443:
	lghi	%r8,0
.L442:
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
	j	.L462
.L463:
	aghi	%r12,1
.L462:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L463
	cije	%r11,43,.L469
	cijlh	%r11,45,.L470
	lhi	%r5,1
.L464:
	aghi	%r12,1
.L465:
	llc	%r3,0(%r12)
	ahik	%r1,%r3,-48
	clijh	%r1,9,.L467
.L466:
	sllk	%r0,%r4,2
	ar	%r0,%r4
	sll	%r0,1
	aghi	%r12,1
	ahi	%r3,-48
	srk	%r4,%r0,%r3
	llc	%r3,0(%r12)
	ahik	%r2,%r3,-48
	clijle	%r2,9,.L466
.L467:
	lcr	%r12,%r4
	ltr	%r5,%r5
	locrne	%r12,%r4
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
.L469:
	.cfi_restore_state
	lhi	%r5,0
	j	.L464
.L470:
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
	stmg	%r11,%r15,88(%r15)
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	j	.L476
.L477:
	aghi	%r12,1
.L476:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L477
	cije	%r11,43,.L478
	cijlh	%r11,45,.L479
	lhi	%r4,1
.L478:
	aghi	%r12,1
.L479:
	llc	%r1,0(%r12)
	ahik	%r3,%r1,-48
	lghi	%r2,0
	clijh	%r3,9,.L481
.L480:
	sllg	%r0,%r2,2
	agr	%r2,%r0
	sllg	%r2,%r2,1
	aghi	%r12,1
	ahi	%r1,-48
	sgfr	%r2,%r1
	llc	%r1,0(%r12)
	ahik	%r5,%r1,-48
	clijle	%r5,9,.L480
.L481:
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
	j	.L492
.L493:
	aghi	%r12,1
.L492:
	llc	%r11,0(%r12)
	llgc	%r2,0(%r12)
	brasl	%r14,isspace@PLT
	lr	%r4,%r2
	cijlh	%r2,0,.L493
	cije	%r11,43,.L494
	cijlh	%r11,45,.L495
	lhi	%r4,1
.L494:
	aghi	%r12,1
.L495:
	llc	%r1,0(%r12)
	ahik	%r3,%r1,-48
	lghi	%r2,0
	clijh	%r3,9,.L497
.L496:
	sllg	%r0,%r2,2
	agr	%r2,%r0
	sllg	%r2,%r2,1
	aghi	%r12,1
	ahi	%r1,-48
	sgfr	%r2,%r1
	llc	%r1,0(%r12)
	ahik	%r5,%r1,-48
	clijle	%r5,9,.L496
.L497:
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
	cgije	%r4,0,.L508
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L511
.L512:
	lgr	%r12,%r10
.L509:
	cgije	%r12,0,.L508
.L511:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	agr	%r11,%r8
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L512
	jle	.L507
	agrk	%r8,%r11,%r9
	aghi	%r12,-1
	sgr	%r12,%r10
	j	.L509
.L508:
	lghi	%r11,0
.L507:
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
	cije	%r4,0,.L520
	lgr	%r8,%r2
	lgr	%r9,%r3
	lgr	%r10,%r5
	lr	%r12,%r4
	j	.L523
.L522:
	sra	%r12,1
	je	.L520
.L523:
	srak	%r1,%r12,1
	lgr	%r11,%r10
	msgfr	%r11,%r1
	agr	%r11,%r9
	lgr	%r4,%r7
	lgr	%r3,%r11
	lgr	%r2,%r8
	basr	%r14,%r6
	cije	%r2,0,.L519
	cijle	%r2,0,.L522
	agrk	%r9,%r11,%r10
	ahi	%r12,-1
	j	.L522
.L520:
	lghi	%r11,0
.L519:
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
	j	.L550
.L544:
	aghi	%r2,4
.L550:
	lt	%r1,0(%r2)
	je	.L547
	crjlh	%r1,%r3,.L544
	cije	%r1,0,.L547
.L541:
	br	%r14
.L547:
	lghi	%r2,0
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
	crjlh	%r4,%r5,.L554
.L553:
	cije	%r4,0,.L554
	cije	%r5,0,.L554
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crje	%r4,%r5,.L553
.L554:
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
	aghi	%r1,4
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
	cgije	%r4,0,.L599
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L587
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L577
	cije	%r1,0,.L577
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r4,-1
	je	.L581
.L587:
	srlg	%r0,%r0,1
.L576:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L577
	cije	%r5,0,.L577
	aghik	%r11,%r4,-1
	lgr	%r4,%r11
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r1,%r3,4
	lgr	%r3,%r1
	l	%r12,0(%r5)
	c	%r12,0(%r1)
	jne	.L577
	cije	%r12,0,.L577
	aghik	%r4,%r11,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L576
.L581:
	lhi	%r2,0
	j	.L579
.L577:
	cgije	%r4,0,.L581
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r11,-1
	locrnhe	%r2,%r11
.L579:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L599:
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
	cgije	%r4,0,.L610
	lgr	%r5,%r4
	tmll	%r4,1
	je	.L613
	c	%r3,0(%r2)
	je	.L621
	aghi	%r2,4
	aghi	%r4,-1
	je	.L610
.L613:
	srlg	%r5,%r5,1
.L605:
	c	%r3,0(%r2)
	je	.L621
	aghik	%r0,%r4,-1
	lgr	%r4,%r0
	aghik	%r1,%r2,4
	lgr	%r2,%r1
	c	%r3,0(%r1)
	je	.L621
	aghik	%r4,%r0,-1
	aghik	%r2,%r1,4
	brctg	%r5,.L605
.L610:
	lghi	%r2,0
	br	%r14
.L621:
	cgije	%r4,0,.L610
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
	cgije	%r4,0,.L648
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L636
	clc	0(4,%r2),0(%r3)
	jne	.L645
	aghi	%r2,4
	aghi	%r3,4
	aghi	%r4,-1
	je	.L630
.L636:
	srlg	%r0,%r0,1
.L625:
	clc	0(4,%r2),0(%r3)
	jne	.L645
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	aghik	%r5,%r2,4
	lgr	%r2,%r5
	aghik	%r1,%r3,4
	lgr	%r3,%r1
	clc	0(4,%r5),0(%r1)
	jne	.L645
	aghik	%r4,%r12,-1
	aghik	%r2,%r5,4
	aghik	%r3,%r1,4
	brctg	%r0,.L625
.L630:
	lhi	%r2,0
	j	.L628
.L645:
	cgije	%r4,0,.L630
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r2,0
	lhi	%r0,1
	locrh	%r2,%r0
	lhi	%r12,-1
	locrnhe	%r2,%r12
.L628:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L648:
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
	cgije	%r4,0,.L654
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L654:
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
	cgrje	%r2,%r3,.L661
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjl	%r0,%r5,.L662
	lghi	%r5,0
	cgije	%r4,0,.L661
	aghik	%r4,%r1,1
	risbg	%r0,%r4,62,128+63,0
	je	.L685
	cgije	%r0,1,.L690
	cgije	%r0,2,.L691
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	aghi	%r1,-1
	lghi	%r5,4
.L691:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r1,-1
	aghi	%r5,4
.L690:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	aghi	%r5,4
	cgije	%r1,0,.L661
.L685:
	srlg	%r4,%r4,2
.L663:
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
	brctg	%r4,.L663
.L661:
	br	%r14
.L662:
	cgije	%r4,0,.L661
	sllg	%r4,%r1,2
	nihh	%r1,16383
	aghi	%r1,1
	risbg	%r5,%r1,62,128+63,0
	je	.L676
	cgije	%r5,1,.L692
	cgije	%r5,2,.L693
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
.L693:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	aghi	%r4,-4
.L692:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,-4
	cgije	%r4,-4,.L661
.L676:
	srlg	%r1,%r1,2
.L664:
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
	brctg	%r1,.L664
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
	cgije	%r4,0,.L707
	lgr	%r1,%r2
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L717
	cgije	%r0,1,.L721
	cgije	%r0,2,.L722
	aghik	%r1,%r2,4
	st	%r3,0(%r2)
	aghi	%r5,-1
.L722:
	st	%r3,0(%r1)
	aghi	%r1,4
	aghi	%r5,-1
.L721:
	aghi	%r1,4
	sty	%r3,-4(%r1)
	cgije	%r5,0,.L707
.L717:
	srlg	%r5,%r4,2
.L708:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	aghi	%r1,16
	sty	%r3,-4(%r1)
	brctg	%r5,.L708
.L707:
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
	clgrjhe	%r2,%r3,.L731
	cgije	%r4,0,.L730
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L746
	cgije	%r1,1,.L759
	cgije	%r1,2,.L760
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L760:
	icy	%r1,-1(%r4,%r2)
	stcy	%r1,-1(%r4,%r3)
	aghi	%r4,-1
.L759:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r4,.L746
	br	%r14
.L746:
	srlg	%r5,%r5,2
.L733:
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
	brctg	%r5,.L733
	br	%r14
.L731:
	cgrje	%r2,%r3,.L730
	cgije	%r4,0,.L730
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L755
	cgije	%r0,1,.L761
	cgije	%r0,2,.L762
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L762:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L761:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r1,%r4,.L730
.L755:
	srlg	%r4,%r5,2
.L734:
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
	brctg	%r4,.L734
.L730:
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
	lhi	%r5,8
.L807:
	srlk	%r4,%r2,0(%r1)
	ahik	%r3,%r1,1
	lr	%r1,%r3
	tmll	%r4,1
	jne	.L806
	srlk	%r0,%r2,0(%r3)
	ahik	%r1,%r3,1
	tmll	%r0,1
	jne	.L806
	srlk	%r4,%r2,0(%r1)
	ahik	%r1,%r3,2
	tmll	%r4,1
	jne	.L806
	srlk	%r0,%r2,0(%r1)
	ahik	%r1,%r3,3
	tmll	%r0,1
	jne	.L806
	brct	%r5,.L807
	lhi	%r1,0
.L806:
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
	cgije	%r2,0,.L822
	risbg	%r3,%r2,63,128+63,0
	jne	.L820
	lhi	%r3,1
.L821:
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	ahi	%r3,1
	tmll	%r1,1
	je	.L821
.L820:
	lgfr	%r2,%r3
	br	%r14
.L822:
	lhi	%r3,0
	j	.L820
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
	larl	%r5,.L831
	keb	%f0,.L832-.L831(%r5)
	jl	.L829
	keb	%f0,.L833-.L831(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L827:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L829:
	lhi	%r2,1
	j	.L827
	.section	.rodata
	.align	8
.L831:
.L833:
	.long	2139095039
.L832:
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
	larl	%r5,.L839
	kdb	%f0,.L840-.L839(%r5)
	jl	.L837
	kdb	%f0,.L841-.L839(%r5)
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L835:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L837:
	lhi	%r2,1
	j	.L835
	.section	.rodata
	.align	8
.L839:
.L841:
	.long	2146435071
	.long	-1
.L840:
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
	larl	%r5,.L847
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L848-.L847(%r5)
	ld	%f6,.L848-.L847+8(%r5)
	kxbr	%f0,%f4
	jl	.L845
	ld	%f4,.L849-.L847(%r5)
	ld	%f6,.L849-.L847+8(%r5)
	kxbr	%f0,%f4
	lhi	%r2,0
	lhi	%r1,1
	locrh	%r2,%r1
.L843:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L845:
	lhi	%r2,1
	j	.L843
	.section	.rodata
	.align	8
.L847:
.L849:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L848:
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
	larl	%r5,.L866
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L865
	le	%f4,.L867-.L866(%r5)
	j	.L856
.L865:
	le	%f4,.L868-.L866(%r5)
	j	.L856
.L855:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L853
	meebr	%f4,%f4
.L856:
	tmll	%r2,1
	je	.L855
	meebr	%f0,%f4
	j	.L855
.L853:
	br	%r14
	.section	.rodata
	.align	8
.L866:
.L868:
	.long	1056964608
.L867:
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
	larl	%r5,.L883
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L882
	ld	%f4,.L884-.L883(%r5)
	j	.L873
.L882:
	ld	%f4,.L885-.L883(%r5)
	j	.L873
.L872:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L870
	mdbr	%f4,%f4
.L873:
	tmll	%r2,1
	je	.L872
	mdbr	%f0,%f4
	j	.L872
.L870:
	br	%r14
	.section	.rodata
	.align	8
.L883:
.L885:
	.long	1071644672
	.long	0
.L884:
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
	larl	%r5,.L900
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L887
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L887
	cijl	%r4,0,.L899
	ld	%f0,.L901-.L900(%r5)
	ld	%f2,.L901-.L900+8(%r5)
	j	.L890
.L899:
	ld	%f0,.L902-.L900(%r5)
	ld	%f2,.L902-.L900+8(%r5)
	j	.L890
.L889:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L887
	mxbr	%f0,%f0
.L890:
	tmll	%r4,1
	je	.L889
	mxbr	%f4,%f0
	j	.L889
.L887:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L900:
.L902:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L901:
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
	cgije	%r4,0,.L927
	ldgr	%f0,%r12
	.cfi_register 12, 16
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r5,%r4,62,128+63,0
	je	.L914
	cgije	%r5,1,.L918
	cgije	%r5,2,.L919
	la	%r1,1(%r2)
	lgr	%r12,%r3
	aghi	%r3,1
	xc	0(1,%r2),0(%r12)
.L919:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	aghi	%r3,1
	xr	%r5,%r12
	stc	%r5,0(%r1)
	aghi	%r1,1
.L918:
	aghi	%r3,1
	aghi	%r1,1
	llgc	%r5,-1(%r1)
	llgc	%r12,-1(%r3)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	cgrje	%r0,%r3,.L904
.L914:
	srlg	%r4,%r4,2
.L905:
	xc	0(1,%r1),0(%r3)
	xc	1(1,%r1),1(%r3)
	xc	2(1,%r1),2(%r3)
	aghi	%r3,4
	aghi	%r1,4
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L905
.L904:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L927:
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
	lghi	%r5,0
	lgr	%r1,%r2
	srst	%r5,%r1
	jo	.-4
	lgr	%r1,%r5
	cgije	%r4,0,.L951
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r0,%r4
	tmll	%r4,1
	je	.L940
	llgc	%r12,0(%r3)
	stc	%r12,0(%r5)
	cgije	%r12,0,.L948
	aghi	%r3,1
	aghik	%r1,%r5,1
	aghi	%r4,-1
	je	.L937
.L940:
	srlg	%r0,%r0,1
.L932:
	llgc	%r11,0(%r3)
	stc	%r11,0(%r1)
	cgije	%r11,0,.L948
	aghik	%r11,%r3,1
	aghik	%r5,%r1,1
	lgr	%r1,%r5
	aghik	%r12,%r4,-1
	lgr	%r4,%r12
	llgc	%r3,1(%r3)
	stc	%r3,0(%r5)
	cgije	%r3,0,.L948
	aghik	%r3,%r11,1
	aghik	%r1,%r5,1
	aghik	%r4,%r12,-1
	brctg	%r0,.L932
	j	.L937
.L948:
	cgijlh	%r4,0,.L935
.L937:
	mvi	0(%r1),0
.L935:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L951:
	mvi	0(%r5),0
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
	cgije	%r3,0,.L984
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L968
	cgije	%r5,1,.L979
	cgije	%r5,2,.L980
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L980:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L979:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L956
.L968:
	srlg	%r0,%r4,2
.L957:
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
	brctg	%r0,.L957
	br	%r14
.L984:
	lghi	%r2,0
	br	%r14
.L956:
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
.L996:
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L993
	lgr	%r1,%r3
.L992:
	llc	%r4,0(%r1)
	cije	%r4,0,.L997
	aghi	%r1,1
	crjlh	%r4,%r5,.L992
.L990:
	br	%r14
.L997:
	aghi	%r2,1
	j	.L996
.L993:
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
.L1001:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	aghi	%r1,1
	cijlh	%r4,0,.L1001
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
	jhe	.L1009
	lgr	%r11,%r3
	llgc	%r9,0(%r3)
.L1007:
	lgr	%r3,%r9
	brasl	%r14,strchr@PLT
	lgr	%r12,%r2
	cgije	%r2,0,.L1005
	lgr	%r4,%r10
	lgr	%r3,%r11
	brasl	%r14,strncmp@PLT
	cije	%r2,0,.L1005
	aghik	%r2,%r12,1
	j	.L1007
.L1009:
	lgr	%r12,%r2
.L1005:
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
	jl	.L1021
.L1013:
	lzdr	%f6
	kdbr	%f0,%f6
	jnh	.L1016
	kdbr	%f2,%f6
	jl	.L1015
.L1016:
	br	%r14
.L1021:
	kdbr	%f2,%f4
	jnh	.L1013
.L1015:
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
	cgije	%r5,0,.L1027
	clgrjl	%r3,%r5,.L1029
	sgrk	%r11,%r3,%r5
	algr	%r11,%r2
	jnle	.L1029
	llc	%r8,0(%r4)
	aghik	%r7,%r5,-1
	aghik	%r9,%r4,1
	j	.L1026
.L1025:
	clgrjh	%r12,%r11,.L1029
.L1026:
	ic	%r1,0(%r12)
	lgr	%r10,%r12
	aghi	%r12,1
	llcr	%r0,%r1
	crjlh	%r0,%r8,.L1025
	lgr	%r4,%r7
	lgr	%r3,%r9
	lgr	%r2,%r12
	brasl	%r14,memcmp@PLT
	cijlh	%r2,0,.L1025
	j	.L1023
.L1027:
	lgr	%r10,%r2
	j	.L1023
.L1029:
	lghi	%r10,0
.L1023:
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
	larl	%r5,.L1062
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1061
	lhi	%r3,0
.L1037:
	kdb	%f0,.L1063-.L1062(%r5)
	jnhe	.L1058
	lhi	%r1,0
.L1041:
	ahi	%r1,1
	mdb	%f0,.L1064-.L1062(%r5)
	kdb	%f0,.L1063-.L1062(%r5)
	jhe	.L1041
.L1042:
	st	%r1,0(%r2)
	cije	%r3,0,.L1045
	lcdbr	%f0,%f0
.L1045:
	br	%r14
.L1061:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L1037
.L1058:
	kdb	%f0,.L1064-.L1062(%r5)
	jnl	.L1059
	lzdr	%f4
	lhi	%r1,0
	cdbr	%f0,%f4
	je	.L1042
.L1044:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1064-.L1062(%r5)
	jl	.L1044
	j	.L1042
.L1059:
	lhi	%r1,0
	j	.L1042
	.section	.rodata
	.align	8
.L1062:
.L1064:
	.long	1071644672
	.long	0
.L1063:
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
	cgije	%r4,0,.L1068
.L1067:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	sllg	%r3,%r3,1
	srlg	%r4,%r4,1
	cgijlh	%r4,0,.L1067
	br	%r14
.L1068:
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
	clrjhe	%r3,%r2,.L1089
.L1072:
	cijl	%r3,0,.L1073
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1073
	cijl	%r3,0,.L1073
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1073
	brct	%r0,.L1072
.L1081:
	lhi	%r0,0
.L1075:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1073:
	cije	%r1,0,.L1081
.L1089:
	lhi	%r0,0
	j	.L1077
.L1076:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L1075
.L1077:
	clrjl	%r2,%r3,.L1076
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
	j	.L1076
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
	cgije	%r2,0,.L1101
.L1102:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L1102
.L1101:
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
	clgrjl	%r2,%r3,.L1107
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L1107
	ahik	%r1,%r4,-1
	llgfr	%r5,%r1
	lgr	%r1,%r5
	cgije	%r4,0,.L1172
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1144
	cgije	%r0,1,.L1149
	cgije	%r0,2,.L1150
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1150:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1149:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1172
.L1144:
	srlg	%r4,%r4,2
.L1113:
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
	brctg	%r4,.L1113
	br	%r14
.L1107:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1110
	risbgn	%r12,%r5,32,128+60,3
	lghi	%r5,0
	aghik	%r11,%r12,-8
	srlg	%r0,%r11,3
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1135
	cgije	%r11,1,.L1151
	cgije	%r11,2,.L1152
	lg	%r5,0(%r3)
	stg	%r5,0(%r2)
	lghi	%r5,8
.L1152:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
.L1151:
	lg	%r11,0(%r5,%r3)
	stg	%r11,0(%r5,%r2)
	aghi	%r5,8
	cgrje	%r12,%r5,.L1110
.L1135:
	srlg	%r0,%r0,2
.L1111:
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
	brctg	%r0,.L1111
.L1110:
	clrjhe	%r1,%r4,.L1106
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1106
	cije	%r11,0,.L1126
	cije	%r11,1,.L1154
	cije	%r11,2,.L1155
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1155:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1154:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1106
.L1126:
	srlk	%r4,%r5,2
.L1112:
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
	brct	%r4,.L1112
.L1106:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1172:
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
	clgrjl	%r2,%r3,.L1176
	agrk	%r5,%r3,%r4
	clgrjh	%r2,%r5,.L1176
	ahik	%r0,%r4,-1
	llgfr	%r5,%r0
	lgr	%r1,%r5
	cgije	%r4,0,.L1225
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1203
	cgije	%r0,1,.L1208
	cgije	%r0,2,.L1209
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1209:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1208:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1225
.L1203:
	srlg	%r4,%r4,2
.L1181:
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
	brctg	%r4,.L1181
	br	%r14
.L1176:
	cije	%r1,0,.L1226
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r0,%r1,32,128+62,1
	lghi	%r1,0
	aghik	%r12,%r0,-2
	srlg	%r5,%r12,1
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1194
	cgije	%r12,1,.L1210
	cgije	%r12,2,.L1211
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L1211:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L1210:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r0,%r1,.L1179
.L1194:
	srlg	%r5,%r5,2
.L1180:
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
	brctg	%r5,.L1180
.L1179:
	tmll	%r4,1
	je	.L1175
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1175:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1226:
	tmll	%r4,1
	ber	%r14
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1225:
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
	clgrjl	%r2,%r3,.L1232
	agrk	%r0,%r3,%r4
	clgrjh	%r2,%r0,.L1232
	ahik	%r1,%r4,-1
	llgfr	%r5,%r1
	lgr	%r1,%r5
	cgije	%r4,0,.L1297
	aghik	%r4,%r5,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1269
	cgije	%r0,1,.L1274
	cgije	%r0,2,.L1275
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	aghik	%r1,%r5,-1
.L1275:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1274:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1297
.L1269:
	srlg	%r4,%r4,2
.L1238:
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
	brctg	%r4,.L1238
	br	%r14
.L1232:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cije	%r5,0,.L1235
	risbgn	%r12,%r5,32,128+61,2
	lghi	%r5,0
	aghik	%r11,%r12,-4
	srlg	%r0,%r11,2
	aghi	%r0,1
	risbg	%r11,%r0,62,128+63,0
	je	.L1260
	cgije	%r11,1,.L1276
	cgije	%r11,2,.L1277
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lghi	%r5,4
.L1277:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
.L1276:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	aghi	%r5,4
	cgrje	%r12,%r5,.L1235
.L1260:
	srlg	%r0,%r0,2
.L1236:
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
	brctg	%r0,.L1236
.L1235:
	clrjhe	%r1,%r4,.L1231
	llgfr	%r1,%r1
	lghi	%r0,-1
	xgrk	%r5,%r1,%r0
	ar	%r5,%r4
	risbg	%r11,%r5,62,128+63,0
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1231
	cije	%r11,0,.L1251
	cije	%r11,1,.L1279
	cije	%r11,2,.L1280
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1280:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L1279:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1231
.L1251:
	srlk	%r4,%r5,2
.L1237:
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
	brct	%r4,.L1237
.L1231:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1297:
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
.L1314:
	srk	%r3,%r5,%r1
	srak	%r4,%r2,0(%r3)
	tmll	%r4,1
	jne	.L1313
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srk	%r4,%r5,%r3
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1313
	ahik	%r1,%r3,1
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1313
	ahik	%r1,%r3,2
	srk	%r4,%r5,%r1
	srak	%r4,%r2,0(%r4)
	tmll	%r4,1
	jne	.L1313
	ahik	%r1,%r3,3
	brct	%r0,.L1314
.L1313:
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
.L1324:
	srak	%r3,%r2,0(%r1)
	tmll	%r3,1
	jne	.L1323
	ahik	%r3,%r1,1
	lr	%r1,%r3
	srak	%r5,%r2,0(%r3)
	tmll	%r5,1
	jne	.L1323
	ahik	%r1,%r3,1
	srak	%r0,%r2,0(%r1)
	tmll	%r0,1
	jne	.L1323
	ahik	%r1,%r3,2
	srak	%r5,%r2,0(%r1)
	tmll	%r5,1
	jne	.L1323
	ahik	%r1,%r3,3
	brct	%r4,.L1324
.L1323:
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
	larl	%r5,.L1340
	keb	%f0,.L1341-.L1340(%r5)
	jhe	.L1339
	cgebr	%r2,5,%f0
	br	%r14
.L1339:
	seb	%f0,.L1341-.L1340(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1340:
.L1341:
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
.L1343:
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
	brct	%r5,.L1343
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
.L1351:
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
	brct	%r5,.L1351
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
	cgije	%r2,0,.L1359
.L1360:
	risbg	%r1,%r2,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r4,%r0
	srlg	%r2,%r2,1
	risbgn	%r3,%r3,32,128+62,1
	cgijlh	%r2,0,.L1360
.L1359:
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
	cgijlh	%r2,0,.L1370
	j	.L1365
.L1366:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r0,%r1
	nr	%r0,%r2
	ar	%r4,%r0
	risbgn	%r2,%r2,32,128+62,1
	srlg	%r3,%r3,1
.L1370:
	cgijlh	%r3,0,.L1366
.L1365:
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
	clrjhe	%r3,%r2,.L1390
.L1373:
	cijl	%r3,0,.L1374
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1374
	cijl	%r3,0,.L1374
	sllk	%r5,%r3,1
	llgfr	%r3,%r5
	sll	%r1,1
	clrjhe	%r5,%r2,.L1374
	brct	%r0,.L1373
.L1382:
	lhi	%r0,0
.L1376:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1374:
	cije	%r1,0,.L1382
.L1390:
	lhi	%r0,0
	j	.L1378
.L1377:
	srl	%r1,1
	srlg	%r3,%r3,1
	cije	%r1,0,.L1376
.L1378:
	clrjl	%r2,%r3,.L1377
	sr	%r2,%r3
	llgfr	%r2,%r2
	or	%r0,%r1
	j	.L1377
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
	cijl	%r3,0,.L1420
	lhi	%r0,0
.L1408:
	cgije	%r3,0,.L1413
	lhi	%r5,32
	lhi	%r4,0
.L1410:
	risbg	%r1,%r3,63,128+63,0
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	lgfr	%r2,%r2
	srag	%r3,%r3,1
	je	.L1409
	ahik	%r1,%r5,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1410
.L1409:
	lcr	%r2,%r4
	ltr	%r0,%r0
	locre	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L1420:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L1408
.L1413:
	lhi	%r4,0
	j	.L1409
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
	cgijl	%r2,0,.L1430
	lhi	%r12,0
.L1423:
	cgijl	%r3,0,.L1431
.L1424:
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
.L1430:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r12,1
	j	.L1423
.L1431:
	lcgr	%r3,%r3
	xilf	%r12,1
	j	.L1424
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
	cgijl	%r2,0,.L1440
	lhi	%r12,0
.L1434:
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
.L1440:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r12,1
	j	.L1434
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
	clrjhe	%r3,%r2,.L1444
.L1443:
	tmll	%r3,32768
	jne	.L1444
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1444
	tmll	%r3,32768
	jne	.L1444
	risbgn	%r3,%r3,48,128+62,1
	sll	%r1,1
	clrjle	%r2,%r3,.L1444
	brct	%r5,.L1443
	lhi	%r1,0
.L1444:
	llhr	%r5,%r1
	tml	%r1,65535
	je	.L1452
	lhi	%r0,0
	j	.L1448
.L1447:
	srl	%r5,1
	lr	%r1,%r5
	srlg	%r3,%r3,1
	cije	%r5,0,.L1446
	llhr	%r5,%r5
.L1448:
	clrjl	%r2,%r3,.L1447
	sr	%r2,%r3
	llghr	%r2,%r2
	or	%r0,%r1
	j	.L1447
.L1452:
	lr	%r0,%r1
.L1446:
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
	clgrjhe	%r3,%r2,.L1479
.L1462:
	tmlh	%r3,32768
	jne	.L1463
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1463
	tmlh	%r3,32768
	jne	.L1463
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L1463
	brct	%r5,.L1462
.L1471:
	lghi	%r0,0
.L1465:
	ltgr	%r4,%r4
	locgre	%r2,%r0
	br	%r14
.L1463:
	cgije	%r1,0,.L1471
.L1479:
	lghi	%r0,0
	j	.L1467
.L1466:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgije	%r1,0,.L1465
.L1467:
	clgrjl	%r2,%r3,.L1466
	sgr	%r2,%r3
	ogr	%r0,%r1
	j	.L1466
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
	je	.L1483
	sllk	%r0,%r2,4064(%r3)
	lhi	%r4,0
.L1484:
	llgfr	%r2,%r4
	rosbg	%r2,%r0,0,31,32
.L1482:
	br	%r14
.L1483:
	cgije	%r3,0,.L1482
	sllk	%r4,%r2,0(%r3)
	lhi	%r1,32
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	srag	%r2,%r2,32
	sll	%r2,0(%r3)
	or	%r0,%r2
	j	.L1484
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
	je	.L1489
	sllg	%r1,%r3,4032(%r4)
	lghi	%r3,0
.L1497:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L1489:
	cgije	%r4,0,.L1497
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
	je	.L1502
	srag	%r2,%r2,32
	srak	%r1,%r2,31
	sra	%r2,4064(%r3)
.L1503:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1501:
	br	%r14
.L1502:
	cgije	%r3,0,.L1501
	srag	%r4,%r2,32
	srak	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1503
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
	je	.L1508
	srag	%r0,%r5,63
	srag	%r1,%r5,4032(%r4)
	lgr	%r5,%r0
.L1516:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1508:
	cgije	%r4,0,.L1516
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
	jl	.L1530
	jh	.L1531
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
.L1529:
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1530:
	lhi	%r3,0
	j	.L1529
.L1531:
	lhi	%r3,2
	j	.L1529
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
	jl	.L1540
	jh	.L1541
	clgr	%r4,%r1
	lhi	%r5,1
	lhi	%r3,2
	locrh	%r5,%r3
	lhi	%r0,0
	locrnhe	%r5,%r0
.L1539:
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L1540:
	lhi	%r5,0
	j	.L1539
.L1541:
	lhi	%r5,2
	j	.L1539
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
	jne	.L1550
	lcgr	%r3,%r1
	ngr	%r3,%r1
	flogr	%r4,%r3
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
.L1551:
	lgfr	%r2,%r2
	br	%r14
.L1550:
	lcgr	%r0,%r4
	ngr	%r4,%r0
	flogr	%r4,%r4
	lghi	%r2,63
	sgr	%r2,%r4
	ahi	%r2,1
	j	.L1551
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
	je	.L1555
	risbgn	%r2,%r2,64-32,128+63,0+32
	srl	%r2,4064(%r3)
	lhi	%r1,0
.L1556:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L1554:
	br	%r14
.L1555:
	cgije	%r3,0,.L1554
	risbgn	%r4,%r2,64-32,128+63,0+32
	srlk	%r1,%r4,0(%r3)
	lhi	%r5,32
	sr	%r5,%r3
	sll	%r4,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r4
	j	.L1556
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
	je	.L1561
	srlg	%r1,%r5,4032(%r4)
	lghi	%r5,0
.L1569:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L1561:
	cgije	%r4,0,.L1569
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
	larl	%r5,.L1597
	srlg	%r1,%r2,1
	ng	%r1,.L1598-.L1597(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L1599-.L1597(%r5)
	ng	%r2,.L1599-.L1597(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L1600-.L1597(%r5)
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
.L1597:
.L1600:
	.quad	1085102592571150095
.L1599:
	.quad	3689348814741910323
.L1598:
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
	larl	%r5,.L1616
	ldr	%f2,%f0
	lgr	%r3,%r2
	ld	%f0,.L1617-.L1616(%r5)
	j	.L1609
.L1607:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1608
	mdbr	%f2,%f2
.L1609:
	tmll	%r3,1
	je	.L1607
	mdbr	%f0,%f2
	j	.L1607
.L1608:
	cijl	%r2,0,.L1615
.L1606:
	br	%r14
.L1615:
	ld	%f4,.L1617-.L1616(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1616:
.L1617:
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
	larl	%r5,.L1628
	ler	%f2,%f0
	lgr	%r3,%r2
	le	%f0,.L1629-.L1628(%r5)
	j	.L1621
.L1619:
	srlk	%r1,%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r3,%r1
	cije	%r1,0,.L1620
	meebr	%f2,%f2
.L1621:
	tmll	%r3,1
	je	.L1619
	meebr	%f0,%f2
	j	.L1619
.L1620:
	cijl	%r2,0,.L1627
.L1618:
	br	%r14
.L1627:
	le	%f4,.L1629-.L1628(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L1628:
.L1629:
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
	jl	.L1632
	jh	.L1633
	clr	%r2,%r3
	lhi	%r3,1
	lhi	%r0,2
	locrh	%r3,%r0
	lhi	%r2,0
	locrnhe	%r3,%r2
.L1631:
	risbg	%r2,%r3,62,128+63,0
	br	%r14
.L1632:
	lhi	%r3,0
	j	.L1631
.L1633:
	lhi	%r3,2
	j	.L1631
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
	jl	.L1642
	jh	.L1643
	clgr	%r4,%r1
	lhi	%r2,1
	lhi	%r3,2
	locrh	%r2,%r3
	lhi	%r0,0
	locrnhe	%r2,%r0
.L1641:
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L1642:
	lhi	%r2,0
	j	.L1641
.L1643:
	lhi	%r2,2
	j	.L1641
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
