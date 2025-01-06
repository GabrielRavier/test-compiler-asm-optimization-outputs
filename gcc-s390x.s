	.file	"mini-libc.c"
	.machinemode zarch
	.machine "arch12"
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
	vlvgp	%v0,%r3,%r4
	vst	%v0,0(%r2),3
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
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	clgr	%r2,%r3
	jle	.L7
	cgije	%r4,0,.L8
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L124
	lay	%r5,-2(%r4,%r3)
	sgrk	%r8,%r2,%r5
	la	%r9,14(%r8,%r1)
	clgijle	%r9,14,.L124
	risbg	%r1,%r4,0,128+59,0
	aghik	%r12,%r4,-16
	aghik	%r10,%r1,-16
	lcgr	%r0,%r1
	agrk	%r11,%r3,%r12
	agr	%r12,%r2
	srlg	%r5,%r10,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L102
	cgije	%r8,1,.L125
	cgije	%r8,2,.L126
	vl	%v17,0(%r11)
	lghi	%r1,-16
	vst	%v17,0(%r12)
.L126:
	vl	%v19,0(%r1,%r11)
	vst	%v19,0(%r1,%r12)
	aghi	%r1,-16
.L125:
	vl	%v21,0(%r1,%r11)
	vst	%v21,0(%r1,%r12)
	aghi	%r1,-16
	cgrje	%r1,%r0,.L180
.L102:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L194
	aghi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L10:
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	aghi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brctg	%r5,.L10
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	aghi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
.L180:
	agr	%r1,%r4
	risbg	%r12,%r4,60,128+63,0
	agr	%r3,%r1
	agr	%r1,%r2
	tmll	%r4,15
	je	.L8
	icy	%r4,-1(%r3)
	stcy	%r4,-1(%r1)
	cgije	%r12,1,.L8
	icy	%r11,-2(%r3)
	stcy	%r11,-2(%r1)
	cgije	%r12,2,.L8
	icy	%r0,-3(%r3)
	stcy	%r0,-3(%r1)
	cgije	%r12,3,.L8
	icy	%r5,-4(%r3)
	stcy	%r5,-4(%r1)
	cgije	%r12,4,.L8
	icy	%r9,-5(%r3)
	stcy	%r9,-5(%r1)
	cgije	%r12,5,.L8
	icy	%r10,-6(%r3)
	stcy	%r10,-6(%r1)
	cgije	%r12,6,.L8
	icy	%r8,-7(%r3)
	stcy	%r8,-7(%r1)
	cgije	%r12,7,.L8
	icy	%r4,-8(%r3)
	stcy	%r4,-8(%r1)
	cgije	%r12,8,.L8
	icy	%r11,-9(%r3)
	stcy	%r11,-9(%r1)
	cgije	%r12,9,.L8
	icy	%r0,-10(%r3)
	stcy	%r0,-10(%r1)
	cgije	%r12,10,.L8
	icy	%r5,-11(%r3)
	stcy	%r5,-11(%r1)
	cgije	%r12,11,.L8
	icy	%r9,-12(%r3)
	stcy	%r9,-12(%r1)
	cgije	%r12,12,.L8
	icy	%r10,-13(%r3)
	stcy	%r10,-13(%r1)
	cgije	%r12,13,.L8
	icy	%r8,-14(%r3)
	stcy	%r8,-14(%r1)
	cgije	%r12,14,.L8
	icy	%r3,-15(%r3)
	stcy	%r3,-15(%r1)
.L8:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L7:
	.cfi_restore_state
	je	.L8
	cgije	%r4,0,.L8
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L21
	la	%r0,1(%r3)
	sgrk	%r5,%r2,%r0
	clgijle	%r5,14,.L21
	risbg	%r8,%r4,0,128+59,0
	aghik	%r9,%r8,-16
	lghi	%r1,0
	srlg	%r10,%r9,4
	aghi	%r10,1
	risbg	%r12,%r10,62,128+63,0
	je	.L120
	cgije	%r12,1,.L127
	cgije	%r12,2,.L128
	vl	%v0,0(%r3)
	lghi	%r1,16
	vst	%v0,0(%r2)
.L128:
	vl	%v5,0(%r1,%r3)
	vst	%v5,0(%r1,%r2)
	aghi	%r1,16
.L127:
	vl	%v7,0(%r1,%r3)
	vst	%v7,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r1,%r8,.L181
.L120:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L196
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L15:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L15
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
.L181:
	agr	%r3,%r1
	agrk	%r11,%r2,%r1
	sgrk	%r0,%r4,%r1
	cgrje	%r4,%r1,.L8
	mvc	0(1,%r11),0(%r3)
	cgije	%r0,1,.L8
	mvc	1(1,%r11),1(%r3)
	cgije	%r0,2,.L8
	mvc	2(1,%r11),2(%r3)
	cgije	%r0,3,.L8
	mvc	3(1,%r11),3(%r3)
	cgije	%r0,4,.L8
	mvc	4(1,%r11),4(%r3)
	cgije	%r0,5,.L8
	mvc	5(1,%r11),5(%r3)
	cgije	%r0,6,.L8
	mvc	6(1,%r11),6(%r3)
	cgije	%r0,7,.L8
	mvc	7(1,%r11),7(%r3)
	cgije	%r0,8,.L8
	mvc	8(1,%r11),8(%r3)
	cgije	%r0,9,.L8
	mvc	9(1,%r11),9(%r3)
	cgije	%r0,10,.L8
	mvc	10(1,%r11),10(%r3)
	cgije	%r0,11,.L8
	mvc	11(1,%r11),11(%r3)
	cgije	%r0,12,.L8
	mvc	12(1,%r11),12(%r3)
	cgije	%r0,13,.L8
	mvc	13(1,%r11),13(%r3)
	cgije	%r0,14,.L8
	mvc	14(1,%r11),14(%r3)
	j	.L8
.L194:
	vl	%v23,0(%r1,%r11)
	aghik	%r9,%r1,-16
	aghik	%r10,%r1,-32
	vst	%v23,0(%r1,%r12)
	aghik	%r8,%r1,-48
	aghi	%r1,-64
	vl	%v24,0(%r9,%r11)
	vst	%v24,0(%r9,%r12)
	vl	%v26,0(%r10,%r11)
	vst	%v26,0(%r10,%r12)
	vl	%v28,0(%r8,%r11)
	vst	%v28,0(%r8,%r12)
	brctg	%r5,.L194
	j	.L180
.L196:
	vl	%v16,0(%r1,%r3)
	vst	%v16,0(%r1,%r2)
	vl	%v18,16(%r1,%r3)
	vst	%v18,16(%r1,%r2)
	vl	%v20,32(%r1,%r3)
	vst	%v20,32(%r1,%r2)
	vl	%v22,48(%r1,%r3)
	vst	%v22,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L196
	j	.L181
.L124:
	lgr	%r11,%r1
	risbg	%r0,%r1,62,128+63,0
	je	.L93
	icy	%r12,-1(%r4,%r3)
	stcy	%r12,-1(%r4,%r2)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
	cgije	%r0,1,.L93
	cgije	%r0,2,.L131
	icy	%r4,-1(%r11,%r3)
	stcy	%r4,-1(%r11,%r2)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L131:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L93:
	srlg	%r9,%r11,2
	aghi	%r9,1
.L12:
	icy	%r10,-1(%r4,%r3)
	stcy	%r10,-1(%r4,%r2)
	brctg	%r9,.L53
	j	.L8
.L53:
	icy	%r8,-1(%r1,%r3)
	stcy	%r8,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	lay	%r4,-3(%r1)
	stcy	%r0,-3(%r1,%r2)
	lay	%r1,-4(%r1)
	j	.L12
.L21:
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r8,%r4,62,128+63,0
	je	.L111
	cgije	%r8,1,.L129
	cgije	%r8,2,.L130
	mvc	0(1,%r2),0(%r3)
	lghi	%r1,1
.L130:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
.L129:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	cgrje	%r4,%r1,.L8
.L111:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L195
	aghi	%r5,-1
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
.L18:
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r4,3(%r1,%r3)
	stc	%r4,3(%r1,%r2)
	aghi	%r1,4
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	brctg	%r5,.L18
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L8
.L195:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L195
	j	.L8
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
	cgije	%r5,0,.L202
	aghik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L220
.L209:
	srlg	%r1,%r5,1
.L200:
	llgc	%r5,0(%r3)
	la	%r0,1(%r2)
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L217
	llgc	%r5,1(%r3)
	lgr	%r2,%r0
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L217
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r1,.L200
.L202:
	lghi	%r2,0
	br	%r14
.L220:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L217
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L209
	j	.L202
.L217:
	la	%r2,1(%r2)
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
	cgije	%r4,0,.L226
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L233
	cgije	%r5,1,.L244
	cgije	%r5,2,.L245
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L222
	la	%r2,1(%r2)
	lgr	%r4,%r0
.L245:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L222
	la	%r2,1(%r2)
	aghi	%r4,-1
.L244:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L222
	la	%r2,1(%r2)
	cgije	%r4,1,.L226
.L233:
	srlg	%r4,%r1,2
.L223:
	llc	%r0,0(%r2)
	la	%r1,1(%r2)
	crje	%r0,%r3,.L255
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	crje	%r5,%r3,.L256
	llc	%r0,1(%r1)
	la	%r2,1(%r1)
	crje	%r0,%r3,.L222
	llc	%r5,2(%r1)
	la	%r2,2(%r1)
	crje	%r5,%r3,.L222
	la	%r2,3(%r1)
	brctg	%r4,.L223
.L226:
	lghi	%r2,0
.L222:
	br	%r14
.L255:
	br	%r14
.L256:
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
	cgije	%r4,0,.L287
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r4,-1
	lgr	%r0,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L270
	cgije	%r1,1,.L281
	cgije	%r1,2,.L282
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L289
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L282:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L289
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L281:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L289
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cgije	%r4,1,.L263
.L270:
	srlg	%r4,%r0,2
.L259:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L289
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	crjlh	%r1,%r5,.L289
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	crjlh	%r1,%r5,.L289
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	la	%r2,4(%r2)
	crjlh	%r1,%r5,.L289
	la	%r3,4(%r3)
	brctg	%r4,.L259
.L263:
	lhi	%r3,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L289:
	.cfi_restore_state
	srk	%r3,%r1,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L287:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
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
	stmg	%r12,%r15,128(%r15)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	cgije	%r4,0,.L300
	brasl	%r14,memcpy@PLT
.L300:
	lgr	%r2,%r12
	lmg	%r12,%r15,160(%r15)
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
	risbg	%r5,%r4,62,128+63,0
	je	.L315
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L328
	cgije	%r5,1,.L315
	cgije	%r5,2,.L319
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r5,%r3,.L328
.L319:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L328
.L315:
	srlg	%r4,%r4,2
	aghi	%r4,1
	brctg	%r4,.L329
	lghi	%r2,0
	br	%r14
.L329:
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r5,%r3,.L334
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crje	%r5,%r3,.L328
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L332:
	llc	%r12,-2(%r1)
	lgr	%r2,%r0
	aghik	%r5,%r1,-3
	crje	%r12,%r3,.L306
	llc	%r0,-3(%r1)
	lgr	%r2,%r5
	aghi	%r1,-4
	crje	%r0,%r3,.L306
	brctg	%r4,.L309
	lghi	%r2,0
.L306:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L309:
	.cfi_restore_state
	llc	%r12,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r12,%r3,.L306
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crjlh	%r5,%r3,.L332
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L328:
	br	%r14
.L334:
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
	cgije	%r4,0,.L341
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lghi	%r12,0
	lghi	%r13,0
	lgr	%r0,%r2
	lgr	%r1,%r4
	mvcle	%r0,%r12,0(%r3)
	jo	.-4
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L341:
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
	cgije	%r1,0,.L346
.L347:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L347
.L346:
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
	jne	.L354
	br	%r14
.L356:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L354:
	crjlh	%r1,%r3,.L356
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
.L364:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L363
	la	%r2,1(%r2)
	cijlh	%r1,0,.L364
	lghi	%r2,0
.L363:
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
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	lghi	%r4,1
	crje	%r1,%r5,.L368
	j	.L369
.L370:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r1,%r5,.L369
.L368:
	cijlh	%r1,0,.L370
.L369:
	srk	%r2,%r1,%r5
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
	je	.L381
	vlbb	%v0,1(%r2),6
	la	%r1,1(%r2)
	lcbb	%r3,0(%r1),6
	vzero	%v2
	vfeebs	%v1,%v0,%v2
	vlgvf	%r4,%v1,1
	clrjl	%r4,%r3,.L380
	la	%r1,17(%r2)
	nill	%r1,65520
	vl	%v4,0(%r1),4
	vfeebs	%v1,%v4,%v2
	jl	.L380
.L379:
	vl	%v6,16(%r1),4
	la	%r1,16(%r1)
	vfeebs	%v1,%v6,%v2
	jnl	.L379
.L380:
	vlgvg	%r0,%v1,0
	agr	%r1,%r0
	sgrk	%r2,%r1,%r2
	br	%r14
.L381:
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
	cgije	%r4,0,.L392
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L396
.L388:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L387
	la	%r0,1(%r3)
	brctg	%r4,.L390
.L387:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L390:
	crjlh	%r5,%r1,.L387
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L397
	lgr	%r3,%r0
	j	.L388
.L392:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L397:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L387
.L396:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L387
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
	stmg	%r10,%r13,128(%r15)
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L424
	cgijle	%r4,1,.L399
	srlg	%r10,%r4,1
	aghik	%r1,%r4,-2
	clgijle	%r1,29,.L401
	risbg	%r12,%r4,0,128+59,0
	aghik	%r5,%r12,-16
	vl	%v0,.L425-.L424(%r13),3
	srlg	%r5,%r5,4
	srlg	%r0,%r4,4
	aghi	%r5,1
	lghi	%r1,0
	risbg	%r11,%r5,62,128+63,0
	je	.L410
	cgije	%r11,1,.L414
	cgije	%r11,2,.L415
	vl	%v2,0(%r2)
	lghi	%r1,16
	vperm	%v4,%v2,%v2,%v0
	vst	%v4,0(%r3)
.L415:
	vl	%v6,0(%r1,%r2)
	vperm	%v1,%v6,%v6,%v0
	vst	%v1,0(%r1,%r3)
	aghi	%r1,16
.L414:
	vl	%v3,0(%r1,%r2)
	vperm	%v5,%v3,%v3,%v0
	vst	%v5,0(%r1,%r3)
	aghi	%r1,16
	cgrje	%r1,%r12,.L420
.L410:
	srlg	%r5,%r5,2
.L402:
	vl	%v7,0(%r1,%r2)
	vl	%v16,16(%r1,%r2)
	vl	%v18,32(%r1,%r2)
	vl	%v20,48(%r1,%r2)
	vperm	%v22,%v7,%v7,%v0
	vperm	%v17,%v16,%v16,%v0
	vperm	%v19,%v18,%v18,%v0
	vperm	%v21,%v20,%v20,%v0
	vst	%v22,0(%r1,%r3)
	vst	%v17,16(%r1,%r3)
	vst	%v19,32(%r1,%r3)
	vst	%v21,48(%r1,%r3)
	aghi	%r1,64
	brctg	%r5,.L402
.L420:
	agr	%r3,%r12
	agr	%r2,%r12
	sllg	%r12,%r0,4
	sllg	%r0,%r0,3
	sgr	%r4,%r12
	cgrje	%r10,%r0,.L399
.L401:
	lrvh	%r10,0(%r2)
	sth	%r10,0(%r3)
	cgijle	%r4,3,.L399
	lrvh	%r11,2(%r2)
	sth	%r11,2(%r3)
	cgijle	%r4,5,.L399
	lrvh	%r1,4(%r2)
	sth	%r1,4(%r3)
	cgijle	%r4,7,.L399
	lrvh	%r5,6(%r2)
	sth	%r5,6(%r3)
	cgijle	%r4,9,.L399
	lrvh	%r12,8(%r2)
	sth	%r12,8(%r3)
	cgijle	%r4,11,.L399
	lrvh	%r0,10(%r2)
	sth	%r0,10(%r3)
	cgijle	%r4,13,.L399
	lrvh	%r10,12(%r2)
	sth	%r10,12(%r3)
	cgijle	%r4,15,.L399
	lrvh	%r11,14(%r2)
	sth	%r11,14(%r3)
	cgijle	%r4,17,.L399
	lrvh	%r1,16(%r2)
	sth	%r1,16(%r3)
	cgijle	%r4,19,.L399
	lrvh	%r5,18(%r2)
	sth	%r5,18(%r3)
	cgijle	%r4,21,.L399
	lrvh	%r12,20(%r2)
	sth	%r12,20(%r3)
	cgijle	%r4,23,.L399
	lrvh	%r0,22(%r2)
	sth	%r0,22(%r3)
	cgijle	%r4,25,.L399
	lrvh	%r10,24(%r2)
	sth	%r10,24(%r3)
	cgijle	%r4,27,.L399
	lrvh	%r11,26(%r2)
	sth	%r11,26(%r3)
	cgijle	%r4,29,.L399
	lrvh	%r2,28(%r2)
	sth	%r2,28(%r3)
