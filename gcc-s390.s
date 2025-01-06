	.file	"mini-libc.c"
	.machinemode zarch
	.machine "arch14"
.text
	.align	8
	.align	16
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	ldgr	%f2,%r12
	.cfi_register 12, 17
	clr	%r2,%r3
	jle	.L2
	cije	%r4,0,.L3
	ahik	%r1,%r4,-1
	clijle	%r1,30,.L119
	ar	%r1,%r2
	ahik	%r0,%r4,-2
	ar	%r0,%r3
	sr	%r1,%r0
	ahi	%r1,14
	clijle	%r1,14,.L119
	risbg	%r8,%r4,32,128+59,0
	ahik	%r12,%r4,-16
	ahik	%r5,%r8,-16
	ark	%r11,%r3,%r12
	lcr	%r9,%r8
	ar	%r12,%r2
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L97
	cije	%r10,1,.L120
	cije	%r10,2,.L121
	vl	%v13,0(%r11)
	lhi	%r1,-16
	vst	%v13,0(%r12)
.L121:
	vl	%v15,0(%r1,%r11)
	vst	%v15,0(%r1,%r12)
	ahi	%r1,-16
.L120:
	vl	%v16,0(%r1,%r11)
	vst	%v16,0(%r1,%r12)
	ahi	%r1,-16
	crje	%r1,%r9,.L176
.L97:
	srl	%r5,2
	chi	%r5,2
	jle	.L195
	ahi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L5:
	ahik	%r10,%r1,-48
	ahik	%r9,%r1,-32
	ahik	%r8,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r5,.L5
	ahik	%r10,%r1,-48
	ahik	%r9,%r1,-32
	ahik	%r8,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
.L176:
	ar	%r1,%r4
	risbg	%r5,%r4,60,128+63,0
	ar	%r3,%r1
	ar	%r1,%r2
	tmll	%r4,15
	je	.L3
	icy	%r4,-1(%r3)
	stcy	%r4,-1(%r1)
	cije	%r5,1,.L3
	icy	%r12,-2(%r3)
	stcy	%r12,-2(%r1)
	cije	%r5,2,.L3
	icy	%r11,-3(%r3)
	stcy	%r11,-3(%r1)
	cije	%r5,3,.L3
	icy	%r0,-4(%r3)
	stcy	%r0,-4(%r1)
	cije	%r5,4,.L3
	icy	%r8,-5(%r3)
	stcy	%r8,-5(%r1)
	cije	%r5,5,.L3
	icy	%r9,-6(%r3)
	stcy	%r9,-6(%r1)
	cije	%r5,6,.L3
	icy	%r10,-7(%r3)
	stcy	%r10,-7(%r1)
	cije	%r5,7,.L3
	icy	%r4,-8(%r3)
	stcy	%r4,-8(%r1)
	cije	%r5,8,.L3
	icy	%r12,-9(%r3)
	stcy	%r12,-9(%r1)
	cije	%r5,9,.L3
	icy	%r11,-10(%r3)
	stcy	%r11,-10(%r1)
	cije	%r5,10,.L3
	icy	%r0,-11(%r3)
	stcy	%r0,-11(%r1)
	cije	%r5,11,.L3
	icy	%r8,-12(%r3)
	stcy	%r8,-12(%r1)
	cije	%r5,12,.L3
	icy	%r9,-13(%r3)
	stcy	%r9,-13(%r1)
	cije	%r5,13,.L3
	icy	%r10,-14(%r3)
	stcy	%r10,-14(%r1)
	cije	%r5,14,.L3
	icy	%r3,-15(%r3)
	stcy	%r3,-15(%r1)
.L3:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	br	%r14
.L2:
	.cfi_restore_state
	je	.L3
	cije	%r4,0,.L3
	ahik	%r1,%r4,-1
	clijle	%r1,30,.L16
	ahik	%r0,%r3,1
	srk	%r5,%r2,%r0
	clijle	%r5,14,.L16
	risbg	%r8,%r4,32,128+59,0
	ahik	%r5,%r8,-16
	lhi	%r1,0
	srl	%r5,4
	ahi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L115
	cije	%r12,1,.L124
	cije	%r12,2,.L125
	vl	%v0,0(%r3)
	lhi	%r1,16
	vst	%v0,0(%r2)
.L125:
	vl	%v8,0(%r1,%r3)
	vst	%v8,0(%r1,%r2)
	ahi	%r1,16
.L124:
	vl	%v10,0(%r1,%r3)
	vst	%v10,0(%r1,%r2)
	ahi	%r1,16
	crje	%r1,%r8,.L177
.L115:
	srl	%r5,2
	chi	%r5,2
	jle	.L197
	ahi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L10:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	ahi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brct	%r5,.L10
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	ahi	%r1,64
.L177:
	ar	%r3,%r1
	ark	%r9,%r2,%r1
	srk	%r10,%r4,%r1
	crje	%r4,%r1,.L3
	mvc	0(1,%r9),0(%r3)
	cije	%r10,1,.L3
	mvc	1(1,%r9),1(%r3)
	cije	%r10,2,.L3
	mvc	2(1,%r9),2(%r3)
	cije	%r10,3,.L3
	mvc	3(1,%r9),3(%r3)
	cije	%r10,4,.L3
	mvc	4(1,%r9),4(%r3)
	cije	%r10,5,.L3
	mvc	5(1,%r9),5(%r3)
	cije	%r10,6,.L3
	mvc	6(1,%r9),6(%r3)
	cije	%r10,7,.L3
	mvc	7(1,%r9),7(%r3)
	cije	%r10,8,.L3
	mvc	8(1,%r9),8(%r3)
	cije	%r10,9,.L3
	mvc	9(1,%r9),9(%r3)
	cije	%r10,10,.L3
	mvc	10(1,%r9),10(%r3)
	cije	%r10,11,.L3
	mvc	11(1,%r9),11(%r3)
	cije	%r10,12,.L3
	mvc	12(1,%r9),12(%r3)
	cije	%r10,13,.L3
	mvc	13(1,%r9),13(%r3)
	cije	%r10,14,.L3
	mvc	14(1,%r9),14(%r3)
	j	.L3
.L195:
	vl	%v18,0(%r1,%r11)
	ahik	%r8,%r1,-16
	ahik	%r9,%r1,-32
	vst	%v18,0(%r1,%r12)
	ahik	%r10,%r1,-48
	ahi	%r1,-64
	vl	%v20,0(%r8,%r11)
	vst	%v20,0(%r8,%r12)
	vl	%v22,0(%r9,%r11)
	vst	%v22,0(%r9,%r12)
	vl	%v17,0(%r10,%r11)
	vst	%v17,0(%r10,%r12)
	brct	%r5,.L195
	j	.L176
.L197:
	vl	%v12,0(%r1,%r3)
	vst	%v12,0(%r1,%r2)
	vl	%v14,16(%r1,%r3)
	vst	%v14,16(%r1,%r2)
	vl	%v9,32(%r1,%r3)
	vst	%v9,32(%r1,%r2)
	vl	%v11,48(%r1,%r3)
	vst	%v11,48(%r1,%r2)
	ahi	%r1,64
	brct	%r5,.L197
	j	.L177
.L119:
	ahik	%r12,%r4,-1
	lr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L88
	cije	%r5,1,.L122
	cije	%r5,2,.L123
	icy	%r11,-1(%r4,%r3)
	stcy	%r11,-1(%r4,%r2)
	lr	%r4,%r12
.L123:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	ahi	%r4,-1
.L122:
	icy	%r8,-1(%r4,%r3)
	stcy	%r8,-1(%r4,%r2)
	brct	%r4,.L88
	j	.L3
.L88:
	srl	%r1,2
	chi	%r1,2
	jle	.L194
	ahi	%r1,-1
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
.L7:
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r5,-3(%r4,%r3)
	stcy	%r5,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	ahi	%r4,-4
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	brct	%r1,.L7
	icy	%r1,-2(%r4,%r3)
	stcy	%r1,-2(%r4,%r2)
	icy	%r1,-3(%r4,%r3)
	stcy	%r1,-3(%r4,%r2)
	icy	%r1,-4(%r4,%r3)
	stcy	%r1,-4(%r4,%r2)
	j	.L3
.L16:
	lhi	%r1,0
	lr	%r11,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L106
	cije	%r0,1,.L126
	cije	%r0,2,.L127
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L127:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L126:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r1,1
	crje	%r4,%r1,.L3
.L106:
	srlk	%r4,%r11,2
	chi	%r4,2
	jle	.L196
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L13:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ahi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L13
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L3
.L194:
	icy	%r9,-1(%r4,%r3)
	stcy	%r9,-1(%r4,%r2)
	icy	%r10,-2(%r4,%r3)
	stcy	%r10,-2(%r4,%r2)
	icy	%r12,-3(%r4,%r3)
	stcy	%r12,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	ahi	%r4,-4
	brct	%r1,.L194
	j	.L3
.L196:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r9,1(%r1,%r3)
	stc	%r9,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r11,3(%r1,%r3)
	stc	%r11,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L196
	j	.L3
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	8
	.align	16
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	llcr	%r4,%r4
	cije	%r5,0,.L205
	ahik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L223
.L212:
	srlk	%r1,%r5,1
.L203:
	llgc	%r5,0(%r3)
	ahik	%r0,%r2,1
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L220
	llgc	%r5,1(%r3)
	lr	%r2,%r0
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L220
	ahi	%r3,2
	ahi	%r2,1
	brct	%r1,.L203
.L205:
	lhi	%r2,0
	br	%r14
.L223:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L220
	ahi	%r3,1
	ahi	%r2,1
	cijlh	%r0,0,.L212
	j	.L205
.L220:
	ahi	%r2,1
	br	%r14
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	8
	.align	16
.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	llcr	%r3,%r3
	cije	%r4,0,.L229
	ahik	%r0,%r4,-1
	lr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L236
	cije	%r5,1,.L247
	cije	%r5,2,.L248
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L225
	ahi	%r2,1
	lr	%r4,%r0
.L248:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L225
	ahi	%r2,1
	ahi	%r4,-1
.L247:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L225
	ahi	%r2,1
	cije	%r4,1,.L229
.L236:
	srlk	%r4,%r1,2
.L226:
	llc	%r0,0(%r2)
	ahik	%r1,%r2,1
	crje	%r0,%r3,.L258
	llc	%r5,0(%r1)
	lr	%r2,%r1
	crje	%r5,%r3,.L259
	llc	%r0,1(%r2)
	ahi	%r2,1
	crje	%r0,%r3,.L225
	llc	%r5,2(%r1)
	ahik	%r2,%r1,2
	crje	%r5,%r3,.L225
	ahik	%r2,%r1,3
	brct	%r4,.L226
.L229:
	lhi	%r2,0
.L225:
	br	%r14
.L258:
	br	%r14
.L259:
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	8
	.align	16
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	cije	%r4,0,.L290
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ahik	%r12,%r4,-1
	lr	%r0,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L273
	cije	%r1,1,.L284
	cije	%r1,2,.L285
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L292
	lr	%r4,%r12
	ahi	%r2,1
	ahi	%r3,1
.L285:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L292
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L284:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L292
	ahi	%r2,1
	ahi	%r3,1
	cije	%r4,1,.L266
.L273:
	srlk	%r4,%r0,2
.L262:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L292
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	crjlh	%r1,%r5,.L292
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	crjlh	%r1,%r5,.L292
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	ahi	%r2,4
	crjlh	%r1,%r5,.L292
	ahi	%r3,4
	brct	%r4,.L262
