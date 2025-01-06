	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z13+novx"
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
	cgije	%r4,0,.L115
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L46
	cgije	%r5,1,.L68
	cgijlh	%r5,2,.L118
.L69:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L68:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	brctg	%r4,.L46
	br	%r14
.L7:
	ber	%r14
	cgije	%r4,0,.L115
	aghik	%r1,%r4,-1
	clgijle	%r1,14,.L17
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L17
	la	%r1,1(%r3)
	sgrk	%r0,%r2,%r1
	clgijle	%r0,6,.L17
	risbg	%r0,%r4,0,128+60,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L64
	cgije	%r12,1,.L70
	cgije	%r12,2,.L71
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L71:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L70:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r0,.L97
.L64:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L112
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
.L11:
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	aghi	%r1,32
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	brctg	%r5,.L11
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	aghi	%r1,32
.L97:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r0,%r4,%r1
	cgrje	%r4,%r1,.L8
	mvc	0(1,%r5),0(%r3)
	cgije	%r0,1,.L8
	mvc	1(1,%r5),1(%r3)
	cgije	%r0,2,.L8
	mvc	2(1,%r5),2(%r3)
	cgije	%r0,3,.L8
	mvc	3(1,%r5),3(%r3)
	cgije	%r0,4,.L8
	mvc	4(1,%r5),4(%r3)
	cgije	%r0,5,.L8
	mvc	5(1,%r5),5(%r3)
	cgije	%r0,6,.L8
	mvc	6(1,%r5),6(%r3)
.L8:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L46:
	srlg	%r1,%r1,2
	cghi	%r1,2
	jle	.L110
	aghi	%r1,-1
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
.L9:
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r5,-3(%r4,%r3)
	stcy	%r5,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	aghi	%r4,-4
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	brctg	%r1,.L9
	icy	%r1,-2(%r4,%r3)
	stcy	%r1,-2(%r4,%r2)
	icy	%r1,-3(%r4,%r3)
	stcy	%r1,-3(%r4,%r2)
	icy	%r1,-4(%r4,%r3)
	stcy	%r1,-4(%r4,%r2)
	br	%r14
.L110:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r0,-3(%r4,%r3)
	stcy	%r0,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	aghi	%r4,-4
	brctg	%r1,.L110
	br	%r14
.L118:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r0
	j	.L69
.L112:
	.cfi_register 12, 16
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L112
	j	.L97
.L17:
	.cfi_restore 12
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L55
	cgije	%r0,1,.L72
	cgije	%r0,2,.L73
	mvc	0(1,%r2),0(%r3)
	lghi	%r1,1
.L73:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L72:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgrjlh	%r4,%r1,.L55
.L115:
	br	%r14
.L55:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L111
	aghi	%r5,-1
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
.L14:
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r4,3(%r1,%r3)
	stc	%r4,3(%r1,%r2)
	aghi	%r1,4
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	brctg	%r5,.L14
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	br	%r14
.L111:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L111
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
	llcr	%r4,%r4
	cgije	%r5,0,.L123
	aghik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L141
.L130:
	srlg	%r1,%r5,1
.L121:
	llgc	%r5,0(%r3)
	la	%r0,1(%r2)
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L138
	llgc	%r5,1(%r3)
	lgr	%r2,%r0
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L138
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r1,.L121
.L123:
	lghi	%r2,0
	br	%r14
.L141:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L138
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L130
	j	.L123
.L138:
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
	cgije	%r4,0,.L147
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L154
	cgije	%r5,1,.L165
	cgije	%r5,2,.L166
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L143
	la	%r2,1(%r2)
	lgr	%r4,%r0
.L166:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L143
	la	%r2,1(%r2)
	aghi	%r4,-1
.L165:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L143
	la	%r2,1(%r2)
	cgije	%r4,1,.L147
.L154:
	srlg	%r4,%r1,2
.L144:
	llc	%r0,0(%r2)
	la	%r1,1(%r2)
	crje	%r0,%r3,.L176
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	crje	%r5,%r3,.L177
	llc	%r0,1(%r1)
	la	%r2,1(%r1)
	crje	%r0,%r3,.L143
	llc	%r5,2(%r1)
	la	%r2,2(%r1)
	crje	%r5,%r3,.L143
	la	%r2,3(%r1)
	brctg	%r4,.L144
.L147:
	lghi	%r2,0
.L143:
	br	%r14
.L176:
	br	%r14
.L177:
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
	cgije	%r4,0,.L208
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r4,-1
	lgr	%r0,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L191
	cgije	%r1,1,.L202
	cgije	%r1,2,.L203
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L210
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L203:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L210
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L202:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L210
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cgije	%r4,1,.L184
.L191:
	srlg	%r4,%r0,2
.L180:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L210
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	crjlh	%r1,%r5,.L210
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	crjlh	%r1,%r5,.L210
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	la	%r2,4(%r2)
	crjlh	%r1,%r5,.L210
	la	%r3,4(%r3)
	brctg	%r4,.L180
.L184:
	lhi	%r3,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L210:
	.cfi_restore_state
	srk	%r3,%r1,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L208:
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
	cgije	%r4,0,.L221
	brasl	%r14,memcpy@PLT
.L221:
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
	je	.L236
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L249
	cgije	%r5,1,.L236
	cgije	%r5,2,.L240
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r5,%r3,.L249
.L240:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L249
.L236:
	srlg	%r4,%r4,2
	aghi	%r4,1
	brctg	%r4,.L250
	lghi	%r2,0
	br	%r14
.L250:
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r5,%r3,.L255
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crje	%r5,%r3,.L249
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L253:
	llc	%r12,-2(%r1)
	lgr	%r2,%r0
	aghik	%r5,%r1,-3
	crje	%r12,%r3,.L227
	llc	%r0,-3(%r1)
	lgr	%r2,%r5
	aghi	%r1,-4
	crje	%r0,%r3,.L227
	brctg	%r4,.L230
	lghi	%r2,0
.L227:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L230:
	.cfi_restore_state
	llc	%r12,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r12,%r3,.L227
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crjlh	%r5,%r3,.L253
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L249:
	br	%r14
.L255:
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
	cgije	%r4,0,.L262
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
.L262:
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
	cgije	%r1,0,.L267
.L268:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L268
.L267:
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
	jne	.L275
	br	%r14
.L277:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L275:
	crjlh	%r1,%r3,.L277
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
.L285:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L284
	la	%r2,1(%r2)
	cijlh	%r1,0,.L285
	lghi	%r2,0
.L284:
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
	crje	%r1,%r5,.L289
	j	.L290
.L291:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r1,%r5,.L290
.L289:
	cijlh	%r1,0,.L291
.L290:
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
	je	.L301
	lgr	%r1,%r2
.L300:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L300
	sgrk	%r2,%r1,%r2
	br	%r14
.L301:
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
	cgije	%r4,0,.L312
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L316
.L308:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L307
	la	%r0,1(%r3)
	brctg	%r4,.L310
.L307:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L310:
	crjlh	%r5,%r1,.L307
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L317
	lgr	%r3,%r0
	j	.L308
.L312:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L317:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L307
.L316:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L307
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
	cgijle	%r4,1,.L319
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L328
	cgije	%r4,1,.L332
	cgije	%r4,2,.L333
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L333:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L332:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L319
.L328:
	srlg	%r1,%r0,2
	cghi	%r1,2
	jle	.L342
	aghi	%r1,-1
	mvc	0(1,%r3),1(%r2)
.L321:
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	la	%r2,8(%r2)
	la	%r3,8(%r3)
	mvc	0(1,%r3),1(%r2)
	brctg	%r1,.L321
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
.L319:
	br	%r14
.L342:
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
	brctg	%r1,.L342
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
	cije	%r2,32,.L366
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L366:
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
	clijle	%r2,31,.L374
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L375
.L374:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L375:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L374
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
	clijle	%r2,254,.L386
	lhi	%r1,8231
	clrjle	%r2,%r1,.L384
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L384
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L384
	risbg	%r5,%r2,48,128+62,0
	xilf	%r5,65534
	lcr	%r1,%r5
	slfi	%r2,65532
	srl	%r1,31
	clfi	%r2,1048580
	lochinl	%r1,0
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L384:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L386:
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
	clijle	%r1,9,.L390
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L390:
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
	jo	.L398
	kdbr	%f0,%f2
	jnh	.L401
	sdbr	%f0,%f2
	br	%r14
.L401:
	lzdr	%f0
	br	%r14
.L398:
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
	jo	.L407
	kebr	%f0,%f2
	jnh	.L410
	sebr	%f0,%f2
	br	%r14
.L410:
	lzer	%f0
	br	%r14
.L407:
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
	jo	.L420
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L414
	cijlh	%r1,0,.L420
	br	%r14
.L414:
	kdbr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L420
	ldr	%f2,%f0
.L420:
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
	jo	.L430
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L424
	cijlh	%r1,0,.L430
	br	%r14
.L424:
	kebr	%f0,%f2
	lhi	%r0,0
	lochil	%r0,1
	cijlh	%r0,0,.L430
	ler	%f2,%f0
.L430:
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
	jo	.L439
	cxbr	%f4,%f4
	jo	.L444
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L446
	kxbr	%f0,%f4
	lhi	%r0,0
	ldgr	%f1,%r15
	.cfi_register 15, 20
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	lochil	%r0,1
	cije	%r0,0,.L436
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L437:
	lgr	%r12,%r4
	lgr	%r13,%r5
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
.L446:
	cije	%r1,0,.L444
.L439:
	lxr	%f0,%f4
.L444:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L436:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L437
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
	jo	.L454
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L450
	cijlh	%r1,0,.L448
.L454:
	ldr	%f0,%f2
.L448:
	br	%r14
.L450:
	kdbr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L448
	j	.L454
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
	jo	.L466
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L462
	cijlh	%r1,0,.L460
.L466:
	ler	%f0,%f2
.L460:
	br	%r14
.L462:
	kebr	%f0,%f2
	lhi	%r1,0
	lochil	%r1,1
	cijlh	%r1,0,.L460
	j	.L466
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
	jo	.L484
	cxbr	%f0,%f0
	jo	.L479
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L486
	kxbr	%f4,%f0
	lhi	%r0,0
	ldgr	%f1,%r15
	.cfi_register 15, 20
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	lochil	%r0,1
	cije	%r0,0,.L476
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L477:
	lgr	%r12,%r4
	lgr	%r13,%r5
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
.L486:
	cije	%r1,0,.L484
.L479:
	lxr	%f0,%f4
.L484:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L476:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L477
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
	cije	%r2,0,.L491
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L490:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L490
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L491:
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
	cgije	%r3,0,.L505
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L505:
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
	je	.L508
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L508:
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
	je	.L518
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L538
.L528:
	srlg	%r10,%r10,1
