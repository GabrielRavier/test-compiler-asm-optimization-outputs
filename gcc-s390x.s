	.file	"mini-libc.c"
	.machinemode zarch
	.machine "arch14"
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
	cgijle	%r4,1,.L424
	ldgr	%f5,%r10
	.cfi_register 10, 22
	ldgr	%f3,%r11
	.cfi_register 11, 21
	ldgr	%f1,%r12
	.cfi_register 12, 20
	srlg	%r10,%r4,1
	aghik	%r1,%r4,-2
	clgijle	%r1,29,.L401
	risbg	%r12,%r4,0,128+59,0
	aghik	%r5,%r12,-16
	srlg	%r0,%r4,4
	srlg	%r5,%r5,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L410
	cgije	%r11,1,.L414
	cgije	%r11,2,.L415
	vlbrh	%v0,0(%r2)
	lghi	%r1,16
	vst	%v0,0(%r3)
.L415:
	vlbrh	%v2,0(%r1,%r2)
	vst	%v2,0(%r1,%r3)
	aghi	%r1,16
.L414:
	vlbrh	%v4,0(%r1,%r2)
	vst	%v4,0(%r1,%r3)
	aghi	%r1,16
	cgrje	%r1,%r12,.L420
.L410:
	srlg	%r5,%r5,2
.L402:
	vlbrh	%v6,0(%r1,%r2)
	vlbrh	%v7,16(%r1,%r2)
	vlbrh	%v16,32(%r1,%r2)
	vlbrh	%v18,48(%r1,%r2)
	vst	%v6,0(%r1,%r3)
	vst	%v7,16(%r1,%r3)
	vst	%v16,32(%r1,%r3)
	vst	%v18,48(%r1,%r3)
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
	lgdr	%r12,%f1
	.cfi_restore 12
	lgdr	%r11,%f3
	.cfi_restore 11
	lgdr	%r10,%f5
	.cfi_restore 10
	br	%r14
.L424:
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
	cije	%r2,32,.L450
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L450:
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
	clijle	%r2,31,.L458
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L459
.L458:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L459:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L458
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
	clijle	%r2,254,.L470
	lhi	%r1,8231
	clrjle	%r2,%r1,.L468
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L468
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L468
	risbg	%r5,%r2,48,128+62,0
	xilf	%r5,65534
	lcr	%r1,%r5
	slfi	%r2,65532
	srl	%r1,31
	clfi	%r2,1048580
	lochinl	%r1,0
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L468:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L470:
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
	clijle	%r1,9,.L474
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L474:
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
	jo	.L482
	kdbr	%f0,%f2
	jnh	.L485
	sdbr	%f0,%f2
	br	%r14
.L485:
	lzdr	%f0
	br	%r14
.L482:
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
	jo	.L491
	kebr	%f0,%f2
	jnh	.L494
	sebr	%f0,%f2
	br	%r14
.L494:
	lzer	%f0
	br	%r14
.L491:
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
	jo	.L504
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L498
	cijlh	%r1,0,.L504
	br	%r14
.L498:
	kdbr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L504
	ldr	%f2,%f0
.L504:
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
	jo	.L514
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L508
	cijlh	%r1,0,.L514
	br	%r14
.L508:
	kebr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L514
	ldr	%f2,%f0
.L514:
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
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	vst	%v0,160(%r15),3
	vl	%v2,0(%r4),3
	vl	%v3,160(%r15),3
	vst	%v2,176(%r15),3
	wfcxb	%v3,%v3
	vl	%v5,176(%r15),3
	jo	.L523
	wfcxb	%v5,%v5
	jo	.L517
	vl	%v7,160(%r15),3
	lhi	%r1,0
	lhi	%r3,0
	wftcixb	%v0,%v7,1365
	vl	%v0,176(%r15),3
	lochie	%r1,1
	wftcixb	%v0,%v0,1365
	lochie	%r3,1
	crjlh	%r1,%r3,.L528
	vl	%v3,160(%r15),3
	vl	%v2,176(%r15),3
	lhi	%r0,0
	wfkxb	%v3,%v2
	lochil	%r0,1
	cije	%r0,0,.L520
	lg	%r4,176(%r15)
	lg	%r5,184(%r15)
.L521:
	stg	%r4,160(%r15)
	stg	%r5,168(%r15)
.L517:
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L528:
	.cfi_restore_state
	cije	%r1,0,.L517
	vl	%v5,176(%r15),3
	vst	%v5,160(%r15),3
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L520:
	.cfi_restore_state
	lg	%r4,160(%r15)
	lg	%r5,168(%r15)
	j	.L521
.L523:
	vst	%v5,160(%r15),3
	j	.L517
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
	jo	.L536
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L532
	cijlh	%r1,0,.L530
.L536:
	ldr	%f0,%f2
.L530:
	br	%r14
.L532:
	kdbr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L530
	j	.L536
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
	jo	.L548
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L544
	cijlh	%r1,0,.L542
.L548:
	ldr	%f0,%f2
.L542:
	br	%r14
.L544:
	kebr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L542
	j	.L548
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
	ldgr	%f4,%r15
	.cfi_register 15, 18
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	vst	%v0,176(%r15),3
	vl	%v2,0(%r4),3
	vl	%v3,176(%r15),3
	vst	%v2,160(%r15),3
	wfcxb	%v3,%v3
	jo	.L555
	vl	%v5,160(%r15),3
	vl	%v7,176(%r15),3
	wfcxb	%v5,%v5
	jo	.L561
	wftcixb	%v0,%v7,1365
	vl	%v0,160(%r15),3
	lhi	%r1,0
	lochie	%r1,1
	wftcixb	%v0,%v0,1365
	lhi	%r3,0
	lochie	%r3,1
	crjlh	%r1,%r3,.L566
	vl	%v3,176(%r15),3
	vl	%v2,160(%r15),3
	lhi	%r0,0
	wfkxb	%v3,%v2
	lochil	%r0,1
	cije	%r0,0,.L558
	lg	%r4,176(%r15)
	lg	%r5,184(%r15)
.L559:
	stg	%r4,160(%r15)
	stg	%r5,168(%r15)
.L555:
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L566:
	.cfi_restore_state
	cije	%r1,0,.L555
	vl	%v5,176(%r15),3
	vst	%v5,160(%r15),3
	vl	%v7,160(%r15),3
	vst	%v7,0(%r2),3
	lgdr	%r15,%f4
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L558:
	.cfi_restore_state
	lg	%r4,160(%r15)
	lg	%r5,168(%r15)
	j	.L559
.L561:
	vst	%v7,160(%r15),3
	j	.L555
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
	cije	%r2,0,.L571
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L570:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L570
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L571:
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
	cgije	%r3,0,.L585
	vleg	%v0,0(%r3),0
	vlvgg	%v0,%r3,1
	vst	%v0,0(%r2),3
	stg	%r2,0(%r3)
	ltg	%r1,0(%r2)
	ber	%r14
	stg	%r2,8(%r1)
	br	%r14
.L585:
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
	je	.L588
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L588:
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
	je	.L598
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L618
.L608:
	srlg	%r10,%r10,1
.L600:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L597
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L597
	agrk	%r12,%r11,%r9
	brctg	%r10,.L600
.L598:
	msgrkc	%r12,%r9,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L597
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L597:
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
.L618:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L597
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L608
	j	.L598
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
	je	.L621
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L637
.L628:
	srlg	%r7,%r11,1
.L623:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L620
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L620
	agr	%r12,%r10
	brctg	%r7,.L623
.L621:
	lghi	%r8,0
.L620:
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
.L637:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L620
	agr	%r12,%r10
	cgijlh	%r7,1,.L628
	j	.L621
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
.L648:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L642
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L642
	cije	%r3,43,.L643
	cijlh	%r3,45,.L664
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L653
	lhi	%r12,1
.L646:
	lhi	%r4,0
.L650:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L650
	srk	%r2,%r5,%r1
	ltr	%r12,%r12
	locrne	%r2,%r4
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L642:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L648
.L664:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L646
.L653:
	lhi	%r2,0
.L665:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L643:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L646
	lhi	%r2,0
	j	.L665
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
.L674:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L668
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L668
	cije	%r4,43,.L669
	cije	%r4,45,.L670
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L679
	lgr	%r3,%r2
	lhi	%r11,0
.L672:
	lghi	%r5,0
.L676:
	ahik	%r0,%r4,-48
	llc	%r4,1(%r3)
	sllg	%r1,%r5,2
	la	%r3,1(%r3)
	agr	%r1,%r5
	lgfr	%r12,%r0
	sllg	%r1,%r1,1
	ahik	%r2,%r4,-48
	lgr	%r5,%r1
	sgfr	%r5,%r0
	clijle	%r2,9,.L676
	sgrk	%r2,%r12,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L668:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L674
.L670:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L679
	lhi	%r11,1
	j	.L672
.L669:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L672
.L679:
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
.L696:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L692
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L692
	cije	%r4,43,.L693
	cije	%r4,45,.L694
	ahik	%r5,%r4,-48
	lgr	%r3,%r2
	clijh	%r5,9,.L703
	lhi	%r11,0
.L697:
	lghi	%r5,0
.L700:
	ahik	%r0,%r4,-48
	llc	%r4,1(%r3)
	sllg	%r1,%r5,2
	la	%r3,1(%r3)
	agr	%r1,%r5
	lgfr	%r12,%r0
	sllg	%r1,%r1,1
	ahik	%r2,%r4,-48
	lgr	%r5,%r1
	sgfr	%r5,%r0
	clijle	%r2,9,.L700
	sgrk	%r2,%r12,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L692:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L696
.L694:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L697
.L703:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L693:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L703
	lhi	%r11,0
	j	.L697
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
	cgije	%r4,0,.L717
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lgr	%r12,%r4
	j	.L720
.L727:
	je	.L716
	aghi	%r12,-1
	agrk	%r9,%r11,%r8
	sgr	%r12,%r10
	cgije	%r12,0,.L717
.L720:
	srlg	%r10,%r12,1
	msgrkc	%r11,%r10,%r8
	lgr	%r2,%r7
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L727
	lgr	%r12,%r10
	cgijlh	%r12,0,.L720
.L717:
	lghi	%r11,0
.L716:
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
	cije	%r4,0,.L734
.L739:
	srak	%r10,%r11,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	lg	%r4,240(%r15)
	lgr	%r2,%r7
	agr	%r12,%r9
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L729
	jle	.L732
	agrk	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L739
.L734:
	lghi	%r12,0
.L729:
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
.L732:
	.cfi_restore_state
	cije	%r10,0,.L734
	lr	%r11,%r10
	j	.L739
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
	larl	%r5,.L745
	lgr	%r1,%r3
	dsgr	%r0,%r4
	ld	%v0,.L746-.L745(%r5)
	vlvgf	%v0,%r1,0
	vlvgf	%v0,%r0,1
	std	%v0,0(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L745:
.L746:
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
	j	.L768
.L770:
	crje	%r1,%r3,.L769
	la	%r2,4(%r2)
.L768:
	lt	%r1,0(%r2)
	jne	.L770
	lghi	%r2,0
	br	%r14
.L769:
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
	crje	%r4,%r5,.L773
	j	.L774
.L775:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L774
.L773:
	cijlh	%r4,0,.L775
.L774:
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
.L784:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L784
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
	je	.L791
	vlbb	%v0,4(%r2),6
	la	%r1,4(%r2)
	lcbb	%r3,0(%r1),6
	vzero	%v2
	vfeefs	%v1,%v0,%v2
	vlgvf	%r4,%v1,1
	clrjl	%r4,%r3,.L790
	la	%r1,20(%r2)
	nill	%r1,65520
	vl	%v4,0(%r1),4
	vfeefs	%v1,%v4,%v2
	jl	.L790
.L789:
	vl	%v6,16(%r1),4
	la	%r1,16(%r1)
	vfeefs	%v1,%v6,%v2
	jnl	.L789
.L790:
	vlgvg	%r0,%v1,0
	agr	%r1,%r0
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L791:
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
	cgije	%r4,0,.L801
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L819
.L804:
	srlg	%r0,%r1,1
.L795:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L797
	la	%r5,4(%r2)
	cije	%r1,0,.L797
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L797
	cije	%r4,0,.L797
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L795
.L801:
	lhi	%r3,0
.L820:
	lgfr	%r2,%r3
	br	%r14
.L797:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r3,0
	lochih	%r3,1
	lochil	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L819:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L797
	cije	%r4,0,.L797
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L804
	lhi	%r3,0
	j	.L820
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
	cgije	%r4,0,.L826
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L833
	cgije	%r5,1,.L844
	cgije	%r5,2,.L845
	c	%r3,0(%r2)
	ber	%r14
	lgr	%r4,%r0
	la	%r2,4(%r2)
.L845:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L844:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgije	%r4,1,.L826
.L833:
	srlg	%r4,%r1,2
.L823:
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
	brctg	%r4,.L823
.L826:
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
	cgije	%r4,0,.L865
	aghik	%r0,%r4,-1
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L872
	cgije	%r1,1,.L883
	cgije	%r1,2,.L884
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L891
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L884:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L891
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L883:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L891
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgije	%r4,1,.L865
.L872:
	srlg	%r0,%r5,2
.L859:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L891
	l	%r1,4(%r2)
	la	%r4,4(%r3)
	lgr	%r3,%r4
	c	%r1,0(%r4)
	jne	.L891
	l	%r1,8(%r2)
	la	%r3,4(%r4)
	c	%r1,0(%r3)
	jne	.L891
	l	%r1,12(%r2)
	la	%r3,8(%r4)
	c	%r1,8(%r4)
	jne	.L891
	la	%r2,16(%r2)
	la	%r3,12(%r4)
	brctg	%r0,.L859
.L865:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L891:
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
	cgije	%r4,0,.L898
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L898:
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
	cgrje	%r2,%r3,.L1033
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
	clgrjhe	%r1,%r5,.L1036
	cgije	%r4,0,.L930
	clgijle	%r12,7,.L909
	sgrk	%r1,%r2,%r3
	aghi	%r1,12
	clgijle	%r1,8,.L909
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
	je	.L956
	cgije	%r10,1,.L978
	cgije	%r10,2,.L979
	vl	%v17,0(%r11)
	lghi	%r1,-16
	vst	%v17,0(%r5)
.L979:
	vl	%v19,0(%r1,%r11)
	vst	%v19,0(%r1,%r5)
	aghi	%r1,-16
.L978:
	vl	%v21,0(%r1,%r11)
	vst	%v21,0(%r1,%r5)
	aghi	%r1,-16
	cgrje	%r1,%r8,.L1010
.L956:
	srlg	%r0,%r0,2
	cghi	%r0,2
	jle	.L1029
	aghi	%r0,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r5)