.L266:
	lhi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L292:
	.cfi_restore_state
	srk	%r2,%r1,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L290:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	8
	.align	16
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	stm	%r12,%r15,80(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-16(%r15)
	.cfi_def_cfa_offset 112
	lr	%r12,%r2
	cije	%r4,0,.L301
	brasl	%r14,memcpy
.L301:
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.align	8
	.align	16
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB5:
	.cfi_startproc
	ahi	%r4,-1
	ark	%r1,%r2,%r4
	llcr	%r3,%r3
	ahi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L316
	llc	%r0,0(%r1)
	lr	%r2,%r1
	ahi	%r1,-1
	crje	%r0,%r3,.L329
	cije	%r5,1,.L316
	cije	%r5,2,.L320
	llc	%r5,0(%r1)
	lr	%r2,%r1
	ahi	%r1,-1
	crje	%r5,%r3,.L329
.L320:
	llc	%r0,0(%r1)
	lr	%r2,%r1
	ahi	%r1,-1
	crje	%r0,%r3,.L329
.L316:
	srl	%r4,2
	ahi	%r4,1
	brct	%r4,.L330
	lhi	%r2,0
	br	%r14
.L330:
	llc	%r5,0(%r1)
	lr	%r2,%r1
	ahik	%r0,%r1,-1
	crje	%r5,%r3,.L335
	llc	%r5,-1(%r1)
	lr	%r2,%r0
	ahik	%r0,%r1,-2
	crje	%r5,%r3,.L329
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L333:
	llc	%r12,-2(%r1)
	lr	%r2,%r0
	ahik	%r5,%r1,-3
	crje	%r12,%r3,.L307
	llc	%r0,-3(%r1)
	lr	%r2,%r5
	ahi	%r1,-4
	crje	%r0,%r3,.L307
	brct	%r4,.L310
	lhi	%r2,0
.L307:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L310:
	.cfi_restore_state
	llc	%r12,0(%r1)
	lr	%r2,%r1
	ahik	%r0,%r1,-1
	crje	%r12,%r3,.L307
	llc	%r5,-1(%r1)
	lr	%r2,%r0
	ahik	%r0,%r1,-2
	crjlh	%r5,%r3,.L333
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L329:
	br	%r14
.L335:
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	8
	.align	16
.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	cije	%r4,0,.L342
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lghi	%r12,0
	lghi	%r13,0
	lr	%r0,%r2
	lr	%r1,%r4
	mvcle	%r0,%r12,0(%r3)
	jo	.-4
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L342:
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	8
	.align	16
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgije	%r1,0,.L347
.L348:
	llgc	%r0,1(%r3)
	ahi	%r3,1
	stc	%r0,1(%r2)
	ahi	%r2,1
	cgijlh	%r0,0,.L348
.L347:
	br	%r14
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	8
	.align	16
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB8:
	.cfi_startproc
	cli	0(%r2),0
	llcr	%r3,%r3
	llc	%r1,0(%r2)
	jne	.L355
	br	%r14
.L357:
	ahi	%r2,1
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L355:
	crjlh	%r1,%r3,.L357
	br	%r14
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	8
	.align	16
.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
.L365:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L364
	ahi	%r2,1
	cijlh	%r1,0,.L365
	lhi	%r2,0
.L364:
	br	%r14
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	8
	.align	16
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	lhi	%r4,1
	crje	%r1,%r5,.L369
	j	.L370
.L371:
	llc	%r1,0(%r4,%r2)
	ahi	%r4,1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r1,%r5,.L370
.L369:
	cijlh	%r1,0,.L371
.L370:
	srk	%r2,%r1,%r5
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	8
	.align	16
.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	cli	0(%r2),0
	je	.L382
	vlbb	%v0,1(%r2),6
	ahik	%r1,%r2,1
	lcbb	%r3,0(%r1),6
	vzero	%v2
	vfeebs	%v5,%v0,%v2
	vlgvf	%r4,%v5,1
	clrjl	%r4,%r3,.L381
	ahik	%r1,%r2,17
	nill	%r1,65520
	vl	%v1,0(%r1),4
	vfeebs	%v5,%v1,%v2
	jl	.L381
.L380:
	vl	%v3,16(%r1),4
	ahi	%r1,16
	vfeebs	%v5,%v3,%v2
	jnl	.L380
.L381:
	vlgvf	%r0,%v5,1
	ar	%r1,%r0
	srk	%r2,%r1,%r2
	br	%r14
.L382:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	8
	.align	16
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	cije	%r4,0,.L393
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L397
.L389:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L388
	ahik	%r0,%r3,1
	brct	%r4,.L391
.L388:
	srk	%r2,%r1,%r5
	br	%r14
.L391:
	crjlh	%r5,%r1,.L388
	ahi	%r2,1
	cli	0(%r2),0
	llc	%r1,0(%r2)
	je	.L398
	lr	%r3,%r0
	j	.L389
.L393:
	lhi	%r2,0
	br	%r14
.L398:
	llc	%r5,1(%r3)
	lhi	%r1,0
	srk	%r2,%r1,%r5
	br	%r14
.L397:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L388
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	8
	.align	16
.globl swab
	.type	swab, @function
swab:
.LFB13:
	.cfi_startproc
	cijle	%r4,1,.L425
	ldgr	%f8,%r10
	.cfi_register 10, 24
	ldgr	%f7,%r11
	.cfi_register 11, 23
	ldgr	%f5,%r12
	.cfi_register 12, 22
	srlk	%r10,%r4,1
	ahik	%r1,%r4,-2
	clijle	%r1,29,.L402
	risbg	%r12,%r4,32,128+59,0
	ahik	%r5,%r12,-16
	srlk	%r0,%r4,4
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r11,%r5,62,128+63,0
	je	.L411
	cije	%r11,1,.L415
	cije	%r11,2,.L416
	vlbrh	%v0,0(%r2)
	lhi	%r1,16
	vst	%v0,0(%r3)
.L416:
	vlbrh	%v2,0(%r1,%r2)
	vst	%v2,0(%r1,%r3)
	ahi	%r1,16
.L415:
	vlbrh	%v1,0(%r1,%r2)
	vst	%v1,0(%r1,%r3)
	ahi	%r1,16
	crje	%r1,%r12,.L421
.L411:
	srl	%r5,2
.L403:
	vlbrh	%v3,0(%r1,%r2)
	vlbrh	%v10,16(%r1,%r2)
	vlbrh	%v12,32(%r1,%r2)
	vlbrh	%v14,48(%r1,%r2)
	vst	%v3,0(%r1,%r3)
	vst	%v10,16(%r1,%r3)
	vst	%v12,32(%r1,%r3)
	vst	%v14,48(%r1,%r3)
	ahi	%r1,64
	brct	%r5,.L403
.L421:
	ar	%r3,%r12
	ar	%r2,%r12
	sllk	%r12,%r0,4
	sll	%r0,3
	sr	%r4,%r12
	crje	%r10,%r0,.L400
.L402:
	lrvh	%r10,0(%r2)
	sth	%r10,0(%r3)
	cijle	%r4,3,.L400
	lrvh	%r5,2(%r2)
	sth	%r5,2(%r3)
	cijle	%r4,5,.L400
	lrvh	%r0,4(%r2)
	sth	%r0,4(%r3)
	cijle	%r4,7,.L400
	lrvh	%r11,6(%r2)
	sth	%r11,6(%r3)
	cijle	%r4,9,.L400
	lrvh	%r1,8(%r2)
	sth	%r1,8(%r3)
	cijle	%r4,11,.L400
	lrvh	%r12,10(%r2)
	sth	%r12,10(%r3)
	cijle	%r4,13,.L400
	lrvh	%r10,12(%r2)
	sth	%r10,12(%r3)
	cijle	%r4,15,.L400
	lrvh	%r5,14(%r2)
	sth	%r5,14(%r3)
	cijle	%r4,17,.L400
	lrvh	%r0,16(%r2)
	sth	%r0,16(%r3)
	cijle	%r4,19,.L400
	lrvh	%r11,18(%r2)
	sth	%r11,18(%r3)
	cijle	%r4,21,.L400
	lrvh	%r1,20(%r2)
	sth	%r1,20(%r3)
	cijle	%r4,23,.L400
	lrvh	%r12,22(%r2)
	sth	%r12,22(%r3)
	cijle	%r4,25,.L400
	lrvh	%r10,24(%r2)
	sth	%r10,24(%r3)
	cijle	%r4,27,.L400
	lrvh	%r5,26(%r2)
	sth	%r5,26(%r3)
	cijle	%r4,29,.L400
	lrvh	%r2,28(%r2)
	sth	%r2,28(%r3)
.L400:
	lgdr	%r12,%f5
	.cfi_restore 12
	lgdr	%r11,%f7
	.cfi_restore 11
	lgdr	%r10,%f8
	.cfi_restore 10
	br	%r14
.L425:
	br	%r14
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	8
	.align	16
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,25
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	8
	.align	16
.globl isascii
	.type	isascii, @function
isascii:
.LFB15:
	.cfi_startproc
	clfi	%r2,127
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE15:
	.size	isascii, .-isascii
	.align	8
	.align	16
.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	lr	%r1,%r2
	xilf	%r1,9
	lpr	%r0,%r1
	ahi	%r0,-1
	chi	%r2,32
	srlk	%r2,%r0,31
	lochie	%r2,1
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	8
	.align	16
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	lr	%r1,%r2
	xilf	%r1,127
	lpr	%r0,%r1
	ahi	%r0,-1
	clfi	%r2,31
	srlk	%r2,%r0,31
	lochinh	%r2,1
	br	%r14
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	8
	.align	16
.globl isdigit
	.type	isdigit, @function
isdigit:
.LFB18:
	.cfi_startproc
	ahi	%r2,-48
	clfi	%r2,9
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE18:
	.size	isdigit, .-isdigit
	.align	8
	.align	16
.globl isgraph
	.type	isgraph, @function
isgraph:
.LFB19:
	.cfi_startproc
	ahi	%r2,-33
	clfi	%r2,93
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE19:
	.size	isgraph, .-isgraph
	.align	8
	.align	16
.globl islower
	.type	islower, @function
islower:
.LFB20:
	.cfi_startproc
	ahi	%r2,-97
	clfi	%r2,25
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE20:
	.size	islower, .-islower
	.align	8
	.align	16
.globl isprint
	.type	isprint, @function
isprint:
.LFB21:
	.cfi_startproc
	ahi	%r2,-32
	clfi	%r2,94
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE21:
	.size	isprint, .-isprint
	.align	8
	.align	16
.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	cije	%r2,32,.L451
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L451:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	8
	.align	16
.globl isupper
	.type	isupper, @function
isupper:
.LFB23:
	.cfi_startproc
	ahi	%r2,-65
	clfi	%r2,25
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE23:
	.size	isupper, .-isupper
	.align	8
	.align	16
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	clijle	%r2,31,.L459
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L460
.L459:
	lhi	%r2,1
	br	%r14
.L460:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L459
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	8
	.align	16
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
.LFB25:
	.cfi_startproc
	ahi	%r2,-48
	clfi	%r2,9
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE25:
	.size	iswdigit, .-iswdigit
	.align	8
	.align	16
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	clijle	%r2,254,.L471
	lhi	%r1,8231
	clrjle	%r2,%r1,.L469
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L469
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L469
	risbg	%r5,%r2,48,128+62,0
	xilf	%r5,65534
	lcr	%r1,%r5
	slfi	%r2,65532
	srl	%r1,31
	clfi	%r2,1048580
	lochinl	%r1,0
	lr	%r2,%r1
	br	%r14
.L469:
	lhi	%r2,1
	br	%r14
.L471:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	8
	.align	16
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	ahik	%r1,%r2,-48
	clijle	%r1,9,.L475
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L475:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	8
	.align	16
.globl toascii
	.type	toascii, @function
toascii:
.LFB28:
	.cfi_startproc
	nilf	%r2,127
	br	%r14
	.cfi_endproc
.LFE28:
	.size	toascii, .-toascii
	.align	8
	.align	16
.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L483
	kdbr	%f0,%f2
	jnh	.L486
	sdbr	%f0,%f2
	br	%r14
.L486:
	lzdr	%f0
	br	%r14
.L483:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	8
	.align	16
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L492
	kebr	%f0,%f2
	jnh	.L495
	sebr	%f0,%f2
	br	%r14
.L495:
	lzer	%f0
	br	%r14
.L492:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	8
	.align	16
.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L505
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L499
	cijlh	%r1,0,.L505
	br	%r14
.L499:
	kdbr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L505
	ldr	%f2,%f0
.L505:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	8
	.align	16
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L515
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L509
	cijlh	%r1,0,.L515
	br	%r14
.L509:
	kebr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L515
	ldr	%f2,%f0
.L515:
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	8
	.align	16
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	vl	%v0,0(%r3),3
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 136
	vst	%v0,96(%r15),3
	vl	%v2,0(%r4),3
	vl	%v7,96(%r15),3
	vst	%v2,112(%r15),3
	wfcxb	%v7,%v7
	vl	%v8,112(%r15),3
	jo	.L524
	wfcxb	%v8,%v8
	jo	.L518
	vl	%v10,96(%r15),3
	vl	%v12,112(%r15),3
	lhi	%r1,0
	wftcixb	%v0,%v10,1365
	lhi	%r3,0
	lochie	%r1,1
	wftcixb	%v0,%v12,1365
	lochie	%r3,1
	crjlh	%r1,%r3,.L529
	vl	%v14,96(%r15),3
	vl	%v9,112(%r15),3
	lhi	%r0,0
	wfkxb	%v14,%v9
	lochil	%r0,1
	cije	%r0,0,.L521
	lg	%r4,112(%r15)
	lg	%r5,120(%r15)
.L522:
	stg	%r4,96(%r15)
	stg	%r5,104(%r15)
.L518:
	vl	%v13,96(%r15),3
	vst	%v13,0(%r2),3
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L529:
	.cfi_restore_state
	cije	%r1,0,.L518
	vl	%v11,112(%r15),3
	vst	%v11,96(%r15),3
	vl	%v13,96(%r15),3
	vst	%v13,0(%r2),3
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L521:
	.cfi_restore_state
	lg	%r4,96(%r15)
	lg	%r5,104(%r15)
	j	.L522
.L524:
	vst	%v8,96(%r15),3
	j	.L518
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	8
	.align	16
.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L537
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L533
	cijlh	%r1,0,.L531
.L537:
	ldr	%f0,%f2
.L531:
	br	%r14
.L533:
	kdbr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L531
	j	.L537
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	8
	.align	16
.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L549
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L545
	cijlh	%r1,0,.L543
.L549:
	ldr	%f0,%f2
.L543:
	br	%r14
.L545:
	kebr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L543
	j	.L549
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	8
	.align	16
.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	vl	%v0,0(%r3),3
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 136
	vst	%v0,112(%r15),3
	vl	%v2,0(%r4),3
	vl	%v7,112(%r15),3
	vst	%v2,96(%r15),3
	wfcxb	%v7,%v7
	jo	.L556
	vl	%v8,96(%r15),3
	vl	%v10,112(%r15),3
	wfcxb	%v8,%v8
	jo	.L562
	vl	%v12,96(%r15),3
	wftcixb	%v0,%v10,1365
	lhi	%r1,0
	lochie	%r1,1
	wftcixb	%v0,%v12,1365
	lhi	%r3,0
	lochie	%r3,1
	crjlh	%r1,%r3,.L567
	vl	%v14,112(%r15),3
	vl	%v9,96(%r15),3
	lhi	%r0,0
	wfkxb	%v14,%v9
	lochil	%r0,1
	cije	%r0,0,.L559
	lg	%r4,112(%r15)
	lg	%r5,120(%r15)
.L560:
	stg	%r4,96(%r15)
	stg	%r5,104(%r15)
.L556:
	vl	%v13,96(%r15),3
	vst	%v13,0(%r2),3
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L567:
	.cfi_restore_state
	cije	%r1,0,.L556
	vl	%v11,112(%r15),3
	vst	%v11,96(%r15),3
	vl	%v13,96(%r15),3
	vst	%v13,0(%r2),3
	lgdr	%r15,%f1
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L559:
	.cfi_restore_state
	lg	%r4,96(%r15)
	lg	%r5,104(%r15)
	j	.L560
.L562:
	vst	%v10,96(%r15),3
	j	.L556
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	8
	.align	16
.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	larl	%r1,.LANCHOR0
	cije	%r2,0,.L570
	larl	%r4,.LANCHOR1
.L571:
	risbg	%r3,%r2,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r2,6
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	cijlh	%r2,0,.L571
.L570:
	mvi	0(%r1),0
	larl	%r2,.LANCHOR0
	br	%r14
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.align	8
	.align	16
.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	ahi	%r2,-1
	llgfr	%r2,%r2
	stgrl	%r2,.LANCHOR0+8
	br	%r14
	.cfi_endproc
.LFE38:
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
.LFB39:
	.cfi_startproc
	lgrl	%r2,.LC0
	larl	%r1,.LANCHOR0
	msg	%r2,8(%r1)
	aghi	%r2,1
	stg	%r2,8(%r1)
	risbgn	%r2,%r2,64-31,128+63,0+31
	br	%r14
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	8
	.align	16
.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	larl	%r5,.L588
	ld	%v0,.L589-.L588(%r5)
	cije	%r3,0,.L587
	vlef	%v0,0(%r3),0
	vlvgf	%v0,%r3,1
	std	%v0,0(%r2)
	st	%r2,0(%r3)
	lt	%r1,0(%r2)
	ber	%r14
	st	%r2,4(%r1)
	br	%r14
.L587:
	std	%v0,0(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L588:
.L589:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	8
	.align	16
.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	lt	%r1,0(%r2)
	je	.L591
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L591:
	lt	%r2,4(%r2)
	ber	%r14
	st	%r1,0(%r2)
	br	%r14
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	8
	.align	16
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 144
	st	%r4,100(%r15)
	lr	%r9,%r5
	lr	%r8,%r2
	lr	%r7,%r3
	lt	%r13,0(%r4)
	je	.L601
	lr	%r10,%r13
	lr	%r12,%r3
	tmll	%r10,1
	jne	.L626
.L613:
	srl	%r10,1
.L603:
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	lr	%r1,%r2
	ark	%r11,%r12,%r9
	lr	%r2,%r8
	lr	%r3,%r11
	cije	%r1,0,.L600
	lr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L600
	ark	%r12,%r11,%r9
	brct	%r10,.L603
.L601:
	msrkc	%r12,%r9,%r13
	l	%r3,100(%r15)
	ahik	%r2,%r13,1
	st	%r2,0(%r3)
	ar	%r12,%r7
	cije	%r9,0,.L600
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	brasl	%r14,memmove
.L600:
	lr	%r2,%r12
	lm	%r7,%r15,108(%r15)
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
	.cfi_def_cfa_offset 96
	br	%r14
.L626:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L600
	ark	%r12,%r7,%r9
	cijlh	%r13,1,.L613
	j	.L601
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	8
	.align	16
.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 136
	lt	%r7,0(%r4)
	je	.L629
	lr	%r10,%r7
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r8,%r2
	tmll	%r10,1
	jne	.L650
.L638:
	srl	%r10,1
.L631:
	lr	%r11,%r12
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	lr	%r1,%r2
	ar	%r12,%r9
	lr	%r2,%r8
	lr	%r3,%r12
	cije	%r1,0,.L628
	lr	%r11,%r12
	basr	%r14,%r6
	cije	%r2,0,.L628
	ar	%r12,%r9
	brct	%r10,.L631
.L629:
	lhi	%r11,0
.L628:
	lr	%r2,%r11
	lm	%r7,%r15,100(%r15)
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
	.cfi_def_cfa_offset 96
	br	%r14
.L650:
	.cfi_restore_state
	lr	%r11,%r3
	basr	%r14,%r6
	cije	%r2,0,.L628
	ar	%r12,%r9
	cijlh	%r7,1,.L638
	j	.L629
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	8
	.align	16
.globl abs
	.type	abs, @function
abs:
.LFB44:
	.cfi_startproc
	lpr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE44:
	.size	abs, .-abs
	.align	8
	.align	16
.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L661:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L655
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L655
	cije	%r4,43,.L656
	cije	%r4,45,.L657
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L666
	lr	%r3,%r2
	lhi	%r12,0
.L659:
	lhi	%r5,0
.L663:
	ahik	%r2,%r4,-48
	llc	%r4,1(%r3)
	sllk	%r1,%r5,2
	ahi	%r3,1
	ar	%r1,%r5
	ahik	%r0,%r4,-48
	sll	%r1,1
	srk	%r5,%r1,%r2
	clijle	%r0,9,.L663
	sr	%r2,%r1
	ltr	%r12,%r12
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r2,%r5
	br	%r14
.L655:
	.cfi_restore_state
	ahi	%r2,1
	j	.L661
.L657:
	llc	%r4,1(%r2)
	ahik	%r3,%r2,1
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L666
	lhi	%r12,1
	j	.L659
.L656:
	llc	%r4,1(%r2)
	ahik	%r3,%r2,1
	ahik	%r0,%r4,-48
	lhi	%r12,0
	clijle	%r0,9,.L659
.L666:
	lhi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
	.align	16
.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L683:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L679
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L679
	cije	%r4,43,.L680
	cije	%r4,45,.L681
	ahik	%r5,%r4,-48
	lr	%r3,%r2
	clijh	%r5,9,.L690
	lhi	%r12,0
.L684:
	lhi	%r5,0
.L687:
	ahik	%r2,%r4,-48
	llc	%r4,1(%r3)
	sllk	%r1,%r5,2
	ahi	%r3,1
	ar	%r1,%r5
	ahik	%r0,%r4,-48
	sll	%r1,1
	srk	%r5,%r1,%r2
	clijle	%r0,9,.L687
	sr	%r2,%r1
	ltr	%r12,%r12
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r2,%r5
	br	%r14
.L679:
	.cfi_restore_state
	ahi	%r2,1
	j	.L683
.L681:
	llc	%r4,1(%r2)
	ahik	%r3,%r2,1
	lhi	%r12,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L684
.L690:
	lhi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L680:
	.cfi_restore_state
	llc	%r4,1(%r2)
	ahik	%r3,%r2,1
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L690
	lhi	%r12,0
	j	.L684
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	8
	.align	16
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L710:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L704
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L704
	cije	%r4,43,.L705
	cijlh	%r4,45,.L726
	llc	%r4,1(%r2)
	ahi	%r2,1
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L715
	lhi	%r11,1
.L708:
	lghi	%r5,0
.L712:
	ahik	%r0,%r4,-48
	llc	%r4,1(%r2)
	sllg	%r1,%r5,2
	ahi	%r2,1
	agr	%r1,%r5
	lgfr	%r12,%r0
	sllg	%r1,%r1,1
	ahik	%r3,%r4,-48
	lgr	%r5,%r1
	sgfr	%r5,%r0
	clijle	%r3,9,.L712
	sgrk	%r3,%r12,%r1
	ltr	%r11,%r11
	locgrne	%r3,%r5
	risbgn	%r2,%r3,64-32,128+63,0+32
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L704:
	.cfi_restore_state
	ahi	%r2,1
	j	.L710
.L726:
	ahik	%r5,%r4,-48
	lhi	%r11,0
	clijle	%r5,9,.L708
.L715:
	lghi	%r3,0
.L727:
	risbgn	%r2,%r3,64-32,128+63,0+32
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L705:
	.cfi_restore_state
	llc	%r4,1(%r2)
	lhi	%r11,0
	ahi	%r2,1
	ahik	%r0,%r4,-48
	clijle	%r0,9,.L708
	lghi	%r3,0
	j	.L727
	.cfi_endproc
.LFE47:
	.size	atoll, .-atoll
	.align	8
	.align	16
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 136
	cije	%r4,0,.L730
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	lr	%r12,%r4
	j	.L733
.L743:
	je	.L729
	ahi	%r12,-1
	ark	%r9,%r11,%r8
	sr	%r12,%r10
	cije	%r12,0,.L730
.L733:
	srlk	%r10,%r12,1
	msrkc	%r11,%r10,%r8
	lr	%r2,%r7
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L743
	lr	%r12,%r10
	cijlh	%r12,0,.L733
.L730:
	lhi	%r11,0
.L729:
	lr	%r2,%r11
	lm	%r7,%r15,100(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE48:
	.size	bsearch, .-bsearch
	.align	8
	.align	16
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 136
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	lr	%r11,%r4
	cije	%r4,0,.L750
.L758:
	srak	%r10,%r11,1
	msrkc	%r12,%r10,%r8
	l	%r4,136(%r15)
	lr	%r2,%r7
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L745
	jle	.L748
	ark	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L758
.L750:
	lhi	%r12,0
.L745:
	lr	%r2,%r12
	lm	%r7,%r15,100(%r15)
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
	.cfi_def_cfa_offset 96
	br	%r14
.L748:
	.cfi_restore_state
	cije	%r10,0,.L750
	lr	%r11,%r10
	j	.L758
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
	.align	16
.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	larl	%r5,.L764
	lgfr	%r0,%r3
	lgr	%r11,%r0
	dsgfr	%r10,%r4
	ld	%v0,.L765-.L764(%r5)
	lgr	%r0,%r10
	vlvgf	%v0,%r11,0
	lgdr	%r10,%f1
	.cfi_restore 10
	vlvgf	%v0,%r0,1
	lgdr	%r11,%f2
	.cfi_restore 11
	std	%v0,0(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L764:
.L765:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE50:
	.size	div, .-div
	.align	8
	.align	16
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lpgr	%r3,%r3
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
	.align	16
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	ldgr	%f2,%r6
	.cfi_register 6, 17
	risbgn	%r4,%r3,0,0+32-1,64-0-32
	risbgn	%r6,%r5,0,0+32-1,64-0-32
	lgr	%r1,%r4
	dsgr	%r0,%r6
	lgdr	%r6,%f2
	.cfi_restore 6
	lgr	%r4,%r0
	vlvgp	%v0,%r1,%r4
	vst	%v0,0(%r2),3
	br	%r14
	.cfi_endproc
.LFE52:
	.size	imaxdiv, .-imaxdiv
	.align	8
	.align	16
.globl labs
	.type	labs, @function
labs:
.LFB152:
	.cfi_startproc
	lpr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE152:
	.size	labs, .-labs
	.align	8
	.align	16
.globl ldiv
	.type	ldiv, @function
ldiv:
.LFB54:
	.cfi_startproc
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	larl	%r5,.L775
	lgfr	%r0,%r3
	lgr	%r11,%r0
	dsgfr	%r10,%r4
	ld	%v0,.L776-.L775(%r5)
	lgr	%r0,%r10
	vlvgf	%v0,%r11,0
	lgdr	%r10,%f1
	.cfi_restore 10
	vlvgf	%v0,%r0,1
	lgdr	%r11,%f2
	.cfi_restore 11
	std	%v0,0(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L775:
.L776:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE54:
	.size	ldiv, .-ldiv
	.align	8
	.align	16
.globl llabs
	.type	llabs, @function
llabs:
.LFB154:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lpgr	%r3,%r3
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE154:
	.size	llabs, .-llabs
	.align	8
	.align	16
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	ldgr	%f2,%r6
	.cfi_register 6, 17
	risbgn	%r4,%r3,0,0+32-1,64-0-32
	risbgn	%r6,%r5,0,0+32-1,64-0-32
	lgr	%r1,%r4
	dsgr	%r0,%r6
	lgdr	%r6,%f2
	.cfi_restore 6
	lgr	%r4,%r0
	vlvgp	%v0,%r1,%r4
	vst	%v0,0(%r2),3
	br	%r14
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	8
	.align	16
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L791
.L793:
	crje	%r3,%r1,.L792
	ahi	%r2,4
.L791:
	lt	%r1,0(%r2)
	jne	.L793
	lhi	%r2,0
	br	%r14
.L792:
	br	%r14
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	8
	.align	16
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lhi	%r1,4
	crje	%r4,%r5,.L796
	j	.L797
.L798:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L797
.L796:
	cijlh	%r4,0,.L798
.L797:
	cr	%r4,%r5
	lhi	%r2,0
	lochih	%r2,1
	lochinhe	%r2,-1
	br	%r14
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	8
	.align	16
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	lhi	%r1,0
.L807:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	cijlh	%r4,0,.L807
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	8
	.align	16
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	lr	%r3,%r2
	lt	%r2,0(%r2)
	ber	%r14
	vlbb	%v2,4(%r3),6
	ahik	%r1,%r3,4
	lcbb	%r4,0(%r1),6
	vzero	%v0
	vfeefs	%v1,%v2,%v0
	vlgvf	%r2,%v1,1
	clrjl	%r2,%r4,.L813
	ahik	%r1,%r3,20
	nill	%r1,65520
	vl	%v3,0(%r1),4
	vfeefs	%v7,%v3,%v0
	jl	.L821
.L812:
	vl	%v5,16(%r1),4
	ahi	%r1,16
	vfeefs	%v7,%v5,%v0
	jnl	.L812
.L821:
	vlgvf	%r2,%v7,1
.L813:
	ar	%r1,%r2
	srk	%r2,%r1,%r3
	sra	%r2,2
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	8
	.align	16
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	cije	%r4,0,.L830
	ahik	%r5,%r4,-1
	tmll	%r4,1
	jne	.L845
.L833:
	srlk	%r0,%r4,1
.L824:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L826
	ahik	%r5,%r2,4
	cije	%r4,0,.L826
	l	%r1,0(%r5)
	ahi	%r3,4
	lr	%r2,%r5
	c	%r1,0(%r3)
	jne	.L826
	cije	%r1,0,.L826
	ahi	%r2,4
	ahi	%r3,4
	brct	%r0,.L824
.L830:
	lhi	%r2,0
	br	%r14
.L826:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r2,0
	lochih	%r2,1
	lochil	%r2,-1
	br	%r14
.L845:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L826
	cije	%r1,0,.L826
	ahi	%r2,4
	ahi	%r3,4
	cijlh	%r5,0,.L833
	j	.L830
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	8
	.align	16
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	cije	%r4,0,.L851
	ahik	%r0,%r4,-1
	lr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L858
	cije	%r5,1,.L869
	cije	%r5,2,.L870
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L870:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L869:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	cije	%r4,1,.L851
.L858:
	srlk	%r4,%r1,2
.L848:
	c	%r3,0(%r2)
	ber	%r14
	ahik	%r1,%r2,4
	c	%r3,0(%r1)
	lr	%r2,%r1
	ber	%r14
	ahi	%r2,4
	c	%r3,0(%r2)
	ber	%r14
	ahik	%r2,%r1,8
	c	%r3,8(%r1)
	ber	%r14
	ahik	%r2,%r1,12
	brct	%r4,.L848
.L851:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	8
	.align	16
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	cije	%r4,0,.L890
	ahik	%r0,%r4,-1
	lr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L897
	cije	%r1,1,.L908
	cije	%r1,2,.L909
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L916
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L909:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L916
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L908:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L916
	ahi	%r2,4
	ahi	%r3,4
	cije	%r4,1,.L890
.L897:
	srl	%r5,2
.L884:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L916
	l	%r1,4(%r2)
	ahik	%r4,%r3,4
	lr	%r3,%r4
	c	%r1,0(%r4)
	jne	.L916
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L916
	l	%r1,12(%r2)
	ahik	%r3,%r4,8
	c	%r1,8(%r4)
	jne	.L916
	ahi	%r2,16
	ahik	%r3,%r4,12
	brct	%r5,.L884
.L890:
	lhi	%r2,0
	br	%r14
.L916:
	c	%r1,0(%r3)
	lhi	%r2,0
	lochih	%r2,1
	lochil	%r2,-1
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
	.align	16
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	stm	%r12,%r15,80(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-16(%r15)
	.cfi_def_cfa_offset 112
	lr	%r12,%r2
	cije	%r4,0,.L921
	sll	%r4,2
	brasl	%r14,memcpy
.L921:
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE64:
	.size	wmemcpy, .-wmemcpy
	.align	8
	.align	16
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	crje	%r2,%r3,.L1056
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	sllk	%r1,%r4,2
	ahik	%r12,%r4,-1
	srk	%r5,%r2,%r3
	clrjhe	%r5,%r1,.L1059
	cije	%r4,0,.L953
	clijle	%r12,7,.L932
	ahik	%r11,%r1,-4
	ahik	%r0,%r1,-8
	ar	%r11,%r2
	ar	%r0,%r3
	sr	%r11,%r0
	ahi	%r11,8
	clijle	%r11,8,.L932
	ahi	%r1,-16
	risbgn	%r10,%r4,32,128+59,2
	ark	%r11,%r3,%r1
	ahik	%r0,%r10,-16
	lcr	%r8,%r10
	ar	%r1,%r2
	srl	%r0,4
	lhi	%r5,0
	ahi	%r0,1
	risbg	%r9,%r0,62,128+63,0
	je	.L979
	cije	%r9,1,.L1001
	cije	%r9,2,.L1002
	vl	%v13,0(%r11)
	lhi	%r5,-16
	vst	%v13,0(%r1)
.L1002:
	vl	%v15,0(%r5,%r11)
	vst	%v15,0(%r5,%r1)
	ahi	%r5,-16
.L1001:
	vl	%v16,0(%r5,%r11)
	vst	%v16,0(%r5,%r1)
	ahi	%r5,-16
	crje	%r5,%r8,.L1033
.L979:
	srl	%r0,2
	chi	%r0,2
	jle	.L1052
	ahi	%r0,-1
	vl	%v0,0(%r5,%r11)
	vst	%v0,0(%r5,%r1)
.L933:
	ahik	%r10,%r5,-48
	ahik	%r9,%r5,-32
	ahik	%r8,%r5,-16
	ahi	%r5,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r1)
	vl	%v0,0(%r5,%r11)
	vst	%v0,0(%r5,%r1)
	brct	%r0,.L933
	ahik	%r10,%r5,-48
	ahik	%r9,%r5,-32
	ahik	%r8,%r5,-16
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r1)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r1)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r1)
.L1033:
	risbg	%r1,%r4,32,128+61,0
	sr	%r12,%r1
	tmll	%r4,3
	je	.L953
	sllk	%r4,%r12,2
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	cije	%r12,0,.L953
	ahi	%r12,-1
	sllk	%r11,%r12,2
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	cije	%r12,0,.L953
	ly	%r3,-4(%r11,%r3)
	sty	%r3,-4(%r11,%r2)
.L953:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	br	%r14
.L1059:
	.cfi_restore_state
	cije	%r4,0,.L953
	clijle	%r12,6,.L945
	ahik	%r1,%r3,4
	srk	%r0,%r2,%r1
	clijle	%r0,8,.L945
	srlk	%r11,%r4,2
	lhi	%r1,0
	lr	%r5,%r11
	lhi	%r8,0
	risbg	%r10,%r11,62,128+63,0
	je	.L997
	cije	%r10,1,.L1005
	cije	%r10,2,.L1006
	vl	%v0,0(%r3)
	lhi	%r8,1
	lhi	%r1,16
	vst	%v0,0(%r2)
.L1006:
	vl	%v8,0(%r1,%r3)
	ahi	%r8,1
	vst	%v8,0(%r1,%r2)
	ahi	%r1,16
.L1005:
	vl	%v10,0(%r1,%r3)
	ahi	%r8,1
	vst	%v10,0(%r1,%r2)
	ahi	%r1,16
	crje	%r11,%r8,.L1034
.L997:
	srl	%r5,2
	chi	%r5,2
	jle	.L1054
	ahi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L939:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	ahi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brct	%r5,.L939
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L1034:
	risbg	%r9,%r4,32,128+61,0
	sr	%r12,%r9
	sll	%r9,2
	ar	%r3,%r9
	ar	%r9,%r2
	tmll	%r4,3
	je	.L953
	l	%r4,0(%r3)
	st	%r4,0(%r9)
	cije	%r12,0,.L953
	l	%r5,4(%r3)
	st	%r5,4(%r9)
	cije	%r12,1,.L953
	l	%r3,8(%r3)
	st	%r3,8(%r9)
	j	.L953
.L1052:
	vl	%v18,0(%r5,%r11)
	ahik	%r10,%r5,-16
	ahik	%r8,%r5,-32
	vst	%v18,0(%r5,%r1)
	ahik	%r9,%r5,-48
	ahi	%r5,-64
	vl	%v20,0(%r10,%r11)
	vst	%v20,0(%r10,%r1)
	vl	%v22,0(%r8,%r11)
	vst	%v22,0(%r8,%r1)
	vl	%v17,0(%r9,%r11)
	vst	%v17,0(%r9,%r1)
	brct	%r0,.L1052
	j	.L1033
.L1054:
	vl	%v12,0(%r1,%r3)
	vst	%v12,0(%r1,%r2)
	vl	%v14,16(%r1,%r3)
	vst	%v14,16(%r1,%r2)
	vl	%v9,32(%r1,%r3)
	vst	%v9,32(%r1,%r2)
	vl	%v11,48(%r1,%r3)
	vst	%v11,48(%r1,%r2)
	ahi	%r1,64
	brct	%r5,.L1054
	j	.L1034
.L1056:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	br	%r14
.L932:
	.cfi_register 8, 23
	.cfi_register 9, 22
	.cfi_register 10, 21
	.cfi_register 11, 20
	.cfi_register 12, 17
	risbg	%r1,%r12,34,128+63,0
	sll	%r12,2
	ahi	%r1,1
	risbg	%r10,%r1,62,128+63,0
	je	.L970
	cije	%r10,1,.L1003
	cije	%r10,2,.L1004
	l	%r8,0(%r12,%r3)
	st	%r8,0(%r12,%r2)
	ahi	%r12,-4
.L1004:
	l	%r9,0(%r12,%r3)
	st	%r9,0(%r12,%r2)
	ahi	%r12,-4
.L1003:
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ahi	%r12,-4
	cije	%r12,-4,.L953
.L970:
	srl	%r1,2
	chi	%r1,2
	jle	.L1051
	ahi	%r1,-1
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
.L936:
	ahi	%r12,-16
	l	%r4,0(%r12,%r3)
	st	%r4,0(%r12,%r2)
	ly	%r4,-4(%r12,%r3)
	sty	%r4,-4(%r12,%r2)
	ly	%r4,-8(%r12,%r3)
	sty	%r4,-8(%r12,%r2)
	ly	%r4,-12(%r12,%r3)
	sty	%r4,-12(%r12,%r2)
	brct	%r1,.L936
	j	.L953
.L945:
	ahik	%r4,%r12,1
	lhi	%r1,0
	risbg	%r0,%r4,62,128+63,0
	je	.L988
	cije	%r0,1,.L1007
	cije	%r0,2,.L1008
	l	%r1,0(%r3)
	ahi	%r12,-1
	st	%r1,0(%r2)
	lhi	%r1,4
.L1008:
	l	%r11,0(%r1,%r3)
	ahi	%r12,-1
	st	%r11,0(%r1,%r2)
	ahi	%r1,4
.L1007:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cije	%r12,0,.L953
.L988:
	srl	%r4,2
	chi	%r4,2
	jle	.L1053
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L942:
	ahi	%r1,16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	brct	%r4,.L942
	j	.L953
.L1051:
	l	%r5,0(%r12,%r3)
	st	%r5,0(%r12,%r2)
	ly	%r11,-4(%r12,%r3)
	sty	%r11,-4(%r12,%r2)
	ly	%r0,-8(%r12,%r3)
	sty	%r0,-8(%r12,%r2)
	ly	%r10,-12(%r12,%r3)
	sty	%r10,-12(%r12,%r2)
	ahi	%r12,-16
	brct	%r1,.L1051
	j	.L953
.L1053:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r9,8(%r1,%r3)
	st	%r9,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	ahi	%r1,16
	brct	%r4,.L1053
	j	.L953
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	8
	.align	16
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	ldgr	%f1,%r11
	.cfi_register 11, 20
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ahik	%r11,%r4,-1
	cije	%r4,0,.L1062
	clijle	%r11,6,.L1068
	vlvgf	%v0,%r3,3
	srlk	%r9,%r4,2
	vrepf	%v0,%v0,3
	clijle	%r4,67,.L1069
	ahik	%r12,%r9,-17
	lr	%r1,%r2
	nill	%r12,65520
	srlk	%r5,%r12,4
	ahi	%r12,16
	ahi	%r5,1
.L1065:
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
	ahi	%r1,256
	brct	%r5,.L1065
.L1064:
	vst	%v0,0(%r1)
	nnrk	%r10,%r12,%r12
	ahik	%r0,%r12,1
	ar	%r10,%r9
	ahik	%r5,%r1,16
	nilf	%r10,3
	clrjle	%r9,%r0,.L1112
	cije	%r10,0,.L1113
	cije	%r10,1,.L1099
	cije	%r10,2,.L1100
	vst	%v0,0(%r5)
	ahik	%r0,%r12,2
	ahik	%r5,%r1,32
.L1100:
	vst	%v0,0(%r5)
	ahi	%r0,1
	ahi	%r5,16
.L1099:
	vst	%v0,0(%r5)
	ahi	%r0,1
	ahi	%r5,16
	clrjle	%r9,%r0,.L1112
.L1113:
	vst	%v0,0(%r5)
	vst	%v0,16(%r5)
	vst	%v0,32(%r5)
	vst	%v0,48(%r5)
	ahi	%r0,4
	ahi	%r5,64
	clrjh	%r9,%r0,.L1113
.L1112:
	tmll	%r4,3
	je	.L1062
	nill	%r4,65532
	sr	%r11,%r4
	sll	%r4,2
	ar	%r4,%r2
.L1063:
	st	%r3,0(%r4)
	cije	%r11,0,.L1062
	st	%r3,4(%r4)
	cije	%r11,1,.L1062
	st	%r3,8(%r4)
	cije	%r11,2,.L1062
	st	%r3,12(%r4)
	cije	%r11,3,.L1062
	st	%r3,16(%r4)
	cije	%r11,4,.L1062
	st	%r3,20(%r4)
	cije	%r11,5,.L1062
	st	%r3,24(%r4)
.L1062:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	br	%r14
.L1068:
	.cfi_restore_state
	lr	%r4,%r2
	j	.L1063
.L1069:
	lr	%r1,%r2
	lhi	%r12,0
	j	.L1064
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
	.align	16
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	ldgr	%f2,%r12
	.cfi_register 12, 17
	clr	%r2,%r3
	jhe	.L1118
	cije	%r4,0,.L1117
	ahik	%r1,%r4,-1
	clijle	%r1,30,.L1235
	ar	%r1,%r3
	ahik	%r11,%r4,-2
	ar	%r11,%r2
	sr	%r1,%r11
	ahi	%r1,14
	clijle	%r1,14,.L1235
	risbg	%r0,%r4,32,128+59,0
	ahik	%r12,%r4,-16
	ahik	%r5,%r0,-16
	ark	%r11,%r2,%r12
	lcr	%r8,%r0
	ar	%r12,%r3
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r9,%r5,62,128+63,0
	je	.L1213
	cije	%r9,1,.L1236
	cije	%r9,2,.L1237
	vl	%v13,0(%r11)
	lhi	%r1,-16
	vst	%v13,0(%r12)
.L1237:
	vl	%v15,0(%r1,%r11)
	vst	%v15,0(%r1,%r12)
	ahi	%r1,-16
.L1236:
	vl	%v16,0(%r1,%r11)
	vst	%v16,0(%r1,%r12)
	ahi	%r1,-16
	crje	%r1,%r8,.L1292
.L1213:
	srl	%r5,2
	chi	%r5,2
	jle	.L1311
	ahi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L1121:
	ahik	%r10,%r1,-48
	ahik	%r9,%r1,-32
	ahik	%r8,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r5,.L1121
	ahik	%r10,%r1,-48
	ahik	%r9,%r1,-32
	ahik	%r8,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r10,%r11)
	vst	%v0,0(%r10,%r12)
.L1292:
	ar	%r1,%r4
	risbg	%r5,%r4,60,128+63,0
	ar	%r3,%r1
	ar	%r2,%r1
	tmll	%r4,15
	je	.L1117
	icy	%r4,-1(%r2)
	stcy	%r4,-1(%r3)
	cije	%r5,1,.L1117
	icy	%r12,-2(%r2)
	stcy	%r12,-2(%r3)
	cije	%r5,2,.L1117
	icy	%r1,-3(%r2)
	stcy	%r1,-3(%r3)
	cije	%r5,3,.L1117
	icy	%r11,-4(%r2)
	stcy	%r11,-4(%r3)
	cije	%r5,4,.L1117
	icy	%r0,-5(%r2)
	stcy	%r0,-5(%r3)
	cije	%r5,5,.L1117
	icy	%r10,-6(%r2)
	stcy	%r10,-6(%r3)
	cije	%r5,6,.L1117
	icy	%r8,-7(%r2)
	stcy	%r8,-7(%r3)
	cije	%r5,7,.L1117
	icy	%r9,-8(%r2)
	stcy	%r9,-8(%r3)
	cije	%r5,8,.L1117
	icy	%r4,-9(%r2)
	stcy	%r4,-9(%r3)
	cije	%r5,9,.L1117
	icy	%r12,-10(%r2)
	stcy	%r12,-10(%r3)
	cije	%r5,10,.L1117
	icy	%r1,-11(%r2)
	stcy	%r1,-11(%r3)
	cije	%r5,11,.L1117
	icy	%r11,-12(%r2)
	stcy	%r11,-12(%r3)
	cije	%r5,12,.L1117
	icy	%r0,-13(%r2)
	stcy	%r0,-13(%r3)
	cije	%r5,13,.L1117
	icy	%r10,-14(%r2)
	stcy	%r10,-14(%r3)
	cije	%r5,14,.L1117
	icy	%r2,-15(%r2)
	stcy	%r2,-15(%r3)
.L1117:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	br	%r14
.L1118:
	.cfi_restore_state
	je	.L1117
	cije	%r4,0,.L1117
	ahik	%r1,%r4,-1
	clijle	%r1,30,.L1132
	ahik	%r0,%r2,1
	srk	%r5,%r3,%r0
	clijle	%r5,14,.L1132
	risbg	%r8,%r4,32,128+59,0
	ahik	%r5,%r8,-16
	lhi	%r1,0
	srl	%r5,4
	ahi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1231
	cije	%r12,1,.L1240
	cije	%r12,2,.L1241
	vl	%v0,0(%r2)
	lhi	%r1,16
	vst	%v0,0(%r3)
.L1241:
	vl	%v8,0(%r1,%r2)
	vst	%v8,0(%r1,%r3)
	ahi	%r1,16
.L1240:
	vl	%v10,0(%r1,%r2)
	vst	%v10,0(%r1,%r3)
	ahi	%r1,16
	crje	%r1,%r8,.L1293
.L1231:
	srl	%r5,2
	chi	%r5,2
	jle	.L1313
	ahi	%r5,-1
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
.L1126:
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	ahi	%r1,64
	vl	%v0,0(%r1,%r2)
	vst	%v0,0(%r1,%r3)
	brct	%r5,.L1126
	vl	%v0,16(%r1,%r2)
	vst	%v0,16(%r1,%r3)
	vl	%v0,32(%r1,%r2)
	vst	%v0,32(%r1,%r3)
	vl	%v0,48(%r1,%r2)
	vst	%v0,48(%r1,%r3)
	ahi	%r1,64
.L1293:
	ar	%r3,%r1
	ar	%r2,%r1
	srk	%r9,%r4,%r1
	crje	%r4,%r1,.L1117
	mvc	0(1,%r3),0(%r2)
	cije	%r9,1,.L1117
	mvc	1(1,%r3),1(%r2)
	cije	%r9,2,.L1117
	mvc	2(1,%r3),2(%r2)
	cije	%r9,3,.L1117
	mvc	3(1,%r3),3(%r2)
	cije	%r9,4,.L1117
	mvc	4(1,%r3),4(%r2)
	cije	%r9,5,.L1117
	mvc	5(1,%r3),5(%r2)
	cije	%r9,6,.L1117
	mvc	6(1,%r3),6(%r2)
	cije	%r9,7,.L1117
	mvc	7(1,%r3),7(%r2)
	cije	%r9,8,.L1117
	mvc	8(1,%r3),8(%r2)
	cije	%r9,9,.L1117
	mvc	9(1,%r3),9(%r2)
	cije	%r9,10,.L1117
	mvc	10(1,%r3),10(%r2)
	cije	%r9,11,.L1117
	mvc	11(1,%r3),11(%r2)
	cije	%r9,12,.L1117
	mvc	12(1,%r3),12(%r2)
	cije	%r9,13,.L1117
	mvc	13(1,%r3),13(%r2)
	cije	%r9,14,.L1117
	mvc	14(1,%r3),14(%r2)
	j	.L1117
.L1311:
	vl	%v18,0(%r1,%r11)
	ahik	%r10,%r1,-16
	ahik	%r8,%r1,-32
	vst	%v18,0(%r1,%r12)
	ahik	%r9,%r1,-48
	ahi	%r1,-64
	vl	%v20,0(%r10,%r11)
	vst	%v20,0(%r10,%r12)
	vl	%v22,0(%r8,%r11)
	vst	%v22,0(%r8,%r12)
	vl	%v17,0(%r9,%r11)
	vst	%v17,0(%r9,%r12)
	brct	%r5,.L1311
	j	.L1292
.L1313:
	vl	%v12,0(%r1,%r2)
	vst	%v12,0(%r1,%r3)
	vl	%v14,16(%r1,%r2)
	vst	%v14,16(%r1,%r3)
	vl	%v9,32(%r1,%r2)
	vst	%v9,32(%r1,%r3)
	vl	%v11,48(%r1,%r2)
	vst	%v11,48(%r1,%r3)
	ahi	%r1,64
	brct	%r5,.L1313
	j	.L1293
.L1235:
	ahik	%r8,%r4,-1
	lr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L1204
	cije	%r5,1,.L1238
	cije	%r5,2,.L1239
	icy	%r9,-1(%r4,%r2)
	stcy	%r9,-1(%r4,%r3)
	lr	%r4,%r8
.L1239:
	icy	%r12,-1(%r4,%r2)
	stcy	%r12,-1(%r4,%r3)
	ahi	%r4,-1
.L1238:
	icy	%r11,-1(%r4,%r2)
	stcy	%r11,-1(%r4,%r3)
	brct	%r4,.L1204
	j	.L1117
.L1204:
	srl	%r1,2
	chi	%r1,2
	jle	.L1310
	ahi	%r1,-1
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
.L1123:
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r5,-3(%r4,%r2)
	stcy	%r5,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	ahi	%r4,-4
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brct	%r1,.L1123
	icy	%r1,-2(%r4,%r2)
	stcy	%r1,-2(%r4,%r3)
	icy	%r1,-3(%r4,%r2)
	stcy	%r1,-3(%r4,%r3)
	icy	%r1,-4(%r4,%r2)
	stcy	%r1,-4(%r4,%r3)
	j	.L1117
.L1132:
	lhi	%r1,0
	lr	%r10,%r4
	risbg	%r11,%r4,62,128+63,0
	je	.L1222
	cije	%r11,1,.L1242
	cije	%r11,2,.L1243
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L1243:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L1242:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	crje	%r4,%r1,.L1117
.L1222:
	srlk	%r4,%r10,2
	chi	%r4,2
	jle	.L1312
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
.L1129:
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	brct	%r4,.L1129
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L1117
.L1310:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r10,-2(%r4,%r2)
	stcy	%r10,-2(%r4,%r3)
	icy	%r8,-3(%r4,%r2)
	stcy	%r8,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	ahi	%r4,-4
	brct	%r1,.L1310
	j	.L1117
.L1312:
	ic	%r8,0(%r1,%r2)
	stc	%r8,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	stc	%r12,1(%r1,%r3)
	ic	%r9,2(%r1,%r2)
	stc	%r9,2(%r1,%r3)
	ic	%r10,3(%r1,%r2)
	stc	%r10,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L1312
	j	.L1117
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
	.align	16
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	rllg	%r3,%r3,0(%r4)
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	8
	.align	16
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lcr	%r4,%r4
	rllg	%r3,%r3,0(%r4)
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	8
	.align	16
.globl rotl32
	.type	rotl32, @function
rotl32:
.LFB70:
	.cfi_startproc
	rll	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE70:
	.size	rotl32, .-rotl32
	.align	8
	.align	16
.globl rotr32
	.type	rotr32, @function
rotr32:
.LFB71:
	.cfi_startproc
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	br	%r14
	.cfi_endproc
.LFE71:
	.size	rotr32, .-rotr32
	.align	8
	.align	16
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
.LFB158:
	.cfi_startproc
	rll	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE158:
	.size	rotl_sz, .-rotl_sz
	.align	8
	.align	16
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB160:
	.cfi_startproc
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	br	%r14
	.cfi_endproc
.LFE160:
	.size	rotr_sz, .-rotr_sz
	.align	8
	.align	16
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	nilf	%r3,15
	lcr	%r1,%r3
	sllk	%r3,%r2,0(%r3)
	nilf	%r1,15
	srl	%r2,0(%r1)
	or	%r2,%r3
	llhr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
	.align	16
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	nilf	%r3,15
	lcr	%r1,%r3
	srlk	%r3,%r2,0(%r3)
	nilf	%r1,15
	sll	%r2,0(%r1)
	or	%r2,%r3
	llhr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	8
	.align	16
.globl rotl8
	.type	rotl8, @function
rotl8:
.LFB76:
	.cfi_startproc
	nilf	%r3,7
	lcr	%r1,%r3
	sllk	%r3,%r2,0(%r3)
	nilf	%r1,7
	srl	%r2,0(%r1)
	or	%r2,%r3
	llcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE76:
	.size	rotl8, .-rotl8
	.align	8
	.align	16
.globl rotr8
	.type	rotr8, @function
rotr8:
.LFB77:
	.cfi_startproc
	nilf	%r3,7
	lcr	%r1,%r3
	srlk	%r3,%r2,0(%r3)
	nilf	%r1,7
	sll	%r2,0(%r1)
	or	%r2,%r3
	llcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE77:
	.size	rotr8, .-rotr8
	.align	8
	.align	16
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	lrvr	%r2,%r2
	srl	%r2,16
	llhr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	8
	.align	16
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
.LFB79:
	.cfi_startproc
	lrvr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	8
	.align	16
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
.LFB80:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lrvgr	%r3,%r3
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE80:
	.size	bswap_64, .-bswap_64
	.align	8
	.align	16
.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	lr	%r1,%r2
	tmll	%r1,1
	jne	.L1346
	tmll	%r1,2
	jne	.L1347
	tmll	%r1,4
	jne	.L1348
	tmll	%r1,8
	jne	.L1349
	tmll	%r1,16
	jne	.L1350
	tmll	%r1,32
	jne	.L1351
	tmll	%r1,64
	jne	.L1352
	tmll	%r1,128
	jne	.L1353
	tmll	%r1,256
	jne	.L1354
	tmll	%r1,512
	jne	.L1355
	tmll	%r1,1024
	jne	.L1356
	tmll	%r1,2048
	jne	.L1357
	tmll	%r1,4096
	jne	.L1358
	tmll	%r1,8192
	jne	.L1359
	tmll	%r1,16384
	jne	.L1360
	tmll	%r1,32768
	jne	.L1361
	tmlh	%r1,1
	jne	.L1362
	tmlh	%r1,2
	jne	.L1363
	tmlh	%r1,4
	jne	.L1364
	tmlh	%r1,8
	jne	.L1365
	tmlh	%r1,16
	jne	.L1366
	tmlh	%r1,32
	jne	.L1367
	tmlh	%r1,64
	jne	.L1368
	tmlh	%r1,128
	jne	.L1369
	tmlh	%r1,256
	jne	.L1370
	tmlh	%r1,512
	jne	.L1371
	tmlh	%r1,1024
	jne	.L1372
	tmlh	%r1,2048
	jne	.L1373
	tmlh	%r1,4096
	jne	.L1374
	tmlh	%r1,8192
	jne	.L1375
	tmlh	%r1,16384
	jne	.L1376
	lhi	%r2,0
	cijlh	%r1,0,.L1379
	br	%r14
.L1346:
	lhi	%r2,1
	br	%r14
.L1347:
	lhi	%r2,2
	br	%r14
.L1358:
	lhi	%r2,13
	br	%r14
.L1374:
	lhi	%r2,29
	br	%r14
.L1379:
	lhi	%r2,32
	br	%r14
.L1348:
	lhi	%r2,3
	br	%r14
.L1349:
	lhi	%r2,4
	br	%r14
.L1350:
	lhi	%r2,5
	br	%r14
.L1351:
	lhi	%r2,6
	br	%r14
.L1352:
	lhi	%r2,7
	br	%r14
.L1353:
	lhi	%r2,8
	br	%r14
.L1354:
	lhi	%r2,9
	br	%r14
.L1355:
	lhi	%r2,10
	br	%r14
.L1356:
	lhi	%r2,11
	br	%r14
.L1357:
	lhi	%r2,12
	br	%r14
.L1359:
	lhi	%r2,14
	br	%r14
.L1360:
	lhi	%r2,15
	br	%r14
.L1361:
	lhi	%r2,16
	br	%r14
.L1362:
	lhi	%r2,17
	br	%r14
.L1363:
	lhi	%r2,18
	br	%r14
.L1364:
	lhi	%r2,19
	br	%r14
.L1365:
	lhi	%r2,20
	br	%r14
.L1366:
	lhi	%r2,21
	br	%r14
.L1367:
	lhi	%r2,22
	br	%r14
.L1368:
	lhi	%r2,23
	br	%r14
.L1369:
	lhi	%r2,24
	br	%r14
.L1370:
	lhi	%r2,25
	br	%r14
.L1371:
	lhi	%r2,26
	br	%r14
.L1372:
	lhi	%r2,27
	br	%r14
.L1373:
	lhi	%r2,28
	br	%r14
.L1375:
	lhi	%r2,30
	br	%r14
.L1376:
	lhi	%r2,31
	br	%r14
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	8
	.align	16
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L1384
	nilf	%r2,1
	bner	%r14
	lhi	%r2,1
.L1383:
	ahi	%r2,1
	sra	%r1,1
	tmll	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tmll	%r1,1
	je	.L1383
	br	%r14
.L1384:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
	.align	16
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	larl	%r5,.L1394
	keb	%f0,.L1395-.L1394(%r5)
	jl	.L1392
	keb	%f0,.L1396-.L1394(%r5)
	lhi	%r2,0
	lochih	%r2,1
	br	%r14
.L1392:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L1394:
.L1396:
	.long	2139095039
.L1395:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	8
	.align	16
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	larl	%r5,.L1402
	kdb	%f0,.L1403-.L1402(%r5)
	jl	.L1400
	kdb	%f0,.L1404-.L1402(%r5)
	lhi	%r2,0
	lochih	%r2,1
	br	%r14
.L1400:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L1402:
.L1404:
	.long	2146435071
	.long	-1
.L1403:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
	.align	16
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	larl	%r5,.L1410
	vl	%v0,0(%r2),3
	vl	%v2,.L1411-.L1410(%r5),3
	wfkxb	%v0,%v2
	jl	.L1408
	vl	%v1,.L1412-.L1410(%r5),3
	lhi	%r2,0
	wfkxb	%v0,%v1
	lochih	%r2,1
	br	%r14
.L1408:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L1410:
.L1412:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1411:
	.long	-65537
	.long	-1
	.long	-1
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE85:
	.size	gl_isinfl, .-gl_isinfl
	.align	8
	.align	16
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
.LFB86:
	.cfi_startproc
	cdfbr	%f0,%r3
	wflld	%v2,%v0
	vst	%v2,0(%r2),3
	br	%r14
	.cfi_endproc
.LFE86:
	.size	_Qp_itoq, .-_Qp_itoq
	.align	8
	.align	16
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	larl	%r5,.L1431
	cebr	%f0,%f0
	bor	%r14
	wfasb	%v2,%v0,%v0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1429
	lde	%f1,.L1432-.L1431(%r5)
.L1417:
	tmll	%r2,1
	je	.L1418
.L1419:
	meebr	%f0,%f1
.L1418:
	srlk	%r1,%r2,31
	ar	%r2,%r1
	sra	%r2,1
	cije	%r2,0,.L1416
	meebr	%f1,%f1
	tmll	%r2,1
	jne	.L1419
.L1430:
	srlk	%r0,%r2,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tmll	%r2,1
	jne	.L1419
	j	.L1430
.L1416:
	br	%r14
.L1429:
	lde	%f1,.L1433-.L1431(%r5)
	j	.L1417
	.section	.rodata
	.align	8
.L1431:
.L1433:
	.long	1056964608
.L1432:
	.long	1073741824
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	8
	.align	16
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	larl	%r5,.L1450
	cdbr	%f0,%f0
	bor	%r14
	wfadb	%v2,%v0,%v0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1448
	ld	%f1,.L1451-.L1450(%r5)
.L1436:
	tmll	%r2,1
	je	.L1437
.L1438:
	mdbr	%f0,%f1
.L1437:
	srlk	%r1,%r2,31
	ar	%r2,%r1
	sra	%r2,1
	cije	%r2,0,.L1435
	mdbr	%f1,%f1
	tmll	%r2,1
	jne	.L1438
.L1449:
	srlk	%r0,%r2,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tmll	%r2,1
	jne	.L1438
	j	.L1449
.L1435:
	br	%r14
.L1448:
	ld	%f1,.L1452-.L1450(%r5)
	j	.L1436
	.section	.rodata
	.align	8
.L1450:
.L1452:
	.long	1071644672
	.long	0
.L1451:
	.long	1073741824
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	8
	.align	16
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	larl	%r5,.L1469
	vl	%v2,0(%r3),3
	wfcxb	%v2,%v2
	jo	.L1454
	wfaxb	%v0,%v2,%v2
	wfcxb	%v0,%v2
	je	.L1454
	cijl	%r4,0,.L1467
	vl	%v1,.L1470-.L1469(%r5),3
.L1455:
	tmll	%r4,1
	je	.L1456
.L1457:
	wfmxb	%v2,%v2,%v1
.L1456:
	srlk	%r1,%r4,31
	ar	%r4,%r1
	sra	%r4,1
	cije	%r4,0,.L1454
	wfmxb	%v1,%v1,%v1
	tmll	%r4,1
	jne	.L1457
.L1468:
	srlk	%r0,%r4,31
	ar	%r4,%r0
	wfmxb	%v1,%v1,%v1
	sra	%r4,1
	tmll	%r4,1
	jne	.L1457
	j	.L1468
.L1454:
	vst	%v2,0(%r2),3
	br	%r14
.L1467:
	vl	%v1,.L1471-.L1469(%r5),3
	j	.L1455
	.section	.rodata
	.align	8
.L1469:
.L1471:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1470:
	.long	1073741824
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE89:
	.size	ldexpl, .-ldexpl
	.align	8
	.align	16
.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	cije	%r4,0,.L1591
	ahik	%r1,%r4,-1
	clijle	%r1,30,.L1477
	risbg	%r0,%r4,32,128+59,0
	ahik	%r5,%r0,-16
	ldgr	%f12,%r12
	.cfi_register 12, 26
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1546
	cije	%r12,1,.L1550
	cije	%r12,2,.L1551
	vl	%v0,0(%r2)
	vl	%v2,0(%r3)
	lhi	%r1,16
	vx	%v1,%v0,%v2
	vst	%v1,0(%r2)
.L1551:
	vl	%v3,0(%r1,%r2)
	vl	%v5,0(%r1,%r3)
	vx	%v7,%v3,%v5
	vst	%v7,0(%r1,%r2)
	ahi	%r1,16
.L1550:
	vl	%v8,0(%r1,%r2)
	vl	%v10,0(%r1,%r3)
	vx	%v14,%v8,%v10
	vst	%v14,0(%r1,%r2)
	ahi	%r1,16
	crje	%r1,%r0,.L1587
.L1546:
	srl	%r5,2
.L1475:
	vl	%v9,0(%r1,%r2)
	vl	%v13,16(%r1,%r2)
	vl	%v16,32(%r1,%r2)
	vl	%v20,48(%r1,%r2)
	vl	%v11,0(%r1,%r3)
	vl	%v15,16(%r1,%r3)
	vl	%v18,32(%r1,%r3)
	vl	%v22,48(%r1,%r3)
	vx	%v17,%v9,%v11
	vx	%v19,%v13,%v15
	vx	%v21,%v16,%v18
	vx	%v23,%v20,%v22
	vst	%v17,0(%r1,%r2)
	vst	%v19,16(%r1,%r2)
	vst	%v21,32(%r1,%r2)
	vst	%v23,48(%r1,%r2)
	ahi	%r1,64
	brct	%r5,.L1475
.L1587:
	ar	%r3,%r1
	ark	%r5,%r2,%r1
	srk	%r0,%r4,%r1
	crje	%r4,%r1,.L1473
	xc	0(1,%r5),0(%r3)
	cije	%r0,1,.L1473
	xc	1(1,%r5),1(%r3)
	cije	%r0,2,.L1473
	xc	2(1,%r5),2(%r3)
	cije	%r0,3,.L1473
	xc	3(1,%r5),3(%r3)
	cije	%r0,4,.L1473
	xc	4(1,%r5),4(%r3)
	cije	%r0,5,.L1473
	xc	5(1,%r5),5(%r3)
	cije	%r0,6,.L1473
	xc	6(1,%r5),6(%r3)
	cije	%r0,7,.L1473
	xc	7(1,%r5),7(%r3)
	cije	%r0,8,.L1473
	xc	8(1,%r5),8(%r3)
	cije	%r0,9,.L1473
	xc	9(1,%r5),9(%r3)
	cije	%r0,10,.L1473
	xc	10(1,%r5),10(%r3)
	cije	%r0,11,.L1473
	xc	11(1,%r5),11(%r3)
	cije	%r0,12,.L1473
	xc	12(1,%r5),12(%r3)
	cije	%r0,13,.L1473
	xc	13(1,%r5),13(%r3)
	cije	%r0,14,.L1473
	xc	14(1,%r5),14(%r3)
	cije	%r0,15,.L1473
	xc	15(1,%r5),15(%r3)
	cije	%r0,16,.L1473
	xc	16(1,%r5),16(%r3)
	cije	%r0,17,.L1473
	xc	17(1,%r5),17(%r3)
	cije	%r0,18,.L1473
	xc	18(1,%r5),18(%r3)
	cije	%r0,19,.L1473
	xc	19(1,%r5),19(%r3)
	cije	%r0,20,.L1473
	xc	20(1,%r5),20(%r3)
	cije	%r0,21,.L1473
	xc	21(1,%r5),21(%r3)
	cije	%r0,22,.L1473
	xc	22(1,%r5),22(%r3)
	cije	%r0,23,.L1473
	xc	23(1,%r5),23(%r3)
	cije	%r0,24,.L1473
	xc	24(1,%r5),24(%r3)
	cije	%r0,25,.L1473
	xc	25(1,%r5),25(%r3)
	cije	%r0,26,.L1473
	xc	26(1,%r5),26(%r3)
	cije	%r0,27,.L1473
	xc	27(1,%r5),27(%r3)
	cije	%r0,28,.L1473
	xc	28(1,%r5),28(%r3)
	cije	%r0,29,.L1473
	xc	29(1,%r5),29(%r3)
	cije	%r0,30,.L1473
	xc	30(1,%r5),30(%r3)
.L1473:
	lgdr	%r12,%f12
	.cfi_restore 12
	br	%r14
.L1477:
	xc	0(1,%r2),0(%r3)
	cije	%r4,1,.L1591
	xc	1(1,%r2),1(%r3)
	cije	%r4,2,.L1591
	xc	2(1,%r2),2(%r3)
	cije	%r4,3,.L1591
	xc	3(1,%r2),3(%r3)
	cije	%r4,4,.L1591
	xc	4(1,%r2),4(%r3)
	cijlh	%r4,5,.L1625
.L1591:
	br	%r14
.L1625:
	xc	5(1,%r2),5(%r3)
	cije	%r4,6,.L1591
	xc	6(1,%r2),6(%r3)
	cije	%r4,7,.L1591
	xc	7(1,%r2),7(%r3)
	cije	%r4,8,.L1591
	xc	8(1,%r2),8(%r3)
	cije	%r4,9,.L1591
	xc	9(1,%r2),9(%r3)
	cije	%r4,10,.L1591
	xc	10(1,%r2),10(%r3)
	cije	%r4,11,.L1591
	xc	11(1,%r2),11(%r3)
	cije	%r4,12,.L1591
	xc	12(1,%r2),12(%r3)
	cije	%r4,13,.L1591
	xc	13(1,%r2),13(%r3)
	cije	%r4,14,.L1591
	xc	14(1,%r2),14(%r3)
	cije	%r4,15,.L1591
	xc	15(1,%r2),15(%r3)
	cije	%r4,16,.L1591
	xc	16(1,%r2),16(%r3)
	cije	%r4,17,.L1591
	xc	17(1,%r2),17(%r3)
	cije	%r4,18,.L1591
	xc	18(1,%r2),18(%r3)
	cije	%r4,19,.L1591
	xc	19(1,%r2),19(%r3)
	cije	%r4,20,.L1591
	xc	20(1,%r2),20(%r3)
	cije	%r4,21,.L1591
	xc	21(1,%r2),21(%r3)
	cije	%r4,22,.L1591
	xc	22(1,%r2),22(%r3)
	cije	%r4,23,.L1591
	xc	23(1,%r2),23(%r3)
	cije	%r4,24,.L1591
	xc	24(1,%r2),24(%r3)
	cije	%r4,25,.L1591
	xc	25(1,%r2),25(%r3)
	cije	%r4,26,.L1591
	xc	26(1,%r2),26(%r3)
	cije	%r4,27,.L1591
	xc	27(1,%r2),27(%r3)
	cije	%r4,28,.L1591
	xc	28(1,%r2),28(%r3)
	cije	%r4,29,.L1591
	xc	29(1,%r2),29(%r3)
	cije	%r4,30,.L1591
	xc	30(1,%r2),30(%r3)
	br	%r14
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
	.align	16
.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	cli	0(%r2),0
	je	.L1635
	vlbb	%v0,1(%r2),6
	ahik	%r1,%r2,1
	lcbb	%r5,0(%r1),6
	vzero	%v2
	vfeebs	%v5,%v0,%v2
	vlgvf	%r0,%v5,1
	clrjhe	%r0,%r5,.L1651
.L1630:
	vlgvf	%r5,%v5,1
	ar	%r1,%r5
.L1628:
	cije	%r4,0,.L1632
	ahik	%r0,%r4,-1
	tmll	%r4,1
	je	.L1641
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1634
	ahi	%r3,1
	ahi	%r1,1
	cije	%r0,0,.L1632
.L1641:
	srl	%r4,1
.L1631:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1652
	llgc	%r5,1(%r3)
	ahi	%r3,2
	stc	%r5,1(%r1)
	cgije	%r5,0,.L1653
	ahi	%r1,2
	brct	%r4,.L1631
.L1632:
	mvi	0(%r1),0
.L1634:
	br	%r14
.L1651:
	ahik	%r1,%r2,17
	nill	%r1,65520
	vl	%v1,0(%r1),4
	vfeebs	%v5,%v1,%v2
	jl	.L1630
.L1629:
	vl	%v3,16(%r1),4
	ahi	%r1,16
	vfeebs	%v5,%v3,%v2
	jnl	.L1629
	j	.L1630
.L1652:
	br	%r14
.L1653:
	br	%r14
.L1635:
	lr	%r1,%r2
	j	.L1628
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	8
	.align	16
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	lr	%r1,%r2
	lhi	%r2,0
	cije	%r3,0,.L1655
	lr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1667
	cije	%r5,1,.L1678
	cije	%r5,2,.L1679
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1679:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1678:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	crje	%r3,%r2,.L1655
.L1667:
	srl	%r4,2
.L1656:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahik	%r3,%r2,1
	la	%r5,0(%r3,%r1)
	lr	%r2,%r3
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahik	%r2,%r3,2
	lhi	%r5,2
	la	%r5,0(%r5,%r1)
	la	%r5,0(%r5,%r3)
	cli	0(%r5),0
	ber	%r14
	ahik	%r2,%r3,3
	brct	%r4,.L1656
	br	%r14
.L1655:
	br	%r14
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
	.align	16
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L1693
.L1699:
	lr	%r1,%r3
	j	.L1692
.L1691:
	crje	%r4,%r5,.L1690
.L1692:
	llc	%r4,0(%r1)
	ahi	%r1,1
	cijlh	%r4,0,.L1691
	ahi	%r2,1
	cli	0(%r2),0
	llc	%r5,0(%r2)
	jne	.L1699
.L1693:
	lhi	%r2,0
.L1690:
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	8
	.align	16
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	lr	%r1,%r2
	lhi	%r2,0
.L1702:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locre	%r2,%r1
	ahi	%r1,1
	cijlh	%r4,0,.L1702
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	8
	.align	16
.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	ldgr	%f5,%r10
	.cfi_register 10, 22
	llc	%r10,0(%r3)
	ldgr	%f8,%r8
	.cfi_register 8, 24
	ldgr	%f7,%r9
	.cfi_register 9, 23
	ldgr	%f3,%r11
	.cfi_register 11, 21
	ldgr	%f1,%r12
	.cfi_register 12, 20
	tml	%r10,255
	je	.L1705
	vlbb	%v0,1(%r3),6
	ahik	%r1,%r3,1
	lcbb	%r4,0(%r1),6
	vzero	%v2
	vfeebs	%v14,%v0,%v2
	lr	%r8,%r10
	vlgvf	%r5,%v14,1
	clrjhe	%r5,%r4,.L1728
.L1708:
	vlgvf	%r0,%v14,1
	ar	%r1,%r0
	slr	%r1,%r3
	jhe	.L1705
	ahik	%r9,%r1,-1
	llcr	%r8,%r8
	j	.L1726
.L1730:
	ahi	%r2,1
	cije	%r1,0,.L1729
.L1726:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1730
	lr	%r5,%r3
	lr	%r4,%r2
	lr	%r12,%r8
	ahik	%r0,%r9,1
.L1710:
	ahik	%r11,%r5,1
	brct	%r0,.L1724
.L1712:
	crje	%r1,%r12,.L1705
.L1713:
	ahi	%r2,1
	j	.L1726
.L1729:
	lhi	%r2,0
.L1705:
	lgdr	%r12,%f1
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f3
	.cfi_restore 11
	lgdr	%r10,%f5
	.cfi_restore 10
	lgdr	%r9,%f7
	.cfi_restore 9
	lgdr	%r8,%f8
	.cfi_restore 8
	br	%r14
.L1728:
	.cfi_restore_state
	ahik	%r1,%r3,17
	nill	%r1,65520
	vl	%v10,0(%r1),4
	vfeebs	%v14,%v10,%v2
	jl	.L1708
.L1707:
	vl	%v12,16(%r1),4
	ahi	%r1,16
	vfeebs	%v14,%v12,%v2
	jnl	.L1707
	j	.L1708
.L1724:
	crjlh	%r12,%r1,.L1713
	ahi	%r4,1
	llc	%r12,1(%r5)
	cli	0(%r4),0
	llc	%r1,0(%r4)
	je	.L1712
	cli	1(%r5),0
	je	.L1713
	lr	%r5,%r11
	j	.L1710
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
	.align	16
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	lzdr	%f1
	kdbr	%f0,%f1
	jl	.L1742
	jnh	.L1736
	lzdr	%f3
	kdbr	%f2,%f3
	jl	.L1735
.L1736:
	br	%r14
.L1742:
	kdbr	%f2,%f1
	jnh	.L1736
.L1735:
	lcdbr	%f0,%f0
	br	%r14
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	8
	.align	16
.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	cije	%r5,0,.L1788
	clrjl	%r3,%r5,.L1753
	sr	%r3,%r5
	alr	%r3,%r2
	jnle	.L1753
	ldgr	%f1,%r10
	.cfi_register 10, 20
	llc	%r0,0(%r4)
	ahik	%r10,%r5,-1
	ldgr	%f7,%r7
	.cfi_register 7, 23
	ldgr	%f5,%r8
	.cfi_register 8, 22
	ldgr	%f3,%r9
	.cfi_register 9, 21
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	llgfr	%r10,%r10
	j	.L1750
.L1754:
	lr	%r2,%r12
.L1746:
	clrjl	%r3,%r2,.L1755
.L1750:
	llc	%r1,0(%r2)
	ahik	%r12,%r2,1
	crjlh	%r1,%r0,.L1754
	cije	%r5,1,.L1744
.L1749:
	lghi	%r1,0
	risbg	%r11,%r10,62,128+63,0
	je	.L1765
	cgije	%r11,1,.L1775
	cgije	%r11,2,.L1776
	clc	1(1,%r4),1(%r2)
	lghi	%r1,1
	jne	.L1782
.L1776:
	lr	%r7,%r1
	llgc	%r8,1(%r7,%r4)
	aghi	%r1,1
	lhi	%r9,1
	la	%r11,0(%r9,%r2)
	la	%r7,0(%r11,%r7)
	clm	%r8,1,0(%r7)
	jne	.L1782
.L1775:
	llgc	%r8,1(%r1,%r4)
	lhi	%r9,1
	la	%r7,0(%r9,%r2)
	la	%r11,0(%r7,%r1)
	clm	%r8,1,0(%r11)
	jne	.L1782
	aghi	%r1,1
	cgrje	%r1,%r10,.L1744
.L1765:
	srlg	%r9,%r10,2
.L1747:
	llgc	%r7,1(%r1,%r4)
	lhi	%r8,1
	la	%r8,0(%r8,%r2)
	la	%r11,0(%r8,%r1)
	clm	%r7,1,0(%r11)
	jne	.L1782
	llgc	%r7,2(%r1,%r4)
	ahik	%r11,%r1,1
	lhi	%r8,1
	la	%r8,0(%r8,%r2)
	la	%r11,0(%r8,%r11)
	clm	%r7,1,0(%r11)
	jne	.L1782
	llgc	%r7,3(%r1,%r4)
	ahik	%r11,%r1,2
	lhi	%r8,1
	la	%r8,0(%r8,%r2)
	la	%r11,0(%r8,%r11)
	clm	%r7,1,0(%r11)
	jne	.L1782
	llgc	%r7,4(%r1,%r4)
	ahik	%r11,%r1,3
	lhi	%r8,1
	la	%r8,0(%r8,%r2)
	la	%r11,0(%r8,%r11)
	clm	%r7,1,0(%r11)
	jne	.L1782
	aghi	%r1,4
	brctg	%r9,.L1747
.L1744:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r9,%f3
	.cfi_restore 9
	lgdr	%r8,%f5
	.cfi_restore 8
	lgdr	%r7,%f7
	.cfi_restore 7
	br	%r14
.L1782:
	.cfi_restore_state
	clrjl	%r3,%r12,.L1755
	llc	%r1,0(%r12)
	ahik	%r2,%r12,1
	crjlh	%r0,%r1,.L1746
	lr	%r9,%r12
	lr	%r12,%r2
	lr	%r2,%r9
	j	.L1749
.L1755:
	lhi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r9,%f3
	.cfi_restore 9
	lgdr	%r8,%f5
	.cfi_restore 8
	lgdr	%r7,%f7
	.cfi_restore 7
	br	%r14
.L1753:
	lhi	%r2,0
	br	%r14
.L1788:
	br	%r14
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	8
	.align	16
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stm	%r11,%r15,76(%r15)
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 120
	lr	%r11,%r2
	lr	%r12,%r4
	cije	%r4,0,.L1793
	brasl	%r14,memmove
.L1793:
	ark	%r2,%r11,%r12
	lm	%r11,%r15,100(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	8
	.align	16
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	larl	%r5,.L1825
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1822
	kdb	%f0,.L1826-.L1825(%r5)
	jnhe	.L1823
	lhi	%r3,0
.L1802:
	lhi	%r1,0
.L1808:
	mdb	%f0,.L1827-.L1825(%r5)
	ahi	%r1,1
	kdb	%f0,.L1826-.L1825(%r5)
	jhe	.L1808
.L1809:
	st	%r1,0(%r2)
	cije	%r3,0,.L1799
	lcdbr	%f0,%f0
.L1799:
	br	%r14
.L1823:
	kdb	%f0,.L1827-.L1825(%r5)
	jnl	.L1805
	lzdr	%f1
	cdbr	%f0,%f1
	jne	.L1814
.L1805:
	mvhi	0(%r2),0
	br	%r14
.L1822:
	lcdbr	%f3,%f0
	kdb	%f0,.L1828-.L1825(%r5)
	jnle	.L1824
	ldr	%f0,%f3
	lhi	%r3,1
	j	.L1802
.L1824:
	kdb	%f0,.L1829-.L1825(%r5)
	jnh	.L1805
	lhi	%r3,1
.L1803:
	ldr	%f0,%f3
	lhi	%r1,0
.L1810:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1827-.L1825(%r5)
	jl	.L1810
	j	.L1809
.L1814:
	ldr	%f3,%f0
	lhi	%r3,0
	j	.L1803
	.section	.rodata
	.align	8
.L1825:
.L1829:
	.long	-1075838976
	.long	0
.L1828:
	.long	-1074790400
	.long	0
.L1827:
	.long	1071644672
	.long	0
.L1826:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	8
	.align	16
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	llgfr	%r0,%r3
	llgfr	%r5,%r5
	rosbg	%r0,%r2,0,31,32
	rosbg	%r5,%r4,0,31,32
	lghi	%r3,0
	cgije	%r0,0,.L1830
.L1832:
	risbg	%r1,%r0,63,128+63,0
	srlg	%r0,%r0,1
	lcgr	%r2,%r1
	ngr	%r2,%r5
	sllg	%r5,%r5,1
	agr	%r3,%r2
	cgijlh	%r0,0,.L1832
.L1830:
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	8
	.align	16
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r5,%r4,0,0+32-1,64-0-32
	clrjhe	%r3,%r2,.L1951
	lhi	%r12,1
	cijl	%r3,0,.L1946
	sllk	%r1,%r3,1
	lhi	%r4,2
	clrjle	%r2,%r1,.L1839
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r0,11
	cijl	%r1,0,.L1946
.L1841:
	sll	%r1,1
	sll	%r4,1
	clrjle	%r2,%r1,.L1839
	ahik	%r11,%r10,-1
	brct	%r0,.L1914
	lr	%r0,%r2
.L1840:
	ltgr	%r5,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	selrne	%r2,%r0,%r11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1914:
	.cfi_restore_state
	lr	%r12,%r4
	lr	%r3,%r1
	cijl	%r1,0,.L1946
	sll	%r1,1
	sll	%r4,1
	clrjle	%r2,%r1,.L1839
	lr	%r12,%r4
	lr	%r3,%r1
	cijl	%r1,0,.L1946
	sll	%r1,1
	sll	%r4,1
	clrjle	%r2,%r1,.L1839
	ahi	%r10,-3
	lr	%r12,%r4
	lr	%r3,%r1
	cijhe	%r1,0,.L1841
.L1946:
	srk	%r0,%r2,%r3
	clr	%r2,%r3
	lr	%r11,%r12
	locrnhe	%r0,%r2
	lochinhe	%r11,0
	srlk	%r2,%r12,1
	srlk	%r10,%r3,1
	cijlh	%r2,0,.L1844
	j	.L1840
.L1839:
	cije	%r4,0,.L1847
	srk	%r0,%r2,%r1
	clr	%r2,%r1
	lr	%r11,%r4
	lochinhe	%r11,0
	locrnhe	%r0,%r2
	la	%r10,0(%r3)
	la	%r2,0(%r12)
	lr	%r3,%r1
	lr	%r12,%r4
.L1844:
	srk	%r1,%r0,%r10
	slrk	%r10,%r0,%r10
	lhi	%r4,0
	alcr	%r4,%r4
	srlk	%r10,%r12,2
	ltr	%r4,%r4
	lochie	%r2,0
	locrne	%r0,%r1
	or	%r11,%r2
	srlk	%r2,%r3,2
	cije	%r10,0,.L1840
	srk	%r1,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r4,0
	alcr	%r4,%r4
	srlk	%r2,%r12,3
	ltr	%r4,%r4
	lochie	%r10,0
	locrne	%r0,%r1
	or	%r11,%r10
	srlk	%r10,%r3,3
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,4
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,4
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,5
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,5
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,6
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,6
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,7
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,7
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,8
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,8
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,9
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,9
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,10
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,10
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,11
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,11
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,12
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,12
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,13
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,13
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,14
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,14
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,15
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,15
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,16
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,16
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,17
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,17
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,18
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,18
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,19
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,19
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,20
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,20
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,21
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,21
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,22
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,22
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,23
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,23
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,24
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,24
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,25
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,25
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,26
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,26
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,27
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	or	%r11,%r10
	srlk	%r10,%r3,27
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,28
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	srlk	%r2,%r3,28
	cije	%r10,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r3,29
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r4
	srlk	%r1,%r12,29
	or	%r11,%r10
	cije	%r1,0,.L1840
	srk	%r4,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r10,0
	alcr	%r10,%r10
	srlk	%r2,%r12,30
	ltr	%r10,%r10
	lochie	%r1,0
	locrne	%r0,%r4
	or	%r11,%r1
	srlk	%r1,%r3,30
	cije	%r2,0,.L1840
	srk	%r4,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r10,0
	alcr	%r10,%r10
	srl	%r3,31
	ltr	%r10,%r10
	lochie	%r2,0
	locrne	%r0,%r4
	or	%r11,%r2
	cijhe	%r12,0,.L1840
	srk	%r12,%r0,%r3
	slrk	%r3,%r0,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locrne	%r0,%r12
	or	%r11,%r3
	j	.L1840
.L1951:
	srk	%r0,%r2,%r3
	xrk	%r1,%r3,%r2
	lpr	%r3,%r1
	ahi	%r3,-1
	locrnl	%r0,%r2
	srlk	%r11,%r3,31
	j	.L1840
.L1847:
	lr	%r0,%r2
	lhi	%r11,0
	j	.L1840
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
	.align	16
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	lr	%r1,%r2
	risbgn	%r4,%r1,48,128+55,8
	flogr	%r4,%r4
	ahik	%r2,%r4,-33
	ltr	%r1,%r1
	lochie	%r2,7
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
	.align	16
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	lgr	%r1,%r3
	risbgn	%r1,%r2,0,0+32-1,64-0-32
	srag	%r4,%r1,63
	xgrk	%r2,%r1,%r4
	flogr	%r2,%r2
	ahi	%r2,-1
	cgr	%r1,%r4
	lochie	%r2,63
	br	%r14
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
	.align	16
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L1964
	nilf	%r2,1
	srlk	%r4,%r1,1
	lcr	%r2,%r2
	sllk	%r5,%r3,1
	nr	%r2,%r3
	cije	%r4,0,.L1961
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r1,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r2,%r0
	cije	%r4,0,.L1961
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r1,3
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r2,%r4
	cije	%r5,0,.L1961
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r2,%r4
	cije	%r5,0,.L1961
	nilf	%r5,1
	srlk	%r4,%r1,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r2,%r5
	cije	%r4,0,.L1961
	risbgn	%r5,%r1,64-1,128+63,33+1
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,30
	ar	%r4,%r2
	sll	%r3,31
	lcr	%r2,%r5
	srak	%r5,%r1,31
	nr	%r2,%r0
	nr	%r3,%r5
	ar	%r2,%r4
	ar	%r2,%r3
	srl	%r1,30
	ltr	%r1,%r1
	locre	%r2,%r4
	br	%r14
.L1964:
	lhi	%r2,0
.L1961:
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	8
	.align	16
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f8,%r7
	.cfi_register 7, 24
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	srlk	%r12,%r4,3
	risbg	%r5,%r4,32,128+60,0
	clrjl	%r2,%r3,.L2060
	ark	%r1,%r3,%r4
	clrjle	%r2,%r1,.L2254
.L2060:
	cije	%r12,0,.L2255
	ahik	%r10,%r12,-1
	clijle	%r10,6,.L2062
	ahik	%r1,%r3,8
	crje	%r2,%r1,.L2062
	risbg	%r11,%r4,32,128+59,0
	ahik	%r0,%r11,-16
	srlk	%r10,%r4,4
	srl	%r0,4
	lhi	%r1,0
	ahi	%r0,1
	risbg	%r7,%r0,62,128+63,0
	je	.L2145
	cije	%r7,1,.L2168
	cijlh	%r7,2,.L2256
.L2169:
	vl	%v16,0(%r1,%r3),3
	vst	%v16,0(%r1,%r2),3
	ahi	%r1,16
.L2168:
	vl	%v18,0(%r1,%r3),3
	vst	%v18,0(%r1,%r2),3
	ahi	%r1,16
	crje	%r11,%r1,.L2221
.L2145:
	srl	%r0,2
	chi	%r0,2
	jle	.L2250
	ahi	%r0,-1
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
.L2063:
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
	ahi	%r1,64
	vl	%v0,0(%r1,%r3),3
	vst	%v0,0(%r1,%r2),3
	brct	%r0,.L2063
	vl	%v0,16(%r1,%r3),3
	vst	%v0,16(%r1,%r2),3
	vl	%v0,32(%r1,%r3),3
	vst	%v0,32(%r1,%r2),3
	vl	%v0,48(%r1,%r3),3
	vst	%v0,48(%r1,%r2),3
.L2221:
	sll	%r10,1
	crje	%r12,%r10,.L2066
	lg	%r12,0(%r11,%r3)
	stg	%r12,0(%r11,%r2)
.L2066:
	clrjle	%r4,%r5,.L2055
	srk	%r10,%r4,%r5
	ahik	%r0,%r10,-1
	clijle	%r0,30,.L2167
	ahik	%r1,%r5,1
	ark	%r12,%r2,%r5
	ar	%r1,%r3
	srk	%r11,%r12,%r1
	clijle	%r11,14,.L2167
	risbg	%r9,%r10,32,128+59,0
	ark	%r11,%r3,%r5
	ahik	%r0,%r9,-16
	lhi	%r1,0
	srl	%r0,4
	ahi	%r0,1
	risbg	%r7,%r0,62,128+63,0
	je	.L2127
	cije	%r7,1,.L2172
	cijlh	%r7,2,.L2257
.L2173:
	vl	%v23,0(%r1,%r11)
	vst	%v23,0(%r1,%r12)
	ahi	%r1,16
.L2172:
	vl	%v24,0(%r1,%r11)
	vst	%v24,0(%r1,%r12)
	ahi	%r1,16
	crje	%r9,%r1,.L2220
.L2127:
	srl	%r0,2
	chi	%r0,2
	jle	.L2248
	ahi	%r0,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L2067:
	vl	%v0,16(%r1,%r11)
	vst	%v0,16(%r1,%r12)
	vl	%v0,32(%r1,%r11)
	vst	%v0,32(%r1,%r12)
	vl	%v0,48(%r1,%r11)
	vst	%v0,48(%r1,%r12)
	ahi	%r1,64
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r0,.L2067
	vl	%v0,16(%r1,%r11)
	vst	%v0,16(%r1,%r12)
	vl	%v0,32(%r1,%r11)
	vst	%v0,32(%r1,%r12)
	vl	%v0,48(%r1,%r11)
	vst	%v0,48(%r1,%r12)
.L2220:
	ark	%r12,%r5,%r9
	crje	%r10,%r9,.L2055
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahik	%r10,%r12,1
	clrjle	%r4,%r10,.L2055
	ic	%r8,1(%r12,%r3)
	stc	%r8,1(%r12,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L2055
	ic	%r0,2(%r12,%r3)
	stc	%r0,2(%r12,%r2)
	ahik	%r1,%r12,3
	clrjle	%r4,%r1,.L2055
	ic	%r11,3(%r12,%r3)
	stc	%r11,3(%r12,%r2)
	ahik	%r7,%r12,4
	clrjle	%r4,%r7,.L2055
	ic	%r5,4(%r12,%r3)
	stc	%r5,4(%r12,%r2)
	ahik	%r10,%r12,5
	clrjle	%r4,%r10,.L2055
	ic	%r8,5(%r12,%r3)
	stc	%r8,5(%r12,%r2)
	ahik	%r9,%r12,6
	clrjle	%r4,%r9,.L2055
	ic	%r0,6(%r12,%r3)
	stc	%r0,6(%r12,%r2)
	ahik	%r1,%r12,7
	clrjle	%r4,%r1,.L2055
	ic	%r11,7(%r12,%r3)
	stc	%r11,7(%r12,%r2)
	ahik	%r7,%r12,8
	clrjle	%r4,%r7,.L2055
	ic	%r5,8(%r12,%r3)
	stc	%r5,8(%r12,%r2)
	ahik	%r10,%r12,9
	clrjle	%r4,%r10,.L2055
	ic	%r8,9(%r12,%r3)
	stc	%r8,9(%r12,%r2)
	ahik	%r9,%r12,10
	clrjle	%r4,%r9,.L2055
	ic	%r0,10(%r12,%r3)
	stc	%r0,10(%r12,%r2)
	ahik	%r1,%r12,11
	clrjle	%r4,%r1,.L2055
	ic	%r11,11(%r12,%r3)
	stc	%r11,11(%r12,%r2)
	ahik	%r7,%r12,12
	clrjle	%r4,%r7,.L2055
	ic	%r5,12(%r12,%r3)
	stc	%r5,12(%r12,%r2)
	ahik	%r10,%r12,13
	clrjle	%r4,%r10,.L2055
	ic	%r8,13(%r12,%r3)
	stc	%r8,13(%r12,%r2)
	ahik	%r9,%r12,14
	clrjle	%r4,%r9,.L2055
	ic	%r3,14(%r12,%r3)
	stc	%r3,14(%r12,%r2)
.L2055:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	lgdr	%r7,%f8
	.cfi_restore 7
	br	%r14
.L2254:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	cije	%r4,0,.L2055
	clijle	%r10,30,.L2176
	ahik	%r5,%r4,-2
	ark	%r0,%r2,%r10
	ar	%r5,%r3
	sr	%r0,%r5
	ahi	%r0,14
	clijle	%r0,14,.L2176
	risbg	%r7,%r4,32,128+59,0
	ahik	%r12,%r4,-16
	ahik	%r5,%r7,-16
	ark	%r11,%r3,%r12
	lcr	%r8,%r7
	ar	%r12,%r2
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r9,%r5,62,128+63,0
	je	.L2163
	cije	%r9,1,.L2177
	cijlh	%r9,2,.L2258
.L2178:
	vl	%v10,0(%r1,%r11)
	vst	%v10,0(%r1,%r12)
	ahi	%r1,-16
.L2177:
	vl	%v12,0(%r1,%r11)
	vst	%v12,0(%r1,%r12)
	ahi	%r1,-16
	crje	%r1,%r8,.L2222
.L2163:
	srl	%r5,2
	chi	%r5,2
	jle	.L2252
	ahi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L2072:
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r5,.L2072
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
.L2222:
	risbg	%r11,%r4,32,128+59,0
	sr	%r10,%r11
	tmll	%r4,15
	je	.L2055
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	ahik	%r12,%r10,-1
	cije	%r10,0,.L2055
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	ahik	%r5,%r10,-2
	cije	%r12,0,.L2055
	icy	%r0,-2(%r10,%r3)
	stcy	%r0,-2(%r10,%r2)
	ahik	%r7,%r10,-3
	cije	%r5,0,.L2055
	icy	%r8,-3(%r10,%r3)
	stcy	%r8,-3(%r10,%r2)
	ahik	%r9,%r10,-4
	cije	%r7,0,.L2055
	icy	%r11,-4(%r10,%r3)
	stcy	%r11,-4(%r10,%r2)
	ahik	%r4,%r10,-5
	cije	%r9,0,.L2055
	icy	%r12,-5(%r10,%r3)
	stcy	%r12,-5(%r10,%r2)
	ahik	%r1,%r10,-6
	cije	%r4,0,.L2055
	icy	%r5,-6(%r10,%r3)
	stcy	%r5,-6(%r10,%r2)
	ahik	%r0,%r10,-7
	cije	%r1,0,.L2055
	icy	%r7,-7(%r10,%r3)
	stcy	%r7,-7(%r10,%r2)
	ahik	%r8,%r10,-8
	cije	%r0,0,.L2055
	icy	%r9,-8(%r10,%r3)
	stcy	%r9,-8(%r10,%r2)
	ahik	%r11,%r10,-9
	cije	%r8,0,.L2055
	icy	%r4,-9(%r10,%r3)
	stcy	%r4,-9(%r10,%r2)
	ahik	%r12,%r10,-10
	cije	%r11,0,.L2055
	icy	%r1,-10(%r10,%r3)
	stcy	%r1,-10(%r10,%r2)
	ahik	%r0,%r10,-11
	cije	%r12,0,.L2055
	icy	%r5,-11(%r10,%r3)
	stcy	%r5,-11(%r10,%r2)
	ahik	%r7,%r10,-12
	cije	%r0,0,.L2055
	icy	%r8,-12(%r10,%r3)
	stcy	%r8,-12(%r10,%r2)
	ahik	%r9,%r10,-13
	cije	%r7,0,.L2055
	icy	%r11,-13(%r10,%r3)
	stcy	%r11,-13(%r10,%r2)
	cije	%r9,0,.L2055
	icy	%r3,-14(%r10,%r3)
	stcy	%r3,-14(%r10,%r2)
	j	.L2055
.L2250:
	vl	%v20,0(%r1,%r3),3
	vst	%v20,0(%r1,%r2),3
	vl	%v22,16(%r1,%r3),3
	vst	%v22,16(%r1,%r2),3
	vl	%v17,32(%r1,%r3),3
	vst	%v17,32(%r1,%r2),3
	vl	%v19,48(%r1,%r3),3
	vst	%v19,48(%r1,%r2),3
	ahi	%r1,64
	brct	%r0,.L2250
	j	.L2221
.L2248:
	vl	%v26,0(%r1,%r11)
	vst	%v26,0(%r1,%r12)
	vl	%v28,16(%r1,%r11)
	vst	%v28,16(%r1,%r12)
	vl	%v30,32(%r1,%r11)
	vst	%v30,32(%r1,%r12)
	vl	%v25,48(%r1,%r11)
	vst	%v25,48(%r1,%r12)
	ahi	%r1,64
	brct	%r0,.L2248
	j	.L2220
.L2256:
	vl	%v15,0(%r3),3
	lhi	%r1,16
	vst	%v15,0(%r2),3
	j	.L2169
.L2257:
	vl	%v21,0(%r11)
	lhi	%r1,16
	vst	%v21,0(%r12)
	j	.L2173
.L2252:
	vl	%v14,0(%r1,%r11)
	ahik	%r7,%r1,-16
	ahik	%r8,%r1,-32
	vst	%v14,0(%r1,%r12)
	ahik	%r9,%r1,-48
	ahi	%r1,-64
	vl	%v9,0(%r7,%r11)
	vst	%v9,0(%r7,%r12)
	vl	%v11,0(%r8,%r11)
	vst	%v11,0(%r8,%r12)
	vl	%v13,0(%r9,%r11)
	vst	%v13,0(%r9,%r12)
	brct	%r5,.L2252
	j	.L2222
.L2255:
	cije	%r4,0,.L2055
.L2167:
	srk	%r1,%r4,%r5
	risbg	%r12,%r1,62,128+63,0
	je	.L2118
	cije	%r12,1,.L2174
	cijlh	%r12,2,.L2259
.L2175:
	ic	%r11,0(%r5,%r3)
	stc	%r11,0(%r5,%r2)
	ahi	%r5,1
.L2174:
	ic	%r7,0(%r5,%r3)
	stc	%r7,0(%r5,%r2)
	ahi	%r5,1
	crje	%r4,%r5,.L2055
.L2118:
	srl	%r1,2
	chi	%r1,2
	jle	.L2247
	ahi	%r1,-1
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
.L2069:
	ic	%r4,1(%r5,%r3)
	stc	%r4,1(%r5,%r2)
	ic	%r4,2(%r5,%r3)
	stc	%r4,2(%r5,%r2)
	ic	%r4,3(%r5,%r3)
	stc	%r4,3(%r5,%r2)
	ahi	%r5,4
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	brct	%r1,.L2069
	ic	%r1,1(%r5,%r3)
	stc	%r1,1(%r5,%r2)
	ic	%r1,2(%r5,%r3)
	stc	%r1,2(%r5,%r2)
	ic	%r1,3(%r5,%r3)
	stc	%r1,3(%r5,%r2)
	j	.L2055
.L2247:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ic	%r10,1(%r5,%r3)
	stc	%r10,1(%r5,%r2)
	ic	%r8,2(%r5,%r3)
	stc	%r8,2(%r5,%r2)
	ic	%r9,3(%r5,%r3)
	stc	%r9,3(%r5,%r2)
	ahi	%r5,4
	brct	%r1,.L2247
	j	.L2055
.L2062:
	sll	%r12,3
	ahik	%r0,%r12,-8
	lhi	%r1,0
	srl	%r0,3
	ahi	%r0,1
	risbg	%r8,%r0,62,128+63,0
	je	.L2136
	cije	%r8,1,.L2170
	cijlh	%r8,2,.L2260
.L2171:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	ahi	%r1,8
.L2170:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	ahi	%r1,8
	crje	%r1,%r12,.L2066
.L2136:
	srl	%r0,2
	chi	%r0,2
	jle	.L2249
	ahi	%r0,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L2065:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	ahi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brct	%r0,.L2065
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	j	.L2066
.L2249:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r8,16(%r1,%r3)
	stg	%r8,16(%r1,%r2)
	lg	%r9,24(%r1,%r3)
	stg	%r9,24(%r1,%r2)
	ahi	%r1,32
	brct	%r0,.L2249
	j	.L2066
.L2258:
	vl	%v0,0(%r11)
	lhi	%r1,-16
	vst	%v0,0(%r12)
	j	.L2178
.L2260:
	lg	%r9,0(%r3)
	lhi	%r1,8
	stg	%r9,0(%r2)
	j	.L2171
.L2259:
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,1
	j	.L2175
.L2176:
	ahik	%r1,%r10,1
	risbg	%r4,%r1,62,128+63,0
	je	.L2154
	cije	%r4,1,.L2179
	cije	%r4,2,.L2180
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	ahi	%r10,-1
.L2180:
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r10,-1
.L2179:
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahi	%r10,-1
	cije	%r10,-1,.L2055
.L2154:
	srl	%r1,2
	chi	%r1,2
	jle	.L2251
	ahi	%r1,-1
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
.L2075:
	icy	%r4,-1(%r10,%r3)
	stcy	%r4,-1(%r10,%r2)
	icy	%r4,-2(%r10,%r3)
	stcy	%r4,-2(%r10,%r2)
	icy	%r4,-3(%r10,%r3)
	stcy	%r4,-3(%r10,%r2)
	ahi	%r10,-4
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	brct	%r1,.L2075
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	icy	%r1,-2(%r10,%r3)
	stcy	%r1,-2(%r10,%r2)
	icy	%r1,-3(%r10,%r3)
	stcy	%r1,-3(%r10,%r2)
	j	.L2055
.L2251:
	ic	%r7,0(%r10,%r3)
	stc	%r7,0(%r10,%r2)
	icy	%r8,-1(%r10,%r3)
	stcy	%r8,-1(%r10,%r2)
	icy	%r9,-2(%r10,%r3)
	stcy	%r9,-2(%r10,%r2)
	icy	%r11,-3(%r10,%r3)
	stcy	%r11,-3(%r10,%r2)
	ahi	%r10,-4
	brct	%r1,.L2251
	j	.L2055
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
	.align	16
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	ldgr	%f8,%r7
	.cfi_register 7, 24
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	ldgr	%f2,%r12
	.cfi_register 12, 17
	srlk	%r0,%r4,1
	clrjl	%r2,%r3,.L2266
	ark	%r1,%r3,%r4
	clrjle	%r2,%r1,.L2416
.L2266:
	cije	%r0,0,.L2265
	ahik	%r10,%r0,-1
	clijle	%r10,14,.L2269
	ahik	%r1,%r3,2
	srk	%r12,%r2,%r1
	clijle	%r12,12,.L2269
	risbg	%r12,%r4,32,128+59,0
	ahik	%r5,%r12,-16
	srlk	%r11,%r4,4
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r7,%r5,62,128+63,0
	je	.L2330
	cije	%r7,1,.L2352
	cijlh	%r7,2,.L2417
.L2353:
	vl	%v16,0(%r1,%r3)
	vst	%v16,0(%r1,%r2)
	ahi	%r1,16
.L2352:
	vl	%v18,0(%r1,%r3)
	vst	%v18,0(%r1,%r2)
	ahi	%r1,16
	crje	%r12,%r1,.L2393
.L2330:
	srl	%r5,2
	chi	%r5,2
	jle	.L2412
	ahi	%r5,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2270:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	ahi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brct	%r5,.L2270
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2393:
	sllk	%r8,%r11,3
	crje	%r0,%r8,.L2265
	lh	%r5,0(%r12,%r3)
	sth	%r5,0(%r12,%r2)
	ahik	%r9,%r8,1
	clrjle	%r0,%r9,.L2265
	lh	%r11,2(%r12,%r3)
	sth	%r11,2(%r12,%r2)
	ahik	%r10,%r8,2
	clrjle	%r0,%r10,.L2265
	lh	%r1,4(%r12,%r3)
	sth	%r1,4(%r12,%r2)
	ahik	%r7,%r8,3
	clrjle	%r0,%r7,.L2265
	lh	%r5,6(%r12,%r3)
	sth	%r5,6(%r12,%r2)
	ahik	%r9,%r8,4
	clrjle	%r0,%r9,.L2265
	lh	%r11,8(%r12,%r3)
	sth	%r11,8(%r12,%r2)
	ahik	%r10,%r8,5
	clrjle	%r0,%r10,.L2265
	lh	%r1,10(%r12,%r3)
	sth	%r1,10(%r12,%r2)
	ahi	%r8,6
	clrjle	%r0,%r8,.L2265
	lh	%r0,12(%r12,%r3)
	sth	%r0,12(%r12,%r2)
.L2265:
	tmll	%r4,1
	je	.L2262
	icy	%r3,-1(%r4,%r3)
	stcy	%r3,-1(%r4,%r2)
.L2262:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	lgdr	%r7,%f8
	.cfi_restore 7
	br	%r14
.L2416:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	cije	%r4,0,.L2262
	clijle	%r10,30,.L2356
	ahik	%r5,%r4,-2
	ark	%r0,%r2,%r10
	ar	%r5,%r3
	sr	%r0,%r5
	ahi	%r0,14
	clijle	%r0,14,.L2356
	risbg	%r7,%r4,32,128+59,0
	ahik	%r12,%r4,-16
	ahik	%r5,%r7,-16
	ark	%r11,%r3,%r12
	lcr	%r8,%r7
	ar	%r12,%r2
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r9,%r5,62,128+63,0
	je	.L2348
	cije	%r9,1,.L2357
	cijlh	%r9,2,.L2418
.L2358:
	vl	%v10,0(%r1,%r11)
	vst	%v10,0(%r1,%r12)
	ahi	%r1,-16
.L2357:
	vl	%v12,0(%r1,%r11)
	vst	%v12,0(%r1,%r12)
	ahi	%r1,-16
	crje	%r1,%r8,.L2394
.L2348:
	srl	%r5,2
	chi	%r5,2
	jle	.L2414
	ahi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L2276:
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r5,.L2276
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
.L2394:
	risbg	%r11,%r4,32,128+59,0
	sr	%r10,%r11
	tmll	%r4,15
	je	.L2262
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	ahik	%r12,%r10,-1
	cije	%r10,0,.L2262
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	ahik	%r5,%r10,-2
	cije	%r12,0,.L2262
	icy	%r0,-2(%r10,%r3)
	stcy	%r0,-2(%r10,%r2)
	ahik	%r7,%r10,-3
	cije	%r5,0,.L2262
	icy	%r8,-3(%r10,%r3)
	stcy	%r8,-3(%r10,%r2)
	ahik	%r9,%r10,-4
	cije	%r7,0,.L2262
	icy	%r11,-4(%r10,%r3)
	stcy	%r11,-4(%r10,%r2)
	ahik	%r4,%r10,-5
	cije	%r9,0,.L2262
	icy	%r12,-5(%r10,%r3)
	stcy	%r12,-5(%r10,%r2)
	ahik	%r1,%r10,-6
	cije	%r4,0,.L2262
	icy	%r5,-6(%r10,%r3)
	stcy	%r5,-6(%r10,%r2)
	ahik	%r0,%r10,-7
	cije	%r1,0,.L2262
	icy	%r7,-7(%r10,%r3)
	stcy	%r7,-7(%r10,%r2)
	ahik	%r8,%r10,-8
	cije	%r0,0,.L2262
	icy	%r9,-8(%r10,%r3)
	stcy	%r9,-8(%r10,%r2)
	ahik	%r11,%r10,-9
	cije	%r8,0,.L2262
	icy	%r4,-9(%r10,%r3)
	stcy	%r4,-9(%r10,%r2)
	ahik	%r12,%r10,-10
	cije	%r11,0,.L2262
	icy	%r1,-10(%r10,%r3)
	stcy	%r1,-10(%r10,%r2)
	ahik	%r0,%r10,-11
	cije	%r12,0,.L2262
	icy	%r5,-11(%r10,%r3)
	stcy	%r5,-11(%r10,%r2)
	ahik	%r7,%r10,-12
	cije	%r0,0,.L2262
	icy	%r8,-12(%r10,%r3)
	stcy	%r8,-12(%r10,%r2)
	ahik	%r9,%r10,-13
	cije	%r7,0,.L2262
	icy	%r11,-13(%r10,%r3)
	stcy	%r11,-13(%r10,%r2)
	cije	%r9,0,.L2262
	icy	%r3,-14(%r10,%r3)
	stcy	%r3,-14(%r10,%r2)
	j	.L2262
.L2412:
	vl	%v20,0(%r1,%r3)
	vst	%v20,0(%r1,%r2)
	vl	%v22,16(%r1,%r3)
	vst	%v22,16(%r1,%r2)
	vl	%v17,32(%r1,%r3)
	vst	%v17,32(%r1,%r2)
	vl	%v19,48(%r1,%r3)
	vst	%v19,48(%r1,%r2)
	ahi	%r1,64
	brct	%r5,.L2412
	j	.L2393
.L2417:
	vl	%v15,0(%r3)
	lhi	%r1,16
	vst	%v15,0(%r2)
	j	.L2353
.L2414:
	vl	%v14,0(%r1,%r11)
	ahik	%r7,%r1,-16
	ahik	%r8,%r1,-32
	vst	%v14,0(%r1,%r12)
	ahik	%r9,%r1,-48
	ahi	%r1,-64
	vl	%v9,0(%r7,%r11)
	vst	%v9,0(%r7,%r12)
	vl	%v11,0(%r8,%r11)
	vst	%v11,0(%r8,%r12)
	vl	%v13,0(%r9,%r11)
	vst	%v13,0(%r9,%r12)
	brct	%r5,.L2414
	j	.L2394
.L2269:
	sll	%r0,1
	ahik	%r5,%r0,-2
	lhi	%r1,0
	srl	%r5,1
	ahi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L2321
	cije	%r12,1,.L2354
	cijlh	%r12,2,.L2419
.L2355:
	lh	%r7,0(%r1,%r3)
	sth	%r7,0(%r1,%r2)
	ahi	%r1,2
.L2354:
	lh	%r9,0(%r1,%r3)
	sth	%r9,0(%r1,%r2)
	ahi	%r1,2
	crje	%r0,%r1,.L2265
.L2321:
	srl	%r5,2
	chi	%r5,2
	jle	.L2411
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2272:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L2272
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2265
.L2411:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L2411
	j	.L2265
.L2418:
	vl	%v0,0(%r11)
	lhi	%r1,-16
	vst	%v0,0(%r12)
	j	.L2358
.L2419:
	lh	%r8,0(%r3)
	lhi	%r1,2
	sth	%r8,0(%r2)
	j	.L2355
.L2356:
	ahik	%r1,%r10,1
	risbg	%r4,%r1,62,128+63,0
	je	.L2339
	cije	%r4,1,.L2359
	cije	%r4,2,.L2360
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	ahi	%r10,-1
.L2360:
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r10,-1
.L2359:
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahi	%r10,-1
	cije	%r10,-1,.L2262
.L2339:
	srl	%r1,2
	chi	%r1,2
	jle	.L2413
	ahi	%r1,-1
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
.L2278:
	icy	%r4,-1(%r10,%r3)
	stcy	%r4,-1(%r10,%r2)
	icy	%r4,-2(%r10,%r3)
	stcy	%r4,-2(%r10,%r2)
	icy	%r4,-3(%r10,%r3)
	stcy	%r4,-3(%r10,%r2)
	ahi	%r10,-4
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	brct	%r1,.L2278
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	icy	%r1,-2(%r10,%r3)
	stcy	%r1,-2(%r10,%r2)
	icy	%r1,-3(%r10,%r3)
	stcy	%r1,-3(%r10,%r2)
	j	.L2262
.L2413:
	ic	%r7,0(%r10,%r3)
	stc	%r7,0(%r10,%r2)
	icy	%r8,-1(%r10,%r3)
	stcy	%r8,-1(%r10,%r2)
	icy	%r9,-2(%r10,%r3)
	stcy	%r9,-2(%r10,%r2)
	icy	%r11,-3(%r10,%r3)
	stcy	%r11,-3(%r10,%r2)
	ahi	%r10,-4
	brct	%r1,.L2413
	j	.L2262
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
	.align	16
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f8,%r7
	.cfi_register 7, 24
	ldgr	%f7,%r8
	.cfi_register 8, 23
	ldgr	%f5,%r9
	.cfi_register 9, 22
	ldgr	%f3,%r10
	.cfi_register 10, 21
	ldgr	%f1,%r11
	.cfi_register 11, 20
	srlk	%r12,%r4,2
	risbg	%r5,%r4,32,128+61,0
	clrjl	%r2,%r3,.L2426
	ark	%r1,%r3,%r4
	clrjle	%r2,%r1,.L2620
.L2426:
	cije	%r12,0,.L2621
	ahik	%r10,%r12,-1
	clijle	%r10,6,.L2428
	ahik	%r1,%r3,4
	srk	%r0,%r2,%r1
	clijle	%r0,8,.L2428
	risbg	%r10,%r4,32,128+59,0
	ahik	%r0,%r10,-16
	srlk	%r11,%r4,4
	srl	%r0,4
	lhi	%r1,0
	ahi	%r0,1
	risbg	%r7,%r0,62,128+63,0
	je	.L2511
	cije	%r7,1,.L2534
	cijlh	%r7,2,.L2622
.L2535:
	vl	%v16,0(%r1,%r3)
	vst	%v16,0(%r1,%r2)
	ahi	%r1,16
.L2534:
	vl	%v18,0(%r1,%r3)
	vst	%v18,0(%r1,%r2)
	ahi	%r1,16
	crje	%r10,%r1,.L2587
.L2511:
	srl	%r0,2
	chi	%r0,2
	jle	.L2616
	ahi	%r0,-1
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
.L2429:
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
	ahi	%r1,64
	vl	%v0,0(%r1,%r3)
	vst	%v0,0(%r1,%r2)
	brct	%r0,.L2429
	vl	%v0,16(%r1,%r3)
	vst	%v0,16(%r1,%r2)
	vl	%v0,32(%r1,%r3)
	vst	%v0,32(%r1,%r2)
	vl	%v0,48(%r1,%r3)
	vst	%v0,48(%r1,%r2)
.L2587:
	sllk	%r8,%r11,2
	crje	%r12,%r8,.L2432
	l	%r9,0(%r10,%r3)
	ahik	%r11,%r8,1
	st	%r9,0(%r10,%r2)
	clrjle	%r12,%r11,.L2432
	l	%r1,4(%r10,%r3)
	ahi	%r8,2
	st	%r1,4(%r10,%r2)
	clrjle	%r12,%r8,.L2432
	l	%r12,8(%r10,%r3)
	st	%r12,8(%r10,%r2)
.L2432:
	clrjle	%r4,%r5,.L2421
	srk	%r10,%r4,%r5
	ahik	%r0,%r10,-1
	clijle	%r0,30,.L2533
	ahik	%r1,%r5,1
	ark	%r12,%r2,%r5
	ar	%r1,%r3
	srk	%r8,%r12,%r1
	clijle	%r8,14,.L2533
	risbg	%r9,%r10,32,128+59,0
	ark	%r11,%r3,%r5
	ahik	%r0,%r9,-16
	lhi	%r1,0
	srl	%r0,4
	ahi	%r0,1
	risbg	%r7,%r0,62,128+63,0
	je	.L2493
	cije	%r7,1,.L2538
	cijlh	%r7,2,.L2623
.L2539:
	vl	%v23,0(%r1,%r11)
	vst	%v23,0(%r1,%r12)
	ahi	%r1,16
.L2538:
	vl	%v24,0(%r1,%r11)
	vst	%v24,0(%r1,%r12)
	ahi	%r1,16
	crje	%r9,%r1,.L2586
.L2493:
	srl	%r0,2
	chi	%r0,2
	jle	.L2614
	ahi	%r0,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L2433:
	vl	%v0,16(%r1,%r11)
	vst	%v0,16(%r1,%r12)
	vl	%v0,32(%r1,%r11)
	vst	%v0,32(%r1,%r12)
	vl	%v0,48(%r1,%r11)
	vst	%v0,48(%r1,%r12)
	ahi	%r1,64
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r0,.L2433
	vl	%v0,16(%r1,%r11)
	vst	%v0,16(%r1,%r12)
	vl	%v0,32(%r1,%r11)
	vst	%v0,32(%r1,%r12)
	vl	%v0,48(%r1,%r11)
	vst	%v0,48(%r1,%r12)
.L2586:
	ark	%r11,%r5,%r9
	crje	%r10,%r9,.L2421
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	ahik	%r9,%r11,1
	clrjle	%r4,%r9,.L2421
	ic	%r12,1(%r11,%r3)
	stc	%r12,1(%r11,%r2)
	ahik	%r10,%r11,2
	clrjhe	%r10,%r4,.L2421
	ic	%r0,2(%r11,%r3)
	stc	%r0,2(%r11,%r2)
	ahik	%r1,%r11,3
	clrjle	%r4,%r1,.L2421
	ic	%r8,3(%r11,%r3)
	stc	%r8,3(%r11,%r2)
	ahik	%r7,%r11,4
	clrjle	%r4,%r7,.L2421
	ic	%r5,4(%r11,%r3)
	stc	%r5,4(%r11,%r2)
	ahik	%r9,%r11,5
	clrjle	%r4,%r9,.L2421
	ic	%r12,5(%r11,%r3)
	stc	%r12,5(%r11,%r2)
	ahik	%r10,%r11,6
	clrjle	%r4,%r10,.L2421
	ic	%r0,6(%r11,%r3)
	stc	%r0,6(%r11,%r2)
	ahik	%r1,%r11,7
	clrjle	%r4,%r1,.L2421
	ic	%r8,7(%r11,%r3)
	stc	%r8,7(%r11,%r2)
	ahik	%r7,%r11,8
	clrjle	%r4,%r7,.L2421
	ic	%r5,8(%r11,%r3)
	stc	%r5,8(%r11,%r2)
	ahik	%r9,%r11,9
	clrjle	%r4,%r9,.L2421
	ic	%r12,9(%r11,%r3)
	stc	%r12,9(%r11,%r2)
	ahik	%r10,%r11,10
	clrjle	%r4,%r10,.L2421
	ic	%r0,10(%r11,%r3)
	stc	%r0,10(%r11,%r2)
	ahik	%r1,%r11,11
	clrjle	%r4,%r1,.L2421
	ic	%r8,11(%r11,%r3)
	stc	%r8,11(%r11,%r2)
	ahik	%r7,%r11,12
	clrjle	%r4,%r7,.L2421
	ic	%r5,12(%r11,%r3)
	stc	%r5,12(%r11,%r2)
	ahik	%r9,%r11,13
	clrjle	%r4,%r9,.L2421
	ic	%r12,13(%r11,%r3)
	stc	%r12,13(%r11,%r2)
	ahik	%r10,%r11,14
	clrjle	%r4,%r10,.L2421
	ic	%r3,14(%r11,%r3)
	stc	%r3,14(%r11,%r2)
.L2421:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f1
	.cfi_restore 11
	lgdr	%r10,%f3
	.cfi_restore 10
	lgdr	%r9,%f5
	.cfi_restore 9
	lgdr	%r8,%f7
	.cfi_restore 8
	lgdr	%r7,%f8
	.cfi_restore 7
	br	%r14
.L2620:
	.cfi_restore_state
	ahik	%r10,%r4,-1
	cije	%r4,0,.L2421
	clijle	%r10,30,.L2542
	ahik	%r5,%r4,-2
	ark	%r0,%r2,%r10
	ar	%r5,%r3
	sr	%r0,%r5
	ahi	%r0,14
	clijle	%r0,14,.L2542
	risbg	%r7,%r4,32,128+59,0
	ahik	%r12,%r4,-16
	ahik	%r5,%r7,-16
	ark	%r11,%r3,%r12
	lcr	%r8,%r7
	ar	%r12,%r2
	srl	%r5,4
	lhi	%r1,0
	ahi	%r5,1
	risbg	%r9,%r5,62,128+63,0
	je	.L2529
	cije	%r9,1,.L2543
	cijlh	%r9,2,.L2624
.L2544:
	vl	%v10,0(%r1,%r11)
	vst	%v10,0(%r1,%r12)
	ahi	%r1,-16
.L2543:
	vl	%v12,0(%r1,%r11)
	vst	%v12,0(%r1,%r12)
	ahi	%r1,-16
	crje	%r1,%r8,.L2588
.L2529:
	srl	%r5,2
	chi	%r5,2
	jle	.L2618
	ahi	%r5,-1
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
.L2438:
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	ahi	%r1,-64
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
	vl	%v0,0(%r1,%r11)
	vst	%v0,0(%r1,%r12)
	brct	%r5,.L2438
	ahik	%r9,%r1,-48
	ahik	%r8,%r1,-32
	ahik	%r7,%r1,-16
	vl	%v0,0(%r7,%r11)
	vst	%v0,0(%r7,%r12)
	vl	%v0,0(%r8,%r11)
	vst	%v0,0(%r8,%r12)
	vl	%v0,0(%r9,%r11)
	vst	%v0,0(%r9,%r12)
.L2588:
	risbg	%r11,%r4,32,128+59,0
	sr	%r10,%r11
	tmll	%r4,15
	je	.L2421
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	ahik	%r12,%r10,-1
	cije	%r10,0,.L2421
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	ahik	%r5,%r10,-2
	cije	%r12,0,.L2421
	icy	%r0,-2(%r10,%r3)
	stcy	%r0,-2(%r10,%r2)
	ahik	%r7,%r10,-3
	cije	%r5,0,.L2421
	icy	%r8,-3(%r10,%r3)
	stcy	%r8,-3(%r10,%r2)
	ahik	%r9,%r10,-4
	cije	%r7,0,.L2421
	icy	%r11,-4(%r10,%r3)
	stcy	%r11,-4(%r10,%r2)
	ahik	%r4,%r10,-5
	cije	%r9,0,.L2421
	icy	%r12,-5(%r10,%r3)
	stcy	%r12,-5(%r10,%r2)
	ahik	%r1,%r10,-6
	cije	%r4,0,.L2421
	icy	%r5,-6(%r10,%r3)
	stcy	%r5,-6(%r10,%r2)
	ahik	%r0,%r10,-7
	cije	%r1,0,.L2421
	icy	%r7,-7(%r10,%r3)
	stcy	%r7,-7(%r10,%r2)
	ahik	%r8,%r10,-8
	cije	%r0,0,.L2421
	icy	%r9,-8(%r10,%r3)
	stcy	%r9,-8(%r10,%r2)
	ahik	%r11,%r10,-9
	cije	%r8,0,.L2421
	icy	%r4,-9(%r10,%r3)
	stcy	%r4,-9(%r10,%r2)
	ahik	%r12,%r10,-10
	cije	%r11,0,.L2421
	icy	%r1,-10(%r10,%r3)
	stcy	%r1,-10(%r10,%r2)
	ahik	%r0,%r10,-11
	cije	%r12,0,.L2421
	icy	%r5,-11(%r10,%r3)
	stcy	%r5,-11(%r10,%r2)
	ahik	%r7,%r10,-12
	cije	%r0,0,.L2421
	icy	%r8,-12(%r10,%r3)
	stcy	%r8,-12(%r10,%r2)
	ahik	%r9,%r10,-13
	cije	%r7,0,.L2421
	icy	%r11,-13(%r10,%r3)
	stcy	%r11,-13(%r10,%r2)
	cije	%r9,0,.L2421
	icy	%r3,-14(%r10,%r3)
	stcy	%r3,-14(%r10,%r2)
	j	.L2421
.L2616:
	vl	%v20,0(%r1,%r3)
	vst	%v20,0(%r1,%r2)
	vl	%v22,16(%r1,%r3)
	vst	%v22,16(%r1,%r2)
	vl	%v17,32(%r1,%r3)
	vst	%v17,32(%r1,%r2)
	vl	%v19,48(%r1,%r3)
	vst	%v19,48(%r1,%r2)
	ahi	%r1,64
	brct	%r0,.L2616
	j	.L2587
.L2614:
	vl	%v26,0(%r1,%r11)
	vst	%v26,0(%r1,%r12)
	vl	%v28,16(%r1,%r11)
	vst	%v28,16(%r1,%r12)
	vl	%v30,32(%r1,%r11)
	vst	%v30,32(%r1,%r12)
	vl	%v25,48(%r1,%r11)
	vst	%v25,48(%r1,%r12)
	ahi	%r1,64
	brct	%r0,.L2614
	j	.L2586
.L2622:
	vl	%v15,0(%r3)
	lhi	%r1,16
	vst	%v15,0(%r2)
	j	.L2535
.L2623:
	vl	%v21,0(%r11)
	lhi	%r1,16
	vst	%v21,0(%r12)
	j	.L2539
.L2618:
	vl	%v14,0(%r1,%r11)
	ahik	%r7,%r1,-16
	ahik	%r8,%r1,-32
	vst	%v14,0(%r1,%r12)
	ahik	%r9,%r1,-48
	ahi	%r1,-64
	vl	%v9,0(%r7,%r11)
	vst	%v9,0(%r7,%r12)
	vl	%v11,0(%r8,%r11)
	vst	%v11,0(%r8,%r12)
	vl	%v13,0(%r9,%r11)
	vst	%v13,0(%r9,%r12)
	brct	%r5,.L2618
	j	.L2588
.L2428:
	sll	%r12,2
	ahik	%r0,%r12,-4
	lhi	%r1,0
	srl	%r0,2
	ahi	%r0,1
	risbg	%r10,%r0,62,128+63,0
	je	.L2502
	cije	%r10,1,.L2536
	cijlh	%r10,2,.L2625
.L2537:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	ahi	%r1,4
.L2536:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	crje	%r1,%r12,.L2432
.L2502:
	srl	%r0,2
	chi	%r0,2
	jle	.L2615
	ahi	%r0,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
.L2431:
	ahi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	brct	%r0,.L2431
	j	.L2432
.L2615:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r7,12(%r1,%r3)
	st	%r7,12(%r1,%r2)
	ahi	%r1,16
	brct	%r0,.L2615
	j	.L2432
.L2621:
	cije	%r4,0,.L2421
.L2533:
	srk	%r1,%r4,%r5
	risbg	%r11,%r1,62,128+63,0
	je	.L2484
	cije	%r11,1,.L2540
	cijlh	%r11,2,.L2626
.L2541:
	ic	%r8,0(%r5,%r3)
	stc	%r8,0(%r5,%r2)
	ahi	%r5,1
.L2540:
	ic	%r7,0(%r5,%r3)
	stc	%r7,0(%r5,%r2)
	ahi	%r5,1
	crje	%r4,%r5,.L2421
.L2484:
	srl	%r1,2
	chi	%r1,2
	jle	.L2613
	ahi	%r1,-1
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
.L2435:
	ic	%r4,1(%r5,%r3)
	stc	%r4,1(%r5,%r2)
	ic	%r4,2(%r5,%r3)
	stc	%r4,2(%r5,%r2)
	ic	%r4,3(%r5,%r3)
	stc	%r4,3(%r5,%r2)
	ahi	%r5,4
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	brct	%r1,.L2435
	ic	%r1,1(%r5,%r3)
	stc	%r1,1(%r5,%r2)
	ic	%r1,2(%r5,%r3)
	stc	%r1,2(%r5,%r2)
	ic	%r1,3(%r5,%r3)
	stc	%r1,3(%r5,%r2)
	j	.L2421
.L2613:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ic	%r9,1(%r5,%r3)
	stc	%r9,1(%r5,%r2)
	ic	%r12,2(%r5,%r3)
	stc	%r12,2(%r5,%r2)
	ic	%r10,3(%r5,%r3)
	stc	%r10,3(%r5,%r2)
	ahi	%r5,4
	brct	%r1,.L2613
	j	.L2421
.L2624:
	vl	%v0,0(%r11)
	lhi	%r1,-16
	vst	%v0,0(%r12)
	j	.L2544
.L2626:
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,1
	j	.L2541
.L2625:
	l	%r7,0(%r3)
	lhi	%r1,4
	st	%r7,0(%r2)
	j	.L2537
.L2542:
	ahik	%r1,%r10,1
	risbg	%r4,%r1,62,128+63,0
	je	.L2520
	cije	%r4,1,.L2545
	cije	%r4,2,.L2546
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	ahi	%r10,-1
.L2546:
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r10,-1
.L2545:
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahi	%r10,-1
	cije	%r10,-1,.L2421
.L2520:
	srl	%r1,2
	chi	%r1,2
	jle	.L2617
	ahi	%r1,-1
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
.L2441:
	icy	%r4,-1(%r10,%r3)
	stcy	%r4,-1(%r10,%r2)
	icy	%r4,-2(%r10,%r3)
	stcy	%r4,-2(%r10,%r2)
	icy	%r4,-3(%r10,%r3)
	stcy	%r4,-3(%r10,%r2)
	ahi	%r10,-4
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	brct	%r1,.L2441
	icy	%r1,-1(%r10,%r3)
	stcy	%r1,-1(%r10,%r2)
	icy	%r1,-2(%r10,%r3)
	stcy	%r1,-2(%r10,%r2)
	icy	%r1,-3(%r10,%r3)
	stcy	%r1,-3(%r10,%r2)
	j	.L2421
.L2617:
	ic	%r7,0(%r10,%r3)
	stc	%r7,0(%r10,%r2)
	icy	%r8,-1(%r10,%r3)
	stcy	%r8,-1(%r10,%r2)
	icy	%r9,-2(%r10,%r3)
	stcy	%r9,-2(%r10,%r2)
	icy	%r11,-3(%r10,%r3)
	stcy	%r11,-3(%r10,%r2)
	ahi	%r10,-4
	brct	%r1,.L2617
	j	.L2421
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	8
	.align	16
.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	lgfr	%r2,%r2
	lgr	%r5,%r2
	dsgfr	%r4,%r3
	lgr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE108:
	.size	__modi, .-__modi
	.align	8
	.align	16
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	cdlfbr	%f0,0,%r2,0
	br	%r14
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	8
	.align	16
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	celfbr	%f0,0,%r2,0
	br	%r14
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	8
	.align	16
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	cdlgbr	%f0,0,%r3,0
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	8
	.align	16
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	celgbr	%f0,0,%r3,0
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	8
	.align	16
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	llgfr	%r1,%r3
	llgfr	%r5,%r2
	lghi	%r2,0
	lgr	%r3,%r5
	dlgr	%r2,%r1
	br	%r14
	.cfi_endproc
.LFE113:
	.size	__umodi, .-__umodi
	.align	8
	.align	16
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	lr	%r1,%r2
	sra	%r2,15
	cijlh	%r2,0,.L2643
	srak	%r2,%r1,14
	bner	%r14
	srak	%r0,%r1,13
	cijlh	%r0,0,.L2644
	srak	%r3,%r1,12
	cijlh	%r3,0,.L2645
	srak	%r4,%r1,11
	cijlh	%r4,0,.L2646
	srak	%r5,%r1,10
	cijlh	%r5,0,.L2647
	srak	%r2,%r1,9
	cijlh	%r2,0,.L2648
	srak	%r0,%r1,8
	cijlh	%r0,0,.L2649
	srak	%r3,%r1,7
	cijlh	%r3,0,.L2650
	srak	%r4,%r1,6
	cijlh	%r4,0,.L2651
	srak	%r5,%r1,5
	cijlh	%r5,0,.L2652
	srak	%r2,%r1,4
	cijlh	%r2,0,.L2653
	srak	%r0,%r1,3
	cijlh	%r0,0,.L2654
	srak	%r3,%r1,2
	cijlh	%r3,0,.L2655
	srak	%r4,%r1,1
	cijlh	%r4,0,.L2656
	ltr	%r1,%r1
	lhi	%r2,15
	lochie	%r2,16
	br	%r14
.L2643:
	lhi	%r2,0
	br	%r14
.L2654:
	lhi	%r2,12
	br	%r14
.L2644:
	lhi	%r2,2
	br	%r14
.L2645:
	lhi	%r2,3
	br	%r14
.L2646:
	lhi	%r2,4
	br	%r14
.L2647:
	lhi	%r2,5
	br	%r14
.L2648:
	lhi	%r2,6
	br	%r14
.L2649:
	lhi	%r2,7
	br	%r14
.L2650:
	lhi	%r2,8
	br	%r14
.L2651:
	lhi	%r2,9
	br	%r14
.L2652:
	lhi	%r2,10
	br	%r14
.L2653:
	lhi	%r2,11
	br	%r14
.L2655:
	lhi	%r2,13
	br	%r14
.L2656:
	lhi	%r2,14
	br	%r14
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	8
	.align	16
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	tmll	%r2,1
	jne	.L2662
	tmll	%r2,2
	jne	.L2663
	tmll	%r2,4
	jne	.L2664
	tmll	%r2,8
	jne	.L2665
	tmll	%r2,16
	jne	.L2666
	tmll	%r2,32
	jne	.L2667
	tmll	%r2,64
	jne	.L2668
	tmll	%r2,128
	jne	.L2669
	tmll	%r2,256
	jne	.L2670
	tmll	%r2,512
	jne	.L2671
	tmll	%r2,1024
	jne	.L2672
	tmll	%r2,2048
	jne	.L2673
	tmll	%r2,4096
	jne	.L2674
	tmll	%r2,8192
	jne	.L2675
	tmll	%r2,16384
	jne	.L2676
	sra	%r2,15
	ltr	%r2,%r2
	lhi	%r2,15
	lochie	%r2,16
	br	%r14
.L2662:
	lhi	%r2,0
	br	%r14
.L2663:
	lhi	%r2,1
	br	%r14
.L2674:
	lhi	%r2,12
	br	%r14
.L2664:
	lhi	%r2,2
	br	%r14
.L2665:
	lhi	%r2,3
	br	%r14
.L2666:
	lhi	%r2,4
	br	%r14
.L2667:
	lhi	%r2,5
	br	%r14
.L2668:
	lhi	%r2,6
	br	%r14
.L2669:
	lhi	%r2,7
	br	%r14
.L2670:
	lhi	%r2,8
	br	%r14
.L2671:
	lhi	%r2,9
	br	%r14
.L2672:
	lhi	%r2,10
	br	%r14
.L2673:
	lhi	%r2,11
	br	%r14
.L2675:
	lhi	%r2,13
	br	%r14
.L2676:
	lhi	%r2,14
	br	%r14
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
	.align	16
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L2687
	keb	%f0,.L2688-.L2687(%r5)
	jhe	.L2686
	cfebr	%r2,5,%f0
	br	%r14
.L2686:
	seb	%f0,.L2688-.L2687(%r5)
	cfebr	%r2,5,%f0
	alfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2687:
.L2688:
	.long	1191182336
	.align	2
.text
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
	.align	16
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
.LFB117:
	.cfi_startproc
	larl	%r5,.L2691
	vl	%v1,.L2692-.L2691(%r5),3
	vl	%v3,.L2693-.L2691(%r5),3
	vl	%v2,.L2694-.L2691(%r5),3
	vl	%v7,.L2695-.L2691(%r5),3
	vlvgf	%v0,%r2,3
	vrepf	%v0,%v0,3
	vgmf	%v5,31,31
	vesravf	%v8,%v0,%v1
	vesravf	%v10,%v0,%v3
	vn	%v12,%v8,%v5
	vn	%v14,%v10,%v5
	vesravf	%v9,%v0,%v2
	vaf	%v11,%v12,%v14
	vn	%v13,%v9,%v5
	vesravf	%v15,%v0,%v7
	vaf	%v16,%v13,%v11
	vn	%v18,%v15,%v5
	vzero	%v22
	vaf	%v20,%v18,%v16
	vleib	%v22,64,7
	vslb	%v17,%v20,%v22
	vzero	%v21
	vaf	%v19,%v17,%v20
	vleib	%v21,32,7
	vslb	%v23,%v19,%v21
	vaf	%v24,%v23,%v19
	vlgvf	%r2,%v24,0
	nilf	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L2691:
.L2695:
	.long	12
	.long	13
	.long	14
	.long	15
.L2694:
	.long	8
	.long	9
	.long	10
	.long	11
.L2693:
	.long	4
	.long	5
	.long	6
	.long	7
.L2692:
	.long	0
	.long	1
	.long	2
	.long	3
	.align	2
.text
	.cfi_endproc
.LFE117:
	.size	__parityhi2, .-__parityhi2
	.align	8
	.align	16
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	larl	%r5,.L2698
	vl	%v1,.L2699-.L2698(%r5),3
	vl	%v3,.L2700-.L2698(%r5),3
	vl	%v2,.L2701-.L2698(%r5),3
	vl	%v7,.L2702-.L2698(%r5),3
	vlvgf	%v0,%r2,3
	vrepf	%v0,%v0,3
	vgmf	%v5,31,31
	vesravf	%v8,%v0,%v1
	vesravf	%v10,%v0,%v3
	vn	%v12,%v8,%v5
	vn	%v14,%v10,%v5
	vesravf	%v9,%v0,%v2
	vaf	%v11,%v12,%v14
	vn	%v13,%v9,%v5
	vesravf	%v15,%v0,%v7
	vaf	%v16,%v13,%v11
	vn	%v18,%v15,%v5
	vzero	%v22
	vaf	%v20,%v18,%v16
	vleib	%v22,64,7
	vslb	%v17,%v20,%v22
	vzero	%v21
	vaf	%v19,%v17,%v20
	vleib	%v21,32,7
	vslb	%v23,%v19,%v21
	vaf	%v24,%v23,%v19
	vlgvf	%r2,%v24,0
	br	%r14
	.section	.rodata
	.align	8
.L2698:
.L2702:
	.long	12
	.long	13
	.long	14
	.long	15
.L2701:
	.long	8
	.long	9
	.long	10
	.long	11
.L2700:
	.long	4
	.long	5
	.long	6
	.long	7
.L2699:
	.long	0
	.long	1
	.long	2
	.long	3
	.align	2
.text
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
	.align	16
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB164:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L2706
	nilf	%r2,1
	srlk	%r4,%r1,1
	lcr	%r2,%r2
	sllk	%r5,%r3,1
	nr	%r2,%r3
	cije	%r4,0,.L2703
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r1,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r2,%r0
	cije	%r4,0,.L2703
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r1,3
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r2,%r4
	cije	%r5,0,.L2703
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r1,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r2,%r4
	cije	%r5,0,.L2703
	nilf	%r5,1
	srlk	%r4,%r1,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r2,%r5
	cije	%r4,0,.L2703
	risbgn	%r5,%r1,64-1,128+63,33+1
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,30
	ar	%r4,%r2
	sll	%r3,31
	lcr	%r2,%r5
	srak	%r5,%r1,31
	nr	%r2,%r0
	nr	%r3,%r5
	ar	%r2,%r4
	ar	%r2,%r3
	srl	%r1,30
	ltr	%r1,%r1
	locre	%r2,%r4
	br	%r14
.L2706:
	lhi	%r2,0
.L2703:
	br	%r14
	.cfi_endproc
.LFE164:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
	.align	16
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	lr	%r1,%r2
	cije	%r2,0,.L2801
	cije	%r3,0,.L2801
	risbg	%r2,%r3,63,128+63,0
	sllk	%r5,%r1,1
	lcr	%r2,%r2
	srlk	%r4,%r3,1
	nr	%r2,%r1
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,2
	nr	%r0,%r5
	sllk	%r5,%r1,2
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,3
	nr	%r0,%r5
	sllk	%r5,%r1,3
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,4
	nr	%r0,%r5
	sllk	%r5,%r1,4
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,5
	nr	%r0,%r5
	sllk	%r5,%r1,5
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,6
	nr	%r0,%r5
	sllk	%r5,%r1,6
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,7
	nr	%r0,%r5
	sllk	%r5,%r1,7
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,8
	nr	%r0,%r5
	sllk	%r5,%r1,8
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,9
	nr	%r0,%r5
	sllk	%r5,%r1,9
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,10
	nr	%r0,%r5
	sllk	%r5,%r1,10
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,11
	nr	%r0,%r5
	sllk	%r5,%r1,11
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,12
	nr	%r0,%r5
	sllk	%r5,%r1,12
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,13
	nr	%r0,%r5
	sllk	%r5,%r1,13
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,14
	nr	%r0,%r5
	sllk	%r5,%r1,14
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,15
	nr	%r0,%r5
	sllk	%r5,%r1,15
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,16
	nr	%r0,%r5
	sllk	%r5,%r1,16
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,17
	nr	%r0,%r5
	sllk	%r5,%r1,17
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,18
	nr	%r0,%r5
	sllk	%r5,%r1,18
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,19
	nr	%r0,%r5
	sllk	%r5,%r1,19
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,20
	nr	%r0,%r5
	sllk	%r5,%r1,20
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,21
	nr	%r0,%r5
	sllk	%r5,%r1,21
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,22
	nr	%r0,%r5
	sllk	%r5,%r1,22
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,23
	nr	%r0,%r5
	sllk	%r5,%r1,23
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,24
	nr	%r0,%r5
	sllk	%r5,%r1,24
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,25
	nr	%r0,%r5
	sllk	%r5,%r1,25
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,26
	nr	%r0,%r5
	sllk	%r5,%r1,26
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,27
	nr	%r0,%r5
	sllk	%r5,%r1,27
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,28
	nr	%r0,%r5
	sllk	%r5,%r1,28
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r3,29
	nr	%r0,%r5
	sllk	%r5,%r1,29
	ar	%r2,%r0
	cije	%r4,0,.L2797
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	risbgn	%r5,%r3,64-1,128+63,33+1
	ar	%r2,%r0
	lcr	%r4,%r5
	sllk	%r0,%r1,30
	srak	%r5,%r3,31
	nr	%r4,%r0
	sll	%r1,31
	ar	%r4,%r2
	nr	%r1,%r5
	ar	%r1,%r4
	srl	%r3,30
	ltr	%r3,%r3
	locrne	%r2,%r1
	br	%r14
.L2801:
	lhi	%r2,0
.L2797:
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
	.align	16
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjhe	%r3,%r2,.L3007
	lhi	%r12,1
	cijl	%r3,0,.L3002
	sllk	%r1,%r3,1
	lhi	%r5,2
	clrjle	%r2,%r1,.L2895
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r0,11
	cijl	%r1,0,.L3002
.L2897:
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L2895
	ahik	%r11,%r10,-1
	brct	%r0,.L2970
	lr	%r0,%r2
.L2896:
	ltr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	selrne	%r2,%r0,%r11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2970:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	cijl	%r1,0,.L3002
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L2895
	lr	%r12,%r5
	lr	%r3,%r1
	cijl	%r1,0,.L3002
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L2895
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	cijhe	%r1,0,.L2897
.L3002:
	srk	%r0,%r2,%r3
	clr	%r2,%r3
	lr	%r11,%r12
	locrnhe	%r0,%r2
	lochinhe	%r11,0
	srlk	%r2,%r12,1
	srlk	%r10,%r3,1
	cijlh	%r2,0,.L2900
	j	.L2896
.L2895:
	cije	%r5,0,.L2903
	srk	%r0,%r2,%r1
	clr	%r2,%r1
	lr	%r11,%r5
	lochinhe	%r11,0
	locrnhe	%r0,%r2
	la	%r10,0(%r3)
	la	%r2,0(%r12)
	lr	%r3,%r1
	lr	%r12,%r5
.L2900:
	srk	%r1,%r0,%r10
	slrk	%r10,%r0,%r10
	lhi	%r5,0
	alcr	%r5,%r5
	srlk	%r10,%r12,2
	ltr	%r5,%r5
	lochie	%r2,0
	locrne	%r0,%r1
	or	%r11,%r2
	srlk	%r2,%r3,2
	cije	%r10,0,.L2896
	srk	%r1,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r5,0
	alcr	%r5,%r5
	srlk	%r2,%r12,3
	ltr	%r5,%r5
	lochie	%r10,0
	locrne	%r0,%r1
	or	%r11,%r10
	srlk	%r10,%r3,3
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,4
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,4
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,5
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,5
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,6
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,6
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,7
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,7
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,8
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,8
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,9
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,9
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,10
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,10
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,11
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,11
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,12
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,12
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,13
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,13
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,14
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,14
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,15
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,15
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,16
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,16
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,17
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,17
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,18
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,18
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,19
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,19
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,20
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,20
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,21
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,21
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,22
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,22
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,23
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,23
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,24
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,24
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,25
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,25
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,26
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,26
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r12,27
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,27
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r10
	slrk	%r1,%r0,%r10
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r10,%r12,28
	ltr	%r1,%r1
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	srlk	%r2,%r3,28
	cije	%r10,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r1,0
	alcr	%r1,%r1
	srlk	%r2,%r3,29
	ltr	%r1,%r1
	lochie	%r10,0
	locrne	%r0,%r5
	srlk	%r1,%r12,29
	or	%r11,%r10
	cije	%r1,0,.L2896
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r10,0
	alcr	%r10,%r10
	srlk	%r2,%r12,30
	ltr	%r10,%r10
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,30
	cije	%r2,0,.L2896
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r10,0
	alcr	%r10,%r10
	srl	%r3,31
	ltr	%r10,%r10
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	cijhe	%r12,0,.L2896
	srk	%r12,%r0,%r3
	slrk	%r3,%r0,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locrne	%r0,%r12
	or	%r11,%r3
	j	.L2896
.L3007:
	srk	%r0,%r2,%r3
	xrk	%r1,%r3,%r2
	lpr	%r3,%r1
	ahi	%r3,-1
	locrnl	%r0,%r2
	srlk	%r11,%r3,31
	j	.L2896
.L2903:
	lr	%r0,%r2
	lhi	%r11,0
	j	.L2896
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
	.align	16
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	kebr	%f0,%f2
	lhi	%r2,0
	lochih	%r2,1
	lochil	%r2,-1
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
	.align	16
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	kdbr	%f0,%f2
	lhi	%r2,0
	lochih	%r2,1
	lochil	%r2,-1
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
	.align	16
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
.LFB124:
	.cfi_startproc
	lgfr	%r3,%r3
	msgfr	%r3,%r2
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE124:
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	8
	.align	16
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
.LFB125:
	.cfi_startproc
	llgfr	%r2,%r2
	llgfr	%r3,%r3
	msgr	%r3,%r2
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE125:
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	8
	.align	16
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	lr	%r4,%r2
	ltr	%r1,%r3
	jl	.L3126
	je	.L3031
	risbg	%r2,%r1,63,128+63,0
	lcr	%r2,%r2
	nr	%r2,%r4
	srak	%r3,%r1,1
	sllk	%r5,%r4,1
	ber	%r14
	nilf	%r3,1
	lcr	%r0,%r3
	nr	%r0,%r5
	ar	%r2,%r0
	sra	%r1,2
	sll	%r4,2
	ber	%r14
	lhi	%r5,0
.L3029:
	risbg	%r0,%r1,63,128+63,0
	lcr	%r3,%r0
	nr	%r3,%r4
	ar	%r2,%r3
	sllk	%r0,%r4,1
	srak	%r3,%r1,1
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,2
	srak	%r3,%r1,2
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,3
	srak	%r3,%r1,3
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,4
	srak	%r3,%r1,4
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,5
	srak	%r3,%r1,5
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,6
	srak	%r3,%r1,6
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,7
	srak	%r3,%r1,7
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,8
	srak	%r3,%r1,8
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,9
	srak	%r3,%r1,9
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,10
	srak	%r3,%r1,10
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,11
	srak	%r3,%r1,11
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,12
	srak	%r3,%r1,12
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,13
	srak	%r3,%r1,13
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,14
	srak	%r3,%r1,14
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,15
	srak	%r3,%r1,15
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,16
	srak	%r3,%r1,16
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,17
	srak	%r3,%r1,17
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,18
	srak	%r3,%r1,18
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,19
	srak	%r3,%r1,19
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,20
	srak	%r3,%r1,20
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,21
	srak	%r3,%r1,21
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,22
	srak	%r3,%r1,22
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,23
	srak	%r3,%r1,23
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,24
	srak	%r3,%r1,24
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,25
	srak	%r3,%r1,25
	je	.L3122
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	ar	%r2,%r3
	sllk	%r0,%r4,26
	srak	%r3,%r1,26
	je	.L3122
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r12,%r1,64-1,128+63,36+1
	nilf	%r3,1
	lcr	%r3,%r3
	nr	%r3,%r0
	lcr	%r0,%r12
	sllk	%r12,%r4,27
	ar	%r3,%r2
	sllk	%r2,%r4,28
	nrk	%r4,%r0,%r12
	srak	%r0,%r1,28
	ar	%r4,%r3
	lcr	%r12,%r0
	nr	%r2,%r12
	ar	%r2,%r4
	sra	%r1,27
	ltr	%r1,%r1
	locre	%r2,%r3
	cije	%r5,0,.L3023
	lcr	%r2,%r2
.L3023:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3126:
	risbg	%r2,%r1,63,128+63,0
	lcr	%r2,%r2
	nr	%r2,%r4
	lcr	%r1,%r1
	sllk	%r0,%r4,1
	srak	%r3,%r1,1
	je	.L3120
	nilf	%r3,1
	lcr	%r5,%r3
	nr	%r5,%r0
	ar	%r2,%r5
	sll	%r4,2
	lhi	%r5,1
	sra	%r1,2
	jne	.L3029
.L3120:
	lcr	%r2,%r2
.L3121:
	br	%r14
.L3031:
	lhi	%r2,0
	br	%r14
.L3122:
	cije	%r5,0,.L3121
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	8
	.align	16
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	cijl	%r2,0,.L3261
	lhi	%r1,1
	lhi	%r0,0
.L3129:
	cijhe	%r3,0,.L3130
	lcr	%r3,%r3
	lr	%r0,%r1
.L3130:
	clrjle	%r2,%r3,.L3131
	sllk	%r5,%r3,1
	clrjle	%r2,%r5,.L3132
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	sllk	%r1,%r3,2
	clrjle	%r2,%r1,.L3139
	sllk	%r1,%r3,3
	clrjle	%r2,%r1,.L3140
	sllk	%r1,%r3,4
	clrjle	%r2,%r1,.L3141
	sllk	%r1,%r3,5
	clrjle	%r2,%r1,.L3142
	sllk	%r1,%r3,6
	clrjle	%r2,%r1,.L3143
	sllk	%r1,%r3,7
	clrjle	%r2,%r1,.L3144
	sllk	%r1,%r3,8
	clrjle	%r2,%r1,.L3145
	sllk	%r1,%r3,9
	clrjle	%r2,%r1,.L3146
	sllk	%r1,%r3,10
	clrjle	%r2,%r1,.L3147
	sllk	%r1,%r3,11
	clrjle	%r2,%r1,.L3148
	sllk	%r1,%r3,12
	clrjle	%r2,%r1,.L3149
	sllk	%r1,%r3,13
	clrjle	%r2,%r1,.L3150
	sllk	%r1,%r3,14
	clrjle	%r2,%r1,.L3151
	sllk	%r1,%r3,15
	clrjle	%r2,%r1,.L3152
	sllk	%r1,%r3,16
	clrjle	%r2,%r1,.L3153
	sllk	%r1,%r3,17
	clrjle	%r2,%r1,.L3154
	sllk	%r1,%r3,18
	clrjle	%r2,%r1,.L3155
	sllk	%r1,%r3,19
	clrjle	%r2,%r1,.L3156
	sllk	%r1,%r3,20
	clrjle	%r2,%r1,.L3157
	sllk	%r1,%r3,21
	clrjle	%r2,%r1,.L3158
	sllk	%r1,%r3,22
	clrjle	%r2,%r1,.L3159
	sllk	%r1,%r3,23
	clrjle	%r2,%r1,.L3160
	sllk	%r1,%r3,24
	clrjle	%r2,%r1,.L3161
	sllk	%r1,%r3,25
	clrjle	%r2,%r1,.L3162
	sllk	%r1,%r3,26
	clrjle	%r2,%r1,.L3163
	sllk	%r1,%r3,27
	clrjle	%r2,%r1,.L3164
	sllk	%r1,%r3,28
	clrjle	%r2,%r1,.L3165
	sllk	%r1,%r3,29
	clrjle	%r2,%r1,.L3166
	sllk	%r1,%r3,30
	clrjle	%r2,%r1,.L3167
	sll	%r3,31
	lhi	%r12,0
	clrjle	%r2,%r3,.L3262
	lcr	%r2,%r12
	ltr	%r0,%r0
	lgdr	%r11,%f2
	.cfi_restore 11
	locre	%r2,%r12
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3261:
	lcr	%r2,%r2
	lhi	%r1,0
	lhi	%r0,1
	j	.L3129
.L3155:
	.cfi_register 10, 20
	.cfi_register 11, 17
	.cfi_register 12, 16
	llilh	%r12,4
.L3133:
	srk	%r4,%r2,%r1
	clr	%r2,%r1
	locrnhe	%r4,%r2
	srlk	%r10,%r1,1
	srk	%r3,%r4,%r10
	clr	%r4,%r10
	locrnhe	%r3,%r4
	srlk	%r11,%r1,2
	srk	%r5,%r3,%r11
	clr	%r3,%r11
	locrnhe	%r5,%r3
	clr	%r10,%r4
	srlk	%r4,%r12,1
	lochinle	%r4,0
	clr	%r2,%r1
	lr	%r2,%r12
	lochinhe	%r2,0
	or	%r2,%r4
	clr	%r11,%r3
	srlk	%r10,%r12,2
	lochinle	%r10,0
	or	%r2,%r10
	srlk	%r4,%r12,3
	srlk	%r11,%r1,3
	cije	%r4,0,.L3135
	srk	%r3,%r5,%r11
	clr	%r5,%r11
	lochinhe	%r4,0
	locrnhe	%r3,%r5
	srlk	%r10,%r1,4
	or	%r2,%r4
	srlk	%r5,%r12,4
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,5
	or	%r2,%r5
	srlk	%r5,%r12,5
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,6
	or	%r2,%r5
	srlk	%r5,%r1,6
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r5
	clr	%r3,%r5
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,7
	or	%r2,%r10
	srlk	%r10,%r12,7
	cije	%r10,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r10,0
	locrnhe	%r3,%r4
	srlk	%r5,%r12,8
	or	%r2,%r10
	srlk	%r10,%r1,8
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,9
	or	%r2,%r5
	srlk	%r5,%r12,9
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,10
	or	%r2,%r5
	srlk	%r5,%r1,10
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r5
	clr	%r3,%r5
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,11
	or	%r2,%r10
	srlk	%r10,%r12,11
	cije	%r10,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r10,0
	locrnhe	%r3,%r4
	srlk	%r5,%r12,12
	or	%r2,%r10
	srlk	%r10,%r1,12
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,13
	or	%r2,%r5
	srlk	%r5,%r12,13
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,14
	or	%r2,%r5
	srlk	%r5,%r1,14
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r5
	clr	%r3,%r5
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,15
	or	%r2,%r10
	srlk	%r10,%r12,15
	cije	%r10,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r10,0
	locrnhe	%r3,%r4
	srlk	%r5,%r12,16
	or	%r2,%r10
	srlk	%r10,%r1,16
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,17
	or	%r2,%r5
	srlk	%r5,%r12,17
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,18
	or	%r2,%r5
	srlk	%r5,%r1,18
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r5
	clr	%r3,%r5
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,19
	or	%r2,%r10
	srlk	%r10,%r12,19
	cije	%r10,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r10,0
	locrnhe	%r3,%r4
	srlk	%r5,%r12,20
	or	%r2,%r10
	srlk	%r10,%r1,20
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,21
	or	%r2,%r5
	srlk	%r5,%r12,21
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,22
	or	%r2,%r5
	srlk	%r5,%r1,22
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r5
	clr	%r3,%r5
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,23
	or	%r2,%r10
	srlk	%r10,%r12,23
	cije	%r10,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r10,0
	locrnhe	%r3,%r4
	srlk	%r5,%r12,24
	or	%r2,%r10
	srlk	%r10,%r1,24
	cije	%r5,0,.L3135
	srk	%r4,%r3,%r10
	clr	%r3,%r10
	lochinhe	%r5,0
	locrnhe	%r4,%r3
	srlk	%r11,%r1,25
	or	%r2,%r5
	srlk	%r5,%r12,25
	cije	%r5,0,.L3135
	srk	%r3,%r4,%r11
	clr	%r4,%r11
	lochinhe	%r5,0
	locrnhe	%r3,%r4
	srlk	%r10,%r12,26
	or	%r2,%r5
	srlk	%r4,%r1,26
	cije	%r10,0,.L3135
	srk	%r5,%r3,%r4
	clr	%r3,%r4
	lochinhe	%r10,0
	locrnhe	%r5,%r3
	srlk	%r11,%r1,27
	or	%r2,%r10
	srlk	%r3,%r12,27
	cije	%r3,0,.L3135
	srk	%r10,%r5,%r11
	clr	%r5,%r11
	lochinhe	%r3,0
	locrnhe	%r10,%r5
	srlk	%r4,%r12,28
	or	%r2,%r3
	srlk	%r5,%r1,28
	cije	%r4,0,.L3135
	srk	%r3,%r10,%r5
	clr	%r10,%r5
	lochinhe	%r4,0
	locrnhe	%r3,%r10
	srlk	%r11,%r1,29
	or	%r2,%r4
	srlk	%r10,%r12,29
	cije	%r10,0,.L3135
	srk	%r4,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r4,%r3
	or	%r2,%r10
	srlk	%r3,%r12,30
	srlk	%r10,%r1,30
	cije	%r3,0,.L3135
	srk	%r5,%r4,%r10
	clr	%r4,%r10
	lochinhe	%r3,0
	locrnhe	%r5,%r4
	srl	%r1,31
	or	%r2,%r3
	llilh	%r11,16384
	crje	%r12,%r11,.L3135
	slr	%r5,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	or	%r2,%r1
.L3135:
	lr	%r12,%r2
	lcr	%r2,%r12
	ltr	%r0,%r0
	lgdr	%r11,%f2
	.cfi_restore 11
	locre	%r2,%r12
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3131:
	xr	%r2,%r3
	lpr	%r3,%r2
	ahi	%r3,-1
	srlk	%r4,%r3,31
.L3258:
	lr	%r2,%r4
	lcr	%r4,%r4
	ltr	%r0,%r0
	locrne	%r2,%r4
	br	%r14
.L3140:
	.cfi_register 10, 20
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r12,8
	j	.L3133
.L3139:
	lhi	%r12,4
	j	.L3133
.L3141:
	lhi	%r12,16
	j	.L3133
.L3142:
	lhi	%r12,32
	j	.L3133
.L3144:
	lhi	%r12,128
	j	.L3133
.L3143:
	lhi	%r12,64
	j	.L3133
.L3145:
	lhi	%r12,256
	j	.L3133
.L3146:
	lhi	%r12,512
	j	.L3133
.L3147:
	lhi	%r12,1024
	j	.L3133
.L3148:
	lhi	%r12,2048
	j	.L3133
.L3150:
	lhi	%r12,8192
	j	.L3133
.L3149:
	lhi	%r12,4096
	j	.L3133
.L3152:
	llill	%r12,32768
	j	.L3133
.L3151:
	lhi	%r12,16384
	j	.L3133
.L3154:
	llilh	%r12,2
	j	.L3133
.L3153:
	llilh	%r12,1
	j	.L3133
.L3156:
	llilh	%r12,8
	j	.L3133
.L3159:
	llilh	%r12,64
	j	.L3133
.L3157:
	llilh	%r12,16
	j	.L3133
.L3158:
	llilh	%r12,32
	j	.L3133
.L3161:
	llilh	%r12,256
	j	.L3133
.L3160:
	llilh	%r12,128
	j	.L3133
.L3164:
	llilh	%r12,2048
	j	.L3133
.L3162:
	llilh	%r12,512
	j	.L3133
.L3163:
	llilh	%r12,1024
	j	.L3133
.L3262:
	llilh	%r1,32768
	llilh	%r12,32768
	j	.L3133
.L3166:
	llilh	%r12,8192
	j	.L3133
.L3167:
	llilh	%r12,16384
	j	.L3133
.L3165:
	llilh	%r12,4096
	j	.L3133
.L3132:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	srk	%r1,%r2,%r5
	clr	%r2,%r5
	locrnhe	%r1,%r2
	slr	%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	slrk	%r1,%r2,%r5
	lhi	%r2,0
	lr	%r4,%r3
	alcr	%r2,%r2
	rosbg	%r4,%r2,32,62,1
	j	.L3258
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
	.align	16
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	lr	%r4,%r2
	cijl	%r2,0,.L3265
	lpr	%r3,%r3
	lhi	%r0,0
	clrjle	%r2,%r3,.L3398
.L3266:
	sllk	%r1,%r3,1
	clrjhe	%r1,%r4,.L3269
	sllk	%r1,%r3,2
	clrjhe	%r1,%r4,.L3276
	sllk	%r1,%r3,3
	clrjhe	%r1,%r4,.L3277
	sllk	%r1,%r3,4
	clrjhe	%r1,%r4,.L3278
	sllk	%r1,%r3,5
	clrjhe	%r1,%r4,.L3279
	sllk	%r1,%r3,6
	clrjhe	%r1,%r4,.L3280
	sllk	%r1,%r3,7
	clrjhe	%r1,%r4,.L3281
	sllk	%r1,%r3,8
	clrjhe	%r1,%r4,.L3282
	sllk	%r1,%r3,9
	clrjhe	%r1,%r4,.L3283
	sllk	%r1,%r3,10
	clrjhe	%r1,%r4,.L3284
	sllk	%r1,%r3,11
	clrjhe	%r1,%r4,.L3285
	sllk	%r1,%r3,12
	clrjhe	%r1,%r4,.L3286
	sllk	%r1,%r3,13
	clrjhe	%r1,%r4,.L3287
	sllk	%r1,%r3,14
	clrjhe	%r1,%r4,.L3288
	sllk	%r1,%r3,15
	clrjhe	%r1,%r4,.L3289
	sllk	%r1,%r3,16
	clrjhe	%r1,%r4,.L3290
	sllk	%r1,%r3,17
	clrjhe	%r1,%r4,.L3291
	sllk	%r1,%r3,18
	clrjhe	%r1,%r4,.L3292
	sllk	%r1,%r3,19
	clrjhe	%r1,%r4,.L3293
	sllk	%r1,%r3,20
	clrjle	%r4,%r1,.L3294
	sllk	%r1,%r3,21
	clrjle	%r4,%r1,.L3295
	sllk	%r1,%r3,22
	clrjle	%r4,%r1,.L3296
	sllk	%r1,%r3,23
	clrjle	%r4,%r1,.L3297
	sllk	%r1,%r3,24
	clrjle	%r4,%r1,.L3298
	sllk	%r1,%r3,25
	clrjle	%r4,%r1,.L3299
	sllk	%r1,%r3,26
	clrjle	%r4,%r1,.L3300
	sllk	%r1,%r3,27
	clrjle	%r4,%r1,.L3301
	sllk	%r1,%r3,28
	clrjle	%r4,%r1,.L3302
	sllk	%r1,%r3,29
	clrjle	%r4,%r1,.L3303
	sllk	%r1,%r3,30
	clrjle	%r4,%r1,.L3304
	sll	%r3,31
	lr	%r2,%r4
	clrjle	%r4,%r3,.L3399
.L3396:
	cije	%r0,0,.L3394
	lcr	%r2,%r2
.L3394:
	br	%r14
.L3265:
	lcr	%r4,%r2
	lpr	%r3,%r3
	lhi	%r0,1
	clrjl	%r3,%r4,.L3266
	srk	%r2,%r4,%r3
	cr	%r3,%r4
	locrne	%r2,%r4
	lcr	%r2,%r2
	br	%r14
.L3292:
	llilh	%r3,4
.L3270:
	srk	%r2,%r4,%r1
	clr	%r1,%r4
	locrnle	%r2,%r4
	srlk	%r5,%r1,1
	srk	%r4,%r2,%r5
	clr	%r2,%r5
	locrnhe	%r4,%r2
	srlk	%r5,%r1,2
	srk	%r2,%r4,%r5
	clr	%r4,%r5
	srlk	%r5,%r1,3
	locrnhe	%r2,%r4
	srlk	%r4,%r3,3
	cije	%r4,0,.L3396
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srk	%r12,%r2,%r5
	clr	%r2,%r5
	srlk	%r4,%r1,4
	locrhe	%r2,%r12
	srlk	%r5,%r3,4
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,5
	locrhe	%r2,%r12
	srlk	%r4,%r1,5
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,6
	locrhe	%r2,%r12
	srlk	%r4,%r1,6
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,7
	locrhe	%r2,%r12
	srlk	%r4,%r1,7
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,8
	locrhe	%r2,%r12
	srlk	%r4,%r1,8
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,9
	locrhe	%r2,%r12
	srlk	%r4,%r1,9
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,10
	locrhe	%r2,%r12
	srlk	%r4,%r1,10
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,11
	locrhe	%r2,%r12
	srlk	%r4,%r1,11
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,12
	locrhe	%r2,%r12
	srlk	%r4,%r1,12
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,13
	locrhe	%r2,%r12
	srlk	%r4,%r1,13
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,14
	locrhe	%r2,%r12
	srlk	%r4,%r1,14
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,15
	locrhe	%r2,%r12
	srlk	%r4,%r1,15
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,16
	locrhe	%r2,%r12
	srlk	%r4,%r1,16
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,17
	locrhe	%r2,%r12
	srlk	%r4,%r1,17
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,18
	locrhe	%r2,%r12
	srlk	%r4,%r1,18
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,19
	locrhe	%r2,%r12
	srlk	%r4,%r1,19
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,20
	locrhe	%r2,%r12
	srlk	%r4,%r1,20
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,21
	locrhe	%r2,%r12
	srlk	%r4,%r1,21
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,22
	locrhe	%r2,%r12
	srlk	%r4,%r1,22
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,23
	locrhe	%r2,%r12
	srlk	%r4,%r1,23
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,24
	locrhe	%r2,%r12
	srlk	%r4,%r1,24
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,25
	locrhe	%r2,%r12
	srlk	%r4,%r1,25
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,26
	locrhe	%r2,%r12
	srlk	%r4,%r1,26
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,27
	locrhe	%r2,%r12
	srlk	%r4,%r1,27
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,28
	locrhe	%r2,%r12
	srlk	%r4,%r1,28
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,29
	locrhe	%r2,%r12
	srlk	%r4,%r1,29
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srlk	%r5,%r3,30
	locrhe	%r2,%r12
	srlk	%r4,%r1,30
	cije	%r5,0,.L3271
	srk	%r12,%r2,%r4
	clr	%r2,%r4
	srl	%r1,31
	locrhe	%r2,%r12
	llilh	%r4,16384
	crje	%r3,%r4,.L3271
	srk	%r3,%r2,%r1
	clr	%r2,%r1
	locrhe	%r2,%r3
.L3271:
	cije	%r0,0,.L3264
	lcr	%r2,%r2
.L3264:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3276:
	lhi	%r3,4
	j	.L3270
.L3277:
	lhi	%r3,8
	j	.L3270
.L3278:
	lhi	%r3,16
	j	.L3270
.L3279:
	lhi	%r3,32
	j	.L3270
.L3280:
	lhi	%r3,64
	j	.L3270
.L3281:
	lhi	%r3,128
	j	.L3270
.L3282:
	lhi	%r3,256
	j	.L3270
.L3284:
	lhi	%r3,1024
	j	.L3270
.L3283:
	lhi	%r3,512
	j	.L3270
.L3285:
	lhi	%r3,2048
	j	.L3270
.L3286:
	lhi	%r3,4096
	j	.L3270
.L3287:
	lhi	%r3,8192
	j	.L3270
.L3289:
	llill	%r3,32768
	j	.L3270
.L3288:
	lhi	%r3,16384
	j	.L3270
.L3398:
	sr	%r2,%r3
	cr	%r4,%r3
	locrne	%r2,%r4
	br	%r14
.L3290:
	llilh	%r3,1
	j	.L3270
.L3291:
	llilh	%r3,2
	j	.L3270
.L3293:
	llilh	%r3,8
	j	.L3270
.L3294:
	llilh	%r3,16
	j	.L3270
.L3295:
	llilh	%r3,32
	j	.L3270
.L3296:
	llilh	%r3,64
	j	.L3270
.L3297:
	llilh	%r3,128
	j	.L3270
.L3298:
	llilh	%r3,256
	j	.L3270
.L3301:
	llilh	%r3,2048
	j	.L3270
.L3299:
	llilh	%r3,512
	j	.L3270
.L3300:
	llilh	%r3,1024
	j	.L3270
.L3302:
	llilh	%r3,4096
	j	.L3270
.L3303:
	llilh	%r3,8192
	j	.L3270
.L3304:
	llilh	%r3,16384
	j	.L3270
.L3399:
	llilh	%r1,32768
	llilh	%r3,32768
	j	.L3270
.L3269:
	srk	%r2,%r4,%r1
	clr	%r1,%r4
	selrle	%r5,%r2,%r4
	srk	%r2,%r5,%r3
	clr	%r5,%r3
	locrnhe	%r2,%r5
	j	.L3396
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	8
	.align	16
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	clrjhe	%r3,%r2,.L3490
	tmll	%r3,32768
	jne	.L3404
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r1,%r3,48,128+62,1
	clrjle	%r2,%r1,.L3411
	tmll	%r1,32768
	jne	.L3411
	risbgn	%r1,%r3,48,128+61,2
	clrjle	%r2,%r1,.L3413
	tmll	%r1,32768
	jne	.L3413
	risbgn	%r1,%r3,48,128+60,3
	clrjle	%r2,%r1,.L3415
	tmll	%r1,32768
	jne	.L3415
	risbgn	%r1,%r3,48,128+59,4
	clrjle	%r2,%r1,.L3417
	tmll	%r1,32768
	jne	.L3417
	risbgn	%r1,%r3,48,128+58,5
	clrjle	%r2,%r1,.L3419
	tmll	%r1,32768
	jne	.L3419
	risbgn	%r1,%r3,48,128+57,6
	clrjle	%r2,%r1,.L3421
	tmll	%r1,32768
	jne	.L3421
	risbgn	%r1,%r3,48,128+56,7
	clrjle	%r2,%r1,.L3423
	tmll	%r1,32768
	jne	.L3423
	risbgn	%r1,%r3,48,128+55,8
	clrjle	%r2,%r1,.L3425
	tmll	%r1,32768
	jne	.L3425
	risbgn	%r1,%r3,48,128+54,9
	clrjle	%r2,%r1,.L3427
	tmll	%r1,32768
	jne	.L3427
	risbgn	%r1,%r3,48,128+53,10
	clrjle	%r2,%r1,.L3429
	tmll	%r1,32768
	jne	.L3429
	risbgn	%r1,%r3,48,128+52,11
	clrjle	%r2,%r1,.L3431
	tmll	%r1,32768
	jne	.L3431
	risbgn	%r1,%r3,48,128+51,12
	clrjle	%r2,%r1,.L3433
	tmll	%r1,32768
	jne	.L3433
	risbgn	%r1,%r3,48,128+50,13
	clrjle	%r2,%r1,.L3435
	tmll	%r1,32768
	jne	.L3435
	risbgn	%r1,%r3,48,128+49,14
	clrjle	%r2,%r1,.L3437
	tmll	%r1,32768
	jne	.L3437
	risbgn	%r11,%r3,48,128+48,15
	clrjle	%r2,%r11,.L3438
	lhi	%r3,0
	cijlh	%r11,0,.L3491
.L3407:
	ltr	%r4,%r4
	locre	%r2,%r3
	llhr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3411:
	.cfi_restore_state
	lhi	%r3,2
.L3406:
	srk	%r12,%r2,%r1
	clr	%r2,%r1
	llhr	%r5,%r12
	locrnhe	%r5,%r2
	risbgn	%r12,%r3,64-15,128+63,48+15
	llhr	%r0,%r3
	srlk	%r11,%r1,1
	lochinhe	%r3,0
	srk	%r2,%r5,%r11
	clr	%r5,%r11
	lochinhe	%r12,0
	llhr	%r2,%r2
	locrnhe	%r2,%r5
	or	%r3,%r12
	srlk	%r5,%r0,2
	srlk	%r12,%r1,2
	cije	%r5,0,.L3407
	srk	%r11,%r2,%r12
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	llhr	%r12,%r11
	lochie	%r5,0
	locrne	%r2,%r12
	srlk	%r11,%r0,3
	srlk	%r12,%r1,3
	or	%r3,%r5
	cije	%r11,0,.L3407
	srk	%r5,%r2,%r12
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	llhr	%r5,%r5
	ltr	%r12,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,4
	srlk	%r5,%r1,4
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r11
	lochie	%r12,0
	locrne	%r2,%r5
	srlk	%r11,%r0,5
	srlk	%r5,%r1,5
	or	%r3,%r12
	cije	%r11,0,.L3407
	srk	%r12,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,6
	srlk	%r5,%r1,6
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r11
	lochie	%r12,0
	locrne	%r2,%r5
	srlk	%r11,%r0,7
	srlk	%r5,%r1,7
	or	%r3,%r12
	cije	%r11,0,.L3407
	srk	%r12,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,8
	srlk	%r5,%r1,8
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r11
	lochie	%r12,0
	locrne	%r2,%r5
	srlk	%r11,%r0,9
	srlk	%r5,%r1,9
	or	%r3,%r12
	cije	%r11,0,.L3407
	srk	%r12,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,10
	srlk	%r5,%r1,10
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r11
	lochie	%r12,0
	locrne	%r2,%r5
	srlk	%r11,%r0,11
	srlk	%r5,%r1,11
	or	%r3,%r12
	cije	%r11,0,.L3407
	srk	%r12,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,12
	srlk	%r5,%r1,12
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r11
	lochie	%r12,0
	locrne	%r2,%r5
	srlk	%r11,%r0,13
	srlk	%r5,%r1,13
	or	%r3,%r12
	cije	%r11,0,.L3407
	srk	%r12,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llhr	%r5,%r12
	lochie	%r11,0
	locrne	%r2,%r5
	srlk	%r12,%r0,14
	srlk	%r5,%r1,14
	or	%r3,%r11
	cije	%r12,0,.L3407
	srk	%r11,%r2,%r5
	slrk	%r5,%r2,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	llhr	%r11,%r11
	srl	%r1,15
	ltr	%r5,%r5
	lochie	%r12,0
	locrne	%r2,%r11
	or	%r3,%r12
	lhi	%r12,16384
	crje	%r0,%r12,.L3407
	srk	%r5,%r2,%r1
	slrk	%r1,%r2,%r1
	lhi	%r0,0
	alcr	%r0,%r0
	llhr	%r1,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	ltr	%r0,%r0
	locrne	%r2,%r1
	or	%r3,%r0
	ltr	%r4,%r4
	locre	%r2,%r3
	llhr	%r2,%r2
	br	%r14
.L3413:
	.cfi_restore_state
	lhi	%r3,4
	j	.L3406
.L3415:
	lhi	%r3,8
	j	.L3406
.L3417:
	lhi	%r3,16
	j	.L3406
.L3427:
	lhi	%r3,512
	j	.L3406
.L3419:
	lhi	%r3,32
	j	.L3406
.L3421:
	lhi	%r3,64
	j	.L3406
.L3423:
	lhi	%r3,128
	j	.L3406
.L3425:
	lhi	%r3,256
	j	.L3406
.L3490:
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r1,%r3,%r2
	llghr	%r0,%r1
	lr	%r5,%r1
	srk	%r1,%r2,%r3
	aghik	%r3,%r0,-1
	llghr	%r5,%r5
	llhr	%r0,%r1
	aghi	%r5,-1
	ltgr	%r5,%r5
	locrl	%r2,%r0
	risbgn	%r3,%r3,64-1,128+63,0+1
.L3487:
	ltr	%r4,%r4
	locre	%r2,%r3
	llhr	%r2,%r2
	br	%r14
.L3429:
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r3,1024
	j	.L3406
.L3431:
	lhi	%r3,2048
	j	.L3406
.L3433:
	lhi	%r3,4096
	j	.L3406
.L3435:
	lhi	%r3,8192
	j	.L3406
.L3437:
	lhi	%r3,16384
	j	.L3406
.L3491:
	lhi	%r3,-32768
	llill	%r1,32768
	j	.L3406
.L3438:
	llill	%r1,32768
	lhi	%r3,-32768
	j	.L3406
.L3404:
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r3,1
	llhr	%r2,%r2
	j	.L3487
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
	.align	16
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB162:
	.cfi_startproc
	ldgr	%f1,%r10
	.cfi_register 10, 20
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjle	%r2,%r3,.L3608
	lhi	%r12,1
	cijl	%r3,0,.L3603
	sllk	%r1,%r3,1
	lhi	%r5,2
	clrjle	%r2,%r1,.L3496
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r0,11
	cijl	%r1,0,.L3603
.L3498:
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L3496
	ahik	%r11,%r10,-1
	brct	%r0,.L3571
	lr	%r0,%r2
.L3497:
	ltr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	selrne	%r2,%r0,%r11
	lgdr	%r10,%f1
	.cfi_restore 10
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L3571:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	cijl	%r1,0,.L3603
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L3496
	lr	%r12,%r5
	lr	%r3,%r1
	cijl	%r1,0,.L3603
	sll	%r1,1
	sll	%r5,1
	clrjle	%r2,%r1,.L3496
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	cijhe	%r1,0,.L3498
.L3603:
	srk	%r0,%r2,%r3
	clr	%r2,%r3
	lr	%r11,%r12
	locrnhe	%r0,%r2
	lochinhe	%r11,0
	srlk	%r10,%r12,1
	srlk	%r2,%r3,1
	cijlh	%r10,0,.L3501
	j	.L3497
.L3496:
	cije	%r5,0,.L3504
	srk	%r0,%r2,%r1
	clr	%r2,%r1
	lr	%r11,%r5
	lochinhe	%r11,0
	locrnhe	%r0,%r2
	la	%r10,0(%r12)
	la	%r2,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L3501:
	srk	%r1,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	lochie	%r10,0
	locrne	%r0,%r1
	or	%r11,%r10
	srlk	%r1,%r12,2
	srlk	%r10,%r3,2
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,3
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,3
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,4
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,4
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,5
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,5
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,6
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,6
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,7
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,7
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,8
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,8
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,9
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,9
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,10
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,10
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,11
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,11
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,12
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,12
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,13
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,13
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,14
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,14
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,15
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,15
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,16
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,16
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,17
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,17
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,18
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,18
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,19
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,19
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,20
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,20
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,21
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,21
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,22
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,22
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,23
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,23
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,24
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,24
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,25
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,25
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,26
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,26
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r10,%r12,27
	ltr	%r2,%r2
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,27
	cije	%r10,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	srlk	%r1,%r12,28
	ltr	%r2,%r2
	lochie	%r10,0
	locrne	%r0,%r5
	or	%r11,%r10
	srlk	%r10,%r3,28
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r10
	slrk	%r2,%r0,%r10
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	lochie	%r1,0
	lr	%r10,%r1
	locrne	%r0,%r5
	srlk	%r1,%r12,29
	or	%r11,%r10
	srlk	%r2,%r3,29
	cije	%r1,0,.L3497
	srk	%r5,%r0,%r2
	slrk	%r2,%r0,%r2
	lhi	%r10,0
	alcr	%r10,%r10
	srlk	%r2,%r12,30
	ltr	%r10,%r10
	lochie	%r1,0
	locrne	%r0,%r5
	or	%r11,%r1
	srlk	%r1,%r3,30
	cije	%r2,0,.L3497
	srk	%r5,%r0,%r1
	slrk	%r1,%r0,%r1
	lhi	%r10,0
	alcr	%r10,%r10
	srl	%r3,31
	ltr	%r10,%r10
	lochie	%r2,0
	locrne	%r0,%r5
	or	%r11,%r2
	cijhe	%r12,0,.L3497
	srk	%r12,%r0,%r3
	slrk	%r3,%r0,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locrne	%r0,%r12
	or	%r11,%r3
	j	.L3497
.L3608:
	srk	%r0,%r2,%r3
	cr	%r2,%r3
	locrne	%r0,%r2
	xrk	%r1,%r2,%r3
	lpr	%r2,%r1
	ahi	%r2,-1
	srlk	%r11,%r2,31
	j	.L3497
.L3504:
	lr	%r0,%r2
	lhi	%r11,0
	j	.L3497
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
	.align	16
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	tmll	%r4,32
	je	.L3611
	sllk	%r0,%r3,4064(%r4)
	lhi	%r3,0
.L3612:
	llgfr	%r3,%r3
	rosbg	%r3,%r0,0,31,32
.L3610:
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
.L3611:
	cije	%r4,0,.L3610
	srag	%r2,%r3,32
	lhi	%r1,32
	sll	%r2,0(%r4)
	sr	%r1,%r4
	srlk	%r0,%r3,0(%r1)
	sll	%r3,0(%r4)
	or	%r0,%r2
	j	.L3612
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	8
	.align	16
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	tmll	%r4,32
	je	.L3617
	srag	%r1,%r3,32
	srak	%r3,%r1,4064(%r4)
	sra	%r1,31
.L3618:
	llgfr	%r3,%r3
	rosbg	%r3,%r1,0,31,32
.L3616:
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
.L3617:
	cije	%r4,0,.L3616
	srag	%r1,%r3,32
	lhi	%r2,32
	srl	%r3,0(%r4)
	sr	%r2,%r4
	sllk	%r0,%r1,0(%r2)
	sra	%r1,0(%r4)
	or	%r3,%r0
	j	.L3618
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
	.align	16
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lrvgr	%r3,%r3
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
	.align	16
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	lrvr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
	.align	16
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
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
	br	%r14
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	8
	.align	16
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	risbgn	%r5,%r4,0,0+32-1,64-0-32
	srag	%r2,%r3,32
	srag	%r1,%r5,32
	cr	%r2,%r1
	jl	.L3630
	jh	.L3631
	clr	%r3,%r5
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	br	%r14
.L3630:
	lhi	%r2,0
	br	%r14
.L3631:
	lhi	%r2,2
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
	.align	16
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	risbgn	%r5,%r4,0,0+32-1,64-0-32
	srag	%r2,%r3,32
	srag	%r1,%r5,32
	cr	%r2,%r1
	jl	.L3637
	jh	.L3638
	clr	%r3,%r5
	lhi	%r2,0
	alcr	%r2,%r2
	clr	%r3,%r5
	lochinhe	%r2,-1
	br	%r14
.L3637:
	lhi	%r2,-1
	br	%r14
.L3638:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
	.align	16
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	llhr	%r4,%r2
	ahi	%r4,-1
	risbgn	%r5,%r4,59,128+59,64-27
	srlk	%r1,%r2,0(%r5)
	llcr	%r2,%r1
	ahi	%r2,-1
	risbgn	%r4,%r2,60,128+60,64-28
	srl	%r1,0(%r4)
	ar	%r5,%r4
	risbg	%r0,%r1,60,128+63,0
	ahi	%r0,-1
	risbgn	%r2,%r0,61,128+61,64-29
	ar	%r5,%r2
	srl	%r1,0(%r2)
	risbg	%r4,%r1,62,128+63,0
	ahi	%r4,-1
	risbgn	%r2,%r4,62,128+62,64-30
	srl	%r1,0(%r2)
	ar	%r2,%r5
	nilf	%r1,3
	nnrk	%r5,%r1,%r1
	srl	%r1,1
	nilf	%r5,1
	lhi	%r3,2
	sr	%r3,%r1
	lcr	%r1,%r5
	nr	%r3,%r1
	ar	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
	.align	16
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	larl	%r5,.L3649
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	tmll	%r4,32
	je	.L3644
	risbgn	%r3,%r3,64-32,128+63,0+32
	lhi	%r2,0
	srlk	%r0,%r3,4064(%r4)
.L3645:
	ld	%v0,.L3650-.L3649(%r5)
	vlvgf	%v0,%r2,0
	vlvgf	%v0,%r0,1
	vlgvg	%r3,%v0,0
.L3643:
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
.L3644:
	cije	%r4,0,.L3643
	risbgn	%r2,%r3,64-32,128+63,0+32
	lhi	%r1,32
	srl	%r3,0(%r4)
	sr	%r1,%r4
	sllk	%r0,%r2,0(%r1)
	srl	%r2,0(%r4)
	or	%r0,%r3
	j	.L3645
	.section	.rodata
	.align	8
.L3649:
.L3650:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
	.align	16
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	risbg	%r4,%r2,48,128+63,0
	risbg	%r1,%r3,48,128+63,0
	msrkc	%r5,%r4,%r1
	srl	%r3,16
	srl	%r2,16
	msr	%r4,%r3
	msr	%r1,%r2
	msr	%r2,%r3
	srlk	%r0,%r5,16
	lghi	%r3,0
	ar	%r1,%r0
	llhr	%r0,%r1
	srl	%r1,16
	ar	%r4,%r0
	ar	%r1,%r2
	srlk	%r2,%r4,16
	llhr	%r5,%r5
	ar	%r1,%r2
	sll	%r4,16
	ar	%r5,%r4
	lr	%r3,%r5
	risbgn	%r3,%r1,0,0+32-1,64-0-32
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	8
	.align	16
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r2,%r3,48,128+63,0
	lgr	%r11,%r5
	risbgn	%r11,%r4,0,0+32-1,64-0-32
	risbg	%r1,%r11,48,128+63,0
	msrkc	%r4,%r2,%r1
	srlk	%r0,%r11,16
	ldgr	%f0,%r12
	.cfi_register 12, 16
	msr	%r2,%r0
	srlk	%r12,%r3,16
	msr	%r1,%r12
	msr	%r12,%r0
	srag	%r5,%r11,32
	msr	%r5,%r3
	srag	%r3,%r3,32
	msr	%r11,%r3
	srlk	%r0,%r4,16
	ar	%r1,%r0
	llhr	%r0,%r1
	srl	%r1,16
	ar	%r2,%r0
	ar	%r1,%r12
	sllk	%r12,%r2,16
	srl	%r2,16
	llhr	%r4,%r4
	ar	%r1,%r2
	ar	%r4,%r12
	lghi	%r3,0
	lr	%r3,%r4
	risbgn	%r3,%r1,0,0+32-1,64-0-32
	srag	%r2,%r3,32
	lgdr	%r12,%f0
	.cfi_restore 12
	ar	%r5,%r2
	ar	%r5,%r11
	lgdr	%r11,%f2
	.cfi_restore 11
	risbgn	%r3,%r5,0,0+32-1,64-0-32
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
	.align	16
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	lcgr	%r3,%r3
	risbgn	%r2,%r3,64-32,128+63,0+32
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	8
	.align	16
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
.LFB143:
	.cfi_startproc
	xrk	%r1,%r2,%r3
	lhi	%r4,27030
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	srak	%r2,%r4,0(%r1)
	nilf	%r2,1
	br	%r14
	.cfi_endproc
.LFE143:
	.size	__paritydi2, .-__paritydi2
	.align	8
	.align	16
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
.LFB144:
	.cfi_startproc
	lhi	%r1,27030
	rxsbg	%r2,%r2,48,63,48
	rxsbg	%r2,%r2,40,63,56
	rxsbg	%r2,%r2,36,63,60
	nilf	%r2,15
	srak	%r2,%r1,0(%r2)
	nilf	%r2,1
	br	%r14
	.cfi_endproc
.LFE144:
	.size	__paritysi2, .-__paritysi2
	.align	8
	.align	16
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	larl	%r5,.L3664
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	srlg	%r1,%r3,1
	ng	%r1,.L3665-.L3664(%r5)
	sgr	%r3,%r1
	srlg	%r2,%r3,2
	ng	%r3,.L3666-.L3664(%r5)
	ng	%r2,.L3666-.L3664(%r5)
	agr	%r2,%r3
	srlg	%r0,%r2,4
	agr	%r0,%r2
	ng	%r0,.L3667-.L3664(%r5)
	srlg	%r3,%r0,32
	ar	%r3,%r0
	srlk	%r4,%r3,16
	ar	%r4,%r3
	srlk	%r2,%r4,8
	ar	%r2,%r4
	nilf	%r2,127
	br	%r14
	.section	.rodata
	.align	8
.L3664:
.L3667:
	.quad	1085102592571150095
.L3666:
	.quad	3689348814741910323
.L3665:
	.quad	6148914691236517205
	.align	2
.text
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
	.align	16
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
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
	srlk	%r2,%r3,8
	ar	%r2,%r3
	nilf	%r2,63
	br	%r14
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
	.align	16
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	larl	%r5,.L3680
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L3681-.L3680(%r5)
	tmll	%r2,1
	je	.L3671
.L3673:
	mdbr	%f0,%f2
.L3671:
	srlk	%r3,%r1,31
	ar	%r1,%r3
	sra	%r1,1
	cije	%r1,0,.L3672
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L3673
.L3678:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tmll	%r1,1
	jne	.L3673
	j	.L3678
.L3672:
	cijl	%r2,0,.L3679
	br	%r14
.L3679:
	ld	%f1,.L3681-.L3680(%r5)
	wfddb	%v0,%v1,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3680:
.L3681:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	8
	.align	16
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	larl	%r5,.L3692
	ldr	%f2,%f0
	lr	%r1,%r2
	lde	%f0,.L3693-.L3692(%r5)
	tmll	%r2,1
	je	.L3683
.L3685:
	meebr	%f0,%f2
.L3683:
	srlk	%r3,%r1,31
	ar	%r1,%r3
	sra	%r1,1
	cije	%r1,0,.L3684
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L3685
.L3690:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tmll	%r1,1
	jne	.L3685
	j	.L3690
.L3684:
	cijl	%r2,0,.L3691
	br	%r14
.L3691:
	lde	%f1,.L3693-.L3692(%r5)
	wfdsb	%v0,%v1,%v0
	br	%r14
	.section	.rodata
	.align	8
.L3692:
.L3693:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	8
	.align	16
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	risbgn	%r5,%r4,0,0+32-1,64-0-32
	risbgn	%r2,%r3,64-32,128+63,0+32
	risbgn	%r1,%r5,64-32,128+63,0+32
	clr	%r2,%r1
	jl	.L3696
	jh	.L3697
	clr	%r3,%r5
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	br	%r14
.L3696:
	lhi	%r2,0
	br	%r14
.L3697:
	lhi	%r2,2
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
	.align	16
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	risbgn	%r3,%r2,0,0+32-1,64-0-32
	risbgn	%r5,%r4,0,0+32-1,64-0-32
	risbgn	%r2,%r3,64-32,128+63,0+32
	risbgn	%r1,%r5,64-32,128+63,0+32
	clr	%r2,%r1
	jl	.L3703
	jh	.L3704
	clr	%r3,%r5
	lhi	%r2,0
	alcr	%r2,%r2
	clr	%r3,%r5
	lochinhe	%r2,-1
	br	%r14
.L3703:
	lhi	%r2,-1
	br	%r14
.L3704:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE150:
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
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