.L520:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L517
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L517
	agrk	%r12,%r11,%r9
	brctg	%r10,.L520
.L518:
	lgr	%r12,%r9
	msgr	%r12,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L517
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L517:
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
.L538:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L517
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L528
	j	.L518
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
	je	.L541
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L557
.L548:
	srlg	%r7,%r11,1
.L543:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L540
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L540
	agr	%r12,%r10
	brctg	%r7,.L543
.L541:
	lghi	%r8,0
.L540:
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
.L557:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L540
	agr	%r12,%r10
	cgijlh	%r7,1,.L548
	j	.L541
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
.L568:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L562
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L562
	cije	%r3,43,.L563
	cijlh	%r3,45,.L584
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L573
	lhi	%r12,1
.L566:
	lhi	%r4,0
.L570:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L570
	sr	%r5,%r1
	ltr	%r12,%r12
	locrne	%r5,%r4
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L562:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L568
.L584:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L566
.L573:
	lhi	%r5,0
.L585:
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L563:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L566
	lhi	%r5,0
	j	.L585
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
.L594:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L588
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L588
	cije	%r4,43,.L589
	cije	%r4,45,.L590
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L599
	lgr	%r3,%r2
	lhi	%r11,0
.L592:
	lghi	%r5,0
.L596:
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
	clijle	%r12,9,.L596
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L588:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L594
.L590:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L599
	lhi	%r11,1
	j	.L592
.L589:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L592
.L599:
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
.L616:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L612
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L612
	cije	%r4,43,.L613
	cije	%r4,45,.L614
	ahik	%r5,%r4,-48
	lgr	%r3,%r2
	clijh	%r5,9,.L623
	lhi	%r11,0
.L617:
	lghi	%r5,0
.L620:
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
	clijle	%r12,9,.L620
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L612:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L616
.L614:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L617
.L623:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L613:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L623
	lhi	%r11,0
	j	.L617
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
	cgije	%r4,0,.L637
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lgr	%r12,%r4
	j	.L640
.L647:
	je	.L636
	aghi	%r12,-1
	agrk	%r9,%r11,%r8
	sgr	%r12,%r10
	cgije	%r12,0,.L637
.L640:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r8
	lgr	%r2,%r7
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L647
	lgr	%r12,%r10
	cgijlh	%r12,0,.L640
.L637:
	lghi	%r11,0
.L636:
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
	cije	%r4,0,.L654
.L659:
	srak	%r10,%r11,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	lg	%r4,240(%r15)
	lgr	%r2,%r7
	agr	%r12,%r9
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L649
	jle	.L652
	agrk	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L659
.L654:
	lghi	%r12,0
.L649:
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
.L652:
	.cfi_restore_state
	cije	%r10,0,.L654
	lr	%r11,%r10
	j	.L659
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
	j	.L686
.L688:
	crje	%r1,%r3,.L687
	la	%r2,4(%r2)
.L686:
	lt	%r1,0(%r2)
	jne	.L688
	lghi	%r2,0
	br	%r14
.L687:
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
	crje	%r4,%r5,.L691
	j	.L692
.L693:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L692
.L691:
	cijlh	%r4,0,.L693
.L692:
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
.L702:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L702
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
	je	.L708
	lgr	%r1,%r2
.L707:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L707
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L708:
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
	cgije	%r4,0,.L718
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L736
.L721:
	srlg	%r0,%r1,1
.L712:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L714
	la	%r5,4(%r2)
	cije	%r1,0,.L714
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L714
	cije	%r4,0,.L714
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L712
.L718:
	lhi	%r3,0
.L737:
	lgfr	%r2,%r3
	br	%r14
.L714:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	lhi	%r3,0
	lochih	%r3,1
	lochil	%r3,-1
	lgfr	%r2,%r3
	br	%r14
.L736:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L714
	cije	%r4,0,.L714
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L721
	lhi	%r3,0
	j	.L737
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
	cgije	%r4,0,.L743
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L750
	cgije	%r5,1,.L761
	cgije	%r5,2,.L762
	c	%r3,0(%r2)
	ber	%r14
	lgr	%r4,%r0
	la	%r2,4(%r2)
.L762:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L761:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgije	%r4,1,.L743
.L750:
	srlg	%r4,%r1,2
.L740:
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
	brctg	%r4,.L740
.L743:
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
	cgije	%r4,0,.L782
	aghik	%r0,%r4,-1
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L789
	cgije	%r1,1,.L800
	cgije	%r1,2,.L801
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L808
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L801:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L808
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L800:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L808
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgije	%r4,1,.L782
.L789:
	srlg	%r0,%r5,2
.L776:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L808
	l	%r1,4(%r2)
	la	%r4,4(%r3)
	lgr	%r3,%r4
	c	%r1,0(%r4)
	jne	.L808
	l	%r1,8(%r2)
	la	%r3,4(%r4)
	c	%r1,0(%r3)
	jne	.L808
	l	%r1,12(%r2)
	la	%r3,8(%r4)
	c	%r1,8(%r4)
	jne	.L808
	la	%r2,16(%r2)
	la	%r3,12(%r4)
	brctg	%r0,.L776
.L782:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L808:
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
	cgije	%r4,0,.L815
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L815:
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
	cgrje	%r2,%r3,.L914
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjl	%r0,%r5,.L823
	cgije	%r4,0,.L917
	clgijle	%r1,8,.L834
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L834
	la	%r0,4(%r3)
	cgrje	%r2,%r0,.L834
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r1,0
	srlg	%r12,%r4,1
	lghi	%r0,0
	lgr	%r5,%r12
	risbg	%r11,%r12,62,128+63,0
	je	.L870
	cgije	%r11,1,.L876
	cgije	%r11,2,.L877
	lg	%r1,0(%r3)
	lghi	%r0,1
	stg	%r1,0(%r2)
	lghi	%r1,8
.L877:
	lg	%r11,0(%r1,%r3)
	aghi	%r0,1
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L876:
	lg	%r11,0(%r1,%r3)
	aghi	%r0,1
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r0,.L897
.L870:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L912
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
.L828:
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	aghi	%r1,32
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	brctg	%r5,.L828
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L897:
	tmll	%r4,1
	je	.L839
	risbgn	%r4,%r4,0,128+60,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L839:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L823:
	cgije	%r4,0,.L914
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L852
	cgije	%r5,1,.L874
	cgije	%r5,2,.L875
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L875:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L874:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L914
.L852:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L910
	aghi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r5,-4(%r1,%r3)
	sty	%r5,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r5,-12(%r1,%r3)
	sty	%r5,-12(%r1,%r2)
.L826:
	aghi	%r1,-16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r5,-4(%r1,%r3)
	sty	%r5,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r5,-12(%r1,%r3)
	sty	%r5,-12(%r1,%r2)
	brctg	%r4,.L826
	br	%r14
.L910:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L910
	br	%r14
.L912:
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L912
	j	.L897
.L834:
	.cfi_restore 11
	.cfi_restore 12
	aghik	%r5,%r1,1
	lghi	%r4,0
	risbg	%r0,%r5,62,128+63,0
	je	.L861
	cgije	%r0,1,.L878
	cgije	%r0,2,.L879
	l	%r4,0(%r3)
	aghi	%r1,-1
	st	%r4,0(%r2)
	lghi	%r4,4
.L879:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L878:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	cgije	%r1,0,.L914
.L861:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L911
	aghi	%r5,-1
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r1,4(%r4,%r3)
	st	%r1,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r1,12(%r4,%r3)
	st	%r1,12(%r4,%r2)
.L831:
	aghi	%r4,16
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r1,4(%r4,%r3)
	st	%r1,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r1,12(%r4,%r3)
	st	%r1,12(%r4,%r2)
	brctg	%r5,.L831
	br	%r14
.L914:
	br	%r14
.L911:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r0,4(%r4,%r3)
	st	%r0,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	aghi	%r4,16
	brctg	%r5,.L911
	br	%r14
.L917:
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r11,%r4,-1
	cgije	%r4,0,.L920
	risbgn	%r1,%r2,64-1,128+63,61+1
	clgijle	%r11,5,.L925
	cgije	%r1,0,.L926
	st	%r3,0(%r2)
	la	%r10,4(%r2)
	aghik	%r11,%r4,-2
.L922:
	sgrk	%r12,%r4,%r1
	sllg	%r4,%r1,2
	agr	%r4,%r2
	srlg	%r9,%r12,1
	lghi	%r0,0
	lgr	%r5,%r9
	risbgn	%r0,%r3,0,0+32-1,64-0-32
	lghi	%r1,0
	lr	%r0,%r3
	risbg	%r8,%r9,62,128+63,0
	je	.L947
	cgije	%r8,1,.L951
	cgije	%r8,2,.L952
	stg	%r0,0(%r1,%r4)
	lghi	%r1,1
.L952:
	sllg	%r6,%r1,3
	stg	%r0,0(%r6,%r4)
	aghi	%r1,1
.L951:
	sllg	%r7,%r1,3
	stg	%r0,0(%r7,%r4)
	aghi	%r1,1
	cgrje	%r9,%r1,.L964
.L947:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L969
	aghi	%r5,-1
	sllg	%r9,%r1,3
	stg	%r0,0(%r9,%r4)
	stg	%r0,8(%r9,%r4)
	stg	%r0,16(%r9,%r4)
	stg	%r0,24(%r9,%r4)
.L923:
	aghi	%r1,4
	sllg	%r9,%r1,3
	stg	%r0,0(%r9,%r4)
	stg	%r0,8(%r9,%r4)
	stg	%r0,16(%r9,%r4)
	stg	%r0,24(%r9,%r4)
	brctg	%r5,.L923
.L964:
	tmll	%r12,1
	je	.L920
	risbg	%r0,%r12,0,128+62,0
	sllg	%r4,%r0,2
	sgr	%r11,%r0
	agr	%r4,%r10
.L921:
	st	%r3,0(%r4)
	cgije	%r11,0,.L920
	st	%r3,4(%r4)
	cgije	%r11,1,.L920
	st	%r3,8(%r4)
	cgije	%r11,2,.L920
	st	%r3,12(%r4)
	cgije	%r11,3,.L920
	st	%r3,16(%r4)
	cgije	%r11,4,.L920
	st	%r3,20(%r4)
.L920:
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
.L969:
	.cfi_restore_state
	sllg	%r7,%r1,3
	stg	%r0,0(%r7,%r4)
	stg	%r0,8(%r7,%r4)
	stg	%r0,16(%r7,%r4)
	stg	%r0,24(%r7,%r4)
	aghi	%r1,4
	brctg	%r5,.L969
	j	.L964