.L399:
	lmg	%r10,%r13,128(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L424:
.L425:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	7
	.byte	6
	.byte	9
	.byte	8
	.byte	11
	.byte	10
	.byte	13
	.byte	12
	.byte	15
	.byte	14
	.align	2
.text
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
	srlk	%r2,%r0,31
	lochie	%r2,1
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
	srlk	%r2,%r0,31
	lochinh	%r2,1
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
	cije	%r2,32,.L448
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L448:
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
	clijle	%r2,31,.L456
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L457
.L456:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L457:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L456
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
	clijle	%r2,254,.L468
	lhi	%r1,8231
	clrjle	%r2,%r1,.L466
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L466
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L466
	risbg	%r5,%r2,48,128+62,0
	xilf	%r5,65534
	lcr	%r1,%r5
	slfi	%r2,65532
	srl	%r1,31
	clfi	%r2,1048580
	lochinl	%r1,0
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L466:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L468:
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
	clijle	%r1,9,.L472
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L472:
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
	jo	.L480
	kdbr	%f0,%f2
	jnh	.L483
	sdbr	%f0,%f2
	br	%r14
.L483:
	lzdr	%f0
	br	%r14
.L480:
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
	jo	.L489
	kebr	%f0,%f2
	jnh	.L492
	sebr	%f0,%f2
	br	%r14
.L492:
	lzer	%f0
	br	%r14
.L489:
	ldr	%f0,%f2
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
	jo	.L502
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L496
	cijlh	%r1,0,.L502
	br	%r14
.L496:
	kdbr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L502
	ldr	%f2,%f0
.L502:
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
	jo	.L512
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L506
	cijlh	%r1,0,.L512
	br	%r14
.L506:
	kebr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L512
	ldr	%f2,%f0
.L512:
	ldr	%f0,%f2
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
	vl	%v0,0(%r3),3
	vl	%v2,0(%r4),3
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	vst	%v0,160(%r15),3
	vst	%v2,176(%r15),3
	vl	%v3,160(%r15),3
	vl	%v5,176(%r15),3
	wfcxb	%v3,%v3
	jo	.L521
	wfcxb	%v5,%v5
	jo	.L515
	vl	%v7,160(%r15),3
	lhi	%r1,0
	lhi	%r3,0
	wftcixb	%v0,%v7,1365
	vl	%v0,176(%r15),3
	lochie	%r1,1
	wftcixb	%v0,%v0,1365
	lochie	%r3,1
	crjlh	%r1,%r3,.L526
	vl	%v3,160(%r15),3
	vl	%v2,176(%r15),3
	lhi	%r0,0
	wfkxb	%v3,%v2
	lochil	%r0,1
	cije	%r0,0,.L518
	lg	%r4,176(%r15)
	lg	%r5,184(%r15)
.L519:
	stg	%r4,160(%r15)
	stg	%r5,168(%r15)
.L515:
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L526:
	.cfi_restore_state
	cije	%r1,0,.L515
	vl	%v5,176(%r15),3
	vst	%v5,160(%r15),3
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L518:
	.cfi_restore_state
	lg	%r4,160(%r15)
	lg	%r5,168(%r15)
	j	.L519
.L521:
	vst	%v5,160(%r15),3
	j	.L515
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
	jo	.L534
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L530
	cijlh	%r1,0,.L528
.L534:
	ldr	%f0,%f2
.L528:
	br	%r14
.L530:
	kdbr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L528
	j	.L534
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
	jo	.L546
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L542
	cijlh	%r1,0,.L540
.L546:
	ldr	%f0,%f2
.L540:
	br	%r14
.L542:
	kebr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L540
	j	.L546
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
	vl	%v0,0(%r3),3
	vl	%v2,0(%r4),3
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	vst	%v0,176(%r15),3
	vst	%v2,160(%r15),3
	vl	%v3,176(%r15),3
	wfcxb	%v3,%v3
	jo	.L553
	vl	%v5,160(%r15),3
	vl	%v7,176(%r15),3
	wfcxb	%v5,%v5
	jo	.L559
	wftcixb	%v0,%v7,1365
	vl	%v0,160(%r15),3
	lhi	%r1,0
	lhi	%r3,0
	lochie	%r1,1
	wftcixb	%v0,%v0,1365
	lochie	%r3,1
	crjlh	%r1,%r3,.L564
	vl	%v3,176(%r15),3
	vl	%v2,160(%r15),3
	lhi	%r0,0
	wfkxb	%v3,%v2
	lochil	%r0,1
	cije	%r0,0,.L556
	lg	%r4,176(%r15)
	lg	%r5,184(%r15)
.L557:
	stg	%r4,160(%r15)
	stg	%r5,168(%r15)
.L553:
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L564:
	.cfi_restore_state
	cije	%r1,0,.L553
	vl	%v5,176(%r15),3
	vst	%v5,160(%r15),3
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L556:
	.cfi_restore_state
	lg	%r4,160(%r15)
	lg	%r5,168(%r15)
	j	.L557
.L559:
	vst	%v7,160(%r15),3
	j	.L553
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
	cije	%r2,0,.L569
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L568:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L568
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L569:
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
	vzero	%v0
	cgije	%r3,0,.L583
	vleg	%v0,0(%r3),0
	vlvgg	%v0,%r3,1
	vst	%v0,0(%r2),3
	stg	%r2,0(%r3)
	ltg	%r1,0(%r2)
	ber	%r14
	stg	%r2,8(%r1)
	br	%r14
.L583:
	vst	%v0,0(%r2),3
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
	je	.L586
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L586:
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
	stmg	%r7,%r15,88(%r15)
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-88(%r15)
	.cfi_def_cfa_offset 248
	stg	%r4,160(%r15)
	lgr	%r9,%r5
	lgr	%r7,%r2
	lgr	%r13,%r3
	ltg	%r8,0(%r4)
	je	.L596
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L616
.L606:
	srlg	%r10,%r10,1
.L598:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L595
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L595
	agrk	%r12,%r11,%r9
	brctg	%r10,.L598
.L596:
	msgrkc	%r12,%r9,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L595
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L595:
	lgr	%r2,%r12
	lmg	%r7,%r15,176(%r15)
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
.L616:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L595
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L606
	j	.L596
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
	stmg	%r7,%r15,88(%r15)
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	ltg	%r7,0(%r4)
	je	.L619
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L635
.L626:
	srlg	%r7,%r11,1
.L621:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L618
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L618
	agr	%r12,%r10
	brctg	%r7,.L621
.L619:
	lghi	%r8,0
.L618:
	lgr	%r2,%r8
	lmg	%r7,%r15,168(%r15)
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
.L635:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L618
	agr	%r12,%r10
	cgijlh	%r7,1,.L626
	j	.L619
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
.L646:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L640
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L640
	cije	%r3,43,.L641
	cijlh	%r3,45,.L662
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L651
	lhi	%r12,1
.L644:
	lhi	%r4,0
.L648:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L648
	sr	%r5,%r1
	ltr	%r12,%r12
	locrne	%r5,%r4
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L640:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L646
.L662:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L644
.L651:
	lhi	%r5,0
.L663:
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L641:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L644
	lhi	%r5,0
	j	.L663
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
.L672:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L666
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L666
	cije	%r4,43,.L667
	cije	%r4,45,.L668
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L677
	lgr	%r3,%r2
	lhi	%r11,0
.L670:
	lghi	%r5,0
.L674:
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
	clijle	%r12,9,.L674
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L666:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L672
.L668:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L677
	lhi	%r11,1
	j	.L670
.L667:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L670
.L677:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L694:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L690
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L690
	cije	%r4,43,.L691
	cije	%r4,45,.L692
	ahik	%r5,%r4,-48
	lgr	%r3,%r2
	clijh	%r5,9,.L701
	lhi	%r11,0
.L695:
	lghi	%r5,0
.L698:
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
	clijle	%r12,9,.L698
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L690:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L694
.L692:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L695
.L701:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L691:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L701
	lhi	%r11,0
	j	.L695
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
	stmg	%r7,%r15,88(%r15)
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	cgije	%r4,0,.L715
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lgr	%r12,%r4
	j	.L718
.L725:
	je	.L714
	aghi	%r12,-1
	agrk	%r9,%r11,%r8
	sgr	%r12,%r10
	cgije	%r12,0,.L715
.L718:
	srlg	%r10,%r12,1
	msgrkc	%r11,%r10,%r8
	lgr	%r2,%r7
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L725
	lgr	%r12,%r10
	cgijlh	%r12,0,.L718
.L715:
	lghi	%r11,0
.L714:
	lgr	%r2,%r11
	lmg	%r7,%r15,168(%r15)
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
	stmg	%r7,%r15,88(%r15)
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lr	%r11,%r4
	cije	%r4,0,.L732
.L737:
	srak	%r10,%r11,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	lg	%r4,240(%r15)
	lgr	%r2,%r7
	agr	%r12,%r9
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L727
	jle	.L730
	agrk	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L737
.L732:
	lghi	%r12,0
.L727:
	lgr	%r2,%r12
	lmg	%r7,%r15,168(%r15)
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
.L730:
	.cfi_restore_state
	cije	%r10,0,.L732
	lr	%r11,%r10
	j	.L737
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
	larl	%r5,.L743
	lgr	%r1,%r3
	dsgr	%r0,%r4
	ld	%v0,.L744-.L743(%r5)
	vlvgf	%v0,%r1,0
	vlvgf	%v0,%r0,1
	std	%v0,0(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L743:
.L744:
	.long	0
	.long	0
	.align	2
.text
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
	vlvgp	%v0,%r1,%r0
	vst	%v0,0(%r2),3
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
	vlvgp	%v0,%r1,%r0
	vst	%v0,0(%r2),3
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
	vlvgp	%v0,%r1,%r0
	vst	%v0,0(%r2),3
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
	j	.L766
.L768:
	crje	%r1,%r3,.L767
	la	%r2,4(%r2)
.L766:
	lt	%r1,0(%r2)
	jne	.L768
	lghi	%r2,0
	br	%r14
.L767:
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
	crje	%r4,%r5,.L771
	j	.L772
.L773:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L772
.L771:
	cijlh	%r4,0,.L773
.L772:
	cr	%r4,%r5
	lhi	%r2,0
	lochih	%r2,1
	lochinhe	%r2,-1
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
.L782:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L782
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
	je	.L789
	vlbb	%v0,4(%r2),6
	la	%r1,4(%r2)
	lcbb	%r3,0(%r1),6
	vzero	%v2
	vfeefs	%v1,%v0,%v2
	vlgvf	%r4,%v1,1
	clrjl	%r4,%r3,.L788
	la	%r1,20(%r2)
	nill	%r1,65520
	vl	%v4,0(%r1),4
	vfeefs	%v1,%v4,%v2
	jl	.L788
.L787:
	vl	%v6,16(%r1),4
	la	%r1,16(%r1)
	vfeefs	%v1,%v6,%v2
	jnl	.L787
.L788:
	vlgvg	%r0,%v1,0
	agr	%r1,%r0
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L789:
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
	cgije	%r4,0,.L799
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L817
.L802:
	srlg	%r0,%r1,1
.L793:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L795
	la	%r5,4(%r2)
	cije	%r1,0,.L795
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L795
	cije	%r4,0,.L795
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L793
.L799:
	lhi	%r3,0
.L818:
	lgfr	%r2,%r3
	br	%r14
.L795:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r3,0
	lochih	%r3,1
	lochil	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L817:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L795
	cije	%r4,0,.L795
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L802
	lhi	%r3,0
	j	.L818
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
	cgije	%r4,0,.L824
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L831
	cgije	%r5,1,.L842
	cgije	%r5,2,.L843
	c	%r3,0(%r2)
	ber	%r14
	lgr	%r4,%r0
	la	%r2,4(%r2)
.L843:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L842:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgije	%r4,1,.L824
.L831:
	srlg	%r4,%r1,2
.L821:
	c	%r3,0(%r2)
	ber	%r14
	la	%r1,4(%r2)
	c	%r3,0(%r1)
	lgr	%r2,%r1
	ber	%r14
	la	%r2,4(%r1)
	c	%r3,0(%r2)
	ber	%r14
	c	%r3,8(%r1)
	la	%r2,8(%r1)
	ber	%r14
	la	%r2,12(%r1)
	brctg	%r4,.L821
.L824:
	lghi	%r2,0
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
	cgije	%r4,0,.L863
	aghik	%r0,%r4,-1
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L870
	cgije	%r1,1,.L881
	cgije	%r1,2,.L882
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L889
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L882:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L889
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L881:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L889
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgije	%r4,1,.L863
.L870:
	srlg	%r0,%r5,2
.L857:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L889
	l	%r1,4(%r2)
	la	%r4,4(%r3)
	lgr	%r3,%r4
	c	%r1,0(%r4)
	jne	.L889
	l	%r1,8(%r2)
	la	%r3,4(%r4)
	c	%r1,0(%r3)
	jne	.L889
	l	%r1,12(%r2)
	la	%r3,8(%r4)
	c	%r1,8(%r4)
	jne	.L889
	la	%r2,16(%r2)
	la	%r3,12(%r4)
	brctg	%r0,.L857
.L863:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L889:
	c	%r1,0(%r3)
	lhi	%r2,0
	lochih	%r2,1
	lochil	%r2,-1
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
	stmg	%r12,%r15,128(%r15)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	cgije	%r4,0,.L896
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L896:
	lgr	%r2,%r12
	lmg	%r12,%r15,160(%r15)
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
	cgrje	%r2,%r3,.L1031
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	sllg	%r5,%r4,2
	aghik	%r12,%r4,-1
	sgrk	%r1,%r2,%r3
	clgrjhe	%r1,%r5,.L1034
	cgije	%r4,0,.L928
	clgijle	%r12,7,.L907
	sgrk	%r1,%r2,%r3
	aghi	%r1,12
	clgijle	%r1,8,.L907
	aghi	%r5,-16
	risbgn	%r10,%r4,0,128+59,2
	agrk	%r11,%r3,%r5
	aghik	%r9,%r10,-16
	lcgr	%r8,%r10
	agr	%r5,%r2
	srlg	%r0,%r9,4
	lghi	%r1,0
	aghi	%r0,1
	risbg	%r10,%r0,62,128+63,0
	je	.L954
	cgije	%r10,1,.L976
	cgije	%r10,2,.L977
	vl	%v17,0(%r11)
	lghi	%r1,-16
	vst	%v17,0(%r5)
.L977:
	vl	%v19,0(%r1,%r11)
	vst	%v19,0(%r1,%r5)
	aghi	%r1,-16
.L976:
	vl	%v21,0(%r1,%r11)
	vst	%v21,0(%r1,%r5)
	aghi	%r1,-16
	cgrje	%r1,%r8,.L1008
.L954:
	srlg	%r0,%r0,2
	cghi	%r0,2
	jle	.L1027
	aghi	%r0,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r5)
.L908:
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	aghi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r5)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r5)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r5)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r5)
	brctg	%r0,.L908
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r5)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r5)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r5)
.L1008:
	risbg	%r5,%r4,0,128+61,0
	sgr	%r12,%r5
	tmll	%r4,3
	je	.L928
	sllg	%r4,%r12,2
	l	%r11,0(%r4,%r3)
	st	%r11,0(%r4,%r2)
	cgije	%r12,0,.L928
	aghi	%r12,-1
	sllg	%r9,%r12,2
	l	%r1,0(%r9,%r3)
	st	%r1,0(%r9,%r2)
	cgije	%r12,0,.L928
	ly	%r3,-4(%r9,%r3)
	sty	%r3,-4(%r9,%r2)
.L928:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L1034:
	.cfi_restore_state
	cgije	%r4,0,.L928
	clgijle	%r12,6,.L920
	la	%r0,4(%r3)
	sgrk	%r5,%r2,%r0
	clgijle	%r5,8,.L920
	srlg	%r11,%r4,2
	lghi	%r1,0
	lgr	%r8,%r11
	lghi	%r9,0
	risbg	%r10,%r11,62,128+63,0
	je	.L972
	cgije	%r10,1,.L980
	cgije	%r10,2,.L981
	vl	%v0,0(%r3)
	lghi	%r9,1
	lghi	%r1,16
	vst	%v0,0(%r2)
.L981:
	vl	%v5,0(%r1,%r3)
	aghi	%r9,1
	vst	%v5,0(%r1,%r2)
	aghi	%r1,16
.L980:
	vl	%v7,0(%r1,%r3)
	aghi	%r9,1
	vst	%v7,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r11,%r9,.L1009
.L972:
	srlg	%r5,%r8,2
	cghi	%r5,2
	jle	.L1029
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L914:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L914
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L1009:
	risbg	%r1,%r4,0,128+61,0
	sllg	%r5,%r1,2
	sgr	%r12,%r1
	agr	%r3,%r5
	agr	%r5,%r2
	tmll	%r4,3
	je	.L928
	l	%r4,0(%r3)
	st	%r4,0(%r5)
	cgije	%r12,0,.L928
	l	%r0,4(%r3)
	st	%r0,4(%r5)
	cgije	%r12,1,.L928
	l	%r3,8(%r3)
	st	%r3,8(%r5)
	j	.L928
.L1027:
	vl	%v23,0(%r1,%r11)
	aghik	%r9,%r1,-16
	aghik	%r8,%r1,-32
	vst	%v23,0(%r1,%r5)
	aghik	%r10,%r1,-48
	aghi	%r1,-64
	vl	%v24,0(%r9,%r11)
	vst	%v24,0(%r9,%r5)
	vl	%v26,0(%r8,%r11)
	vst	%v26,0(%r8,%r5)
	vl	%v28,0(%r10,%r11)
	vst	%v28,0(%r10,%r5)
	brctg	%r0,.L1027
	j	.L1008
.L1029:
	vl	%v16,0(%r1,%r3)
	vst	%v16,0(%r1,%r2)
	vl	%v18,16(%r1,%r3)
	vst	%v18,16(%r1,%r2)
	vl	%v20,32(%r1,%r3)
	vst	%v20,32(%r1,%r2)
	vl	%v22,48(%r1,%r3)
	vst	%v22,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1029
	j	.L1009
.L1031:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	br	%r14
.L907:
	.cfi_register 8, 21
	.cfi_register 9, 20
	.cfi_register 10, 19
	.cfi_register 11, 18
	.cfi_register 12, 17
	risbg	%r0,%r12,2,128+63,0
	sllg	%r12,%r12,2
	aghi	%r0,1
	risbg	%r8,%r0,62,128+63,0
	je	.L945
	cgije	%r8,1,.L978
	cgije	%r8,2,.L979
	l	%r10,0(%r12,%r3)
	st	%r10,0(%r12,%r2)
	aghi	%r12,-4
.L979:
	l	%r5,0(%r12,%r3)
	st	%r5,0(%r12,%r2)
	aghi	%r12,-4