.L910:
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
	brctg	%r0,.L910
	aghik	%r10,%r1,-48
	aghik	%r9,%r1,-32
	aghik	%r8,%r1,-16
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r5)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r5)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r5)
.L1010:
	risbg	%r5,%r4,0,128+61,0
	sgr	%r12,%r5
	tmll	%r4,3
	je	.L930
	sllg	%r4,%r12,2
	l	%r11,0(%r4,%r3)
	st	%r11,0(%r4,%r2)
	cgije	%r12,0,.L930
	aghi	%r12,-1
	sllg	%r9,%r12,2
	l	%r1,0(%r9,%r3)
	st	%r1,0(%r9,%r2)
	cgije	%r12,0,.L930
	ly	%r3,-4(%r9,%r3)
	sty	%r3,-4(%r9,%r2)
.L930:
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
.L1036:
	.cfi_restore_state
	cgije	%r4,0,.L930
	clgijle	%r12,6,.L922
	la	%r0,4(%r3)
	sgrk	%r5,%r2,%r0
	clgijle	%r5,8,.L922
	srlg	%r11,%r4,2
	lghi	%r1,0
	lgr	%r8,%r11
	lghi	%r9,0
	risbg	%r10,%r11,62,128+63,0
	je	.L974
	cgije	%r10,1,.L982
	cgije	%r10,2,.L983
	vl	%v0,0(%r3)
	lghi	%r9,1
	lghi	%r1,16
	vst	%v0,0(%r2)
.L983:
	vl	%v5,0(%r1,%r3)
	aghi	%r9,1
	vst	%v5,0(%r1,%r2)
	aghi	%r1,16
.L982:
	vl	%v7,0(%r1,%r3)
	aghi	%r9,1
	vst	%v7,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r11,%r9,.L1011
.L974:
	srlg	%r5,%r8,2
	cghi	%r5,2
	jle	.L1031
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L916:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L916
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L1011:
	risbg	%r1,%r4,0,128+61,0
	sllg	%r5,%r1,2
	sgr	%r12,%r1
	agr	%r3,%r5
	agr	%r5,%r2
	tmll	%r4,3
	je	.L930
	l	%r4,0(%r3)
	st	%r4,0(%r5)
	cgije	%r12,0,.L930
	l	%r0,4(%r3)
	st	%r0,4(%r5)
	cgije	%r12,1,.L930
	l	%r3,8(%r3)
	st	%r3,8(%r5)
	j	.L930
.L1029:
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
	brctg	%r0,.L1029
	j	.L1010
.L1031:
	vl	%v16,0(%r1,%r3)
	vst	%v16,0(%r1,%r2)
	vl	%v18,16(%r1,%r3)
	vst	%v18,16(%r1,%r2)
	vl	%v20,32(%r1,%r3)
	vst	%v20,32(%r1,%r2)
	vl	%v22,48(%r1,%r3)
	vst	%v22,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1031
	j	.L1011
.L1033:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	br	%r14
.L909:
	.cfi_register 8, 21
	.cfi_register 9, 20
	.cfi_register 10, 19
	.cfi_register 11, 18
	.cfi_register 12, 17
	risbg	%r0,%r12,2,128+63,0
	sllg	%r12,%r12,2
	aghi	%r0,1
	risbg	%r8,%r0,62,128+63,0
	je	.L947
	cgije	%r8,1,.L980
	cgije	%r8,2,.L981
	l	%r10,0(%r12,%r3)
	st	%r10,0(%r12,%r2)
	aghi	%r12,-4
.L981:
	l	%r5,0(%r12,%r3)
	st	%r5,0(%r12,%r2)
	aghi	%r12,-4
.L980:
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	aghi	%r12,-4
	cgije	%r12,-4,.L930
.L947:
	srlg	%r1,%r0,2
	cghi	%r1,2
	jle	.L1028
	aghi	%r1,-1
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
.L913:
	aghi	%r12,-16
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
	brctg	%r1,.L913
	j	.L930
.L922:
	aghik	%r11,%r12,1
	lghi	%r1,0
	risbg	%r8,%r11,62,128+63,0
	je	.L965
	cgije	%r8,1,.L984
	cgije	%r8,2,.L985
	l	%r10,0(%r3)
	aghi	%r12,-1
	st	%r10,0(%r2)
	lghi	%r1,4
.L985:
	l	%r9,0(%r1,%r3)
	aghi	%r12,-1
	st	%r9,0(%r1,%r2)
	aghi	%r1,4
.L984:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgije	%r12,0,.L930
.L965:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L1030
	aghi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L919:
	aghi	%r1,16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	brctg	%r4,.L919
	j	.L930
.L1028:
	l	%r11,0(%r12,%r3)
	st	%r11,0(%r12,%r2)
	ly	%r9,-4(%r12,%r3)
	sty	%r9,-4(%r12,%r2)
	ly	%r0,-8(%r12,%r3)
	sty	%r0,-8(%r12,%r2)
	ly	%r8,-12(%r12,%r3)
	sty	%r8,-12(%r12,%r2)
	aghi	%r12,-16
	brctg	%r1,.L1028
	j	.L930
.L1030:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r8,12(%r1,%r3)
	st	%r8,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r4,.L1030
	j	.L930
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
	cgije	%r4,0,.L1039
	clgijle	%r11,6,.L1045
	vlvgf	%v0,%r3,3
	srlg	%r9,%r4,2
	vrepf	%v0,%v0,3
	clgijle	%r4,67,.L1046
	aghik	%r12,%r9,-17
	lgr	%r1,%r2
	nill	%r12,65520
	srlg	%r5,%r12,4
	aghi	%r12,16
	aghi	%r5,1
.L1042:
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
	brctg	%r5,.L1042
.L1041:
	vst	%v0,0(%r1)
	nngrk	%r10,%r12,%r12
	aghik	%r0,%r12,1
	agr	%r10,%r9
	la	%r5,16(%r1)
	risbg	%r10,%r10,62,128+63,0
	clgrjle	%r9,%r0,.L1089
	cgije	%r10,0,.L1090
	cgije	%r10,1,.L1076
	cgije	%r10,2,.L1077
	vst	%v0,0(%r5)
	aghik	%r0,%r12,2
	la	%r5,32(%r1)
.L1077:
	vst	%v0,0(%r5)
	aghi	%r0,1
	aghi	%r5,16
.L1076:
	vst	%v0,0(%r5)
	aghi	%r0,1
	aghi	%r5,16
	clgrjle	%r9,%r0,.L1089
.L1090:
	vst	%v0,0(%r5)
	vst	%v0,16(%r5)
	vst	%v0,32(%r5)
	vst	%v0,48(%r5)
	aghi	%r0,4
	aghi	%r5,64
	clgrjh	%r9,%r0,.L1090
.L1089:
	tmll	%r4,3
	je	.L1039
	nill	%r4,65532
	sllg	%r1,%r4,2
	sgr	%r11,%r4
	agr	%r1,%r2
.L1040:
	st	%r3,0(%r1)
	cgije	%r11,0,.L1039
	st	%r3,4(%r1)
	cgije	%r11,1,.L1039
	st	%r3,8(%r1)
	cgije	%r11,2,.L1039
	st	%r3,12(%r1)
	cgije	%r11,3,.L1039
	st	%r3,16(%r1)
	cgije	%r11,4,.L1039
	st	%r3,20(%r1)
	cgije	%r11,5,.L1039
	st	%r3,24(%r1)
.L1039:
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
.L1045:
	.cfi_restore_state
	lgr	%r1,%r2
	j	.L1040
.L1046:
	lgr	%r1,%r2
	lghi	%r12,0
	j	.L1041
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
	jhe	.L1095
	cgije	%r4,0,.L1094
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1212
	lay	%r5,-2(%r4,%r2)
	sgrk	%r8,%r3,%r5
	la	%r0,14(%r8,%r1)
	clgijle	%r0,14,.L1212
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
	je	.L1190
	cgije	%r10,1,.L1213
	cgije	%r10,2,.L1214
	vl	%v17,0(%r11)
	lghi	%r1,-16
	vst	%v17,0(%r12)
.L1214:
	vl	%v19,0(%r1,%r11)
	vst	%v19,0(%r1,%r12)
	aghi	%r1,-16
.L1213:
	vl	%v21,0(%r1,%r11)
	vst	%v21,0(%r1,%r12)
	aghi	%r1,-16
	cgrje	%r1,%r8,.L1268
.L1190:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1282
	aghi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L1098:
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
	brctg	%r5,.L1098
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
.L1268:
	agr	%r1,%r4
	risbg	%r12,%r4,60,128+63,0
	agr	%r3,%r1
	agr	%r2,%r1
	tmll	%r4,15
	je	.L1094
	icy	%r4,-1(%r2)
	stcy	%r4,-1(%r3)
	cgije	%r12,1,.L1094
	icy	%r11,-2(%r2)
	stcy	%r11,-2(%r3)
	cgije	%r12,2,.L1094
	icy	%r0,-3(%r2)
	stcy	%r0,-3(%r3)
	cgije	%r12,3,.L1094
	icy	%r1,-4(%r2)
	stcy	%r1,-4(%r3)
	cgije	%r12,4,.L1094
	icy	%r5,-5(%r2)
	stcy	%r5,-5(%r3)
	cgije	%r12,5,.L1094
	icy	%r9,-6(%r2)
	stcy	%r9,-6(%r3)
	cgije	%r12,6,.L1094
	icy	%r8,-7(%r2)
	stcy	%r8,-7(%r3)
	cgije	%r12,7,.L1094
	icy	%r10,-8(%r2)
	stcy	%r10,-8(%r3)
	cgije	%r12,8,.L1094
	icy	%r4,-9(%r2)
	stcy	%r4,-9(%r3)
	cgije	%r12,9,.L1094
	icy	%r11,-10(%r2)
	stcy	%r11,-10(%r3)
	cgije	%r12,10,.L1094
	icy	%r0,-11(%r2)
	stcy	%r0,-11(%r3)
	cgije	%r12,11,.L1094
	icy	%r1,-12(%r2)
	stcy	%r1,-12(%r3)
	cgije	%r12,12,.L1094
	icy	%r5,-13(%r2)
	stcy	%r5,-13(%r3)
	cgije	%r12,13,.L1094
	icy	%r9,-14(%r2)
	stcy	%r9,-14(%r3)
	cgije	%r12,14,.L1094
	icy	%r2,-15(%r2)
	stcy	%r2,-15(%r3)
.L1094:
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
.L1095:
	.cfi_restore_state
	je	.L1094
	cgije	%r4,0,.L1094
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1109
	la	%r0,1(%r2)
	sgrk	%r5,%r3,%r0
	clgijle	%r5,14,.L1109
	risbg	%r8,%r4,0,128+59,0
	aghik	%r9,%r8,-16
	lghi	%r1,0
	srlg	%r10,%r9,4
	aghi	%r10,1
	risbg	%r12,%r10,62,128+63,0
	je	.L1208
	cgije	%r12,1,.L1215
	cgije	%r12,2,.L1216
	vl	%v0,0(%r2)
	lghi	%r1,16
	vst	%v0,0(%r3)
.L1216:
	vl	%v5,0(%r1,%r2)
	vst	%v5,0(%r1,%r3)
	aghi	%r1,16
.L1215:
	vl	%v7,0(%r1,%r2)
	vst	%v7,0(%r1,%r3)
	aghi	%r1,16
	cgrje	%r1,%r8,.L1269