.L926:
	lgr	%r10,%r2
	j	.L922
.L925:
	lgr	%r4,%r2
	j	.L921
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
	jhe	.L973
	cgije	%r4,0,.L1081
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L1012
	cgije	%r5,1,.L1034
	cgijlh	%r5,2,.L1084
.L1035:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1034:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L1012
	br	%r14
.L973:
	ber	%r14
	cgije	%r4,0,.L1081
	aghik	%r1,%r4,-1
	clgijle	%r1,14,.L983
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L983
	la	%r1,1(%r2)
	sgrk	%r0,%r3,%r1
	clgijle	%r0,6,.L983
	risbg	%r0,%r4,0,128+60,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1030
	cgije	%r12,1,.L1036
	cgije	%r12,2,.L1037
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
.L1037:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
.L1036:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1063
.L1030:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1078
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
.L977:
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	aghi	%r1,32
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	brctg	%r5,.L977
	lg	%r5,8(%r1,%r2)
	stg	%r5,8(%r1,%r3)
	lg	%r5,16(%r1,%r2)
	stg	%r5,16(%r1,%r3)
	lg	%r5,24(%r1,%r2)
	stg	%r5,24(%r1,%r3)
	aghi	%r1,32
.L1063:
	agr	%r3,%r1
	agr	%r2,%r1
	sgrk	%r5,%r4,%r1
	cgrje	%r4,%r1,.L972
	mvc	0(1,%r3),0(%r2)
	cgije	%r5,1,.L972
	mvc	1(1,%r3),1(%r2)
	cgije	%r5,2,.L972
	mvc	2(1,%r3),2(%r2)
	cgije	%r5,3,.L972
	mvc	3(1,%r3),3(%r2)
	cgije	%r5,4,.L972
	mvc	4(1,%r3),4(%r2)
	cgije	%r5,5,.L972
	mvc	5(1,%r3),5(%r2)
	cgije	%r5,6,.L972
	mvc	6(1,%r3),6(%r2)
.L972:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1012:
	srlg	%r1,%r1,2
	cghi	%r1,2
	jle	.L1076
	aghi	%r1,-1
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
.L975:
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r5,-3(%r4,%r2)
	stcy	%r5,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r1,.L975
	icy	%r1,-2(%r4,%r2)
	stcy	%r1,-2(%r4,%r3)
	icy	%r1,-3(%r4,%r2)
	stcy	%r1,-3(%r4,%r3)
	icy	%r1,-4(%r4,%r2)
	stcy	%r1,-4(%r4,%r3)
	br	%r14
.L1076:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L1076
	br	%r14
.L1084:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L1035
.L1078:
	.cfi_register 12, 16
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	lg	%r12,8(%r1,%r2)
	stg	%r12,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r12,24(%r1,%r2)
	stg	%r12,24(%r1,%r3)
	aghi	%r1,32
	brctg	%r5,.L1078
	j	.L1063
.L983:
	.cfi_restore 12
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L1021
	cgije	%r0,1,.L1038
	cgije	%r0,2,.L1039
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1039:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1038:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrjlh	%r4,%r1,.L1021
.L1081:
	br	%r14
.L1021:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1077
	aghi	%r5,-1
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
.L980:
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r4,3(%r1,%r2)
	stc	%r4,3(%r1,%r3)
	aghi	%r1,4
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	brctg	%r5,.L980
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	br	%r14
.L1077:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L1077
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
	jne	.L1115
	tmll	%r2,2
	jne	.L1116
	tmll	%r2,4
	jne	.L1117
	tmll	%r2,8
	jne	.L1118
	tmll	%r2,16
	jne	.L1119
	tmll	%r2,32
	jne	.L1120
	tmll	%r2,64
	jne	.L1121
	tmll	%r2,128
	jne	.L1122
	tmll	%r2,256
	jne	.L1123
	tmll	%r2,512
	jne	.L1124
	tmll	%r2,1024
	jne	.L1125
	tmll	%r2,2048
	jne	.L1126
	tmll	%r2,4096
	jne	.L1127
	tmll	%r2,8192
	jne	.L1128
	tmll	%r2,16384
	jne	.L1129
	tmll	%r2,32768
	jne	.L1130
	tmlh	%r2,1
	jne	.L1131
	tmlh	%r2,2
	jne	.L1132
	tmlh	%r2,4
	jne	.L1133
	tmlh	%r2,8
	jne	.L1134
	tmlh	%r2,16
	jne	.L1135
	tmlh	%r2,32
	jne	.L1136
	tmlh	%r2,64
	jne	.L1137
	tmlh	%r2,128
	jne	.L1138
	tmlh	%r2,256
	jne	.L1139
	tmlh	%r2,512
	jne	.L1140
	tmlh	%r2,1024
	jne	.L1141
	tmlh	%r2,2048
	jne	.L1142
	tmlh	%r2,4096
	jne	.L1143
	tmlh	%r2,8192
	jne	.L1144
	risbg	%r1,%r2,33,128+33,0
	jne	.L1145
	cgijlh	%r2,0,.L1149
.L1114:
	lgfr	%r2,%r1
	br	%r14
.L1115:
	lhi	%r1,1
	j	.L1114
.L1116:
	lhi	%r1,2
	j	.L1114
.L1127:
	lhi	%r1,13
	j	.L1114
.L1143:
	lhi	%r1,29
	j	.L1114
.L1117:
	lhi	%r1,3
	j	.L1114
.L1118:
	lhi	%r1,4
	j	.L1114
.L1119:
	lhi	%r1,5
	j	.L1114
.L1120:
	lhi	%r1,6
	j	.L1114
.L1121:
	lhi	%r1,7
	j	.L1114
.L1122:
	lhi	%r1,8
	j	.L1114
.L1123:
	lhi	%r1,9
	j	.L1114
.L1124:
	lhi	%r1,10
	j	.L1114
.L1125:
	lhi	%r1,11
	j	.L1114
.L1126:
	lhi	%r1,12
	j	.L1114
.L1128:
	lhi	%r1,14
	j	.L1114
.L1129:
	lhi	%r1,15
	j	.L1114
.L1130:
	lhi	%r1,16
	j	.L1114
.L1131:
	lhi	%r1,17
	j	.L1114
.L1132:
	lhi	%r1,18
	j	.L1114
.L1133:
	lhi	%r1,19
	j	.L1114
.L1134:
	lhi	%r1,20
	j	.L1114
.L1135:
	lhi	%r1,21
	j	.L1114
.L1136:
	lhi	%r1,22
	j	.L1114
.L1137:
	lhi	%r1,23
	j	.L1114
.L1138:
	lhi	%r1,24
	j	.L1114
.L1139:
	lhi	%r1,25
	j	.L1114
.L1140:
	lhi	%r1,26
	j	.L1114
.L1141:
	lhi	%r1,27
	j	.L1114
.L1142:
	lhi	%r1,28
	j	.L1114
.L1144:
	lhi	%r1,30
	j	.L1114
.L1149:
	lhi	%r1,32
	j	.L1114
.L1145:
	lhi	%r1,31
	j	.L1114
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
	cgije	%r2,0,.L1154
	risbg	%r3,%r2,63,128+63,0
	jne	.L1152
	lhi	%r3,1
.L1153:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L1153
.L1152:
	lgfr	%r2,%r3
	br	%r14
.L1154:
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
	larl	%r5,.L1163
	keb	%f0,.L1164-.L1163(%r5)
	jl	.L1161
	keb	%f0,.L1165-.L1163(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1161:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1163:
.L1165:
	.long	2139095039
.L1164:
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
	larl	%r5,.L1171
	kdb	%f0,.L1172-.L1171(%r5)
	jl	.L1169
	kdb	%f0,.L1173-.L1171(%r5)
	lhi	%r2,0
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1169:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1171:
.L1173:
	.long	2146435071
	.long	-1
.L1172:
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
	larl	%r5,.L1179
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1180-.L1179(%r5)
	ld	%f6,.L1180-.L1179+8(%r5)
	kxbr	%f0,%f4
	jl	.L1177
	ld	%f4,.L1181-.L1179(%r5)
	ld	%f6,.L1181-.L1179+8(%r5)
	lhi	%r2,0
	kxbr	%f0,%f4
	lochih	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1177:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1179:
.L1181:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1180:
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
	larl	%r5,.L1200
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1198
	le	%f4,.L1201-.L1200(%r5)
.L1186:
	tmll	%r2,1
	je	.L1187
.L1188:
	meebr	%f0,%f4
.L1187:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1185
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L1188
.L1199:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1188
	j	.L1199
.L1185:
	br	%r14
.L1198:
	le	%f4,.L1202-.L1200(%r5)
	j	.L1186
	.section	.rodata
	.align	8
.L1200:
.L1202:
	.long	1056964608
.L1201:
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
	larl	%r5,.L1219
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1217
	ld	%f4,.L1220-.L1219(%r5)
.L1205:
	tmll	%r2,1
	je	.L1206
.L1207:
	mdbr	%f0,%f4
.L1206:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1204
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L1207
.L1218:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1207
	j	.L1218
.L1204:
	br	%r14
.L1217:
	ld	%f4,.L1221-.L1219(%r5)
	j	.L1205
	.section	.rodata
	.align	8
.L1219:
.L1221:
	.long	1071644672
	.long	0
.L1220:
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
	larl	%r5,.L1238
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1223
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1223
	cijl	%r4,0,.L1236
	ld	%f0,.L1239-.L1238(%r5)
	ld	%f2,.L1239-.L1238+8(%r5)
.L1224:
	tmll	%r4,1
	je	.L1225
.L1226:
	mxbr	%f4,%f0
.L1225:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L1223
	mxbr	%f0,%f0
	tmll	%r4,1
	jne	.L1226
.L1237:
	mxbr	%f0,%f0
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L1226
	j	.L1237
.L1223:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1236:
	ld	%f0,.L1240-.L1238(%r5)
	ld	%f2,.L1240-.L1238+8(%r5)
	j	.L1224
	.section	.rodata
	.align	8
.L1238:
.L1240:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1239:
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
	cgije	%r4,0,.L1313
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r1,%r4,-1
	clgijle	%r1,14,.L1243
	ogrk	%r0,%r2,%r3
	tmll	%r0,7
	jne	.L1243
	risbg	%r0,%r4,0,128+60,0
	aghik	%r5,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1278
	cgije	%r12,1,.L1282
	cgije	%r12,2,.L1283
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1283:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1282:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1301
.L1278:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1311
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
.L1244:
	lg	%r0,8(%r1,%r2)
	xg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r2)
	xg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	aghi	%r1,32
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	brctg	%r5,.L1244
	lg	%r5,8(%r1,%r2)
	xg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r2)
	xg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r2)
	xg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	aghi	%r1,32