.L978:
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	aghi	%r12,-4
	cgije	%r12,-4,.L928
.L945:
	srlg	%r1,%r0,2
	cghi	%r1,2
	jle	.L1026
	aghi	%r1,-1
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
.L911:
	aghi	%r12,-16
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
	brctg	%r1,.L911
	j	.L928
.L920:
	aghik	%r11,%r12,1
	lghi	%r1,0
	risbg	%r8,%r11,62,128+63,0
	je	.L963
	cgije	%r8,1,.L982
	cgije	%r8,2,.L983
	l	%r10,0(%r3)
	aghi	%r12,-1
	st	%r10,0(%r2)
	lghi	%r1,4
.L983:
	l	%r9,0(%r1,%r3)
	aghi	%r12,-1
	st	%r9,0(%r1,%r2)
	aghi	%r1,4
.L982:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgije	%r12,0,.L928
.L963:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L1028
	aghi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L917:
	aghi	%r1,16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	brctg	%r4,.L917
	j	.L928
.L1026:
	l	%r11,0(%r12,%r3)
	st	%r11,0(%r12,%r2)
	ly	%r9,-4(%r12,%r3)
	sty	%r9,-4(%r12,%r2)
	ly	%r0,-8(%r12,%r3)
	sty	%r0,-8(%r12,%r2)
	ly	%r8,-12(%r12,%r3)
	sty	%r8,-12(%r12,%r2)
	aghi	%r12,-16
	brctg	%r1,.L1026
	j	.L928
.L1028:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r8,12(%r1,%r3)
	st	%r8,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r4,.L1028
	j	.L928
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f2,%r12
	.cfi_register 12, 17
	aghik	%r11,%r4,-1
	cgije	%r4,0,.L1037
	clgijle	%r11,6,.L1043
	vlvgf	%v0,%r3,3
	srlg	%r9,%r4,2
	vrepf	%v0,%v0,3
	clgijle	%r4,67,.L1044
	aghik	%r12,%r9,-17
	lgr	%r1,%r2
	nill	%r12,65520
	srlg	%r5,%r12,4
	aghi	%r12,16
	aghi	%r5,1
.L1040:
	vst	%v0,0(%r1)
	vst	%v0,16(%r1)
	vst	%v0,32(%r1)
	vst	%v0,48(%r1)
	vst	%v0,64(%r1)
	vst	%v0,80(%r1)
	vst	%v0,96(%r1)
	vst	%v0,112(%r1)
	vst	%v0,128(%r1)
	vst	%v0,144(%r1)
	vst	%v0,160(%r1)
	vst	%v0,176(%r1)
	vst	%v0,192(%r1)
	vst	%v0,208(%r1)
	vst	%v0,224(%r1)
	vst	%v0,240(%r1)
	pfd	2,640(%r1)
	la	%r1,256(%r1)
	brctg	%r5,.L1040
.L1039:
	vst	%v0,0(%r1)
	lghi	%r0,-1
	la	%r5,16(%r1)
	xgrk	%r10,%r12,%r0
	aghik	%r0,%r12,1
	agr	%r10,%r9
	risbg	%r10,%r10,62,128+63,0
	clgrjle	%r9,%r0,.L1087
	cgije	%r10,0,.L1088
	cgije	%r10,1,.L1074
	cgije	%r10,2,.L1075
	vst	%v0,0(%r5)
	aghik	%r0,%r12,2
	la	%r5,32(%r1)
.L1075:
	vst	%v0,0(%r5)
	aghi	%r0,1
	aghi	%r5,16
.L1074:
	vst	%v0,0(%r5)
	aghi	%r0,1
	aghi	%r5,16
	clgrjle	%r9,%r0,.L1087
.L1088:
	vst	%v0,0(%r5)
	vst	%v0,16(%r5)
	vst	%v0,32(%r5)
	vst	%v0,48(%r5)
	aghi	%r0,4
	aghi	%r5,64
	clgrjh	%r9,%r0,.L1088
.L1087:
	tmll	%r4,3
	je	.L1037
	nill	%r4,65532
	sllg	%r1,%r4,2
	sgr	%r11,%r4
	agr	%r1,%r2
.L1038:
	st	%r3,0(%r1)
	cgije	%r11,0,.L1037
	st	%r3,4(%r1)
	cgije	%r11,1,.L1037
	st	%r3,8(%r1)
	cgije	%r11,2,.L1037
	st	%r3,12(%r1)
	cgije	%r11,3,.L1037
	st	%r3,16(%r1)
	cgije	%r11,4,.L1037
	st	%r3,20(%r1)
	cgije	%r11,5,.L1037
	st	%r3,24(%r1)
.L1037:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	br	%r14
.L1043:
	.cfi_restore_state
	lgr	%r1,%r2
	j	.L1038
.L1044:
	lgr	%r1,%r2
	lghi	%r12,0
	j	.L1039
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
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f2,%r12
	.cfi_register 12, 17
	clgr	%r2,%r3
	jhe	.L1093
	cgije	%r4,0,.L1092
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1210
	lay	%r5,-2(%r4,%r2)
	sgrk	%r8,%r3,%r5
	la	%r0,14(%r8,%r1)
	clgijle	%r0,14,.L1210
	risbg	%r1,%r4,0,128+59,0
	aghik	%r12,%r4,-16
	aghik	%r9,%r1,-16
	lcgr	%r8,%r1
	agrk	%r11,%r2,%r12
	agr	%r12,%r3
	srlg	%r5,%r9,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L1188
	cgije	%r10,1,.L1211
	cgije	%r10,2,.L1212
	vl	%v17,0(%r11)
	lghi	%r1,-16
	vst	%v17,0(%r12)
.L1212:
	vl	%v19,0(%r1,%r11)
	vst	%v19,0(%r1,%r12)
	aghi	%r1,-16
.L1211:
	vl	%v21,0(%r1,%r11)
	vst	%v21,0(%r1,%r12)
	aghi	%r1,-16
	cgrje	%r1,%r8,.L1266
.L1188:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1280
	aghi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L1096:
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	aghi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brctg	%r5,.L1096
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	aghi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
.L1266:
	agr	%r1,%r4
	risbg	%r12,%r4,60,128+63,0
	agr	%r3,%r1
	agr	%r2,%r1
	tmll	%r4,15
	je	.L1092
	icy	%r4,-1(%r2)
	stcy	%r4,-1(%r3)
	cgije	%r12,1,.L1092
	icy	%r11,-2(%r2)
	stcy	%r11,-2(%r3)
	cgije	%r12,2,.L1092
	icy	%r0,-3(%r2)
	stcy	%r0,-3(%r3)
	cgije	%r12,3,.L1092
	icy	%r1,-4(%r2)
	stcy	%r1,-4(%r3)
	cgije	%r12,4,.L1092
	icy	%r5,-5(%r2)
	stcy	%r5,-5(%r3)
	cgije	%r12,5,.L1092
	icy	%r9,-6(%r2)
	stcy	%r9,-6(%r3)
	cgije	%r12,6,.L1092
	icy	%r8,-7(%r2)
	stcy	%r8,-7(%r3)
	cgije	%r12,7,.L1092
	icy	%r10,-8(%r2)
	stcy	%r10,-8(%r3)
	cgije	%r12,8,.L1092
	icy	%r4,-9(%r2)
	stcy	%r4,-9(%r3)
	cgije	%r12,9,.L1092
	icy	%r11,-10(%r2)
	stcy	%r11,-10(%r3)
	cgije	%r12,10,.L1092
	icy	%r0,-11(%r2)
	stcy	%r0,-11(%r3)
	cgije	%r12,11,.L1092
	icy	%r1,-12(%r2)
	stcy	%r1,-12(%r3)
	cgije	%r12,12,.L1092
	icy	%r5,-13(%r2)
	stcy	%r5,-13(%r3)
	cgije	%r12,13,.L1092
	icy	%r9,-14(%r2)
	stcy	%r9,-14(%r3)
	cgije	%r12,14,.L1092
	icy	%r2,-15(%r2)
	stcy	%r2,-15(%r3)
.L1092:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L1093:
	.cfi_restore_state
	je	.L1092
	cgije	%r4,0,.L1092
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1107
	la	%r0,1(%r2)
	sgrk	%r5,%r3,%r0
	clgijle	%r5,14,.L1107
	risbg	%r8,%r4,0,128+59,0
	aghik	%r9,%r8,-16
	lghi	%r1,0
	srlg	%r10,%r9,4
	aghi	%r10,1
	risbg	%r12,%r10,62,128+63,0
	je	.L1206
	cgije	%r12,1,.L1213
	cgije	%r12,2,.L1214
	vl	%v0,0(%r2)
	lghi	%r1,16
	vst	%v0,0(%r3)
.L1214:
	vl	%v5,0(%r1,%r2)
	vst	%v5,0(%r1,%r3)
	aghi	%r1,16
.L1213:
	vl	%v7,0(%r1,%r2)
	vst	%v7,0(%r1,%r3)
	aghi	%r1,16
	cgrje	%r1,%r8,.L1267
.L1206:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L1282
	aghi	%r5,-1
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
.L1101:
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	aghi	%r1,64
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
	brctg	%r5,.L1101
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	aghi	%r1,64
.L1267:
	agr	%r3,%r1
	agr	%r2,%r1
	sgrk	%r11,%r4,%r1
	cgrje	%r4,%r1,.L1092
	mvc	0(1,%r3),0(%r2)
	cgije	%r11,1,.L1092
	mvc	1(1,%r3),1(%r2)
	cgije	%r11,2,.L1092
	mvc	2(1,%r3),2(%r2)
	cgije	%r11,3,.L1092
	mvc	3(1,%r3),3(%r2)
	cgije	%r11,4,.L1092
	mvc	4(1,%r3),4(%r2)
	cgije	%r11,5,.L1092
	mvc	5(1,%r3),5(%r2)
	cgije	%r11,6,.L1092
	mvc	6(1,%r3),6(%r2)
	cgije	%r11,7,.L1092
	mvc	7(1,%r3),7(%r2)
	cgije	%r11,8,.L1092
	mvc	8(1,%r3),8(%r2)
	cgije	%r11,9,.L1092
	mvc	9(1,%r3),9(%r2)
	cgije	%r11,10,.L1092
	mvc	10(1,%r3),10(%r2)
	cgije	%r11,11,.L1092
	mvc	11(1,%r3),11(%r2)
	cgije	%r11,12,.L1092
	mvc	12(1,%r3),12(%r2)
	cgije	%r11,13,.L1092
	mvc	13(1,%r3),13(%r2)
	cgije	%r11,14,.L1092
	mvc	14(1,%r3),14(%r2)
	j	.L1092
.L1280:
	vl	%v23,0(%r1,%r11)
	aghik	%r9,%r1,-16
	aghik	%r8,%r1,-32
	vst	%v23,0(%r1,%r12)
	aghik	%r10,%r1,-48
	aghi	%r1,-64
	vl	%v24,0(%r9,%r11)
	vst	%v24,0(%r9,%r12)
	vl	%v26,0(%r8,%r11)
	vst	%v26,0(%r8,%r12)
	vl	%v28,0(%r10,%r11)
	vst	%v28,0(%r10,%r12)
	brctg	%r5,.L1280
	j	.L1266
.L1282:
	vl	%v16,0(%r1,%r2)
	vst	%v16,0(%r1,%r3)
	vl	%v18,16(%r1,%r2)
	vst	%v18,16(%r1,%r3)
	vl	%v20,32(%r1,%r2)
	vst	%v20,32(%r1,%r3)
	vl	%v22,48(%r1,%r2)
	vst	%v22,48(%r1,%r3)
	aghi	%r1,64
	brctg	%r5,.L1282
	j	.L1267