.L1208:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L1284
	aghi	%r5,-1
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
.L1103:
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	aghi	%r1,64
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
	brctg	%r5,.L1103
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	aghi	%r1,64
.L1269:
	agr	%r3,%r1
	agr	%r2,%r1
	sgrk	%r11,%r4,%r1
	cgrje	%r4,%r1,.L1094
	mvc	0(1,%r3),0(%r2)
	cgije	%r11,1,.L1094
	mvc	1(1,%r3),1(%r2)
	cgije	%r11,2,.L1094
	mvc	2(1,%r3),2(%r2)
	cgije	%r11,3,.L1094
	mvc	3(1,%r3),3(%r2)
	cgije	%r11,4,.L1094
	mvc	4(1,%r3),4(%r2)
	cgije	%r11,5,.L1094
	mvc	5(1,%r3),5(%r2)
	cgije	%r11,6,.L1094
	mvc	6(1,%r3),6(%r2)
	cgije	%r11,7,.L1094
	mvc	7(1,%r3),7(%r2)
	cgije	%r11,8,.L1094
	mvc	8(1,%r3),8(%r2)
	cgije	%r11,9,.L1094
	mvc	9(1,%r3),9(%r2)
	cgije	%r11,10,.L1094
	mvc	10(1,%r3),10(%r2)
	cgije	%r11,11,.L1094
	mvc	11(1,%r3),11(%r2)
	cgije	%r11,12,.L1094
	mvc	12(1,%r3),12(%r2)
	cgije	%r11,13,.L1094
	mvc	13(1,%r3),13(%r2)
	cgije	%r11,14,.L1094
	mvc	14(1,%r3),14(%r2)
	j	.L1094
.L1282:
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
	brctg	%r5,.L1282
	j	.L1268
.L1284:
	vl	%v16,0(%r1,%r2)
	vst	%v16,0(%r1,%r3)
	vl	%v18,16(%r1,%r2)
	vst	%v18,16(%r1,%r3)
	vl	%v20,32(%r1,%r2)
	vst	%v20,32(%r1,%r3)
	vl	%v22,48(%r1,%r2)
	vst	%v22,48(%r1,%r3)
	aghi	%r1,64
	brctg	%r5,.L1284
	j	.L1269