.L1301:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r0,%r4,%r1
	cgrje	%r4,%r1,.L1242
	xc	0(1,%r5),0(%r3)
	cgije	%r0,1,.L1242
	xc	1(1,%r5),1(%r3)
	cgije	%r0,2,.L1242
	xc	2(1,%r5),2(%r3)
	cgije	%r0,3,.L1242
	xc	3(1,%r5),3(%r3)
	cgije	%r0,4,.L1242
	xc	4(1,%r5),4(%r3)
	cgije	%r0,5,.L1242
	xc	5(1,%r5),5(%r3)
	cgije	%r0,6,.L1242
	xc	6(1,%r5),6(%r3)
.L1242:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1311:
	.cfi_restore_state
	lg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	xg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	lg	%r12,24(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	xg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1311
	j	.L1301
.L1243:
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r12,%r4,62,128+63,0
	je	.L1269
	cgije	%r12,1,.L1284
	cgijlh	%r12,2,.L1316
.L1285:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
.L1284:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
	cgrje	%r0,%r3,.L1242
.L1269:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1310
	aghi	%r4,-1
	xc	0(1,%r1),0(%r3)
.L1246:
	xc	1(2,%r1),1(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	xc	0(1,%r1),0(%r3)
	brctg	%r4,.L1246
	xc	1(2,%r1),1(%r3)
	llgc	%r4,3(%r1)
	llgc	%r3,3(%r3)
	xr	%r4,%r3
	stc	%r4,3(%r1)
	j	.L1242
.L1310:
	xc	0(3,%r1),0(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L1310
	j	.L1242
.L1313:
	.cfi_restore 12
	br	%r14
.L1316:
	.cfi_register 12, 16
	lgr	%r5,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r5)
	j	.L1285
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
	je	.L1319
.L1320:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L1320
.L1319:
	cgije	%r4,0,.L1322
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L1342
.L1331:
	srlg	%r4,%r4,1
.L1321:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1343
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L1344
	la	%r1,2(%r1)
	brctg	%r4,.L1321
.L1322:
	mvi	0(%r1),0
.L1324:
	br	%r14
.L1342:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1324
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgijlh	%r0,0,.L1331
	mvi	0(%r1),0
	br	%r14
.L1343:
	br	%r14
.L1344:
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
	cgije	%r3,0,.L1346
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1358
	cgije	%r5,1,.L1369
	cgije	%r5,2,.L1370
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1370:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1369:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L1346
.L1358:
	srlg	%r0,%r4,2
.L1347:
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
	brctg	%r0,.L1347
	br	%r14
.L1346:
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
	je	.L1384
.L1390:
	lgr	%r1,%r3
	j	.L1383
.L1382:
	crje	%r4,%r5,.L1381
.L1383:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1382
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1390
.L1384:
	lghi	%r2,0
.L1381:
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
.L1393:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1393
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
	llc	%r10,0(%r3)
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	tml	%r10,255
	je	.L1396
	lr	%r8,%r10
	lgr	%r9,%r3
.L1398:
	la	%r9,1(%r9)
	cli	0(%r9),0
	jne	.L1398
	slgr	%r9,%r3
	jhe	.L1396
	aghi	%r9,-1
	j	.L1416
.L1419:
	la	%r2,1(%r2)
	cije	%r1,0,.L1418
.L1416:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1419
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L1400:
	la	%r11,1(%r5)
	brctg	%r0,.L1414
.L1402:
	crje	%r1,%r12,.L1396
.L1403:
	la	%r2,1(%r2)
	j	.L1416
.L1414:
	crjlh	%r1,%r12,.L1403
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1402
	cli	1(%r5),0
	je	.L1403
	lgr	%r5,%r11
	j	.L1400
.L1418:
	lghi	%r2,0
.L1396:
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
	jl	.L1431
	jnh	.L1425
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1424
.L1425:
	br	%r14
.L1431:
	kdbr	%f2,%f4
	jnh	.L1425
.L1424:
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
	cgije	%r5,0,.L1477
	clgrjl	%r3,%r5,.L1442
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1442
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	llc	%r11,0(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1439
.L1443:
	lgr	%r2,%r12
.L1435:
	clgrjl	%r3,%r2,.L1444
.L1439:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1443
	cgije	%r5,1,.L1433
.L1438:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1454
	cgije	%r10,1,.L1464
	cgijlh	%r10,2,.L1480
.L1465:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	aghi	%r1,1
.L1464:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	aghi	%r1,1
	cgrje	%r1,%r5,.L1433
.L1454:
	srlg	%r0,%r0,2
.L1436:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1471
	aghi	%r1,4
	brctg	%r0,.L1436
.L1433:
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
.L1480:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1465
.L1471:
	clgrjl	%r3,%r12,.L1444
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1435
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1438
.L1444:
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
.L1442:
	lghi	%r2,0
	br	%r14
.L1477:
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
	cgije	%r4,0,.L1483
	brasl	%r14,memmove@PLT
.L1483:
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
	larl	%r5,.L1515
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1512
	kdb	%f0,.L1516-.L1515(%r5)
	jnhe	.L1513
	lhi	%r3,0
.L1492:
	lhi	%r1,0
.L1498:
	ahi	%r1,1
	mdb	%f0,.L1517-.L1515(%r5)
	kdb	%f0,.L1516-.L1515(%r5)
	jhe	.L1498
.L1499:
	st	%r1,0(%r2)
	cije	%r3,0,.L1489
	lcdbr	%f0,%f0
.L1489:
	br	%r14
.L1513:
	kdb	%f0,.L1517-.L1515(%r5)
	jnl	.L1495
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1504
.L1495:
	mvhi	0(%r2),0
	br	%r14
.L1512:
	lcdbr	%f6,%f0
	kdb	%f0,.L1518-.L1515(%r5)
	jnle	.L1514
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1492
.L1514:
	kdb	%f0,.L1519-.L1515(%r5)
	jnh	.L1495
	lhi	%r3,1
.L1493:
	ldr	%f0,%f6
	lhi	%r1,0
.L1500:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1517-.L1515(%r5)
	jl	.L1500
	j	.L1499
.L1504:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1493
	.section	.rodata
	.align	8
.L1515:
.L1519:
	.long	-1075838976
	.long	0
.L1518:
	.long	-1074790400
	.long	0
.L1517:
	.long	1071644672
	.long	0
.L1516:
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
	cgije	%r4,0,.L1523
.L1522:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1522
	br	%r14
.L1523:
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
	clrjhe	%r3,%r2,.L1643
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L1637
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1529
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L1637
.L1531:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1529
	ahik	%r5,%r10,-1
	brct	%r11,.L1606
.L1530:
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
.L1606:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1637
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1529
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L1637
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1529
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L1531
.L1637:
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
	cijlh	%r11,0,.L1534
	j	.L1530
.L1529:
	cije	%r0,0,.L1536
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
.L1534:
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r10,0,.L1530
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
	cije	%r11,0,.L1530
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
	cije	%r11,0,.L1530
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
	cije	%r0,0,.L1530
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
	cije	%r0,0,.L1530
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
	cijhe	%r12,0,.L1530
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L1530
.L1643:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r5,%r3,%r2
	lpr	%r0,%r5
	srk	%r1,%r2,%r3
	ahi	%r0,-1
	srl	%r0,31
	ltr	%r0,%r0
	locre	%r1,%r2
	llgfr	%r2,%r1
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llgfr	%r2,%r0
	br	%r14
.L1536:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L1530
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
	cgije	%r2,0,.L1656
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	srlg	%r5,%r2,1
	nr	%r1,%r3
	sllk	%r0,%r3,1
	cgije	%r5,0,.L1747
	nilf	%r4,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r2,2
	lcr	%r12,%r4
	srlg	%r4,%r2,2
	nr	%r12,%r0
	sllk	%r0,%r3,2
	ar	%r1,%r12
	cgije	%r4,0,.L1654
	risbg	%r12,%r5,63,128+63,0
	srlk	%r5,%r2,3
	lcr	%r4,%r12
	sllk	%r12,%r3,3
	nr	%r4,%r0
	srlg	%r0,%r2,3
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,4
	lcr	%r4,%r4
	srlk	%r5,%r2,4
	nr	%r4,%r12
	sllk	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,5
	lcr	%r4,%r4
	srlk	%r5,%r2,5
	nr	%r4,%r12
	sllk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,6
	lcr	%r4,%r4
	srlk	%r5,%r2,6
	nr	%r4,%r12
	sllk	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,7
	lcr	%r4,%r4
	srlk	%r5,%r2,7
	nr	%r4,%r12
	sllk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,8
	lcr	%r4,%r4
	srlk	%r5,%r2,8
	nr	%r4,%r12
	sllk	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,9
	lcr	%r4,%r4
	srlk	%r5,%r2,9
	nr	%r4,%r12
	sllk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,10
	lcr	%r4,%r4
	srlk	%r5,%r2,10
	nr	%r4,%r12
	sllk	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lcr	%r4,%r4
	srlk	%r5,%r2,11
	nr	%r4,%r12
	sllk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lcr	%r4,%r4
	srlk	%r5,%r2,12
	nr	%r4,%r12
	sllk	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lcr	%r4,%r4
	srlk	%r5,%r2,13
	nr	%r4,%r12
	sllk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lcr	%r4,%r4
	srlk	%r5,%r2,14
	nr	%r4,%r12
	sllk	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lcr	%r4,%r4
	srlk	%r5,%r2,15
	nr	%r4,%r12
	sllk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lcr	%r4,%r4
	srlk	%r5,%r2,16
	nr	%r4,%r12
	sllk	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lcr	%r4,%r4
	srlk	%r5,%r2,17
	nr	%r4,%r12
	sllk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lcr	%r4,%r4
	srlk	%r5,%r2,18
	nr	%r4,%r12
	sllk	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lcr	%r4,%r4
	srlk	%r5,%r2,19
	nr	%r4,%r12
	sllk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lcr	%r4,%r4
	srlk	%r5,%r2,20
	nr	%r4,%r12
	sllk	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lcr	%r4,%r4
	srlk	%r5,%r2,21
	nr	%r4,%r12
	sllk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lcr	%r4,%r4
	srlk	%r5,%r2,22
	nr	%r4,%r12
	sllk	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lcr	%r4,%r4
	srlk	%r5,%r2,23
	nr	%r4,%r12
	sllk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lcr	%r4,%r4
	srlk	%r5,%r2,24
	nr	%r4,%r12
	sllk	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lcr	%r4,%r4
	srlk	%r5,%r2,25
	nr	%r4,%r12
	sllk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lcr	%r4,%r4
	srlk	%r5,%r2,26
	nr	%r4,%r12
	sllk	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lcr	%r4,%r4
	srlk	%r5,%r2,27
	nr	%r4,%r12
	sllk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lcr	%r4,%r4
	srlk	%r5,%r2,28
	nr	%r4,%r12
	sllk	%r12,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L1654
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	srlg	%r0,%r2,29
	nr	%r5,%r12
	sllk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r0,0,.L1654
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
.L1654:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1656:
	lhi	%r1,0
.L1747:
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
	srlk	%r1,%r4,3
	risbg	%r0,%r4,32,128+60,0
	clgrjl	%r2,%r3,.L1755
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1872
.L1755:
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
	cije	%r1,0,.L1873
	risbgn	%r12,%r1,32,128+60,3
	aghik	%r8,%r12,-8
	lghi	%r1,0
	srlg	%r9,%r8,3
	aghi	%r9,1
	risbg	%r11,%r9,62,128+63,0
	je	.L1803
	cgije	%r11,1,.L1819
	cgije	%r11,2,.L1820
	lg	%r10,0(%r3)
	lghi	%r1,8
	stg	%r10,0(%r2)
.L1820:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1819:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r1,.L1848
.L1803:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L1867
	aghi	%r5,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L1758:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brctg	%r5,.L1758
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1848:
	clrjhe	%r0,%r4,.L1751
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1760
	lgr	%r12,%r2
	la	%r8,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r9,%r12,%r8
	algfr	%r11,%r0
	clgijle	%r9,6,.L1760
	ogrk	%r1,%r11,%r12
	risbg	%r8,%r1,61,128+63,0
	aghi	%r8,-1
	cgijhe	%r8,0,.L1760
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1794
	cgije	%r8,1,.L1821
	cgijlh	%r8,2,.L1874
.L1822:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1821:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r1,%r9,.L1847
.L1794:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1866
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1761:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1761
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L1847:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1751
	llgfr	%r11,%r12
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r10,%r12,1
	clrjhe	%r10,%r4,.L1751
	llgfr	%r5,%r10
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1751
	llgfr	%r8,%r9
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1751
	llgfr	%r10,%r0
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahik	%r1,%r12,4
	clrjhe	%r1,%r4,.L1751
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r11,%r12,5
	clrjhe	%r11,%r4,.L1751
	llgfr	%r10,%r11
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1751
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1751:
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
.L1872:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1870
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1812
	cgije	%r5,1,.L1817
	cgije	%r5,2,.L1818
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1818:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1817:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1870
.L1812:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1868
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1765:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1765
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	br	%r14
.L1867:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r9,8(%r1,%r3)
	stg	%r9,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1867
	j	.L1848
.L1866:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1866
	j	.L1847
.L1868:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	stcy	%r0,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1868
.L1870:
	br	%r14
.L1874:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1822
.L1873:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1751
.L1760:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	aghik	%r1,%r5,1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	clrjhe	%r1,%r4,.L1751
	cije	%r8,0,.L1785
	cije	%r8,1,.L1824
	cijlh	%r8,2,.L1875
.L1825:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L1824:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1751
.L1785:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L1865
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1763:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1763
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1751
.L1865:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1865
	j	.L1751
.L1875:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L1825
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlk	%r12,%r4,1
	clgrjl	%r2,%r3,.L1881
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L1967
.L1881:
	cije	%r12,0,.L1880
	ahik	%r1,%r12,-1
	clijle	%r1,6,.L1884
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L1884
	la	%r10,2(%r3)
	sgrk	%r11,%r2,%r10
	clgijle	%r11,4,.L1884
	risbg	%r11,%r4,32,128+60,0
	aghik	%r1,%r11,-8
	srlk	%r0,%r4,3
	srlg	%r5,%r1,3
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L1915
	cgije	%r10,1,.L1931
	cgijlh	%r10,2,.L1968
.L1932:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L1931:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r11,.L1950
.L1915:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1964
	aghi	%r5,-1
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
.L1885:
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	brctg	%r5,.L1885
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1950:
	sllk	%r1,%r0,2
	crje	%r12,%r1,.L1880
	risbgn	%r5,%r1,32,128+60,1
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahik	%r11,%r1,1
	clrjle	%r12,%r11,.L1880
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,2
	clrjle	%r12,%r1,.L1880
	risbgn	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L1880:
	tmll	%r4,1
	je	.L1877
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1877:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L1967:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1877
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1924
	cgije	%r5,1,.L1929
	cgije	%r5,2,.L1930
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L1930:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L1929:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1877
.L1924:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1965
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1890:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1890
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1877
.L1964:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1964
	j	.L1950
.L1968:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1932
.L1965:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r10,-2(%r1,%r3)
	stcy	%r10,-2(%r1,%r2)
	icy	%r11,-3(%r1,%r3)
	stcy	%r11,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1965
	j	.L1877
.L1884:
	risbgn	%r11,%r12,32,128+62,1
	aghik	%r0,%r11,-2
	lghi	%r1,0
	srlg	%r10,%r0,1
	aghi	%r10,1
	risbg	%r5,%r10,62,128+63,0
	je	.L1906
	cgije	%r5,1,.L1933
	cgijlh	%r5,2,.L1969
.L1934:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L1933:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r11,%r1,.L1880
.L1906:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L1963
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L1887:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L1887
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1880
.L1963:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r12,4(%r1,%r3)
	sth	%r12,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1963
	j	.L1880
.L1969:
	lh	%r12,0(%r3)
	lghi	%r1,2
	sth	%r12,0(%r2)
	j	.L1934
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
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlk	%r12,%r4,2
	risbg	%r0,%r4,32,128+61,0
	clgrjl	%r2,%r3,.L1976
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2116
.L1976:
	cije	%r12,0,.L2117
	ahik	%r1,%r12,-1
	clijle	%r1,8,.L1978
	ogrk	%r8,%r2,%r3
	risbg	%r9,%r8,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1978
	la	%r10,4(%r3)
	cgrje	%r2,%r10,.L1978
	risbg	%r8,%r4,32,128+60,0
	aghik	%r5,%r8,-8
	srlk	%r11,%r4,3
	srlg	%r10,%r5,3
	lghi	%r1,0
	aghi	%r10,1
	risbg	%r9,%r10,62,128+63,0
	je	.L2039
	cgije	%r9,1,.L2055
	cgijlh	%r9,2,.L2118
.L2056:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2055:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r8,%r1,.L2090
.L2039:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L2113
	aghi	%r5,-1
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
.L1979:
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	brctg	%r5,.L1979
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L2090:
	sll	%r11,1
	crje	%r12,%r11,.L1982
	risbgn	%r12,%r11,32,128+60,2
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
.L1982:
	clrjhe	%r0,%r4,.L1971
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1974
	lgr	%r12,%r2
	la	%r9,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r8,%r12,%r9
	algfr	%r11,%r0
	clgijle	%r8,6,.L1974
	ogrk	%r1,%r11,%r12
	risbg	%r9,%r1,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1974
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2021
	cgije	%r8,1,.L2059
	cgijlh	%r8,2,.L2119
.L2060:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L2059:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r9,%r1,.L2089
.L2021:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2111
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1983:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1983
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L2089:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1971
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L1971
	llgfr	%r5,%r11
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1971
	llgfr	%r8,%r9
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1971
	llgfr	%r11,%r0
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	ahik	%r1,%r12,4
	clrjhe	%r1,%r4,.L1971
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L1971
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1971
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1971:
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
	br	%r14
.L2116:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1971
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L2048
	cgije	%r5,1,.L2053
	cgije	%r5,2,.L2054
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2054:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2053:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1971
.L2048:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L2114
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1987:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1987
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1971
.L2113:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r8,24(%r1,%r3)
	stg	%r8,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2113
	j	.L2090
.L2111:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L2111
	j	.L2089
.L2118:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L2056
.L2119:
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L2060
.L2114:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	icy	%r12,-1(%r1,%r3)
	stcy	%r12,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2114
	j	.L1971
.L2117:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1971
.L1974:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	aghik	%r1,%r5,1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	clrjle	%r4,%r1,.L1971
	cije	%r8,0,.L2012
	cije	%r8,1,.L2062
	cijlh	%r8,2,.L2120
.L2063:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L2062:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L1971
.L2012:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L2110
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1985:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1985
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1971
.L1978:
	risbgn	%r10,%r12,32,128+61,2
	aghik	%r5,%r10,-4
	lghi	%r1,0
	srlg	%r9,%r5,2
	aghi	%r9,1
	risbg	%r8,%r9,62,128+63,0
	je	.L2030
	cgije	%r8,1,.L2057
	cgijlh	%r8,2,.L2121
.L2058:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L2057:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r10,.L1982
.L2030:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L2112
	aghi	%r5,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
.L1981:
	aghi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	brctg	%r5,.L1981
	j	.L1982
.L2112:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	l	%r8,8(%r1,%r3)
	st	%r8,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2112
	j	.L1982
.L2110:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2110
	j	.L1971
.L2121:
	l	%r11,0(%r3)
	lghi	%r1,4
	st	%r11,0(%r2)
	j	.L2058
.L2120:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L2063
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
	cijlh	%r1,0,.L2138
	srak	%r5,%r2,14
	jne	.L2137
	srak	%r0,%r2,13
	cijlh	%r0,0,.L2139
	srak	%r3,%r2,12
	cijlh	%r3,0,.L2140
	srak	%r4,%r2,11
	cijlh	%r4,0,.L2141
	srak	%r5,%r2,10
	cijlh	%r5,0,.L2142
	srak	%r1,%r2,9
	cijlh	%r1,0,.L2143
	srak	%r0,%r2,8
	cijlh	%r0,0,.L2144
	srak	%r3,%r2,7
	cijlh	%r3,0,.L2145
	srak	%r4,%r2,6
	cijlh	%r4,0,.L2146
	srak	%r5,%r2,5
	cijlh	%r5,0,.L2147
	srak	%r1,%r2,4
	cijlh	%r1,0,.L2148
	srak	%r0,%r2,3
	cijlh	%r0,0,.L2149
	srak	%r3,%r2,2
	cijlh	%r3,0,.L2150
	srak	%r4,%r2,1
	cijlh	%r4,0,.L2151
	ltgr	%r2,%r2
	lhi	%r5,15
	lochie	%r5,16
.L2137:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2138:
	lhi	%r5,0
	j	.L2137
.L2149:
	lhi	%r5,12
	j	.L2137
.L2139:
	lhi	%r5,2
	j	.L2137
.L2140:
	lhi	%r5,3
	j	.L2137
.L2141:
	lhi	%r5,4
	j	.L2137
.L2142:
	lhi	%r5,5
	j	.L2137
.L2143:
	lhi	%r5,6
	j	.L2137
.L2144:
	lhi	%r5,7
	j	.L2137
.L2145:
	lhi	%r5,8
	j	.L2137
.L2146:
	lhi	%r5,9
	j	.L2137
.L2147:
	lhi	%r5,10
	j	.L2137
.L2148:
	lhi	%r5,11
	j	.L2137
.L2150:
	lhi	%r5,13
	j	.L2137
.L2151:
	lhi	%r5,14
	j	.L2137
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
	jne	.L2157
	tmll	%r2,2
	jne	.L2158
	tmll	%r2,4
	jne	.L2159
	tmll	%r2,8
	jne	.L2160
	tmll	%r2,16
	jne	.L2161
	tmll	%r2,32
	jne	.L2162
	tmll	%r2,64
	jne	.L2163
	tmll	%r2,128
	jne	.L2164
	tmll	%r2,256
	jne	.L2165
	tmll	%r2,512
	jne	.L2166
	tmll	%r2,1024
	jne	.L2167
	tmll	%r2,2048
	jne	.L2168
	tmll	%r2,4096
	jne	.L2169
	tmll	%r2,8192
	jne	.L2170
	tmll	%r2,16384
	jne	.L2171
	sra	%r2,15
	ltr	%r2,%r2
	lhi	%r2,15
	lochie	%r2,16
.L2156:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L2157:
	lhi	%r2,0
	j	.L2156
.L2158:
	lhi	%r2,1
	j	.L2156
.L2169:
	lhi	%r2,12
	j	.L2156
.L2159:
	lhi	%r2,2
	j	.L2156
.L2160:
	lhi	%r2,3
	j	.L2156
.L2161:
	lhi	%r2,4
	j	.L2156
.L2162:
	lhi	%r2,5
	j	.L2156
.L2163:
	lhi	%r2,6
	j	.L2156
.L2164:
	lhi	%r2,7
	j	.L2156
.L2165:
	lhi	%r2,8
	j	.L2156
.L2166:
	lhi	%r2,9
	j	.L2156
.L2167:
	lhi	%r2,10
	j	.L2156
.L2168:
	lhi	%r2,11
	j	.L2156
.L2170:
	lhi	%r2,13
	j	.L2156
.L2171:
	lhi	%r2,14
	j	.L2156
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
	larl	%r5,.L2182
	keb	%f0,.L2183-.L2182(%r5)
	jhe	.L2181
	cgebr	%r2,5,%f0
	br	%r14
.L2181:
	seb	%f0,.L2183-.L2182(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2182:
.L2183:
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
	risbg	%r3,%r2,63,128+63,0
	risbgn	%r4,%r2,64-1,128+63,32+29+1
	risbgn	%r0,%r2,64-1,128+63,32+28+1
	risbgn	%r5,%r2,64-1,128+63,32+27+1
	risbgn	%r1,%r2,64-1,128+63,32+30+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+26+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+25+1
	ar	%r1,%r0
	risbgn	%r0,%r2,64-1,128+63,32+24+1
	ar	%r1,%r5
	risbgn	%r5,%r2,64-1,128+63,32+23+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+22+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+21+1
	ar	%r1,%r0
	risbgn	%r0,%r2,64-1,128+63,32+20+1
	ar	%r1,%r5
	risbgn	%r5,%r2,64-1,128+63,32+19+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+18+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+17+1
	ar	%r1,%r0
	srak	%r0,%r2,15
	ar	%r1,%r5
	ar	%r1,%r3
	ark	%r2,%r1,%r4
	ar	%r2,%r0
	risbg	%r2,%r2,63,128+63,0
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
	risbg	%r3,%r2,63,128+63,0
	risbgn	%r4,%r2,64-1,128+63,32+29+1
	risbgn	%r0,%r2,64-1,128+63,32+28+1
	risbgn	%r5,%r2,64-1,128+63,32+27+1
	risbgn	%r1,%r2,64-1,128+63,32+30+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+26+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+25+1
	ar	%r1,%r0
	risbgn	%r0,%r2,64-1,128+63,32+24+1
	ar	%r1,%r5
	risbgn	%r5,%r2,64-1,128+63,32+23+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+22+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+21+1
	ar	%r1,%r0
	risbgn	%r0,%r2,64-1,128+63,32+20+1
	ar	%r1,%r5
	risbgn	%r5,%r2,64-1,128+63,32+19+1
	ar	%r1,%r3
	risbgn	%r3,%r2,64-1,128+63,32+18+1
	ar	%r1,%r4
	risbgn	%r4,%r2,64-1,128+63,32+17+1
	ar	%r1,%r0
	srak	%r0,%r2,15
	ar	%r1,%r5
	ar	%r1,%r3
	ark	%r2,%r1,%r4
	ar	%r2,%r0
	llgfr	%r2,%r2
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
	cgije	%r2,0,.L2191
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	sllk	%r5,%r3,1
	nr	%r1,%r3
	cije	%r4,0,.L2189
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r2,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r1,%r0
	cije	%r4,0,.L2189
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r2,3
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r1,%r4
	cije	%r5,0,.L2189
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r1,%r4
	cije	%r5,0,.L2189
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r1,%r5
	cije	%r4,0,.L2189
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
.L2189:
	llgfr	%r2,%r1
	br	%r14
.L2191:
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
	cgije	%r2,0,.L2286
	cgije	%r3,0,.L2286
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srlk	%r4,%r3,1
	nr	%r1,%r2
	srlg	%r5,%r3,1
	cgije	%r5,0,.L2377
	ldgr	%f0,%r12
	.cfi_register 12, 16
	nilf	%r4,1
	sllk	%r12,%r2,2
	lcr	%r4,%r4
	srlg	%r5,%r3,2
	nr	%r4,%r0
	srlk	%r0,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r0,%r2,3
	nr	%r4,%r12
	srlk	%r12,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r12,%r2,4
	nr	%r4,%r0
	srlk	%r0,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r0,%r2,5
	nr	%r4,%r12
	srlk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r12,%r2,6
	nr	%r4,%r0
	srlk	%r0,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r0,%r2,7
	nr	%r4,%r12
	srlk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r12,%r2,8
	nr	%r4,%r0
	srlk	%r0,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r0,%r2,9
	nr	%r4,%r12
	srlk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r12,%r2,10
	nr	%r4,%r0
	srlk	%r0,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r0,%r2,11
	nr	%r4,%r12
	srlk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r12,%r2,12
	nr	%r4,%r0
	srlk	%r0,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r0,%r2,13
	nr	%r4,%r12
	srlk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r12,%r2,14
	nr	%r4,%r0
	srlk	%r0,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r0,%r2,15
	nr	%r4,%r12
	srlk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r12,%r2,16
	nr	%r4,%r0
	srlk	%r0,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r0,%r2,17
	nr	%r4,%r12
	srlk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r12,%r2,18
	nr	%r4,%r0
	srlk	%r0,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r0,%r2,19
	nr	%r4,%r12
	srlk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r12,%r2,20
	nr	%r4,%r0
	srlk	%r0,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r0,%r2,21
	nr	%r4,%r12
	srlk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r12,%r2,22
	nr	%r4,%r0
	srlk	%r0,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r0,%r2,23
	nr	%r4,%r12
	srlk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r12,%r2,24
	nr	%r4,%r0
	srlk	%r0,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r0,%r2,25
	nr	%r4,%r12
	srlk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r12,%r2,26
	nr	%r4,%r0
	srlk	%r0,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,27
	lcr	%r4,%r4
	sllk	%r0,%r2,27
	nr	%r4,%r12
	srlk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r5,0,.L2283
	risbg	%r4,%r12,63,128+63,0
	srlk	%r5,%r3,28
	lcr	%r4,%r4
	sllk	%r12,%r2,28
	nr	%r4,%r0
	srlg	%r0,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L2283
	nilf	%r5,1
	sllk	%r0,%r2,29
	lcr	%r5,%r5
	srlg	%r4,%r3,29
	nr	%r5,%r12
	srlk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r4,0,.L2283
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
.L2283:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2286:
	lhi	%r1,0
.L2377:
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
	clrjhe	%r3,%r2,.L2498
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	cijl	%r3,0,.L2492
	sllk	%r5,%r3,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2384
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	cijl	%r1,0,.L2492
.L2386:
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2384
	ahik	%r5,%r10,-1
	brct	%r11,.L2461
.L2385:
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
.L2461:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2492
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2384
	lr	%r12,%r0
	lgr	%r3,%r1
	cijl	%r1,0,.L2492
	sllk	%r5,%r1,1
	sll	%r0,1
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2384
	ahi	%r10,-3
	lr	%r12,%r0
	lgr	%r3,%r1
	cijhe	%r1,0,.L2386
.L2492:
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
	cijlh	%r11,0,.L2389
	j	.L2385
.L2384:
	cije	%r0,0,.L2391
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
.L2389:
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r10,0,.L2385
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
	cije	%r11,0,.L2385
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
	cije	%r11,0,.L2385
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
	cije	%r0,0,.L2385
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
	cije	%r0,0,.L2385
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
	cijhe	%r12,0,.L2385
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	llgfr	%r2,%r12
	or	%r5,%r3
	j	.L2385
.L2498:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r5,%r3,%r2
	lpr	%r0,%r5
	srk	%r1,%r2,%r3
	ahi	%r0,-1
	srl	%r0,31
	ltr	%r0,%r0
	locre	%r1,%r2
	llgfr	%r2,%r1
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llgfr	%r2,%r0
	br	%r14
.L2391:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L2385
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
	cijl	%r3,0,.L2614
	cgije	%r3,0,.L2522
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srak	%r4,%r3,1
	nr	%r1,%r2
	srag	%r5,%r3,1
	cgije	%r5,0,.L2612
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r1,%r4
	sll	%r2,2
	srag	%r3,%r3,2
	lgfr	%r2,%r2
	je	.L2612
	lhi	%r0,0
.L2520:
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
	cgije	%r11,0,.L2521
	nilf	%r4,1
	sllk	%r11,%r2,2
	lcr	%r4,%r4
	srag	%r5,%r3,2
	nr	%r4,%r12
	srak	%r12,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r12,%r2,3
	nr	%r4,%r11
	srak	%r11,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r11,%r2,4
	nr	%r4,%r12
	srak	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r12,%r2,5
	nr	%r4,%r11
	srak	%r11,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r11,%r2,6
	nr	%r4,%r12
	srak	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r12,%r2,7
	nr	%r4,%r11
	srak	%r11,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r11,%r2,8
	nr	%r4,%r12
	srak	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r12,%r2,9
	nr	%r4,%r11
	srak	%r11,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r11,%r2,10
	nr	%r4,%r12
	srak	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r12,%r2,11
	nr	%r4,%r11
	srak	%r11,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r11,%r2,12
	nr	%r4,%r12
	srak	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r12,%r2,13
	nr	%r4,%r11
	srak	%r11,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r11,%r2,14
	nr	%r4,%r12
	srak	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r12,%r2,15
	nr	%r4,%r11
	srak	%r11,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r11,%r2,16
	nr	%r4,%r12
	srak	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r12,%r2,17
	nr	%r4,%r11
	srak	%r11,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r11,%r2,18
	nr	%r4,%r12
	srak	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r12,%r2,19
	nr	%r4,%r11
	srak	%r11,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r11,%r2,20
	nr	%r4,%r12
	srak	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r12,%r2,21
	nr	%r4,%r11
	srak	%r11,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r11,%r2,22
	nr	%r4,%r12
	srak	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r12,%r2,23
	nr	%r4,%r11
	srak	%r11,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r11,%r2,24
	nr	%r4,%r12
	srak	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r12,%r2,25
	nr	%r4,%r11
	srak	%r11,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2521
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r11,%r2,26
	nr	%r4,%r12
	srak	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2521
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
.L2521:
	cije	%r0,0,.L2518
	lcr	%r1,%r1
.L2518:
	lgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2614:
	risbg	%r1,%r3,63,128+63,0
	sllk	%r4,%r2,1
	lcr	%r3,%r3
	lcr	%r1,%r1
	srak	%r5,%r3,1
	nr	%r1,%r2
	cije	%r5,0,.L2611
	risbg	%r0,%r5,63,128+63,0
	sll	%r2,2
	lcr	%r5,%r0
	lgfr	%r2,%r2
	nr	%r5,%r4
	lhi	%r0,1
	srak	%r4,%r3,2
	ar	%r1,%r5
	lgfr	%r3,%r4
	cijlh	%r4,0,.L2520
.L2611:
	lcr	%r1,%r1
	j	.L2612
.L2522:
	lhi	%r1,0
.L2612:
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
	cgijl	%r2,0,.L2736
	lhi	%r1,1
	lhi	%r12,0
.L2617:
	cgijhe	%r3,0,.L2618
	lcgr	%r3,%r3
	lr	%r12,%r1
.L2618:
	lr	%r0,%r2
	lr	%r4,%r3
	clrjle	%r2,%r3,.L2737
	lhi	%r5,1
	cijl	%r3,0,.L2731
	sllk	%r1,%r3,1
	lhi	%r3,2
	clrjle	%r2,%r1,.L2621
	lhi	%r5,2
	lr	%r4,%r1
	lhi	%r2,11
	cijl	%r1,0,.L2731
.L2623:
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2621
	brct	%r2,.L2699
.L2630:
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
.L2699:
	.cfi_restore_state
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L2731
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2621
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L2731
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2621
	lr	%r5,%r3
	lr	%r4,%r1
	cijhe	%r1,0,.L2623
.L2731:
	srk	%r10,%r0,%r4
	clr	%r0,%r4
	lr	%r2,%r5
	locrhe	%r0,%r10
	lochinhe	%r2,0
	srlk	%r11,%r5,1
	srlk	%r10,%r4,1
	cijlh	%r11,0,.L2626
.L2620:
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
.L2621:
	.cfi_restore_state
	cije	%r3,0,.L2630
	srk	%r11,%r0,%r1
	clr	%r0,%r1
	lr	%r2,%r3
	lochinhe	%r2,0
	locrhe	%r0,%r11
	llgtr	%r10,%r4
	llgtr	%r11,%r5
	lr	%r4,%r1
	lr	%r5,%r3
.L2626:
	srk	%r1,%r0,%r10
	clr	%r0,%r10
	locrnhe	%r1,%r0
	clr	%r10,%r0
	lochinle	%r11,0
	or	%r2,%r11
	srlk	%r0,%r5,2
	srlk	%r10,%r4,2
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,3
	or	%r2,%r0
	srlk	%r0,%r5,3
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,4
	or	%r2,%r0
	srlk	%r0,%r4,4
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,5
	or	%r2,%r10
	srlk	%r10,%r5,5
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,6
	or	%r2,%r10
	srlk	%r10,%r4,6
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,7
	or	%r2,%r0
	srlk	%r0,%r5,7
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,8
	or	%r2,%r0
	srlk	%r0,%r4,8
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,9
	or	%r2,%r10
	srlk	%r10,%r5,9
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,10
	or	%r2,%r10
	srlk	%r10,%r4,10
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,11
	or	%r2,%r0
	srlk	%r0,%r5,11
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,12
	or	%r2,%r0
	srlk	%r0,%r4,12
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,13
	or	%r2,%r10
	srlk	%r10,%r5,13
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,14
	or	%r2,%r10
	srlk	%r10,%r4,14
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,15
	or	%r2,%r0
	srlk	%r0,%r5,15
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,16
	or	%r2,%r0
	srlk	%r0,%r4,16
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,17
	or	%r2,%r10
	srlk	%r10,%r5,17
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,18
	or	%r2,%r10
	srlk	%r10,%r4,18
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,19
	or	%r2,%r0
	srlk	%r0,%r5,19
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,20
	or	%r2,%r0
	srlk	%r0,%r4,20
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,21
	or	%r2,%r10
	srlk	%r10,%r5,21
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,22
	or	%r2,%r10
	srlk	%r10,%r4,22
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,23
	or	%r2,%r0
	srlk	%r0,%r5,23
	cije	%r0,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r0,0
	locrnhe	%r1,%r3
	srlk	%r10,%r5,24
	or	%r2,%r0
	srlk	%r0,%r4,24
	cije	%r10,0,.L2620
	srk	%r3,%r1,%r0
	clr	%r1,%r0
	lochinhe	%r10,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,25
	or	%r2,%r10
	srlk	%r10,%r5,25
	cije	%r10,0,.L2620
	srk	%r1,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r10,0
	locrnhe	%r1,%r3
	srlk	%r0,%r5,26
	or	%r2,%r10
	srlk	%r10,%r4,26
	cije	%r0,0,.L2620
	srk	%r3,%r1,%r10
	clr	%r1,%r10
	lochinhe	%r0,0
	locrnhe	%r3,%r1
	srlk	%r11,%r4,27
	or	%r2,%r0
	srlk	%r1,%r5,27
	cije	%r1,0,.L2620
	srk	%r0,%r3,%r11
	clr	%r3,%r11
	lochinhe	%r1,0
	locrnhe	%r0,%r3
	srlk	%r10,%r5,28
	or	%r2,%r1
	srlk	%r3,%r4,28
	cije	%r10,0,.L2620
	srk	%r1,%r0,%r3
	clr	%r0,%r3
	lochinhe	%r10,0
	locrnhe	%r1,%r0
	srlk	%r11,%r4,29
	or	%r2,%r10
	srlk	%r0,%r5,29
	cije	%r0,0,.L2620
	srk	%r10,%r1,%r11
	clr	%r1,%r11
	lochinhe	%r0,0
	locrnhe	%r10,%r1
	srlk	%r3,%r5,30
	or	%r2,%r0
	srlk	%r1,%r4,30
	cije	%r3,0,.L2620
	srk	%r0,%r10,%r1
	clr	%r10,%r1
	lochinhe	%r3,0
	locrnhe	%r0,%r10
	srl	%r4,31
	or	%r2,%r3
	cijhe	%r5,0,.L2620
	slr	%r0,%r4
	lhi	%r5,0
	alcr	%r5,%r5
	or	%r2,%r5
	j	.L2620
.L2736:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L2617
.L2737:
	xr	%r2,%r3
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	j	.L2620
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
	lpgr	%r1,%r3
	cgijl	%r2,0,.L2864
	lr	%r4,%r1
	lr	%r3,%r2
	lhi	%r0,0
	clrjle	%r2,%r1,.L2865
.L2741:
	lhi	%r2,1
	cijl	%r4,0,.L2858
	sllk	%r1,%r4,1
	lhi	%r2,2
	clrjhe	%r1,%r3,.L2745
	lr	%r4,%r1
	lhi	%r5,11
	cijl	%r1,0,.L2858
.L2747:
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L2745
	brct	%r5,.L2825
.L2862:
	llgfr	%r2,%r3
	cije	%r0,0,.L2861
	lcgr	%r2,%r2
.L2861:
	br	%r14
.L2825:
	lr	%r4,%r1
	cijl	%r1,0,.L2858
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L2745
	lr	%r4,%r1
	cijl	%r1,0,.L2858
	sll	%r1,1
	sll	%r2,1
	clrjhe	%r1,%r3,.L2745
	lr	%r4,%r1
	cijhe	%r1,0,.L2747
.L2858:
	srk	%r1,%r3,%r4
	clr	%r4,%r3
	srlk	%r5,%r4,1
	locrle	%r3,%r1
	srlk	%r1,%r2,1
	cijlh	%r1,0,.L2750
	j	.L2862
.L2745:
	cije	%r2,0,.L2862
	srk	%r5,%r3,%r1
	clr	%r1,%r3
	locrle	%r3,%r5
	llgtr	%r5,%r4
	lr	%r4,%r1
.L2750:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srk	%r12,%r3,%r5
	clr	%r3,%r5
	srlk	%r1,%r4,2
	locrhe	%r3,%r12
	srlk	%r5,%r2,2
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,3
	locrhe	%r3,%r12
	srlk	%r1,%r4,3
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,4
	locrhe	%r3,%r12
	srlk	%r1,%r4,4
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,5
	locrhe	%r3,%r12
	srlk	%r1,%r4,5
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,6
	locrhe	%r3,%r12
	srlk	%r1,%r4,6
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,7
	locrhe	%r3,%r12
	srlk	%r1,%r4,7
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,8
	locrhe	%r3,%r12
	srlk	%r1,%r4,8
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,9
	locrhe	%r3,%r12
	srlk	%r1,%r4,9
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,10
	locrhe	%r3,%r12
	srlk	%r1,%r4,10
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,11
	locrhe	%r3,%r12
	srlk	%r1,%r4,11
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,12
	locrhe	%r3,%r12
	srlk	%r1,%r4,12
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,13
	locrhe	%r3,%r12
	srlk	%r1,%r4,13
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,14
	locrhe	%r3,%r12
	srlk	%r1,%r4,14
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,15
	locrhe	%r3,%r12
	srlk	%r1,%r4,15
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,16
	locrhe	%r3,%r12
	srlk	%r1,%r4,16
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,17
	locrhe	%r3,%r12
	srlk	%r1,%r4,17
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,18
	locrhe	%r3,%r12
	srlk	%r1,%r4,18
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,19
	locrhe	%r3,%r12
	srlk	%r1,%r4,19
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,20
	locrhe	%r3,%r12
	srlk	%r1,%r4,20
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,21
	locrhe	%r3,%r12
	srlk	%r1,%r4,21
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,22
	locrhe	%r3,%r12
	srlk	%r1,%r4,22
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,23
	locrhe	%r3,%r12
	srlk	%r1,%r4,23
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,24
	locrhe	%r3,%r12
	srlk	%r1,%r4,24
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,25
	locrhe	%r3,%r12
	srlk	%r1,%r4,25
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,26
	locrhe	%r3,%r12
	srlk	%r1,%r4,26
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,27
	locrhe	%r3,%r12
	srlk	%r1,%r4,27
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,28
	locrhe	%r3,%r12
	srlk	%r1,%r4,28
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,29
	locrhe	%r3,%r12
	srlk	%r1,%r4,29
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srlk	%r5,%r2,30
	locrhe	%r3,%r12
	srlk	%r1,%r4,30
	cije	%r5,0,.L2746
	srk	%r12,%r3,%r1
	clr	%r3,%r1
	srl	%r4,31
	locrhe	%r3,%r12
	cijhe	%r2,0,.L2746
	srk	%r2,%r3,%r4
	clr	%r3,%r4
	locrhe	%r3,%r2
.L2746:
	llgfr	%r2,%r3
	cije	%r0,0,.L2739
	lcgr	%r2,%r2
.L2739:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2864:
	lcgr	%r2,%r2
	lr	%r4,%r1
	lr	%r3,%r2
	lhi	%r0,1
	clrjh	%r2,%r1,.L2741
	srk	%r0,%r2,%r1
	cr	%r2,%r1
	locre	%r2,%r0
	llgfr	%r2,%r2
	lcgr	%r2,%r2
	br	%r14
.L2865:
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
	clrjhe	%r3,%r2,.L2956
	tmll	%r3,32768
	jne	.L2870
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbgn	%r1,%r3,48,128+62,1
	clrjle	%r2,%r1,.L2877
	tmll	%r1,32768
	jne	.L2877
	risbgn	%r1,%r3,48,128+61,2
	clrjle	%r2,%r1,.L2879
	tmll	%r1,32768
	jne	.L2879
	risbgn	%r1,%r3,48,128+60,3
	clrjle	%r2,%r1,.L2881
	tmll	%r1,32768
	jne	.L2881
	risbgn	%r1,%r3,48,128+59,4
	clrjle	%r2,%r1,.L2883
	tmll	%r1,32768
	jne	.L2883
	risbgn	%r1,%r3,48,128+58,5
	clrjle	%r2,%r1,.L2885
	tmll	%r1,32768
	jne	.L2885
	risbgn	%r1,%r3,48,128+57,6
	clrjle	%r2,%r1,.L2887
	tmll	%r1,32768
	jne	.L2887
	risbgn	%r1,%r3,48,128+56,7
	clrjle	%r2,%r1,.L2889
	tmll	%r1,32768
	jne	.L2889
	risbgn	%r1,%r3,48,128+55,8
	clrjle	%r2,%r1,.L2891
	tmll	%r1,32768
	jne	.L2891
	risbgn	%r1,%r3,48,128+54,9
	clrjle	%r2,%r1,.L2893
	tmll	%r1,32768
	jne	.L2893
	risbgn	%r1,%r3,48,128+53,10
	clrjle	%r2,%r1,.L2895
	tmll	%r1,32768
	jne	.L2895
	risbgn	%r1,%r3,48,128+52,11
	clrjle	%r2,%r1,.L2897
	tmll	%r1,32768
	jne	.L2897
	risbgn	%r1,%r3,48,128+51,12
	clrjle	%r2,%r1,.L2899
	tmll	%r1,32768
	jne	.L2899
	risbgn	%r1,%r3,48,128+50,13
	clrjle	%r2,%r1,.L2901
	tmll	%r1,32768
	jne	.L2901
	risbgn	%r1,%r3,48,128+49,14
	clrjle	%r2,%r1,.L2903
	tmll	%r1,32768
	jne	.L2903
	risbgn	%r11,%r3,48,128+48,15
	clrjle	%r2,%r11,.L2904
	lhi	%r3,0
	cgijlh	%r11,0,.L2957
.L2873:
	ltgr	%r4,%r4
	locrne	%r3,%r2
	llghr	%r2,%r3
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2877:
	.cfi_restore_state
	lhi	%r0,2
.L2872:
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	cije	%r12,0,.L2873
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
	crje	%r0,%r1,.L2873
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
.L2879:
	.cfi_restore_state
	lhi	%r0,4
	j	.L2872
.L2881:
	lhi	%r0,8
	j	.L2872
.L2883:
	lhi	%r0,16
	j	.L2872
.L2893:
	lhi	%r0,512
	j	.L2872
.L2885:
	lhi	%r0,32
	j	.L2872
.L2887:
	lhi	%r0,64
	j	.L2872
.L2889:
	lhi	%r0,128
	j	.L2872
.L2891:
	lhi	%r0,256
	j	.L2872
.L2956:
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
.L2953:
	ltgr	%r4,%r4
	locrne	%r3,%r5
	llghr	%r2,%r3
	br	%r14
.L2895:
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r0,1024
	j	.L2872
.L2897:
	lhi	%r0,2048
	j	.L2872
.L2899:
	lhi	%r0,4096
	j	.L2872
.L2901:
	lhi	%r0,8192
	j	.L2872
.L2903:
	lhi	%r0,16384
	j	.L2872
.L2957:
	llill	%r0,32768
	llill	%r1,32768
	j	.L2872
.L2904:
	llill	%r1,32768
	llill	%r0,32768
	j	.L2872
.L2870:
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r3,1
	llghr	%r5,%r2
	j	.L2953
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
	clgrjhe	%r3,%r2,.L2992
	lghi	%r1,1
	lhi	%r0,16
.L2960:
	risbg	%r5,%r3,32,128+32,0
	jne	.L2965
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2962
	risbg	%r5,%r3,32,128+32,0
	jne	.L2965
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2962
	risbg	%r5,%r3,32,128+32,0
	jne	.L2965
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2962
	risbg	%r5,%r3,32,128+32,0
	jne	.L2965
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2962
	brct	%r0,.L2960
.L2990:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L2962:
	cgije	%r1,0,.L2990
.L2965:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r5,0
.L2966:
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
	cgijlh	%r1,0,.L2966
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	locgre	%r2,%r5
	br	%r14
.L2992:
	sgrk	%r1,%r2,%r3
	slgrk	%r3,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	llgcr	%r5,%r5
	locgrne	%r2,%r1
	j	.L2990
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
	je	.L2995
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L2996:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L2994:
	br	%r14
.L2995:
	cgije	%r3,0,.L2994
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L2996
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
	je	.L3001
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3002:
	lgr	%r0,%r4
.L3003:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L3001:
	cgije	%r4,0,.L3003
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L3002
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
	je	.L3009
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L3010:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L3008:
	br	%r14
.L3009:
	cgije	%r3,0,.L3008
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L3010
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
	je	.L3015
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L3016:
	lgr	%r0,%r4
.L3017:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3015:
	cgije	%r4,0,.L3017
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3016
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
	jl	.L3032
	jh	.L3033
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3032:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3033:
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
	jl	.L3039
	jh	.L3040
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3039:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3040:
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
	jl	.L3045
	jh	.L3046
	clgr	%r4,%r1
	lhi	%r0,1
	lochih	%r0,2
	lochinhe	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3045:
	lhi	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3046:
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
	jne	.L3055
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
.L3055:
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
	je	.L3060
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
.L3061:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L3059:
	br	%r14
.L3060:
	cgije	%r3,0,.L3059
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	j	.L3061
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
	je	.L3066
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3067:
	lgr	%r0,%r4
.L3068:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3066:
	cgije	%r4,0,.L3068
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3067
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
	lg	%r1,8(%r3)
	lg	%r0,8(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbg	%r5,%r1,32,128+63,0
	srlg	%r12,%r0,32
	lgr	%r11,%r1
	lgr	%r10,%r0
	msg	%r11,0(%r4)
	msg	%r10,0(%r3)
	srlg	%r4,%r1,32
	lgr	%r3,%r5
	risbg	%r1,%r0,32,128+63,0
	msgr	%r3,%r12
	lgr	%r0,%r5
	msgr	%r0,%r1
	msgr	%r1,%r4
	msgr	%r4,%r12
	srlg	%r12,%r0,32
	agr	%r1,%r12
	algfr	%r3,%r1
	srlg	%r1,%r1,32
	agr	%r1,%r4
	srlg	%r4,%r3,32
	agr	%r1,%r4
	agr	%r11,%r1
	agr	%r11,%r10
	sllg	%r3,%r3,32
	stg	%r11,0(%r2)
	algfr	%r3,%r0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	stg	%r3,8(%r2)
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
	larl	%r5,.L3096
	srlg	%r1,%r2,1
	ng	%r1,.L3097-.L3096(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L3098-.L3096(%r5)
	ng	%r0,.L3098-.L3096(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3099-.L3096(%r5)
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
.L3096:
.L3099:
	.quad	1085102592571150095
.L3098:
	.quad	3689348814741910323
.L3097:
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
	larl	%r5,.L3115
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L3116-.L3115(%r5)
	tmll	%r2,1
	je	.L3106
.L3108:
	mdbr	%f0,%f2
.L3106:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3107
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L3108
.L3113:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3108
	j	.L3113
.L3107:
	cijl	%r2,0,.L3114
	br	%r14
.L3114:
	ld	%f4,.L3116-.L3115(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3115:
.L3116:
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
	larl	%r5,.L3127
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L3128-.L3127(%r5)
	tmll	%r2,1
	je	.L3118
.L3120:
	meebr	%f0,%f2
.L3118:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3119
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L3120
.L3125:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3120
	j	.L3125
.L3119:
	cijl	%r2,0,.L3126
	br	%r14
.L3126:
	le	%f4,.L3128-.L3127(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3127:
.L3128:
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
	jl	.L3131
	jh	.L3132
	clr	%r2,%r3
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3131:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3132:
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
	jl	.L3138
	jh	.L3139
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lochinhe	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3138:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3139:
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
	jl	.L3144
	jh	.L3145
	clgr	%r4,%r1
	lhi	%r2,1
	lochih	%r2,2
	lochinhe	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3144:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3145:
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
