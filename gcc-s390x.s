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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	cgije	%r4,0,.L221
	brasl	%r14,memcpy@PLT
.L221:
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
	cgije	%r4,0,.L268
	nilf	%r3,255
	lgr	%r1,%r2
	cgije	%r4,1,.L260
	aghi	%r4,-2
	srlg	%r5,%r4,8
	cgijlh	%r5,0,.L259
.L262:
	stc	%r3,0(%r1)
	exrl	%r4,.L270
.L268:
	br	%r14
.L259:
	pfd	2,1024(%r1)
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brctg	%r5,.L259
	j	.L262
.L260:
	stc	%r3,0(%r2)
	br	%r14
.L270:
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
	cgije	%r1,0,.L273
.L274:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L274
.L273:
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
	jne	.L281
	br	%r14
.L283:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L281:
	crjlh	%r1,%r3,.L283
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
.L291:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L290
	la	%r2,1(%r2)
	cijlh	%r1,0,.L291
	lghi	%r2,0
.L290:
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
	crje	%r1,%r5,.L295
	j	.L296
.L297:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r1,%r5,.L296
.L295:
	cijlh	%r1,0,.L297
.L296:
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
	je	.L307
	lgr	%r1,%r2
.L306:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L306
	sgrk	%r2,%r1,%r2
	br	%r14
.L307:
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
	cgije	%r4,0,.L318
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L322
.L314:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L313
	la	%r0,1(%r3)
	brctg	%r4,.L316
.L313:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L316:
	crjlh	%r5,%r1,.L313
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L323
	lgr	%r3,%r0
	j	.L314
.L318:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L323:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L313
.L322:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L313
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
	cgijle	%r4,1,.L325
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L334
	cgije	%r4,1,.L338
	cgije	%r4,2,.L339
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L339:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L338:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L325
.L334:
	srlg	%r1,%r0,2
	cghi	%r1,2
	jle	.L348
	aghi	%r1,-1
	mvc	0(1,%r3),1(%r2)
.L327:
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
	brctg	%r1,.L327
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
.L325:
	br	%r14
.L348:
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
	brctg	%r1,.L348
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
	cije	%r2,32,.L372
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L372:
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
	clijle	%r2,31,.L380
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L381
.L380:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L381:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L380
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
	clijle	%r2,254,.L392
	lhi	%r1,8231
	clrjle	%r2,%r1,.L390
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L390
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L390
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
.L390:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L392:
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
	clijle	%r1,9,.L396
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L396:
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
	jo	.L404
	kdbr	%f0,%f2
	jnh	.L407
	sdbr	%f0,%f2
	br	%r14
.L407:
	lzdr	%f0
	br	%r14
.L404:
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
	jo	.L413
	kebr	%f0,%f2
	jnh	.L416
	sebr	%f0,%f2
	br	%r14
.L416:
	lzer	%f0
	br	%r14
.L413:
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
	jo	.L426
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L420
	cijlh	%r1,0,.L426
	br	%r14
.L420:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L426
	ldr	%f2,%f0
.L426:
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
	jo	.L436
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L430
	cijlh	%r1,0,.L436
	br	%r14
.L430:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L436
	ler	%f2,%f0
.L436:
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
	jo	.L445
	cxbr	%f4,%f4
	jo	.L450
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L452
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
	je	.L442
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L443:
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
.L452:
	cije	%r1,0,.L450
.L445:
	lxr	%f0,%f4
.L450:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L442:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L443
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
	jo	.L460
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L456
	cije	%r1,0,.L460
	br	%r14
.L456:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L460:
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
	jo	.L470
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L466
	cije	%r1,0,.L470
	br	%r14
.L466:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L470:
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
	jo	.L486
	cxbr	%f0,%f0
	jo	.L481
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L488
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
	je	.L478
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L479:
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
.L488:
	cije	%r1,0,.L486
.L481:
	lxr	%f0,%f4
.L486:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L478:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L479
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
	cije	%r2,0,.L493
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L492:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L492
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L493:
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
	cgije	%r3,0,.L507
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L507:
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
	je	.L510
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L510:
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
	je	.L520
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L540
.L530:
	srlg	%r10,%r10,1
.L522:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L519
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L519
	agrk	%r12,%r11,%r9
	brctg	%r10,.L522
.L520:
	lgr	%r12,%r9
	msgr	%r12,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L519
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L519:
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
.L540:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L519
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L530
	j	.L520
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
	je	.L543
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L559
.L550:
	srlg	%r7,%r11,1
.L545:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L542
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L542
	agr	%r12,%r10
	brctg	%r7,.L545
.L543:
	lghi	%r8,0
.L542:
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
.L559:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L542
	agr	%r12,%r10
	cgijlh	%r7,1,.L550
	j	.L543
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
.L570:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L564
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L564
	cije	%r3,43,.L565
	cijlh	%r3,45,.L586
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L575
	lhi	%r12,1
.L568:
	lhi	%r4,0
.L572:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L572
	sr	%r5,%r1
	ltr	%r12,%r12
	locrne	%r5,%r4
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L564:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L570
.L586:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L568
.L575:
	lhi	%r5,0
.L587:
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L565:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L568
	lhi	%r5,0
	j	.L587
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
.L596:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L590
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L590
	cije	%r4,43,.L591
	cije	%r4,45,.L592
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L601
	lgr	%r3,%r2
	lhi	%r11,0
.L594:
	lghi	%r5,0
.L598:
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
	clijle	%r12,9,.L598
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L590:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L596
.L592:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L601
	lhi	%r11,1
	j	.L594
.L591:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L594
.L601:
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
.L618:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L614
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L614
	cije	%r4,43,.L615
	cije	%r4,45,.L616
	ahik	%r5,%r4,-48
	lgr	%r3,%r2
	clijh	%r5,9,.L625
	lhi	%r11,0
.L619:
	lghi	%r5,0
.L622:
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
	clijle	%r12,9,.L622
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L614:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L618
.L616:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L619
.L625:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L615:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L625
	lhi	%r11,0
	j	.L619
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
	cgije	%r4,0,.L639
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lgr	%r12,%r4
	j	.L642
.L649:
	je	.L638
	aghi	%r12,-1
	agrk	%r9,%r11,%r8
	sgr	%r12,%r10
	cgije	%r12,0,.L639
.L642:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r8
	lgr	%r2,%r7
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L649
	lgr	%r12,%r10
	cgijlh	%r12,0,.L642
.L639:
	lghi	%r11,0
.L638:
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
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lr	%r11,%r4
	cije	%r4,0,.L656