.L1212:
	lgr	%r8,%r1
	risbg	%r10,%r1,62,128+63,0
	je	.L1181
	icy	%r12,-1(%r4,%r2)
	stcy	%r12,-1(%r4,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
	cgije	%r10,1,.L1181
	cgije	%r10,2,.L1219
	icy	%r4,-1(%r8,%r2)
	stcy	%r4,-1(%r8,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L1219:
	icy	%r11,-1(%r4,%r2)
	stcy	%r11,-1(%r4,%r3)
	lgr	%r4,%r1
	lay	%r1,-1(%r1)
.L1181:
	srlg	%r5,%r8,2
	aghi	%r5,1
.L1100:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	brctg	%r5,.L1141
	j	.L1094
.L1141:
	icy	%r9,-1(%r1,%r2)
	stcy	%r9,-1(%r1,%r3)
	icy	%r8,-2(%r1,%r2)
	stcy	%r8,-2(%r1,%r3)
	icy	%r10,-3(%r1,%r2)
	lay	%r4,-3(%r1)
	stcy	%r10,-3(%r1,%r3)
	lay	%r1,-4(%r1)
	j	.L1100
.L1109:
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L1199
	cgije	%r0,1,.L1217
	cgije	%r0,2,.L1218
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1218:
	ic	%r8,0(%r1,%r2)
	stc	%r8,0(%r1,%r3)
	aghi	%r1,1
.L1217:
	ic	%r9,0(%r1,%r2)
	stc	%r9,0(%r1,%r3)
	aghi	%r1,1
	cgrje	%r4,%r1,.L1094
.L1199:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1283
	aghi	%r5,-1
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
.L1106:
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r4,3(%r1,%r2)
	stc	%r4,3(%r1,%r3)
	aghi	%r1,4
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	brctg	%r5,.L1106
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L1094
.L1283:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r10,1(%r1,%r2)
	stc	%r10,1(%r1,%r3)
	ic	%r12,2(%r1,%r2)
	stc	%r12,2(%r1,%r3)
	ic	%r11,3(%r1,%r2)
	stc	%r11,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L1283
	j	.L1094
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
	jne	.L1316
	tmll	%r2,2
	jne	.L1317
	tmll	%r2,4
	jne	.L1318
	tmll	%r2,8
	jne	.L1319
	tmll	%r2,16
	jne	.L1320
	tmll	%r2,32
	jne	.L1321
	tmll	%r2,64
	jne	.L1322
	tmll	%r2,128
	jne	.L1323
	tmll	%r2,256
	jne	.L1324
	tmll	%r2,512
	jne	.L1325
	tmll	%r2,1024
	jne	.L1326
	tmll	%r2,2048
	jne	.L1327
	tmll	%r2,4096
	jne	.L1328
	tmll	%r2,8192
	jne	.L1329
	tmll	%r2,16384
	jne	.L1330
	tmll	%r2,32768
	jne	.L1331
	tmlh	%r2,1
	jne	.L1332
	tmlh	%r2,2
	jne	.L1333
	tmlh	%r2,4
	jne	.L1334
	tmlh	%r2,8
	jne	.L1335
	tmlh	%r2,16
	jne	.L1336
	tmlh	%r2,32
	jne	.L1337
	tmlh	%r2,64
	jne	.L1338
	tmlh	%r2,128
	jne	.L1339
	tmlh	%r2,256
	jne	.L1340
	tmlh	%r2,512
	jne	.L1341
	tmlh	%r2,1024
	jne	.L1342
	tmlh	%r2,2048
	jne	.L1343
	tmlh	%r2,4096
	jne	.L1344
	tmlh	%r2,8192
	jne	.L1345
	risbg	%r1,%r2,33,128+33,0
	jne	.L1346
	cgijlh	%r2,0,.L1350
.L1315:
	lgfr	%r2,%r1
	br	%r14
.L1316:
	lhi	%r1,1
	j	.L1315
.L1317:
	lhi	%r1,2
	j	.L1315
.L1328:
	lhi	%r1,13
	j	.L1315
.L1344:
	lhi	%r1,29
	j	.L1315
.L1318:
	lhi	%r1,3
	j	.L1315
.L1319:
	lhi	%r1,4
	j	.L1315
.L1320:
	lhi	%r1,5
	j	.L1315
.L1321:
	lhi	%r1,6
	j	.L1315
.L1322:
	lhi	%r1,7
	j	.L1315
.L1323:
	lhi	%r1,8
	j	.L1315
.L1324:
	lhi	%r1,9
	j	.L1315
.L1325:
	lhi	%r1,10
	j	.L1315
.L1326:
	lhi	%r1,11
	j	.L1315
.L1327:
	lhi	%r1,12
	j	.L1315
.L1329:
	lhi	%r1,14
	j	.L1315
.L1330:
	lhi	%r1,15
	j	.L1315
.L1331:
	lhi	%r1,16
	j	.L1315
.L1332:
	lhi	%r1,17
	j	.L1315
.L1333:
	lhi	%r1,18
	j	.L1315
.L1334:
	lhi	%r1,19
	j	.L1315
.L1335:
	lhi	%r1,20
	j	.L1315
.L1336:
	lhi	%r1,21
	j	.L1315
.L1337:
	lhi	%r1,22
	j	.L1315
.L1338:
	lhi	%r1,23
	j	.L1315
.L1339:
	lhi	%r1,24
	j	.L1315
.L1340:
	lhi	%r1,25
	j	.L1315
.L1341:
	lhi	%r1,26
	j	.L1315
.L1342:
	lhi	%r1,27
	j	.L1315
.L1343:
	lhi	%r1,28
	j	.L1315
.L1345:
	lhi	%r1,30
	j	.L1315
.L1350:
	lhi	%r1,32
	j	.L1315
.L1346:
	lhi	%r1,31
	j	.L1315
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
	cgije	%r2,0,.L1355
	risbg	%r3,%r2,63,128+63,0
	jne	.L1353
	lhi	%r3,1
.L1354:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L1354
.L1353:
	lgfr	%r2,%r3
	br	%r14
.L1355:
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
	larl	%r5,.L1364
	keb	%f0,.L1365-.L1364(%r5)
	jl	.L1362
	keb	%f0,.L1366-.L1364(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1362:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1364:
.L1366:
	.long	2139095039
.L1365:
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
	larl	%r5,.L1372
	kdb	%f0,.L1373-.L1372(%r5)
	jl	.L1370
	kdb	%f0,.L1374-.L1372(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1370:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1372:
.L1374:
	.long	2146435071
	.long	-1
.L1373:
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
	larl	%r5,.L1380
	vl	%v0,0(%r2),3
	vl	%v2,.L1381-.L1380(%r5),3
	wfkxb	%v0,%v2
	jl	.L1378
	vl	%v4,.L1382-.L1380(%r5),3
	lhi	%r2,0
	wfkxb	%v0,%v4
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1378:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1380:
.L1382:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1381:
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
	larl	%r5,.L1401
	cebr	%f0,%f0
	bor	%r14
	wfasb	%v2,%v0,%v0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1399
	lde	%f4,.L1402-.L1401(%r5)
.L1387:
	tmll	%r2,1
	je	.L1388
.L1389:
	meebr	%f0,%f4
.L1388:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1386
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L1389
.L1400:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1389
	j	.L1400
.L1386:
	br	%r14
.L1399:
	lde	%f4,.L1403-.L1401(%r5)
	j	.L1387
	.section	.rodata
	.align	8
.L1401:
.L1403:
	.long	1056964608
.L1402:
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
	larl	%r5,.L1420
	cdbr	%f0,%f0
	bor	%r14
	wfadb	%v2,%v0,%v0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1418
	ld	%f4,.L1421-.L1420(%r5)
.L1406:
	tmll	%r2,1
	je	.L1407
.L1408:
	mdbr	%f0,%f4
.L1407:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1405
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L1408
.L1419:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1408
	j	.L1419
.L1405:
	br	%r14
.L1418:
	ld	%f4,.L1422-.L1420(%r5)
	j	.L1406
	.section	.rodata
	.align	8
.L1420:
.L1422:
	.long	1071644672
	.long	0
.L1421:
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
	larl	%r5,.L1439
	vl	%v2,0(%r3),3
	wfcxb	%v2,%v2
	jo	.L1424
	wfaxb	%v0,%v2,%v2
	wfcxb	%v0,%v2
	je	.L1424
	cijl	%r4,0,.L1437
	vl	%v4,.L1440-.L1439(%r5),3
.L1425:
	tmll	%r4,1
	je	.L1426
.L1427:
	wfmxb	%v2,%v2,%v4
.L1426:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L1424
	wfmxb	%v4,%v4,%v4
	tmll	%r4,1
	jne	.L1427
.L1438:
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	wfmxb	%v4,%v4,%v4
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L1427
	j	.L1438
.L1424:
	vst	%v2,0(%r2),3
	br	%r14
.L1437:
	vl	%v4,.L1441-.L1439(%r5),3
	j	.L1425
	.section	.rodata
	.align	8
.L1439:
.L1441:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1440:
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
	cgije	%r4,0,.L1561
	aghik	%r1,%r4,-1
	clgijle	%r1,30,.L1447
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	risbg	%r0,%r4,0,128+59,0
	aghik	%r12,%r0,-16
	lghi	%r1,0
	srlg	%r5,%r12,4
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1516
	cgije	%r12,1,.L1520
	cgije	%r12,2,.L1521
	vl	%v0,0(%r2)
	vl	%v2,0(%r3)
	lghi	%r1,16
	vx	%v4,%v0,%v2
	vst	%v4,0(%r2)
.L1521:
	vl	%v6,0(%r1,%r2)
	vl	%v1,0(%r1,%r3)
	vx	%v3,%v6,%v1
	vst	%v3,0(%r1,%r2)
	aghi	%r1,16
.L1520:
	vl	%v5,0(%r1,%r2)
	vl	%v7,0(%r1,%r3)
	vx	%v16,%v5,%v7
	vst	%v16,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r1,%r0,.L1557
.L1516:
	srlg	%r0,%r5,2
.L1445:
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
	brctg	%r0,.L1445
.L1557:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r12,%r4,%r1
	cgrje	%r4,%r1,.L1443
	xc	0(1,%r5),0(%r3)
	cgije	%r12,1,.L1443
	xc	1(1,%r5),1(%r3)
	cgije	%r12,2,.L1443
	xc	2(1,%r5),2(%r3)
	cgije	%r12,3,.L1443
	xc	3(1,%r5),3(%r3)
	cgije	%r12,4,.L1443
	xc	4(1,%r5),4(%r3)
	cgije	%r12,5,.L1443
	xc	5(1,%r5),5(%r3)
	cgije	%r12,6,.L1443
	xc	6(1,%r5),6(%r3)
	cgije	%r12,7,.L1443
	xc	7(1,%r5),7(%r3)
	cgije	%r12,8,.L1443
	xc	8(1,%r5),8(%r3)
	cgije	%r12,9,.L1443
	xc	9(1,%r5),9(%r3)
	cgije	%r12,10,.L1443
	xc	10(1,%r5),10(%r3)
	cgije	%r12,11,.L1443
	xc	11(1,%r5),11(%r3)
	cgije	%r12,12,.L1443
	xc	12(1,%r5),12(%r3)
	cgije	%r12,13,.L1443
	xc	13(1,%r5),13(%r3)
	cgije	%r12,14,.L1443
	xc	14(1,%r5),14(%r3)
	cgije	%r12,15,.L1443
	xc	15(1,%r5),15(%r3)
	cgije	%r12,16,.L1443
	xc	16(1,%r5),16(%r3)
	cgije	%r12,17,.L1443
	xc	17(1,%r5),17(%r3)
	cgije	%r12,18,.L1443
	xc	18(1,%r5),18(%r3)
	cgije	%r12,19,.L1443
	xc	19(1,%r5),19(%r3)
	cgije	%r12,20,.L1443
	xc	20(1,%r5),20(%r3)
	cgije	%r12,21,.L1443
	xc	21(1,%r5),21(%r3)
	cgije	%r12,22,.L1443
	xc	22(1,%r5),22(%r3)
	cgije	%r12,23,.L1443
	xc	23(1,%r5),23(%r3)
	cgije	%r12,24,.L1443
	xc	24(1,%r5),24(%r3)
	cgije	%r12,25,.L1443
	xc	25(1,%r5),25(%r3)
	cgije	%r12,26,.L1443
	xc	26(1,%r5),26(%r3)
	cgije	%r12,27,.L1443
	xc	27(1,%r5),27(%r3)
	cgije	%r12,28,.L1443
	xc	28(1,%r5),28(%r3)
	cgije	%r12,29,.L1443
	xc	29(1,%r5),29(%r3)
	cgije	%r12,30,.L1443
	xc	30(1,%r5),30(%r3)
.L1443:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L1447:
	xc	0(1,%r2),0(%r3)
	cgije	%r4,1,.L1561
	xc	1(1,%r2),1(%r3)
	cgije	%r4,2,.L1561
	xc	2(1,%r2),2(%r3)
	cgije	%r4,3,.L1561
	xc	3(1,%r2),3(%r3)
	cgije	%r4,4,.L1561
	xc	4(1,%r2),4(%r3)
	cgijlh	%r4,5,.L1595
.L1561:
	br	%r14
.L1595:
	xc	5(1,%r2),5(%r3)
	cgije	%r4,6,.L1561
	xc	6(1,%r2),6(%r3)
	cgije	%r4,7,.L1561
	xc	7(1,%r2),7(%r3)
	cgije	%r4,8,.L1561
	xc	8(1,%r2),8(%r3)
	cgije	%r4,9,.L1561
	xc	9(1,%r2),9(%r3)
	cgije	%r4,10,.L1561
	xc	10(1,%r2),10(%r3)
	cgije	%r4,11,.L1561
	xc	11(1,%r2),11(%r3)
	cgije	%r4,12,.L1561
	xc	12(1,%r2),12(%r3)
	cgije	%r4,13,.L1561
	xc	13(1,%r2),13(%r3)
	cgije	%r4,14,.L1561
	xc	14(1,%r2),14(%r3)
	cgije	%r4,15,.L1561
	xc	15(1,%r2),15(%r3)
	cgije	%r4,16,.L1561
	xc	16(1,%r2),16(%r3)
	cgije	%r4,17,.L1561
	xc	17(1,%r2),17(%r3)
	cgije	%r4,18,.L1561
	xc	18(1,%r2),18(%r3)
	cgije	%r4,19,.L1561
	xc	19(1,%r2),19(%r3)
	cgije	%r4,20,.L1561
	xc	20(1,%r2),20(%r3)
	cgije	%r4,21,.L1561
	xc	21(1,%r2),21(%r3)
	cgije	%r4,22,.L1561
	xc	22(1,%r2),22(%r3)
	cgije	%r4,23,.L1561
	xc	23(1,%r2),23(%r3)
	cgije	%r4,24,.L1561
	xc	24(1,%r2),24(%r3)
	cgije	%r4,25,.L1561
	xc	25(1,%r2),25(%r3)
	cgije	%r4,26,.L1561
	xc	26(1,%r2),26(%r3)
	cgije	%r4,27,.L1561
	xc	27(1,%r2),27(%r3)
	cgije	%r4,28,.L1561
	xc	28(1,%r2),28(%r3)
	cgije	%r4,29,.L1561
	xc	29(1,%r2),29(%r3)
	cgije	%r4,30,.L1561
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
	je	.L1605
	vlbb	%v0,1(%r2),6
	la	%r1,1(%r2)
	lcbb	%r5,0(%r1),6
	vzero	%v2
	vfeebs	%v1,%v0,%v2
	vlgvf	%r0,%v1,1
	clrjhe	%r0,%r5,.L1621
.L1600:
	vlgvg	%r5,%v1,0
	agr	%r1,%r5
.L1598:
	cgije	%r4,0,.L1602
	aghik	%r0,%r4,-1
	tmll	%r4,1
	je	.L1611
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1604
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgije	%r0,0,.L1602
.L1611:
	srlg	%r4,%r4,1
.L1601:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1622
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L1623
	la	%r1,2(%r1)
	brctg	%r4,.L1601
.L1602:
	mvi	0(%r1),0
.L1604:
	br	%r14
.L1621:
	la	%r1,17(%r2)
	nill	%r1,65520
	vl	%v4,0(%r1),4
	vfeebs	%v1,%v4,%v2
	jl	.L1600
.L1599:
	vl	%v6,16(%r1),4
	la	%r1,16(%r1)
	vfeebs	%v1,%v6,%v2
	jnl	.L1599
	j	.L1600
.L1622:
	br	%r14
.L1623:
	br	%r14
.L1605:
	lgr	%r1,%r2
	j	.L1598
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
	cgije	%r3,0,.L1625
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1637
	cgije	%r5,1,.L1648
	cgije	%r5,2,.L1649
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1649:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1648:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L1625
.L1637:
	srlg	%r0,%r4,2
.L1626:
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
	brctg	%r0,.L1626
	br	%r14
.L1625:
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
	je	.L1663
.L1669:
	lgr	%r1,%r3
	j	.L1662
.L1661:
	crje	%r4,%r5,.L1660
.L1662:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1661
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1669
.L1663:
	lghi	%r2,0
.L1660:
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
.L1672:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1672
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
	je	.L1675
	vlbb	%v0,1(%r3),6
	la	%r1,1(%r3)
	lcbb	%r4,0(%r1),6
	vzero	%v2
	vfeebs	%v18,%v0,%v2
	lr	%r8,%r10
	vlgvf	%r5,%v18,1
	clrjhe	%r5,%r4,.L1698
.L1678:
	vlgvg	%r0,%v18,0
	agr	%r1,%r0
	slgr	%r1,%r3
	jhe	.L1675
	aghik	%r9,%r1,-1
	llcr	%r8,%r8
	j	.L1696
.L1700:
	la	%r2,1(%r2)
	cije	%r1,0,.L1699
.L1696:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1700
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L1680:
	la	%r11,1(%r5)
	brctg	%r0,.L1694
.L1682:
	crje	%r1,%r12,.L1675
.L1683:
	la	%r2,1(%r2)
	j	.L1696
.L1699:
	lghi	%r2,0
.L1675:
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
.L1698:
	.cfi_restore_state
	la	%r1,17(%r3)
	nill	%r1,65520
	vl	%v7,0(%r1),4
	vfeebs	%v18,%v7,%v2
	jl	.L1678
.L1677:
	vl	%v16,16(%r1),4
	la	%r1,16(%r1)
	vfeebs	%v18,%v16,%v2
	jnl	.L1677
	j	.L1678
.L1694:
	crjlh	%r12,%r1,.L1683
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1682
	cli	1(%r5),0
	je	.L1683
	lgr	%r5,%r11
	j	.L1680
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
	jl	.L1712
	jnh	.L1706
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1705
.L1706:
	br	%r14
.L1712:
	kdbr	%f2,%f4
	jnh	.L1706
.L1705:
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
	cgije	%r5,0,.L1758
	clgrjl	%r3,%r5,.L1723
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1723
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	llc	%r11,0(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1720
.L1724:
	lgr	%r2,%r12
.L1716:
	clgrjl	%r3,%r2,.L1725
.L1720:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1724
	cgije	%r5,1,.L1714
.L1719:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1735
	cgije	%r10,1,.L1745
	cgijlh	%r10,2,.L1761
.L1746:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	aghi	%r1,1
.L1745:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	aghi	%r1,1
	cgrje	%r1,%r5,.L1714
.L1735:
	srlg	%r0,%r0,2
.L1717:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1752
	aghi	%r1,4
	brctg	%r0,.L1717
.L1714:
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
.L1761:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1746
.L1752:
	clgrjl	%r3,%r12,.L1725
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1716
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1719
.L1725:
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
.L1723:
	lghi	%r2,0
	br	%r14
.L1758:
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
	cgije	%r4,0,.L1764
	brasl	%r14,memmove@PLT
.L1764:
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
	larl	%r5,.L1796
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1793
	kdb	%f0,.L1797-.L1796(%r5)
	jnhe	.L1794
	lhi	%r3,0
.L1773:
	lhi	%r1,0
.L1779:
	mdb	%f0,.L1798-.L1796(%r5)
	ahi	%r1,1
	kdb	%f0,.L1797-.L1796(%r5)
	jhe	.L1779
.L1780:
	st	%r1,0(%r2)
	cije	%r3,0,.L1770
	lcdbr	%f0,%f0
.L1770:
	br	%r14
.L1794:
	kdb	%f0,.L1798-.L1796(%r5)
	jnl	.L1776
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1785
.L1776:
	mvhi	0(%r2),0
	br	%r14
.L1793:
	lcdbr	%f6,%f0
	kdb	%f0,.L1799-.L1796(%r5)
	jnle	.L1795
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1773
.L1795:
	kdb	%f0,.L1800-.L1796(%r5)
	jnh	.L1776
	lhi	%r3,1
.L1774:
	ldr	%f0,%f6
	lhi	%r1,0
.L1781:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1798-.L1796(%r5)
	jl	.L1781
	j	.L1780
.L1785:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1774
	.section	.rodata
	.align	8
.L1796:
.L1800:
	.long	-1075838976
	.long	0
.L1799:
	.long	-1074790400
	.long	0
.L1798:
	.long	1071644672
	.long	0
.L1797:
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
	cgije	%r4,0,.L1804
.L1803:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1803
	br	%r14
.L1804:
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
	clrjhe	%r3,%r2,.L1924
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L1918
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1810
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L1918
.L1812:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1810
	ahik	%r5,%r10,-1
	brct	%r11,.L1887
.L1811:
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
.L1887:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1918
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1810
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1918
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1810
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L1812
.L1918:
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
	cijlh	%r11,0,.L1815
	j	.L1811
.L1810:
	cije	%r0,0,.L1817
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
.L1815:
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r10,0,.L1811
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
	cije	%r11,0,.L1811
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
	cije	%r11,0,.L1811
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
	cije	%r0,0,.L1811
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
	cije	%r0,0,.L1811
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
	cijhe	%r12,0,.L1811
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L1811
.L1924:
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
.L1817:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L1811
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
	cgije	%r2,0,.L1937
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	srlg	%r5,%r2,1
	nr	%r1,%r3
	sllk	%r0,%r3,1
	cgije	%r5,0,.L2028
	nilf	%r4,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r2,2
	lcr	%r12,%r4
	srlg	%r4,%r2,2
	nr	%r12,%r0
	sllk	%r0,%r3,2
	ar	%r1,%r12
	cgije	%r4,0,.L1935
	risbg	%r12,%r5,63,128+63,0
	srlk	%r5,%r2,3
	lcr	%r4,%r12
	sllk	%r12,%r3,3
	nr	%r4,%r0
	srlg	%r0,%r2,3
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,4
	lcr	%r4,%r4
	srlk	%r5,%r2,4
	nr	%r4,%r12
	sllk	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,5
	lcr	%r4,%r4
	srlk	%r5,%r2,5
	nr	%r4,%r12
	sllk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,6
	lcr	%r4,%r4
	srlk	%r5,%r2,6
	nr	%r4,%r12
	sllk	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,7
	lcr	%r4,%r4
	srlk	%r5,%r2,7
	nr	%r4,%r12
	sllk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,8
	lcr	%r4,%r4
	srlk	%r5,%r2,8
	nr	%r4,%r12
	sllk	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,9
	lcr	%r4,%r4
	srlk	%r5,%r2,9
	nr	%r4,%r12
	sllk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,10
	lcr	%r4,%r4
	srlk	%r5,%r2,10
	nr	%r4,%r12
	sllk	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lcr	%r4,%r4
	srlk	%r5,%r2,11
	nr	%r4,%r12
	sllk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lcr	%r4,%r4
	srlk	%r5,%r2,12
	nr	%r4,%r12
	sllk	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lcr	%r4,%r4
	srlk	%r5,%r2,13
	nr	%r4,%r12
	sllk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lcr	%r4,%r4
	srlk	%r5,%r2,14
	nr	%r4,%r12
	sllk	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lcr	%r4,%r4
	srlk	%r5,%r2,15
	nr	%r4,%r12
	sllk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lcr	%r4,%r4
	srlk	%r5,%r2,16
	nr	%r4,%r12
	sllk	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lcr	%r4,%r4
	srlk	%r5,%r2,17
	nr	%r4,%r12
	sllk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lcr	%r4,%r4
	srlk	%r5,%r2,18
	nr	%r4,%r12
	sllk	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lcr	%r4,%r4
	srlk	%r5,%r2,19
	nr	%r4,%r12
	sllk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lcr	%r4,%r4
	srlk	%r5,%r2,20
	nr	%r4,%r12
	sllk	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lcr	%r4,%r4
	srlk	%r5,%r2,21
	nr	%r4,%r12
	sllk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lcr	%r4,%r4
	srlk	%r5,%r2,22
	nr	%r4,%r12
	sllk	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lcr	%r4,%r4
	srlk	%r5,%r2,23
	nr	%r4,%r12
	sllk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lcr	%r4,%r4
	srlk	%r5,%r2,24
	nr	%r4,%r12
	sllk	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lcr	%r4,%r4
	srlk	%r5,%r2,25
	nr	%r4,%r12
	sllk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lcr	%r4,%r4
	srlk	%r5,%r2,26
	nr	%r4,%r12
	sllk	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lcr	%r4,%r4
	srlk	%r5,%r2,27
	nr	%r4,%r12
	sllk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lcr	%r4,%r4
	srlk	%r5,%r2,28
	nr	%r4,%r12
	sllk	%r12,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L1935
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	srlg	%r0,%r2,29
	nr	%r5,%r12
	sllk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r0,0,.L1935
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
.L1935:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1937:
	lhi	%r1,0
.L2028:
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
	clgrjl	%r2,%r3,.L2037
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2235
.L2037:
	cije	%r11,0,.L2236
	ahik	%r1,%r11,-1
	clijle	%r1,6,.L2039
	la	%r8,8(%r3)
	cgrje	%r2,%r8,.L2039
	risbg	%r10,%r4,32,128+59,0
	aghik	%r9,%r10,-16
	srlk	%r12,%r4,4
	srlg	%r5,%r9,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2127
	cgije	%r8,1,.L2149
	cgijlh	%r8,2,.L2237
.L2150:
	vl	%v19,0(%r1,%r3),3
	vst	%v19,0(%r1,%r2),3
	aghi	%r1,16
.L2149:
	vl	%v21,0(%r1,%r3),3
	vst	%v21,0(%r1,%r2),3
	aghi	%r1,16
	cgrje	%r1,%r10,.L2203
.L2127:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2231
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
.L2040:
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
	aghi	%r1,64
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
	brctg	%r5,.L2040
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
.L2203:
	sll	%r12,1
	crje	%r11,%r12,.L2043
	risbgn	%r11,%r12,32,128+59,3
	lg	%r1,0(%r11,%r3)
	stg	%r1,0(%r11,%r2)
.L2043:
	clrjhe	%r0,%r4,.L2032
	srk	%r10,%r4,%r0
	llgfr	%r12,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,30,.L2035
	lgr	%r11,%r2
	la	%r5,1(%r12,%r3)
	algfr	%r11,%r0
	sgrk	%r9,%r11,%r5
	clgijle	%r9,14,.L2035
	risbg	%r9,%r10,32,128+59,0
	agr	%r12,%r3
	aghik	%r8,%r9,-16
	lghi	%r1,0
	srlg	%r5,%r8,4
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2109
	cgije	%r8,1,.L2153
	cgijlh	%r8,2,.L2238
.L2154:
	vl	%v25,0(%r1,%r12)
	vst	%v25,0(%r1,%r11)
	aghi	%r1,16
.L2153:
	vl	%v27,0(%r1,%r12)
	vst	%v27,0(%r1,%r11)
	aghi	%r1,16
	cgrje	%r1,%r9,.L2202
.L2109:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2229
	aghi	%r5,-1
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
.L2044:
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
	aghi	%r1,64
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
	brctg	%r5,.L2044
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
.L2202:
	risbg	%r12,%r10,32,128+59,0
	ar	%r12,%r0
	tmll	%r10,15
	je	.L2032
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L2032
	llgfr	%r1,%r11
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,2
	clrjhe	%r5,%r4,.L2032
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L2032
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r9,%r12,4
	clrjhe	%r9,%r4,.L2032
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L2032
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r1,%r12,6
	clrjhe	%r1,%r4,.L2032
	llgfr	%r9,%r1
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahik	%r8,%r12,7
	clrjhe	%r8,%r4,.L2032
	llgfr	%r10,%r8
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ahik	%r0,%r12,8
	clrjhe	%r0,%r4,.L2032
	llgfr	%r1,%r0
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,9
	clrjhe	%r5,%r4,.L2032
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r11,%r12,10
	clrjhe	%r11,%r4,.L2032
	llgfr	%r1,%r11
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahik	%r9,%r12,11
	clrjhe	%r9,%r4,.L2032
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,12
	clrjhe	%r10,%r4,.L2032
	llgfr	%r11,%r10
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r0,%r12,13
	clrjhe	%r0,%r4,.L2032
	llgfr	%r9,%r0
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r12,14
	clrjhe	%r12,%r4,.L2032
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2032:
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
.L2235:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2032
	clijle	%r10,30,.L2048
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2048
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
	je	.L2145
	cgije	%r9,1,.L2156
	cgijlh	%r9,2,.L2239
.L2157:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2156:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2204
.L2145:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2233
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2049:
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
	brctg	%r0,.L2049
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2204:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2032
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2032
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2032
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2032
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2032
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2032
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2032
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2032
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2032
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2032
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2032
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2032
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2032
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2032
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2032
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2032
.L2231:
	vl	%v23,0(%r1,%r3),3
	vst	%v23,0(%r1,%r2),3
	vl	%v24,16(%r1,%r3),3
	vst	%v24,16(%r1,%r2),3
	vl	%v26,32(%r1,%r3),3
	vst	%v26,32(%r1,%r2),3
	vl	%v28,48(%r1,%r3),3
	vst	%v28,48(%r1,%r2),3
	aghi	%r1,64
	brctg	%r5,.L2231
	j	.L2203
.L2229:
	vl	%v29,0(%r1,%r12)
	vst	%v29,0(%r1,%r11)
	vl	%v31,16(%r1,%r12)
	vst	%v31,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v5,48(%r1,%r12)
	vst	%v5,48(%r1,%r11)
	aghi	%r1,64
	brctg	%r5,.L2229
	j	.L2202
.L2237:
	vl	%v17,0(%r3),3
	lghi	%r1,16
	vst	%v17,0(%r2),3
	j	.L2150
.L2238:
	vl	%v30,0(%r12)
	lghi	%r1,16
	vst	%v30,0(%r11)
	j	.L2154
.L2233:
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
	brctg	%r0,.L2233
	j	.L2204
.L2236:
	llgfr	%r12,%r0
	cgije	%r4,0,.L2032
.L2035:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	nngrk	%r10,%r12,%r12
	aghik	%r1,%r12,1
	ar	%r10,%r4
	risbg	%r11,%r10,62,128+63,0
	clrjle	%r4,%r1,.L2032
	cije	%r11,0,.L2100
	cije	%r11,1,.L2160
	cijlh	%r11,2,.L2240
.L2161:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2160:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L2032
.L2100:
	srlk	%r4,%r10,2
	chi	%r4,2
	jle	.L2228
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2046:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2046
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L2032
.L2039:
	risbgn	%r10,%r11,32,128+60,3
	aghik	%r9,%r10,-8
	lghi	%r1,0
	srlg	%r5,%r9,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2118
	cgije	%r8,1,.L2151
	cgijlh	%r8,2,.L2241
.L2152:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2151:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r10,.L2043
.L2118:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2230
	aghi	%r5,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L2042:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brctg	%r5,.L2042
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	j	.L2043
.L2230:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r8,8(%r1,%r3)
	stg	%r8,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2230
	j	.L2043
.L2239:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2157
.L2228:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r8,1(%r1,%r3)
	stc	%r8,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r11,3(%r1,%r3)
	stc	%r11,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2228
	j	.L2032
.L2241:
	lg	%r12,0(%r3)
	lghi	%r1,8
	stg	%r12,0(%r2)
	j	.L2152
.L2240:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L2161
.L2048:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2136
	cgije	%r5,1,.L2158
	cgije	%r5,2,.L2159
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2159:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2158:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2032
.L2136:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2232
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2052:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2052
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2032
.L2232:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2232
	j	.L2032
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
	clgrjl	%r2,%r3,.L2247
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2396
.L2247:
	cije	%r12,0,.L2246
	ahik	%r1,%r12,-1
	clijle	%r1,14,.L2250
	la	%r8,2(%r3)
	sgrk	%r9,%r2,%r8
	clgijle	%r9,12,.L2250
	risbg	%r11,%r4,32,128+59,0
	aghik	%r10,%r11,-16
	srlk	%r0,%r4,4
	srlg	%r5,%r10,4
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2311
	cgije	%r8,1,.L2333
	cgijlh	%r8,2,.L2397
.L2334:
	vl	%v19,0(%r1,%r3)
	vst	%v19,0(%r1,%r2)
	aghi	%r1,16
.L2333:
	vl	%v21,0(%r1,%r3)
	vst	%v21,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r11,%r1,.L2373
.L2311:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2392
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2251:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L2251
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2373:
	sllk	%r1,%r0,3
	crje	%r12,%r1,.L2246
	risbgn	%r9,%r1,32,128+59,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,1
	clrjle	%r12,%r11,.L2246
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahik	%r8,%r1,2
	clrjle	%r12,%r8,.L2246
	risbgn	%r9,%r8,31,128+61,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,3
	clrjle	%r12,%r11,.L2246
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahik	%r8,%r1,4
	clrjle	%r12,%r8,.L2246
	risbgn	%r9,%r8,31,128+60,1
	lh	%r0,0(%r9,%r3)
	sth	%r0,0(%r9,%r2)
	ahik	%r11,%r1,5
	clrjle	%r12,%r11,.L2246
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,6
	clrjle	%r12,%r1,.L2246
	risbgn	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L2246:
	tmll	%r4,1
	je	.L2243
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2243:
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
.L2396:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2243
	clijle	%r10,30,.L2256
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2256
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
	je	.L2329
	cgije	%r9,1,.L2337
	cgijlh	%r9,2,.L2398
.L2338:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2337:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2374
.L2329:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2394
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2257:
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
	brctg	%r0,.L2257
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2374:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2243
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2243
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2243
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2243
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2243
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2243
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2243
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2243
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2243
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2243
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2243
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2243
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2243
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2243
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2243
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2243
.L2392:
	vl	%v23,0(%r1,%r3)
	vst	%v23,0(%r1,%r2)
	vl	%v24,16(%r1,%r3)
	vst	%v24,16(%r1,%r2)
	vl	%v26,32(%r1,%r3)
	vst	%v26,32(%r1,%r2)
	vl	%v28,48(%r1,%r3)
	vst	%v28,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2392
	j	.L2373
.L2397:
	vl	%v17,0(%r3)
	lghi	%r1,16
	vst	%v17,0(%r2)
	j	.L2334
.L2394:
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
	brctg	%r0,.L2394
	j	.L2374
.L2250:
	risbgn	%r8,%r12,32,128+62,1
	aghik	%r9,%r8,-2
	lghi	%r1,0
	srlg	%r11,%r9,1
	aghi	%r11,1
	risbg	%r0,%r11,62,128+63,0
	je	.L2302
	cgije	%r0,1,.L2335
	cgijlh	%r0,2,.L2399
.L2336:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2335:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r8,%r1,.L2246
.L2302:
	srlg	%r5,%r11,2
	cghi	%r5,2
	jle	.L2391
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2253:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L2253
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2246
.L2391:
	lh	%r8,0(%r1,%r3)
	sth	%r8,0(%r1,%r2)
	lh	%r9,2(%r1,%r3)
	sth	%r9,2(%r1,%r2)
	lh	%r11,4(%r1,%r3)
	sth	%r11,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L2391
	j	.L2246
.L2398:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2338
.L2399:
	lh	%r10,0(%r3)
	lghi	%r1,2
	sth	%r10,0(%r2)
	j	.L2336
.L2256:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2320
	cgije	%r5,1,.L2339
	cgije	%r5,2,.L2340
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2340:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2339:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2243
.L2320:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2393
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2259:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2259
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2243
.L2393:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2393
	j	.L2243
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
	clgrjl	%r2,%r3,.L2406
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2604
.L2406:
	cije	%r11,0,.L2605
	ahik	%r1,%r11,-1
	clijle	%r1,6,.L2408
	la	%r8,4(%r3)
	sgrk	%r9,%r2,%r8
	clgijle	%r9,8,.L2408
	risbg	%r10,%r4,32,128+59,0
	aghik	%r5,%r10,-16
	srlk	%r12,%r4,4
	srlg	%r8,%r5,4
	lghi	%r1,0
	aghi	%r8,1
	risbg	%r9,%r8,62,128+63,0
	je	.L2496
	cgije	%r9,1,.L2518
	cgijlh	%r9,2,.L2606
.L2519:
	vl	%v19,0(%r1,%r3)
	vst	%v19,0(%r1,%r2)
	aghi	%r1,16
.L2518:
	vl	%v21,0(%r1,%r3)
	vst	%v21,0(%r1,%r2)
	aghi	%r1,16
	cgrje	%r1,%r10,.L2572
.L2496:
	srlg	%r5,%r8,2
	cghi	%r5,2
	jle	.L2600
	aghi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2409:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	aghi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brctg	%r5,.L2409
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2572:
	sllk	%r1,%r12,2
	crje	%r11,%r1,.L2412
	risbgn	%r10,%r1,32,128+59,2
	l	%r12,0(%r10,%r3)
	ahik	%r5,%r1,1
	st	%r12,0(%r10,%r2)
	clrjle	%r11,%r5,.L2412
	risbgn	%r8,%r5,31,128+61,2
	l	%r9,0(%r8,%r3)
	ahi	%r1,2
	st	%r9,0(%r8,%r2)
	clrjle	%r11,%r1,.L2412
	risbgn	%r11,%r1,31,128+60,2
	l	%r1,0(%r11,%r3)
	st	%r1,0(%r11,%r2)
.L2412:
	clrjhe	%r0,%r4,.L2401
	srk	%r10,%r4,%r0
	llgfr	%r12,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,30,.L2404
	lgr	%r11,%r2
	la	%r5,1(%r12,%r3)
	algfr	%r11,%r0
	sgrk	%r8,%r11,%r5
	clgijle	%r8,14,.L2404
	risbg	%r9,%r10,32,128+59,0
	agr	%r12,%r3
	aghik	%r5,%r9,-16
	lghi	%r1,0
	srlg	%r5,%r5,4
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2478
	cgije	%r8,1,.L2522
	cgijlh	%r8,2,.L2607
.L2523:
	vl	%v25,0(%r1,%r12)
	vst	%v25,0(%r1,%r11)
	aghi	%r1,16
.L2522:
	vl	%v27,0(%r1,%r12)
	vst	%v27,0(%r1,%r11)
	aghi	%r1,16
	cgrje	%r1,%r9,.L2571
.L2478:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2598
	aghi	%r5,-1
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
.L2413:
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
	aghi	%r1,64
	vl	%v0,0(%r1,%r12)
	vst	%v0,0(%r1,%r11)
	brctg	%r5,.L2413
	vl	%v0,16(%r1,%r12)
	vst	%v0,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v0,48(%r1,%r12)
	vst	%v0,48(%r1,%r11)
.L2571:
	risbg	%r12,%r10,32,128+59,0
	ar	%r12,%r0
	tmll	%r10,15
	je	.L2401
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L2401
	llgfr	%r1,%r11
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,2
	clrjhe	%r5,%r4,.L2401
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L2401
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r9,%r12,4
	clrjhe	%r9,%r4,.L2401
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L2401
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r1,%r12,6
	clrjhe	%r1,%r4,.L2401
	llgfr	%r9,%r1
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahik	%r8,%r12,7
	clrjhe	%r8,%r4,.L2401
	llgfr	%r10,%r8
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ahik	%r0,%r12,8
	clrjhe	%r0,%r4,.L2401
	llgfr	%r1,%r0
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahik	%r5,%r12,9
	clrjhe	%r5,%r4,.L2401
	llgfr	%r8,%r5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r11,%r12,10
	clrjhe	%r11,%r4,.L2401
	llgfr	%r1,%r11
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahik	%r9,%r12,11
	clrjhe	%r9,%r4,.L2401
	llgfr	%r5,%r9
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahik	%r10,%r12,12
	clrjhe	%r10,%r4,.L2401
	llgfr	%r11,%r10
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r0,%r12,13
	clrjhe	%r0,%r4,.L2401
	llgfr	%r9,%r0
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r12,14
	clrjhe	%r12,%r4,.L2401
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2401:
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
.L2604:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	llgfr	%r1,%r10
	cgije	%r4,0,.L2401
	clijle	%r10,30,.L2417
	sgrk	%r5,%r2,%r3
	aghi	%r5,15
	clgijle	%r5,14,.L2417
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
	je	.L2514
	cgije	%r9,1,.L2525
	cgijlh	%r9,2,.L2608
.L2526:
	vl	%v5,0(%r5,%r12)
	vst	%v5,0(%r5,%r1)
	aghi	%r5,-16
.L2525:
	vl	%v7,0(%r5,%r12)
	vst	%v7,0(%r5,%r1)
	aghi	%r5,-16
	cgrje	%r5,%r11,.L2573
.L2514:
	srlg	%r0,%r8,2
	cghi	%r0,2
	jle	.L2602
	aghi	%r0,-1
	vl	%v0,0(%r5,%r12)
	vst	%v0,0(%r5,%r1)
.L2418:
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
	brctg	%r0,.L2418
	aghik	%r11,%r5,-48
	aghik	%r9,%r5,-32
	aghik	%r8,%r5,-16
	vl	%v0,0(%r8,%r12)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r12)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r11,%r12)
	vst	%v0,0(%r11,%r1)
.L2573:
	risbg	%r12,%r4,32,128+59,0
	sr	%r10,%r12
	tmll	%r4,15
	je	.L2401
	llgfr	%r4,%r10
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	ahik	%r5,%r10,-1
	llgfr	%r11,%r5
	cije	%r10,0,.L2401
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r8,%r10,-2
	llgfr	%r9,%r8
	cgije	%r11,0,.L2401
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahik	%r4,%r10,-3
	llgfr	%r1,%r4
	cgije	%r9,0,.L2401
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r11,%r10,-4
	llgfr	%r8,%r11
	cgije	%r1,0,.L2401
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ahik	%r9,%r10,-5
	llgfr	%r12,%r9
	cgije	%r8,0,.L2401
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ahik	%r1,%r10,-6
	llgfr	%r5,%r1
	cgije	%r12,0,.L2401
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahik	%r8,%r10,-7
	llgfr	%r9,%r8
	cgije	%r5,0,.L2401
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahik	%r12,%r10,-8
	llgfr	%r1,%r12
	cgije	%r9,0,.L2401
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahik	%r5,%r10,-9
	llgfr	%r11,%r5
	cgije	%r1,0,.L2401
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	ahik	%r9,%r10,-10
	llgfr	%r12,%r9
	cgije	%r11,0,.L2401
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahik	%r1,%r10,-11
	llgfr	%r4,%r1
	cgije	%r12,0,.L2401
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahik	%r11,%r10,-12
	llgfr	%r8,%r11
	cgije	%r4,0,.L2401
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ahik	%r12,%r10,-13
	llgfr	%r4,%r12
	cgije	%r8,0,.L2401
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r2)
	ahi	%r10,-14
	llgfr	%r10,%r10
	cgije	%r4,0,.L2401
	ic	%r3,0(%r10,%r3)
	stc	%r3,0(%r10,%r2)
	j	.L2401
.L2600:
	vl	%v23,0(%r1,%r3)
	vst	%v23,0(%r1,%r2)
	vl	%v24,16(%r1,%r3)
	vst	%v24,16(%r1,%r2)
	vl	%v26,32(%r1,%r3)
	vst	%v26,32(%r1,%r2)
	vl	%v28,48(%r1,%r3)
	vst	%v28,48(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2600
	j	.L2572
.L2598:
	vl	%v29,0(%r1,%r12)
	vst	%v29,0(%r1,%r11)
	vl	%v31,16(%r1,%r12)
	vst	%v31,16(%r1,%r11)
	vl	%v0,32(%r1,%r12)
	vst	%v0,32(%r1,%r11)
	vl	%v5,48(%r1,%r12)
	vst	%v5,48(%r1,%r11)
	aghi	%r1,64
	brctg	%r5,.L2598
	j	.L2571
.L2606:
	vl	%v17,0(%r3)
	lghi	%r1,16
	vst	%v17,0(%r2)
	j	.L2519
.L2607:
	vl	%v30,0(%r12)
	lghi	%r1,16
	vst	%v30,0(%r11)
	j	.L2523
.L2602:
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
	brctg	%r0,.L2602
	j	.L2573
.L2408:
	risbgn	%r10,%r11,32,128+61,2
	aghik	%r12,%r10,-4
	lghi	%r1,0
	srlg	%r5,%r12,2
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2487
	cgije	%r8,1,.L2520
	cgijlh	%r8,2,.L2609
.L2521:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,4
.L2520:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r10,.L2412
.L2487:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2599
	aghi	%r5,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
.L2411:
	aghi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	brctg	%r5,.L2411
	j	.L2412
.L2599:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r9,8(%r1,%r3)
	st	%r9,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2599
	j	.L2412
.L2605:
	llgfr	%r12,%r0
	cgije	%r4,0,.L2401
.L2404:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	nngrk	%r10,%r12,%r12
	aghik	%r1,%r12,1
	ar	%r10,%r4
	risbg	%r11,%r10,62,128+63,0
	clrjle	%r4,%r1,.L2401
	cije	%r11,0,.L2469
	cije	%r11,1,.L2529
	cijlh	%r11,2,.L2610
.L2530:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2529:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L2401
.L2469:
	srlk	%r4,%r10,2
	chi	%r4,2
	jle	.L2597
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2415:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2415
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L2401
.L2608:
	vl	%v0,0(%r12)
	lghi	%r5,-16
	vst	%v0,0(%r1)
	j	.L2526
.L2597:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r8,1(%r1,%r3)
	stc	%r8,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r11,3(%r1,%r3)
	stc	%r11,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2597
	j	.L2401
.L2609:
	l	%r9,0(%r3)
	lghi	%r1,4
	st	%r9,0(%r2)
	j	.L2521
.L2610:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghik	%r1,%r12,2
	j	.L2530
.L2417:
	aghik	%r11,%r1,1
	risbg	%r5,%r11,62,128+63,0
	je	.L2505
	cgije	%r5,1,.L2527
	cgije	%r5,2,.L2528
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2528:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2527:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2401
.L2505:
	srlg	%r4,%r11,2
	cghi	%r4,2
	jle	.L2601
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2421:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2421
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2401
.L2601:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r10,-1(%r1,%r3)
	stcy	%r10,-1(%r1,%r2)
	icy	%r11,-2(%r1,%r3)
	stcy	%r11,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2601
	j	.L2401
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
	cijlh	%r1,0,.L2627
	srak	%r5,%r2,14
	jne	.L2626
	srak	%r0,%r2,13
	cijlh	%r0,0,.L2628
	srak	%r3,%r2,12
	cijlh	%r3,0,.L2629
	srak	%r4,%r2,11
	cijlh	%r4,0,.L2630
	srak	%r5,%r2,10
	cijlh	%r5,0,.L2631
	srak	%r1,%r2,9
	cijlh	%r1,0,.L2632
	srak	%r0,%r2,8
	cijlh	%r0,0,.L2633
	srak	%r3,%r2,7
	cijlh	%r3,0,.L2634
	srak	%r4,%r2,6
	cijlh	%r4,0,.L2635
	srak	%r5,%r2,5
	cijlh	%r5,0,.L2636
	srak	%r1,%r2,4
	cijlh	%r1,0,.L2637
	srak	%r0,%r2,3
	cijlh	%r0,0,.L2638
	srak	%r3,%r2,2
	cijlh	%r3,0,.L2639
	srak	%r4,%r2,1
	cijlh	%r4,0,.L2640
	ltgr	%r2,%r2
	lhi	%r5,15
	lochie	%r5,16
.L2626:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2627:
	lhi	%r5,0
	j	.L2626
.L2638:
	lhi	%r5,12
	j	.L2626
.L2628:
	lhi	%r5,2
	j	.L2626
.L2629:
	lhi	%r5,3
	j	.L2626
.L2630:
	lhi	%r5,4
	j	.L2626
.L2631:
	lhi	%r5,5
	j	.L2626
.L2632:
	lhi	%r5,6
	j	.L2626
.L2633:
	lhi	%r5,7
	j	.L2626
.L2634:
	lhi	%r5,8
	j	.L2626
.L2635:
	lhi	%r5,9
	j	.L2626
.L2636:
	lhi	%r5,10
	j	.L2626
.L2637:
	lhi	%r5,11
	j	.L2626
.L2639:
	lhi	%r5,13
	j	.L2626
.L2640:
	lhi	%r5,14
	j	.L2626
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
	jne	.L2646
	tmll	%r2,2
	jne	.L2647
	tmll	%r2,4
	jne	.L2648
	tmll	%r2,8
	jne	.L2649
	tmll	%r2,16
	jne	.L2650
	tmll	%r2,32
	jne	.L2651
	tmll	%r2,64
	jne	.L2652
	tmll	%r2,128
	jne	.L2653
	tmll	%r2,256
	jne	.L2654
	tmll	%r2,512
	jne	.L2655
	tmll	%r2,1024
	jne	.L2656
	tmll	%r2,2048
	jne	.L2657
	tmll	%r2,4096
	jne	.L2658
	tmll	%r2,8192
	jne	.L2659
	tmll	%r2,16384
	jne	.L2660
	sra	%r2,15
	ltr	%r2,%r2
	lhi	%r2,15
	lochie	%r2,16
.L2645:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L2646:
	lhi	%r2,0
	j	.L2645
.L2647:
	lhi	%r2,1
	j	.L2645
.L2658:
	lhi	%r2,12
	j	.L2645
.L2648:
	lhi	%r2,2
	j	.L2645
.L2649:
	lhi	%r2,3
	j	.L2645
.L2650:
	lhi	%r2,4
	j	.L2645
.L2651:
	lhi	%r2,5
	j	.L2645
.L2652:
	lhi	%r2,6
	j	.L2645
.L2653:
	lhi	%r2,7
	j	.L2645
.L2654:
	lhi	%r2,8
	j	.L2645
.L2655:
	lhi	%r2,9
	j	.L2645
.L2656:
	lhi	%r2,10
	j	.L2645
.L2657:
	lhi	%r2,11
	j	.L2645
.L2659:
	lhi	%r2,13
	j	.L2645
.L2660:
	lhi	%r2,14
	j	.L2645
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
	larl	%r5,.L2671
	keb	%f0,.L2672-.L2671(%r5)
	jhe	.L2670
	cgebr	%r2,5,%f0
	br	%r14
.L2670:
	seb	%f0,.L2672-.L2671(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2671:
.L2672:
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
	larl	%r5,.L2675
	vl	%v4,.L2676-.L2675(%r5),3
	vl	%v6,.L2677-.L2675(%r5),3
	vl	%v2,.L2678-.L2675(%r5),3
	vl	%v3,.L2679-.L2675(%r5),3
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
.L2675:
.L2679:
	.long	12
	.long	13
	.long	14
	.long	15
.L2678:
	.long	8
	.long	9
	.long	10
	.long	11
.L2677:
	.long	4
	.long	5
	.long	6
	.long	7
.L2676:
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
	larl	%r5,.L2682
	vl	%v4,.L2683-.L2682(%r5),3
	vl	%v6,.L2684-.L2682(%r5),3
	vl	%v2,.L2685-.L2682(%r5),3
	vl	%v3,.L2686-.L2682(%r5),3
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
.L2682:
.L2686:
	.long	12
	.long	13
	.long	14
	.long	15
.L2685:
	.long	8
	.long	9
	.long	10
	.long	11
.L2684:
	.long	4
	.long	5
	.long	6
	.long	7
.L2683:
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
	cgije	%r2,0,.L2690
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	sllk	%r5,%r3,1
	nr	%r1,%r3
	cije	%r4,0,.L2688
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r2,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r1,%r0
	cije	%r4,0,.L2688
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r2,3
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r1,%r4
	cije	%r5,0,.L2688
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r1,%r4
	cije	%r5,0,.L2688
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r1,%r5
	cije	%r4,0,.L2688
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
.L2688:
	llgfr	%r2,%r1
	br	%r14
.L2690:
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
	cgije	%r2,0,.L2785
	cgije	%r3,0,.L2785
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srlk	%r4,%r3,1
	nr	%r1,%r2
	srlg	%r5,%r3,1
	cgije	%r5,0,.L2876
	ldgr	%f0,%r12
	.cfi_register 12, 16
	nilf	%r4,1
	sllk	%r12,%r2,2
	lcr	%r4,%r4
	srlg	%r5,%r3,2
	nr	%r4,%r0
	srlk	%r0,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r0,%r2,3
	nr	%r4,%r12
	srlk	%r12,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r12,%r2,4
	nr	%r4,%r0
	srlk	%r0,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r0,%r2,5
	nr	%r4,%r12
	srlk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r12,%r2,6
	nr	%r4,%r0
	srlk	%r0,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r0,%r2,7
	nr	%r4,%r12
	srlk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r12,%r2,8
	nr	%r4,%r0
	srlk	%r0,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r0,%r2,9
	nr	%r4,%r12
	srlk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r12,%r2,10
	nr	%r4,%r0
	srlk	%r0,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r0,%r2,11
	nr	%r4,%r12
	srlk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r12,%r2,12
	nr	%r4,%r0
	srlk	%r0,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r0,%r2,13
	nr	%r4,%r12
	srlk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r12,%r2,14
	nr	%r4,%r0
	srlk	%r0,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r0,%r2,15
	nr	%r4,%r12
	srlk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r12,%r2,16
	nr	%r4,%r0
	srlk	%r0,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r0,%r2,17
	nr	%r4,%r12
	srlk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r12,%r2,18
	nr	%r4,%r0
	srlk	%r0,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r0,%r2,19
	nr	%r4,%r12
	srlk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r12,%r2,20
	nr	%r4,%r0
	srlk	%r0,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r0,%r2,21
	nr	%r4,%r12
	srlk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r12,%r2,22
	nr	%r4,%r0
	srlk	%r0,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r0,%r2,23
	nr	%r4,%r12
	srlk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r12,%r2,24
	nr	%r4,%r0
	srlk	%r0,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r0,%r2,25
	nr	%r4,%r12
	srlk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r12,%r2,26
	nr	%r4,%r0
	srlk	%r0,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,27
	lcr	%r4,%r4
	sllk	%r0,%r2,27
	nr	%r4,%r12
	srlk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r5,0,.L2782
	risbg	%r4,%r12,63,128+63,0
	srlk	%r5,%r3,28
	lcr	%r4,%r4
	sllk	%r12,%r2,28
	nr	%r4,%r0
	srlg	%r0,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L2782
	nilf	%r5,1
	sllk	%r0,%r2,29
	lcr	%r5,%r5
	srlg	%r4,%r3,29
	nr	%r5,%r12
	srlk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r4,0,.L2782
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
.L2782:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2785:
	lhi	%r1,0
.L2876:
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
	clrjhe	%r3,%r2,.L2997
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L2991
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2883
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L2991
.L2885:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2883
	ahik	%r5,%r10,-1
	brct	%r11,.L2960
.L2884:
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
.L2960:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2991
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2883
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2991
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2883
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L2885
.L2991:
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
	cijlh	%r11,0,.L2888
	j	.L2884
.L2883:
	cije	%r0,0,.L2890
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
.L2888:
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r10,0,.L2884
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
	cije	%r11,0,.L2884
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
	cije	%r11,0,.L2884
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
	cije	%r0,0,.L2884
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
	cije	%r0,0,.L2884
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
	cijhe	%r12,0,.L2884
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L2884
.L2997:
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
.L2890:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L2884
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
	cijl	%r3,0,.L3113
	cgije	%r3,0,.L3021
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srak	%r4,%r3,1
	nr	%r1,%r2
	srag	%r5,%r3,1
	cgije	%r5,0,.L3111
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r1,%r4
	sll	%r2,2
	srag	%r3,%r3,2
	lgfr	%r2,%r2
	je	.L3111
	lhi	%r0,0
.L3019:
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
	cgije	%r11,0,.L3020
	nilf	%r4,1
	sllk	%r11,%r2,2
	lcr	%r4,%r4
	srag	%r5,%r3,2
	nr	%r4,%r12
	srak	%r12,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r12,%r2,3
	nr	%r4,%r11
	srak	%r11,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r11,%r2,4
	nr	%r4,%r12
	srak	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r12,%r2,5
	nr	%r4,%r11
	srak	%r11,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r11,%r2,6
	nr	%r4,%r12
	srak	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r12,%r2,7
	nr	%r4,%r11
	srak	%r11,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r11,%r2,8
	nr	%r4,%r12
	srak	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r12,%r2,9
	nr	%r4,%r11
	srak	%r11,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r11,%r2,10
	nr	%r4,%r12
	srak	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r12,%r2,11
	nr	%r4,%r11
	srak	%r11,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r11,%r2,12
	nr	%r4,%r12
	srak	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r12,%r2,13
	nr	%r4,%r11
	srak	%r11,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r11,%r2,14
	nr	%r4,%r12
	srak	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r12,%r2,15
	nr	%r4,%r11
	srak	%r11,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r11,%r2,16
	nr	%r4,%r12
	srak	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r12,%r2,17
	nr	%r4,%r11
	srak	%r11,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r11,%r2,18
	nr	%r4,%r12
	srak	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r12,%r2,19
	nr	%r4,%r11
	srak	%r11,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r11,%r2,20
	nr	%r4,%r12
	srak	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r12,%r2,21
	nr	%r4,%r11
	srak	%r11,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r11,%r2,22
	nr	%r4,%r12
	srak	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r12,%r2,23
	nr	%r4,%r11
	srak	%r11,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r11,%r2,24
	nr	%r4,%r12
	srak	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r12,%r2,25
	nr	%r4,%r11
	srak	%r11,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L3020
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r11,%r2,26
	nr	%r4,%r12
	srak	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L3020
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
.L3020:
	cije	%r0,0,.L3017
	lcr	%r1,%r1
.L3017:
	lgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3113:
	risbg	%r1,%r3,63,128+63,0
	sllk	%r4,%r2,1
	lcr	%r3,%r3
	lcr	%r1,%r1
	srak	%r5,%r3,1
	nr	%r1,%r2
	cije	%r5,0,.L3110
	risbg	%r0,%r5,63,128+63,0
	sll	%r2,2
	lcr	%r5,%r0
	lgfr	%r2,%r2
	nr	%r5,%r4
	lhi	%r0,1
	srak	%r4,%r3,2
	ar	%r1,%r5
	lgfr	%r3,%r4
	cijlh	%r4,0,.L3019
.L3110:
	lcr	%r1,%r1
	j	.L3111
.L3021:
	lhi	%r1,0
.L3111:
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
	cgijl	%r2,0,.L3235
	lhi	%r1,1
	lhi	%r12,0
.L3116:
	cgijhe	%r3,0,.L3117
	lcgr	%r3,%r3
	lr	%r12,%r1
.L3117:
	lr	%r0,%r2
	lr	%r4,%r3
	clrjle	%r2,%r3,.L3236
	lhi	%r5,1
	cijl	%r3,0,.L3230
	sllk	%r1,%r3,1
	lhi	%r3,2
	clrjle	%r2,%r1,.L3120
	lhi	%r5,2
	lr	%r4,%r1
	lhi	%r2,11
	cijl	%r1,0,.L3230
.L3122:
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3120
	brct	%r2,.L3198
.L3129:
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
.L3198:
	.cfi_restore_state
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3230
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3120
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3230
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L3120
	lr	%r5,%r3
	lr	%r4,%r1
	cijhe	%r1,0,.L3122
.L3230:
	srk	%r10,%r0,%r4
	clr	%r0,%r4
	lr	%r2,%r5
	locrhe	%r0,%r10
	lochinhe	%r2,0
	srlk	%r11,%r5,1
	srlk	%r10,%r4,1
	cijlh	%r11,0,.L3125
.L3119:
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
.L3120:
	.cfi_restore_state
	cije	%r3,0,.L3129
	srk	%r11,%r0,%r1
	clr	%r0,%r1
	lr	%r2,%r3
	lochinhe	%r2,0
	locrhe	%r0,%r11
	llgtr	%r10,%r4
	llgtr	%r11,%r5
	lr	%r4,%r1
	lr	%r5,%r3
.L3125:
	srk	%r1,%r0,%r10
	clr	%r0,%r10
	lochinhe	%r11,0
	locrnhe	%r1,%r0
	srlk	%r10,%r4,2
	or	%r2,%r11
	srlk	%r0,%r5,2
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,3
	or	%r2,%r0
	srlk	%r0,%r5,3
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,4
	or	%r2,%r0
	srlk	%r0,%r4,4
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,5
	or	%r2,%r10
	srlk	%r10,%r5,5
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,6
	or	%r2,%r10
	srlk	%r10,%r4,6
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,7
	or	%r2,%r0
	srlk	%r0,%r5,7
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,8
	or	%r2,%r0
	srlk	%r0,%r4,8
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,9
	or	%r2,%r10
	srlk	%r10,%r5,9
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,10
	or	%r2,%r10
	srlk	%r10,%r4,10
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,11
	or	%r2,%r0
	srlk	%r0,%r5,11
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,12
	or	%r2,%r0
	srlk	%r0,%r4,12
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,13
	or	%r2,%r10
	srlk	%r10,%r5,13
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,14
	or	%r2,%r10
	srlk	%r10,%r4,14
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,15
	or	%r2,%r0
	srlk	%r0,%r5,15
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,16
	or	%r2,%r0
	srlk	%r0,%r4,16
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,17
	or	%r2,%r10
	srlk	%r10,%r5,17
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,18
	or	%r2,%r10
	srlk	%r10,%r4,18
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,19
	or	%r2,%r0
	srlk	%r0,%r5,19
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,20
	or	%r2,%r0
	srlk	%r0,%r4,20
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,21
	or	%r2,%r10
	srlk	%r10,%r5,21
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,22
	or	%r2,%r10
	srlk	%r10,%r4,22
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,23
	or	%r2,%r0
	srlk	%r0,%r5,23
	cije	%r0,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,24
	or	%r2,%r0
	srlk	%r0,%r4,24
	cije	%r10,0,.L3119
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,25
	or	%r2,%r10
	srlk	%r10,%r5,25
	cije	%r10,0,.L3119
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,26
	or	%r2,%r10
	srlk	%r10,%r4,26
	cije	%r0,0,.L3119
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,27
	or	%r2,%r0
	srlk	%r1,%r5,27
	cije	%r1,0,.L3119
	srk	%r0,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r1,0
	locrnhe	%r0,%r3
	srlk	%r10,%r5,28
	or	%r2,%r1
	srlk	%r3,%r4,28
	cije	%r10,0,.L3119
	srk	%r1,%r0,%r3
	clr	%r0,%r3
	lochinhe	%r10,0
	locrnhe	%r1,%r0
	srlk	%r11,%r4,29
	or	%r2,%r10
	srlk	%r0,%r5,29
	cije	%r0,0,.L3119
	srk	%r10,%r1,%r11
	clr	%r1,%r11
	lochinhe	%r0,0
	locrnhe	%r10,%r1
	srlk	%r3,%r5,30
	or	%r2,%r0
	srlk	%r1,%r4,30
	cije	%r3,0,.L3119
	srk	%r0,%r10,%r1
	clr	%r10,%r1
	lochinhe	%r3,0
	locrnhe	%r0,%r10
	srl	%r4,31
	or	%r2,%r3
	cijhe	%r5,0,.L3119
	slr	%r0,%r4
	lhi	%r5,0
	alcr	%r5,%r5
	or	%r2,%r5
	j	.L3119
.L3235:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L3116
.L3236:
	xr	%r2,%r3
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	j	.L3119
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
	cgijl	%r2,0,.L3363
	lpgr	%r1,%r3
	lhi	%r0,0
	lr	%r3,%r2
	lr	%r4,%r1
	clrjle	%r2,%r1,.L3364
.L3240:
	lhi	%r2,1
	cijl	%r4,0,.L3357
	sllk	%r1,%r4,1
	lhi	%r2,2
	clrjhe	%r1,%r3,.L3244
	lr	%r4,%r1
	lhi	%r5,11
	cijl	%r1,0,.L3357
.L3246:
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3244
	brct	%r5,.L3324
.L3361:
	llgfr	%r2,%r3
	cije	%r0,0,.L3360
	lcgr	%r2,%r2
.L3360:
	br	%r14
.L3324:
	lr	%r4,%r1
	cijl	%r1,0,.L3357
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3244
	lr	%r4,%r1
	cijl	%r1,0,.L3357
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L3244
	lr	%r4,%r1
	cijhe	%r1,0,.L3246
.L3357:
	srk	%r1,%r3,%r4
	clr	%r4,%r3
	srlk	%r5,%r4,1
	locrle	%r3,%r1
	srlk	%r1,%r2,1
	cijlh	%r1,0,.L3249
	j	.L3361
.L3244:
	cije	%r2,0,.L3361
	srk	%r5,%r3,%r1
	clr	%r1,%r3
	locrle	%r3,%r5
	llgtr	%r5,%r4
	lr	%r4,%r1
.L3249:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srk	%r12,%r3,%r5
	clr	%r3,%r5
	srlk	%r1,%r4,2
	locrhe	%r3,%r12
	srlk	%r5,%r2,2
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,3
	locrhe	%r3,%r12
	srlk	%r1,%r4,3
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,4
	locrhe	%r3,%r12
	srlk	%r1,%r4,4
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,5
	locrhe	%r3,%r12
	srlk	%r1,%r4,5
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,6
	locrhe	%r3,%r12
	srlk	%r1,%r4,6
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,7
	locrhe	%r3,%r12
	srlk	%r1,%r4,7
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,8
	locrhe	%r3,%r12
	srlk	%r1,%r4,8
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,9
	locrhe	%r3,%r12
	srlk	%r1,%r4,9
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,10
	locrhe	%r3,%r12
	srlk	%r1,%r4,10
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,11
	locrhe	%r3,%r12
	srlk	%r1,%r4,11
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,12
	locrhe	%r3,%r12
	srlk	%r1,%r4,12
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,13
	locrhe	%r3,%r12
	srlk	%r1,%r4,13
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,14
	locrhe	%r3,%r12
	srlk	%r1,%r4,14
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,15
	locrhe	%r3,%r12
	srlk	%r1,%r4,15
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,16
	locrhe	%r3,%r12
	srlk	%r1,%r4,16
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,17
	locrhe	%r3,%r12
	srlk	%r1,%r4,17
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,18
	locrhe	%r3,%r12
	srlk	%r1,%r4,18
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,19
	locrhe	%r3,%r12
	srlk	%r1,%r4,19
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,20
	locrhe	%r3,%r12
	srlk	%r1,%r4,20
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,21
	locrhe	%r3,%r12
	srlk	%r1,%r4,21
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,22
	locrhe	%r3,%r12
	srlk	%r1,%r4,22
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,23
	locrhe	%r3,%r12
	srlk	%r1,%r4,23
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,24
	locrhe	%r3,%r12
	srlk	%r1,%r4,24
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,25
	locrhe	%r3,%r12
	srlk	%r1,%r4,25
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,26
	locrhe	%r3,%r12
	srlk	%r1,%r4,26
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,27
	locrhe	%r3,%r12
	srlk	%r1,%r4,27
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,28
	locrhe	%r3,%r12
	srlk	%r1,%r4,28
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,29
	locrhe	%r3,%r12
	srlk	%r1,%r4,29
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,30
	locrhe	%r3,%r12
	srlk	%r1,%r4,30
	cije	%r5,0,.L3245
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srl	%r4,31
	locrhe	%r3,%r12
	cijhe	%r2,0,.L3245
	srk	%r2,%r3,%r4
	clr	%r3,%r4
	locrhe	%r3,%r2
.L3245:
	llgfr	%r2,%r3
	cije	%r0,0,.L3238
	lcgr	%r2,%r2
.L3238:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3363:
	lpgr	%r5,%r3
	lcgr	%r2,%r2
	lr	%r4,%r5
	lr	%r3,%r2
	lhi	%r0,1
	clrjh	%r2,%r5,.L3240
	srk	%r0,%r2,%r5
	cr	%r2,%r5
	locre	%r2,%r0
	llgfr	%r2,%r2
	lcgr	%r2,%r2
	br	%r14
.L3364:
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
	clrjhe	%r3,%r2,.L3455
	tmll	%r3,32768
	jne	.L3369
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r1,%r3,48,128+62,1
	clrjle	%r2,%r1,.L3376
	tmll	%r1,32768
	jne	.L3376
	risbgn	%r1,%r3,48,128+61,2
	clrjle	%r2,%r1,.L3378
	tmll	%r1,32768
	jne	.L3378
	risbgn	%r1,%r3,48,128+60,3
	clrjle	%r2,%r1,.L3380
	tmll	%r1,32768
	jne	.L3380
	risbgn	%r1,%r3,48,128+59,4
	clrjle	%r2,%r1,.L3382
	tmll	%r1,32768
	jne	.L3382
	risbgn	%r1,%r3,48,128+58,5
	clrjle	%r2,%r1,.L3384
	tmll	%r1,32768
	jne	.L3384
	risbgn	%r1,%r3,48,128+57,6
	clrjle	%r2,%r1,.L3386
	tmll	%r1,32768
	jne	.L3386
	risbgn	%r1,%r3,48,128+56,7
	clrjle	%r2,%r1,.L3388
	tmll	%r1,32768
	jne	.L3388
	risbgn	%r1,%r3,48,128+55,8
	clrjle	%r2,%r1,.L3390
	tmll	%r1,32768
	jne	.L3390
	risbgn	%r1,%r3,48,128+54,9
	clrjle	%r2,%r1,.L3392
	tmll	%r1,32768
	jne	.L3392
	risbgn	%r1,%r3,48,128+53,10
	clrjle	%r2,%r1,.L3394
	tmll	%r1,32768
	jne	.L3394
	risbgn	%r1,%r3,48,128+52,11
	clrjle	%r2,%r1,.L3396
	tmll	%r1,32768
	jne	.L3396
	risbgn	%r1,%r3,48,128+51,12
	clrjle	%r2,%r1,.L3398
	tmll	%r1,32768
	jne	.L3398
	risbgn	%r1,%r3,48,128+50,13
	clrjle	%r2,%r1,.L3400
	tmll	%r1,32768
	jne	.L3400
	risbgn	%r1,%r3,48,128+49,14
	clrjle	%r2,%r1,.L3402
	tmll	%r1,32768
	jne	.L3402
	risbgn	%r11,%r3,48,128+48,15
	clrjle	%r2,%r11,.L3403
	lhi	%r3,0
	cgijlh	%r11,0,.L3456
.L3372:
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
	lhi	%r0,2
.L3371:
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	cije	%r12,0,.L3372
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
	crje	%r0,%r1,.L3372
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
.L3378:
	.cfi_restore_state
	lhi	%r0,4
	j	.L3371
.L3380:
	lhi	%r0,8
	j	.L3371
.L3382:
	lhi	%r0,16
	j	.L3371
.L3392:
	lhi	%r0,512
	j	.L3371
.L3384:
	lhi	%r0,32
	j	.L3371
.L3386:
	lhi	%r0,64
	j	.L3371
.L3388:
	lhi	%r0,128
	j	.L3371
.L3390:
	lhi	%r0,256
	j	.L3371
.L3455:
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
.L3452:
	ltgr	%r4,%r4
	locrne	%r3,%r5
	llghr	%r2,%r3
	br	%r14
.L3394:
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r0,1024
	j	.L3371
.L3396:
	lhi	%r0,2048
	j	.L3371
.L3398:
	lhi	%r0,4096
	j	.L3371
.L3400:
	lhi	%r0,8192
	j	.L3371
.L3402:
	lhi	%r0,16384
	j	.L3371
.L3456:
	llill	%r0,32768
	llill	%r1,32768
	j	.L3371
.L3403:
	llill	%r1,32768
	llill	%r0,32768
	j	.L3371
.L3369:
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r3,1
	llghr	%r5,%r2
	j	.L3452
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
	clgrjhe	%r3,%r2,.L3491
	lghi	%r1,1
	lhi	%r0,16
.L3459:
	risbg	%r5,%r3,32,128+32,0
	jne	.L3464
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3461
	risbg	%r5,%r3,32,128+32,0
	jne	.L3464
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3461
	risbg	%r5,%r3,32,128+32,0
	jne	.L3464
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3461
	risbg	%r5,%r3,32,128+32,0
	jne	.L3464
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L3461
	brct	%r0,.L3459
.L3489:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L3461:
	cgije	%r1,0,.L3489
.L3464:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r5,0
.L3465:
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
	cgijlh	%r1,0,.L3465
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	locgre	%r2,%r5
	br	%r14
.L3491:
	sgrk	%r1,%r2,%r3
	slgrk	%r3,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llgcr	%r5,%r5
	locgrne	%r2,%r1
	j	.L3489
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
	je	.L3494
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L3495:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L3493:
	br	%r14
.L3494:
	cgije	%r3,0,.L3493
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L3495
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
	je	.L3500
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3501:
	lgr	%r0,%r4
.L3502:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L3500:
	cgije	%r4,0,.L3502
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L3501
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
	je	.L3508
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L3509:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L3507:
	br	%r14
.L3508:
	cgije	%r3,0,.L3507
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L3509
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
	je	.L3514
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L3515:
	lgr	%r0,%r4
.L3516:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3514:
	cgije	%r4,0,.L3516
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3515
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
	jl	.L3531
	jh	.L3532
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3531:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3532:
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
	jl	.L3538
	jh	.L3539
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3538:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3539:
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
	jl	.L3544
	jh	.L3545
	clgr	%r4,%r1
	lhi	%r0,1
	lochih	%r0,2
	lochinhe	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3544:
	lhi	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3545:
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
	srl	%r1,0(%r2)
	nilf	%r1,3
	nnrk	%r0,%r1,%r1
	srl	%r1,1
	ar	%r5,%r2
	nilf	%r0,1
	lhi	%r4,2
	sr	%r4,%r1
	lcr	%r1,%r0
	nr	%r1,%r4
	ar	%r1,%r5
	lgfr	%r2,%r1
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
	jne	.L3554
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
.L3554:
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
	larl	%r5,.L3564
	tmll	%r3,32
	je	.L3559
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r4,0
	srlk	%r0,%r2,4064(%r3)
.L3560:
	ld	%v0,.L3565-.L3564(%r5)
	vlvgf	%v0,%r4,0
	vlvgf	%v0,%r0,1
	vlgvg	%r2,%v0,0
.L3558:
	br	%r14
.L3559:
	cgije	%r3,0,.L3558
	risbgn	%r4,%r2,64-32,128+63,0+32
	lhi	%r1,32
	srl	%r2,0(%r3)
	sr	%r1,%r3
	sllk	%r0,%r4,0(%r1)
	srl	%r4,0(%r3)
	or	%r0,%r2
	j	.L3560
	.section	.rodata
	.align	8
.L3564:
.L3565:
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
	je	.L3567
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3568:
	lgr	%r0,%r4
.L3569:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3567:
	cgije	%r4,0,.L3569
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3568
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
	larl	%r5,.L3597
	srlg	%r1,%r2,1
	ng	%r1,.L3598-.L3597(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L3599-.L3597(%r5)
	ng	%r0,.L3599-.L3597(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3600-.L3597(%r5)
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
.L3597:
.L3600:
	.quad	1085102592571150095
.L3599:
	.quad	3689348814741910323
.L3598:
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
	larl	%r13,.L3605
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	lg	%r4,0(%r2)
	lg	%r5,8(%r2)
	vl	%v0,.L3606-.L3605(%r13),3
	srlg	%r2,%r4,1
	srlg	%r3,%r5,1
	rosbg	%r3,%r4,0,0,63
	vlvgp	%v4,%r2,%r3
	vlvgp	%v5,%r4,%r5
	vn	%v3,%v4,%v0
	vsq	%v7,%v5,%v3
	vst	%v7,160(%r15),3
	vl	%v2,.L3607-.L3605(%r13),3
	vl	%v17,.L3608-.L3605(%r13),3
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
.L3605:
.L3608:
	.quad	1085102592571150095
	.quad	1085102592571150095
.L3607:
	.quad	3689348814741910323
	.quad	3689348814741910323
.L3606:
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
	larl	%r5,.L3619
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L3620-.L3619(%r5)
	tmll	%r2,1
	je	.L3610
.L3612:
	mdbr	%f0,%f2
.L3610:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3611
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L3612
.L3617:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3612
	j	.L3617
.L3611:
	cijl	%r2,0,.L3618
	br	%r14
.L3618:
	ld	%f4,.L3620-.L3619(%r5)
	wfddb	%v0,%v4,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3619:
.L3620:
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
	larl	%r5,.L3631
	ldr	%f2,%f0
	lgr	%r1,%r2
	lde	%f0,.L3632-.L3631(%r5)
	tmll	%r2,1
	je	.L3622
.L3624:
	meebr	%f0,%f2
.L3622:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3623
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L3624
.L3629:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3624
	j	.L3629
.L3623:
	cijl	%r2,0,.L3630
	br	%r14
.L3630:
	lde	%f4,.L3632-.L3631(%r5)
	wfdsb	%v0,%v4,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3631:
.L3632:
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
	jl	.L3635
	jh	.L3636
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3635:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3636:
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
	jl	.L3642
	jh	.L3643
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3642:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3643:
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
	jl	.L3648
	jh	.L3649
	clgr	%r4,%r1
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3648:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3649:
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
