	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z196+htm"
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
	clgr	%r2,%r3
	jle	.L7
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L46
	cghi	%r5,1
	je	.L68
	cghi	%r5,2
	jne	.L118
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
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r1,%r4,-1
	clgfi	%r1,14
	jle	.L17
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	ltgr	%r5,%r5
	jhe	.L17
	la	%r1,1(%r3)
	sgrk	%r0,%r2,%r1
	clgfi	%r0,6
	jle	.L17
	risbg	%r0,%r4,0,128+60,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L64
	cghi	%r12,1
	je	.L70
	cghi	%r12,2
	je	.L71
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
	cgr	%r1,%r0
	je	.L97
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
	cgr	%r4,%r1
	je	.L8
	mvc	0(1,%r5),0(%r3)
	cghi	%r0,1
	je	.L8
	mvc	1(1,%r5),1(%r3)
	cghi	%r0,2
	je	.L8
	mvc	2(1,%r5),2(%r3)
	cghi	%r0,3
	je	.L8
	mvc	3(1,%r5),3(%r3)
	cghi	%r0,4
	je	.L8
	mvc	4(1,%r5),4(%r3)
	cghi	%r0,5
	je	.L8
	mvc	5(1,%r5),5(%r3)
	cghi	%r0,6
	je	.L8
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
	cghi	%r0,1
	je	.L72
	cghi	%r0,2
	je	.L73
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
	cgr	%r4,%r1
	ber	%r14
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
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	llcr	%r4,%r4
	ltgr	%r5,%r5
	je	.L123
	aghik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L141
.L130:
	srlg	%r0,%r5,1
.L121:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r2)
	cr	%r4,%r5
	je	.L138
	llgc	%r1,1(%r3)
	stc	%r1,1(%r2)
	la	%r2,1(%r2)
	cr	%r4,%r1
	je	.L138
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r0,.L121
.L123:
	lghi	%r2,0
	br	%r14
.L141:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L138
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	ltgr	%r0,%r0
	jne	.L130
	j	.L123
.L138:
	la	%r2,1(%r2)
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
	llcr	%r3,%r3
	ltgr	%r4,%r4
	je	.L147
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L154
	cghi	%r5,1
	je	.L165
	cghi	%r5,2
	je	.L166
	llc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	la	%r2,1(%r2)
	lgr	%r4,%r0
.L166:
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L165:
	llc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	la	%r2,1(%r2)
	cghi	%r4,1
	je	.L147
.L154:
	srlg	%r4,%r1,2
.L144:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r1,1(%r2)
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r1)
	llc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	llc	%r0,2(%r1)
	la	%r2,2(%r1)
	cr	%r0,%r3
	ber	%r14
	la	%r2,3(%r1)
	brctg	%r4,.L144
.L147:
	lghi	%r2,0
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
	ltgr	%r4,%r4
	je	.L208
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r4,-1
	lgr	%r0,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L191
	cghi	%r1,1
	je	.L202
	cghi	%r1,2
	je	.L203
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L210
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L203:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L210
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L202:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L210
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cghi	%r4,1
	je	.L184
.L191:
	srlg	%r12,%r0,2
.L180:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L210
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L210
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L210
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L210
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	brctg	%r12,.L180
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
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB6:
	.cfi_startproc
	stmg	%r12,%r15,128(%r15)
	ltgr	%r4,%r4
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	je	.L221
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
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB7:
	.cfi_startproc
	llcr	%r3,%r3
	lay	%r1,-1(%r2,%r4)
	risbg	%r5,%r4,62,128+63,0
	je	.L236
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	cghi	%r5,1
	je	.L236
	cghi	%r5,2
	je	.L240
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L240:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L236:
	srlg	%r4,%r4,2
	aghik	%r5,%r1,-1
	aghi	%r4,1
	brctg	%r4,.L250
	lghi	%r2,0
	br	%r14
.L250:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	cr	%r0,%r3
	ber	%r14
	aghik	%r0,%r1,-2
	lgr	%r2,%r5
	llc	%r5,-1(%r1)
	cr	%r5,%r3
	ber	%r14
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L253:
	aghik	%r12,%r1,-3
	lgr	%r2,%r0
	llc	%r0,-2(%r1)
	cr	%r0,%r3
	je	.L227
	aghi	%r1,-4
	llc	%r5,0(%r12)
	lgr	%r2,%r12
	cr	%r5,%r3
	je	.L227
	aghik	%r12,%r1,-1
	brctg	%r4,.L230
	lghi	%r2,0
.L227:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L230:
	.cfi_restore_state
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	cr	%r0,%r3
	je	.L227
	aghik	%r0,%r1,-2
	llc	%r5,-1(%r1)
	lgr	%r2,%r12
	cr	%r5,%r3
	jne	.L253
	lgdr	%r12,%f0
	.cfi_restore 12
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
	ltgr	%r4,%r4
	ber	%r14
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
	ltgr	%r1,%r1
	ber	%r14
.L268:
	llgc	%r0,1(%r3)
	stc	%r0,1(%r2)
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	ltgr	%r0,%r0
	ber	%r14
	llgc	%r0,1(%r3)
	stc	%r0,1(%r2)
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	ltgr	%r0,%r0
	jne	.L268
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
	cli	0(%r2),0
	llcr	%r3,%r3
	llc	%r1,0(%r2)
	ber	%r14
	cr	%r1,%r3
	ber	%r14
.L282:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
	cr	%r1,%r3
	jne	.L282
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
.L286:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	ltr	%r1,%r1
	jne	.L286
	lghi	%r2,0
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
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	lghi	%r4,1
	cr	%r1,%r5
	je	.L290
	j	.L291
.L292:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	cr	%r1,%r5
	jne	.L291
.L290:
	ltr	%r1,%r1
	jne	.L292
.L291:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
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
	cli	0(%r2),0
	je	.L302
	lgr	%r1,%r2
.L301:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L301
	sgrk	%r2,%r1,%r2
	br	%r14
.L302:
	lghi	%r2,0
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
	ltgr	%r4,%r4
	je	.L313
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L317
.L309:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L308
	brctg	%r4,.L311
.L308:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L311:
	cr	%r5,%r1
	jne	.L308
	la	%r2,1(%r2)
	la	%r0,1(%r3)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L318
	lgr	%r3,%r0
	j	.L309
.L313:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L318:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L308
.L317:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L308
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cghi	%r4,1
	bler	%r14
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L329
	cghi	%r4,1
	je	.L333
	cghi	%r4,2
	je	.L334
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L334:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L333:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r2,2(%r2)
	la	%r3,2(%r3)
	cgr	%r2,%r5
	ber	%r14
.L329:
	srlg	%r1,%r0,2
.L322:
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
	brctg	%r1,.L322
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
	lr	%r1,%r2
	xilf	%r1,9
	lpr	%r0,%r1
	ahi	%r0,-1
	lgr	%r3,%r2
	lhi	%r4,1
	chi	%r3,32
	srlk	%r2,%r0,31
	locre	%r2,%r4
	risbg	%r2,%r2,63,128+63,0
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
	lr	%r1,%r2
	xilf	%r1,127
	lpr	%r0,%r1
	ahi	%r0,-1
	lgr	%r3,%r2
	lhi	%r4,1
	clfi	%r3,31
	srlk	%r2,%r0,31
	locrnh	%r2,%r4
	risbg	%r2,%r2,63,128+63,0
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
	chi	%r2,32
	je	.L364
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L364:
	lhi	%r0,1
	risbg	%r2,%r0,63,128+63,0
	br	%r14
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
	clfi	%r2,31
	jle	.L372
	ahik	%r1,%r2,-127
	clfi	%r1,32
	jh	.L373
.L372:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L373:
	ahik	%r0,%r2,-8232
	clfi	%r0,1
	jle	.L372
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
	clfi	%r2,254
	jle	.L384
	clfi	%r2,8231
	jle	.L382
	ahik	%r1,%r2,-8234
	clfi	%r1,47061
	jle	.L382
	slfi	%r1,49110
	clfi	%r1,8184
	jle	.L382
	risbg	%r0,%r2,48,128+62,0
	slfi	%r2,65532
	xilf	%r0,65534
	lcr	%r3,%r0
	srl	%r3,31
	clfi	%r2,1048580
	lhi	%r2,0
	locrnl	%r3,%r2
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L382:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L384:
	ahi	%r2,1
	nilf	%r2,127
	lhi	%r3,0
	clfi	%r2,32
	alcr	%r3,%r3
	risbg	%r2,%r3,63,128+63,0
	br	%r14
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
	clfi	%r1,9
	jle	.L388
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L388:
	lhi	%r0,1
	risbg	%r2,%r0,63,128+63,0
	br	%r14
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
	jo	.L396
	kdbr	%f0,%f2
	jnh	.L399
	sdbr	%f0,%f2
	br	%r14
.L399:
	lzdr	%f0
	br	%r14
.L396:
	ldr	%f0,%f2
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
	jo	.L405
	kebr	%f0,%f2
	jnh	.L408
	sebr	%f0,%f2
	br	%r14
.L408:
	lzer	%f0
	br	%r14
.L405:
	ler	%f0,%f2
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
	jo	.L418
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L420
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L418
	ldr	%f2,%f0
.L418:
	ldr	%f0,%f2
	br	%r14
.L420:
	ltr	%r1,%r1
	ber	%r14
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
	jo	.L430
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L432
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L430
	ler	%f2,%f0
.L430:
	ler	%f0,%f2
	br	%r14
.L432:
	ltr	%r1,%r1
	ber	%r14
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
	jo	.L441
	cxbr	%f4,%f4
	jo	.L446
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L448
	kxbr	%f0,%f4
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lhi	%r0,0
	lhi	%r4,1
	ldgr	%f5,%r12
	.cfi_register 12, 22
	locrl	%r0,%r4
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	tmll	%r0,1
	je	.L438
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L439:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	std	%f0,0(%r2)
	ld	%f2,168(%r15)
	std	%f2,8(%r2)
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L448:
	ltr	%r1,%r1
	je	.L446
.L441:
	lxr	%f0,%f4
.L446:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L438:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L439
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
	jo	.L456
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L452
	ltr	%r1,%r1
	bner	%r14
.L456:
	ldr	%f0,%f2
	br	%r14
.L452:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	ldr	%f0,%f2
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
	jo	.L466
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L462
	ltr	%r1,%r1
	bner	%r14
.L466:
	ler	%f0,%f2
	br	%r14
.L462:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
	ler	%f0,%f2
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
	jo	.L482
	cxbr	%f0,%f0
	jo	.L477
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L484
	kxbr	%f4,%f0
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lhi	%r0,0
	lhi	%r4,1
	ldgr	%f5,%r12
	.cfi_register 12, 22
	locrl	%r0,%r4
	ldgr	%f3,%r13
	.cfi_register 13, 21
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	tmll	%r0,1
	je	.L474
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L475:
	lgr	%r12,%r5
	lgr	%r13,%r1
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	std	%f0,0(%r2)
	ld	%f2,168(%r15)
	std	%f2,8(%r2)
	lgdr	%r13,%f3
	.cfi_restore 13
	lgdr	%r12,%f5
	.cfi_restore 12
	lgdr	%r15,%f1
	.cfi_restore 15
	.cfi_def_cfa_offset 160
	br	%r14
.L484:
	ltr	%r1,%r1
	je	.L482
.L477:
	lxr	%f0,%f4
.L482:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L474:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L475
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
	ltr	%r2,%r2
	larl	%r2,.LANCHOR0
	je	.L487
	larl	%r4,.LANCHOR1
.L488:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	srl	%r1,6
	la	%r2,1(%r2)
	ltr	%r1,%r1
	jne	.L488
.L487:
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
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
	.align	8
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
.globl insque
	.type	insque, @function
insque:
.LFB42:
	.cfi_startproc
	ltgr	%r3,%r3
	je	.L503
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r4,0(%r2)
	ber	%r14
	stg	%r2,8(%r4)
	br	%r14
.L503:
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
	je	.L506
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L506:
	ltg	%r2,8(%r2)
	ber	%r14
	stg	%r1,0(%r2)
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
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r13,%r3
	ltg	%r8,0(%r4)
	je	.L516
	lgr	%r12,%r3
	lgr	%r11,%r8
	tmll	%r8,1
	jne	.L536
.L526:
	srlg	%r11,%r11,1
.L518:
	lgr	%r3,%r12
	lgr	%r2,%r9
	basr	%r14,%r6
	lgr	%r7,%r12
	lgr	%r1,%r2
	lgr	%r2,%r9
	ltr	%r1,%r1
	je	.L515
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r7,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L515
	agr	%r12,%r10
	brctg	%r11,.L518
.L516:
	lgr	%r7,%r10
	msgr	%r7,%r8
	aghik	%r2,%r8,1
	lg	%r3,160(%r15)
	stg	%r2,0(%r3)
	agr	%r7,%r13
	ltgr	%r10,%r10
	je	.L515
	lgr	%r4,%r10
	lgr	%r3,%r9
	lgr	%r2,%r7
	brasl	%r14,memmove@PLT
.L515:
	lgr	%r2,%r7
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
.L536:
	.cfi_restore_state
	lgr	%r7,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L515
	agrk	%r12,%r13,%r10
	cghi	%r8,1
	jne	.L526
	j	.L516
	.cfi_endproc
.LFE44:
	.size	lsearch, .-lsearch
	.align	8
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
	je	.L539
	lgr	%r9,%r5
	lgr	%r10,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L555
.L546:
	srlg	%r7,%r11,1
.L541:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	lgr	%r8,%r12
	lgr	%r1,%r2
	lgr	%r2,%r10
	ltr	%r1,%r1
	je	.L538
	agr	%r12,%r9
	lgr	%r3,%r12
	lgr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L538
	agr	%r12,%r9
	brctg	%r7,.L541
.L539:
	lghi	%r8,0
.L538:
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
.L555:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L538
	agr	%r12,%r9
	cghi	%r7,1
	jne	.L546
	j	.L539
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L566:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L560
	ahik	%r1,%r3,-9
	clfi	%r1,4
	jle	.L560
	chi	%r3,43
	je	.L561
	chi	%r3,45
	je	.L562
	ahik	%r4,%r3,-48
	clfi	%r4,9
	jh	.L571
	lgr	%r5,%r2
	lhi	%r12,0
.L564:
	lhi	%r4,0
.L568:
	ahik	%r2,%r3,-48
	sllk	%r1,%r4,2
	ar	%r1,%r4
	sll	%r1,1
	srk	%r4,%r1,%r2
	la	%r5,1(%r5)
	llc	%r3,0(%r5)
	ahik	%r0,%r3,-48
	clfi	%r0,9
	jle	.L568
	sr	%r2,%r1
	ltr	%r12,%r12
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L560:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L566
.L562:
	la	%r5,1(%r2)
	llc	%r3,1(%r2)
	ahik	%r2,%r3,-48
	clfi	%r2,9
	jh	.L571
	lhi	%r12,1
	j	.L564
.L561:
	llc	%r3,1(%r2)
	la	%r5,1(%r2)
	ahik	%r0,%r3,-48
	lhi	%r12,0
	clfi	%r0,9
	jle	.L564
.L571:
	lhi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgfr	%r2,%r2
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
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L590:
	llc	%r1,0(%r2)
	cli	0(%r2),32
	je	.L584
	ahik	%r3,%r1,-9
	clfi	%r3,4
	jle	.L584
	chi	%r1,43
	je	.L585
	chi	%r1,45
	je	.L586
	ahik	%r4,%r1,-48
	clfi	%r4,9
	jh	.L595
	lgr	%r5,%r2
	lhi	%r12,0