.L661:
	srak	%r10,%r11,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	lg	%r4,320(%r15)
	lgr	%r2,%r7
	agr	%r12,%r9
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L651
	jle	.L654
	agrk	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L661
.L656:
	lghi	%r12,0
.L651:
	lgr	%r2,%r12
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
.L654:
	.cfi_restore_state
	cije	%r10,0,.L656
	lr	%r11,%r10
	j	.L661
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
	j	.L688
.L690:
	crje	%r1,%r3,.L689
	la	%r2,4(%r2)
.L688:
	lt	%r1,0(%r2)
	jne	.L690
	lghi	%r2,0
	br	%r14
.L689:
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
	crje	%r4,%r5,.L693
	j	.L694
.L695:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L694
.L693:
	cijlh	%r4,0,.L695
.L694:
	cr	%r4,%r5
	lghi	%r0,1
	lghi	%r2,0
	locgrh	%r2,%r0
	lghi	%r3,-1
	locgrnhe	%r2,%r3
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
.L704:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L704
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
	je	.L710
	lgr	%r1,%r2
.L709:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L709
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L710:
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
	cgije	%r4,0,.L720
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L737
.L723:
	srlg	%r0,%r1,1
.L714:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L716
	la	%r5,4(%r2)
	cije	%r1,0,.L716
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L716
	cije	%r4,0,.L716
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L714
.L720:
	lghi	%r2,0
	br	%r14
.L716:
	l	%r2,0(%r2)
	lghi	%r0,-1
	c	%r2,0(%r3)
	lghi	%r3,1
	lghi	%r2,0
	locgrh	%r2,%r3
	locgrl	%r2,%r0
	br	%r14
.L737:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L716
	cije	%r4,0,.L716
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L723
	j	.L720
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
	lghi	%r2,0
	br	%r14
.L808:
	c	%r1,0(%r3)
	lghi	%r2,0
	lghi	%r3,1
	locgrh	%r2,%r3
	lghi	%r5,-1
	locgrl	%r2,%r5
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
	cgije	%r4,0,.L815
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L815:
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
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
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
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
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
	lhi	%r1,1
	kxbr	%f0,%f4
	lhi	%r2,0
	locrh	%r2,%r1
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
.L1394:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1394
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
	je	.L1397
	lr	%r8,%r10
	lgr	%r9,%r3
.L1399:
	la	%r9,1(%r9)
	cli	0(%r9),0
	jne	.L1399
	slgr	%r9,%r3
	jhe	.L1397
	aghi	%r9,-1
	j	.L1417
.L1420:
	la	%r2,1(%r2)
	cije	%r1,0,.L1419
.L1417:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1420
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L1401:
	la	%r11,1(%r5)
	brctg	%r0,.L1415
.L1403:
	crje	%r1,%r12,.L1397
.L1404:
	la	%r2,1(%r2)
	j	.L1417
.L1415:
	crjlh	%r1,%r12,.L1404
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1403
	cli	1(%r5),0
	je	.L1404
	lgr	%r5,%r11
	j	.L1401
.L1419:
	lghi	%r2,0
.L1397:
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
	jl	.L1432
	jnh	.L1426
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1425
.L1426:
	br	%r14
.L1432:
	kdbr	%f2,%f4
	jnh	.L1426