.L1210:
	lgr	%r8,%r1
	risbg	%r10,%r1,62,128+63,0
	je	.L1179
	icy	%r12,-1(%r4,%r2)
	stcy	%r12,-1(%r4,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
	cgije	%r10,1,.L1179
	cgije	%r10,2,.L1217
	icy	%r4,-1(%r8,%r2)
	stcy	%r4,-1(%r8,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L1217:
	icy	%r11,-1(%r4,%r2)
	stcy	%r11,-1(%r4,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L1179:
	srlg	%r5,%r8,2
	aghi	%r5,1
.L1098:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r5,.L1139
	j	.L1092
.L1139:
	icy	%r9,-1(%r1,%r2)
	stcy	%r9,-1(%r1,%r3)
	icy	%r8,-2(%r1,%r2)
	stcy	%r8,-2(%r1,%r3)
	icy	%r10,-3(%r1,%r2)
	lay	%r4,-3(%r1)
	stcy	%r10,-3(%r1,%r3)
	lay	%r1,-4(%r1)
	j	.L1098
.L1107:
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L1197
	cgije	%r0,1,.L1215
	cgije	%r0,2,.L1216
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1216:
	ic	%r8,0(%r1,%r2)
	stc	%r8,0(%r1,%r3)
	aghi	%r1,1
.L1215:
	ic	%r9,0(%r1,%r2)
	stc	%r9,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r4,%r1,.L1092
.L1197:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1281
	aghi	%r5,-1
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
.L1104:
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r4,3(%r1,%r2)
	stc	%r4,3(%r1,%r3)
	aghi	%r1,4
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	brctg	%r5,.L1104
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L1092
.L1281:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r10,1(%r1,%r2)
	stc	%r10,1(%r1,%r3)
	ic	%r12,2(%r1,%r2)
	stc	%r12,2(%r1,%r3)
	ic	%r11,3(%r1,%r2)
	stc	%r11,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L1281
	j	.L1092
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
	tmll	%r2,1
	jne	.L1314
	tmll	%r2,2
	jne	.L1315
	tmll	%r2,4
	jne	.L1316
	tmll	%r2,8
	jne	.L1317
	tmll	%r2,16
	jne	.L1318
	tmll	%r2,32
	jne	.L1319
	tmll	%r2,64
	jne	.L1320
	tmll	%r2,128
	jne	.L1321
	tmll	%r2,256
	jne	.L1322
	tmll	%r2,512
	jne	.L1323
	tmll	%r2,1024
	jne	.L1324
	tmll	%r2,2048
	jne	.L1325
	tmll	%r2,4096
	jne	.L1326
	tmll	%r2,8192
	jne	.L1327
	tmll	%r2,16384
	jne	.L1328
	tmll	%r2,32768
	jne	.L1329
	tmlh	%r2,1
	jne	.L1330
	tmlh	%r2,2
	jne	.L1331
	tmlh	%r2,4
	jne	.L1332
	tmlh	%r2,8
	jne	.L1333
	tmlh	%r2,16
	jne	.L1334
	tmlh	%r2,32
	jne	.L1335
	tmlh	%r2,64
	jne	.L1336
	tmlh	%r2,128
	jne	.L1337
	tmlh	%r2,256
	jne	.L1338
	tmlh	%r2,512
	jne	.L1339
	tmlh	%r2,1024
	jne	.L1340
	tmlh	%r2,2048
	jne	.L1341
	tmlh	%r2,4096
	jne	.L1342
	tmlh	%r2,8192
	jne	.L1343
	risbg	%r1,%r2,33,128+33,0
	jne	.L1344
	cgijlh	%r2,0,.L1348
.L1313:
	lgfr	%r2,%r1
	br	%r14
.L1314:
	lhi	%r1,1
	j	.L1313
.L1315:
	lhi	%r1,2
	j	.L1313
.L1326:
	lhi	%r1,13
	j	.L1313
.L1342:
	lhi	%r1,29
	j	.L1313
.L1316:
	lhi	%r1,3
	j	.L1313
.L1317:
	lhi	%r1,4
	j	.L1313
.L1318:
	lhi	%r1,5
	j	.L1313
.L1319:
	lhi	%r1,6
	j	.L1313
.L1320:
	lhi	%r1,7
	j	.L1313
.L1321:
	lhi	%r1,8
	j	.L1313
.L1322:
	lhi	%r1,9
	j	.L1313
.L1323:
	lhi	%r1,10
	j	.L1313
.L1324:
	lhi	%r1,11
	j	.L1313
.L1325:
	lhi	%r1,12
	j	.L1313
.L1327:
	lhi	%r1,14
	j	.L1313
.L1328:
	lhi	%r1,15
	j	.L1313
.L1329:
	lhi	%r1,16
	j	.L1313
.L1330:
	lhi	%r1,17
	j	.L1313
.L1331:
	lhi	%r1,18
	j	.L1313
.L1332:
	lhi	%r1,19
	j	.L1313
.L1333:
	lhi	%r1,20
	j	.L1313
.L1334:
	lhi	%r1,21
	j	.L1313
.L1335:
	lhi	%r1,22
	j	.L1313
.L1336:
	lhi	%r1,23
	j	.L1313
.L1337:
	lhi	%r1,24
	j	.L1313
.L1338:
	lhi	%r1,25
	j	.L1313
.L1339:
	lhi	%r1,26
	j	.L1313
.L1340:
	lhi	%r1,27
	j	.L1313
.L1341:
	lhi	%r1,28
	j	.L1313
.L1343:
	lhi	%r1,30
	j	.L1313
.L1348:
	lhi	%r1,32
	j	.L1313
.L1344:
	lhi	%r1,31
	j	.L1313
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
	cgije	%r2,0,.L1353
	risbg	%r3,%r2,63,128+63,0
	jne	.L1351
	lhi	%r3,1
.L1352:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L1352
.L1351:
	lgfr	%r2,%r3
	br	%r14
.L1353:
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
	larl	%r5,.L1362
	keb	%f0,.L1363-.L1362(%r5)
	jl	.L1360
	keb	%f0,.L1364-.L1362(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1360:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1362:
.L1364:
	.long	2139095039
.L1363:
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
	larl	%r5,.L1370
	kdb	%f0,.L1371-.L1370(%r5)
	jl	.L1368
	kdb	%f0,.L1372-.L1370(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1368:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1370:
.L1372:
	.long	2146435071
	.long	-1
.L1371:
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
	larl	%r5,.L1378
	vl	%v0,0(%r2),3
	vl	%v2,.L1379-.L1378(%r5),3
	wfkxb	%v0,%v2
	jl	.L1376
	vl	%v4,.L1380-.L1378(%r5),3
	lhi	%r2,0
	wfkxb	%v0,%v4
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1376:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1378:
.L1380:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1379:
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
	cdfbr	%f0,%r3
	wflld	%v2,%v0
	vst	%v2,0(%r2),3
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
	larl	%r5,.L1399
	cebr	%f0,%f0
	bor	%r14
	wfasb	%v2,%v0,%v0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1397
	lde	%f4,.L1400-.L1399(%r5)
.L1385:
	tmll	%r2,1
	je	.L1386
.L1387:
	meebr	%f0,%f4
.L1386:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1384
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L1387
.L1398:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1387
	j	.L1398
.L1384:
	br	%r14
.L1397:
	lde	%f4,.L1401-.L1399(%r5)
	j	.L1385
	.section	.rodata
	.align	8
.L1399:
.L1401:
	.long	1056964608
.L1400:
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
	larl	%r5,.L1418
	cdbr	%f0,%f0
	bor	%r14
	wfadb	%v2,%v0,%v0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1416
	ld	%f4,.L1419-.L1418(%r5)
.L1404:
	tmll	%r2,1
	je	.L1405
.L1406:
	mdbr	%f0,%f4
.L1405:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1403
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L1406
.L1417:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1406
	j	.L1417
.L1403:
	br	%r14
.L1416:
	ld	%f4,.L1420-.L1418(%r5)
	j	.L1404
	.section	.rodata
	.align	8
.L1418:
.L1420:
	.long	1071644672
	.long	0
.L1419:
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
	larl	%r5,.L1437
	vl	%v2,0(%r3),3
	wfcxb	%v2,%v2
	jo	.L1422
	wfaxb	%v0,%v2,%v2
	wfcxb	%v0,%v2
	je	.L1422
	cijl	%r4,0,.L1435
	vl	%v4,.L1438-.L1437(%r5),3
.L1423:
	tmll	%r4,1
	je	.L1424
.L1425:
	wfmxb	%v2,%v2,%v4
.L1424:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L1422
	wfmxb	%v4,%v4,%v4
	tmll	%r4,1
	jne	.L1425
.L1436:
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	wfmxb	%v4,%v4,%v4
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L1425
	j	.L1436
.L1422:
	vst	%v2,0(%r2),3
	br	%r14
.L1435:
	vl	%v4,.L1439-.L1437(%r5),3
	j	.L1423
	.section	.rodata
	.align	8
.L1437:
.L1439:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1438:
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
	cgije	%r4,0,.L1559
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1445
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	risbg	%r0,%r4,0,128+59,0
	aghik	%r12,%r0,-16
	lghi	%r1,0
	srlg	%r5,%r12,4
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1514
	cgije	%r12,1,.L1518
	cgije	%r12,2,.L1519
	vl	%v0,0(%r2)
	vl	%v2,0(%r3)
	lghi	%r1,16
	vx	%v4,%v0,%v2
	vst	%v4,0(%r2)
.L1519:
	vl	%v6,0(%r1,%r2)
	vl	%v1,0(%r1,%r3)
	vx	%v3,%v6,%v1
	vst	%v3,0(%r1,%r2)
	aghi	%r1,16
.L1518:
	vl	%v5,0(%r1,%r2)
	vl	%v7,0(%r1,%r3)
	vx	%v16,%v5,%v7
	vst	%v16,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r1,%r0,.L1555
.L1514:
	srlg	%r0,%r5,2
.L1443:
	vl	%v18,0(%r1,%r2)
	vl	%v22,16(%r1,%r2)
	vl	%v19,32(%r1,%r2)
	vl	%v23,48(%r1,%r2)
	vl	%v20,0(%r1,%r3)
	vl	%v17,16(%r1,%r3)
	vl	%v21,32(%r1,%r3)
	vl	%v24,48(%r1,%r3)
	vx	%v26,%v18,%v20
	vx	%v28,%v22,%v17
	vx	%v30,%v19,%v21
	vx	%v25,%v23,%v24
	vst	%v26,0(%r1,%r2)
	vst	%v28,16(%r1,%r2)
	vst	%v30,32(%r1,%r2)
	vst	%v25,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r0,.L1443
.L1555:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r12,%r4,%r1
	cgrje	%r4,%r1,.L1441
	xc	0(1,%r5),0(%r3)
	cgije	%r12,1,.L1441
	xc	1(1,%r5),1(%r3)
	cgije	%r12,2,.L1441
	xc	2(1,%r5),2(%r3)
	cgije	%r12,3,.L1441
	xc	3(1,%r5),3(%r3)
	cgije	%r12,4,.L1441
	xc	4(1,%r5),4(%r3)
	cgije	%r12,5,.L1441
	xc	5(1,%r5),5(%r3)
	cgije	%r12,6,.L1441
	xc	6(1,%r5),6(%r3)
	cgije	%r12,7,.L1441
	xc	7(1,%r5),7(%r3)
	cgije	%r12,8,.L1441
	xc	8(1,%r5),8(%r3)
	cgije	%r12,9,.L1441
	xc	9(1,%r5),9(%r3)
	cgije	%r12,10,.L1441
	xc	10(1,%r5),10(%r3)
	cgije	%r12,11,.L1441
	xc	11(1,%r5),11(%r3)
	cgije	%r12,12,.L1441
	xc	12(1,%r5),12(%r3)
	cgije	%r12,13,.L1441
	xc	13(1,%r5),13(%r3)
	cgije	%r12,14,.L1441
	xc	14(1,%r5),14(%r3)
	cgije	%r12,15,.L1441
	xc	15(1,%r5),15(%r3)
	cgije	%r12,16,.L1441
	xc	16(1,%r5),16(%r3)
	cgije	%r12,17,.L1441
	xc	17(1,%r5),17(%r3)
	cgije	%r12,18,.L1441
	xc	18(1,%r5),18(%r3)
	cgije	%r12,19,.L1441
	xc	19(1,%r5),19(%r3)
	cgije	%r12,20,.L1441
	xc	20(1,%r5),20(%r3)
	cgije	%r12,21,.L1441
	xc	21(1,%r5),21(%r3)
	cgije	%r12,22,.L1441
	xc	22(1,%r5),22(%r3)
	cgije	%r12,23,.L1441
	xc	23(1,%r5),23(%r3)
	cgije	%r12,24,.L1441
	xc	24(1,%r5),24(%r3)
	cgije	%r12,25,.L1441
	xc	25(1,%r5),25(%r3)
	cgije	%r12,26,.L1441
	xc	26(1,%r5),26(%r3)
	cgije	%r12,27,.L1441
	xc	27(1,%r5),27(%r3)
	cgije	%r12,28,.L1441
	xc	28(1,%r5),28(%r3)
	cgije	%r12,29,.L1441
	xc	29(1,%r5),29(%r3)
	cgije	%r12,30,.L1441
	xc	30(1,%r5),30(%r3)
.L1441:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L1445:
	xc	0(1,%r2),0(%r3)
	cgije	%r4,1,.L1559
	xc	1(1,%r2),1(%r3)
	cgije	%r4,2,.L1559
	xc	2(1,%r2),2(%r3)
	cgije	%r4,3,.L1559
	xc	3(1,%r2),3(%r3)
	cgije	%r4,4,.L1559
	xc	4(1,%r2),4(%r3)
	cgijlh	%r4,5,.L1593
.L1559:
	br	%r14
.L1593:
	xc	5(1,%r2),5(%r3)
	cgije	%r4,6,.L1559
	xc	6(1,%r2),6(%r3)
	cgije	%r4,7,.L1559
	xc	7(1,%r2),7(%r3)
	cgije	%r4,8,.L1559
	xc	8(1,%r2),8(%r3)
	cgije	%r4,9,.L1559
	xc	9(1,%r2),9(%r3)
	cgije	%r4,10,.L1559
	xc	10(1,%r2),10(%r3)
	cgije	%r4,11,.L1559
	xc	11(1,%r2),11(%r3)
	cgije	%r4,12,.L1559
	xc	12(1,%r2),12(%r3)
	cgije	%r4,13,.L1559
	xc	13(1,%r2),13(%r3)
	cgije	%r4,14,.L1559
	xc	14(1,%r2),14(%r3)
	cgije	%r4,15,.L1559
	xc	15(1,%r2),15(%r3)
	cgije	%r4,16,.L1559
	xc	16(1,%r2),16(%r3)
	cgije	%r4,17,.L1559
	xc	17(1,%r2),17(%r3)
	cgije	%r4,18,.L1559
	xc	18(1,%r2),18(%r3)
	cgije	%r4,19,.L1559
	xc	19(1,%r2),19(%r3)
	cgije	%r4,20,.L1559
	xc	20(1,%r2),20(%r3)
	cgije	%r4,21,.L1559
	xc	21(1,%r2),21(%r3)
	cgije	%r4,22,.L1559
	xc	22(1,%r2),22(%r3)
	cgije	%r4,23,.L1559
	xc	23(1,%r2),23(%r3)
	cgije	%r4,24,.L1559
	xc	24(1,%r2),24(%r3)
	cgije	%r4,25,.L1559
	xc	25(1,%r2),25(%r3)
	cgije	%r4,26,.L1559
	xc	26(1,%r2),26(%r3)
	cgije	%r4,27,.L1559
	xc	27(1,%r2),27(%r3)
	cgije	%r4,28,.L1559
	xc	28(1,%r2),28(%r3)
	cgije	%r4,29,.L1559
	xc	29(1,%r2),29(%r3)
	cgije	%r4,30,.L1559
	xc	30(1,%r2),30(%r3)
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
	cli	0(%r2),0
	je	.L1603
	vlbb	%v0,1(%r2),6
	la	%r1,1(%r2)
	lcbb	%r5,0(%r1),6
	vzero	%v2
	vfeebs	%v1,%v0,%v2
	vlgvf	%r0,%v1,1
	clrjhe	%r0,%r5,.L1619
.L1598:
	vlgvg	%r5,%v1,0
	agr	%r1,%r5
.L1596:
	cgije	%r4,0,.L1600
	aghik	%r0,%r4,-1
	tmll	%r4,1
	je	.L1609
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1602
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgije	%r0,0,.L1600
.L1609:
	srlg	%r4,%r4,1
.L1599:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1620
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L1621
	la	%r1,2(%r1)
	brctg	%r4,.L1599
.L1600:
	mvi	0(%r1),0
.L1602:
	br	%r14
.L1619:
	la	%r1,17(%r2)
	nill	%r1,65520
	vl	%v4,0(%r1),4
	vfeebs	%v1,%v4,%v2
	jl	.L1598
.L1597:
	vl	%v6,16(%r1),4
	la	%r1,16(%r1)
	vfeebs	%v1,%v6,%v2
	jnl	.L1597
	j	.L1598
.L1620:
	br	%r14
.L1621:
	br	%r14
.L1603:
	lgr	%r1,%r2
	j	.L1596
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
	cgije	%r3,0,.L1623
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1635
	cgije	%r5,1,.L1646
	cgije	%r5,2,.L1647
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1647:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1646:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L1623
.L1635:
	srlg	%r0,%r4,2
.L1624:
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
	brctg	%r0,.L1624
	br	%r14
.L1623:
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
	je	.L1661
.L1667:
	lgr	%r1,%r3
	j	.L1660
.L1659:
	crje	%r4,%r5,.L1658
.L1660:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1659
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1667
.L1661:
	lghi	%r2,0
.L1658:
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
.L1670:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1670
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
	ldgr	%f1,%r10
	.cfi_register 10, 20
	llc	%r10,0(%r3)
	ldgr	%f5,%r8
	.cfi_register 8, 22
	ldgr	%f3,%r9
	.cfi_register 9, 21
	ldgr	%f6,%r11
	.cfi_register 11, 19
	ldgr	%f4,%r12
	.cfi_register 12, 18
	tml	%r10,255
	je	.L1673
	vlbb	%v0,1(%r3),6
	la	%r1,1(%r3)
	lcbb	%r4,0(%r1),6
	vzero	%v2
	vfeebs	%v18,%v0,%v2
	lr	%r8,%r10
	vlgvf	%r5,%v18,1
	clrjhe	%r5,%r4,.L1696
.L1676:
	vlgvg	%r0,%v18,0
	agr	%r1,%r0
	slgr	%r1,%r3
	jhe	.L1673
	aghik	%r9,%r1,-1
	llcr	%r8,%r8
	j	.L1694
.L1698:
	la	%r2,1(%r2)
	cije	%r1,0,.L1697
.L1694:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1698
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L1678:
	la	%r11,1(%r5)
	brctg	%r0,.L1692
.L1680:
	crje	%r1,%r12,.L1673
.L1681:
	la	%r2,1(%r2)
	j	.L1694
.L1697:
	lghi	%r2,0
.L1673:
	lgdr	%r12,%f4
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f6
	.cfi_restore 11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r9,%f3
	.cfi_restore 9
	lgdr	%r8,%f5
	.cfi_restore 8
	br	%r14
.L1696:
	.cfi_restore_state
	la	%r1,17(%r3)
	nill	%r1,65520
	vl	%v7,0(%r1),4
	vfeebs	%v18,%v7,%v2
	jl	.L1676
.L1675:
	vl	%v16,16(%r1),4
	la	%r1,16(%r1)
	vfeebs	%v18,%v16,%v2
	jnl	.L1675
	j	.L1676
.L1692:
	crjlh	%r12,%r1,.L1681
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1680
	cli	1(%r5),0
	je	.L1681
	lgr	%r5,%r11
	j	.L1678
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
	jl	.L1710
	jnh	.L1704
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1703
.L1704:
	br	%r14
.L1710:
	kdbr	%f2,%f4
	jnh	.L1704
.L1703:
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
	cgije	%r5,0,.L1756
	clgrjl	%r3,%r5,.L1721
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1721
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	llc	%r11,0(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1718
.L1722:
	lgr	%r2,%r12
.L1714:
	clgrjl	%r3,%r2,.L1723
.L1718:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1722
	cgije	%r5,1,.L1712
.L1717:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1733
	cgije	%r10,1,.L1743
	cgijlh	%r10,2,.L1759
.L1744:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	aghi	%r1,1
.L1743:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	aghi	%r1,1
	cgrje	%r1,%r5,.L1712
.L1733:
	srlg	%r0,%r0,2
.L1715:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1750
	aghi	%r1,4
	brctg	%r0,.L1715
.L1712:
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
.L1759:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1744
.L1750:
	clgrjl	%r3,%r12,.L1723
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1714
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1717
.L1723:
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
.L1721:
	lghi	%r2,0
	br	%r14
.L1756:
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
	stmg	%r11,%r15,120(%r15)
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	lgr	%r11,%r2
	lgr	%r12,%r4
	cgije	%r4,0,.L1762
	brasl	%r14,memmove@PLT
.L1762:
	agrk	%r2,%r11,%r12
	lmg	%r11,%r15,160(%r15)
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
	larl	%r5,.L1794
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1791
	kdb	%f0,.L1795-.L1794(%r5)
	jnhe	.L1792
	lhi	%r3,0
.L1771:
	lhi	%r1,0
.L1777:
	ahi	%r1,1
	mdb	%f0,.L1796-.L1794(%r5)
	kdb	%f0,.L1795-.L1794(%r5)
	jhe	.L1777
.L1778:
	st	%r1,0(%r2)
	cije	%r3,0,.L1768
	lcdbr	%f0,%f0
.L1768:
	br	%r14
.L1792:
	kdb	%f0,.L1796-.L1794(%r5)
	jnl	.L1774
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1783
.L1774:
	mvhi	0(%r2),0
	br	%r14
.L1791:
	lcdbr	%f6,%f0
	kdb	%f0,.L1797-.L1794(%r5)
	jnle	.L1793
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1771
.L1793:
	kdb	%f0,.L1798-.L1794(%r5)
	jnh	.L1774
	lhi	%r3,1
.L1772:
	ldr	%f0,%f6
	lhi	%r1,0
.L1779:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1796-.L1794(%r5)
	jl	.L1779
	j	.L1778
.L1783:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1772
	.section	.rodata
	.align	8
.L1794:
.L1798:
	.long	-1075838976
	.long	0
.L1797:
	.long	-1074790400
	.long	0
.L1796:
	.long	1071644672
	.long	0
.L1795:
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
	cgije	%r4,0,.L1802
.L1801:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1801
	br	%r14
.L1802:
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
	clrjhe	%r3,%r2,.L1922
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L1916
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1808
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L1916
.L1810:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1808
	ahik	%r5,%r10,-1
	brct	%r11,.L1885
.L1809:
	ltgr	%r4,%r4
	locrne	%r5,%r2
	llgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L1885:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1916
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1808
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1916
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1808
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L1810
.L1916:
	srk	%r1,%r2,%r3
	slrk	%r5,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	srlk	%r11,%r12,1
	risbgn	%r10,%r3,64-31,128+63,32+31
	ltr	%r5,%r5
	locre	%r1,%r2
	lr	%r5,%r12
	llgfr	%r2,%r1
	lochie	%r5,0
	cijlh	%r11,0,.L1813
	j	.L1809
.L1808:
	cije	%r0,0,.L1815
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r10,0
	alcr	%r10,%r10
	lr	%r5,%r0
	ltr	%r10,%r10
	locrne	%r2,%r11
	lochie	%r5,0
	llgtr	%r10,%r3
	llgtr	%r11,%r12
	llgfr	%r2,%r2
	lgr	%r3,%r1
	lr	%r12,%r0
.L1813:
	srk	%r1,%r2,%r10
	slrk	%r10,%r2,%r10
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r10,%r12,2
	ltr	%r0,%r0
	locre	%r1,%r2
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r11,%r3,2
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,3
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,3
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,4
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,4
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,5
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,5
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,6
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,6
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,7
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,7
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,8
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,8
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,9
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,9
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,10
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,10
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,11
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,11
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,12
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,12
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,13
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,13
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,14
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,14
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,15
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,15
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,16
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,16
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,17
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,17
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,18
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,18
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,19
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,19
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,20
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,20
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,21
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,21
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,22
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,22
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,23
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,23
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,24
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,24
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,25
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,25
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,26
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,26
	cije	%r10,0,.L1809
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r12,27
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r3,27
	cije	%r11,0,.L1809
	srk	%r0,%r1,%r10
	slrk	%r10,%r1,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r3,28
	ltr	%r2,%r2
	locre	%r0,%r1
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r0
	srlk	%r11,%r12,28
	cije	%r11,0,.L1809
	srk	%r1,%r0,%r10
	slrk	%r10,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r1,%r0
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r0,%r12,29
	srlk	%r11,%r3,29
	cije	%r0,0,.L1809
	srk	%r10,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r11,%r3,30
	ltr	%r2,%r2
	locrne	%r1,%r10
	lochie	%r0,0
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r0,%r12,30
	cije	%r0,0,.L1809
	srk	%r10,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r2,0
	alcr	%r2,%r2
	srl	%r3,31
	ltr	%r2,%r2
	locrne	%r1,%r10
	lochie	%r0,0
	or	%r5,%r0
	llgfr	%r2,%r1
	cijhe	%r12,0,.L1809
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L1809
.L1922:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r5,%r3,%r2
	srk	%r1,%r2,%r3
	lpr	%r0,%r5
	ahi	%r0,-1
	srl	%r0,31
	ltr	%r0,%r0
	locre	%r1,%r2
	llgfr	%r2,%r1
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llgfr	%r2,%r0
	br	%r14
.L1815:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L1809
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
	lochie	%r4,7
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
	lochie	%r4,63
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
	cgije	%r2,0,.L1935
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	srlg	%r5,%r2,1
	nr	%r1,%r3
	sllk	%r0,%r3,1
	cgije	%r5,0,.L2026
	nilf	%r4,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r2,2
	lcr	%r12,%r4
	srlg	%r4,%r2,2
	nr	%r12,%r0
	sllk	%r0,%r3,2
	ar	%r1,%r12
	cgije	%r4,0,.L1933
	risbg	%r12,%r5,63,128+63,0
	srlk	%r5,%r2,3
	lcr	%r4,%r12
	sllk	%r12,%r3,3
	nr	%r4,%r0
	srlg	%r0,%r2,3
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,4
	lcr	%r4,%r4
	srlk	%r5,%r2,4
	nr	%r4,%r12
	sllk	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,5
	lcr	%r4,%r4
	srlk	%r5,%r2,5
	nr	%r4,%r12
	sllk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,6
	lcr	%r4,%r4
	srlk	%r5,%r2,6
	nr	%r4,%r12
	sllk	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,7
	lcr	%r4,%r4
	srlk	%r5,%r2,7
	nr	%r4,%r12
	sllk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,8
	lcr	%r4,%r4
	srlk	%r5,%r2,8
	nr	%r4,%r12
	sllk	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,9
	lcr	%r4,%r4
	srlk	%r5,%r2,9
	nr	%r4,%r12
	sllk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,10
	lcr	%r4,%r4
	srlk	%r5,%r2,10
	nr	%r4,%r12
	sllk	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lcr	%r4,%r4
	srlk	%r5,%r2,11
	nr	%r4,%r12
	sllk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lcr	%r4,%r4
	srlk	%r5,%r2,12
	nr	%r4,%r12
	sllk	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lcr	%r4,%r4
	srlk	%r5,%r2,13
	nr	%r4,%r12
	sllk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lcr	%r4,%r4
	srlk	%r5,%r2,14
	nr	%r4,%r12
	sllk	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lcr	%r4,%r4
	srlk	%r5,%r2,15
	nr	%r4,%r12
	sllk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lcr	%r4,%r4
	srlk	%r5,%r2,16
	nr	%r4,%r12
	sllk	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lcr	%r4,%r4
	srlk	%r5,%r2,17
	nr	%r4,%r12
	sllk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lcr	%r4,%r4
	srlk	%r5,%r2,18
	nr	%r4,%r12
	sllk	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lcr	%r4,%r4
	srlk	%r5,%r2,19
	nr	%r4,%r12
	sllk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lcr	%r4,%r4
	srlk	%r5,%r2,20
	nr	%r4,%r12
	sllk	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lcr	%r4,%r4
	srlk	%r5,%r2,21
	nr	%r4,%r12
	sllk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lcr	%r4,%r4
	srlk	%r5,%r2,22
	nr	%r4,%r12
	sllk	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lcr	%r4,%r4
	srlk	%r5,%r2,23
	nr	%r4,%r12
	sllk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lcr	%r4,%r4
	srlk	%r5,%r2,24
	nr	%r4,%r12
	sllk	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lcr	%r4,%r4
	srlk	%r5,%r2,25
	nr	%r4,%r12
	sllk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lcr	%r4,%r4
	srlk	%r5,%r2,26
	nr	%r4,%r12
	sllk	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lcr	%r4,%r4
	srlk	%r5,%r2,27
	nr	%r4,%r12
	sllk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lcr	%r4,%r4
	srlk	%r5,%r2,28
	nr	%r4,%r12
	sllk	%r12,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L1933
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	srlg	%r0,%r2,29
	nr	%r5,%r12
	sllk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r0,0,.L1933
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r4,%r1
	sllk	%r1,%r3,30
	risbgn	%r5,%r2,64-1,128+63,32+1+1
	srlk	%r12,%r2,31
	lcr	%r0,%r5
	sll	%r3,31
	nr	%r0,%r1
	lcr	%r1,%r12
	ar	%r0,%r4
	nr	%r1,%r3
	ar	%r1,%r0
	srlg	%r2,%r2,30
	ltgr	%r2,%r2
	locre	%r1,%r4
.L1933:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1935:
	lhi	%r1,0
.L2026:
	llgfr	%r2,%r1
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f2,%r12
	.cfi_register 12, 17
	srlk	%r11,%r4,3
	risbg	%r0,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L2035
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2233
.L2035:
	cije	%r11,0,.L2234
	ahik	%r1,%r11,-1
	clijle	%r1,6,.L2037
	la	%r8,8(%r3)
	cgrje	%r2,%r8,.L2037
	risbg	%r10,%r4,32,128+59,0
	aghik	%r9,%r10,-16
	srlk	%r12,%r4,4
	srlg	%r5,%r9,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2125
	cgije	%r8,1,.L2147
	cgijlh	%r8,2,.L2235
.L2148:
	vl	%v19,0(%r1,%r3),3
	vst	%v19,0(%r1,%r2),3
	aghi	%r1,16
.L2147:
	vl	%v21,0(%r1,%r3),3
	vst	%v21,0(%r1,%r2),3
	aghi	%r1,16
	cgrje	%r1,%r10,.L2201
.L2125:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2229
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
.L2038:
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
	aghi	%r1,64
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
	brctg	%r5,.L2038
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
.L2201:
	sll	%r12,1
	crje	%r11,%r12,.L2041
	risbgn	%r11,%r12,32,128+59,3
	lg	%r1,0(%r11,%r3)
	stg	%r1,0(%r11,%r2)
.L2041:
	clrjhe	%r0,%r4,.L2030
	srk	%r10,%r4,%r0
	llgfr	%r12,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,30,.L2033
	lgr	%r11,%r2
	la	%r5,1(%r12,%r3)
	algfr	%r11,%r0
	sgrk	%r9,%r11,%r5
	clgijle	%r9,14,.L2033
	risbg	%r9,%r10,32,128+59,0
	agr	%r12,%r3
	aghik	%r8,%r9,-16
	lghi	%r1,0
	srlg	%r5,%r8,4
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2107
	cgije	%r8,1,.L2151
	cgijlh	%r8,2,.L2236
.L2152:
	vl	%v25,0(%r1,%r12)
	vst	%v25,0(%r1,%r11)
	aghi	%r1,16
.L2151:
	vl	%v27,0(%r1,%r12)
	vst	%v27,0(%r1,%r11)
	aghi	%r1,16
	cgrje	%r1,%r9,.L2200
.L2107:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2227
	aghi	%r5,-1
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
.L2042:
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
	aghi	%r1,64
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
	brctg	%r5,.L2042
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
.L2200:
	risbg	%r12,%r10,32,128+59,0
	ar	%r12,%r0
	tmll	%r10,15
	je	.L2030
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L2030
	llgfr	%r1,%r11
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,2
	clrjhe	%r5,%r4,.L2030
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L2030
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r9,%r12,4
	clrjhe	%r9,%r4,.L2030
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L2030
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r1,%r12,6
	clrjhe	%r1,%r4,.L2030
	llgfr	%r9,%r1
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahik	%r8,%r12,7
	clrjhe	%r8,%r4,.L2030
	llgfr	%r10,%r8
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ahik	%r0,%r12,8
	clrjhe	%r0,%r4,.L2030
	llgfr	%r1,%r0
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,9
	clrjhe	%r5,%r4,.L2030
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r11,%r12,10
	clrjhe	%r11,%r4,.L2030
	llgfr	%r1,%r11
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahik	%r9,%r12,11
	clrjhe	%r9,%r4,.L2030
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,12
	clrjhe	%r10,%r4,.L2030
	llgfr	%r11,%r10
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r0,%r12,13
	clrjhe	%r0,%r4,.L2030
	llgfr	%r9,%r0
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r12,14
	clrjhe	%r12,%r4,.L2030
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2030:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L2233:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2030
	clijle	%r10,30,.L2046
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2046
	risbg	%r8,%r4,32,128+59,0
	aghi	%r1,-15
	aghik	%r0,%r8,-16
	agrk	%r12,%r3,%r1
	lcgr	%r11,%r8
	agr	%r1,%r2
	srlg	%r8,%r0,4
	lghi	%r5,0
	aghi	%r8,1
	risbg	%r9,%r8,62,128+63,0
	je	.L2143
	cgije	%r9,1,.L2154
	cgijlh	%r9,2,.L2237
.L2155:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2154:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2202
.L2143:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2231
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2047:
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	aghi	%r5,-64
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
	brctg	%r0,.L2047
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2202:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2030
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2030
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2030
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2030
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2030
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2030
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2030
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2030
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2030
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2030
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2030
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2030
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2030
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2030
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2030
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2030
.L2229:
	vl	%v23,0(%r1,%r3),3
	vst	%v23,0(%r1,%r2),3
	vl	%v24,16(%r1,%r3),3
	vst	%v24,16(%r1,%r2),3
	vl	%v26,32(%r1,%r3),3
	vst	%v26,32(%r1,%r2),3
	vl	%v28,48(%r1,%r3),3
	vst	%v28,48(%r1,%r2),3
	aghi	%r1,64
	brctg	%r5,.L2229
	j	.L2201
.L2227:
	vl	%v29,0(%r1,%r12)
	vst	%v29,0(%r1,%r11)
	vl	%v31,16(%r1,%r12)
	vst	%v31,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v5,48(%r1,%r12)
	vst	%v5,48(%r1,%r11)
	aghi	%r1,64
	brctg	%r5,.L2227
	j	.L2200
.L2235:
	vl	%v17,0(%r3),3
	lghi	%r1,16
	vst	%v17,0(%r2),3
	j	.L2148
.L2236:
	vl	%v30,0(%r12)
	lghi	%r1,16
	vst	%v30,0(%r11)
	j	.L2152
.L2231:
	vl	%v16,0(%r5,%r12)
	aghik	%r11,%r5,-16
	aghik	%r8,%r5,-32
	vst	%v16,0(%r5,%r1)
	aghik	%r9,%r5,-48
	aghi	%r5,-64
	vl	%v18,0(%r11,%r12)
	vst	%v18,0(%r11,%r1)
	vl	%v20,0(%r8,%r12)
	vst	%v20,0(%r8,%r1)
	vl	%v22,0(%r9,%r12)
	vst	%v22,0(%r9,%r1)
	brctg	%r0,.L2231
	j	.L2202
.L2234:
	llgfr	%r12,%r0
	cgije	%r4,0,.L2030
.L2033:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	lghi	%r10,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r10
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjle	%r4,%r1,.L2030
	cije	%r0,0,.L2098
	cije	%r0,1,.L2158
	cijlh	%r0,2,.L2238
.L2159:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2158:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L2030
.L2098:
	srlk	%r4,%r11,2
	chi	%r4,2
	jle	.L2226
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2044:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2044
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L2030
.L2037:
	risbgn	%r10,%r11,32,128+60,3
	aghik	%r9,%r10,-8
	lghi	%r1,0
	srlg	%r5,%r9,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2116
	cgije	%r8,1,.L2149
	cgijlh	%r8,2,.L2239
.L2150:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2149:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r10,.L2041
.L2116:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2228
	aghi	%r5,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L2040:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brctg	%r5,.L2040
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	j	.L2041
.L2228:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r8,8(%r1,%r3)
	stg	%r8,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2228
	j	.L2041
.L2237:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2155
.L2226:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ic	%r10,1(%r1,%r3)
	stc	%r10,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2226
	j	.L2030
.L2239:
	lg	%r12,0(%r3)
	lghi	%r1,8
	stg	%r12,0(%r2)
	j	.L2150
.L2238:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L2159
.L2046:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2134
	cgije	%r5,1,.L2156
	cgije	%r5,2,.L2157
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2157:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2156:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2030
.L2134:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2230
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2050:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2050
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2030
.L2230:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2230
	j	.L2030
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
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f4,%r11
	.cfi_register 11, 18
	srlk	%r12,%r4,1
	clgrjl	%r2,%r3,.L2245
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2394
.L2245:
	cije	%r12,0,.L2244
	ahik	%r1,%r12,-1
	clijle	%r1,14,.L2248
	la	%r8,2(%r3)
	sgrk	%r9,%r2,%r8
	clgijle	%r9,12,.L2248
	risbg	%r11,%r4,32,128+59,0
	aghik	%r10,%r11,-16
	srlk	%r0,%r4,4
	srlg	%r5,%r10,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2309
	cgije	%r8,1,.L2331
	cgijlh	%r8,2,.L2395
.L2332:
	vl	%v19,0(%r1,%r3)
	vst	%v19,0(%r1,%r2)
	aghi	%r1,16
.L2331:
	vl	%v21,0(%r1,%r3)
	vst	%v21,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r11,%r1,.L2371
.L2309:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2390
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2249:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L2249
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2371:
	sllk	%r1,%r0,3
	crje	%r12,%r1,.L2244
	risbgn	%r9,%r1,32,128+59,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,1
	clrjle	%r12,%r11,.L2244
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahik	%r8,%r1,2
	clrjle	%r12,%r8,.L2244
	risbgn	%r9,%r8,31,128+61,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,3
	clrjle	%r12,%r11,.L2244
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahik	%r8,%r1,4
	clrjle	%r12,%r8,.L2244
	risbgn	%r9,%r8,31,128+60,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,5
	clrjle	%r12,%r11,.L2244
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,6
	clrjle	%r12,%r1,.L2244
	risbgn	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L2244:
	tmll	%r4,1
	je	.L2241
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2241:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L2394:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2241
	clijle	%r10,30,.L2254
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2254
	risbg	%r8,%r4,32,128+59,0
	aghi	%r1,-15
	aghik	%r0,%r8,-16
	agrk	%r12,%r3,%r1
	lcgr	%r11,%r8
	agr	%r1,%r2
	srlg	%r8,%r0,4
	lghi	%r5,0
	aghi	%r8,1
	risbg	%r9,%r8,62,128+63,0
	je	.L2327
	cgije	%r9,1,.L2335
	cgijlh	%r9,2,.L2396
.L2336:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2335:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2372
.L2327:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2392
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2255:
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	aghi	%r5,-64
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
	brctg	%r0,.L2255
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2372:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2241
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2241
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2241
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2241
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2241
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2241
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2241
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2241
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2241
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2241
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2241
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2241
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2241
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2241
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2241
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2241
.L2390:
	vl	%v23,0(%r1,%r3)
	vst	%v23,0(%r1,%r2)
	vl	%v24,16(%r1,%r3)
	vst	%v24,16(%r1,%r2)
	vl	%v26,32(%r1,%r3)
	vst	%v26,32(%r1,%r2)
	vl	%v28,48(%r1,%r3)
	vst	%v28,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2390
	j	.L2371
.L2395:
	vl	%v17,0(%r3)
	lghi	%r1,16
	vst	%v17,0(%r2)
	j	.L2332
.L2392:
	vl	%v16,0(%r5,%r12)
	aghik	%r11,%r5,-16
	aghik	%r8,%r5,-32
	vst	%v16,0(%r5,%r1)
	aghik	%r9,%r5,-48
	aghi	%r5,-64
	vl	%v18,0(%r11,%r12)
	vst	%v18,0(%r11,%r1)
	vl	%v20,0(%r8,%r12)
	vst	%v20,0(%r8,%r1)
	vl	%v22,0(%r9,%r12)
	vst	%v22,0(%r9,%r1)
	brctg	%r0,.L2392
	j	.L2372
.L2248:
	risbgn	%r8,%r12,32,128+62,1
	aghik	%r9,%r8,-2
	lghi	%r1,0
	srlg	%r11,%r9,1
	aghi	%r11,1
	risbg	%r0,%r11,62,128+63,0
	je	.L2300
	cgije	%r0,1,.L2333
	cgijlh	%r0,2,.L2397
.L2334:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2333:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r8,%r1,.L2244
.L2300:
	srlg	%r5,%r11,2
	cghi	%r5,2
	jle	.L2389
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2251:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L2251
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2244
.L2389:
	lh	%r8,0(%r1,%r3)
	sth	%r8,0(%r1,%r2)
	lh	%r9,2(%r1,%r3)
	sth	%r9,2(%r1,%r2)
	lh	%r11,4(%r1,%r3)
	sth	%r11,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L2389
	j	.L2244
.L2396:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2336
.L2397:
	lh	%r10,0(%r3)
	lghi	%r1,2
	sth	%r10,0(%r2)
	j	.L2334
.L2254:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2318
	cgije	%r5,1,.L2337
	cgije	%r5,2,.L2338
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2338:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2337:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2241
.L2318:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2391
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2257:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2257
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2241
.L2391:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2391
	j	.L2241
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f2,%r12
	.cfi_register 12, 17
	srlk	%r11,%r4,2
	risbg	%r0,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L2404
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2602
.L2404:
	cije	%r11,0,.L2603
	ahik	%r1,%r11,-1
	clijle	%r1,6,.L2406
	la	%r8,4(%r3)
	sgrk	%r9,%r2,%r8
	clgijle	%r9,8,.L2406
	risbg	%r10,%r4,32,128+59,0
	aghik	%r5,%r10,-16
	srlk	%r12,%r4,4
	srlg	%r8,%r5,4
	lghi	%r1,0
	aghi	%r8,1
	risbg	%r9,%r8,62,128+63,0
	je	.L2494
	cgije	%r9,1,.L2516
	cgijlh	%r9,2,.L2604
.L2517:
	vl	%v19,0(%r1,%r3)
	vst	%v19,0(%r1,%r2)
	aghi	%r1,16
.L2516:
	vl	%v21,0(%r1,%r3)
	vst	%v21,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r1,%r10,.L2570
.L2494:
	srlg	%r5,%r8,2
	cghi	%r5,2
	jle	.L2598
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2407:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L2407
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2570:
	sllk	%r1,%r12,2
	crje	%r11,%r1,.L2410
	risbgn	%r10,%r1,32,128+59,2
	l	%r12,0(%r10,%r3)
	ahik	%r5,%r1,1
	st	%r12,0(%r10,%r2)
	clrjle	%r11,%r5,.L2410
	risbgn	%r8,%r5,31,128+61,2
	l	%r9,0(%r8,%r3)
	ahi	%r1,2
	st	%r9,0(%r8,%r2)
	clrjle	%r11,%r1,.L2410
	risbgn	%r11,%r1,31,128+60,2
	l	%r1,0(%r11,%r3)
	st	%r1,0(%r11,%r2)
.L2410:
	clrjhe	%r0,%r4,.L2399
	srk	%r10,%r4,%r0
	llgfr	%r12,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,30,.L2402
	lgr	%r11,%r2
	la	%r5,1(%r12,%r3)
	algfr	%r11,%r0
	sgrk	%r8,%r11,%r5
	clgijle	%r8,14,.L2402
	risbg	%r9,%r10,32,128+59,0
	agr	%r12,%r3
	aghik	%r5,%r9,-16
	lghi	%r1,0
	srlg	%r5,%r5,4
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2476
	cgije	%r8,1,.L2520
	cgijlh	%r8,2,.L2605
.L2521:
	vl	%v25,0(%r1,%r12)
	vst	%v25,0(%r1,%r11)
	aghi	%r1,16
.L2520:
	vl	%v27,0(%r1,%r12)
	vst	%v27,0(%r1,%r11)
	aghi	%r1,16
	cgrje	%r1,%r9,.L2569
.L2476:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2596
	aghi	%r5,-1
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
.L2411:
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
	aghi	%r1,64
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
	brctg	%r5,.L2411
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
.L2569:
	risbg	%r12,%r10,32,128+59,0
	ar	%r12,%r0
	tmll	%r10,15
	je	.L2399
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L2399
	llgfr	%r1,%r11
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,2
	clrjhe	%r5,%r4,.L2399
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L2399
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r9,%r12,4
	clrjhe	%r9,%r4,.L2399
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L2399
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r1,%r12,6
	clrjhe	%r1,%r4,.L2399
	llgfr	%r9,%r1
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahik	%r8,%r12,7
	clrjhe	%r8,%r4,.L2399
	llgfr	%r10,%r8
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ahik	%r0,%r12,8
	clrjhe	%r0,%r4,.L2399
	llgfr	%r1,%r0
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,9
	clrjhe	%r5,%r4,.L2399
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r11,%r12,10
	clrjhe	%r11,%r4,.L2399
	llgfr	%r1,%r11
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahik	%r9,%r12,11
	clrjhe	%r9,%r4,.L2399
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,12
	clrjhe	%r10,%r4,.L2399
	llgfr	%r11,%r10
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r0,%r12,13
	clrjhe	%r0,%r4,.L2399
	llgfr	%r9,%r0
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r12,14
	clrjhe	%r12,%r4,.L2399
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2399:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	br	%r14
.L2602:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2399
	clijle	%r10,30,.L2415
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2415
	risbg	%r8,%r4,32,128+59,0
	aghi	%r1,-15
	aghik	%r0,%r8,-16
	agrk	%r12,%r3,%r1
	lcgr	%r11,%r8
	agr	%r1,%r2
	srlg	%r8,%r0,4
	lghi	%r5,0
	aghi	%r8,1
	risbg	%r9,%r8,62,128+63,0
	je	.L2512
	cgije	%r9,1,.L2523
	cgijlh	%r9,2,.L2606
.L2524:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2523:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2571
.L2512:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2600
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2416:
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	aghi	%r5,-64
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
	brctg	%r0,.L2416
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2571:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2399
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2399
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2399
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2399
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2399
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2399
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2399
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2399
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2399
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2399
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2399
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2399
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2399
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2399
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2399
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2399
.L2598:
	vl	%v23,0(%r1,%r3)
	vst	%v23,0(%r1,%r2)
	vl	%v24,16(%r1,%r3)
	vst	%v24,16(%r1,%r2)
	vl	%v26,32(%r1,%r3)
	vst	%v26,32(%r1,%r2)
	vl	%v28,48(%r1,%r3)
	vst	%v28,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2598
	j	.L2570
.L2596:
	vl	%v29,0(%r1,%r12)
	vst	%v29,0(%r1,%r11)
	vl	%v31,16(%r1,%r12)
	vst	%v31,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v5,48(%r1,%r12)
	vst	%v5,48(%r1,%r11)
	aghi	%r1,64
	brctg	%r5,.L2596
	j	.L2569
.L2604:
	vl	%v17,0(%r3)
	lghi	%r1,16
	vst	%v17,0(%r2)
	j	.L2517
.L2605:
	vl	%v30,0(%r12)
	lghi	%r1,16
	vst	%v30,0(%r11)
	j	.L2521
.L2600:
	vl	%v16,0(%r5,%r12)
	aghik	%r11,%r5,-16
	aghik	%r8,%r5,-32
	vst	%v16,0(%r5,%r1)
	aghik	%r9,%r5,-48
	aghi	%r5,-64
	vl	%v18,0(%r11,%r12)
	vst	%v18,0(%r11,%r1)
	vl	%v20,0(%r8,%r12)
	vst	%v20,0(%r8,%r1)
	vl	%v22,0(%r9,%r12)
	vst	%v22,0(%r9,%r1)
	brctg	%r0,.L2600
	j	.L2571
.L2406:
	risbgn	%r10,%r11,32,128+61,2
	aghik	%r12,%r10,-4
	lghi	%r1,0
	srlg	%r5,%r12,2
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2485
	cgije	%r8,1,.L2518
	cgijlh	%r8,2,.L2607
.L2519:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
.L2518:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r10,.L2410
.L2485:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2597
	aghi	%r5,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
.L2409:
	aghi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	brctg	%r5,.L2409
	j	.L2410
.L2597:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r9,8(%r1,%r3)
	st	%r9,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2597
	j	.L2410
.L2603:
	llgfr	%r12,%r0
	cgije	%r4,0,.L2399
.L2402:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	lghi	%r10,-1
	aghik	%r1,%r12,1
	xgrk	%r11,%r12,%r10
	ar	%r11,%r4
	risbg	%r0,%r11,62,128+63,0
	clrjle	%r4,%r1,.L2399
	cije	%r0,0,.L2467
	cije	%r0,1,.L2527
	cijlh	%r0,2,.L2608
.L2528:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2527:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L2399
.L2467:
	srlk	%r4,%r11,2
	chi	%r4,2
	jle	.L2595
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2413:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2413
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L2399
.L2606:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2524
.L2595:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ic	%r10,1(%r1,%r3)
	stc	%r10,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2595
	j	.L2399
.L2607:
	l	%r9,0(%r3)
	lghi	%r1,4
	st	%r9,0(%r2)
	j	.L2519
.L2608:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L2528
.L2415:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2503
	cgije	%r5,1,.L2525
	cgije	%r5,2,.L2526
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2526:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2525:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2399
.L2503:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2599
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2419:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2419
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2399
.L2599:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2599
	j	.L2399
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
	srak	%r1,%r2,15
	cijlh	%r1,0,.L2625
	srak	%r5,%r2,14
	jne	.L2624
	srak	%r0,%r2,13
	cijlh	%r0,0,.L2626
	srak	%r3,%r2,12
	cijlh	%r3,0,.L2627
	srak	%r4,%r2,11
	cijlh	%r4,0,.L2628
	srak	%r5,%r2,10
	cijlh	%r5,0,.L2629
	srak	%r1,%r2,9
	cijlh	%r1,0,.L2630
	srak	%r0,%r2,8
	cijlh	%r0,0,.L2631
	srak	%r3,%r2,7
	cijlh	%r3,0,.L2632
	srak	%r4,%r2,6
	cijlh	%r4,0,.L2633
	srak	%r5,%r2,5
	cijlh	%r5,0,.L2634
	srak	%r1,%r2,4
	cijlh	%r1,0,.L2635
	srak	%r0,%r2,3
	cijlh	%r0,0,.L2636
	srak	%r3,%r2,2
	cijlh	%r3,0,.L2637
	srak	%r4,%r2,1
	cijlh	%r4,0,.L2638
	ltgr	%r2,%r2
	lhi	%r5,15
	lochie	%r5,16
.L2624:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2625:
	lhi	%r5,0
	j	.L2624
.L2636:
	lhi	%r5,12
	j	.L2624
.L2626:
	lhi	%r5,2
	j	.L2624
.L2627:
	lhi	%r5,3
	j	.L2624
.L2628:
	lhi	%r5,4
	j	.L2624
.L2629:
	lhi	%r5,5
	j	.L2624
.L2630:
	lhi	%r5,6
	j	.L2624
.L2631:
	lhi	%r5,7
	j	.L2624
.L2632:
	lhi	%r5,8
	j	.L2624
.L2633:
	lhi	%r5,9
	j	.L2624
.L2634:
	lhi	%r5,10
	j	.L2624
.L2635:
	lhi	%r5,11
	j	.L2624
.L2637:
	lhi	%r5,13
	j	.L2624
.L2638:
	lhi	%r5,14
	j	.L2624
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
	tmll	%r2,1
	jne	.L2644
	tmll	%r2,2
	jne	.L2645
	tmll	%r2,4
	jne	.L2646
	tmll	%r2,8
	jne	.L2647
	tmll	%r2,16
	jne	.L2648
	tmll	%r2,32
	jne	.L2649
	tmll	%r2,64
	jne	.L2650
	tmll	%r2,128
	jne	.L2651
	tmll	%r2,256
	jne	.L2652
	tmll	%r2,512
	jne	.L2653
	tmll	%r2,1024
	jne	.L2654
	tmll	%r2,2048
	jne	.L2655
	tmll	%r2,4096
	jne	.L2656
	tmll	%r2,8192
	jne	.L2657
	tmll	%r2,16384
	jne	.L2658
	sra	%r2,15
	ltr	%r2,%r2
	lhi	%r2,15
	lochie	%r2,16
.L2643:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L2644:
	lhi	%r2,0
	j	.L2643
.L2645:
	lhi	%r2,1
	j	.L2643
.L2656:
	lhi	%r2,12
	j	.L2643
.L2646:
	lhi	%r2,2
	j	.L2643
.L2647:
	lhi	%r2,3
	j	.L2643
.L2648:
	lhi	%r2,4
	j	.L2643
.L2649:
	lhi	%r2,5
	j	.L2643
.L2650:
	lhi	%r2,6
	j	.L2643
.L2651:
	lhi	%r2,7
	j	.L2643
.L2652:
	lhi	%r2,8
	j	.L2643
.L2653:
	lhi	%r2,9
	j	.L2643
.L2654:
	lhi	%r2,10
	j	.L2643
.L2655:
	lhi	%r2,11
	j	.L2643
.L2657:
	lhi	%r2,13
	j	.L2643
.L2658:
	lhi	%r2,14
	j	.L2643
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
	larl	%r5,.L2669
	keb	%f0,.L2670-.L2669(%r5)
	jhe	.L2668
	cgebr	%r2,5,%f0
	br	%r14
.L2668:
	seb	%f0,.L2670-.L2669(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2669:
.L2670:
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
	larl	%r5,.L2673
	vl	%v4,.L2674-.L2673(%r5),3
	vl	%v6,.L2675-.L2673(%r5),3
	vl	%v2,.L2676-.L2673(%r5),3
	vl	%v3,.L2677-.L2673(%r5),3
	vlvgf	%v0,%r2,3
	vrepf	%v0,%v0,3
	vgmf	%v1,31,31
	vesravf	%v5,%v0,%v4
	vesravf	%v7,%v0,%v6
	vn	%v16,%v5,%v1
	vn	%v18,%v7,%v1
	vesravf	%v20,%v0,%v2
	vaf	%v22,%v16,%v18
	vn	%v17,%v20,%v1
	vesravf	%v19,%v0,%v3
	vaf	%v21,%v17,%v22
	vn	%v23,%v19,%v1
	vzero	%v26
	vaf	%v24,%v23,%v21
	vleib	%v26,64,7
	vslb	%v28,%v24,%v26
	vzero	%v25
	vaf	%v30,%v28,%v24
	vleib	%v25,32,7
	vslb	%v27,%v30,%v25
	vaf	%v29,%v27,%v30
	vlgvf	%r2,%v29,0
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L2673:
.L2677:
	.long	12
	.long	13
	.long	14
	.long	15
.L2676:
	.long	8
	.long	9
	.long	10
	.long	11
.L2675:
	.long	4
	.long	5
	.long	6
	.long	7
.L2674:
	.long	0
	.long	1
	.long	2
	.long	3
	.align	2
.text
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
	larl	%r5,.L2680
	vl	%v4,.L2681-.L2680(%r5),3
	vl	%v6,.L2682-.L2680(%r5),3
	vl	%v2,.L2683-.L2680(%r5),3
	vl	%v3,.L2684-.L2680(%r5),3
	vlvgf	%v0,%r2,3
	vrepf	%v0,%v0,3
	vgmf	%v1,31,31
	vesravf	%v5,%v0,%v4
	vesravf	%v7,%v0,%v6
	vn	%v16,%v5,%v1
	vn	%v18,%v7,%v1
	vesravf	%v20,%v0,%v2
	vaf	%v22,%v16,%v18
	vn	%v17,%v20,%v1
	vesravf	%v19,%v0,%v3
	vaf	%v21,%v17,%v22
	vn	%v23,%v19,%v1
	vzero	%v26
	vaf	%v24,%v23,%v21
	vleib	%v26,64,7
	vslb	%v28,%v24,%v26
	vzero	%v25
	vaf	%v30,%v28,%v24
	vleib	%v25,32,7
	vslb	%v27,%v30,%v25
	vaf	%v29,%v27,%v30
	vlgvf	%r2,%v29,0
	lgfr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L2680:
.L2684:
	.long	12
	.long	13
	.long	14
	.long	15
.L2683:
	.long	8
	.long	9
	.long	10
	.long	11
.L2682:
	.long	4
	.long	5
	.long	6
	.long	7
.L2681:
	.long	0
	.long	1
	.long	2
	.long	3
	.align	2
.text
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
	cgije	%r2,0,.L2688
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	sllk	%r5,%r3,1
	nr	%r1,%r3
	cije	%r4,0,.L2686
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r2,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r1,%r0
	cije	%r4,0,.L2686
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r2,3
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r1,%r4
	cije	%r5,0,.L2686
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r1,%r4
	cije	%r5,0,.L2686
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r1,%r5
	cije	%r4,0,.L2686
	risbgn	%r5,%r2,64-1,128+63,32+1+1
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r4,%r1
	sllk	%r1,%r3,30
	lcr	%r0,%r5
	sll	%r3,31
	nr	%r0,%r1
	srlk	%r5,%r2,31
	ar	%r0,%r4
	lcr	%r1,%r5
	nr	%r1,%r3
	ar	%r1,%r0
	srl	%r2,30
	ltr	%r2,%r2
	locre	%r1,%r4
.L2686:
	llgfr	%r2,%r1
	br	%r14
.L2688:
	lhi	%r1,0
	llgfr	%r2,%r1
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
	cgije	%r2,0,.L2783
	cgije	%r3,0,.L2783
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srlk	%r4,%r3,1
	nr	%r1,%r2
	srlg	%r5,%r3,1
	cgije	%r5,0,.L2874
	ldgr	%f0,%r12
	.cfi_register 12, 16
	nilf	%r4,1
	sllk	%r12,%r2,2
	lcr	%r4,%r4
	srlg	%r5,%r3,2
	nr	%r4,%r0
	srlk	%r0,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r0,%r2,3
	nr	%r4,%r12
	srlk	%r12,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r12,%r2,4
	nr	%r4,%r0
	srlk	%r0,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r0,%r2,5
	nr	%r4,%r12
	srlk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r12,%r2,6
	nr	%r4,%r0
	srlk	%r0,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r0,%r2,7
	nr	%r4,%r12
	srlk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r12,%r2,8
	nr	%r4,%r0
	srlk	%r0,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r0,%r2,9
	nr	%r4,%r12
	srlk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r12,%r2,10
	nr	%r4,%r0
	srlk	%r0,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r0,%r2,11
	nr	%r4,%r12
	srlk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r12,%r2,12
	nr	%r4,%r0
	srlk	%r0,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r0,%r2,13
	nr	%r4,%r12
	srlk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r12,%r2,14
	nr	%r4,%r0
	srlk	%r0,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r0,%r2,15
	nr	%r4,%r12
	srlk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r12,%r2,16
	nr	%r4,%r0
	srlk	%r0,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r0,%r2,17
	nr	%r4,%r12
	srlk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r12,%r2,18
	nr	%r4,%r0
	srlk	%r0,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r0,%r2,19
	nr	%r4,%r12
	srlk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r12,%r2,20
	nr	%r4,%r0
	srlk	%r0,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r0,%r2,21
	nr	%r4,%r12
	srlk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r12,%r2,22
	nr	%r4,%r0
	srlk	%r0,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r0,%r2,23
	nr	%r4,%r12
	srlk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r12,%r2,24
	nr	%r4,%r0
	srlk	%r0,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r0,%r2,25
	nr	%r4,%r12
	srlk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r12,%r2,26
	nr	%r4,%r0
	srlk	%r0,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,27
	lcr	%r4,%r4
	sllk	%r0,%r2,27
	nr	%r4,%r12
	srlk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r5,0,.L2780
	risbg	%r4,%r12,63,128+63,0
	srlk	%r5,%r3,28
	lcr	%r4,%r4
	sllk	%r12,%r2,28
	nr	%r4,%r0
	srlg	%r0,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L2780
	nilf	%r5,1
	sllk	%r0,%r2,29
	lcr	%r5,%r5
	srlg	%r4,%r3,29
	nr	%r5,%r12
	srlk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r4,0,.L2780
	nilf	%r12,1
	lcr	%r12,%r12
	nr	%r12,%r0
	risbgn	%r0,%r3,64-1,128+63,32+1+1
	lcr	%r5,%r0
	ar	%r12,%r1
	srlk	%r0,%r3,31
	sllk	%r1,%r2,31
	sllk	%r4,%r2,30
	nrk	%r2,%r5,%r4
	lcr	%r5,%r0
	ar	%r2,%r12
	nr	%r1,%r5
	ar	%r1,%r2
	srlg	%r3,%r3,30
	ltgr	%r3,%r3
	locre	%r1,%r12
.L2780:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2783:
	lhi	%r1,0
.L2874:
	llgfr	%r2,%r1
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
	clrjhe	%r3,%r2,.L2995
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L2989
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2881
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L2989
.L2883:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2881
	ahik	%r5,%r10,-1
	brct	%r11,.L2958
.L2882:
	ltgr	%r4,%r4
	locrne	%r5,%r2
	llgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L2958:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2989
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2881
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2989
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2881
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L2883
.L2989:
	srk	%r1,%r2,%r3
	slrk	%r5,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	srlk	%r11,%r12,1
	risbgn	%r10,%r3,64-31,128+63,32+31
	ltr	%r5,%r5
	locre	%r1,%r2
	lr	%r5,%r12
	llgfr	%r2,%r1
	lochie	%r5,0
	cijlh	%r11,0,.L2886
	j	.L2882
.L2881:
	cije	%r0,0,.L2888
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r10,0
	alcr	%r10,%r10
	lr	%r5,%r0
	ltr	%r10,%r10
	locrne	%r2,%r11
	lochie	%r5,0
	llgtr	%r10,%r3
	llgtr	%r11,%r12
	llgfr	%r2,%r2
	lgr	%r3,%r1
	lr	%r12,%r0
.L2886:
	srk	%r1,%r2,%r10
	slrk	%r10,%r2,%r10
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r10,%r12,2
	ltr	%r0,%r0
	locre	%r1,%r2
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r11,%r3,2
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,3
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,3
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,4
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,4
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,5
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,5
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,6
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,6
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,7
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,7
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,8
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,8
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,9
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,9
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,10
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,10
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,11
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,11
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,12
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,12
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,13
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,13
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,14
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,14
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,15
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,15
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,16
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,16
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,17
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,17
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,18
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,18
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,19
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,19
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,20
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,20
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,21
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,21
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,22
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,22
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,23
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,23
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,24
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,24
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,25
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,25
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r3,26
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r12,26
	cije	%r10,0,.L2882
	srk	%r2,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r0,0
	alcr	%r0,%r0
	srlk	%r11,%r12,27
	ltr	%r0,%r0
	locrne	%r1,%r2
	lochie	%r10,0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r3,27
	cije	%r11,0,.L2882
	srk	%r0,%r1,%r10
	slrk	%r10,%r1,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r3,28
	ltr	%r2,%r2
	locre	%r0,%r1
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r0
	srlk	%r11,%r12,28
	cije	%r11,0,.L2882
	srk	%r1,%r0,%r10
	slrk	%r10,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r1,%r0
	lochie	%r11,0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r0,%r12,29
	srlk	%r11,%r3,29
	cije	%r0,0,.L2882
	srk	%r10,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r11,%r3,30
	ltr	%r2,%r2
	locrne	%r1,%r10
	lochie	%r0,0
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r0,%r12,30
	cije	%r0,0,.L2882
	srk	%r10,%r1,%r11
	slrk	%r11,%r1,%r11
	lhi	%r2,0
	alcr	%r2,%r2
	srl	%r3,31
	ltr	%r2,%r2
	locrne	%r1,%r10
	lochie	%r0,0
	or	%r5,%r0
	llgfr	%r2,%r1
	cijhe	%r12,0,.L2882
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L2882
.L2995:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r5,%r3,%r2
	srk	%r1,%r2,%r3
	lpr	%r0,%r5
	ahi	%r0,-1
	srl	%r0,31
	ltr	%r0,%r0
	locre	%r1,%r2
	llgfr	%r2,%r1
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llgfr	%r2,%r0
	br	%r14
.L2888:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L2882
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
	lochih	%r2,1
	lochil	%r2,-1
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
	lochih	%r2,1
	lochil	%r2,-1
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
	cijl	%r3,0,.L3111
	cgije	%r3,0,.L3019
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srak	%r4,%r3,1
	nr	%r1,%r2
	srag	%r5,%r3,1
	cgije	%r5,0,.L3109
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r1,%r4
	sll	%r2,2
	srag	%r3,%r3,2
	lgfr	%r2,%r2
	je	.L3109
	lhi	%r0,0
.L3017:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r11,%r3,63,128+63,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lcr	%r5,%r11
	sllk	%r12,%r2,1
	nr	%r5,%r2
	srak	%r4,%r3,1
	ar	%r1,%r5
	srag	%r11,%r3,1
	cgije	%r11,0,.L3018
	nilf	%r4,1
	sllk	%r11,%r2,2
	lcr	%r4,%r4
	srag	%r5,%r3,2
	nr	%r4,%r12
	srak	%r12,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r12,%r2,3
	nr	%r4,%r11
	srak	%r11,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r11,%r2,4
	nr	%r4,%r12
	srak	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r12,%r2,5
	nr	%r4,%r11
	srak	%r11,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r11,%r2,6
	nr	%r4,%r12
	srak	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r12,%r2,7
	nr	%r4,%r11
	srak	%r11,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r11,%r2,8
	nr	%r4,%r12
	srak	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r12,%r2,9
	nr	%r4,%r11
	srak	%r11,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r11,%r2,10
	nr	%r4,%r12
	srak	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r12,%r2,11
	nr	%r4,%r11
	srak	%r11,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r11,%r2,12
	nr	%r4,%r12
	srak	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r12,%r2,13
	nr	%r4,%r11
	srak	%r11,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r11,%r2,14
	nr	%r4,%r12
	srak	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r12,%r2,15
	nr	%r4,%r11
	srak	%r11,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r11,%r2,16
	nr	%r4,%r12
	srak	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r12,%r2,17
	nr	%r4,%r11
	srak	%r11,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r11,%r2,18
	nr	%r4,%r12
	srak	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r12,%r2,19
	nr	%r4,%r11
	srak	%r11,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r11,%r2,20
	nr	%r4,%r12
	srak	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r12,%r2,21
	nr	%r4,%r11
	srak	%r11,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r11,%r2,22
	nr	%r4,%r12
	srak	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r12,%r2,23
	nr	%r4,%r11
	srak	%r11,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r11,%r2,24
	nr	%r4,%r12
	srak	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r12,%r2,25
	nr	%r4,%r11
	srak	%r11,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r11,%r2,26
	nr	%r4,%r12
	srak	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L3018
	risbg	%r4,%r12,63,128+63,0
	lcr	%r4,%r4
	nr	%r4,%r11
	risbgn	%r11,%r3,64-1,128+63,32+4+1
	lcr	%r5,%r11
	ar	%r4,%r1
	srak	%r11,%r3,28
	sllk	%r1,%r2,28
	sllk	%r12,%r2,27
	nrk	%r2,%r5,%r12
	lcr	%r5,%r11
	ar	%r2,%r4
	nr	%r1,%r5
	ar	%r1,%r2
	srag	%r3,%r3,27
	ltgr	%r3,%r3
	locre	%r1,%r4
.L3018:
	cije	%r0,0,.L3015
	lcr	%r1,%r1
.L3015:
	lgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3111:
	risbg	%r1,%r3,63,128+63,0
	sllk	%r4,%r2,1
	lcr	%r3,%r3
	lcr	%r1,%r1
	srak	%r5,%r3,1
	nr	%r1,%r2
	cije	%r5,0,.L3108
	risbg	%r0,%r5,63,128+63,0
	sll	%r2,2
	lcr	%r5,%r0
	lgfr	%r2,%r2
	nr	%r5,%r4
	lhi	%r0,1
	srak	%r4,%r3,2
	ar	%r1,%r5
	lgfr	%r3,%r4
	cijlh	%r4,0,.L3017
.L3108:
	lcr	%r1,%r1
	j	.L3109
.L3019:
	lhi	%r1,0
.L3109:
	lgfr	%r2,%r1
	br	%r14
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cgijl	%r2,0,.L3233
	lhi	%r1,1
	lhi	%r12,0
.L3114:
	cgijhe	%r3,0,.L3115
	lcgr	%r3,%r3
	lr	%r12,%r1
.L3115:
	lr	%r0,%r2
	lr	%r4,%r3
	clrjle	%r2,%r3,.L3234
	lhi	%r5,1
	cijl	%r3,0,.L3228
	sllk	%r1,%r3,1
	lhi	%r3,2
	clrjle	%r2,%r1,.L3118
	lhi	%r5,2
	lr	%r4,%r1
	lhi	%r2,11
	cijl	%r1,0,.L3228
.L3120:
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3118
	brct	%r2,.L3196
.L3127:
	lghi	%r4,0
	lcgr	%r2,%r4
	ltr	%r12,%r12
	lgdr	%r11,%f2
	.cfi_remember_state
	.cfi_restore 11
	locgre	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L3196:
	.cfi_restore_state
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3228
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3118
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3228
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3118
	lr	%r5,%r3
	lr	%r4,%r1
	cijhe	%r1,0,.L3120
.L3228:
	srk	%r10,%r0,%r4
	clr	%r0,%r4
	lr	%r2,%r5
	locrhe	%r0,%r10
	lochinhe	%r2,0
	srlk	%r11,%r5,1
	srlk	%r10,%r4,1
	cijlh	%r11,0,.L3123
.L3117:
	llgfr	%r4,%r2
	lcgr	%r2,%r4
	ltr	%r12,%r12
	lgdr	%r11,%f2
	.cfi_remember_state
	.cfi_restore 11
	locgre	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L3118:
	.cfi_restore_state
	cije	%r3,0,.L3127
	srk	%r11,%r0,%r1
	clr	%r0,%r1
	lr	%r2,%r3
	lochinhe	%r2,0
	locrhe	%r0,%r11
	llgtr	%r10,%r4
	llgtr	%r11,%r5
	lr	%r4,%r1
	lr	%r5,%r3
.L3123:
	srk	%r1,%r0,%r10
	clr	%r0,%r10
	lochinhe	%r11,0
	locrnhe	%r1,%r0
	srlk	%r10,%r4,2
	or	%r2,%r11
	srlk	%r0,%r5,2
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,3
	or	%r2,%r0
	srlk	%r0,%r5,3
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,4
	or	%r2,%r0
	srlk	%r0,%r4,4
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,5
	or	%r2,%r10
	srlk	%r10,%r5,5
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,6
	or	%r2,%r10
	srlk	%r10,%r4,6
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,7
	or	%r2,%r0
	srlk	%r0,%r5,7
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,8
	or	%r2,%r0
	srlk	%r0,%r4,8
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,9
	or	%r2,%r10
	srlk	%r10,%r5,9
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,10
	or	%r2,%r10
	srlk	%r10,%r4,10
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,11
	or	%r2,%r0
	srlk	%r0,%r5,11
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,12
	or	%r2,%r0
	srlk	%r0,%r4,12
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,13
	or	%r2,%r10
	srlk	%r10,%r5,13
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,14
	or	%r2,%r10
	srlk	%r10,%r4,14
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,15
	or	%r2,%r0
	srlk	%r0,%r5,15
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,16
	or	%r2,%r0
	srlk	%r0,%r4,16
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,17
	or	%r2,%r10
	srlk	%r10,%r5,17
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,18
	or	%r2,%r10
	srlk	%r10,%r4,18
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,19
	or	%r2,%r0
	srlk	%r0,%r5,19
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,20
	or	%r2,%r0
	srlk	%r0,%r4,20
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,21
	or	%r2,%r10
	srlk	%r10,%r5,21
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,22
	or	%r2,%r10
	srlk	%r10,%r4,22
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,23
	or	%r2,%r0
	srlk	%r0,%r5,23
	cije	%r0,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,24
	or	%r2,%r0
	srlk	%r0,%r4,24
	cije	%r10,0,.L3117
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,25
	or	%r2,%r10
	srlk	%r10,%r5,25
	cije	%r10,0,.L3117
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,26
	or	%r2,%r10
	srlk	%r10,%r4,26
	cije	%r0,0,.L3117
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,27
	or	%r2,%r0
	srlk	%r1,%r5,27
	cije	%r1,0,.L3117
	srk	%r0,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r1,0
	locrnhe	%r0,%r3
	srlk	%r10,%r5,28
	or	%r2,%r1
	srlk	%r3,%r4,28
	cije	%r10,0,.L3117
	srk	%r1,%r0,%r3
	clr	%r0,%r3
	lochinhe	%r10,0
	locrnhe	%r1,%r0
	srlk	%r11,%r4,29
	or	%r2,%r10
	srlk	%r0,%r5,29
	cije	%r0,0,.L3117
	srk	%r10,%r1,%r11
	clr	%r1,%r11
	lochinhe	%r0,0
	locrnhe	%r10,%r1
	srlk	%r3,%r5,30
	or	%r2,%r0
	srlk	%r1,%r4,30
	cije	%r3,0,.L3117
	srk	%r0,%r10,%r1
	clr	%r10,%r1
	lochinhe	%r3,0
	locrnhe	%r0,%r10
	srl	%r4,31
	or	%r2,%r3
	cijhe	%r5,0,.L3117
	slr	%r0,%r4
	lhi	%r5,0
	alcr	%r5,%r5
	or	%r2,%r5
	j	.L3117
.L3233:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L3114
.L3234:
	xr	%r2,%r3
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	j	.L3117
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
	cgijl	%r2,0,.L3361
	lpgr	%r1,%r3
	lhi	%r0,0
	lr	%r3,%r2
	lr	%r4,%r1
	clrjle	%r2,%r1,.L3362
.L3238:
	lhi	%r2,1
	cijl	%r4,0,.L3355
	sllk	%r1,%r4,1
	lhi	%r2,2
	clrjhe	%r1,%r3,.L3242
	lr	%r4,%r1
	lhi	%r5,11
	cijl	%r1,0,.L3355
.L3244:
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3242
	brct	%r5,.L3322
.L3359:
	llgfr	%r2,%r3
	cije	%r0,0,.L3358
	lcgr	%r2,%r2
.L3358:
	br	%r14
.L3322:
	lr	%r4,%r1
	cijl	%r1,0,.L3355
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3242
	lr	%r4,%r1
	cijl	%r1,0,.L3355
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3242
	lr	%r4,%r1
	cijhe	%r1,0,.L3244
.L3355:
	srk	%r1,%r3,%r4
	clr	%r4,%r3
	srlk	%r5,%r4,1
	locrle	%r3,%r1
	srlk	%r1,%r2,1
	cijlh	%r1,0,.L3247
	j	.L3359
.L3242:
	cije	%r2,0,.L3359
	srk	%r5,%r3,%r1
	clr	%r1,%r3
	locrle	%r3,%r5
	llgtr	%r5,%r4
	lr	%r4,%r1
.L3247:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srk	%r12,%r3,%r5
	clr	%r3,%r5
	srlk	%r1,%r4,2
	locrhe	%r3,%r12
	srlk	%r5,%r2,2
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,3
	locrhe	%r3,%r12
	srlk	%r1,%r4,3
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,4
	locrhe	%r3,%r12
	srlk	%r1,%r4,4
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,5
	locrhe	%r3,%r12
	srlk	%r1,%r4,5
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,6
	locrhe	%r3,%r12
	srlk	%r1,%r4,6
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,7
	locrhe	%r3,%r12
	srlk	%r1,%r4,7
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,8
	locrhe	%r3,%r12
	srlk	%r1,%r4,8
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,9
	locrhe	%r3,%r12
	srlk	%r1,%r4,9
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,10
	locrhe	%r3,%r12
	srlk	%r1,%r4,10
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,11
	locrhe	%r3,%r12
	srlk	%r1,%r4,11
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,12
	locrhe	%r3,%r12
	srlk	%r1,%r4,12
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,13
	locrhe	%r3,%r12
	srlk	%r1,%r4,13
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,14
	locrhe	%r3,%r12
	srlk	%r1,%r4,14
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,15
	locrhe	%r3,%r12
	srlk	%r1,%r4,15
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,16
	locrhe	%r3,%r12
	srlk	%r1,%r4,16
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,17
	locrhe	%r3,%r12
	srlk	%r1,%r4,17
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,18
	locrhe	%r3,%r12
	srlk	%r1,%r4,18
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,19
	locrhe	%r3,%r12
	srlk	%r1,%r4,19
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,20
	locrhe	%r3,%r12
	srlk	%r1,%r4,20
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,21
	locrhe	%r3,%r12
	srlk	%r1,%r4,21
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,22
	locrhe	%r3,%r12
	srlk	%r1,%r4,22
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,23
	locrhe	%r3,%r12
	srlk	%r1,%r4,23
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,24
	locrhe	%r3,%r12
	srlk	%r1,%r4,24
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,25
	locrhe	%r3,%r12
	srlk	%r1,%r4,25
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,26
	locrhe	%r3,%r12
	srlk	%r1,%r4,26
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,27
	locrhe	%r3,%r12
	srlk	%r1,%r4,27
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,28
	locrhe	%r3,%r12
	srlk	%r1,%r4,28
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,29
	locrhe	%r3,%r12
	srlk	%r1,%r4,29
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,30
	locrhe	%r3,%r12
	srlk	%r1,%r4,30
	cije	%r5,0,.L3243
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srl	%r4,31
	locrhe	%r3,%r12
	cijhe	%r2,0,.L3243
	srk	%r2,%r3,%r4
	clr	%r3,%r4
	locrhe	%r3,%r2
.L3243:
	llgfr	%r2,%r3
	cije	%r0,0,.L3236
	lcgr	%r2,%r2
.L3236:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3361:
	lpgr	%r5,%r3
	lcgr	%r2,%r2
	lr	%r4,%r5
	lr	%r3,%r2
	lhi	%r0,1
	clrjh	%r2,%r5,.L3238
	srk	%r0,%r2,%r5
	cr	%r2,%r5
	locre	%r2,%r0
	llgfr	%r2,%r2
	lcgr	%r2,%r2
	br	%r14
.L3362:
	srk	%r3,%r2,%r1
	cr	%r2,%r1
	locre	%r2,%r3
	llgfr	%r2,%r2
	br	%r14
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
	clrjhe	%r3,%r2,.L3453
	tmll	%r3,32768
	jne	.L3367
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r1,%r3,48,128+62,1
	clrjle	%r2,%r1,.L3374
	tmll	%r1,32768
	jne	.L3374
	risbgn	%r1,%r3,48,128+61,2
	clrjle	%r2,%r1,.L3376
	tmll	%r1,32768
	jne	.L3376
	risbgn	%r1,%r3,48,128+60,3
	clrjle	%r2,%r1,.L3378
	tmll	%r1,32768
	jne	.L3378
	risbgn	%r1,%r3,48,128+59,4
	clrjle	%r2,%r1,.L3380
	tmll	%r1,32768
	jne	.L3380
	risbgn	%r1,%r3,48,128+58,5
	clrjle	%r2,%r1,.L3382
	tmll	%r1,32768
	jne	.L3382
	risbgn	%r1,%r3,48,128+57,6
	clrjle	%r2,%r1,.L3384
	tmll	%r1,32768
	jne	.L3384
	risbgn	%r1,%r3,48,128+56,7
	clrjle	%r2,%r1,.L3386
	tmll	%r1,32768
	jne	.L3386
	risbgn	%r1,%r3,48,128+55,8
	clrjle	%r2,%r1,.L3388
	tmll	%r1,32768
	jne	.L3388
	risbgn	%r1,%r3,48,128+54,9
	clrjle	%r2,%r1,.L3390
	tmll	%r1,32768
	jne	.L3390
	risbgn	%r1,%r3,48,128+53,10
	clrjle	%r2,%r1,.L3392
	tmll	%r1,32768
	jne	.L3392
	risbgn	%r1,%r3,48,128+52,11
	clrjle	%r2,%r1,.L3394
	tmll	%r1,32768
	jne	.L3394
	risbgn	%r1,%r3,48,128+51,12
	clrjle	%r2,%r1,.L3396
	tmll	%r1,32768
	jne	.L3396
	risbgn	%r1,%r3,48,128+50,13
	clrjle	%r2,%r1,.L3398
	tmll	%r1,32768
	jne	.L3398
	risbgn	%r1,%r3,48,128+49,14
	clrjle	%r2,%r1,.L3400
	tmll	%r1,32768
	jne	.L3400
	risbgn	%r11,%r3,48,128+48,15
	clrjle	%r2,%r11,.L3401
	lhi	%r3,0
	cgijlh	%r11,0,.L3454
.L3370:
	ltgr	%r4,%r4
	locrne	%r3,%r2
	llghr	%r2,%r3
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3374:
	.cfi_restore_state
	lhi	%r0,2
.L3369:
	srk	%r12,%r2,%r1
	clr	%r2,%r1
	llghr	%r3,%r12
	locrnhe	%r3,%r2
	llghr	%r5,%r3
	srlg	%r12,%r1,1
	lr	%r11,%r0
	lochinhe	%r11,0
	srk	%r2,%r5,%r12
	clr	%r5,%r12
	risbgn	%r3,%r0,64-15,128+63,48+15
	llghr	%r12,%r2
	lochinhe	%r3,0
	locrnhe	%r12,%r5
	llghr	%r2,%r12
	or	%r3,%r11
	srlk	%r12,%r0,2
	srlg	%r11,%r1,2
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,3
	srlg	%r11,%r1,3
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,4
	srlg	%r11,%r1,4
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,5
	srlg	%r11,%r1,5
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,6
	srlg	%r11,%r1,6
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,7
	srlg	%r11,%r1,7
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,8
	srlg	%r11,%r1,8
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,9
	srlg	%r11,%r1,9
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,10
	srlg	%r11,%r1,10
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,11
	srlg	%r11,%r1,11
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,12
	srlg	%r11,%r1,12
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,13
	srlg	%r11,%r1,13
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	or	%r3,%r12
	llghr	%r2,%r2
	srlk	%r12,%r0,14
	srlg	%r11,%r1,14
	cije	%r12,0,.L3370
	srk	%r5,%r2,%r11
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r5,%r5
	ltr	%r11,%r11
	locrne	%r2,%r5
	lochie	%r12,0
	srlg	%r5,%r1,15
	llghr	%r2,%r2
	or	%r3,%r12
	lhi	%r1,16384
	crje	%r0,%r1,.L3370
	srk	%r0,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r11,0
	alcr	%r11,%r11
	llghr	%r12,%r0
	ltr	%r11,%r11
	locre	%r12,%r2
	or	%r3,%r11
	llghr	%r2,%r12
	ltgr	%r4,%r4
	locrne	%r3,%r2
	llghr	%r2,%r3
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3376:
	.cfi_restore_state
	lhi	%r0,4
	j	.L3369
.L3378:
	lhi	%r0,8
	j	.L3369
.L3380:
	lhi	%r0,16
	j	.L3369
.L3390:
	lhi	%r0,512
	j	.L3369
.L3382:
	lhi	%r0,32
	j	.L3369
.L3384:
	lhi	%r0,64
	j	.L3369
.L3386:
	lhi	%r0,128
	j	.L3369
.L3388:
	lhi	%r0,256
	j	.L3369
.L3453:
	.cfi_restore 11
	.cfi_restore 12
	xgrk	%r5,%r3,%r2
	srk	%r1,%r2,%r3
	aghi	%r5,-1
	llghr	%r1,%r1
	ltgr	%r5,%r5
	locrnl	%r1,%r2
	risbgn	%r3,%r5,64-1,128+63,0+1
	llghr	%r5,%r1
.L3450:
	ltgr	%r4,%r4
	locrne	%r3,%r5
	llghr	%r2,%r3
	br	%r14
.L3392:
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r0,1024
	j	.L3369
.L3394:
	lhi	%r0,2048
	j	.L3369
.L3396:
	lhi	%r0,4096
	j	.L3369
.L3398:
	lhi	%r0,8192
	j	.L3369
.L3400:
	lhi	%r0,16384
	j	.L3369
.L3454:
	llill	%r0,32768
	llill	%r1,32768
	j	.L3369
.L3401:
	llill	%r1,32768
	llill	%r0,32768
	j	.L3369
.L3367:
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r3,1
	llghr	%r5,%r2
	j	.L3450
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
	clgrjhe	%r3,%r2,.L3489
	lghi	%r1,1
	lhi	%r0,16
.L3457:
	risbg	%r5,%r3,32,128+32,0
	jne	.L3462
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3459
	risbg	%r5,%r3,32,128+32,0
	jne	.L3462
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3459
	risbg	%r5,%r3,32,128+32,0
	jne	.L3462
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3459
	risbg	%r5,%r3,32,128+32,0
	jne	.L3462
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3459
	brct	%r0,.L3457
.L3487:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L3459:
	cgije	%r1,0,.L3487
.L3462:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r5,0
.L3463:
	sgrk	%r12,%r2,%r3
	slgrk	%r0,%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	srlg	%r3,%r3,1
	ltr	%r0,%r0
	lgr	%r0,%r1
	locghie	%r0,0
	locgrne	%r2,%r12
	srlg	%r1,%r1,1
	ogr	%r5,%r0
	cgijlh	%r1,0,.L3463
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	locgre	%r2,%r5
	br	%r14
.L3489:
	sgrk	%r1,%r2,%r3
	slgrk	%r3,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llgcr	%r5,%r5
	locgrne	%r2,%r1
	j	.L3487
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
	je	.L3492
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L3493:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L3491:
	br	%r14
.L3492:
	cgije	%r3,0,.L3491
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L3493
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
	je	.L3498
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3499:
	lgr	%r0,%r4
.L3500:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L3498:
	cgije	%r4,0,.L3500
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L3499
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
	je	.L3506
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L3507:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L3505:
	br	%r14
.L3506:
	cgije	%r3,0,.L3505
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L3507
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
	je	.L3512
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L3513:
	lgr	%r0,%r4
.L3514:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3512:
	cgije	%r4,0,.L3514
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3513
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
	lochine	%r2,0
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
	jl	.L3529
	jh	.L3530
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3529:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3530:
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
	jl	.L3536
	jh	.L3537
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3536:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3537:
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
	jl	.L3542
	jh	.L3543
	clgr	%r4,%r1
	lhi	%r0,1
	lochih	%r0,2
	lochinhe	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3542:
	lhi	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3543:
	lhi	%r0,2
	risbg	%r2,%r0,62,128+63,0
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
	jne	.L3552
	lcgr	%r3,%r1
	ngr	%r3,%r1
	lghi	%r2,63
	flogr	%r4,%r3
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lochie	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L3552:
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
	larl	%r5,.L3562
	tmll	%r3,32
	je	.L3557
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r4,0
	srlk	%r0,%r2,4064(%r3)
.L3558:
	ld	%v0,.L3563-.L3562(%r5)
	vlvgf	%v0,%r4,0
	vlvgf	%v0,%r0,1
	vlgvg	%r2,%v0,0
.L3556:
	br	%r14
.L3557:
	cgije	%r3,0,.L3556
	risbgn	%r4,%r2,64-32,128+63,0+32
	lhi	%r1,32
	srl	%r2,0(%r3)
	sr	%r1,%r3
	sllk	%r0,%r4,0(%r1)
	srl	%r4,0(%r3)
	or	%r0,%r2
	j	.L3558
	.section	.rodata
	.align	8
.L3562:
.L3563:
	.long	0
	.long	0
	.align	2
.text
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
	je	.L3565
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3566:
	lgr	%r0,%r4
.L3567:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3565:
	cgije	%r4,0,.L3567
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3566
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
	msrkc	%r0,%r4,%r1
	srl	%r2,16
	srl	%r3,16
	msrkc	%r5,%r2,%r3
	msr	%r4,%r3
	msr	%r1,%r2
	srlk	%r3,%r0,16
	lghi	%r2,0
	llhr	%r0,%r0
	ar	%r1,%r3
	llhr	%r3,%r1
	srl	%r1,16
	ar	%r3,%r4
	ar	%r1,%r5
	srlk	%r4,%r3,16
	sll	%r3,16
	ar	%r1,%r4
	ar	%r0,%r3
	lr	%r2,%r0
	risbgn	%r2,%r1,0,0+32-1,64-0-32
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
	msrkc	%r5,%r4,%r1
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
	msgrkc	%r0,%r1,%r5
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlg	%r3,%r3,32
	srlg	%r12,%r4,32
	msgrkc	%r4,%r5,%r3
	msgr	%r1,%r12
	msgr	%r3,%r12
	srlg	%r12,%r0,32
	agr	%r4,%r12
	algfr	%r1,%r4
	srlg	%r4,%r4,32
	agr	%r4,%r3
	srlg	%r3,%r1,32
	agrk	%r12,%r4,%r3
	sllg	%r1,%r1,32
	stg	%r12,0(%r2)
	algfr	%r1,%r0
	lgdr	%r12,%f0
	.cfi_restore 12
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lg	%r0,8(%r3)
	lg	%r12,8(%r4)
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlg	%r9,%r12,32
	lgr	%r10,%r3
	risbg	%r5,%r0,32,128+63,0
	srlg	%r11,%r0,32
	risbg	%r1,%r12,32,128+63,0
	msgrkc	%r3,%r5,%r9
	msg	%r0,0(%r4)
	msgrkc	%r4,%r5,%r1
	msgr	%r1,%r11
	msgr	%r11,%r9
	msg	%r12,0(%r10)
	srlg	%r10,%r4,32
	agr	%r1,%r10
	algfr	%r3,%r1
	srlg	%r1,%r1,32
	sllg	%r9,%r3,32
	agr	%r1,%r11
	algfr	%r9,%r4
	srlg	%r11,%r3,32
	stg	%r9,8(%r2)
	agr	%r1,%r11
	lgdr	%r10,%f4
	.cfi_restore 10
	agr	%r0,%r1
	lgdr	%r11,%f2
	.cfi_restore 11
	agr	%r0,%r12
	lgdr	%r9,%f6
	.cfi_restore 9
	lgdr	%r12,%f0
	.cfi_restore 12
	stg	%r0,0(%r2)
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
	vl	%v2,0(%r3),3
	vzero	%v0
	vsq	%v4,%v0,%v2
	vst	%v4,0(%r2),3
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
	larl	%r5,.L3595
	srlg	%r1,%r2,1
	ng	%r1,.L3596-.L3595(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L3597-.L3595(%r5)
	ng	%r0,.L3597-.L3595(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3598-.L3595(%r5)
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
.L3595:
.L3598:
	.quad	1085102592571150095
.L3597:
	.quad	3689348814741910323
.L3596:
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
	ldgr	%f1,%r13
	.cfi_register 13, 20
	ldgr	%f6,%r15
	.cfi_register 15, 19
	larl	%r13,.L3603
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	vl	%v0,.L3604-.L3603(%r13),3
	srlg	%r2,%r4,1
	srlg	%r3,%r5,1
	rosbg	%r3,%r4,0,0,63
	vlvgp	%v4,%r2,%r3
	vlvgp	%v5,%r4,%r5
	vn	%v3,%v4,%v0
	vsq	%v7,%v5,%v3
	vst	%v7,160(%r15),3
	vl	%v2,.L3605-.L3603(%r13),3
	vl	%v17,.L3606-.L3603(%r13),3
	lgdr	%r13,%f1
	.cfi_restore 13
	lg	%r0,160(%r15)
	lg	%r1,168(%r15)
	srlg	%r2,%r0,2
	srlg	%r3,%r1,2
	rosbg	%r3,%r0,0,1,62
	vlvgp	%v18,%r2,%r3
	vn	%v16,%v7,%v2
	vn	%v20,%v18,%v2
	vaq	%v22,%v20,%v16
	vst	%v22,160(%r15),3
	lg	%r2,160(%r15)
	lg	%r4,168(%r15)
	lg	%r1,160(%r15)
	srlg	%r3,%r2,4
	stg	%r3,176(%r15)
	srlg	%r5,%r4,4
	rosbg	%r5,%r1,0,3,60
	stg	%r5,184(%r15)
	vl	%v21,160(%r15),3
	vl	%v19,176(%r15),3
	vaq	%v23,%v19,%v21
	vn	%v24,%v23,%v17
	vst	%v24,160(%r15),3
	lg	%r0,160(%r15)
	ag	%r0,168(%r15)
	srlg	%r2,%r0,32
	ar	%r2,%r0
	lgdr	%r15,%f6
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	srlk	%r3,%r2,16
	ar	%r3,%r2
	srlk	%r4,%r3,8
	ar	%r4,%r3
	llgcr	%r2,%r4
	br	%r14
	.section	.rodata
	.align	8
.L3603:
.L3606:
	.quad	1085102592571150095
	.quad	1085102592571150095
.L3605:
	.quad	3689348814741910323
	.quad	3689348814741910323
.L3604:
	.quad	6148914691236517205
	.quad	6148914691236517205
	.align	2
.text
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
	larl	%r5,.L3617
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L3618-.L3617(%r5)
	tmll	%r2,1
	je	.L3608
.L3610:
	mdbr	%f0,%f2
.L3608:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3609
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L3610
.L3615:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3610
	j	.L3615
.L3609:
	cijl	%r2,0,.L3616
	br	%r14
.L3616:
	ld	%f4,.L3618-.L3617(%r5)
	wfddb	%v0,%v4,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3617:
.L3618:
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
	larl	%r5,.L3629
	ldr	%f2,%f0
	lgr	%r1,%r2
	lde	%f0,.L3630-.L3629(%r5)
	tmll	%r2,1
	je	.L3620
.L3622:
	meebr	%f0,%f2
.L3620:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3621
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L3622
.L3627:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3622
	j	.L3627
.L3621:
	cijl	%r2,0,.L3628
	br	%r14
.L3628:
	lde	%f4,.L3630-.L3629(%r5)
	wfdsb	%v0,%v4,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3629:
.L3630:
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
	jl	.L3633
	jh	.L3634
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3633:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3634:
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
	jl	.L3640
	jh	.L3641
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3640:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3641:
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
	jl	.L3646
	jh	.L3647
	clgr	%r4,%r1
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3646:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3647:
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