.L588:
	lghi	%r4,0
.L592:
	ahi	%r1,-48
	sllg	%r3,%r4,2
	agr	%r3,%r4
	sllg	%r3,%r3,1
	lgr	%r4,%r3
	sgfr	%r4,%r1
	la	%r5,1(%r5)
	lgfr	%r2,%r1
	llc	%r1,0(%r5)
	ahik	%r0,%r1,-48
	clfi	%r0,9
	jle	.L592
	sgr	%r2,%r3
	ltr	%r12,%r12
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r4
	br	%r14
.L584:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L590
.L586:
	llc	%r1,1(%r2)
	la	%r5,1(%r2)
	ahik	%r0,%r1,-48
	clfi	%r0,9
	jh	.L595
	lhi	%r12,1
	j	.L588
.L585:
	la	%r5,1(%r2)
	llc	%r1,1(%r2)
	lhi	%r12,0
	ahik	%r2,%r1,-48
	clfi	%r2,9
	jle	.L588
.L595:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE48:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L612:
	llc	%r1,0(%r2)
	cli	0(%r2),32
	je	.L608
	ahik	%r3,%r1,-9
	clfi	%r3,4
	jle	.L608
	chi	%r1,43
	je	.L609
	chi	%r1,45
	je	.L610
	ahik	%r4,%r1,-48
	lgr	%r5,%r2
	clfi	%r4,9
	jh	.L619
	lhi	%r12,0
.L613:
	lghi	%r4,0
.L616:
	ahi	%r1,-48
	sllg	%r3,%r4,2
	agr	%r3,%r4
	sllg	%r3,%r3,1
	lgr	%r4,%r3
	sgfr	%r4,%r1
	la	%r5,1(%r5)
	lgfr	%r2,%r1
	llc	%r1,0(%r5)
	ahik	%r0,%r1,-48
	clfi	%r0,9
	jle	.L616
	sgr	%r2,%r3
	ltr	%r12,%r12
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r4
	br	%r14
.L608:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L612
.L610:
	llc	%r1,1(%r2)
	la	%r5,1(%r2)
	ahik	%r0,%r1,-48
	lhi	%r12,1
	clfi	%r0,9
	jle	.L613
.L619:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L609:
	.cfi_restore_state
	la	%r5,1(%r2)
	llc	%r1,1(%r2)
	ahik	%r2,%r1,-48
	clfi	%r2,9
	jh	.L619
	lhi	%r12,0
	j	.L613
	.cfi_endproc
.LFE171:
	.size	atoll, .-atoll
	.align	8
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
	ltgr	%r12,%r4
	je	.L633
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	j	.L636
.L643:
	je	.L632
	aghi	%r12,-1
	agrk	%r9,%r11,%r8
	sgr	%r12,%r10
	ltgr	%r12,%r12
	je	.L633
.L636:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r8
	lgr	%r2,%r7
	agr	%r11,%r9
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L643
	lgr	%r12,%r10
	ltgr	%r12,%r12
	jne	.L636
.L633:
	lghi	%r11,0
.L632:
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
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB51:
	.cfi_startproc
	stmg	%r7,%r15,88(%r15)
	ltr	%r4,%r4
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
	je	.L650
.L655:
	srak	%r10,%r11,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	lg	%r4,240(%r15)
	lgr	%r2,%r7
	agr	%r12,%r9
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L645
	jle	.L648
	agrk	%r9,%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	jne	.L655
.L650:
	lghi	%r12,0
.L645:
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
.L648:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L650
	lr	%r11,%r10
	j	.L655
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
.LFB167:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE167:
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
.LFB169:
	.cfi_startproc
	lpgr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE169:
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
	j	.L683
.L684:
	cr	%r1,%r3
	ber	%r14
	la	%r2,4(%r2)
.L683:
	lt	%r1,0(%r2)
	jne	.L684
	lghi	%r2,0
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
	cr	%r4,%r5
	je	.L687
	j	.L688
.L689:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	cr	%r4,%r5
	jne	.L688
.L687:
	ltr	%r4,%r4
	jne	.L689
.L688:
	cr	%r4,%r5
	lghi	%r0,1
	lghi	%r3,-1
	lghi	%r2,0
	locgrh	%r2,%r0
	locgrnhe	%r2,%r3
	br	%r14
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
.L698:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	jne	.L698
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
	je	.L705
	lgr	%r1,%r2
.L704:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L704
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L705:
	lghi	%r2,0
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB63:
	.cfi_startproc
	ltgr	%r4,%r4
	je	.L715
	aghik	%r5,%r4,-1
	tmll	%r4,1
	jne	.L732
.L718:
	srlg	%r0,%r4,1
.L709:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L711
	ltr	%r4,%r4
	je	.L711
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L711
	ltr	%r5,%r5
	je	.L711
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L709
.L715:
	lghi	%r2,0
	br	%r14
.L711:
	l	%r2,0(%r2)
	lghi	%r1,-1
	c	%r2,0(%r3)
	lghi	%r3,1
	lghi	%r2,0
	locgrh	%r2,%r3
	locgrl	%r2,%r1
	br	%r14
.L732:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L711
	ltr	%r1,%r1
	je	.L711
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	ltgr	%r5,%r5
	jne	.L718
	j	.L715
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	ltgr	%r4,%r4
	je	.L738
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L745
	cghi	%r5,1
	je	.L756
	cghi	%r5,2
	je	.L757
	c	%r3,0(%r2)
	ber	%r14
	lgr	%r4,%r0
	la	%r2,4(%r2)
.L757:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L756:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cghi	%r4,1
	je	.L738
.L745:
	srlg	%r0,%r1,2
.L735:
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
	brctg	%r0,.L735
.L738:
	lghi	%r2,0
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
	ltgr	%r4,%r4
	je	.L777
	aghik	%r0,%r4,-1
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L784
	cghi	%r1,1
	je	.L795
	cghi	%r1,2
	je	.L796
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L803
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L796:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L803
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L795:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L803
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cghi	%r4,1
	je	.L777
.L784:
	srlg	%r0,%r5,2
.L771:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L803
	la	%r5,4(%r3)
	l	%r1,4(%r2)
	lgr	%r3,%r5
	c	%r1,0(%r5)
	jne	.L803
	la	%r3,4(%r5)
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L803
	l	%r1,12(%r2)
	la	%r3,8(%r5)
	c	%r1,8(%r5)
	jne	.L803
	la	%r2,16(%r2)
	la	%r3,12(%r5)
	brctg	%r0,.L771
.L777:
	lghi	%r2,0
	br	%r14
.L803:
	c	%r1,0(%r3)
	lghi	%r4,-1
	lghi	%r3,1
	lghi	%r2,0
	locgrh	%r2,%r3
	locgrl	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	stmg	%r12,%r15,128(%r15)
	ltgr	%r4,%r4
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	je	.L810
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L810:
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
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cgr	%r2,%r3
	ber	%r14
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgr	%r0,%r5
	jl	.L818
	ltgr	%r4,%r4
	ber	%r14
	clgfi	%r1,8
	jle	.L829
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	ltgr	%r5,%r5
	jhe	.L829
	la	%r0,4(%r3)
	cgr	%r2,%r0
	je	.L829
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r1,0
	srlg	%r12,%r4,1
	lghi	%r0,0
	lgr	%r5,%r12
	risbg	%r11,%r12,62,128+63,0
	je	.L865
	cghi	%r11,1
	je	.L871
	cghi	%r11,2
	je	.L872
	lg	%r1,0(%r3)
	lghi	%r0,1
	stg	%r1,0(%r2)
	lghi	%r1,8
.L872:
	lg	%r11,0(%r1,%r3)
	aghi	%r0,1
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L871:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	aghi	%r0,1
	cgr	%r12,%r0
	je	.L892
.L865:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L907
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
.L823:
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	aghi	%r1,32
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	brctg	%r5,.L823
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L892:
	tmll	%r4,1
	je	.L834
	risbg	%r4,%r4,0,128+60,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L834:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L818:
	ltgr	%r4,%r4
	ber	%r14
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L847
	cghi	%r5,1
	je	.L869
	cghi	%r5,2
	je	.L870
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L870:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L869:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cghi	%r1,-4
	ber	%r14
.L847:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L905
	aghi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L821:
	ly	%r5,-4(%r1,%r3)
	sty	%r5,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r5,-12(%r1,%r3)
	sty	%r5,-12(%r1,%r2)
	aghi	%r1,-16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	brctg	%r4,.L821
	ly	%r4,-4(%r1,%r3)
	sty	%r4,-4(%r1,%r2)
	ly	%r4,-8(%r1,%r3)
	sty	%r4,-8(%r1,%r2)
	ly	%r3,-12(%r1,%r3)
	sty	%r3,-12(%r1,%r2)
	br	%r14
.L905:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L905
	br	%r14
.L907:
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
	brctg	%r5,.L907
	j	.L892
.L829:
	.cfi_restore 11
	.cfi_restore 12
	aghik	%r5,%r1,1
	lghi	%r4,0
	risbg	%r0,%r5,62,128+63,0
	je	.L856
	cghi	%r0,1
	je	.L873
	cghi	%r0,2
	je	.L874
	l	%r4,0(%r3)
	aghi	%r1,-1
	st	%r4,0(%r2)
	lghi	%r4,4
.L874:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L873:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	ltgr	%r1,%r1
	ber	%r14
.L856:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L906
	aghi	%r5,-1
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
.L826:
	l	%r1,4(%r4,%r3)
	st	%r1,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r1,12(%r4,%r3)
	st	%r1,12(%r4,%r2)
	aghi	%r4,16
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	brctg	%r5,.L826
	l	%r1,4(%r4,%r3)
	st	%r1,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r1,12(%r4,%r3)
	st	%r1,12(%r4,%r2)
	br	%r14
.L906:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r0,4(%r4,%r3)
	st	%r0,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	aghi	%r4,16
	brctg	%r5,.L906
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	aghik	%r11,%r4,-1
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ltgr	%r4,%r4
	je	.L915
	risbg	%r1,%r2,64-1,128+63,61+1
	clgfi	%r11,5
	jle	.L920
	ltgr	%r1,%r1
	je	.L921
	st	%r3,0(%r2)
	la	%r10,4(%r2)
	aghik	%r11,%r4,-2
.L917:
	sgrk	%r0,%r4,%r1
	lghi	%r12,0
	sllg	%r4,%r1,2
	risbg	%r12,%r3,0,0+32-1,64-0-32
	agr	%r4,%r2
	srlg	%r9,%r0,1
	lr	%r12,%r3
	lgr	%r5,%r9
	lghi	%r1,0
	risbg	%r8,%r9,62,128+63,0
	je	.L942
	cghi	%r8,1
	je	.L946
	cghi	%r8,2
	je	.L947
	stg	%r12,0(%r1,%r4)
	lghi	%r1,1
.L947:
	sllg	%r8,%r1,3
	aghi	%r1,1
	stg	%r12,0(%r8,%r4)
.L946:
	sllg	%r8,%r1,3
	stg	%r12,0(%r8,%r4)
	aghi	%r1,1
	cgr	%r9,%r1
	je	.L959
.L942:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L964
	aghi	%r5,-1
	sllg	%r9,%r1,3
	stg	%r12,0(%r9,%r4)
	stg	%r12,8(%r9,%r4)
.L918:
	sllg	%r8,%r1,3
	stg	%r12,16(%r8,%r4)
	stg	%r12,24(%r8,%r4)
	aghi	%r1,4
	sllg	%r9,%r1,3
	stg	%r12,0(%r9,%r4)
	stg	%r12,8(%r9,%r4)
	brctg	%r5,.L918
	stg	%r12,16(%r9,%r4)
	stg	%r12,24(%r9,%r4)
.L959:
	tmll	%r0,1
	je	.L915
	nill	%r0,65534
	sllg	%r4,%r0,2
	sgr	%r11,%r0
	agr	%r4,%r10
.L916:
	st	%r3,0(%r4)
	ltgr	%r11,%r11
	je	.L915
	st	%r3,4(%r4)
	cghi	%r11,1
	je	.L915
	st	%r3,8(%r4)
	cghi	%r11,2
	je	.L915
	st	%r3,12(%r4)
	cghi	%r11,3
	je	.L915
	st	%r3,16(%r4)
	cghi	%r11,4
	je	.L915
	st	%r3,20(%r4)
.L915:
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
.L964:
	.cfi_restore_state
	sllg	%r9,%r1,3
	stg	%r12,0(%r9,%r4)
	stg	%r12,8(%r9,%r4)
	stg	%r12,16(%r9,%r4)
	stg	%r12,24(%r9,%r4)
	aghi	%r1,4
	brctg	%r5,.L964
	j	.L959
.L921:
	lgr	%r10,%r2
	j	.L917
.L920:
	lgr	%r4,%r2
	j	.L916
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	clgr	%r2,%r3
	jhe	.L968
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L1007
	cghi	%r5,1
	je	.L1029
	cghi	%r5,2
	jne	.L1079
.L1030:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1029:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L1007
	br	%r14
.L968:
	ber	%r14
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r1,%r4,-1
	clgfi	%r1,14
	jle	.L978
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	ltgr	%r5,%r5
	jhe	.L978
	la	%r1,1(%r2)
	sgrk	%r0,%r3,%r1
	clgfi	%r0,6
	jle	.L978
	risbg	%r0,%r4,0,128+60,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1025
	cghi	%r12,1
	je	.L1031
	cghi	%r12,2
	je	.L1032
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
.L1032:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
.L1031:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
	cgr	%r1,%r0
	je	.L1058
.L1025:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1073
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
.L972:
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	aghi	%r1,32
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	brctg	%r5,.L972
	lg	%r5,8(%r1,%r2)
	stg	%r5,8(%r1,%r3)
	lg	%r5,16(%r1,%r2)
	stg	%r5,16(%r1,%r3)
	lg	%r5,24(%r1,%r2)
	stg	%r5,24(%r1,%r3)
	aghi	%r1,32
.L1058:
	agr	%r3,%r1
	agr	%r2,%r1
	sgrk	%r5,%r4,%r1
	cgr	%r4,%r1
	je	.L967
	mvc	0(1,%r3),0(%r2)
	cghi	%r5,1
	je	.L967
	mvc	1(1,%r3),1(%r2)
	cghi	%r5,2
	je	.L967
	mvc	2(1,%r3),2(%r2)
	cghi	%r5,3
	je	.L967
	mvc	3(1,%r3),3(%r2)
	cghi	%r5,4
	je	.L967
	mvc	4(1,%r3),4(%r2)
	cghi	%r5,5
	je	.L967
	mvc	5(1,%r3),5(%r2)
	cghi	%r5,6
	je	.L967
	mvc	6(1,%r3),6(%r2)
.L967:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1007:
	srlg	%r1,%r1,2
	cghi	%r1,2
	jle	.L1071
	aghi	%r1,-1
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
.L970:
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r5,-3(%r4,%r2)
	stcy	%r5,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r1,.L970
	icy	%r1,-2(%r4,%r2)
	stcy	%r1,-2(%r4,%r3)
	icy	%r1,-3(%r4,%r2)
	stcy	%r1,-3(%r4,%r3)
	icy	%r1,-4(%r4,%r2)
	stcy	%r1,-4(%r4,%r3)
	br	%r14