.L1425:
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
	cgije	%r5,0,.L1478
	clgrjl	%r3,%r5,.L1443
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1443
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	llc	%r11,0(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1440
.L1444:
	lgr	%r2,%r12
.L1436:
	clgrjl	%r3,%r2,.L1445
.L1440:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1444
	cgije	%r5,1,.L1434
.L1439:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1455
	cgije	%r10,1,.L1465
	cgijlh	%r10,2,.L1481
.L1466:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	aghi	%r1,1
.L1465:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	aghi	%r1,1
	cgrje	%r1,%r5,.L1434
.L1455:
	srlg	%r0,%r0,2
.L1437:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1472
	aghi	%r1,4
	brctg	%r0,.L1437
.L1434:
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
.L1481:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1466
.L1472:
	clgrjl	%r3,%r12,.L1445
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1436
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1439
.L1445:
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
.L1443:
	lghi	%r2,0
	br	%r14
.L1478:
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
	cgije	%r4,0,.L1484
	brasl	%r14,memmove@PLT
.L1484:
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
	larl	%r5,.L1516
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1513
	kdb	%f0,.L1517-.L1516(%r5)
	jnhe	.L1514
	lhi	%r3,0
.L1493:
	lhi	%r1,0
.L1499:
	ahi	%r1,1
	mdb	%f0,.L1518-.L1516(%r5)
	kdb	%f0,.L1517-.L1516(%r5)
	jhe	.L1499
.L1500:
	st	%r1,0(%r2)
	cije	%r3,0,.L1490
	lcdbr	%f0,%f0
.L1490:
	br	%r14
.L1514:
	kdb	%f0,.L1518-.L1516(%r5)
	jnl	.L1496
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1505
.L1496:
	mvhi	0(%r2),0
	br	%r14
.L1513:
	lcdbr	%f6,%f0
	kdb	%f0,.L1519-.L1516(%r5)
	jnle	.L1515
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1493
.L1515:
	kdb	%f0,.L1520-.L1516(%r5)
	jnh	.L1496
	lhi	%r3,1
.L1494:
	ldr	%f0,%f6
	lhi	%r1,0
.L1501:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1518-.L1516(%r5)
	jl	.L1501
	j	.L1500
.L1505:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1494
	.section	.rodata
	.align	8
.L1516:
.L1520:
	.long	-1075838976
	.long	0
.L1519:
	.long	-1074790400
	.long	0
.L1518:
	.long	1071644672
	.long	0
.L1517:
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
	cgije	%r4,0,.L1524
.L1523:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1523
	br	%r14
.L1524:
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
	clrjhe	%r3,%r2,.L1557
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r0,32
	lhi	%r1,1
	lhi	%r12,8
.L1528:
	cijl	%r3,0,.L1529
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1530
	cijl	%r3,0,.L1529
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1530
	cijl	%r3,0,.L1529
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1530
	cijl	%r3,0,.L1529
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1530
	ahi	%r0,-4
	brct	%r12,.L1528
.L1531:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1530:
	.cfi_restore_state
	cije	%r1,0,.L1537
.L1529:
	lhi	%r0,0
.L1534:
	clrjl	%r2,%r3,.L1533
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L1533:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1534
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1557:
	lhi	%r1,1
	lhi	%r0,0
.L1552:
	clrjl	%r2,%r3,.L1554
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L1554:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1552
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1537:
	.cfi_register 12, 16
	lhi	%r0,0
	j	.L1531
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
	cgije	%r2,0,.L1570
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	srlg	%r5,%r2,1
	nr	%r1,%r3
	sllk	%r0,%r3,1
	cgije	%r5,0,.L1661
	nilf	%r4,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r2,2
	lcr	%r12,%r4
	srlg	%r4,%r2,2
	nr	%r12,%r0
	sllk	%r0,%r3,2
	ar	%r1,%r12
	cgije	%r4,0,.L1568
	risbg	%r12,%r5,63,128+63,0
	srlk	%r5,%r2,3
	lcr	%r4,%r12
	sllk	%r12,%r3,3
	nr	%r4,%r0
	srlg	%r0,%r2,3
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,4
	lcr	%r4,%r4
	srlk	%r5,%r2,4
	nr	%r4,%r12
	sllk	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,5
	lcr	%r4,%r4
	srlk	%r5,%r2,5
	nr	%r4,%r12
	sllk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,6
	lcr	%r4,%r4
	srlk	%r5,%r2,6
	nr	%r4,%r12
	sllk	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,7
	lcr	%r4,%r4
	srlk	%r5,%r2,7
	nr	%r4,%r12
	sllk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,8
	lcr	%r4,%r4
	srlk	%r5,%r2,8
	nr	%r4,%r12
	sllk	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,9
	lcr	%r4,%r4
	srlk	%r5,%r2,9
	nr	%r4,%r12
	sllk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,10
	lcr	%r4,%r4
	srlk	%r5,%r2,10
	nr	%r4,%r12
	sllk	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lcr	%r4,%r4
	srlk	%r5,%r2,11
	nr	%r4,%r12
	sllk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lcr	%r4,%r4
	srlk	%r5,%r2,12
	nr	%r4,%r12
	sllk	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lcr	%r4,%r4
	srlk	%r5,%r2,13
	nr	%r4,%r12
	sllk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lcr	%r4,%r4
	srlk	%r5,%r2,14
	nr	%r4,%r12
	sllk	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lcr	%r4,%r4
	srlk	%r5,%r2,15
	nr	%r4,%r12
	sllk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lcr	%r4,%r4
	srlk	%r5,%r2,16
	nr	%r4,%r12
	sllk	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lcr	%r4,%r4
	srlk	%r5,%r2,17
	nr	%r4,%r12
	sllk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lcr	%r4,%r4
	srlk	%r5,%r2,18
	nr	%r4,%r12
	sllk	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lcr	%r4,%r4
	srlk	%r5,%r2,19
	nr	%r4,%r12
	sllk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lcr	%r4,%r4
	srlk	%r5,%r2,20
	nr	%r4,%r12
	sllk	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lcr	%r4,%r4
	srlk	%r5,%r2,21
	nr	%r4,%r12
	sllk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lcr	%r4,%r4
	srlk	%r5,%r2,22
	nr	%r4,%r12
	sllk	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lcr	%r4,%r4
	srlk	%r5,%r2,23
	nr	%r4,%r12
	sllk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lcr	%r4,%r4
	srlk	%r5,%r2,24
	nr	%r4,%r12
	sllk	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lcr	%r4,%r4
	srlk	%r5,%r2,25
	nr	%r4,%r12
	sllk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lcr	%r4,%r4
	srlk	%r5,%r2,26
	nr	%r4,%r12
	sllk	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lcr	%r4,%r4
	srlk	%r5,%r2,27
	nr	%r4,%r12
	sllk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lcr	%r4,%r4
	srlk	%r5,%r2,28
	nr	%r4,%r12
	sllk	%r12,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L1568
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	srlg	%r0,%r2,29
	nr	%r5,%r12
	sllk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r0,0,.L1568
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
.L1568:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1570:
	lhi	%r1,0
.L1661:
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
	clgrjl	%r2,%r3,.L1669
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1786
.L1669:
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
	cije	%r1,0,.L1787
	risbgn	%r12,%r1,32,128+60,3
	aghik	%r8,%r12,-8
	lghi	%r1,0
	srlg	%r9,%r8,3
	aghi	%r9,1
	risbg	%r11,%r9,62,128+63,0
	je	.L1717
	cgije	%r11,1,.L1733
	cgije	%r11,2,.L1734
	lg	%r10,0(%r3)
	lghi	%r1,8
	stg	%r10,0(%r2)
.L1734:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1733:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r1,.L1762
.L1717:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L1781
	aghi	%r5,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L1672:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brctg	%r5,.L1672
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1762:
	clrjhe	%r0,%r4,.L1665
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1674
	lgr	%r12,%r2
	la	%r8,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r9,%r12,%r8
	algfr	%r11,%r0
	clgijle	%r9,6,.L1674
	ogrk	%r1,%r11,%r12
	risbg	%r8,%r1,61,128+63,0
	aghi	%r8,-1
	cgijhe	%r8,0,.L1674
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1708
	cgije	%r8,1,.L1735
	cgijlh	%r8,2,.L1788
.L1736:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1735:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r1,%r9,.L1761
.L1708:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1780
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1675:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1675
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L1761:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1665
	llgfr	%r11,%r12
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r10,%r12,1
	clrjhe	%r10,%r4,.L1665
	llgfr	%r5,%r10
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1665
	llgfr	%r8,%r9
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1665
	llgfr	%r10,%r0
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahik	%r1,%r12,4
	clrjhe	%r1,%r4,.L1665
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r11,%r12,5
	clrjhe	%r11,%r4,.L1665
	llgfr	%r10,%r11
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1665
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1665:
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
.L1786:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1784
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1726
	cgije	%r5,1,.L1731
	cgije	%r5,2,.L1732
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1732:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1731:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1784
.L1726:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1782
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1679:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1679
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	br	%r14
.L1781:
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
	brctg	%r5,.L1781
	j	.L1762
.L1780:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1780
	j	.L1761
.L1782:
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
	brctg	%r4,.L1782
.L1784:
	br	%r14
.L1788:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1736
.L1787:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1665
.L1674:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	aghik	%r1,%r5,1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	clrjhe	%r1,%r4,.L1665
	cije	%r8,0,.L1699
	cije	%r8,1,.L1738
	cijlh	%r8,2,.L1789
.L1739:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L1738:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1665
.L1699:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L1779
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1677:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1677
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1665
.L1779:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1779
	j	.L1665
.L1789:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L1739
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
	clgrjl	%r2,%r3,.L1795
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L1881
.L1795:
	cije	%r12,0,.L1794
	ahik	%r1,%r12,-1
	clijle	%r1,6,.L1798
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L1798
	la	%r10,2(%r3)
	sgrk	%r11,%r2,%r10
	clgijle	%r11,4,.L1798
	risbg	%r11,%r4,32,128+60,0
	aghik	%r1,%r11,-8
	srlk	%r0,%r4,3
	srlg	%r5,%r1,3
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L1829
	cgije	%r10,1,.L1845
	cgijlh	%r10,2,.L1882
.L1846:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L1845:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r11,.L1864
.L1829:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1878
	aghi	%r5,-1
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
.L1799:
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	brctg	%r5,.L1799
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1864:
	sllk	%r1,%r0,2
	crje	%r12,%r1,.L1794
	risbgn	%r5,%r1,32,128+60,1
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahik	%r11,%r1,1
	clrjle	%r12,%r11,.L1794
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,2
	clrjle	%r12,%r1,.L1794
	risbgn	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L1794:
	tmll	%r4,1
	je	.L1791
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1791:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L1881:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1791
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1838
	cgije	%r5,1,.L1843
	cgije	%r5,2,.L1844
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L1844:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L1843:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1791
.L1838:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1879
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1804:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1804
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1791
.L1878:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1878
	j	.L1864
.L1882:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1846
.L1879:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r10,-2(%r1,%r3)
	stcy	%r10,-2(%r1,%r2)
	icy	%r11,-3(%r1,%r3)
	stcy	%r11,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1879
	j	.L1791
.L1798:
	risbgn	%r11,%r12,32,128+62,1
	aghik	%r0,%r11,-2
	lghi	%r1,0
	srlg	%r10,%r0,1
	aghi	%r10,1
	risbg	%r5,%r10,62,128+63,0
	je	.L1820
	cgije	%r5,1,.L1847
	cgijlh	%r5,2,.L1883
.L1848:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L1847:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r11,%r1,.L1794
.L1820:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L1877
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L1801:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L1801
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1794
.L1877:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r12,4(%r1,%r3)
	sth	%r12,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1877
	j	.L1794
.L1883:
	lh	%r12,0(%r3)
	lghi	%r1,2
	sth	%r12,0(%r2)
	j	.L1848
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
	clgrjl	%r2,%r3,.L1890
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L2030
.L1890:
	cije	%r12,0,.L2031
	ahik	%r1,%r12,-1
	clijle	%r1,8,.L1892
	ogrk	%r8,%r2,%r3
	risbg	%r9,%r8,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1892
	la	%r10,4(%r3)
	cgrje	%r2,%r10,.L1892
	risbg	%r8,%r4,32,128+60,0
	aghik	%r5,%r8,-8
	srlk	%r11,%r4,3
	srlg	%r10,%r5,3
	lghi	%r1,0
	aghi	%r10,1
	risbg	%r9,%r10,62,128+63,0
	je	.L1953
	cgije	%r9,1,.L1969
	cgijlh	%r9,2,.L2032
.L1970:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1969:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r8,%r1,.L2004
.L1953:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L2027
	aghi	%r5,-1
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
.L1893:
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	brctg	%r5,.L1893
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L2004:
	sll	%r11,1
	crje	%r12,%r11,.L1896
	risbgn	%r12,%r11,32,128+60,2
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
.L1896:
	clrjhe	%r0,%r4,.L1885
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1888
	lgr	%r12,%r2
	la	%r9,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r8,%r12,%r9
	algfr	%r11,%r0
	clgijle	%r8,6,.L1888
	ogrk	%r1,%r11,%r12
	risbg	%r9,%r1,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1888
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1935
	cgije	%r8,1,.L1973
	cgijlh	%r8,2,.L2033
.L1974:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1973:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r9,%r1,.L2003
.L1935:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2025
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1897:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1897
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L2003:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1885
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L1885
	llgfr	%r5,%r11
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1885
	llgfr	%r8,%r9
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1885
	llgfr	%r11,%r0
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	ahik	%r1,%r12,4
	clrjhe	%r1,%r4,.L1885
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L1885
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1885
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1885:
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
.L2030:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L1885
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1962
	cgije	%r5,1,.L1967
	cgije	%r5,2,.L1968
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L1968:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L1967:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1885
.L1962:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L2028
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1901:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1901
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1885
.L2027:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r8,24(%r1,%r3)
	stg	%r8,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2027
	j	.L2004
.L2025:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L2025
	j	.L2003
.L2032:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1970
.L2033:
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1974
.L2028:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	icy	%r12,-1(%r1,%r3)
	stcy	%r12,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2028
	j	.L1885
.L2031:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1885
.L1888:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	aghik	%r1,%r5,1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	clrjle	%r4,%r1,.L1885
	cije	%r8,0,.L1926
	cije	%r8,1,.L1976
	cijlh	%r8,2,.L2034
.L1977:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L1976:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
	clrjle	%r4,%r1,.L1885
.L1926:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L2024
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1899:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1899
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1885
.L1892:
	risbgn	%r10,%r12,32,128+61,2
	aghik	%r5,%r10,-4
	lghi	%r1,0
	srlg	%r9,%r5,2
	aghi	%r9,1
	risbg	%r8,%r9,62,128+63,0
	je	.L1944
	cgije	%r8,1,.L1971
	cgijlh	%r8,2,.L2035
.L1972:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L1971:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r10,.L1896
.L1944:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L2026
	aghi	%r5,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
.L1895:
	aghi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	brctg	%r5,.L1895
	j	.L1896
.L2026:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	l	%r8,8(%r1,%r3)
	st	%r8,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2026
	j	.L1896
.L2024:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2024
	j	.L1885
.L2035:
	l	%r11,0(%r3)
	lghi	%r1,4
	st	%r11,0(%r2)
	j	.L1972
.L2034:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L1977
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
	cijlh	%r1,0,.L2052
	srak	%r5,%r2,14
	jne	.L2051
	srak	%r0,%r2,13
	cijlh	%r0,0,.L2053
	srak	%r3,%r2,12
	cijlh	%r3,0,.L2054
	srak	%r4,%r2,11
	cijlh	%r4,0,.L2055
	srak	%r5,%r2,10
	cijlh	%r5,0,.L2056
	srak	%r1,%r2,9
	cijlh	%r1,0,.L2057
	srak	%r0,%r2,8
	cijlh	%r0,0,.L2058
	srak	%r3,%r2,7
	cijlh	%r3,0,.L2059
	srak	%r4,%r2,6
	cijlh	%r4,0,.L2060
	srak	%r5,%r2,5
	cijlh	%r5,0,.L2061
	srak	%r1,%r2,4
	cijlh	%r1,0,.L2062
	srak	%r0,%r2,3
	cijlh	%r0,0,.L2063
	srak	%r3,%r2,2
	cijlh	%r3,0,.L2064
	srak	%r4,%r2,1
	cijlh	%r4,0,.L2065
	ltgr	%r2,%r2
	lhi	%r5,15
	lhi	%r2,16
	locre	%r5,%r2
.L2051:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2052:
	lhi	%r5,0
	j	.L2051
.L2063:
	lhi	%r5,12
	j	.L2051
.L2053:
	lhi	%r5,2
	j	.L2051
.L2054:
	lhi	%r5,3
	j	.L2051
.L2055:
	lhi	%r5,4
	j	.L2051
.L2056:
	lhi	%r5,5
	j	.L2051
.L2057:
	lhi	%r5,6
	j	.L2051
.L2058:
	lhi	%r5,7
	j	.L2051
.L2059:
	lhi	%r5,8
	j	.L2051
.L2060:
	lhi	%r5,9
	j	.L2051
.L2061:
	lhi	%r5,10
	j	.L2051
.L2062:
	lhi	%r5,11
	j	.L2051
.L2064:
	lhi	%r5,13
	j	.L2051
.L2065:
	lhi	%r5,14
	j	.L2051
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
	jne	.L2071
	tmll	%r2,2
	jne	.L2072
	tmll	%r2,4
	jne	.L2073
	tmll	%r2,8
	jne	.L2074
	tmll	%r2,16
	jne	.L2075
	tmll	%r2,32
	jne	.L2076
	tmll	%r2,64
	jne	.L2077
	tmll	%r2,128
	jne	.L2078
	tmll	%r2,256
	jne	.L2079
	tmll	%r2,512
	jne	.L2080
	tmll	%r2,1024
	jne	.L2081
	tmll	%r2,2048
	jne	.L2082
	tmll	%r2,4096
	jne	.L2083
	tmll	%r2,8192
	jne	.L2084
	tmll	%r2,16384
	jne	.L2085
	sra	%r2,15
	lhi	%r1,16
	ltr	%r2,%r2
	lhi	%r2,15
	locre	%r2,%r1
.L2070:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L2071:
	lhi	%r2,0
	j	.L2070
.L2072:
	lhi	%r2,1
	j	.L2070
.L2083:
	lhi	%r2,12
	j	.L2070
.L2073:
	lhi	%r2,2
	j	.L2070
.L2074:
	lhi	%r2,3
	j	.L2070
.L2075:
	lhi	%r2,4
	j	.L2070
.L2076:
	lhi	%r2,5
	j	.L2070
.L2077:
	lhi	%r2,6
	j	.L2070
.L2078:
	lhi	%r2,7
	j	.L2070
.L2079:
	lhi	%r2,8
	j	.L2070
.L2080:
	lhi	%r2,9
	j	.L2070
.L2081:
	lhi	%r2,10
	j	.L2070
.L2082:
	lhi	%r2,11
	j	.L2070
.L2084:
	lhi	%r2,13
	j	.L2070
.L2085:
	lhi	%r2,14
	j	.L2070
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
	larl	%r5,.L2096
	keb	%f0,.L2097-.L2096(%r5)
	jhe	.L2095
	cgebr	%r2,5,%f0
	br	%r14
.L2095:
	seb	%f0,.L2097-.L2096(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2096:
.L2097:
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
	cgije	%r2,0,.L2105
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	sllk	%r5,%r3,1
	nr	%r1,%r3
	cije	%r4,0,.L2103
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r2,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r1,%r0
	cije	%r4,0,.L2103
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r2,3
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r1,%r4
	cije	%r5,0,.L2103
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r1,%r4
	cije	%r5,0,.L2103
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r1,%r5
	cije	%r4,0,.L2103
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
.L2103:
	llgfr	%r2,%r1
	br	%r14
.L2105:
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
	cgije	%r2,0,.L2200
	cgije	%r3,0,.L2200
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srlk	%r4,%r3,1
	nr	%r1,%r2
	srlg	%r5,%r3,1
	cgije	%r5,0,.L2291
	ldgr	%f0,%r12
	.cfi_register 12, 16
	nilf	%r4,1
	sllk	%r12,%r2,2
	lcr	%r4,%r4
	srlg	%r5,%r3,2
	nr	%r4,%r0
	srlk	%r0,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r0,%r2,3
	nr	%r4,%r12
	srlk	%r12,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r12,%r2,4
	nr	%r4,%r0
	srlk	%r0,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r0,%r2,5
	nr	%r4,%r12
	srlk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r12,%r2,6
	nr	%r4,%r0
	srlk	%r0,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r0,%r2,7
	nr	%r4,%r12
	srlk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r12,%r2,8
	nr	%r4,%r0
	srlk	%r0,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r0,%r2,9
	nr	%r4,%r12
	srlk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r12,%r2,10
	nr	%r4,%r0
	srlk	%r0,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r0,%r2,11
	nr	%r4,%r12
	srlk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r12,%r2,12
	nr	%r4,%r0
	srlk	%r0,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r0,%r2,13
	nr	%r4,%r12
	srlk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r12,%r2,14
	nr	%r4,%r0
	srlk	%r0,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r0,%r2,15
	nr	%r4,%r12
	srlk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r12,%r2,16
	nr	%r4,%r0
	srlk	%r0,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r0,%r2,17
	nr	%r4,%r12
	srlk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r12,%r2,18
	nr	%r4,%r0
	srlk	%r0,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r0,%r2,19
	nr	%r4,%r12
	srlk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r12,%r2,20
	nr	%r4,%r0
	srlk	%r0,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r0,%r2,21
	nr	%r4,%r12
	srlk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r12,%r2,22
	nr	%r4,%r0
	srlk	%r0,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r0,%r2,23
	nr	%r4,%r12
	srlk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r12,%r2,24
	nr	%r4,%r0
	srlk	%r0,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r0,%r2,25
	nr	%r4,%r12
	srlk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r12,%r2,26
	nr	%r4,%r0
	srlk	%r0,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,27
	lcr	%r4,%r4
	sllk	%r0,%r2,27
	nr	%r4,%r12
	srlk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r5,0,.L2197
	risbg	%r4,%r12,63,128+63,0
	srlk	%r5,%r3,28
	lcr	%r4,%r4
	sllk	%r12,%r2,28
	nr	%r4,%r0
	srlg	%r0,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L2197
	nilf	%r5,1
	sllk	%r0,%r2,29
	lcr	%r5,%r5
	srlg	%r4,%r3,29
	nr	%r5,%r12
	srlk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r4,0,.L2197
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
.L2197:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2200:
	lhi	%r1,0
.L2291:
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
	clrjhe	%r3,%r2,.L2325
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r0,32
	lhi	%r1,1
	lhi	%r12,8
.L2296:
	cijl	%r3,0,.L2297
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2298
	cijl	%r3,0,.L2297
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2298
	cijl	%r3,0,.L2297
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2298
	cijl	%r3,0,.L2297
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2298
	ahi	%r0,-4
	brct	%r12,.L2296
.L2299:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2298:
	.cfi_restore_state
	cije	%r1,0,.L2305
.L2297:
	lhi	%r0,0
.L2302:
	clrjl	%r2,%r3,.L2301
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L2301:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L2302
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2325:
	lhi	%r1,1
	lhi	%r0,0
.L2320:
	clrjl	%r2,%r3,.L2322
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L2322:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L2320
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L2305:
	.cfi_register 12, 16
	lhi	%r0,0
	j	.L2299
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
	lghi	%r1,1
	lghi	%r2,0
	locgrh	%r2,%r1
	lghi	%r0,-1
	locgrl	%r2,%r0
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
	lghi	%r1,1
	lghi	%r2,0
	locgrh	%r2,%r1
	lghi	%r0,-1
	locgrl	%r2,%r0
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
	cijl	%r3,0,.L2441
	cgije	%r3,0,.L2349
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srak	%r4,%r3,1
	nr	%r1,%r2
	srag	%r5,%r3,1
	cgije	%r5,0,.L2439
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r1,%r4
	sll	%r2,2
	srag	%r3,%r3,2
	lgfr	%r2,%r2
	je	.L2439
	lhi	%r0,0
.L2347:
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
	cgije	%r11,0,.L2348
	nilf	%r4,1
	sllk	%r11,%r2,2
	lcr	%r4,%r4
	srag	%r5,%r3,2
	nr	%r4,%r12
	srak	%r12,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r12,%r2,3
	nr	%r4,%r11
	srak	%r11,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r11,%r2,4
	nr	%r4,%r12
	srak	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r12,%r2,5
	nr	%r4,%r11
	srak	%r11,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r11,%r2,6
	nr	%r4,%r12
	srak	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r12,%r2,7
	nr	%r4,%r11
	srak	%r11,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r11,%r2,8
	nr	%r4,%r12
	srak	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r12,%r2,9
	nr	%r4,%r11
	srak	%r11,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r11,%r2,10
	nr	%r4,%r12
	srak	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r12,%r2,11
	nr	%r4,%r11
	srak	%r11,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r11,%r2,12
	nr	%r4,%r12
	srak	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r12,%r2,13
	nr	%r4,%r11
	srak	%r11,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r11,%r2,14
	nr	%r4,%r12
	srak	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r12,%r2,15
	nr	%r4,%r11
	srak	%r11,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r11,%r2,16
	nr	%r4,%r12
	srak	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r12,%r2,17
	nr	%r4,%r11
	srak	%r11,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r11,%r2,18
	nr	%r4,%r12
	srak	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r12,%r2,19
	nr	%r4,%r11
	srak	%r11,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r11,%r2,20
	nr	%r4,%r12
	srak	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r12,%r2,21
	nr	%r4,%r11
	srak	%r11,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r11,%r2,22
	nr	%r4,%r12
	srak	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r12,%r2,23
	nr	%r4,%r11
	srak	%r11,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r11,%r2,24
	nr	%r4,%r12
	srak	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r12,63,128+63,0
	srag	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r12,%r2,25
	nr	%r4,%r11
	srak	%r11,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2348
	risbg	%r4,%r11,63,128+63,0
	srag	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r11,%r2,26
	nr	%r4,%r12
	srak	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2348
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
.L2348:
	cije	%r0,0,.L2345
	lcr	%r1,%r1
.L2345:
	lgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2441:
	risbg	%r1,%r3,63,128+63,0
	sllk	%r4,%r2,1
	lcr	%r3,%r3
	lcr	%r1,%r1
	srak	%r5,%r3,1
	nr	%r1,%r2
	cije	%r5,0,.L2438
	risbg	%r0,%r5,63,128+63,0
	sll	%r2,2
	lcr	%r5,%r0
	lgfr	%r2,%r2
	nr	%r5,%r4
	lhi	%r0,1
	srak	%r4,%r3,2
	ar	%r1,%r5
	lgfr	%r3,%r4
	cijlh	%r4,0,.L2347
.L2438:
	lcr	%r1,%r1
	j	.L2439
.L2349:
	lhi	%r1,0
.L2439:
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
	cgijl	%r2,0,.L2471
	lhi	%r1,1
	lhi	%r5,0
.L2444:
	cgijhe	%r3,0,.L2445
	lcgr	%r3,%r3
	lr	%r5,%r1
.L2445:
	lr	%r4,%r2
	lr	%r0,%r3
	clrjle	%r2,%r3,.L2472
	lhi	%r3,1
	lhi	%r2,8
.L2446:
	cijl	%r0,0,.L2447
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2448
	cijl	%r0,0,.L2447
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2448
	cijl	%r0,0,.L2447
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2448
	cijl	%r0,0,.L2447
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2448
	brct	%r2,.L2446
.L2457:
	lghi	%r2,0
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L2448:
	cije	%r3,0,.L2457
.L2447:
	lhi	%r1,0
.L2452:
	clrjl	%r4,%r0,.L2451
	sr	%r4,%r0
	or	%r1,%r3
.L2451:
	srl	%r3,1
	srl	%r0,1
	cijlh	%r3,0,.L2452
	llgfr	%r2,%r1
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L2471:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r5,1
	j	.L2444
.L2472:
	lhi	%r3,1
	j	.L2447
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
	cgijl	%r2,0,.L2504
	lhi	%r5,0
.L2475:
	lpgr	%r3,%r3
	lr	%r1,%r3
	lr	%r4,%r2
	clrjle	%r2,%r3,.L2505
	lhi	%r0,1
	lhi	%r2,8
.L2476:
	cijl	%r1,0,.L2501
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2503
	cijl	%r1,0,.L2501
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2503
	cijl	%r1,0,.L2501
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2503
	cijl	%r1,0,.L2501
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2503
	brct	%r2,.L2476
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L2505:
	lhi	%r0,1
.L2501:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L2503:
	cijlh	%r0,0,.L2501
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L2504:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L2475
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
	clr	%r3,%r2
	jhe	.L2628
	tmll	%r3,32768
	jne	.L2510
	risbgn	%r1,%r3,48,128+62,1
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clr	%r2,%r1
	jle	.L2511
	tmll	%r1,32768
	jne	.L2512
	risbgn	%r1,%r3,48,128+61,2
	clr	%r2,%r1
	jle	.L2513
	tmll	%r1,32768
	jne	.L2514
	risbgn	%r1,%r3,48,128+60,3
	clr	%r2,%r1
	jle	.L2515
	tmll	%r1,32768
	jne	.L2516
	risbgn	%r1,%r3,48,128+59,4
	clr	%r2,%r1
	jle	.L2517
	tmll	%r1,32768
	jne	.L2518
	risbgn	%r1,%r3,48,128+58,5
	clr	%r2,%r1
	jle	.L2519
	tmll	%r1,32768
	jne	.L2520
	risbgn	%r1,%r3,48,128+57,6
	clr	%r2,%r1
	jle	.L2521
	tmll	%r1,32768
	jne	.L2522
	risbgn	%r1,%r3,48,128+56,7
	clr	%r2,%r1
	jle	.L2523
	tmll	%r1,32768
	jne	.L2524
	risbgn	%r1,%r3,48,128+55,8
	clr	%r2,%r1
	jle	.L2525
	tmll	%r1,32768
	jne	.L2526
	risbgn	%r1,%r3,48,128+54,9
	clr	%r2,%r1
	jle	.L2527
	tmll	%r1,32768
	jne	.L2528
	risbgn	%r1,%r3,48,128+53,10
	clr	%r2,%r1
	jle	.L2529
	tmll	%r1,32768
	jne	.L2530
	risbgn	%r1,%r3,48,128+52,11
	clr	%r2,%r1
	jle	.L2531
	tmll	%r1,32768
	jne	.L2532
	risbgn	%r1,%r3,48,128+51,12
	clr	%r2,%r1
	jle	.L2533
	tmll	%r1,32768
	jne	.L2534
	risbgn	%r1,%r3,48,128+50,13
	clr	%r2,%r1
	jle	.L2535
	tmll	%r1,32768
	jne	.L2536
	risbgn	%r1,%r3,48,128+49,14
	clr	%r2,%r1
	jle	.L2537
	tmll	%r1,32768
	jne	.L2538
	risbgn	%r1,%r3,48,128+48,15
	clrjle	%r2,%r1,.L2539
	lhi	%r0,0
	cgijlh	%r1,0,.L2629
.L2540:
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llghr	%r2,%r0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2527:
	.cfi_restore_state
	jl	.L2574
	sr	%r2,%r1
	lhi	%r0,512
	llghr	%r2,%r2
	lhi	%r5,512
.L2542:
	srlk	%r11,%r5,2
	srlg	%r3,%r1,2
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2543
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2543:
	srlk	%r11,%r5,3
	srlg	%r3,%r1,3
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2544
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2544:
	srlk	%r11,%r5,4
	srlg	%r3,%r1,4
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2545
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2545:
	srlk	%r11,%r5,5
	srlg	%r3,%r1,5
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2546
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2546:
	srlk	%r11,%r5,6
	srlg	%r3,%r1,6
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2547
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2547:
	srlk	%r11,%r5,7
	srlg	%r3,%r1,7
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2548
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2548:
	srlk	%r11,%r5,8
	srlg	%r3,%r1,8
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2549
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2549:
	srlk	%r11,%r5,9
	srlg	%r3,%r1,9
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2550
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2550:
	srlk	%r11,%r5,10
	srlg	%r3,%r1,10
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2551
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2551:
	srlk	%r11,%r5,11
	srlg	%r3,%r1,11
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2552
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2552:
	srlk	%r11,%r5,12
	srlg	%r3,%r1,12
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2553
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2553:
	srlk	%r11,%r5,13
	srlg	%r3,%r1,13
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2554
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2554:
	srlk	%r11,%r5,14
	srlg	%r3,%r1,14
	cije	%r11,0,.L2540
	clrjl	%r2,%r3,.L2555
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2555:
	srlg	%r1,%r1,15
	lhi	%r11,16384
	crje	%r5,%r11,.L2540
	clrjl	%r2,%r1,.L2563
	srk	%r5,%r2,%r1
	oill	%r0,1
	llghr	%r2,%r5
	j	.L2540
.L2563:
	lghi	%r2,0
	j	.L2540
.L2628:
	.cfi_restore 11
	.cfi_restore 12
	lghi	%r1,0
	lhi	%r0,1
	locgre	%r2,%r1
	locrne	%r0,%r1
.L2625:
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llghr	%r2,%r0
	br	%r14
.L2510:
	srk	%r3,%r2,%r3
	lhi	%r0,1
	llghr	%r2,%r3
	j	.L2625
.L2511:
	.cfi_register 11, 17
	.cfi_register 12, 16
	jl	.L2566
	sr	%r2,%r1
	lhi	%r0,2
	llghr	%r2,%r2
	lhi	%r5,2
	j	.L2542
.L2512:
	sr	%r2,%r1
	risbg	%r11,%r3,49,128+63,0
	llghr	%r2,%r2
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r5,2
.L2560:
	clrjl	%r2,%r11,.L2542
	sr	%r2,%r11
	or	%r0,%r12
	llghr	%r2,%r2
	j	.L2542
.L2513:
	jl	.L2567
	sr	%r2,%r1
	lhi	%r0,4
	llghr	%r2,%r2
	lhi	%r5,4
	j	.L2542
.L2514:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r5,4
	j	.L2560
.L2515:
	jl	.L2568
	sr	%r2,%r1
	lhi	%r0,8
	llghr	%r2,%r2
	lhi	%r5,8
	j	.L2542
.L2516:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r5,8
	j	.L2560
.L2517:
	jl	.L2569
	sr	%r2,%r1
	lhi	%r0,16
	llghr	%r2,%r2
	lhi	%r5,16
	j	.L2542
.L2518:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r5,16
	j	.L2560
.L2519:
	jl	.L2570
	sr	%r2,%r1
	lhi	%r0,32
	llghr	%r2,%r2
	lhi	%r5,32
	j	.L2542
.L2520:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r5,32
	j	.L2560
.L2521:
	jl	.L2571
	sr	%r2,%r1
	lhi	%r0,64
	llghr	%r2,%r2
	lhi	%r5,64
	j	.L2542
.L2522:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r5,64
	j	.L2560
.L2523:
	jl	.L2572
	sr	%r2,%r1
	lhi	%r0,128
	llghr	%r2,%r2
	lhi	%r5,128
	j	.L2542
.L2524:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r5,128
	j	.L2560
.L2526:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r5,256
	j	.L2560
.L2528:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r5,512
	j	.L2560
.L2566:
	lhi	%r5,2
.L2559:
	risbgn	%r12,%r5,64-15,128+63,48+15
	srlg	%r11,%r1,1
	lhi	%r0,0
	j	.L2560
.L2530:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r5,1024
	j	.L2560
.L2532:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r5,2048
	j	.L2560
.L2567:
	lhi	%r5,4
	j	.L2559
.L2568:
	lhi	%r5,8
	j	.L2559
.L2534:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r5,4096
	j	.L2560
.L2536:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r5,8192
	j	.L2560
.L2569:
	lhi	%r5,16
	j	.L2559
.L2538:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r5,16384
	j	.L2560
.L2570:
	lhi	%r5,32
	j	.L2559
.L2571:
	lhi	%r5,64
	j	.L2559
.L2539:
	llill	%r1,32768
	tmll	%r2,32768
	jne	.L2565
	llill	%r5,32768
	j	.L2559
.L2629:
	ahi	%r2,-32768
	lghi	%r11,16384
	llghr	%r2,%r2
	lhi	%r12,16384
	llill	%r1,32768
	lhi	%r0,-32768
	llill	%r5,32768
	j	.L2560
.L2572:
	lhi	%r5,128
	j	.L2559
.L2525:
	jl	.L2573
	sr	%r2,%r1
	lhi	%r0,256
	llghr	%r2,%r2
	lhi	%r5,256
	j	.L2542
.L2565:
	lhi	%r0,-32768
	lghi	%r2,0
	llill	%r5,32768
	j	.L2542
.L2573:
	lhi	%r5,256
	j	.L2559
.L2529:
	jl	.L2575
	sr	%r2,%r1
	lhi	%r0,1024
	llghr	%r2,%r2
	lhi	%r5,1024
	j	.L2542
.L2537:
	jl	.L2579
	sr	%r2,%r1
	lhi	%r0,16384
	llghr	%r2,%r2
	lhi	%r5,16384
	j	.L2542
.L2575:
	lhi	%r5,1024
	j	.L2559
.L2579:
	lhi	%r5,16384
	j	.L2559
.L2574:
	lhi	%r5,512
	j	.L2559
.L2535:
	jl	.L2578
	sr	%r2,%r1
	lhi	%r0,8192
	llghr	%r2,%r2
	lhi	%r5,8192
	j	.L2542
.L2533:
	jl	.L2577
	sr	%r2,%r1
	lhi	%r0,4096
	llghr	%r2,%r2
	lhi	%r5,4096
	j	.L2542
.L2531:
	jl	.L2576
	sr	%r2,%r1
	lhi	%r0,2048
	llghr	%r2,%r2
	lhi	%r5,2048
	j	.L2542
.L2578:
	lhi	%r5,8192
	j	.L2559
.L2577:
	lhi	%r5,4096
	j	.L2559
.L2576:
	lhi	%r5,2048
	j	.L2559
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
	lhi	%r0,16
	clgrjhe	%r3,%r2,.L2633
.L2632:
	risbg	%r5,%r3,32,128+32,0
	jne	.L2633
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2634
	risbg	%r5,%r3,32,128+32,0
	jne	.L2633
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2634
	risbg	%r5,%r3,32,128+32,0
	jne	.L2633
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2634
	risbg	%r5,%r3,32,128+32,0
	jne	.L2633
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2634
	brct	%r0,.L2632
.L2635:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L2634:
	cgije	%r1,0,.L2635
.L2633:
	lghi	%r5,0
.L2638:
	clgrjl	%r2,%r3,.L2637
	sgr	%r2,%r3
	ogr	%r5,%r1
.L2637:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L2638
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
	je	.L2659
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L2660:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L2658:
	br	%r14
.L2659:
	cgije	%r3,0,.L2658
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L2660
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
	je	.L2665
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L2666:
	lgr	%r0,%r4
.L2667:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L2665:
	cgije	%r4,0,.L2667
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L2666
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
	je	.L2673
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L2674:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L2672:
	br	%r14
.L2673:
	cgije	%r3,0,.L2672
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L2674
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
	je	.L2679
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L2680:
	lgr	%r0,%r4
.L2681:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L2679:
	cgije	%r4,0,.L2681
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L2680
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
	jl	.L2696
	jh	.L2697
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2696:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2697:
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
	jl	.L2703
	jh	.L2704
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L2703:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L2704:
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
	jl	.L2709
	jh	.L2710
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r5,1
	locrh	%r5,%r0
	lhi	%r3,0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L2709:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L2710:
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
	jne	.L2719
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
.L2719:
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
	je	.L2724
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
.L2725:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L2723:
	br	%r14
.L2724:
	cgije	%r3,0,.L2723
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	j	.L2725
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
	je	.L2730
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L2731:
	lgr	%r0,%r4
.L2732:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L2730:
	cgije	%r4,0,.L2732
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L2731
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
	larl	%r5,.L2760
	srlg	%r1,%r2,1
	ng	%r1,.L2761-.L2760(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L2762-.L2760(%r5)
	ng	%r0,.L2762-.L2760(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L2763-.L2760(%r5)
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
.L2760:
.L2763:
	.quad	1085102592571150095
.L2762:
	.quad	3689348814741910323
.L2761:
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
	larl	%r5,.L2779
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L2780-.L2779(%r5)
	tmll	%r2,1
	je	.L2770
.L2772:
	mdbr	%f0,%f2
.L2770:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L2771
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L2772
.L2777:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L2772
	j	.L2777
.L2771:
	cijl	%r2,0,.L2778
	br	%r14
.L2778:
	ld	%f4,.L2780-.L2779(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2779:
.L2780:
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
	larl	%r5,.L2791
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L2792-.L2791(%r5)
	tmll	%r2,1
	je	.L2782
.L2784:
	meebr	%f0,%f2
.L2782:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L2783
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L2784
.L2789:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L2784
	j	.L2789
.L2783:
	cijl	%r2,0,.L2790
	br	%r14
.L2790:
	le	%f4,.L2792-.L2791(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2791:
.L2792:
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
	jl	.L2795
	jh	.L2796
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2795:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2796:
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
	jl	.L2802
	jh	.L2803
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L2802:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L2803:
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
	jl	.L2808
	jh	.L2809
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2808:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2809:
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