.L1071:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L1071
	br	%r14
.L1079:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L1030
.L1073:
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
	brctg	%r5,.L1073
	j	.L1058
.L978:
	.cfi_restore 12
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L1016
	cghi	%r0,1
	je	.L1033
	cghi	%r0,2
	je	.L1034
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1034:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1033:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgr	%r4,%r1
	ber	%r14
.L1016:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1072
	aghi	%r5,-1
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
.L975:
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r4,3(%r1,%r2)
	stc	%r4,3(%r1,%r3)
	aghi	%r1,4
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	brctg	%r5,.L975
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	br	%r14
.L1072:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L1072
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
.LFB173:
	.cfi_startproc
	rllg	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE173:
	.size	rotl_sz, .-rotl_sz
	.align	8
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
.globl ffs
	.type	ffs, @function
ffs:
.LFB83:
	.cfi_startproc
	tmll	%r2,1
	jne	.L1110
	tmll	%r2,2
	jne	.L1111
	tmll	%r2,4
	jne	.L1112
	tmll	%r2,8
	jne	.L1113
	tmll	%r2,16
	jne	.L1114
	tmll	%r2,32
	jne	.L1115
	tmll	%r2,64
	jne	.L1116
	tmll	%r2,128
	jne	.L1117
	tmll	%r2,256
	jne	.L1118
	tmll	%r2,512
	jne	.L1119
	tmll	%r2,1024
	jne	.L1120
	tmll	%r2,2048
	jne	.L1121
	tmll	%r2,4096
	jne	.L1122
	tmll	%r2,8192
	jne	.L1123
	tmll	%r2,16384
	jne	.L1124
	tmll	%r2,32768
	jne	.L1125
	tmlh	%r2,1
	jne	.L1126
	tmlh	%r2,2
	jne	.L1127
	tmlh	%r2,4
	jne	.L1128
	tmlh	%r2,8
	jne	.L1129
	tmlh	%r2,16
	jne	.L1130
	tmlh	%r2,32
	jne	.L1131
	tmlh	%r2,64
	jne	.L1132
	tmlh	%r2,128
	jne	.L1133
	tmlh	%r2,256
	jne	.L1134
	tmlh	%r2,512
	jne	.L1135
	tmlh	%r2,1024
	jne	.L1136
	tmlh	%r2,2048
	jne	.L1137
	tmlh	%r2,4096
	jne	.L1138
	tmlh	%r2,8192
	jne	.L1139
	risbg	%r1,%r2,33,128+33,0
	jne	.L1140
	ltgr	%r2,%r2
	jne	.L1144
.L1109:
	lgfr	%r2,%r1
	br	%r14
.L1110:
	lhi	%r1,1
	j	.L1109
.L1111:
	lhi	%r1,2
	j	.L1109
.L1122:
	lhi	%r1,13
	j	.L1109
.L1138:
	lhi	%r1,29
	j	.L1109
.L1112:
	lhi	%r1,3
	j	.L1109
.L1113:
	lhi	%r1,4
	j	.L1109
.L1114:
	lhi	%r1,5
	j	.L1109
.L1115:
	lhi	%r1,6
	j	.L1109
.L1116:
	lhi	%r1,7
	j	.L1109
.L1117:
	lhi	%r1,8
	j	.L1109
.L1118:
	lhi	%r1,9
	j	.L1109
.L1119:
	lhi	%r1,10
	j	.L1109
.L1120:
	lhi	%r1,11
	j	.L1109
.L1121:
	lhi	%r1,12
	j	.L1109
.L1123:
	lhi	%r1,14
	j	.L1109
.L1124:
	lhi	%r1,15
	j	.L1109
.L1125:
	lhi	%r1,16
	j	.L1109
.L1126:
	lhi	%r1,17
	j	.L1109
.L1127:
	lhi	%r1,18
	j	.L1109
.L1128:
	lhi	%r1,19
	j	.L1109
.L1129:
	lhi	%r1,20
	j	.L1109
.L1130:
	lhi	%r1,21
	j	.L1109
.L1131:
	lhi	%r1,22
	j	.L1109
.L1132:
	lhi	%r1,23
	j	.L1109
.L1133:
	lhi	%r1,24
	j	.L1109
.L1134:
	lhi	%r1,25
	j	.L1109
.L1135:
	lhi	%r1,26
	j	.L1109
.L1136:
	lhi	%r1,27
	j	.L1109
.L1137:
	lhi	%r1,28
	j	.L1109
.L1139:
	lhi	%r1,30
	j	.L1109
.L1144:
	lhi	%r1,32
	j	.L1109
.L1140:
	lhi	%r1,31
	j	.L1109
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	ltgr	%r3,%r2
	je	.L1149
	risbg	%r2,%r3,63,128+63,0
	jne	.L1147
	lhi	%r2,1
.L1148:
	ahi	%r2,1
	srak	%r1,%r3,1
	lgfr	%r3,%r1
	tmll	%r1,1
	je	.L1148
.L1147:
	lgfr	%r2,%r2
	br	%r14
.L1149:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE84:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB85:
	.cfi_startproc
	larl	%r5,.L1158
	keb	%f0,.L1159-.L1158(%r5)
	jl	.L1156
	keb	%f0,.L1160-.L1158(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1156:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1158:
.L1160:
	.long	2139095039
.L1159:
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
	larl	%r5,.L1166
	kdb	%f0,.L1167-.L1166(%r5)
	jl	.L1164
	kdb	%f0,.L1168-.L1166(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1164:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1166:
.L1168:
	.long	2146435071
	.long	-1
.L1167:
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
	larl	%r5,.L1174
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1175-.L1174(%r5)
	ld	%f6,.L1175-.L1174+8(%r5)
	kxbr	%f0,%f4
	jl	.L1172
	ld	%f4,.L1176-.L1174(%r5)
	ld	%f6,.L1176-.L1174+8(%r5)
	kxbr	%f0,%f4
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1172:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1174:
.L1176:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1175:
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
	larl	%r5,.L1195
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1193
	le	%f4,.L1196-.L1195(%r5)
.L1181:
	tmll	%r2,1
	je	.L1182
.L1183:
	meebr	%f0,%f4
.L1182:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L1183
.L1194:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1183
	j	.L1194
.L1193:
	le	%f4,.L1197-.L1195(%r5)
	j	.L1181
	.section	.rodata
	.align	8
.L1195:
.L1197:
	.long	1056964608
.L1196:
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
	larl	%r5,.L1214
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1212
	ld	%f4,.L1215-.L1214(%r5)
.L1200:
	tmll	%r2,1
	je	.L1201
.L1202:
	mdbr	%f0,%f4
.L1201:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L1202
.L1213:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1202
	j	.L1213
.L1212:
	ld	%f4,.L1216-.L1214(%r5)
	j	.L1200
	.section	.rodata
	.align	8
.L1214:
.L1216:
	.long	1071644672
	.long	0
.L1215:
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
	larl	%r5,.L1233
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1218
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1218
	ltr	%r4,%r4
	jl	.L1231
	ld	%f0,.L1234-.L1233(%r5)
	ld	%f2,.L1234-.L1233+8(%r5)
.L1219:
	tmll	%r4,1
	je	.L1220
.L1221:
	mxbr	%f4,%f0
.L1220:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	ltgr	%r4,%r4
	je	.L1218
	mxbr	%f0,%f0
	tmll	%r4,1
	jne	.L1221
.L1232:
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	mxbr	%f0,%f0
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L1221
	j	.L1232
.L1218:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1231:
	ld	%f0,.L1235-.L1233(%r5)
	ld	%f2,.L1235-.L1233+8(%r5)
	j	.L1219
	.section	.rodata
	.align	8
.L1233:
.L1235:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1234:
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
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r1,%r4,-1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clgfi	%r1,14
	jle	.L1238
	ogrk	%r0,%r2,%r3
	tmll	%r0,7
	jne	.L1238
	risbg	%r0,%r4,0,128+60,0
	aghik	%r5,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1273
	cghi	%r12,1
	je	.L1277
	cghi	%r12,2
	je	.L1278
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1278:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1277:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r0
	je	.L1296
.L1273:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1302
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
.L1239:
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
	brctg	%r5,.L1239
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
.L1296:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r0,%r4,%r1
	cgr	%r4,%r1
	je	.L1237
	xc	0(1,%r5),0(%r3)
	cghi	%r0,1
	je	.L1237
	xc	1(1,%r5),1(%r3)
	cghi	%r0,2
	je	.L1237
	xc	2(1,%r5),2(%r3)
	cghi	%r0,3
	je	.L1237
	xc	3(1,%r5),3(%r3)
	cghi	%r0,4
	je	.L1237
	xc	4(1,%r5),4(%r3)
	cghi	%r0,5
	je	.L1237
	xc	5(1,%r5),5(%r3)
	cghi	%r0,6
	je	.L1237
	xc	6(1,%r5),6(%r3)
.L1237:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1302:
	.cfi_restore_state
	lg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	xg	%r12,8(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	stg	%r12,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	lg	%r12,24(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	xg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1302
	j	.L1296
.L1238:
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r12,%r4,62,128+63,0
	je	.L1264
	cghi	%r12,1
	je	.L1279
	cghi	%r12,2
	jne	.L1308
.L1280:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stcy	%r5,-1(%r1)
.L1279:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	stc	%r5,0(%r1)
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgr	%r0,%r3
	je	.L1237
.L1264:
	srlg	%r4,%r4,2
.L1241:
	xc	0(3,%r1),0(%r3)
	llgc	%r5,3(%r1)
	llgc	%r0,3(%r3)
	xr	%r5,%r0
	stc	%r5,3(%r1)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	brctg	%r4,.L1241
	j	.L1237
.L1308:
	lgr	%r5,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r5)
	j	.L1280
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	lgr	%r1,%r2
	cli	0(%r2),0
	je	.L1311
.L1312:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L1312
.L1311:
	ltgr	%r4,%r4
	je	.L1314
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L1335
.L1323:
	srlg	%r4,%r4,1
.L1313:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	ltgr	%r0,%r0
	ber	%r14
	llgc	%r5,1(%r3)
	stc	%r5,1(%r1)
	ltgr	%r5,%r5
	ber	%r14
	la	%r3,2(%r3)
	la	%r1,2(%r1)
	brctg	%r4,.L1313
.L1314:
	mvi	0(%r1),0
	br	%r14
.L1335:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	ber	%r14
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	ltgr	%r0,%r0
	jne	.L1323
	j	.L1314
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
	ltgr	%r3,%r3
	lghi	%r2,0
	ber	%r14
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1349
	cghi	%r5,1
	je	.L1360
	cghi	%r5,2
	je	.L1361
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1361:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1360:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgr	%r3,%r2
	ber	%r14
.L1349:
	srlg	%r0,%r4,2
.L1338:
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
	brctg	%r0,.L1338
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
	llc	%r5,0(%r2)
	cli	0(%r2),0
	je	.L1375
.L1381:
	lgr	%r1,%r3
	j	.L1374
.L1373:
	cr	%r4,%r5
	la	%r1,1(%r1)
	ber	%r14
.L1374:
	llc	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1373
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1381
.L1375:
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
	lgr	%r1,%r2
	lghi	%r2,0
.L1384:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	ltr	%r4,%r4
	la	%r1,1(%r1)
	ber	%r14
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	ltr	%r4,%r4
	la	%r1,1(%r1)
	jne	.L1384
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f1,%r8
	.cfi_register 8, 20
	llc	%r10,0(%r3)
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	tml	%r10,255
	je	.L1388
	lr	%r8,%r10
	lgr	%r9,%r3
.L1390:
	la	%r9,1(%r9)
	cli	0(%r9),0
	jne	.L1390
	slgr	%r9,%r3
	jhe	.L1388
	aghi	%r9,-1
	j	.L1408
.L1411:
	la	%r2,1(%r2)
	ltr	%r1,%r1
	je	.L1410
.L1408:
	llc	%r1,0(%r2)
	cr	%r1,%r10
	jne	.L1411
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
	brctg	%r0,.L1406
.L1394:
	cr	%r1,%r12
	je	.L1388
.L1395:
	la	%r2,1(%r2)
	j	.L1408
.L1406:
	cr	%r1,%r12
	jne	.L1395
	la	%r4,1(%r4)
	la	%r11,1(%r5)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1394
	cli	1(%r5),0
	je	.L1395
	lgr	%r5,%r11
	brctg	%r0,.L1406
	j	.L1394
.L1410:
	lghi	%r2,0
.L1388:
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
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	lzdr	%f4
	kdbr	%f0,%f4
	jl	.L1423
	jnh	.L1417
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1416
.L1417:
	br	%r14
.L1423:
	kdbr	%f2,%f4
	jnh	.L1417
.L1416:
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
	ltgr	%r5,%r5
	ber	%r14
	clgr	%r3,%r5
	jl	.L1434
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1434
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	llc	%r11,0(%r4)
	j	.L1431
.L1435:
	lgr	%r2,%r12
.L1427:
	clgr	%r3,%r2
	jl	.L1436
.L1431:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	cr	%r1,%r11
	jne	.L1435
	cghi	%r5,1
	je	.L1425
.L1430:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1446
	cghi	%r10,1
	je	.L1456
	cghi	%r10,2
	jne	.L1472
.L1457:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	aghi	%r1,1
.L1456:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	aghi	%r1,1
	cgr	%r1,%r5
	je	.L1425
.L1446:
	srlg	%r0,%r0,2
.L1428:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1463
	aghi	%r1,4
	brctg	%r0,.L1428
.L1425:
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
.L1472:
	.cfi_restore_state
	lghi	%r1,2
	clc	1(1,%r4),1(%r2)
	je	.L1457
.L1463:
	clgr	%r3,%r12
	jl	.L1436
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	cr	%r11,%r1
	jne	.L1427
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1430
.L1436:
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
.L1434:
	lghi	%r2,0
	br	%r14
	.cfi_endproc
.LFE99:
	.size	memmem, .-memmem
	.align	8
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
	ltgr	%r12,%r4
	je	.L1475
	brasl	%r14,memmove@PLT
.L1475:
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
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	larl	%r5,.L1508
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1504
	kdb	%f0,.L1509-.L1508(%r5)
	jnhe	.L1505
	lhi	%r3,0
.L1484:
	lhi	%r1,0
.L1490:
	mdb	%f0,.L1510-.L1508(%r5)
	ahi	%r1,1
	kdb	%f0,.L1509-.L1508(%r5)
	jhe	.L1490
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1507:
	lcdbr	%f0,%f0
	br	%r14
.L1505:
	kdb	%f0,.L1510-.L1508(%r5)
	jnl	.L1487
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1496
.L1487:
	mvhi	0(%r2),0
	br	%r14
.L1504:
	lcdbr	%f6,%f0
	kdb	%f0,.L1511-.L1508(%r5)
	jnle	.L1506
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1484
.L1506:
	kdb	%f0,.L1512-.L1508(%r5)
	jnh	.L1487
	lhi	%r3,1
.L1485:
	ldr	%f0,%f6
	lhi	%r1,0
.L1492:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1510-.L1508(%r5)
	jl	.L1492
	st	%r1,0(%r2)
	ltr	%r3,%r3
	jne	.L1507
	br	%r14
.L1496:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1485
	.section	.rodata
	.align	8
.L1508:
.L1512:
	.long	-1075838976
	.long	0
.L1511:
	.long	-1074790400
	.long	0
.L1510:
	.long	1071644672
	.long	0
.L1509:
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
	ltgr	%r4,%r2
	lghi	%r2,0
	ber	%r14
.L1515:
	risbg	%r1,%r4,63,128+63,0
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	srlg	%r4,%r4,1
	sllg	%r3,%r3,1
	ltgr	%r4,%r4
	jne	.L1515
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
	clr	%r3,%r2
	jhe	.L1637
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L1631
	sllk	%r0,%r3,1
	lhi	%r9,2
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L1523
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	ltr	%r1,%r1
	jl	.L1631
.L1525:
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L1523
	ahik	%r5,%r10,-1
	brct	%r11,.L1600
.L1524:
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r5,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	llgfr	%r2,%r5
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
.L1600:
	.cfi_restore_state
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1631
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L1523
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1631
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L1523
	ahi	%r10,-3
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L1525
.L1631:
	srk	%r0,%r2,%r3
	srlk	%r11,%r12,1
	slrk	%r5,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	lhi	%r5,0
	locre	%r0,%r2
	locrne	%r5,%r12
	risbg	%r10,%r3,64-31,128+63,32+31
	llgfr	%r2,%r0
	ltr	%r11,%r11
	jne	.L1528
	j	.L1524
.L1523:
	ltr	%r9,%r9
	je	.L1530
	srk	%r11,%r2,%r0
	llgtr	%r10,%r3
	lgr	%r3,%r1
	slrk	%r5,%r2,%r0
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	lhi	%r5,0
	locrne	%r2,%r11
	locrne	%r5,%r9
	llgtr	%r11,%r12
	llgfr	%r2,%r2
	lr	%r12,%r9
.L1528:
	srk	%r1,%r2,%r10
	lhi	%r0,0
	srlk	%r9,%r12,2
	slrk	%r10,%r2,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locre	%r1,%r2
	locre	%r11,%r0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,2
	ltr	%r9,%r9
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r0,0
	srlk	%r11,%r12,3
	slrk	%r10,%r1,%r10
	alcr	%r0,%r0
	ltr	%r0,%r0
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r9,%r10
	or	%r5,%r9
	llgfr	%r2,%r1
	srlk	%r9,%r3,3
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,4
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,4
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,5
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,5
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,6
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,6
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,7
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,7
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,8
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,8
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,9
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,9
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,10
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locrne	%r9,%r11
	or	%r5,%r9
	llgfr	%r2,%r1
	srlk	%r10,%r3,10
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,11
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,11
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,12
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,12
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,13
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,13
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,14
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,14
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,15
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,15
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,16
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,16
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,17
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,17
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,18
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,18
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,19
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,19
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,20
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,20
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,21
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,21
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,22
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,22
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,23
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,23
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,24
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,24
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,25
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,25
	ltr	%r11,%r11
	je	.L1524
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,26
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,26
	ltr	%r0,%r0
	je	.L1524
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,27
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,27
	ltr	%r11,%r11
	je	.L1524
	srk	%r0,%r1,%r9
	lhi	%r2,0
	srlk	%r10,%r12,28
	slrk	%r9,%r1,%r9
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r0,%r1
	lhi	%r1,0
	locre	%r11,%r1
	or	%r5,%r11
	llgfr	%r2,%r0
	srlk	%r9,%r3,28
	ltr	%r10,%r10
	je	.L1524
	srk	%r1,%r0,%r9
	lhi	%r2,0
	srlk	%r11,%r12,29
	slrk	%r9,%r0,%r9
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r1,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r3,29
	ltr	%r11,%r11
	je	.L1524
	srk	%r9,%r1,%r10
	lhi	%r2,0
	srlk	%r0,%r12,30
	slrk	%r10,%r1,%r10
	alcr	%r2,%r2
	ltr	%r2,%r2
	lhi	%r10,0
	locrne	%r1,%r9
	locre	%r11,%r10
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r11,%r3,30
	ltr	%r0,%r0
	je	.L1524
	srk	%r9,%r1,%r11
	lhi	%r2,0
	lhi	%r10,0
	slrk	%r11,%r1,%r11
	alcr	%r2,%r2
	srl	%r3,31
	ltr	%r2,%r2
	locrne	%r1,%r9
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	ltr	%r12,%r12
	jhe	.L1524
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	or	%r5,%r3
	llgfr	%r2,%r12
	j	.L1524
.L1637:
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r1,%r3,%r2
	srk	%r3,%r2,%r3
	lpr	%r0,%r1
	ahi	%r0,-1
	srl	%r0,31
	lr	%r5,%r0
	ltr	%r0,%r0
	locrne	%r2,%r3
	llgfr	%r1,%r2
	ltgr	%r4,%r4
	locrne	%r5,%r1
	llgfr	%r2,%r5
	br	%r14
.L1530:
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L1524
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
	lhi	%r0,63
	cgr	%r2,%r1
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
	ltgr	%r1,%r2
	je	.L1650
	risbg	%r0,%r1,63,128+63,0
	lcr	%r2,%r0
	nr	%r2,%r3
	srlg	%r5,%r1,1
	srlk	%r4,%r1,1
	sllk	%r0,%r3,1
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,2
	srlk	%r4,%r1,2
	sllk	%r0,%r3,2
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,3
	srlk	%r4,%r1,3
	sllk	%r0,%r3,3
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,4
	srlk	%r4,%r1,4
	sllk	%r0,%r3,4
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,5
	srlk	%r4,%r1,5
	sllk	%r0,%r3,5
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,6
	srlk	%r4,%r1,6
	sllk	%r0,%r3,6
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,7
	srlk	%r4,%r1,7
	sllk	%r0,%r3,7
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,8
	srlk	%r4,%r1,8
	sllk	%r0,%r3,8
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,9
	srlk	%r4,%r1,9
	sllk	%r0,%r3,9
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,10
	srlk	%r4,%r1,10
	sllk	%r0,%r3,10
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,11
	srlk	%r4,%r1,11
	sllk	%r0,%r3,11
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,12
	srlk	%r4,%r1,12
	sllk	%r0,%r3,12
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,13
	srlk	%r4,%r1,13
	sllk	%r0,%r3,13
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,14
	srlk	%r4,%r1,14
	sllk	%r0,%r3,14
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,15
	srlk	%r4,%r1,15
	sllk	%r0,%r3,15
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,16
	srlk	%r4,%r1,16
	sllk	%r0,%r3,16
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,17
	srlk	%r4,%r1,17
	sllk	%r0,%r3,17
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,18
	srlk	%r4,%r1,18
	sllk	%r0,%r3,18
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,19
	srlk	%r4,%r1,19
	sllk	%r0,%r3,19
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,20
	srlk	%r4,%r1,20
	sllk	%r0,%r3,20
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,21
	srlk	%r4,%r1,21
	sllk	%r0,%r3,21
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,22
	srlk	%r4,%r1,22
	sllk	%r0,%r3,22
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,23
	srlk	%r4,%r1,23
	sllk	%r0,%r3,23
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,24
	srlk	%r4,%r1,24
	sllk	%r0,%r3,24
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,25
	srlk	%r4,%r1,25
	sllk	%r0,%r3,25
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,26
	srlk	%r4,%r1,26
	sllk	%r0,%r3,26
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,27
	srlk	%r4,%r1,27
	sllk	%r0,%r3,27
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,28
	srlk	%r4,%r1,28
	sllk	%r0,%r3,28
	ltgr	%r5,%r5
	je	.L1648
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r1,29
	srlk	%r4,%r1,29
	sllk	%r0,%r3,29
	ltgr	%r5,%r5
	je	.L1648
	risbg	%r5,%r1,64-1,128+63,32+1+1
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r4,%r2
	sllk	%r2,%r3,30
	lcr	%r0,%r5
	sll	%r3,31
	nr	%r0,%r2
	srlk	%r5,%r1,31
	ar	%r0,%r4
	lcr	%r2,%r5
	nr	%r2,%r3
	ar	%r2,%r0
	srlg	%r3,%r1,30
	ltgr	%r3,%r3
	locre	%r2,%r4
.L1648:
	llgfr	%r2,%r2
	br	%r14
.L1650:
	lhi	%r2,0
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB107:
	.cfi_startproc
	risbg	%r0,%r4,32,128+60,0
	srlk	%r1,%r4,3
	clgr	%r2,%r3
	jl	.L1745
	agrk	%r5,%r3,%r4
	clgr	%r2,%r5
	jle	.L1862
.L1745:
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
	ltr	%r1,%r1
	je	.L1863
	risbg	%r12,%r1,32,128+60,3
	aghik	%r8,%r12,-8
	lghi	%r1,0
	srlg	%r9,%r8,3
	aghi	%r9,1
	risbg	%r11,%r9,62,128+63,0
	je	.L1793
	cghi	%r11,1
	je	.L1809
	cghi	%r11,2
	je	.L1810
	lg	%r10,0(%r3)
	lghi	%r1,8
	stg	%r10,0(%r2)
.L1810:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1809:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r12,%r1
	je	.L1838
.L1793:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L1857
	aghi	%r5,-1
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
.L1748:
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	brctg	%r5,.L1748
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1838:
	clr	%r0,%r4
	jhe	.L1741
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clfi	%r1,14
	jle	.L1750
	lgr	%r12,%r2
	lgr	%r11,%r3
	algfr	%r12,%r0
	algfr	%r11,%r0
	llgfr	%r5,%r0
	la	%r8,1(%r5,%r3)
	sgrk	%r9,%r12,%r8
	clgfi	%r9,6
	jle	.L1750
	ogrk	%r1,%r11,%r12
	risbg	%r8,%r1,61,128+63,0
	aghi	%r8,-1
	ltgr	%r8,%r8
	jhe	.L1750
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1784
	cghi	%r8,1
	je	.L1811
	cghi	%r8,2
	jne	.L1864
.L1812:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1811:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgr	%r1,%r9
	je	.L1837
.L1784:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1856
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1751:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1751
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L1837:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1741
	llgfr	%r11,%r12
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahik	%r10,%r12,1
	clr	%r10,%r4
	jhe	.L1741
	llgfr	%r5,%r10
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clr	%r9,%r4
	jhe	.L1741
	llgfr	%r8,%r9
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	ahik	%r0,%r12,3
	clr	%r0,%r4
	jhe	.L1741
	llgfr	%r10,%r0
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ahik	%r1,%r12,4
	clr	%r1,%r4
	jhe	.L1741
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r11,%r12,5
	clr	%r11,%r4
	jhe	.L1741
	llgfr	%r10,%r11
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r12,6
	clr	%r12,%r4
	jhe	.L1741
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1741:
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
.L1862:
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	ltgr	%r4,%r4
	ber	%r14
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1802
	cghi	%r5,1
	je	.L1807
	cghi	%r5,2
	je	.L1808
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1808:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1807:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	ber	%r14
.L1802:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1858
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1755:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1755
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	br	%r14
.L1857:
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
	brctg	%r5,.L1857
	j	.L1838
.L1856:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1856
	j	.L1837
.L1864:
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1812
.L1858:
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
	brctg	%r4,.L1858
	br	%r14
.L1863:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	llgfr	%r5,%r0
	ltgr	%r4,%r4
	je	.L1741
.L1750:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	aghik	%r1,%r5,1
	clr	%r1,%r4
	jhe	.L1741
	ltr	%r8,%r8
	je	.L1775
	chi	%r8,1
	je	.L1814
	chi	%r8,2
	jne	.L1865
.L1815:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L1814:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	clr	%r1,%r4
	jhe	.L1741
.L1775:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L1855
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1753:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1753
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1741
.L1855:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1855
	j	.L1741
.L1865:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L1815
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
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
	clgr	%r2,%r3
	jl	.L1871
	agrk	%r1,%r3,%r4
	clgr	%r2,%r1
	jle	.L1957
.L1871:
	ltr	%r12,%r12
	je	.L1870
	ahik	%r1,%r12,-1
	clfi	%r1,6
	jle	.L1874
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	ltgr	%r5,%r5
	jhe	.L1874
	la	%r10,2(%r3)
	sgrk	%r11,%r2,%r10
	clgfi	%r11,4
	jle	.L1874
	risbg	%r11,%r4,32,128+60,0
	aghik	%r1,%r11,-8
	srlk	%r0,%r4,3
	srlg	%r5,%r1,3
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L1905
	cghi	%r10,1
	je	.L1921
	cghi	%r10,2
	jne	.L1958
.L1922:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L1921:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r11
	je	.L1940
.L1905:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1954
	aghi	%r5,-1
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
.L1875:
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	aghi	%r1,32
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	brctg	%r5,.L1875
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L1940:
	sllk	%r1,%r0,2
	cr	%r12,%r1
	je	.L1870
	risbg	%r5,%r1,32,128+60,1
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahik	%r11,%r1,1
	clr	%r12,%r11
	jle	.L1870
	risbg	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,2
	clr	%r12,%r1
	jle	.L1870
	risbg	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L1870:
	tmll	%r4,1
	je	.L1867
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1867:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L1957:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	ltgr	%r4,%r4
	je	.L1867
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1914
	cghi	%r5,1
	je	.L1919
	cghi	%r5,2
	je	.L1920
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L1920:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L1919:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	je	.L1867
.L1914:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1955
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1880:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1880
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1867
.L1954:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1954
	j	.L1940
.L1958:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1922
.L1955:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r10,-2(%r1,%r3)
	stcy	%r10,-2(%r1,%r2)
	icy	%r11,-3(%r1,%r3)
	stcy	%r11,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1955
	j	.L1867
.L1874:
	risbg	%r11,%r12,32,128+62,1
	aghik	%r0,%r11,-2
	lghi	%r1,0
	srlg	%r10,%r0,1
	aghi	%r10,1
	risbg	%r5,%r10,62,128+63,0
	je	.L1896
	cghi	%r5,1
	je	.L1923
	cghi	%r5,2
	jne	.L1959
.L1924:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L1923:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
	cgr	%r11,%r1
	je	.L1870
.L1896:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L1953
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L1877:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L1877
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1870
.L1953:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r12,4(%r1,%r3)
	sth	%r12,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L1953
	j	.L1870
.L1959:
	lh	%r12,0(%r3)
	lghi	%r1,2
	sth	%r12,0(%r2)
	j	.L1924
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	risbg	%r0,%r4,32,128+61,0
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
	clgr	%r2,%r3
	jl	.L1966
	agrk	%r1,%r3,%r4
	clgr	%r2,%r1
	jle	.L2106
.L1966:
	ltr	%r12,%r12
	je	.L2107
	ahik	%r1,%r12,-1
	clfi	%r1,8
	jle	.L1968
	ogrk	%r8,%r2,%r3
	risbg	%r9,%r8,61,128+63,0
	aghi	%r9,-1
	ltgr	%r9,%r9
	jhe	.L1968
	la	%r10,4(%r3)
	cgr	%r2,%r10
	je	.L1968
	risbg	%r8,%r4,32,128+60,0
	aghik	%r5,%r8,-8
	srlk	%r11,%r4,3
	srlg	%r10,%r5,3
	lghi	%r1,0
	aghi	%r10,1
	risbg	%r9,%r10,62,128+63,0
	je	.L2029
	cghi	%r9,1
	je	.L2045
	cghi	%r9,2
	jne	.L2108
.L2046:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2045:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r8,%r1
	je	.L2080
.L2029:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L2103
	aghi	%r5,-1
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
.L1969:
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	brctg	%r5,.L1969
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
.L2080:
	sll	%r11,1
	cr	%r12,%r11
	je	.L1972
	risbg	%r12,%r11,32,128+60,2
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
.L1972:
	clr	%r0,%r4
	jhe	.L1961
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clfi	%r1,14
	jle	.L1964
	lgr	%r12,%r2
	lgr	%r11,%r3
	algfr	%r12,%r0
	algfr	%r11,%r0
	llgfr	%r5,%r0
	la	%r9,1(%r5,%r3)
	sgrk	%r8,%r12,%r9
	clgfi	%r8,6
	jle	.L1964
	ogrk	%r1,%r11,%r12
	risbg	%r9,%r1,61,128+63,0
	aghi	%r9,-1
	ltgr	%r9,%r9
	jhe	.L1964
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2011
	cghi	%r8,1
	je	.L2049
	cghi	%r8,2
	jne	.L2109
.L2050:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L2049:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgr	%r9,%r1
	je	.L2079
.L2011:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L2101
	aghi	%r5,-1
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
.L1973:
	lg	%r9,8(%r1,%r11)
	stg	%r9,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r9,24(%r1,%r11)
	stg	%r9,24(%r1,%r12)
	aghi	%r1,32
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	brctg	%r5,.L1973
	lg	%r5,8(%r1,%r11)
	stg	%r5,8(%r1,%r12)
	lg	%r5,16(%r1,%r11)
	stg	%r5,16(%r1,%r12)
	lg	%r5,24(%r1,%r11)
	stg	%r5,24(%r1,%r12)
.L2079:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1961
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clr	%r11,%r4
	jhe	.L1961
	llgfr	%r5,%r11
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	ahik	%r9,%r12,2
	clr	%r9,%r4
	jhe	.L1961
	llgfr	%r8,%r9
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clr	%r0,%r4
	jhe	.L1961
	llgfr	%r11,%r0
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	ahik	%r1,%r12,4
	clr	%r1,%r4
	jhe	.L1961
	llgfr	%r9,%r1
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r10,%r12,5
	clr	%r10,%r4
	jhe	.L1961
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r12,6
	clr	%r12,%r4
	jhe	.L1961
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1961:
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
.L2106:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r1,%r0
	ltgr	%r4,%r4
	je	.L1961
	aghik	%r4,%r1,1
	risbg	%r5,%r4,62,128+63,0
	je	.L2038
	cghi	%r5,1
	je	.L2043
	cghi	%r5,2
	je	.L2044
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2044:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2043:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	je	.L1961
.L2038:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L2104
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1977:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1977
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L1961
.L2103:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r8,24(%r1,%r3)
	stg	%r8,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2103
	j	.L2080
.L2101:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L2101
	j	.L2079
.L2108:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L2046
.L2109:
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L2050
.L2104:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	icy	%r12,-1(%r1,%r3)
	stcy	%r12,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2104
	j	.L1961
.L2107:
	llgfr	%r5,%r0
	ltgr	%r4,%r4
	je	.L1961
.L1964:
	lghi	%r1,-1
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	xgrk	%r9,%r5,%r1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	aghik	%r1,%r5,1
	clr	%r4,%r1
	jle	.L1961
	ltr	%r8,%r8
	je	.L2002
	chi	%r8,1
	je	.L2052
	chi	%r8,2
	jne	.L2110
.L2053:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L2052:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
	clr	%r4,%r1
	jle	.L1961
.L2002:
	srlk	%r4,%r9,2
	chi	%r4,2
	jle	.L2100
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1975:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1975
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1961
.L1968:
	risbg	%r10,%r12,32,128+61,2
	aghik	%r5,%r10,-4
	lghi	%r1,0
	srlg	%r9,%r5,2
	aghi	%r9,1
	risbg	%r8,%r9,62,128+63,0
	je	.L2020
	cghi	%r8,1
	je	.L2047
	cghi	%r8,2
	jne	.L2111
.L2048:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L2047:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgr	%r1,%r10
	je	.L1972
.L2020:
	srlg	%r5,%r9,2
	cghi	%r5,2
	jle	.L2102
	aghi	%r5,-1
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
.L1971:
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	aghi	%r1,16
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	brctg	%r5,.L1971
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	j	.L1972
.L2102:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	l	%r8,8(%r1,%r3)
	st	%r8,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2102
	j	.L1972
.L2100:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r9,2(%r1,%r3)
	stc	%r9,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2100
	j	.L1961
.L2111:
	l	%r11,0(%r3)
	lghi	%r1,4
	st	%r11,0(%r2)
	j	.L2048
.L2110:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghik	%r1,%r5,2
	j	.L2053
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
	srak	%r1,%r2,15
	ltr	%r1,%r1
	jne	.L2128
	srak	%r5,%r2,14
	jne	.L2127
	srak	%r0,%r2,13
	ltr	%r0,%r0
	jne	.L2129
	srak	%r3,%r2,12
	ltr	%r3,%r3
	jne	.L2130
	srak	%r4,%r2,11
	ltr	%r4,%r4
	jne	.L2131
	srak	%r5,%r2,10
	ltr	%r5,%r5
	jne	.L2132
	srak	%r1,%r2,9
	ltr	%r1,%r1
	jne	.L2133
	srak	%r0,%r2,8
	ltr	%r0,%r0
	jne	.L2134
	srak	%r3,%r2,7
	ltr	%r3,%r3
	jne	.L2135
	srak	%r4,%r2,6
	ltr	%r4,%r4
	jne	.L2136
	srak	%r5,%r2,5
	ltr	%r5,%r5
	jne	.L2137
	srak	%r1,%r2,4
	ltr	%r1,%r1
	jne	.L2138
	srak	%r0,%r2,3
	ltr	%r0,%r0
	jne	.L2139
	srak	%r3,%r2,2
	ltr	%r3,%r3
	jne	.L2140
	srak	%r4,%r2,1
	ltr	%r4,%r4
	jne	.L2141
	ltgr	%r2,%r2
	lhi	%r5,15
	lhi	%r2,16
	locre	%r5,%r2
.L2127:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2128:
	lhi	%r5,0
	j	.L2127
.L2139:
	lhi	%r5,12
	j	.L2127
.L2129:
	lhi	%r5,2
	j	.L2127
.L2130:
	lhi	%r5,3
	j	.L2127
.L2131:
	lhi	%r5,4
	j	.L2127
.L2132:
	lhi	%r5,5
	j	.L2127
.L2133:
	lhi	%r5,6
	j	.L2127
.L2134:
	lhi	%r5,7
	j	.L2127
.L2135:
	lhi	%r5,8
	j	.L2127
.L2136:
	lhi	%r5,9
	j	.L2127
.L2137:
	lhi	%r5,10
	j	.L2127
.L2138:
	lhi	%r5,11
	j	.L2127
.L2140:
	lhi	%r5,13
	j	.L2127
.L2141:
	lhi	%r5,14
	j	.L2127
	.cfi_endproc
.LFE116:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB117:
	.cfi_startproc
	tmll	%r2,1
	jne	.L2147
	tmll	%r2,2
	jne	.L2148
	tmll	%r2,4
	jne	.L2149
	tmll	%r2,8
	jne	.L2150
	tmll	%r2,16
	jne	.L2151
	tmll	%r2,32
	jne	.L2152
	tmll	%r2,64
	jne	.L2153
	tmll	%r2,128
	jne	.L2154
	tmll	%r2,256
	jne	.L2155
	tmll	%r2,512
	jne	.L2156
	tmll	%r2,1024
	jne	.L2157
	tmll	%r2,2048
	jne	.L2158
	tmll	%r2,4096
	jne	.L2159
	tmll	%r2,8192
	jne	.L2160
	tmll	%r2,16384
	jne	.L2161
	sra	%r2,15
	lhi	%r1,16
	ltr	%r2,%r2
	lhi	%r2,15
	locre	%r2,%r1
.L2146:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L2147:
	lhi	%r2,0
	j	.L2146
.L2148:
	lhi	%r2,1
	j	.L2146
.L2159:
	lhi	%r2,12
	j	.L2146
.L2149:
	lhi	%r2,2
	j	.L2146
.L2150:
	lhi	%r2,3
	j	.L2146
.L2151:
	lhi	%r2,4
	j	.L2146
.L2152:
	lhi	%r2,5
	j	.L2146
.L2153:
	lhi	%r2,6
	j	.L2146
.L2154:
	lhi	%r2,7
	j	.L2146
.L2155:
	lhi	%r2,8
	j	.L2146
.L2156:
	lhi	%r2,9
	j	.L2146
.L2157:
	lhi	%r2,10
	j	.L2146
.L2158:
	lhi	%r2,11
	j	.L2146
.L2160:
	lhi	%r2,13
	j	.L2146
.L2161:
	lhi	%r2,14
	j	.L2146
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L2172
	keb	%f0,.L2173-.L2172(%r5)
	jhe	.L2171
	cgebr	%r2,5,%f0
	br	%r14
.L2171:
	seb	%f0,.L2173-.L2172(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2172:
.L2173:
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
	risbg	%r3,%r2,63,128+63,0
	risbg	%r4,%r2,64-1,128+63,32+29+1
	risbg	%r0,%r2,64-1,128+63,32+28+1
	risbg	%r5,%r2,64-1,128+63,32+27+1
	risbg	%r1,%r2,64-1,128+63,32+30+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+26+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+25+1
	ar	%r1,%r0
	risbg	%r0,%r2,64-1,128+63,32+24+1
	ar	%r1,%r5
	risbg	%r5,%r2,64-1,128+63,32+23+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+22+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+21+1
	ar	%r1,%r0
	risbg	%r0,%r2,64-1,128+63,32+20+1
	ar	%r1,%r5
	risbg	%r5,%r2,64-1,128+63,32+19+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+18+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+17+1
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
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB120:
	.cfi_startproc
	risbg	%r3,%r2,63,128+63,0
	risbg	%r4,%r2,64-1,128+63,32+29+1
	risbg	%r0,%r2,64-1,128+63,32+28+1
	risbg	%r5,%r2,64-1,128+63,32+27+1
	risbg	%r1,%r2,64-1,128+63,32+30+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+26+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+25+1
	ar	%r1,%r0
	risbg	%r0,%r2,64-1,128+63,32+24+1
	ar	%r1,%r5
	risbg	%r5,%r2,64-1,128+63,32+23+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+22+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+21+1
	ar	%r1,%r0
	risbg	%r0,%r2,64-1,128+63,32+20+1
	ar	%r1,%r5
	risbg	%r5,%r2,64-1,128+63,32+19+1
	ar	%r1,%r3
	risbg	%r3,%r2,64-1,128+63,32+18+1
	ar	%r1,%r4
	risbg	%r4,%r2,64-1,128+63,32+17+1
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
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB177:
	.cfi_startproc
	ltgr	%r1,%r2
	je	.L2181
	risbg	%r0,%r1,63,128+63,0
	lcr	%r2,%r0
	nr	%r2,%r3
	srlk	%r4,%r1,1
	sllk	%r5,%r3,1
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,2
	sllk	%r5,%r3,2
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,3
	sllk	%r5,%r3,3
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,4
	sllk	%r5,%r3,4
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,5
	sllk	%r5,%r3,5
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,6
	sllk	%r5,%r3,6
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,7
	sllk	%r5,%r3,7
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,8
	sllk	%r5,%r3,8
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,9
	sllk	%r5,%r3,9
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,10
	sllk	%r5,%r3,10
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,11
	sllk	%r5,%r3,11
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,12
	sllk	%r5,%r3,12
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,13
	sllk	%r5,%r3,13
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,14
	sllk	%r5,%r3,14
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,15
	sllk	%r5,%r3,15
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,16
	sllk	%r5,%r3,16
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,17
	sllk	%r5,%r3,17
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,18
	sllk	%r5,%r3,18
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,19
	sllk	%r5,%r3,19
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,20
	sllk	%r5,%r3,20
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,21
	sllk	%r5,%r3,21
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,22
	sllk	%r5,%r3,22
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,23
	sllk	%r5,%r3,23
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,24
	sllk	%r5,%r3,24
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,25
	sllk	%r5,%r3,25
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,26
	sllk	%r5,%r3,26
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,27
	sllk	%r5,%r3,27
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,28
	sllk	%r5,%r3,28
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	srlk	%r4,%r1,29
	sllk	%r5,%r3,29
	ltr	%r4,%r4
	je	.L2179
	nilf	%r4,1
	lcr	%r0,%r4
	nr	%r0,%r5
	risbg	%r4,%r1,64-1,128+63,32+1+1
	ar	%r0,%r2
	sllk	%r2,%r3,30
	lcr	%r5,%r4
	sll	%r3,31
	nr	%r5,%r2
	srlk	%r4,%r1,31
	ar	%r5,%r0
	lcr	%r2,%r4
	nr	%r2,%r3
	ar	%r2,%r5
	srl	%r1,30
	ltr	%r1,%r1
	locre	%r2,%r0
.L2179:
	llgfr	%r2,%r2
	br	%r14
.L2181:
	lhi	%r2,0
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE177:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB122:
	.cfi_startproc
	ltgr	%r1,%r2
	je	.L2276
	ltgr	%r3,%r3
	je	.L2276
	risbg	%r2,%r3,63,128+63,0
	lcr	%r2,%r2
	nr	%r2,%r1
	srlg	%r5,%r3,1
	sllk	%r0,%r1,1
	srlk	%r4,%r3,1
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,2
	sllk	%r0,%r1,2
	srlk	%r4,%r3,2
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,3
	sllk	%r0,%r1,3
	srlk	%r4,%r3,3
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,4
	sllk	%r0,%r1,4
	srlk	%r4,%r3,4
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,5
	sllk	%r0,%r1,5
	srlk	%r4,%r3,5
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,6
	sllk	%r0,%r1,6
	srlk	%r4,%r3,6
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,7
	sllk	%r0,%r1,7
	srlk	%r4,%r3,7
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,8
	sllk	%r0,%r1,8
	srlk	%r4,%r3,8
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,9
	sllk	%r0,%r1,9
	srlk	%r4,%r3,9
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,10
	sllk	%r0,%r1,10
	srlk	%r4,%r3,10
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,11
	sllk	%r0,%r1,11
	srlk	%r4,%r3,11
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,12
	sllk	%r0,%r1,12
	srlk	%r4,%r3,12
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,13
	sllk	%r0,%r1,13
	srlk	%r4,%r3,13
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,14
	sllk	%r0,%r1,14
	srlk	%r4,%r3,14
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,15
	sllk	%r0,%r1,15
	srlk	%r4,%r3,15
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,16
	sllk	%r0,%r1,16
	srlk	%r4,%r3,16
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,17
	sllk	%r0,%r1,17
	srlk	%r4,%r3,17
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,18
	sllk	%r0,%r1,18
	srlk	%r4,%r3,18
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,19
	sllk	%r0,%r1,19
	srlk	%r4,%r3,19
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,20
	sllk	%r0,%r1,20
	srlk	%r4,%r3,20
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,21
	sllk	%r0,%r1,21
	srlk	%r4,%r3,21
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,22
	sllk	%r0,%r1,22
	srlk	%r4,%r3,22
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,23
	sllk	%r0,%r1,23
	srlk	%r4,%r3,23
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r0,%r3,24
	sllk	%r5,%r1,24
	srlk	%r4,%r3,24
	ltgr	%r0,%r0
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	srlg	%r5,%r3,25
	sllk	%r0,%r1,25
	srlk	%r4,%r3,25
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r5,%r3,26
	sllk	%r0,%r1,26
	srlk	%r4,%r3,26
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r0,%r3,27
	sllk	%r5,%r1,27
	srlk	%r4,%r3,27
	ltgr	%r0,%r0
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	srlg	%r5,%r3,28
	sllk	%r0,%r1,28
	srlk	%r4,%r3,28
	ltgr	%r5,%r5
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	srlg	%r0,%r3,29
	sllk	%r5,%r1,29
	srlk	%r4,%r3,29
	ltgr	%r0,%r0
	je	.L2273
	nilf	%r4,1
	lcr	%r4,%r4
	nr	%r4,%r5
	risbg	%r5,%r3,64-1,128+63,32+1+1
	ar	%r2,%r4
	sllk	%r4,%r1,30
	lcr	%r0,%r5
	sll	%r1,31
	nr	%r0,%r4
	srlk	%r5,%r3,31
	ar	%r0,%r2
	lcr	%r4,%r5
	nr	%r1,%r4
	ar	%r1,%r0
	srlg	%r3,%r3,30
	ltgr	%r3,%r3
	locrne	%r2,%r1
.L2273:
	llgfr	%r2,%r2
	br	%r14
.L2276:
	lhi	%r2,0
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB123:
	.cfi_startproc
	clr	%r3,%r2
	jhe	.L2484
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L2478
	sllk	%r0,%r3,1
	lhi	%r9,2
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L2370
	lhi	%r10,31
	lhi	%r12,2
	lgr	%r3,%r1
	lhi	%r11,11
	ltr	%r1,%r1
	jl	.L2478
.L2372:
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L2370
	ahik	%r5,%r10,-1
	brct	%r11,.L2447
.L2371:
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r5,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	llgfr	%r2,%r5
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
.L2447:
	.cfi_restore_state
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2478
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L2370
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2478
	sllk	%r0,%r1,1
	sll	%r9,1
	llgfr	%r1,%r0
	clr	%r2,%r0
	jle	.L2370
	ahi	%r10,-3
	lr	%r12,%r9
	lgr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L2372
.L2478:
	srk	%r0,%r2,%r3
	srlk	%r11,%r12,1
	slrk	%r5,%r2,%r3
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	lhi	%r5,0
	locre	%r0,%r2
	locrne	%r5,%r12
	risbg	%r10,%r3,64-31,128+63,32+31
	llgfr	%r2,%r0
	ltr	%r11,%r11
	jne	.L2375
	j	.L2371
.L2370:
	ltr	%r9,%r9
	je	.L2377
	srk	%r11,%r2,%r0
	llgtr	%r10,%r3
	lgr	%r3,%r1
	slrk	%r5,%r2,%r0
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	lhi	%r5,0
	locrne	%r2,%r11
	locrne	%r5,%r9
	llgtr	%r11,%r12
	llgfr	%r2,%r2
	lr	%r12,%r9
.L2375:
	srk	%r1,%r2,%r10
	lhi	%r0,0
	srlk	%r9,%r12,2
	slrk	%r10,%r2,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locre	%r1,%r2
	locre	%r11,%r0
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,2
	ltr	%r9,%r9
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r0,0
	srlk	%r11,%r12,3
	slrk	%r10,%r1,%r10
	alcr	%r0,%r0
	ltr	%r0,%r0
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r9,%r10
	or	%r5,%r9
	llgfr	%r2,%r1
	srlk	%r9,%r3,3
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,4
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,4
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,5
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,5
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,6
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,6
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,7
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,7
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,8
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,8
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,9
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,9
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,10
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locrne	%r9,%r11
	or	%r5,%r9
	llgfr	%r2,%r1
	srlk	%r10,%r3,10
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,11
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,11
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,12
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,12
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,13
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,13
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,14
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,14
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,15
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,15
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,16
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,16
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,17
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,17
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,18
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,18
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,19
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,19
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,20
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,20
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,21
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,21
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,22
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,22
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,23
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,23
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,24
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,24
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,25
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,25
	ltr	%r11,%r11
	je	.L2371
	srk	%r2,%r1,%r9
	srlk	%r0,%r12,26
	slrk	%r10,%r1,%r9
	lhi	%r9,0
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	locrne	%r1,%r2
	locre	%r11,%r9
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r10,%r3,26
	ltr	%r0,%r0
	je	.L2371
	srk	%r2,%r1,%r10
	lhi	%r9,0
	srlk	%r11,%r12,27
	slrk	%r10,%r1,%r10
	alcr	%r9,%r9
	ltr	%r9,%r9
	lhi	%r10,0
	locrne	%r1,%r2
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	srlk	%r9,%r3,27
	ltr	%r11,%r11
	je	.L2371
	srk	%r0,%r1,%r9
	lhi	%r2,0
	srlk	%r10,%r12,28
	slrk	%r9,%r1,%r9
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r0,%r1
	lhi	%r1,0
	locre	%r11,%r1
	or	%r5,%r11
	llgfr	%r2,%r0
	srlk	%r9,%r3,28
	ltr	%r10,%r10
	je	.L2371
	srk	%r1,%r0,%r9
	lhi	%r2,0
	srlk	%r11,%r12,29
	slrk	%r9,%r0,%r9
	alcr	%r2,%r2
	ltr	%r2,%r2
	locre	%r1,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r5,%r10
	llgfr	%r2,%r1
	srlk	%r10,%r3,29
	ltr	%r11,%r11
	je	.L2371
	srk	%r9,%r1,%r10
	lhi	%r2,0
	srlk	%r0,%r12,30
	slrk	%r10,%r1,%r10
	alcr	%r2,%r2
	ltr	%r2,%r2
	lhi	%r10,0
	locrne	%r1,%r9
	locre	%r11,%r10
	or	%r5,%r11
	llgfr	%r2,%r1
	srlk	%r11,%r3,30
	ltr	%r0,%r0
	je	.L2371
	srk	%r9,%r1,%r11
	lhi	%r2,0
	lhi	%r10,0
	slrk	%r11,%r1,%r11
	alcr	%r2,%r2
	srl	%r3,31
	ltr	%r2,%r2
	locrne	%r1,%r9
	locre	%r0,%r10
	or	%r5,%r0
	llgfr	%r2,%r1
	ltr	%r12,%r12
	jhe	.L2371
	srk	%r12,%r1,%r3
	slrk	%r3,%r1,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	locre	%r12,%r1
	or	%r5,%r3
	llgfr	%r2,%r12
	j	.L2371
.L2484:
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xrk	%r1,%r3,%r2
	srk	%r3,%r2,%r3
	lpr	%r0,%r1
	ahi	%r0,-1
	srl	%r0,31
	lr	%r5,%r0
	ltr	%r0,%r0
	locrne	%r2,%r3
	llgfr	%r1,%r2
	ltgr	%r4,%r4
	locrne	%r5,%r1
	llgfr	%r2,%r5
	br	%r14
.L2377:
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r5,0
	j	.L2371
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
	lghi	%r1,1
	lghi	%r0,-1
	lghi	%r2,0
	locgrh	%r2,%r1
	locgrl	%r2,%r0
	br	%r14
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
	lghi	%r1,1
	lghi	%r0,-1
	lghi	%r2,0
	locgrh	%r2,%r1
	locgrl	%r2,%r0
	br	%r14
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
	ltr	%r3,%r3
	jl	.L2600
	ltgr	%r3,%r3
	je	.L2508
	risbg	%r4,%r3,63,128+63,0
	srak	%r1,%r3,1
	lcr	%r4,%r4
	nr	%r4,%r2
	srag	%r5,%r3,1
	sllk	%r0,%r2,1
	ltgr	%r5,%r5
	je	.L2598
	nilf	%r1,1
	lcr	%r1,%r1
	nr	%r1,%r0
	ar	%r4,%r1
	sll	%r2,2
	lgfr	%r2,%r2
	srag	%r1,%r3,2
	je	.L2598
	lhi	%r0,0
.L2506:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srak	%r3,%r1,1
	risbg	%r12,%r1,63,128+63,0
	lcr	%r5,%r12
	nr	%r5,%r2
	ar	%r4,%r5
	sllk	%r12,%r2,1
	srag	%r5,%r1,1
	ltgr	%r5,%r5
	je	.L2507
	nilf	%r3,1
	srak	%r5,%r1,2
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,2
	srag	%r3,%r1,2
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,3
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,3
	srag	%r3,%r1,3
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,4
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,4
	srag	%r3,%r1,4
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,5
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,5
	srag	%r3,%r1,5
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,6
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,6
	srag	%r3,%r1,6
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,7
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,7
	srag	%r3,%r1,7
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,8
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,8
	srag	%r3,%r1,8
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,9
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,9
	srag	%r3,%r1,9
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,10
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,10
	srag	%r3,%r1,10
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,11
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,11
	srag	%r3,%r1,11
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,12
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,12
	srag	%r3,%r1,12
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,13
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,13
	srag	%r3,%r1,13
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,14
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,14
	srag	%r3,%r1,14
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,15
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,15
	srag	%r3,%r1,15
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,16
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,16
	srag	%r3,%r1,16
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,17
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,17
	srag	%r3,%r1,17
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,18
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,18
	srag	%r3,%r1,18
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,19
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,19
	srag	%r3,%r1,19
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,20
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,20
	srag	%r3,%r1,20
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,21
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,21
	srag	%r3,%r1,21
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,22
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,22
	srag	%r3,%r1,22
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,23
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,23
	srag	%r3,%r1,23
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,24
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,24
	srag	%r3,%r1,24
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,25
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,25
	srag	%r3,%r1,25
	ltgr	%r3,%r3
	je	.L2507
	risbg	%r3,%r5,63,128+63,0
	srak	%r5,%r1,26
	lcr	%r3,%r3
	nr	%r3,%r12
	ar	%r4,%r3
	sllk	%r12,%r2,26
	srag	%r3,%r1,26
	ltgr	%r3,%r3
	je	.L2507
	nilf	%r5,1
	lcr	%r3,%r5
	nr	%r3,%r12
	sllk	%r5,%r2,27
	risbg	%r12,%r1,64-1,128+63,32+4+1
	ar	%r3,%r4
	sll	%r2,28
	lcr	%r4,%r12
	srak	%r12,%r1,28
	nr	%r4,%r5
	lcr	%r5,%r12
	ar	%r4,%r3
	nr	%r2,%r5
	ar	%r2,%r4
	srag	%r1,%r1,27
	ltgr	%r1,%r1
	locrne	%r3,%r2
	lr	%r4,%r3
.L2507:
	ltr	%r0,%r0
	je	.L2504
	lcr	%r4,%r4
.L2504:
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2600:
	risbg	%r4,%r3,63,128+63,0
	lcr	%r1,%r3
	lcr	%r4,%r4
	nr	%r4,%r2
	srak	%r3,%r1,1
	sllk	%r5,%r2,1
	ltr	%r3,%r3
	je	.L2597
	nilf	%r3,1
	sra	%r1,2
	lcr	%r0,%r3
	nr	%r0,%r5
	ar	%r4,%r0
	lgfr	%r1,%r1
	sll	%r2,2
	lhi	%r0,1
	lgfr	%r2,%r2
	ltgr	%r1,%r1
	jne	.L2506
.L2597:
	lcr	%r4,%r4
	j	.L2598
.L2508:
	lhi	%r4,0
.L2598:
	lgfr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ltgr	%r2,%r2
	jl	.L2722
	lhi	%r1,1
	lhi	%r12,0
.L2603:
	ltgr	%r3,%r3
	jhe	.L2604
	lcgr	%r3,%r3
	lr	%r12,%r1
.L2604:
	lr	%r0,%r2
	lr	%r4,%r3
	clr	%r2,%r3
	jle	.L2723
	lhi	%r5,1
	ltr	%r3,%r3
	jl	.L2717
	sllk	%r11,%r3,1
	lhi	%r3,2
	clr	%r2,%r11
	jle	.L2607
	lhi	%r5,2
	lr	%r4,%r11
	lhi	%r9,11
	ltr	%r11,%r11
	jl	.L2717
.L2609:
	sll	%r11,1
	sll	%r3,1
	clr	%r0,%r11
	jle	.L2607
	brct	%r9,.L2685
.L2616:
	lghi	%r4,0
	lcgr	%r2,%r4
	lgdr	%r11,%f2
	.cfi_remember_state
	.cfi_restore 11
	ltr	%r12,%r12
	lgdr	%r10,%f4
	.cfi_restore 10
	locgre	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
.L2685:
	.cfi_restore_state
	lr	%r5,%r3
	lr	%r4,%r11
	ltr	%r11,%r11
	jl	.L2717
	sll	%r11,1
	sll	%r3,1
	clr	%r0,%r11
	jle	.L2607
	lr	%r5,%r3
	lr	%r4,%r11
	ltr	%r11,%r11
	jl	.L2717
	sll	%r11,1
	sll	%r3,1
	clr	%r0,%r11
	jle	.L2607
	lr	%r5,%r3
	lr	%r4,%r11
	ltr	%r11,%r11
	jhe	.L2609
.L2717:
	srk	%r2,%r0,%r4
	srlk	%r10,%r5,1
	srlk	%r9,%r4,1
	clr	%r0,%r4
	locrhe	%r0,%r2
	lhi	%r2,0
	locrhe	%r2,%r5
	ltr	%r10,%r10
	jne	.L2612
.L2606:
	llgfr	%r4,%r2
	lcgr	%r2,%r4
	lgdr	%r11,%f2
	.cfi_remember_state
	.cfi_restore 11
	ltr	%r12,%r12
	lgdr	%r10,%f4
	.cfi_restore 10
	locgre	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r9,%f6
	.cfi_restore 9
	br	%r14
.L2607:
	.cfi_restore_state
	ltr	%r3,%r3
	je	.L2616
	srk	%r1,%r0,%r11
	lhi	%r2,0
	llgtr	%r10,%r5
	clr	%r0,%r11
	llgtr	%r9,%r4
	locrhe	%r0,%r1
	locrhe	%r2,%r3
	lr	%r5,%r3
	lr	%r4,%r11
.L2612:
	srk	%r1,%r0,%r9
	lhi	%r3,0
	srlk	%r11,%r5,2
	clr	%r0,%r9
	locrnhe	%r1,%r0
	clr	%r9,%r0
	locrnle	%r10,%r3
	srlk	%r9,%r4,2
	or	%r2,%r10
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	lhi	%r10,0
	srlk	%r0,%r5,3
	clr	%r1,%r9
	locrnhe	%r3,%r1
	locrnhe	%r11,%r10
	or	%r2,%r11
	srlk	%r9,%r4,3
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r3,%r9
	srlk	%r11,%r5,4
	srlk	%r10,%r4,4
	clr	%r3,%r9
	locrnhe	%r1,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r9,%r1,%r10
	srlk	%r0,%r5,5
	srlk	%r3,%r4,5
	clr	%r1,%r10
	locrnhe	%r9,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r9,%r3
	lhi	%r10,0
	srlk	%r11,%r5,6
	clr	%r9,%r3
	locrnhe	%r1,%r9
	locrnhe	%r0,%r10
	or	%r2,%r0
	srlk	%r9,%r4,6
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	srlk	%r0,%r5,7
	srlk	%r10,%r4,7
	clr	%r1,%r9
	locrnhe	%r3,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r9,%r3,%r10
	srlk	%r11,%r5,8
	srlk	%r1,%r4,8
	clr	%r3,%r10
	locrnhe	%r9,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r9,%r1
	lhi	%r10,0
	srlk	%r0,%r5,9
	clr	%r9,%r1
	locrnhe	%r3,%r9
	locrnhe	%r11,%r10
	or	%r2,%r11
	srlk	%r9,%r4,9
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r3,%r9
	srlk	%r11,%r5,10
	srlk	%r10,%r4,10
	clr	%r3,%r9
	locrnhe	%r1,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r9,%r1,%r10
	srlk	%r0,%r5,11
	srlk	%r3,%r4,11
	clr	%r1,%r10
	locrnhe	%r9,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r9,%r3
	lhi	%r10,0
	srlk	%r11,%r5,12
	clr	%r9,%r3
	locrnhe	%r1,%r9
	locrnhe	%r0,%r10
	or	%r2,%r0
	srlk	%r9,%r4,12
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	srlk	%r0,%r5,13
	srlk	%r10,%r4,13
	clr	%r1,%r9
	locrnhe	%r3,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r9,%r3,%r10
	srlk	%r11,%r5,14
	srlk	%r1,%r4,14
	clr	%r3,%r10
	locrnhe	%r9,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r9,%r1
	lhi	%r10,0
	srlk	%r0,%r5,15
	clr	%r9,%r1
	locrnhe	%r3,%r9
	locrnhe	%r11,%r10
	or	%r2,%r11
	srlk	%r9,%r4,15
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r3,%r9
	srlk	%r11,%r5,16
	srlk	%r10,%r4,16
	clr	%r3,%r9
	locrnhe	%r1,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r9,%r1,%r10
	srlk	%r0,%r5,17
	srlk	%r3,%r4,17
	clr	%r1,%r10
	locrnhe	%r9,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r9,%r3
	lhi	%r10,0
	srlk	%r11,%r5,18
	clr	%r9,%r3
	locrnhe	%r1,%r9
	locrnhe	%r0,%r10
	or	%r2,%r0
	srlk	%r9,%r4,18
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	srlk	%r0,%r5,19
	srlk	%r10,%r4,19
	clr	%r1,%r9
	locrnhe	%r3,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r9,%r3,%r10
	srlk	%r11,%r5,20
	srlk	%r1,%r4,20
	clr	%r3,%r10
	locrnhe	%r9,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r9,%r1
	lhi	%r10,0
	srlk	%r0,%r5,21
	clr	%r9,%r1
	locrnhe	%r3,%r9
	locrnhe	%r11,%r10
	or	%r2,%r11
	srlk	%r9,%r4,21
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r3,%r9
	srlk	%r11,%r5,22
	srlk	%r10,%r4,22
	clr	%r3,%r9
	locrnhe	%r1,%r3
	lhi	%r3,0
	locrnhe	%r0,%r3
	or	%r2,%r0
	ltr	%r11,%r11
	je	.L2606
	srk	%r9,%r1,%r10
	srlk	%r0,%r5,23
	srlk	%r3,%r4,23
	clr	%r1,%r10
	locrnhe	%r9,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r9,%r3
	lhi	%r10,0
	srlk	%r11,%r5,24
	clr	%r9,%r3
	locrnhe	%r1,%r9
	locrnhe	%r0,%r10
	or	%r2,%r0
	srlk	%r9,%r4,24
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	srlk	%r0,%r5,25
	srlk	%r10,%r4,25
	clr	%r1,%r9
	locrnhe	%r3,%r1
	lhi	%r1,0
	locrnhe	%r11,%r1
	or	%r2,%r11
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r3,%r10
	lhi	%r9,0
	srlk	%r11,%r5,26
	clr	%r3,%r10
	locrnhe	%r0,%r9
	locrnhe	%r1,%r3
	or	%r2,%r0
	srlk	%r9,%r4,26
	ltr	%r11,%r11
	je	.L2606
	srk	%r3,%r1,%r9
	lhi	%r0,0
	srlk	%r10,%r5,27
	clr	%r1,%r9
	locrnhe	%r3,%r1
	locrnhe	%r11,%r0
	or	%r2,%r11
	srlk	%r1,%r4,27
	ltr	%r10,%r10
	je	.L2606
	srk	%r0,%r3,%r1
	lhi	%r11,0
	srlk	%r9,%r5,28
	clr	%r3,%r1
	locrnhe	%r0,%r3
	locrnhe	%r10,%r11
	or	%r2,%r10
	srlk	%r3,%r4,28
	ltr	%r9,%r9
	je	.L2606
	srk	%r1,%r0,%r3
	lhi	%r10,0
	srlk	%r11,%r5,29
	clr	%r0,%r3
	locrnhe	%r9,%r10
	locrnhe	%r1,%r0
	or	%r2,%r9
	srlk	%r10,%r4,29
	ltr	%r11,%r11
	je	.L2606
	srk	%r9,%r1,%r10
	lhi	%r3,0
	srlk	%r0,%r5,30
	clr	%r1,%r10
	locrnhe	%r9,%r1
	locrnhe	%r11,%r3
	or	%r2,%r11
	srlk	%r10,%r4,30
	ltr	%r0,%r0
	je	.L2606
	srk	%r1,%r9,%r10
	lhi	%r11,0
	srl	%r4,31
	clr	%r9,%r10
	locrnhe	%r1,%r9
	locrnhe	%r0,%r11
	or	%r2,%r0
	ltr	%r5,%r5
	jhe	.L2606
	slr	%r1,%r4
	lhi	%r5,0
	alcr	%r5,%r5
	or	%r2,%r5
	j	.L2606
.L2722:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L2603
.L2723:
	xr	%r2,%r3
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	j	.L2606
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	ltgr	%r2,%r2
	jl	.L2850
	lpgr	%r1,%r3
	lhi	%r0,0
	lr	%r3,%r2
	lr	%r4,%r1
	clr	%r2,%r1
	jle	.L2851
.L2727:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r2,1
	ltr	%r4,%r4
	jl	.L2844
	sllk	%r12,%r4,1
	lhi	%r2,2
	clr	%r12,%r3
	jhe	.L2731
	lr	%r4,%r12
	lhi	%r1,11
	ltr	%r12,%r12
	jl	.L2844
.L2733:
	sll	%r12,1
	sll	%r2,1
	clr	%r12,%r3
	jhe	.L2731
	brct	%r1,.L2811
.L2732:
	llgfr	%r2,%r3
	ltr	%r0,%r0
	je	.L2725
	lcgr	%r2,%r2
.L2725:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2811:
	.cfi_restore_state
	lr	%r4,%r12
	ltr	%r12,%r12
	jl	.L2844
	sll	%r12,1
	sll	%r2,1
	clr	%r12,%r3
	jhe	.L2731
	lr	%r4,%r12
	ltr	%r12,%r12
	jl	.L2844
	sll	%r12,1
	sll	%r2,1
	clr	%r12,%r3
	jhe	.L2731
	lr	%r4,%r12
	ltr	%r12,%r12
	jhe	.L2733
.L2844:
	srk	%r12,%r3,%r4
	srlk	%r1,%r2,1
	srlk	%r5,%r4,1
	clr	%r4,%r3
	locrle	%r3,%r12
	ltr	%r1,%r1
	jne	.L2736
	j	.L2732
.L2731:
	ltr	%r2,%r2
	je	.L2732
	srk	%r5,%r3,%r12
	clr	%r12,%r3
	locrle	%r3,%r5
	llgtr	%r5,%r4
	lr	%r4,%r12
.L2736:
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,2
	clr	%r3,%r5
	srlk	%r5,%r2,2
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,3
	clr	%r3,%r1
	srlk	%r1,%r2,3
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,4
	clr	%r3,%r5
	srlk	%r5,%r2,4
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,5
	clr	%r3,%r1
	srlk	%r1,%r2,5
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,6
	clr	%r3,%r5
	srlk	%r5,%r2,6
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,7
	clr	%r3,%r1
	srlk	%r1,%r2,7
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,8
	clr	%r3,%r5
	srlk	%r5,%r2,8
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,9
	clr	%r3,%r1
	srlk	%r1,%r2,9
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,10
	clr	%r3,%r5
	srlk	%r5,%r2,10
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,11
	clr	%r3,%r1
	srlk	%r1,%r2,11
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,12
	clr	%r3,%r5
	srlk	%r5,%r2,12
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,13
	clr	%r3,%r1
	srlk	%r1,%r2,13
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,14
	clr	%r3,%r5
	srlk	%r5,%r2,14
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,15
	clr	%r3,%r1
	srlk	%r1,%r2,15
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,16
	clr	%r3,%r5
	srlk	%r5,%r2,16
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,17
	clr	%r3,%r1
	srlk	%r1,%r2,17
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,18
	clr	%r3,%r5
	srlk	%r5,%r2,18
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,19
	clr	%r3,%r1
	srlk	%r1,%r2,19
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,20
	clr	%r3,%r5
	srlk	%r5,%r2,20
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,21
	clr	%r3,%r1
	srlk	%r1,%r2,21
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,22
	clr	%r3,%r5
	srlk	%r5,%r2,22
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,23
	clr	%r3,%r1
	srlk	%r1,%r2,23
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,24
	clr	%r3,%r5
	srlk	%r5,%r2,24
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,25
	clr	%r3,%r1
	srlk	%r1,%r2,25
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srlk	%r1,%r4,26
	clr	%r3,%r5
	srlk	%r5,%r2,26
	locrhe	%r3,%r12
	ltr	%r5,%r5
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,27
	clr	%r3,%r1
	srlk	%r1,%r2,27
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r1,%r3,%r5
	srlk	%r12,%r4,28
	clr	%r3,%r5
	srlk	%r5,%r2,28
	locrhe	%r3,%r1
	ltr	%r5,%r5
	je	.L2732
	srk	%r5,%r3,%r12
	srlk	%r1,%r4,29
	clr	%r3,%r12
	srlk	%r12,%r2,29
	locrhe	%r3,%r5
	ltr	%r12,%r12
	je	.L2732
	srk	%r12,%r3,%r1
	srlk	%r5,%r4,30
	clr	%r3,%r1
	srlk	%r1,%r2,30
	locrhe	%r3,%r12
	ltr	%r1,%r1
	je	.L2732
	srk	%r12,%r3,%r5
	srl	%r4,31
	clr	%r3,%r5
	locrhe	%r3,%r12
	ltr	%r2,%r2
	jhe	.L2732
	srk	%r2,%r3,%r4
	clr	%r3,%r4
	locrhe	%r3,%r2
	j	.L2732
.L2850:
	.cfi_restore 12
	lcgr	%r5,%r2
	lhi	%r0,1
	lpgr	%r2,%r3
	lr	%r3,%r5
	lr	%r4,%r2
	clr	%r5,%r2
	jh	.L2727
	srk	%r0,%r5,%r2
	cr	%r5,%r2
	locre	%r5,%r0
	llgfr	%r4,%r5
	lcgr	%r2,%r4
	br	%r14
.L2851:
	srk	%r3,%r2,%r1
	cr	%r2,%r1
	locre	%r2,%r3
	llgfr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE130:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB131:
	.cfi_startproc
	clr	%r3,%r2
	jhe	.L2942
	tmll	%r3,32768
	jne	.L2856
	risbg	%r1,%r3,48,128+62,1
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clr	%r2,%r1
	jle	.L2863
	tmll	%r1,32768
	jne	.L2863
	risbg	%r1,%r3,48,128+61,2
	clr	%r2,%r1
	jle	.L2865
	tmll	%r1,32768
	jne	.L2865
	risbg	%r1,%r3,48,128+60,3
	clr	%r2,%r1
	jle	.L2867
	tmll	%r1,32768
	jne	.L2867
	risbg	%r1,%r3,48,128+59,4
	clr	%r2,%r1
	jle	.L2869
	tmll	%r1,32768
	jne	.L2869
	risbg	%r1,%r3,48,128+58,5
	clr	%r2,%r1
	jle	.L2871
	tmll	%r1,32768
	jne	.L2871
	risbg	%r1,%r3,48,128+57,6
	clr	%r2,%r1
	jle	.L2873
	tmll	%r1,32768
	jne	.L2873
	risbg	%r1,%r3,48,128+56,7
	clr	%r2,%r1
	jle	.L2875
	tmll	%r1,32768
	jne	.L2875
	risbg	%r1,%r3,48,128+55,8
	clr	%r2,%r1
	jle	.L2877
	tmll	%r1,32768
	jne	.L2877
	risbg	%r1,%r3,48,128+54,9
	clr	%r2,%r1
	jle	.L2879
	tmll	%r1,32768
	jne	.L2879
	risbg	%r1,%r3,48,128+53,10
	clr	%r2,%r1
	jle	.L2881
	tmll	%r1,32768
	jne	.L2881
	risbg	%r1,%r3,48,128+52,11
	clr	%r2,%r1
	jle	.L2883
	tmll	%r1,32768
	jne	.L2883
	risbg	%r1,%r3,48,128+51,12
	clr	%r2,%r1
	jle	.L2885
	tmll	%r1,32768
	jne	.L2885
	risbg	%r1,%r3,48,128+50,13
	clr	%r2,%r1
	jle	.L2887
	tmll	%r1,32768
	jne	.L2887
	risbg	%r1,%r3,48,128+49,14
	clr	%r2,%r1
	jle	.L2889
	tmll	%r1,32768
	jne	.L2889
	risbg	%r11,%r3,48,128+48,15
	clr	%r2,%r11
	jle	.L2890
	lhi	%r3,0
	ltgr	%r11,%r11
	jne	.L2943
.L2859:
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locrne	%r3,%r2
	lgdr	%r11,%f2
	.cfi_restore 11
	llghr	%r2,%r3
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L2863:
	.cfi_restore_state
	lhi	%r10,2
.L2858:
	srk	%r12,%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r0,%r12
	clr	%r2,%r1
	lhi	%r12,0
	locrnhe	%r0,%r2
	locrhe	%r12,%r10
	llghr	%r0,%r0
	risbg	%r3,%r10,64-15,128+63,48+15
	srk	%r2,%r0,%r11
	llghr	%r2,%r2
	llhr	%r5,%r10
	clr	%r0,%r11
	lhi	%r11,0
	locrnhe	%r2,%r0
	locrnhe	%r3,%r11
	or	%r3,%r12
	srlk	%r10,%r5,2
	llghr	%r2,%r2
	srlg	%r11,%r1,2
	ltr	%r10,%r10
	je	.L2859
	srk	%r12,%r2,%r11
	llghr	%r0,%r12
	slrk	%r11,%r2,%r11
	srlk	%r12,%r5,3
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r11,%r1,3
	ltr	%r12,%r12
	je	.L2859
	srk	%r0,%r2,%r11
	llghr	%r0,%r0
	srlk	%r10,%r5,4
	slrk	%r11,%r2,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r12,%r0
	or	%r3,%r12
	llghr	%r2,%r2
	srlg	%r12,%r1,4
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r11,%r5,5
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r12,%r1,5
	ltr	%r11,%r11
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r10,%r5,6
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r11,%r0
	or	%r3,%r11
	llghr	%r2,%r2
	srlg	%r12,%r1,6
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r11,%r5,7
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r12,%r1,7
	ltr	%r11,%r11
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r10,%r5,8
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r11,%r0
	or	%r3,%r11
	llghr	%r2,%r2
	srlg	%r12,%r1,8
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r11,%r5,9
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r12,%r1,9
	ltr	%r11,%r11
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r10,%r5,10
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r11,%r0
	or	%r3,%r11
	llghr	%r2,%r2
	srlg	%r12,%r1,10
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r11,%r5,11
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r12,%r1,11
	ltr	%r11,%r11
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r10,%r5,12
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r11,%r0
	or	%r3,%r11
	llghr	%r2,%r2
	srlg	%r12,%r1,12
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r11,%r5,13
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r10,%r0
	or	%r3,%r10
	llghr	%r2,%r2
	srlg	%r12,%r1,13
	ltr	%r11,%r11
	je	.L2859
	srk	%r0,%r2,%r12
	llghr	%r0,%r0
	srlk	%r10,%r5,14
	slrk	%r12,%r2,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locrne	%r2,%r0
	lhi	%r0,0
	locre	%r11,%r0
	or	%r3,%r11
	llghr	%r2,%r2
	srlg	%r12,%r1,14
	ltr	%r10,%r10
	je	.L2859
	srk	%r0,%r2,%r12
	srlg	%r11,%r1,15
	lhi	%r1,0
	slrk	%r12,%r2,%r12
	alcr	%r1,%r1
	llghr	%r0,%r0
	ltr	%r1,%r1
	lhi	%r12,0
	locrne	%r2,%r0
	locre	%r10,%r12
	or	%r3,%r10
	llghr	%r2,%r2
	chi	%r5,16384
	je	.L2859
	srk	%r5,%r2,%r11
	lhi	%r0,0
	llghr	%r10,%r5
	slrk	%r11,%r2,%r11
	alcr	%r0,%r0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	ltr	%r0,%r0
	locre	%r10,%r2
	llghr	%r2,%r10
	or	%r3,%r0
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	ltgr	%r4,%r4
	locrne	%r3,%r2
	llghr	%r2,%r3
	br	%r14
.L2865:
	.cfi_restore_state
	lhi	%r10,4
	j	.L2858
.L2867:
	lhi	%r10,8
	j	.L2858
.L2869:
	lhi	%r10,16
	j	.L2858
.L2879:
	lhi	%r10,512
	j	.L2858
.L2871:
	lhi	%r10,32
	j	.L2858
.L2873:
	lhi	%r10,64
	j	.L2858
.L2875:
	lhi	%r10,128
	j	.L2858
.L2877:
	lhi	%r10,256
	j	.L2858
.L2942:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	xgrk	%r5,%r3,%r2
	srk	%r1,%r2,%r3
	aghi	%r5,-1
	ltgr	%r5,%r5
	llghr	%r3,%r1
	locrnl	%r3,%r2
	risbg	%r5,%r5,64-1,128+63,0+1
	llghr	%r1,%r3
.L2939:
	ltgr	%r4,%r4
	locrne	%r5,%r1
	llghr	%r2,%r5
	br	%r14
.L2881:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r10,1024
	j	.L2858
.L2883:
	lhi	%r10,2048
	j	.L2858
.L2885:
	lhi	%r10,4096
	j	.L2858
.L2887:
	lhi	%r10,8192
	j	.L2858
.L2889:
	lhi	%r10,16384
	j	.L2858
.L2943:
	lhi	%r10,-32768
	llill	%r1,32768
	j	.L2858
.L2890:
	llill	%r1,32768
	lhi	%r10,-32768
	j	.L2858
.L2856:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r5,1
	llghr	%r1,%r2
	j	.L2939
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	clgr	%r3,%r2
	jhe	.L2978
	lghi	%r1,1
	lhi	%r0,16
.L2946:
	risbg	%r5,%r3,32,128+32,0
	jne	.L2951
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r2,%r3
	jle	.L2948
	risbg	%r5,%r3,32,128+32,0
	jne	.L2951
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r2,%r3
	jle	.L2948
	risbg	%r5,%r3,32,128+32,0
	jne	.L2951
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r2,%r3
	jle	.L2948
	risbg	%r5,%r3,32,128+32,0
	jne	.L2951
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r2,%r3
	jle	.L2948
	brct	%r0,.L2946
.L2976:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L2948:
	ltgr	%r1,%r1
	je	.L2976
.L2951:
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r5,0
.L2952:
	sgrk	%r0,%r2,%r3
	slgrk	%r12,%r2,%r3
	srlg	%r3,%r3,1
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	locgrne	%r2,%r0
	lghi	%r0,0
	locgrne	%r0,%r1
	ogr	%r5,%r0
	srlg	%r1,%r1,1
	ltgr	%r1,%r1
	jne	.L2952
	ltgr	%r4,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	locgre	%r2,%r5
	br	%r14
.L2978:
	sgrk	%r0,%r2,%r3
	lhi	%r1,0
	slgrk	%r3,%r2,%r3
	alcr	%r1,%r1
	llgcr	%r5,%r1
	ltr	%r1,%r1
	locgrne	%r2,%r0
	j	.L2976
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
	je	.L2981
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
	br	%r14
.L2981:
	ltgr	%r3,%r3
	ber	%r14
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
	br	%r14
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
	lg	%r0,8(%r3)
	tmll	%r4,64
	je	.L2987
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L2988:
	lgr	%r0,%r4
.L2989:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L2987:
	ltgr	%r4,%r4
	je	.L2989
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L2988
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
	je	.L2995
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
	br	%r14
.L2995:
	ltgr	%r3,%r3
	ber	%r14
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
	br	%r14
	.cfi_endproc
.LFE135:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
.LFB136:
	.cfi_startproc
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L3001
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L3002:
	lgr	%r0,%r4
.L3003:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3001:
	ltgr	%r4,%r4
	je	.L3003
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3002
	.cfi_endproc
.LFE136:
	.size	__ashrti3, .-__ashrti3
	.align	8
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
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB139:
	.cfi_startproc
	clfi	%r2,65535
	lhi	%r1,16
	lhi	%r3,0
	lhi	%r4,8
	slbr	%r3,%r3
	lcr	%r3,%r3
	sll	%r3,4
	sr	%r1,%r3
	srlk	%r1,%r2,0(%r1)
	risbg	%r2,%r1,48,128+55,0
	ahi	%r2,-1
	risbg	%r5,%r2,60,128+60,64-28
	sr	%r4,%r5
	ar	%r3,%r5
	srl	%r1,0(%r4)
	risbg	%r4,%r1,56,128+59,0
	ahi	%r4,-1
	lhi	%r0,4
	risbg	%r5,%r4,61,128+61,64-29
	ark	%r4,%r5,%r3
	srk	%r3,%r0,%r5
	lhi	%r2,2
	srl	%r1,0(%r3)
	risbg	%r0,%r1,60,128+61,0
	ahi	%r0,-1
	risbg	%r3,%r0,62,128+62,64-30
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
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
.LFB140:
	.cfi_startproc
	lg	%r4,0(%r2)
	lgr	%r3,%r2
	lpgr	%r1,%r4
	aghi	%r1,-1
	srlg	%r5,%r1,63
	lay	%r2,-1(%r5)
	ngr	%r2,%r4
	sll	%r5,6
	lghi	%r0,0
	ltgr	%r4,%r4
	locge	%r0,8(%r3)
	ogr	%r2,%r0
	flogr	%r2,%r2
	ar	%r2,%r5
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
	cr	%r4,%r1
	jl	.L3018
	jh	.L3019
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r3,0
	lhi	%r2,1
	locrh	%r2,%r0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3018:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3019:
	lhi	%r2,2
	risbg	%r2,%r2,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE141:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB142:
	.cfi_startproc
	srag	%r4,%r2,32
	srag	%r1,%r3,32
	cr	%r4,%r1
	jl	.L3025
	jh	.L3026
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L3025:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3026:
	lhi	%r0,1
	lgfr	%r2,%r0
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
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	lg	%r2,0(%r2)
	cg	%r2,0(%r3)
	jl	.L3031
	jh	.L3032
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r3,0
	lhi	%r5,1
	locrh	%r5,%r0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L3031:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L3032:
	lhi	%r5,2
	risbg	%r2,%r5,62,128+63,0
	br	%r14
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
	risbg	%r5,%r3,59,128+59,64-27
	srlk	%r1,%r2,0(%r5)
	llcr	%r2,%r1
	ahi	%r2,-1
	risbg	%r3,%r2,60,128+60,64-28
	srl	%r1,0(%r3)
	risbg	%r0,%r1,60,128+63,0
	ahi	%r0,-1
	risbg	%r2,%r0,61,128+61,64-29
	ar	%r5,%r3
	srl	%r1,0(%r2)
	ar	%r5,%r2
	risbg	%r3,%r1,62,128+63,0
	ahi	%r3,-1
	risbg	%r2,%r3,62,128+62,64-30
	lhi	%r4,2
	srl	%r1,0(%r2)
	ar	%r5,%r2
	risbg	%r0,%r1,63,128+63,0
	risbg	%r1,%r1,64-1,128+63,62+1
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
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
.LFB145:
	.cfi_startproc
	lg	%r5,8(%r2)
	lpgr	%r1,%r5
	aghi	%r1,-1
	ltgr	%r5,%r5
	srlg	%r1,%r1,63
	lghi	%r4,0
	lay	%r3,-1(%r1)
	locge	%r4,0(%r2)
	ngr	%r3,%r5
	ogr	%r4,%r3
	lcgr	%r5,%r4
	sllk	%r2,%r1,6
	ngr	%r4,%r5
	lghi	%r0,63
	flogr	%r4,%r4
	sgr	%r0,%r4
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
	jne	.L3041
	lcgr	%r3,%r1
	lghi	%r2,63
	ngr	%r3,%r1
	flogr	%r4,%r3
	sgr	%r2,%r4
	ahi	%r2,65
	ltgr	%r1,%r1
	lhi	%r5,0
	locre	%r2,%r5
	lgfr	%r2,%r2
	br	%r14
.L3041:
	lcgr	%r0,%r4
	lghi	%r2,63
	ngr	%r4,%r0
	flogr	%r4,%r4
	sgr	%r2,%r4
	ahi	%r2,1
	lgfr	%r2,%r2
	br	%r14
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
	je	.L3046
	risbg	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
	br	%r14
.L3046:
	ltgr	%r3,%r3
	ber	%r14
	risbg	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
	br	%r14
	.cfi_endproc
.LFE147:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
.LFB148:
	.cfi_startproc
	lg	%r0,0(%r3)
	lg	%r1,8(%r3)
	tmll	%r4,64
	je	.L3052
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L3053:
	lgr	%r0,%r4
.L3054:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3052:
	ltgr	%r4,%r4
	je	.L3054
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L3053
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
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
	lghi	%r0,0
	srlk	%r3,%r5,16
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
	risbg	%r0,%r1,0,0+32-1,64-0-32
	lgr	%r2,%r0
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
	lghi	%r2,0
	srlk	%r11,%r5,16
	llhr	%r5,%r5
	ar	%r1,%r11
	llhr	%r11,%r1
	srl	%r1,16
	ar	%r4,%r11
	ar	%r1,%r12
	sllk	%r12,%r4,16
	srl	%r4,16
	ar	%r5,%r12
	ar	%r1,%r4
	lr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	risbg	%r2,%r1,0,0+32-1,64-0-32
	lgdr	%r11,%f2
	.cfi_restore 11
	srag	%r4,%r2,32
	ar	%r4,%r0
	ar	%r3,%r4
	risbg	%r2,%r3,0,64-32-1,32
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
	algfr	%r1,%r4
	agr	%r5,%r3
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
	stg	%r3,8(%r2)
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
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
	stg	%r5,8(%r2)
	stg	%r4,0(%r2)
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
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB158:
	.cfi_startproc
	larl	%r5,.L3082
	srlg	%r1,%r2,1
	ng	%r1,.L3083-.L3082(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L3084-.L3082(%r5)
	ng	%r0,.L3084-.L3082(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3085-.L3082(%r5)
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
.L3082:
.L3085:
	.quad	1085102592571150095
.L3084:
	.quad	3689348814741910323
.L3083:
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
	llihf	%r11,1431655765
	lg	%r10,0(%r2)
	oilf	%r11,1431655765
	srlg	%r12,%r10,1
	ngrk	%r0,%r12,%r11
	lg	%r3,8(%r2)
	srlg	%r1,%r3,1
	ngrk	%r2,%r1,%r11
	slgr	%r3,%r2
	llihf	%r2,858993459
	slbgr	%r10,%r0
	lgr	%r5,%r3
	oilf	%r2,858993459
	srlg	%r4,%r10,2
	llihf	%r3,858993459
	oilf	%r3,858993459
	ngrk	%r12,%r10,%r3
	ngrk	%r11,%r4,%r3
	ngrk	%r1,%r5,%r2
	srlg	%r0,%r5,2
	ngrk	%r10,%r0,%r2
	algr	%r10,%r1
	alcgr	%r11,%r12
	srlg	%r5,%r10,4
	rosbg	%r5,%r11,0,3,60
	algr	%r5,%r10
	srlg	%r4,%r11,4
	llihf	%r3,252645135
	alcgr	%r4,%r11
	oilf	%r3,252645135
	llihf	%r11,252645135
	ngrk	%r12,%r4,%r3
	oilf	%r11,252645135
	ngrk	%r0,%r5,%r11
	agr	%r12,%r0
	srlg	%r2,%r12,32
	ar	%r2,%r12
	srlk	%r1,%r2,16
	ar	%r1,%r2
	srlk	%r10,%r1,8
	ar	%r10,%r1
	llgcr	%r2,%r10
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
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
	larl	%r5,.L3100
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L3101-.L3100(%r5)
	tmll	%r2,1
	je	.L3092
.L3094:
	mdbr	%f0,%f2
.L3092:
	srlk	%r3,%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3093
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L3094
.L3099:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3094
	j	.L3099
.L3093:
	ltr	%r2,%r2
	bher	%r14
	ld	%f4,.L3101-.L3100(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3100:
.L3101:
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
	larl	%r5,.L3111
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L3112-.L3111(%r5)
	tmll	%r2,1
	je	.L3103
.L3105:
	meebr	%f0,%f2
.L3103:
	srlk	%r3,%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3104
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L3105
.L3110:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L3105
	j	.L3110
.L3104:
	ltr	%r2,%r2
	bher	%r14
	le	%f4,.L3112-.L3111(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3111:
.L3112:
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
	risbg	%r4,%r2,64-32,128+63,0+32
	risbg	%r1,%r3,64-32,128+63,0+32
	clr	%r4,%r1
	jl	.L3115
	jh	.L3116
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r3,0
	lhi	%r2,1
	locrh	%r2,%r0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3115:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3116:
	lhi	%r2,2
	risbg	%r2,%r2,62,128+63,0
	br	%r14
	.cfi_endproc
.LFE163:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB164:
	.cfi_startproc
	risbg	%r4,%r2,64-32,128+63,0+32
	risbg	%r1,%r3,64-32,128+63,0+32
	clr	%r4,%r1
	jl	.L3122
	jh	.L3123
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L3122:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L3123:
	lhi	%r0,1
	lgfr	%r2,%r0
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
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	clc	0(8,%r2),0(%r3)
	jl	.L3128
	jh	.L3129
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r3,0
	lhi	%r2,1
	locrh	%r2,%r0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3128:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3129:
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
