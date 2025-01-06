	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z990+htm"
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
	lgr	%r0,%r4
	lghi	%r5,7
	aghi	%r0,-1
	lgr	%r1,%r4
	ngr	%r5,%r4
	je	.L54
	cghi	%r5,1
	je	.L104
	cghi	%r5,2
	je	.L105
	cghi	%r5,3
	je	.L106
	cghi	%r5,4
	je	.L107
	cghi	%r5,5
	je	.L108
	cghi	%r5,6
	je	.L109
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r0
.L109:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L108:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	aghi	%r4,-1
.L107:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L106:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	aghi	%r4,-1
.L105:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	aghi	%r4,-1
.L104:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	brctg	%r4,.L54
	br	%r14
.L7:
	ber	%r14
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r1,%r4
	lghi	%r5,14
	aghi	%r1,-1
	clgr	%r1,%r5
	jle	.L17
	lgr	%r0,%r3
	lghi	%r1,7
	ogr	%r0,%r2
	ngr	%r0,%r1
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L17
	la	%r5,1(%r3)
	lgr	%r0,%r2
	lghi	%r1,6
	sgr	%r0,%r5
	clgr	%r0,%r1
	jle	.L17
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r12,%r4
	nill	%r12,65528
	lghi	%r0,7
	lgr	%r5,%r12
	aghi	%r5,-8
	srlg	%r5,%r5,3
	lghi	%r1,0
	aghi	%r5,1
	ngr	%r0,%r5
	je	.L96
	cghi	%r0,1
	je	.L110
	cghi	%r0,2
	je	.L111
	cghi	%r0,3
	je	.L112
	cghi	%r0,4
	je	.L113
	cghi	%r0,5
	je	.L114
	cghi	%r0,6
	jne	.L169
.L115:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L114:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L113:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L112:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L111:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L110:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L157
.L96:
	srlg	%r12,%r5,3
.L11:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r5,32(%r1,%r3)
	stg	%r5,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r5,48(%r1,%r3)
	stg	%r5,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r12,.L11
.L157:
	lgr	%r5,%r4
	sgr	%r5,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r12,0(%r1,%r2)
	je	.L8
	mvc	0(1,%r12),0(%r3)
	cghi	%r5,1
	je	.L8
	mvc	1(1,%r12),1(%r3)
	cghi	%r5,2
	je	.L8
	mvc	2(1,%r12),2(%r3)
	cghi	%r5,3
	je	.L8
	mvc	3(1,%r12),3(%r3)
	cghi	%r5,4
	je	.L8
	mvc	4(1,%r12),4(%r3)
	cghi	%r5,5
	je	.L8
	mvc	5(1,%r12),5(%r3)
	cghi	%r5,6
	je	.L8
	mvc	6(1,%r12),6(%r3)
.L8:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L54:
	srlg	%r1,%r1,3
.L9:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r0,-3(%r4,%r3)
	stcy	%r0,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	icy	%r0,-5(%r4,%r3)
	stcy	%r0,-5(%r4,%r2)
	icy	%r5,-6(%r4,%r3)
	stcy	%r5,-6(%r4,%r2)
	icy	%r0,-7(%r4,%r3)
	stcy	%r0,-7(%r4,%r2)
	icy	%r5,-8(%r4,%r3)
	stcy	%r5,-8(%r4,%r2)
	aghi	%r4,-8
	brctg	%r1,.L9
	br	%r14
.L17:
	lghi	%r0,7
	lghi	%r1,0
	ngr	%r0,%r4
	lgr	%r5,%r4
	je	.L75
	cghi	%r0,1
	je	.L116
	cghi	%r0,2
	je	.L117
	cghi	%r0,3
	je	.L118
	cghi	%r0,4
	je	.L119
	cghi	%r0,5
	je	.L120
	cghi	%r0,6
	je	.L121
	mvc	0(1,%r2),0(%r3)
	lghi	%r1,1
.L121:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L120:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L119:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L118:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L117:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L116:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgr	%r4,%r1
	ber	%r14
.L75:
	srlg	%r4,%r5,3
.L14:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	stc	%r0,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r0,7(%r1,%r3)
	stc	%r0,7(%r1,%r2)
	aghi	%r1,8
	brctg	%r4,.L14
	br	%r14
.L169:
	.cfi_offset 12, -8
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L115
	.cfi_endproc
.LFE2:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB3:
	.cfi_startproc
	lhi	%r1,255
	nr	%r4,%r1
	ltgr	%r5,%r5
	je	.L235
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r1,7
	lgr	%r12,%r5
	aghi	%r12,-1
	ngr	%r1,%r5
	lgr	%r0,%r5
	je	.L193
	cghi	%r1,1
	je	.L216
	cghi	%r1,2
	je	.L217
	cghi	%r1,3
	je	.L218
	cghi	%r1,4
	je	.L219
	cghi	%r1,5
	je	.L220
	cghi	%r1,6
	jne	.L238
.L221:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L231
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L220:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L231
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L219:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L231
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L218:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L231
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L217:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L231
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L216:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L231
	cghi	%r5,1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	je	.L174
.L193:
	srlg	%r5,%r0,3
.L172:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cr	%r4,%r0
	je	.L231
	la	%r12,1(%r2)
	llgc	%r1,1(%r3)
	cr	%r4,%r1
	lgr	%r2,%r12
	stc	%r1,0(%r12)
	je	.L231
	la	%r2,1(%r12)
	llgc	%r0,2(%r3)
	cr	%r4,%r0
	stc	%r0,0(%r2)
	je	.L231
	llgc	%r1,3(%r3)
	la	%r2,2(%r12)
	stc	%r1,2(%r12)
	cr	%r4,%r1
	je	.L231
	llgc	%r0,4(%r3)
	la	%r2,1(%r2)
	stc	%r0,3(%r12)
	cr	%r4,%r0
	je	.L231
	llgc	%r1,5(%r3)
	la	%r2,1(%r2)
	stc	%r1,4(%r12)
	cr	%r4,%r1
	je	.L231
	llgc	%r0,6(%r3)
	la	%r2,1(%r2)
	stc	%r0,5(%r12)
	cr	%r4,%r0
	je	.L231
	llgc	%r1,7(%r3)
	la	%r2,1(%r2)
	stc	%r1,6(%r12)
	cr	%r4,%r1
	je	.L231
	la	%r3,8(%r3)
	la	%r2,7(%r12)
	brctg	%r5,.L172
.L174:
	lghi	%r2,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L231:
	.cfi_restore_state
	la	%r2,1(%r2)
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L238:
	.cfi_restore_state
	llgc	%r5,0(%r3)
	stc	%r5,0(%r2)
	cr	%r4,%r5
	je	.L231
	lgr	%r5,%r12
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	j	.L221
.L235:
	.cfi_restore 12
	lghi	%r2,0
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
	lhi	%r1,255
	nr	%r3,%r1
	ltgr	%r4,%r4
	je	.L244
	lgr	%r0,%r4
	lghi	%r1,7
	aghi	%r0,-1
	lgr	%r5,%r4
	ngr	%r1,%r4
	je	.L259
	cghi	%r1,1
	je	.L282
	cghi	%r1,2
	je	.L283
	cghi	%r1,3
	je	.L284
	cghi	%r1,4
	je	.L285
	cghi	%r1,5
	je	.L286
	cghi	%r1,6
	jne	.L303
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L304:
	la	%r2,1(%r2)
	aghi	%r4,-1
.L286:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L285:
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L284:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L283:
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L282:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	cghi	%r4,1
	la	%r2,1(%r2)
	je	.L244
.L259:
	srlg	%r4,%r5,3
.L241:
	llgc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	llgc	%r0,1(%r2)
	la	%r1,1(%r2)
	cr	%r0,%r3
	lgr	%r2,%r1
	ber	%r14
	llgc	%r5,1(%r1)
	la	%r2,1(%r1)
	cr	%r5,%r3
	ber	%r14
	llgc	%r0,2(%r1)
	la	%r2,2(%r1)
	cr	%r0,%r3
	ber	%r14
	llgc	%r5,3(%r1)
	la	%r2,1(%r2)
	cr	%r5,%r3
	ber	%r14
	llgc	%r0,4(%r1)
	la	%r2,1(%r2)
	cr	%r0,%r3
	ber	%r14
	llgc	%r5,5(%r1)
	la	%r2,1(%r2)
	cr	%r5,%r3
	ber	%r14
	llgc	%r0,6(%r1)
	la	%r2,1(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,7(%r1)
	brctg	%r4,.L241
.L244:
	lghi	%r2,0
	br	%r14
.L303:
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	la	%r2,1(%r2)
	lgr	%r4,%r0
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L304
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
	je	.L363
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r5,7
	lgr	%r12,%r4
	aghi	%r12,-1
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L326
	cghi	%r5,1
	je	.L349
	cghi	%r5,2
	je	.L350
	cghi	%r5,3
	je	.L351
	cghi	%r5,4
	je	.L352
	cghi	%r5,5
	je	.L353
	cghi	%r5,6
	jne	.L374
.L354:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L353:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L352:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L351:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L350:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L349:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	cghi	%r4,1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	je	.L311
.L326:
	srlg	%r12,%r0,3
.L307:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,1(%r2)
	llgc	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,2(%r2)
	llgc	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,3(%r2)
	llgc	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,4(%r2)
	llgc	%r5,4(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,5(%r2)
	llgc	%r5,5(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,6(%r2)
	llgc	%r5,6(%r3)
	cr	%r1,%r5
	jne	.L365
	llgc	%r1,7(%r2)
	llgc	%r5,7(%r3)
	cr	%r1,%r5
	jne	.L365
	la	%r2,8(%r2)
	la	%r3,8(%r3)
	brctg	%r12,.L307
.L311:
	lhi	%r1,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L365:
	.cfi_restore_state
	sr	%r1,%r5
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L374:
	.cfi_restore_state
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L365
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	j	.L354
.L363:
	.cfi_restore 12
	lhi	%r1,0
	lgfr	%r2,%r1
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
	ltgr	%r4,%r4
	ber	%r14
	stmg	%r12,%r13,144(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	lgr	%r0,%r2
	lgr	%r12,%r3
	lgr	%r13,%r4
	lgr	%r1,%r4
	mvcle	%r0,%r12,0
	jo	.-4
	lmg	%r12,%r13,144(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	lhi	%r1,255
	lgr	%r5,%r4
	nr	%r3,%r1
	lay	%r1,-1(%r2,%r4)
	lghi	%r4,7
	ngr	%r4,%r5
	je	.L403
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	cghi	%r4,1
	je	.L403
	cghi	%r4,2
	je	.L411
	cghi	%r4,3
	je	.L412
	cghi	%r4,4
	je	.L413
	cghi	%r4,5
	je	.L414
	cghi	%r4,6
	jne	.L433
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L414:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L413:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L412:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L411:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L403:
	srlg	%r5,%r5,3
	lgr	%r4,%r1
	aghi	%r5,1
	aghi	%r4,-1
	lgr	%r2,%r1
	brctg	%r5,.L428
	lghi	%r2,0
	br	%r14
.L428:
	llgc	%r0,0(%r1)
	cr	%r0,%r3
	ber	%r14
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L424:
	lgr	%r12,%r1
	llgc	%r0,-1(%r1)
	aghi	%r12,-2
	lgr	%r2,%r4
	cr	%r0,%r3
	je	.L386
	lgr	%r0,%r1
	llgc	%r4,-2(%r1)
	aghi	%r0,-3
	lgr	%r2,%r12
	cr	%r4,%r3
	je	.L386
	aghi	%r12,-2
	llgc	%r4,-3(%r1)
	cr	%r4,%r3
	lgr	%r2,%r0
	je	.L386
	aghi	%r0,-2
	llgc	%r4,-4(%r1)
	cr	%r4,%r3
	lgr	%r2,%r12
	je	.L386
	aghi	%r12,-2
	llgc	%r4,-5(%r1)
	cr	%r4,%r3
	lgr	%r2,%r0
	je	.L386
	aghi	%r0,-2
	llgc	%r4,-6(%r1)
	cr	%r4,%r3
	lgr	%r2,%r12
	je	.L386
	lgr	%r2,%r0
	aghi	%r1,-8
	llgc	%r12,0(%r2)
	cr	%r12,%r3
	je	.L386
	lgr	%r4,%r1
	lgr	%r2,%r1
	aghi	%r4,-1
	brctg	%r5,.L389
	lghi	%r2,0
.L386:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L433:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L414
	br	%r14
.L389:
	.cfi_offset 12, -8
	llgc	%r0,0(%r1)
	cr	%r0,%r3
	jne	.L424
	j	.L386
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
	stmg	%r12,%r13,144(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	lgr	%r0,%r2
	lghi	%r12,0
	lghi	%r13,0
	lgr	%r1,%r4
	mvcle	%r0,%r12,0(%r3)
	jo	.-4
	lmg	%r12,%r13,144(%r15)
	.cfi_restore 13
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
.L446:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	ltgr	%r0,%r0
	la	%r2,1(%r2)
	ber	%r14
	la	%r2,1(%r2)
	llgc	%r0,1(%r3)
	ltgr	%r0,%r0
	la	%r3,1(%r3)
	stc	%r0,0(%r2)
	jne	.L446
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
	lhi	%r1,255
	nr	%r3,%r1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	ber	%r14
.L460:
	la	%r2,1(%r2)
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L460
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
.L464:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ltr	%r1,%r1
	la	%r2,1(%r2)
	jne	.L464
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	ic	%r0,0(%r3)
	ic	%r4,0(%r2)
	lhi	%r5,255
	lhi	%r12,255
	nr	%r5,%r4
	nr	%r12,%r0
	lghi	%r1,1
	cr	%r5,%r12
	je	.L468
	j	.L469
.L470:
	ic	%r4,0(%r1,%r2)
	aghi	%r1,1
	lhi	%r5,255
	lhi	%r12,255
	nr	%r5,%r4
	icy	%r0,-1(%r1,%r3)
	nr	%r12,%r0
	cr	%r5,%r12
	jne	.L469
.L468:
	tml	%r4,255
	jne	.L470
	lhi	%r5,0
.L469:
	lhi	%r2,255
	lg	%r12,152(%r15)
	.cfi_restore 12
	nr	%r0,%r2
	sr	%r5,%r0
	lgfr	%r2,%r5
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
	lgr	%r3,%r2
	je	.L482
.L481:
	cli	1(%r2),0
	la	%r2,1(%r2)
	jne	.L481
	sgr	%r2,%r3
	br	%r14
.L482:
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
	ltgr	%r1,%r4
	je	.L493
	ic	%r5,0(%r2)
	lhi	%r4,255
	nr	%r4,%r5
	je	.L536
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lay	%r10,-1(%r1,%r2)
	lghi	%r12,3
	sgr	%r10,%r2
	ngr	%r12,%r10
	je	.L509
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L535
	cr	%r11,%r4
	jne	.L488
	lhi	%r4,255
	ic	%r5,1(%r2)
	nr	%r4,%r5
	la	%r2,1(%r2)
	la	%r1,1(%r3)
	je	.L529
	cghi	%r12,1
	lgr	%r3,%r1
	je	.L509
	cghi	%r12,2
	je	.L522
	ic	%r1,0(%r1)
	lhi	%r0,255
	nr	%r0,%r1
	je	.L535
	cr	%r0,%r4
	jne	.L488
	la	%r2,1(%r2)
	la	%r4,1(%r3)
	icm	%r5,1,0(%r2)
	je	.L529
	lgr	%r3,%r4
.L522:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	je	.L535
	lhi	%r4,255
	nr	%r4,%r5
	cr	%r12,%r4
	jne	.L488
	la	%r2,1(%r2)
	la	%r11,1(%r3)
	icm	%r5,1,0(%r2)
	je	.L529
	lgr	%r3,%r11
.L509:
	srlg	%r0,%r10,2
	aghi	%r0,1
.L489:
	ic	%r1,0(%r3)
	lhi	%r10,255
	nr	%r10,%r1
	je	.L535
	lhi	%r4,255
	nr	%r4,%r5
	brctg	%r0,.L491
.L535:
	lhi	%r4,255
	nr	%r4,%r5
.L488:
	lhi	%r3,255
	nr	%r1,%r3
	sr	%r4,%r1
	lgfr	%r2,%r4
	lmg	%r10,%r12,136(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L491:
	.cfi_restore_state
	cr	%r10,%r4
	jne	.L488
	ic	%r5,1(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	la	%r12,1(%r3)
	lr	%r4,%r11
	je	.L529
	ic	%r1,0(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	lgr	%r3,%r12
	je	.L535
	cr	%r10,%r11
	jne	.L488
	ic	%r5,2(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L529
	lhi	%r10,255
	ic	%r1,1(%r12)
	nr	%r10,%r1
	la	%r3,1(%r12)
	je	.L535
	cr	%r10,%r11
	jne	.L488
	ic	%r5,3(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L529
	ic	%r1,2(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	la	%r3,2(%r12)
	je	.L535
	cr	%r10,%r11
	jne	.L488
	la	%r2,4(%r2)
	icm	%r5,1,0(%r2)
	je	.L529
	la	%r3,3(%r12)
	j	.L489
.L493:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lhi	%r4,0
.L532:
	lgfr	%r2,%r4
	br	%r14
.L529:
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ic	%r1,1(%r3)
	lhi	%r3,255
	lhi	%r4,0
	nr	%r1,%r3
	sr	%r4,%r1
	lgfr	%r2,%r4
	lmg	%r10,%r12,136(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L536:
	ic	%r0,0(%r3)
	lhi	%r2,255
	lhi	%r4,0
	nr	%r0,%r2
	sr	%r4,%r0
	j	.L532
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
	lgr	%r1,%r4
	aghi	%r1,-2
	srlg	%r0,%r1,1
	aghi	%r0,1
	la	%r5,0(%r4,%r2)
	lghi	%r4,7
	ngr	%r4,%r0
	je	.L555
	cghi	%r4,1
	je	.L563
	cghi	%r4,2
	je	.L564
	cghi	%r4,3
	je	.L565
	cghi	%r4,4
	je	.L566
	cghi	%r4,5
	je	.L567
	cghi	%r4,6
	jne	.L579
.L568:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L567:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L566:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L565:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L564:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L563:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r2,2(%r2)
	cgr	%r2,%r5
	la	%r3,2(%r3)
	ber	%r14
.L555:
	srlg	%r1,%r0,3
.L540:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	mvc	8(1,%r3),9(%r2)
	mvc	9(1,%r3),8(%r2)
	mvc	10(1,%r3),11(%r2)
	mvc	11(1,%r3),10(%r2)
	mvc	12(1,%r3),13(%r2)
	mvc	13(1,%r3),12(%r2)
	mvc	14(1,%r3),15(%r2)
	mvc	15(1,%r3),14(%r2)
	la	%r3,16(%r3)
	la	%r2,16(%r2)
	brctg	%r1,.L540
	br	%r14
.L579:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	j	.L568
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
	lhi	%r1,25
	ahi	%r2,-97
	clr	%r2,%r1
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
	lhi	%r1,127
	clr	%r2,%r1
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
	chi	%r2,32
	je	.L587
	lhi	%r1,9
	lghi	%r0,1
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	ngr	%r2,%r0
	br	%r14
.L587:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
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
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L591
	lhi	%r0,127
	lghi	%r3,1
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	ngr	%r2,%r3
	br	%r14
.L591:
	lghi	%r3,1
	lhi	%r2,1
	ngr	%r2,%r3
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
	lhi	%r1,9
	clr	%r2,%r1
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
	lhi	%r1,93
	clr	%r2,%r1
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
	lhi	%r1,25
	clr	%r2,%r1
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
	lhi	%r1,94
	clr	%r2,%r1
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
	je	.L603
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lghi	%r0,1
	lcr	%r2,%r2
	ngr	%r2,%r0
	br	%r14
.L603:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
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
	lhi	%r1,25
	clr	%r2,%r1
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
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L611
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L612
.L611:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L612:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L611
	lay	%r5,-65529
	lhi	%r1,2
	ar	%r2,%r5
	lghi	%r0,1
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	ngr	%r2,%r0
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
	lhi	%r1,9
	clr	%r2,%r1
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
	larl	%r5,.L625
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L624
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L621
	lr	%r4,%r2
	llill	%r3,47061
	ahi	%r4,-8234
	clr	%r4,%r3
	jle	.L621
	lay	%r1,-57344
	lhi	%r0,8184
	ar	%r1,%r2
	clr	%r1,%r0
	jle	.L621
	lay	%r4,-65532
	ar	%r4,%r2
	cl	%r4,.L626-.L625(%r5)
	jh	.L622
	llill	%r3,65534
	lghi	%r4,1
	nr	%r2,%r3
	xr	%r2,%r3
	lcr	%r2,%r2
	srl	%r2,31
	ngr	%r2,%r4
	br	%r14
.L621:
	lhi	%r2,1
.L618:
	lghi	%r4,1
	ngr	%r2,%r4
	br	%r14
.L624:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r0,32
	clr	%r2,%r0
	lhi	%r2,0
	alcr	%r2,%r2
	lghi	%r4,1
	ngr	%r2,%r4
	br	%r14
.L622:
	lhi	%r2,0
	j	.L618
	.section	.rodata
	.align	8
.L625:
.L626:
	.long	1048579
	.align	2
.text
	.cfi_endproc
.LFE28:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB29:
	.cfi_startproc
	lr	%r1,%r2
	lhi	%r3,9
	ahi	%r1,-48
	clr	%r1,%r3
	jle	.L629
	oill	%r2,32
	lhi	%r0,5
	ahi	%r2,-97
	lghi	%r4,1
	clr	%r2,%r0
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	ngr	%r2,%r4
	br	%r14
.L629:
	lghi	%r4,1
	lhi	%r2,1
	ngr	%r2,%r4
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
	lghi	%r1,127
	ngr	%r2,%r1
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
	larl	%r5,.L642
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L637
	kdbr	%f0,%f2
	jnh	.L640
	sdbr	%f0,%f2
	br	%r14
.L640:
	ld	%f0,.L643-.L642(%r5)
	br	%r14
.L637:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L642:
.L643:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE31:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB32:
	.cfi_startproc
	larl	%r5,.L653
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L648
	kebr	%f0,%f2
	jnh	.L651
	sebr	%f0,%f2
	br	%r14
.L651:
	le	%f0,.L654-.L653(%r5)
	br	%r14
.L648:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L653:
.L654:
	.long	0
	.align	2
.text
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
	jo	.L663
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L665
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L660
	lhi	%r0,0
.L660:
	tmll	%r0,1
	jne	.L663
	ldr	%f2,%f0
.L663:
	ldr	%f0,%f2
	br	%r14
.L665:
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
	jo	.L675
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L677
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L672
	lhi	%r0,0
.L672:
	tmll	%r0,1
	jne	.L675
	ler	%f2,%f0
.L675:
	ler	%f0,%f2
	br	%r14
.L677:
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
	jo	.L686
	cxbr	%f4,%f4
	jo	.L691
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L693
	stmg	%r12,%r15,128(%r15)
	kxbr	%f0,%f4
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
	lhi	%r0,1
	jl	.L685
	lhi	%r0,0
.L685:
	tmll	%r0,1
	je	.L683
	std	%f4,160(%r15)
	lg	%r4,160(%r15)
	std	%f6,160(%r15)
	lg	%r5,160(%r15)
.L684:
	lgr	%r12,%r4
	lgr	%r13,%r5
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	std	%f0,0(%r2)
	ld	%f2,168(%r15)
	std	%f2,8(%r2)
	lmg	%r12,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L693:
	ltr	%r1,%r1
	je	.L691
.L686:
	lxr	%f0,%f4
.L691:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L683:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	std	%f0,160(%r15)
	lg	%r4,160(%r15)
	std	%f2,160(%r15)
	lg	%r5,160(%r15)
	j	.L684
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
	jo	.L701
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L704
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L700
	lhi	%r0,0
.L700:
	tmll	%r0,1
	bner	%r14
.L701:
	ldr	%f0,%f2
	br	%r14
.L704:
	ltr	%r1,%r1
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
	jo	.L712
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L715
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L711
	lhi	%r0,0
.L711:
	tmll	%r0,1
	bner	%r14
.L712:
	ler	%f0,%f2
	br	%r14
.L715:
	ltr	%r1,%r1
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
	jo	.L729
	cxbr	%f0,%f0
	jo	.L724
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L731
	stmg	%r12,%r15,128(%r15)
	kxbr	%f4,%f0
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
	lhi	%r0,1
	jl	.L723
	lhi	%r0,0
.L723:
	tmll	%r0,1
	je	.L721
	std	%f4,160(%r15)
	lg	%r4,160(%r15)
	std	%f6,160(%r15)
	lg	%r5,160(%r15)
.L722:
	lgr	%r12,%r4
	lgr	%r13,%r5
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	std	%f0,0(%r2)
	ld	%f2,168(%r15)
	std	%f2,8(%r2)
	lmg	%r12,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r14
.L731:
	ltr	%r1,%r1
	je	.L729
.L724:
	lxr	%f0,%f4
.L729:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L721:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	std	%f0,160(%r15)
	lg	%r4,160(%r15)
	std	%f2,160(%r15)
	lg	%r5,160(%r15)
	j	.L722
	.cfi_endproc
.LFE38:
	.size	fminl, .-fminl
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB39:
	.cfi_startproc
	ltr	%r2,%r2
	lr	%r1,%r2
	larl	%r2,.LANCHOR0
	je	.L734
	larl	%r4,.LANCHOR1
.L735:
	lghi	%r3,63
	ngr	%r3,%r1
	srl	%r1,6
	ltr	%r1,%r1
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	jne	.L735
.L734:
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
	larl	%r1,.LANCHOR0
	ahi	%r2,-1
	llgfr	%r2,%r2
	stg	%r2,8(%r1)
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
	larl	%r5,.L743
	larl	%r1,.LANCHOR0
	lg	%r2,.L744-.L743(%r5)
	msg	%r2,8(%r1)
	aghi	%r2,1
	stg	%r2,8(%r1)
	srlg	%r2,%r2,33
	br	%r14
	.section	.rodata
	.align	8
.L743:
.L744:
	.quad	6364136223846793005
	.align	2
.text
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
	je	.L751
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	lg	%r4,0(%r2)
	ltgr	%r4,%r4
	ber	%r14
	stg	%r2,8(%r4)
	br	%r14
.L751:
	lghi	%r0,0
	stg	%r0,8(%r2)
	stg	%r0,0(%r2)
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
	lg	%r1,0(%r2)
	ltgr	%r1,%r1
	je	.L754
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L754:
	lg	%r2,8(%r2)
	ltgr	%r2,%r2
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
	lay	%r15,-96(%r15)
	.cfi_def_cfa_offset 256
	lg	%r13,0(%r4)
	ltgr	%r13,%r13
	lgr	%r11,%r5
	lgr	%r10,%r2
	lgr	%r7,%r3
	stg	%r4,160(%r15)
	je	.L764
	stg	%r13,168(%r15)
	lghi	%r1,7
	ngr	%r1,%r13
	lgr	%r12,%r3
	lghi	%r8,0
	je	.L786
	cghi	%r1,1
	je	.L794
	cghi	%r1,2
	je	.L795
	cghi	%r1,3
	je	.L796
	cghi	%r1,4
	je	.L797
	cghi	%r1,5
	je	.L798
	cghi	%r1,6
	jne	.L814
.L799:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
.L798:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
.L797:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
.L796:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
.L795:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
.L794:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L763
	aghi	%r8,1
	agr	%r12,%r11
	cgr	%r13,%r8
	je	.L764
.L786:
	srlg	%r8,%r13,3
.L766:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r4,%r2
	ltr	%r4,%r4
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r1,%r2
	ltr	%r1,%r1
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r0,%r2
	ltr	%r0,%r0
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r2,%r10
	je	.L763
	agr	%r12,%r11
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L763
	agr	%r12,%r11
	brctg	%r8,.L766
.L764:
	lgr	%r2,%r11
	lg	%r14,160(%r15)
	msgr	%r2,%r13
	aghi	%r13,1
	la	%r9,0(%r2,%r7)
	stg	%r13,0(%r14)
	ltgr	%r11,%r11
	je	.L763
	lgr	%r4,%r11
	lgr	%r3,%r10
	lgr	%r2,%r9
	brasl	%r14,memmove@PLT
.L763:
	lg	%r4,240(%r15)
	lgr	%r2,%r9
	lmg	%r7,%r15,184(%r15)
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
	br	%r4
.L814:
	.cfi_restore_state
	lgr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L763
	lghi	%r8,1
	la	%r12,0(%r11,%r7)
	j	.L799
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
	lg	%r8,0(%r4)
	ltgr	%r8,%r8
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	je	.L817
	lghi	%r1,7
	lgr	%r10,%r5
	ngr	%r1,%r8
	lgr	%r12,%r3
	lgr	%r11,%r2
	lghi	%r7,0
	lgr	%r13,%r8
	je	.L836
	cghi	%r1,1
	je	.L844
	cghi	%r1,2
	je	.L845
	cghi	%r1,3
	je	.L846
	cghi	%r1,4
	je	.L847
	cghi	%r1,5
	je	.L848
	cghi	%r1,6
	jne	.L863
.L849:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
.L848:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
.L847:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
.L846:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
.L845:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
.L844:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L816
	aghi	%r7,1
	agr	%r12,%r10
	cgr	%r8,%r7
	je	.L817
.L836:
	srlg	%r8,%r13,3
.L819:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	lgr	%r0,%r2
	ltr	%r0,%r0
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r4,%r2
	ltr	%r4,%r4
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r13,%r2
	ltr	%r13,%r13
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r1,%r2
	ltr	%r1,%r1
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	lgr	%r7,%r2
	ltr	%r7,%r7
	lgr	%r2,%r11
	je	.L816
	agr	%r12,%r10
	lgr	%r3,%r12
	lgr	%r9,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L816
	agr	%r12,%r10
	brctg	%r8,.L819
.L817:
	lghi	%r9,0
.L816:
	lg	%r3,224(%r15)
	lgr	%r2,%r9
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
	br	%r3
.L863:
	.cfi_restore_state
	lgr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L816
	agr	%r12,%r10
	lghi	%r7,1
	j	.L849
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
	stmg	%r11,%r15,120(%r15)
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
.L874:
	ic	%r3,0(%r2)
	lhi	%r1,255
	stc	%r3,167(%r15)
	nr	%r1,%r3
	cli	167(%r15),32
	je	.L868
	lr	%r4,%r1
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L868
	chi	%r1,43
	je	.L869
	chi	%r1,45
	je	.L870
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jh	.L879
	lgr	%r1,%r2
	lhi	%r12,0
.L872:
	lhi	%r2,0
.L876:
	la	%r1,1(%r1)
	lhi	%r4,255
	mhi	%r2,10
	nr	%r4,%r3
	lhi	%r5,255
	ic	%r3,0(%r1)
	ahi	%r4,-48
	nr	%r5,%r3
	lr	%r0,%r2
	ahi	%r5,-48
	sr	%r2,%r4
	lhi	%r11,9
	clr	%r5,%r11
	jle	.L876
	ltr	%r12,%r12
	jne	.L875
	lr	%r2,%r4
	sr	%r2,%r0
.L875:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	lgfr	%r2,%r2
	br	%r14
.L868:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L874
.L870:
	ic	%r3,1(%r2)
	lhi	%r11,255
	nr	%r11,%r3
	lhi	%r12,9
	ahi	%r11,-48
	la	%r1,1(%r2)
	clr	%r11,%r12
	jh	.L879
	lhi	%r12,1
	j	.L872
.L869:
	ic	%r3,1(%r2)
	la	%r1,1(%r2)
	lhi	%r2,255
	lhi	%r0,9
	nr	%r2,%r3
	lhi	%r12,0
	ahi	%r2,-48
	clr	%r2,%r0
	jle	.L872
.L879:
	lhi	%r2,0
	lmg	%r11,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
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
	stmg	%r11,%r15,120(%r15)
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
.L898:
	ic	%r4,0(%r2)
	lhi	%r1,255
	stc	%r4,167(%r15)
	nr	%r1,%r4
	cli	167(%r15),32
	je	.L892
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L892
	chi	%r1,43
	je	.L893
	chi	%r1,45
	je	.L894
	ahi	%r1,-48
	lhi	%r5,9
	clr	%r1,%r5
	jh	.L903
	lgr	%r3,%r2
	lhi	%r12,0
.L896:
	lghi	%r2,0
.L900:
	la	%r3,1(%r3)
	lhi	%r1,255
	mghi	%r2,10
	nr	%r1,%r4
	lhi	%r5,255
	ic	%r4,0(%r3)
	ahi	%r1,-48
	nr	%r5,%r4
	lgr	%r0,%r2
	ahi	%r5,-48
	sgfr	%r2,%r1
	lhi	%r11,9
	lgfr	%r1,%r1
	clr	%r5,%r11
	jle	.L900
	ltr	%r12,%r12
	jne	.L891
	sgr	%r1,%r0
	lgr	%r2,%r1
.L891:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
.L892:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L898
.L894:
	ic	%r4,1(%r2)
	lhi	%r11,255
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	la	%r3,1(%r2)
	clr	%r11,%r12
	jh	.L903
	lhi	%r12,1
	j	.L896
.L893:
	ic	%r4,1(%r2)
	lhi	%r0,255
	nr	%r0,%r4
	la	%r3,1(%r2)
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	lhi	%r12,0
	jle	.L896
.L903:
	lmg	%r11,%r15,168(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	lghi	%r2,0
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
	stmg	%r11,%r15,120(%r15)
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
.L920:
	ic	%r4,0(%r2)
	lhi	%r1,255
	stc	%r4,167(%r15)
	nr	%r1,%r4
	cli	167(%r15),32
	je	.L916
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L916
	chi	%r1,43
	je	.L917
	chi	%r1,45
	je	.L918
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L927
	lgr	%r3,%r2
	lhi	%r12,0
.L921:
	lghi	%r2,0
.L924:
	la	%r3,1(%r3)
	lhi	%r11,255
	mghi	%r2,10
	nr	%r11,%r4
	lhi	%r5,255
	ic	%r4,0(%r3)
	ahi	%r11,-48
	nr	%r5,%r4
	lgr	%r0,%r2
	ahi	%r5,-48
	sgfr	%r2,%r11
	lgfr	%r1,%r11
	lhi	%r11,9
	clr	%r5,%r11
	jle	.L924
	ltr	%r12,%r12
	jne	.L915
	sgr	%r1,%r0
	lgr	%r2,%r1
.L915:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
.L916:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L920
.L918:
	ic	%r4,1(%r2)
	lhi	%r11,255
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	la	%r3,1(%r2)
	clr	%r11,%r1
	lhi	%r12,1
	jle	.L921
.L927:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	lghi	%r2,0
	br	%r14
.L917:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	nr	%r0,%r4
	la	%r3,1(%r2)
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L927
	lhi	%r12,0
	j	.L921
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
	ltgr	%r12,%r4
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	je	.L941
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	j	.L944
.L951:
	je	.L940
	aghi	%r12,-1
	la	%r9,0(%r8,%r11)
	sgr	%r12,%r10
	ltgr	%r12,%r12
	je	.L941
.L944:
	srlg	%r10,%r12,1
	lgr	%r2,%r7
	lgr	%r11,%r10
	msgr	%r11,%r8
	la	%r11,0(%r11,%r9)
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L951
	lgr	%r12,%r10
	ltgr	%r12,%r12
	jne	.L944
.L941:
	lghi	%r11,0
.L940:
	lg	%r4,224(%r15)
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
	br	%r4
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
	je	.L958
.L963:
	lr	%r10,%r11
	lgr	%r12,%r8
	sra	%r10,1
	lg	%r4,240(%r15)
	msgfr	%r12,%r10
	lgr	%r2,%r7
	la	%r12,0(%r12,%r9)
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L953
	jle	.L956
	ahi	%r11,-1
	la	%r9,0(%r8,%r12)
	sra	%r11,1
	jne	.L963
.L958:
	lghi	%r12,0
.L953:
	lg	%r4,224(%r15)
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
	br	%r4
.L956:
	.cfi_restore_state
	ltr	%r10,%r10
	lr	%r11,%r10
	jne	.L963
	j	.L958
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
	j	.L991
.L992:
	cr	%r1,%r3
	ber	%r14
	la	%r2,4(%r2)
.L991:
	icm	%r1,15,0(%r2)
	jne	.L992
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
	cr	%r4,%r5
	lghi	%r1,4
	je	.L995
	j	.L996
.L997:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	cr	%r4,%r5
	jne	.L996
.L995:
	ltr	%r4,%r4
	jne	.L997
.L996:
	cr	%r4,%r5
	jl	.L1001
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1001:
	lghi	%r2,-1
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
.L1006:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	jne	.L1006
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
	icm	%r1,15,0(%r2)
	je	.L1013
	lgr	%r1,%r2
.L1012:
	icm	%r3,15,4(%r1)
	la	%r1,4(%r1)
	jne	.L1012
	sgr	%r1,%r2
	srag	%r2,%r1,2
	br	%r14
.L1013:
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
	je	.L1023
	lgr	%r0,%r4
	lghi	%r1,7
	aghi	%r0,-1
	lgr	%r5,%r4
	ngr	%r1,%r4
	je	.L1038
	cghi	%r1,1
	je	.L1061
	cghi	%r1,2
	je	.L1062
	cghi	%r1,3
	je	.L1063
	cghi	%r1,4
	je	.L1064
	cghi	%r1,5
	je	.L1065
	cghi	%r1,6
	jne	.L1083
.L1066:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1065:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1019
	ltr	%r1,%r1
	je	.L1019
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1064:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1063:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1019
	ltr	%r1,%r1
	je	.L1019
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1062:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1061:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1019
	ltr	%r1,%r1
	je	.L1019
	cghi	%r4,1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	je	.L1023
.L1038:
	srlg	%r5,%r5,3
.L1017:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1019
	ltr	%r4,%r4
	je	.L1019
	la	%r1,4(%r3)
	l	%r0,4(%r2)
	la	%r2,4(%r2)
	lgr	%r3,%r1
	lgr	%r4,%r2
	c	%r0,0(%r1)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	la	%r3,4(%r1)
	l	%r0,4(%r2)
	la	%r2,4(%r2)
	c	%r0,0(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	l	%r0,8(%r4)
	la	%r2,8(%r4)
	c	%r0,8(%r1)
	la	%r3,8(%r1)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	l	%r0,12(%r4)
	la	%r2,4(%r2)
	c	%r0,12(%r1)
	la	%r3,4(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	l	%r0,16(%r4)
	la	%r2,4(%r2)
	c	%r0,16(%r1)
	la	%r3,4(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	l	%r0,20(%r4)
	la	%r2,4(%r2)
	c	%r0,20(%r1)
	la	%r3,4(%r3)
	jne	.L1019
	ltr	%r0,%r0
	je	.L1019
	l	%r4,24(%r4)
	la	%r2,4(%r2)
	c	%r4,24(%r1)
	la	%r3,4(%r3)
	jne	.L1019
	ltr	%r4,%r4
	je	.L1019
	la	%r2,4(%r2)
	la	%r3,28(%r1)
	brctg	%r5,.L1017
.L1023:
	lghi	%r2,0
	br	%r14
.L1019:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L1084
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1084:
	lghi	%r2,-1
	br	%r14
.L1083:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1019
	ltr	%r4,%r4
	je	.L1019
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	j	.L1066
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
	je	.L1090
	lgr	%r0,%r4
	lghi	%r1,7
	aghi	%r0,-1
	lgr	%r5,%r4
	ngr	%r1,%r4
	je	.L1105
	cghi	%r1,1
	je	.L1128
	cghi	%r1,2
	je	.L1129
	cghi	%r1,3
	je	.L1130
	cghi	%r1,4
	je	.L1131
	cghi	%r1,5
	je	.L1132
	cghi	%r1,6
	jne	.L1149
	c	%r3,0(%r2)
	ber	%r14
.L1150:
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1132:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1131:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1130:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1129:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1128:
	c	%r3,0(%r2)
	ber	%r14
	cghi	%r4,1
	la	%r2,4(%r2)
	je	.L1090
.L1105:
	srlg	%r0,%r5,3
.L1087:
	c	%r3,0(%r2)
	ber	%r14
	c	%r3,4(%r2)
	la	%r5,4(%r2)
	lgr	%r2,%r5
	ber	%r14
	c	%r3,4(%r5)
	la	%r2,4(%r5)
	ber	%r14
	c	%r3,8(%r5)
	la	%r2,8(%r5)
	ber	%r14
	c	%r3,12(%r5)
	la	%r2,4(%r2)
	ber	%r14
	c	%r3,16(%r5)
	la	%r2,4(%r2)
	ber	%r14
	c	%r3,20(%r5)
	la	%r2,4(%r2)
	ber	%r14
	c	%r3,24(%r5)
	la	%r2,4(%r2)
	ber	%r14
	la	%r2,28(%r5)
	brctg	%r0,.L1087
.L1090:
	lghi	%r2,0
	br	%r14
.L1149:
	c	%r3,0(%r2)
	ber	%r14
	c	%r3,4(%r2)
	la	%r2,4(%r2)
	lgr	%r4,%r0
	jne	.L1150
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
	je	.L1159
	lgr	%r0,%r4
	lghi	%r1,7
	aghi	%r0,-1
	lgr	%r5,%r4
	ngr	%r1,%r4
	je	.L1174
	cghi	%r1,1
	je	.L1197
	cghi	%r1,2
	je	.L1198
	cghi	%r1,3
	je	.L1199
	cghi	%r1,4
	je	.L1200
	cghi	%r1,5
	je	.L1201
	cghi	%r1,6
	jne	.L1219
.L1202:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1201:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1200:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1199:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1198:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1197:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	cghi	%r4,1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	je	.L1159
.L1174:
	srlg	%r0,%r5,3
.L1153:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	la	%r3,4(%r3)
	l	%r1,4(%r2)
	lgr	%r5,%r3
	c	%r1,0(%r3)
	jne	.L1213
	la	%r3,4(%r3)
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	l	%r1,12(%r2)
	la	%r3,8(%r5)
	c	%r1,8(%r5)
	jne	.L1213
	l	%r1,16(%r2)
	la	%r3,4(%r3)
	c	%r1,12(%r5)
	jne	.L1213
	l	%r1,20(%r2)
	la	%r3,4(%r3)
	c	%r1,16(%r5)
	jne	.L1213
	l	%r1,24(%r2)
	la	%r3,4(%r3)
	c	%r1,20(%r5)
	jne	.L1213
	l	%r1,28(%r2)
	la	%r3,4(%r3)
	c	%r1,24(%r5)
	jne	.L1213
	la	%r2,32(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L1153
.L1159:
	lghi	%r2,0
	br	%r14
.L1213:
	c	%r1,0(%r3)
	jl	.L1220
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1220:
	lghi	%r2,-1
	br	%r14
.L1219:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1213
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	j	.L1202
	.cfi_endproc
.LFE65:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB66:
	.cfi_startproc
	ltgr	%r4,%r4
	ber	%r14
	stmg	%r12,%r13,144(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	sllg	%r5,%r4,2
	lgr	%r12,%r3
	lgr	%r13,%r5
	lgr	%r0,%r2
	lgr	%r1,%r5
	mvcle	%r0,%r12,0
	jo	.-4
	lmg	%r12,%r13,144(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	lgr	%r1,%r4
	lgr	%r0,%r2
	aghi	%r1,-1
	sgr	%r0,%r3
	sllg	%r5,%r4,2
	clgr	%r0,%r5
	jl	.L1234
	ltgr	%r4,%r4
	ber	%r14
	lghi	%r0,8
	clgr	%r1,%r0
	jle	.L1245
	lgr	%r5,%r3
	lghi	%r0,7
	ogr	%r5,%r2
	ngr	%r5,%r0
	aghi	%r5,-1
	ltgr	%r5,%r5
	jhe	.L1245
	la	%r5,4(%r3)
	cgr	%r2,%r5
	je	.L1245
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	srlg	%r11,%r4,1
	lghi	%r12,7
	ngr	%r12,%r11
	lghi	%r1,0
	lgr	%r0,%r11
	lghi	%r5,0
	je	.L1313
	cghi	%r12,1
	je	.L1327
	cghi	%r12,2
	je	.L1328
	cghi	%r12,3
	je	.L1329
	cghi	%r12,4
	je	.L1330
	cghi	%r12,5
	je	.L1331
	cghi	%r12,6
	jne	.L1380
.L1332:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1331:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1330:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1329:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1328:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1327:
	lg	%r12,0(%r1,%r3)
	aghi	%r5,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r11,%r5
	je	.L1368
.L1313:
	srlg	%r11,%r0,3
.L1239:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r5,32(%r1,%r3)
	stg	%r5,32(%r1,%r2)
	lg	%r12,40(%r1,%r3)
	stg	%r12,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r5,56(%r1,%r3)
	stg	%r5,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r11,.L1239
.L1368:
	tmll	%r4,1
	je	.L1250
	nill	%r4,65534
	sllg	%r4,%r4,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L1250:
	lmg	%r11,%r12,144(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1234:
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r4,%r1
	nihh	%r4,16383
	aghi	%r4,1
	lghi	%r5,7
	ngr	%r5,%r4
	sllg	%r1,%r1,2
	je	.L1271
	cghi	%r5,1
	je	.L1321
	cghi	%r5,2
	je	.L1322
	cghi	%r5,3
	je	.L1323
	cghi	%r5,4
	je	.L1324
	cghi	%r5,5
	je	.L1325
	cghi	%r5,6
	jne	.L1381
.L1326:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L1325:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L1324:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L1323:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L1322:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L1321:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cghi	%r1,-4
	ber	%r14
.L1271:
	srlg	%r4,%r4,3
.L1237:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	ly	%r5,-16(%r1,%r3)
	sty	%r5,-16(%r1,%r2)
	ly	%r0,-20(%r1,%r3)
	sty	%r0,-20(%r1,%r2)
	ly	%r5,-24(%r1,%r3)
	sty	%r5,-24(%r1,%r2)
	ly	%r0,-28(%r1,%r3)
	sty	%r0,-28(%r1,%r2)
	aghi	%r1,-32
	brctg	%r4,.L1237
	br	%r14
.L1245:
	lgr	%r5,%r1
	lghi	%r0,7
	aghi	%r5,1
	lghi	%r4,0
	ngr	%r0,%r5
	je	.L1292
	cghi	%r0,1
	je	.L1333
	cghi	%r0,2
	je	.L1334
	cghi	%r0,3
	je	.L1335
	cghi	%r0,4
	je	.L1336
	cghi	%r0,5
	je	.L1337
	cghi	%r0,6
	je	.L1338
	l	%r4,0(%r3)
	aghi	%r1,-1
	st	%r4,0(%r2)
	lghi	%r4,4
.L1338:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L1337:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L1336:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L1335:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L1334:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L1333:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	ltgr	%r1,%r1
	ber	%r14
.L1292:
	srlg	%r1,%r5,3
.L1242:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	l	%r0,4(%r4,%r3)
	st	%r0,4(%r4,%r2)
	l	%r5,8(%r4,%r3)
	st	%r5,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	l	%r5,16(%r4,%r3)
	st	%r5,16(%r4,%r2)
	l	%r0,20(%r4,%r3)
	st	%r0,20(%r4,%r2)
	l	%r5,24(%r4,%r3)
	st	%r5,24(%r4,%r2)
	l	%r0,28(%r4,%r3)
	st	%r0,28(%r4,%r2)
	aghi	%r4,32
	brctg	%r1,.L1242
	br	%r14
.L1381:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	j	.L1326
.L1380:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lg	%r1,0(%r3)
	lghi	%r5,1
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1332
	.cfi_endproc
.LFE67:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB68:
	.cfi_startproc
	stmg	%r6,%r15,80(%r15)
	.cfi_offset 6, -80
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lgr	%r11,%r4
	aghi	%r11,-1
	ltgr	%r4,%r4
	lay	%r15,-104(%r15)
	.cfi_def_cfa_offset 264
	je	.L1384
	srlg	%r5,%r2,2
	lghi	%r1,1
	ngr	%r5,%r1
	lghi	%r0,5
	clgr	%r11,%r0
	jle	.L1389
	ltgr	%r5,%r5
	je	.L1390
	st	%r3,0(%r2)
	la	%r6,4(%r2)
	aghi	%r11,-1
.L1386:
	sllg	%r7,%r5,2
	sgr	%r4,%r5
	srlg	%r9,%r4,1
	lghi	%r10,7
	sllg	%r0,%r3,32
	ngr	%r10,%r9
	lgr	%r12,%r9
	lr	%r0,%r3
	lghi	%r1,0
	la	%r5,0(%r7,%r2)
	je	.L1419
	cghi	%r10,1
	je	.L1427
	cghi	%r10,2
	je	.L1428
	cghi	%r10,3
	je	.L1429
	cghi	%r10,4
	je	.L1430
	cghi	%r10,5
	je	.L1431
	cghi	%r10,6
	jne	.L1455
.L1432:
	sllg	%r8,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r8,%r5)
.L1431:
	sllg	%r13,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r13,%r5)
.L1430:
	sllg	%r7,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r7,%r5)
.L1429:
	sllg	%r10,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r10,%r5)
.L1428:
	sllg	%r8,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r8,%r5)
.L1427:
	sllg	%r13,%r1,3
	aghi	%r1,1
	cgr	%r9,%r1
	stg	%r0,0(%r13,%r5)
	je	.L1448
.L1419:
	srlg	%r12,%r12,3
	cghi	%r12,2
	jle	.L1453
	aghi	%r12,-1
	sllg	%r8,%r1,3
	lgr	%r9,%r8
	lgr	%r10,%r8
	lgr	%r13,%r8
	lgr	%r7,%r8
	stg	%r11,160(%r15)
	stg	%r6,168(%r15)
	stg	%r4,176(%r15)
.L1387:
	sllg	%r6,%r1,3
	stg	%r0,0(%r8,%r5)
	stg	%r0,8(%r9,%r5)
	stg	%r0,16(%r10,%r5)
	aghi	%r1,8
	sllg	%r8,%r1,3
	stg	%r0,24(%r13,%r5)
	lgr	%r9,%r8
	stg	%r0,32(%r7,%r5)
	lgr	%r10,%r8
	stg	%r0,40(%r6,%r5)
	lgr	%r13,%r8
	stg	%r0,48(%r6,%r5)
	lgr	%r7,%r8
	stg	%r0,56(%r6,%r5)
	brctg	%r12,.L1387
	lg	%r11,160(%r15)
	lg	%r6,168(%r15)
	lg	%r4,176(%r15)
	stg	%r0,0(%r8,%r5)
	stg	%r0,8(%r8,%r5)
	stg	%r0,16(%r8,%r5)
	stg	%r0,24(%r8,%r5)
	stg	%r0,32(%r8,%r5)
	stg	%r0,40(%r8,%r5)
	stg	%r0,48(%r8,%r5)
	stg	%r0,56(%r8,%r5)
.L1448:
	tmll	%r4,1
	je	.L1384
	nill	%r4,65534
	sllg	%r5,%r4,2
	sgr	%r11,%r4
	la	%r4,0(%r5,%r6)
.L1385:
	st	%r3,0(%r4)
	ltgr	%r11,%r11
	je	.L1384
	st	%r3,4(%r4)
	cghi	%r11,1
	je	.L1384
	st	%r3,8(%r4)
	cghi	%r11,2
	je	.L1384
	st	%r3,12(%r4)
	cghi	%r11,3
	je	.L1384
	st	%r3,16(%r4)
	cghi	%r11,4
	je	.L1384
	st	%r3,20(%r4)
.L1384:
	lmg	%r6,%r15,184(%r15)
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
	.cfi_restore 6
	.cfi_def_cfa_offset 160
	br	%r14
.L1390:
	.cfi_restore_state
	lgr	%r6,%r2
	j	.L1386
.L1453:
	sllg	%r7,%r1,3
	aghi	%r1,8
	stg	%r0,0(%r7,%r5)
	stg	%r0,8(%r7,%r5)
	stg	%r0,16(%r7,%r5)
	stg	%r0,24(%r7,%r5)
	stg	%r0,32(%r7,%r5)
	stg	%r0,40(%r7,%r5)
	stg	%r0,48(%r7,%r5)
	stg	%r0,56(%r7,%r5)
	brctg	%r12,.L1453
	j	.L1448
.L1455:
	stg	%r0,0(%r1,%r5)
	lghi	%r1,1
	j	.L1432
.L1389:
	lgr	%r4,%r2
	j	.L1385
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
	jhe	.L1458
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r0,%r4
	lghi	%r5,7
	aghi	%r0,-1
	lgr	%r1,%r4
	ngr	%r5,%r4
	je	.L1505
	cghi	%r5,1
	je	.L1555
	cghi	%r5,2
	je	.L1556
	cghi	%r5,3
	je	.L1557
	cghi	%r5,4
	je	.L1558
	cghi	%r5,5
	je	.L1559
	cghi	%r5,6
	je	.L1560
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
.L1560:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1559:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L1558:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1557:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L1556:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1555:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L1505
	br	%r14
.L1458:
	ber	%r14
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r1,%r4
	lghi	%r5,14
	aghi	%r1,-1
	clgr	%r1,%r5
	jle	.L1468
	lgr	%r0,%r3
	lghi	%r1,7
	ogr	%r0,%r2
	ngr	%r0,%r1
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L1468
	la	%r5,1(%r2)
	lgr	%r0,%r3
	lghi	%r1,6
	sgr	%r0,%r5
	clgr	%r0,%r1
	jle	.L1468
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r12,%r4
	nill	%r12,65528
	lghi	%r0,7
	lgr	%r5,%r12
	aghi	%r5,-8
	srlg	%r5,%r5,3
	lghi	%r1,0
	aghi	%r5,1
	ngr	%r0,%r5
	je	.L1547
	cghi	%r0,1
	je	.L1561
	cghi	%r0,2
	je	.L1562
	cghi	%r0,3
	je	.L1563
	cghi	%r0,4
	je	.L1564
	cghi	%r0,5
	je	.L1565
	cghi	%r0,6
	jne	.L1620
.L1566:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1565:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1564:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1563:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1562:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1561:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L1608
.L1547:
	srlg	%r12,%r5,3
.L1462:
	lg	%r5,0(%r1,%r2)
	stg	%r5,0(%r1,%r3)
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r5,16(%r1,%r2)
	stg	%r5,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	lg	%r5,32(%r1,%r2)
	stg	%r5,32(%r1,%r3)
	lg	%r0,40(%r1,%r2)
	stg	%r0,40(%r1,%r3)
	lg	%r5,48(%r1,%r2)
	stg	%r5,48(%r1,%r3)
	lg	%r0,56(%r1,%r2)
	stg	%r0,56(%r1,%r3)
	aghi	%r1,64
	brctg	%r12,.L1462
.L1608:
	lgr	%r12,%r4
	sgr	%r12,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r2,0(%r1,%r2)
	je	.L1457
	mvc	0(1,%r3),0(%r2)
	cghi	%r12,1
	je	.L1457
	mvc	1(1,%r3),1(%r2)
	cghi	%r12,2
	je	.L1457
	mvc	2(1,%r3),2(%r2)
	cghi	%r12,3
	je	.L1457
	mvc	3(1,%r3),3(%r2)
	cghi	%r12,4
	je	.L1457
	mvc	4(1,%r3),4(%r2)
	cghi	%r12,5
	je	.L1457
	mvc	5(1,%r3),5(%r2)
	cghi	%r12,6
	je	.L1457
	mvc	6(1,%r3),6(%r2)
.L1457:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L1505:
	srlg	%r1,%r1,3
.L1460:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	icy	%r0,-5(%r4,%r2)
	stcy	%r0,-5(%r4,%r3)
	icy	%r5,-6(%r4,%r2)
	stcy	%r5,-6(%r4,%r3)
	icy	%r0,-7(%r4,%r2)
	stcy	%r0,-7(%r4,%r3)
	icy	%r5,-8(%r4,%r2)
	stcy	%r5,-8(%r4,%r3)
	aghi	%r4,-8
	brctg	%r1,.L1460
	br	%r14
.L1468:
	lghi	%r0,7
	lghi	%r1,0
	ngr	%r0,%r4
	lgr	%r5,%r4
	je	.L1526
	cghi	%r0,1
	je	.L1567
	cghi	%r0,2
	je	.L1568
	cghi	%r0,3
	je	.L1569
	cghi	%r0,4
	je	.L1570
	cghi	%r0,5
	je	.L1571
	cghi	%r0,6
	je	.L1572
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1572:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1571:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1570:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1569:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1568:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1567:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgr	%r4,%r1
	ber	%r14
.L1526:
	srlg	%r4,%r5,3
.L1465:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r0,5(%r1,%r2)
	stc	%r0,5(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	stc	%r5,6(%r1,%r3)
	ic	%r0,7(%r1,%r2)
	stc	%r0,7(%r1,%r3)
	aghi	%r1,8
	brctg	%r4,.L1465
	br	%r14
.L1620:
	.cfi_offset 12, -8
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
	j	.L1566
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
	lhi	%r1,15
	lhi	%r4,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	sll	%r2,0(%r3)
	nr	%r5,%r4
	srl	%r0,0(%r5)
	or	%r2,%r0
	sllg	%r2,%r2,48
	srlg	%r2,%r2,48
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
	lhi	%r1,15
	lhi	%r4,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	srl	%r2,0(%r3)
	nr	%r5,%r4
	sll	%r0,0(%r5)
	or	%r2,%r0
	sllg	%r2,%r2,48
	srlg	%r2,%r2,48
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
	lhi	%r1,7
	lhi	%r4,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	sll	%r2,0(%r3)
	nr	%r5,%r4
	srl	%r0,0(%r5)
	or	%r2,%r0
	sllg	%r2,%r2,56
	srlg	%r2,%r2,56
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
	lhi	%r1,7
	lhi	%r4,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	srl	%r2,0(%r3)
	nr	%r5,%r4
	sll	%r0,0(%r5)
	or	%r2,%r0
	sllg	%r2,%r2,56
	srlg	%r2,%r2,56
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
	sllg	%r0,%r2,48
	srlg	%r2,%r0,48
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
	lhi	%r1,0
	lhi	%r0,4
.L1651:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	lr	%r3,%r1
	srl	%r5,0(%r1)
	jne	.L1650
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r5,1
	srl	%r4,0(%r1)
	jne	.L1650
	lr	%r1,%r3
	ahi	%r1,2
	tmll	%r4,1
	lr	%r3,%r2
	srl	%r3,0(%r1)
	jne	.L1650
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1650
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	srl	%r5,0(%r1)
	jne	.L1650
	ahi	%r1,1
	lr	%r3,%r2
	tmll	%r5,1
	srl	%r3,0(%r1)
	jne	.L1650
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1650
	ahi	%r1,1
	tmll	%r4,1
	jne	.L1650
	brct	%r0,.L1651
	lhi	%r1,0
.L1650:
	lgfr	%r2,%r1
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
	ltgr	%r3,%r2
	je	.L1675
	lhi	%r2,1
	nr	%r2,%r3
	jne	.L1673
	lhi	%r2,1
.L1674:
	lr	%r1,%r3
	ahi	%r2,1
	sra	%r1,1
	tmll	%r1,1
	lgfr	%r3,%r1
	je	.L1674
.L1673:
	lgfr	%r2,%r2
	br	%r14
.L1675:
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
	larl	%r5,.L1684
	lghi	%r2,1
	keb	%f0,.L1685-.L1684(%r5)
	blr	%r14
	keb	%f0,.L1686-.L1684(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1684:
.L1686:
	.long	2139095039
.L1685:
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
	larl	%r5,.L1692
	lghi	%r2,1
	kdb	%f0,.L1693-.L1692(%r5)
	blr	%r14
	kdb	%f0,.L1694-.L1692(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1692:
.L1694:
	.long	2146435071
	.long	-1
.L1693:
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
	larl	%r5,.L1700
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1701-.L1700(%r5)
	ld	%f6,.L1701-.L1700+8(%r5)
	kxbr	%f0,%f4
	lghi	%r2,1
	blr	%r14
	ld	%f4,.L1702-.L1700(%r5)
	ld	%f6,.L1702-.L1700+8(%r5)
	kxbr	%f0,%f4
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1700:
.L1702:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1701:
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
	larl	%r5,.L1721
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1719
	le	%f4,.L1722-.L1721(%r5)
.L1707:
	tmll	%r2,1
	je	.L1708
.L1709:
	meebr	%f0,%f4
.L1708:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1709
.L1720:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1709
	j	.L1720
.L1719:
	le	%f4,.L1723-.L1721(%r5)
	j	.L1707
	.section	.rodata
	.align	8
.L1721:
.L1723:
	.long	1056964608
.L1722:
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
	larl	%r5,.L1740
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1738
	ld	%f4,.L1741-.L1740(%r5)
.L1726:
	tmll	%r2,1
	je	.L1727
.L1728:
	mdbr	%f0,%f4
.L1727:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1728
.L1739:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1728
	j	.L1739
.L1738:
	ld	%f4,.L1742-.L1740(%r5)
	j	.L1726
	.section	.rodata
	.align	8
.L1740:
.L1742:
	.long	1071644672
	.long	0
.L1741:
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
	larl	%r5,.L1759
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1744
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1744
	ltr	%r4,%r4
	jl	.L1757
	ld	%f0,.L1760-.L1759(%r5)
	ld	%f2,.L1760-.L1759+8(%r5)
.L1745:
	tmll	%r4,1
	je	.L1746
.L1747:
	mxbr	%f4,%f0
.L1746:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	ltgr	%r4,%r4
	je	.L1744
	tmll	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1747
.L1758:
	ar	%r0,%r4
	mxbr	%f0,%f0
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	jne	.L1747
	j	.L1758
.L1744:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1757:
	ld	%f0,.L1761-.L1759(%r5)
	ld	%f2,.L1761-.L1759+8(%r5)
	j	.L1745
	.section	.rodata
	.align	8
.L1759:
.L1761:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1760:
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r1,%r4
	lghi	%r5,14
	aghi	%r1,-1
	clgr	%r1,%r5
	jle	.L1764
	lgr	%r0,%r2
	ogr	%r0,%r3
	tmll	%r0,7
	jne	.L1764
	lgr	%r12,%r4
	nill	%r12,65528
	lgr	%r5,%r12
	aghi	%r5,-8
	srlg	%r5,%r5,3
	lghi	%r0,7
	aghi	%r5,1
	lghi	%r1,0
	ngr	%r0,%r5
	je	.L1819
	cghi	%r0,1
	je	.L1827
	cghi	%r0,2
	je	.L1828
	cghi	%r0,3
	je	.L1829
	cghi	%r0,4
	je	.L1830
	cghi	%r0,5
	je	.L1831
	cghi	%r0,6
	je	.L1832
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1832:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1831:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1830:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1829:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1828:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1827:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L1862
.L1819:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1872
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r2)
	xg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r2)
	xg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r2)
	xg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r2)
	xg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r2)
	xg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r2)
	xg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
.L1765:
	aghi	%r1,64
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r2)
	xg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r2)
	xg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r2)
	xg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r2)
	xg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r2)
	xg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r2)
	xg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	brctg	%r5,.L1765
	aghi	%r1,64
.L1862:
	lgr	%r12,%r4
	sgr	%r12,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	je	.L1763
	xc	0(1,%r5),0(%r3)
	cghi	%r12,1
	je	.L1763
	xc	1(1,%r5),1(%r3)
	cghi	%r12,2
	je	.L1763
	xc	2(1,%r5),2(%r3)
	cghi	%r12,3
	je	.L1763
	xc	3(1,%r5),3(%r3)
	cghi	%r12,4
	je	.L1763
	xc	4(1,%r5),4(%r3)
	cghi	%r12,5
	je	.L1763
	xc	5(1,%r5),5(%r3)
	cghi	%r12,6
	je	.L1763
	xc	6(1,%r5),6(%r3)
.L1763:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1872:
	.cfi_restore_state
	lg	%r12,0(%r1,%r2)
	lg	%r0,8(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	xg	%r0,8(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r12,16(%r1,%r2)
	stg	%r0,8(%r1,%r2)
	lg	%r0,24(%r1,%r2)
	xg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	xg	%r0,24(%r1,%r3)
	lg	%r12,32(%r1,%r2)
	stg	%r0,24(%r1,%r2)
	lg	%r0,40(%r1,%r2)
	xg	%r12,32(%r1,%r3)
	stg	%r12,32(%r1,%r2)
	xg	%r0,40(%r1,%r3)
	lg	%r12,48(%r1,%r2)
	stg	%r0,40(%r1,%r2)
	lg	%r0,56(%r1,%r2)
	xg	%r12,48(%r1,%r3)
	stg	%r12,48(%r1,%r2)
	xg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1872
	j	.L1862
.L1764:
	lghi	%r5,7
	la	%r0,0(%r4,%r3)
	ngr	%r5,%r4
	lgr	%r1,%r2
	je	.L1798
	cghi	%r5,1
	je	.L1833
	cghi	%r5,2
	je	.L1834
	cghi	%r5,3
	je	.L1835
	cghi	%r5,4
	je	.L1836
	cghi	%r5,5
	je	.L1837
	cghi	%r5,6
	je	.L1838
	lgr	%r12,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L1838:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L1837:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L1836:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L1835:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L1834:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	la	%r1,1(%r1)
.L1833:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r5,%r12
	la	%r3,1(%r3)
	stc	%r5,0(%r1)
	cgr	%r0,%r3
	la	%r1,1(%r1)
	je	.L1763
.L1798:
	srlg	%r4,%r4,3
	cghi	%r4,2
	jle	.L1871
	aghi	%r4,-1
	xc	0(6,%r1),0(%r3)
.L1767:
	xc	6(1,%r1),6(%r3)
	la	%r1,8(%r1)
	la	%r3,8(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	xc	0(6,%r1),0(%r3)
	brctg	%r4,.L1767
	xc	6(1,%r1),6(%r3)
	llgc	%r4,7(%r1)
	llgc	%r3,7(%r3)
	xr	%r4,%r3
	stc	%r4,7(%r1)
	j	.L1763
.L1871:
	xc	0(7,%r1),0(%r3)
	llgc	%r5,7(%r1)
	llgc	%r0,7(%r3)
	xr	%r5,%r0
	la	%r1,8(%r1)
	stcy	%r5,-1(%r1)
	la	%r3,8(%r3)
	brctg	%r4,.L1871
	j	.L1763
	.cfi_endproc
.LFE92:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB93:
	.cfi_startproc
	cli	0(%r2),0
	lgr	%r1,%r2
	je	.L1879
.L1880:
	cli	1(%r1),0
	la	%r1,1(%r1)
	jne	.L1880
.L1879:
	ltgr	%r4,%r4
	je	.L1944
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r5,7
	lgr	%r12,%r4
	aghi	%r12,-1
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L1903
	cghi	%r5,1
	je	.L1926
	cghi	%r5,2
	je	.L1927
	cghi	%r5,3
	je	.L1928
	cghi	%r5,4
	je	.L1929
	cghi	%r5,5
	je	.L1930
	cghi	%r5,6
	jne	.L1948
.L1931:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1930:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1929:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1928:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1927:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1926:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1884
	cghi	%r4,1
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	je	.L1882
.L1903:
	srlg	%r0,%r0,3
.L1881:
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1884
	llgc	%r12,1(%r3)
	stc	%r12,1(%r1)
	ltgr	%r12,%r12
	je	.L1884
	llgc	%r5,2(%r3)
	stc	%r5,2(%r1)
	ltgr	%r5,%r5
	je	.L1884
	llgc	%r4,3(%r3)
	stc	%r4,3(%r1)
	ltgr	%r4,%r4
	je	.L1884
	llgc	%r12,4(%r3)
	stc	%r12,4(%r1)
	ltgr	%r12,%r12
	je	.L1884
	llgc	%r5,5(%r3)
	stc	%r5,5(%r1)
	ltgr	%r5,%r5
	je	.L1884
	llgc	%r4,6(%r3)
	stc	%r4,6(%r1)
	ltgr	%r4,%r4
	je	.L1884
	llgc	%r12,7(%r3)
	stc	%r12,7(%r1)
	ltgr	%r12,%r12
	je	.L1884
	la	%r3,8(%r3)
	la	%r1,8(%r1)
	brctg	%r0,.L1881
.L1882:
	mvi	0(%r1),0
.L1884:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1948:
	.cfi_restore_state
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1884
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	lgr	%r4,%r12
	j	.L1931
.L1944:
	.cfi_restore 12
	mvi	0(%r1),0
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
	ltgr	%r3,%r3
	lgr	%r4,%r2
	lghi	%r2,0
	ber	%r14
	lghi	%r1,7
	lgr	%r5,%r3
	ngr	%r1,%r3
	je	.L1970
	cghi	%r1,1
	je	.L1993
	cghi	%r1,2
	je	.L1994
	cghi	%r1,3
	je	.L1995
	cghi	%r1,4
	je	.L1996
	cghi	%r1,5
	je	.L1997
	cghi	%r1,6
	jne	.L2010
.L1998:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1997:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1996:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1995:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1994:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1993:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
	cgr	%r3,%r2
	ber	%r14
.L1970:
	srlg	%r0,%r5,3
.L1951:
	la	%r3,0(%r2,%r4)
	cli	0(%r3),0
	ber	%r14
	lgr	%r5,%r2
	aghi	%r5,1
	lgr	%r2,%r5
	la	%r1,0(%r5,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
	la	%r3,0(%r2,%r4)
	cli	0(%r3),0
	ber	%r14
	la	%r1,2(%r5,%r4)
	lgr	%r2,%r5
	aghi	%r2,2
	cli	0(%r1),0
	ber	%r14
	la	%r3,3(%r5,%r4)
	aghi	%r2,1
	cli	0(%r3),0
	ber	%r14
	la	%r1,4(%r5,%r4)
	aghi	%r2,1
	cli	0(%r1),0
	ber	%r14
	la	%r3,5(%r5,%r4)
	aghi	%r2,1
	cli	0(%r3),0
	ber	%r14
	la	%r1,6(%r5,%r4)
	aghi	%r2,1
	cli	0(%r1),0
	ber	%r14
	aghi	%r5,7
	lgr	%r2,%r5
	brctg	%r0,.L1951
	br	%r14
.L2010:
	cli	0(%r4),0
	ber	%r14
	lghi	%r2,1
	j	.L1998
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	icm	%r5,1,0(%r2)
	je	.L2017
.L2023:
	lhi	%r1,255
	nr	%r5,%r1
	lgr	%r1,%r3
	j	.L2016
.L2015:
	cr	%r4,%r5
	la	%r1,1(%r1)
	ber	%r14
.L2016:
	llgc	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L2015
	la	%r2,1(%r2)
	icm	%r5,1,0(%r2)
	jne	.L2023
.L2017:
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
	lghi	%r0,0
.L2028:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	lgr	%r2,%r1
	cr	%r5,%r3
	je	.L2027
	lgr	%r2,%r0
.L2027:
	tml	%r4,255
	la	%r1,1(%r1)
	lgr	%r0,%r2
	jne	.L2028
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
	stmg	%r6,%r13,96(%r15)
	.cfi_offset 6, -64
	.cfi_offset 7, -56
	.cfi_offset 8, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	icm	%r9,1,0(%r3)
	je	.L2032
	lgr	%r10,%r3
.L2034:
	cli	1(%r10),0
	la	%r10,1(%r10)
	jne	.L2034
	slgr	%r10,%r3
	jhe	.L2032
	lhi	%r11,255
	aghi	%r10,-1
	nr	%r11,%r9
	j	.L2085
.L2089:
	ltr	%r4,%r4
	la	%r2,1(%r2)
	je	.L2088
.L2085:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r11
	jne	.L2089
	lghi	%r8,3
	lgr	%r4,%r3
	ngr	%r8,%r10
	lgr	%r5,%r2
	lr	%r12,%r9
	lgr	%r0,%r10
	je	.L2058
	lhi	%r1,255
	nr	%r1,%r9
	cr	%r11,%r1
	jne	.L2039
	ic	%r1,1(%r2)
	lhi	%r6,255
	nr	%r6,%r1
	la	%r5,1(%r2)
	la	%r7,1(%r3)
	je	.L2084
	ic	%r12,1(%r3)
	lhi	%r13,255
	nr	%r13,%r12
	je	.L2039
	cghi	%r8,1
	lgr	%r4,%r7
	je	.L2058
	cghi	%r8,2
	je	.L2072
	cr	%r6,%r13
	jne	.L2039
	icm	%r1,1,2(%r2)
	la	%r5,1(%r5)
	la	%r8,2(%r3)
	je	.L2084
	icm	%r12,1,2(%r3)
	je	.L2039
	lgr	%r4,%r8
.L2072:
	lhi	%r7,255
	nr	%r1,%r7
	nr	%r12,%r7
	cr	%r1,%r12
	jne	.L2039
	la	%r5,1(%r5)
	la	%r6,1(%r4)
	icm	%r1,1,0(%r5)
	je	.L2084
	icm	%r12,1,1(%r4)
	je	.L2039
	lgr	%r4,%r6
.L2058:
	srlg	%r0,%r0,2
	aghi	%r0,1
.L2036:
	lhi	%r13,255
	lhi	%r8,255
	nr	%r13,%r1
	nr	%r8,%r12
	brctg	%r0,.L2071
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	je	.L2032
.L2039:
	la	%r2,1(%r2)
	j	.L2085
.L2071:
	cr	%r13,%r8
	jne	.L2039
	ic	%r1,1(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	la	%r12,1(%r4)
	je	.L2084
	llgc	%r1,1(%r4)
	lgr	%r4,%r12
	ltr	%r1,%r1
	je	.L2039
	cr	%r7,%r1
	jne	.L2039
	ic	%r1,2(%r5)
	lhi	%r13,255
	nr	%r13,%r1
	la	%r6,1(%r12)
	je	.L2084
	llgc	%r8,1(%r12)
	lgr	%r4,%r6
	ltr	%r8,%r8
	je	.L2039
	cr	%r13,%r8
	jne	.L2039
	ic	%r1,3(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2084
	llgc	%r1,1(%r6)
	la	%r4,2(%r12)
	ltr	%r1,%r1
	je	.L2039
	cr	%r7,%r1
	jne	.L2039
	la	%r5,4(%r5)
	la	%r6,3(%r12)
	icm	%r1,1,0(%r5)
	je	.L2084
	icm	%r12,1,3(%r12)
	lgr	%r4,%r6
	jne	.L2036
	la	%r2,1(%r2)
	j	.L2085
.L2088:
	lghi	%r2,0
.L2032:
	lmg	%r6,%r13,96(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
.L2084:
	.cfi_restore_state
	ic	%r12,1(%r4)
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	jne	.L2039
	j	.L2032
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	larl	%r5,.L2103
	kdb	%f0,.L2104-.L2103(%r5)
	jl	.L2102
	jnh	.L2095
	kdb	%f2,.L2104-.L2103(%r5)
	jl	.L2094
.L2095:
	br	%r14
.L2102:
	kdb	%f2,.L2104-.L2103(%r5)
	jnh	.L2095
.L2094:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2103:
.L2104:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE98:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB99:
	.cfi_startproc
	ltgr	%r0,%r5
	ber	%r14
	clgr	%r3,%r0
	jl	.L2114
	sgr	%r3,%r0
	algr	%r3,%r2
	jnle	.L2114
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ic	%r9,0(%r4)
	lhi	%r12,255
	nr	%r12,%r9
	j	.L2111
.L2115:
	lgr	%r2,%r5
.L2107:
	clgr	%r3,%r2
	jl	.L2116
.L2111:
	llgc	%r1,0(%r2)
	la	%r5,1(%r2)
	cr	%r1,%r12
	jne	.L2115
	cghi	%r0,1
	je	.L2105
.L2110:
	lgr	%r11,%r0
	lghi	%r10,7
	aghi	%r11,-1
	lghi	%r1,1
	ngr	%r10,%r11
	je	.L2134
	cghi	%r10,1
	je	.L2156
	cghi	%r10,2
	je	.L2157
	cghi	%r10,3
	je	.L2158
	cghi	%r10,4
	je	.L2159
	cghi	%r10,5
	je	.L2160
	cghi	%r10,6
	je	.L2161
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	jne	.L2171
.L2161:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
.L2160:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
.L2159:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
.L2158:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
.L2157:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
.L2156:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,1
	cgr	%r1,%r0
	je	.L2105
.L2134:
	srlg	%r11,%r11,3
.L2108:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,1(%r1,%r2)
	llgc	%r8,1(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,2(%r1,%r2)
	llgc	%r8,2(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,3(%r1,%r2)
	llgc	%r8,3(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,4(%r1,%r2)
	llgc	%r8,4(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,5(%r1,%r2)
	llgc	%r8,5(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,6(%r1,%r2)
	llgc	%r8,6(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	la	%r10,7(%r1,%r2)
	llgc	%r8,7(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2171
	aghi	%r1,8
	brctg	%r11,.L2108
.L2105:
	lmg	%r8,%r12,120(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2171:
	.cfi_restore_state
	clgr	%r3,%r5
	jl	.L2116
	clm	%r9,1,0(%r5)
	la	%r2,1(%r5)
	jne	.L2107
	lgr	%r1,%r5
	lgr	%r5,%r2
	lgr	%r2,%r1
	j	.L2110
.L2116:
	lghi	%r2,0
	lmg	%r8,%r12,120(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2114:
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
	ltgr	%r12,%r4
	lay	%r15,-40(%r15)
	.cfi_def_cfa_offset 200
	lgr	%r11,%r2
	je	.L2182
	brasl	%r14,memmove@PLT
.L2182:
	lg	%r4,184(%r15)
	la	%r2,0(%r12,%r11)
	lmg	%r11,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r4
	.cfi_endproc
.LFE100:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB101:
	.cfi_startproc
	larl	%r5,.L2215
	kdb	%f0,.L2216-.L2215(%r5)
	jl	.L2211
	kdb	%f0,.L2217-.L2215(%r5)
	jnhe	.L2212
	lhi	%r3,0
.L2191:
	lhi	%r0,0
.L2197:
	ahi	%r0,1
	mdb	%f0,.L2218-.L2215(%r5)
	kdb	%f0,.L2217-.L2215(%r5)
	jhe	.L2197
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L2214:
	lcdbr	%f0,%f0
	br	%r14
.L2212:
	kdb	%f0,.L2218-.L2215(%r5)
	jnl	.L2194
	cdb	%f0,.L2216-.L2215(%r5)
	jne	.L2203
.L2194:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L2211:
	lcdbr	%f2,%f0
	kdb	%f0,.L2219-.L2215(%r5)
	jnle	.L2213
	lhi	%r3,1
	ldr	%f0,%f2
	j	.L2191
.L2213:
	kdb	%f0,.L2220-.L2215(%r5)
	jnh	.L2194
	lhi	%r3,1
.L2192:
	lhi	%r0,0
	ldr	%f0,%f2
.L2199:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L2218-.L2215(%r5)
	jl	.L2199
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L2214
	br	%r14
.L2203:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L2192
	.section	.rodata
	.align	8
.L2215:
.L2220:
	.long	-1075838976
	.long	0
.L2219:
	.long	-1074790400
	.long	0
.L2218:
	.long	1071644672
	.long	0
.L2217:
	.long	1072693248
	.long	0
.L2216:
	.long	0
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
.L2223:
	lghi	%r1,1
	ngr	%r1,%r4
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	ltgr	%r4,%r4
	jne	.L2223
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
	jhe	.L2274
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L2229:
	ltr	%r3,%r3
	lr	%r0,%r3
	sll	%r0,1
	jl	.L2234
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2231
	ltr	%r3,%r3
	jl	.L2234
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L2231
	ahi	%r5,-8
	brct	%r11,.L2229
.L2232:
	ltgr	%r4,%r4
	je	.L2240
	lr	%r5,%r2
.L2240:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2231:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2244
.L2234:
	lhi	%r5,0
	j	.L2239
.L2275:
	lr	%r11,%r1
.L2238:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L2232
.L2239:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r12,%r2
	lhi	%r0,0
	slr	%r2,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2236
	lr	%r12,%r11
.L2236:
	ltr	%r0,%r0
	llgfr	%r2,%r12
	jne	.L2275
	lhi	%r11,0
	j	.L2238
.L2274:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	slr	%r5,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2242
	lr	%r1,%r2
.L2242:
	lhi	%r0,255
	llgfr	%r2,%r1
	nr	%r3,%r0
	ltgr	%r4,%r4
	je	.L2271
	lr	%r3,%r2
.L2271:
	llgfr	%r2,%r3
	br	%r14
.L2244:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L2232
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	ltgr	%r2,%r2
	je	.L2279
	stmg	%r14,%r15,144(%r15)
	sllg	%r2,%r2,8
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-16(%r15)
	.cfi_def_cfa_offset 176
	brasl	%r14,__clzdi2@PLT
	lg	%r4,160(%r15)
	ahi	%r2,-33
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
.L2279:
	lhi	%r0,7
	lgfr	%r2,%r0
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
	srag	%r3,%r2,63
	lgr	%r1,%r2
	xgr	%r2,%r3
	cgr	%r1,%r3
	je	.L2287
	stmg	%r14,%r15,144(%r15)
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-16(%r15)
	.cfi_def_cfa_offset 176
	brasl	%r14,__clzdi2@PLT
	lg	%r4,160(%r15)
	ahi	%r2,-1
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
.L2287:
	lhi	%r2,63
	lgfr	%r2,%r2
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
	ltgr	%r4,%r2
	lhi	%r2,0
	je	.L2294
.L2295:
	lhi	%r1,1
	lr	%r5,%r3
	nr	%r1,%r4
	srlg	%r4,%r4,1
	lcr	%r0,%r1
	sll	%r5,1
	nr	%r0,%r3
	llgfr	%r3,%r5
	ar	%r2,%r0
	ltgr	%r4,%r4
	jne	.L2295
.L2294:
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
	lr	%r0,%r4
	nill	%r0,65528
	clgr	%r2,%r3
	lr	%r1,%r4
	srl	%r1,3
	jl	.L2303
	la	%r5,0(%r4,%r3)
	clgr	%r2,%r5
	jle	.L2488
.L2303:
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ltr	%r1,%r1
	je	.L2489
	llgfr	%r12,%r1
	lghi	%r11,7
	sllg	%r8,%r12,3
	lghi	%r1,0
	lgr	%r9,%r8
	aghi	%r9,-8
	srlg	%r10,%r9,3
	aghi	%r10,1
	ngr	%r11,%r10
	je	.L2383
	cghi	%r11,1
	je	.L2419
	cghi	%r11,2
	je	.L2420
	cghi	%r11,3
	je	.L2421
	cghi	%r11,4
	je	.L2422
	cghi	%r11,5
	je	.L2423
	cghi	%r11,6
	je	.L2424
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2424:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2423:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L2422:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2421:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2420:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2419:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r8,%r1
	je	.L2476
.L2383:
	srlg	%r8,%r10,3
.L2306:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r9,8(%r1,%r3)
	stg	%r9,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	lg	%r12,32(%r1,%r3)
	stg	%r12,32(%r1,%r2)
	lg	%r10,40(%r1,%r3)
	stg	%r10,40(%r1,%r2)
	lg	%r9,48(%r1,%r3)
	stg	%r9,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r8,.L2306
.L2476:
	clr	%r0,%r4
	jhe	.L2299
	lr	%r9,%r4
	sr	%r9,%r0
	lr	%r1,%r9
	lhi	%r8,14
	ahi	%r1,-1
	llgfr	%r11,%r0
	clr	%r1,%r8
	jle	.L2308
	lgr	%r5,%r2
	algfr	%r5,%r0
	lgr	%r12,%r3
	la	%r10,1(%r11,%r3)
	algfr	%r12,%r0
	lgr	%r1,%r5
	lghi	%r8,6
	sgr	%r1,%r10
	clgr	%r1,%r8
	jle	.L2308
	lgr	%r1,%r12
	lghi	%r10,7
	ogr	%r1,%r5
	ngr	%r1,%r10
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2308
	lr	%r11,%r9
	srl	%r11,3
	llgfr	%r8,%r11
	lghi	%r1,0
	sllg	%r10,%r8,3
	lghi	%r8,7
	lgr	%r11,%r10
	aghi	%r11,-8
	srlg	%r11,%r11,3
	aghi	%r11,1
	ngr	%r8,%r11
	je	.L2362
	cghi	%r8,1
	je	.L2425
	cghi	%r8,2
	je	.L2426
	cghi	%r8,3
	je	.L2427
	cghi	%r8,4
	je	.L2428
	cghi	%r8,5
	je	.L2429
	cghi	%r8,6
	je	.L2430
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
.L2430:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2429:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2428:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2427:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2426:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2425:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
	cgr	%r1,%r10
	je	.L2475
.L2362:
	srlg	%r11,%r11,3
.L2309:
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r8,8(%r1,%r12)
	stg	%r8,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r8,24(%r1,%r12)
	stg	%r8,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r8,40(%r1,%r12)
	stg	%r8,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r8,56(%r1,%r12)
	stg	%r8,56(%r1,%r5)
	aghi	%r1,64
	brctg	%r11,.L2309
.L2475:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r0
	tmll	%r9,7
	je	.L2299
	llgfr	%r9,%r1
	lr	%r5,%r1
	ahi	%r5,1
	clr	%r5,%r4
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	jhe	.L2299
	llgfr	%r11,%r5
	lr	%r10,%r1
	ahi	%r10,2
	clr	%r10,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2299
	llgfr	%r8,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	jhe	.L2299
	llgfr	%r5,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	jhe	.L2299
	llgfr	%r11,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2299
	llgfr	%r10,%r10
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r8,0(%r10,%r3)
	stc	%r8,0(%r10,%r2)
	jhe	.L2299
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2299:
	lmg	%r8,%r12,120(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2488:
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r1,%r0
	ber	%r14
	lgr	%r4,%r1
	lghi	%r5,7
	aghi	%r4,1
	ngr	%r5,%r4
	je	.L2404
	cghi	%r5,1
	je	.L2413
	cghi	%r5,2
	je	.L2414
	cghi	%r5,3
	je	.L2415
	cghi	%r5,4
	je	.L2416
	cghi	%r5,5
	je	.L2417
	cghi	%r5,6
	jne	.L2490
.L2418:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L2417:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L2416:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L2415:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L2414:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L2413:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	ber	%r14
.L2404:
	srlg	%r4,%r4,3
.L2313:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r0,-3(%r1,%r3)
	stcy	%r0,-3(%r1,%r2)
	icy	%r5,-4(%r1,%r3)
	stcy	%r5,-4(%r1,%r2)
	icy	%r0,-5(%r1,%r3)
	stcy	%r0,-5(%r1,%r2)
	icy	%r5,-6(%r1,%r3)
	stcy	%r5,-6(%r1,%r2)
	icy	%r0,-7(%r1,%r3)
	stcy	%r0,-7(%r1,%r2)
	aghi	%r1,-8
	brctg	%r4,.L2313
	br	%r14
.L2489:
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ltgr	%r4,%r4
	llgfr	%r11,%r0
	je	.L2299
.L2308:
	lghi	%r9,-1
	lhi	%r0,7
	xgr	%r9,%r11
	lgr	%r1,%r11
	ar	%r9,%r4
	aghi	%r1,1
	ic	%r5,0(%r11,%r3)
	nr	%r0,%r9
	stc	%r5,0(%r11,%r2)
	clr	%r1,%r4
	jhe	.L2299
	ltr	%r0,%r0
	je	.L2341
	chi	%r0,1
	je	.L2432
	chi	%r0,2
	je	.L2433
	chi	%r0,3
	je	.L2434
	chi	%r0,4
	je	.L2435
	chi	%r0,5
	je	.L2436
	chi	%r0,6
	je	.L2437
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	lgr	%r1,%r11
	aghi	%r1,2
.L2437:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L2436:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2435:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L2434:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L2433:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2432:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clr	%r1,%r4
	jhe	.L2299
.L2341:
	lr	%r4,%r9
	srl	%r4,3
.L2311:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	stc	%r0,5(%r1,%r2)
	ic	%r12,6(%r1,%r3)
	stc	%r12,6(%r1,%r2)
	ic	%r9,7(%r1,%r3)
	stc	%r9,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2311
	j	.L2299
.L2490:
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	j	.L2418
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	stmg	%r10,%r13,128(%r15)
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L2635
	clgr	%r2,%r3
	lr	%r12,%r4
	srl	%r12,1
	jl	.L2496
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2633
.L2496:
	ltr	%r12,%r12
	je	.L2495
	lr	%r10,%r12
	lhi	%r11,6
	ahi	%r10,-1
	clr	%r10,%r11
	jle	.L2499
	lgr	%r1,%r3
	lghi	%r0,7
	ogr	%r1,%r2
	ngr	%r1,%r0
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2499
	la	%r5,2(%r3)
	lgr	%r10,%r2
	lghi	%r11,4
	sgr	%r10,%r5
	clgr	%r10,%r11
	jle	.L2499
	lg	%r10,.L2636-.L2635(%r13)
	ngr	%r10,%r4
	lgr	%r5,%r10
	aghi	%r5,-8
	srlg	%r5,%r5,3
	lghi	%r11,7
	aghi	%r5,1
	lr	%r0,%r4
	ngr	%r11,%r5
	srl	%r0,3
	lghi	%r1,0
	je	.L2550
	cghi	%r11,1
	je	.L2586
	cghi	%r11,2
	je	.L2587
	cghi	%r11,3
	je	.L2588
	cghi	%r11,4
	je	.L2589
	cghi	%r11,5
	je	.L2590
	cghi	%r11,6
	je	.L2591
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2591:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2590:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2589:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2588:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2587:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2586:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r10
	je	.L2625
.L2550:
	srlg	%r10,%r5,3
.L2500:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	lg	%r5,32(%r1,%r3)
	stg	%r5,32(%r1,%r2)
	lg	%r11,40(%r1,%r3)
	stg	%r11,40(%r1,%r2)
	lg	%r5,48(%r1,%r3)
	stg	%r5,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r10,.L2500
.L2625:
	lr	%r1,%r0
	sll	%r1,2
	cr	%r12,%r1
	je	.L2495
	llgfr	%r10,%r1
	lr	%r0,%r1
	sllg	%r5,%r10,1
	ahi	%r0,1
	clr	%r12,%r0
	lh	%r11,0(%r5,%r3)
	sth	%r11,0(%r5,%r2)
	jle	.L2495
	llgfr	%r10,%r0
	ahi	%r1,2
	sllg	%r5,%r10,1
	clr	%r12,%r1
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	jle	.L2495
	llgfr	%r12,%r1
	sllg	%r1,%r12,1
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
.L2495:
	tmll	%r4,1
	je	.L2492
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2492:
	lmg	%r10,%r13,128(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2633:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r10,%r0
	je	.L2492
	lgr	%r4,%r10
	lghi	%r5,7
	aghi	%r4,1
	ngr	%r5,%r4
	je	.L2571
	cghi	%r5,1
	je	.L2580
	cghi	%r5,2
	je	.L2581
	cghi	%r5,3
	je	.L2582
	cghi	%r5,4
	je	.L2583
	cghi	%r5,5
	je	.L2584
	cghi	%r5,6
	jne	.L2634
.L2585:
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	aghi	%r10,-1
.L2584:
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	aghi	%r10,-1
.L2583:
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	aghi	%r10,-1
.L2582:
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	aghi	%r10,-1
.L2581:
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	aghi	%r10,-1
.L2580:
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	aghi	%r10,-1
	cghi	%r10,-1
	je	.L2492
.L2571:
	srlg	%r4,%r4,3
.L2505:
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	icy	%r0,-1(%r10,%r3)
	stcy	%r0,-1(%r10,%r2)
	icy	%r5,-2(%r10,%r3)
	stcy	%r5,-2(%r10,%r2)
	icy	%r11,-3(%r10,%r3)
	stcy	%r11,-3(%r10,%r2)
	icy	%r12,-4(%r10,%r3)
	stcy	%r12,-4(%r10,%r2)
	icy	%r1,-5(%r10,%r3)
	stcy	%r1,-5(%r10,%r2)
	icy	%r0,-6(%r10,%r3)
	stcy	%r0,-6(%r10,%r2)
	icy	%r5,-7(%r10,%r3)
	stcy	%r5,-7(%r10,%r2)
	aghi	%r10,-8
	brctg	%r4,.L2505
	j	.L2492
.L2499:
	llgfr	%r10,%r12
	lghi	%r12,7
	sllg	%r0,%r10,1
	lghi	%r1,0
	lgr	%r5,%r0
	aghi	%r5,-2
	srlg	%r11,%r5,1
	aghi	%r11,1
	ngr	%r12,%r11
	je	.L2529
	cghi	%r12,1
	je	.L2592
	cghi	%r12,2
	je	.L2593
	cghi	%r12,3
	je	.L2594
	cghi	%r12,4
	je	.L2595
	cghi	%r12,5
	je	.L2596
	cghi	%r12,6
	je	.L2597
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L2597:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	aghi	%r1,2
.L2596:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2595:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L2594:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	aghi	%r1,2
.L2593:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2592:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgr	%r0,%r1
	je	.L2495
.L2529:
	srlg	%r11,%r11,3
.L2502:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r10,10(%r1,%r3)
	sth	%r10,10(%r1,%r2)
	lh	%r5,12(%r1,%r3)
	sth	%r5,12(%r1,%r2)
	lh	%r12,14(%r1,%r3)
	sth	%r12,14(%r1,%r2)
	aghi	%r1,16
	brctg	%r11,.L2502
	j	.L2495
.L2634:
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	aghi	%r10,-1
	j	.L2585
	.section	.rodata
	.align	8
.L2635:
.L2636:
	.quad	4294967288
	.align	2
.text
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	stmg	%r8,%r13,112(%r15)
	.cfi_offset 8, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L2870
	lr	%r0,%r4
	nill	%r0,65532
	clgr	%r2,%r3
	lr	%r11,%r4
	srl	%r11,2
	jl	.L2642
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2867
.L2642:
	ltr	%r11,%r11
	je	.L2868
	lr	%r8,%r11
	lhi	%r12,8
	ahi	%r8,-1
	clr	%r8,%r12
	jle	.L2644
	lgr	%r1,%r2
	lghi	%r5,7
	ogr	%r1,%r3
	ngr	%r1,%r5
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2644
	la	%r9,4(%r3)
	cgr	%r2,%r9
	je	.L2644
	lg	%r8,.L2871-.L2870(%r13)
	ngr	%r8,%r4
	lgr	%r10,%r8
	aghi	%r10,-8
	srlg	%r5,%r10,3
	lghi	%r9,7
	aghi	%r5,1
	lr	%r12,%r4
	ngr	%r9,%r5
	srl	%r12,3
	lghi	%r1,0
	je	.L2749
	cghi	%r9,1
	je	.L2785
	cghi	%r9,2
	je	.L2786
	cghi	%r9,3
	je	.L2787
	cghi	%r9,4
	je	.L2788
	cghi	%r9,5
	je	.L2789
	cghi	%r9,6
	je	.L2790
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2790:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2789:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2788:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2787:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2786:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2785:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r8,%r1
	je	.L2856
.L2749:
	srlg	%r8,%r5,3
.L2645:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r9,40(%r1,%r3)
	stg	%r9,40(%r1,%r2)
	lg	%r5,48(%r1,%r3)
	stg	%r5,48(%r1,%r2)
	lg	%r10,56(%r1,%r3)
	stg	%r10,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r8,.L2645
.L2856:
	sll	%r12,1
	cr	%r11,%r12
	je	.L2648
	llgfr	%r11,%r12
	sllg	%r1,%r11,2
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
.L2648:
	clr	%r0,%r4
	jhe	.L2637
	lr	%r9,%r4
	sr	%r9,%r0
	lr	%r8,%r9
	lhi	%r10,14
	ahi	%r8,-1
	llgfr	%r11,%r0
	clr	%r8,%r10
	jle	.L2640
	lgr	%r5,%r2
	algfr	%r5,%r0
	lgr	%r12,%r3
	la	%r8,1(%r11,%r3)
	algfr	%r12,%r0
	lgr	%r1,%r5
	lghi	%r10,6
	sgr	%r1,%r8
	clgr	%r1,%r10
	jle	.L2640
	lgr	%r8,%r12
	lghi	%r1,7
	ogr	%r8,%r5
	ngr	%r8,%r1
	aghi	%r8,-1
	ltgr	%r8,%r8
	jhe	.L2640
	lr	%r11,%r9
	srl	%r11,3
	llgfr	%r10,%r11
	lghi	%r1,0
	sllg	%r10,%r10,3
	lgr	%r8,%r10
	aghi	%r8,-8
	srlg	%r11,%r8,3
	lghi	%r8,7
	aghi	%r11,1
	ngr	%r8,%r11
	je	.L2707
	cghi	%r8,1
	je	.L2797
	cghi	%r8,2
	je	.L2798
	cghi	%r8,3
	je	.L2799
	cghi	%r8,4
	je	.L2800
	cghi	%r8,5
	je	.L2801
	cghi	%r8,6
	je	.L2802
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
.L2802:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2801:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2800:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2799:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2798:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2797:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
	cgr	%r10,%r1
	je	.L2855
.L2707:
	srlg	%r11,%r11,3
.L2649:
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r8,8(%r1,%r12)
	stg	%r8,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r8,24(%r1,%r12)
	stg	%r8,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r8,40(%r1,%r12)
	stg	%r8,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r8,56(%r1,%r12)
	stg	%r8,56(%r1,%r5)
	aghi	%r1,64
	brctg	%r11,.L2649
.L2855:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r0
	tmll	%r9,7
	je	.L2637
	llgfr	%r9,%r1
	lr	%r5,%r1
	ahi	%r5,1
	clr	%r5,%r4
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	jhe	.L2637
	llgfr	%r11,%r5
	lr	%r10,%r1
	ahi	%r10,2
	clr	%r10,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2637
	llgfr	%r8,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	jhe	.L2637
	llgfr	%r5,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	jhe	.L2637
	llgfr	%r11,%r10
	ahi	%r10,1
	clr	%r10,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2637
	llgfr	%r10,%r10
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r8,0(%r10,%r3)
	stc	%r8,0(%r10,%r2)
	jhe	.L2637
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2637:
	lmg	%r8,%r13,112(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2867:
	.cfi_restore_state
	lr	%r5,%r4
	ahi	%r5,-1
	ltgr	%r4,%r4
	llgfr	%r8,%r5
	je	.L2637
	lgr	%r4,%r8
	lghi	%r9,7
	aghi	%r4,1
	ngr	%r9,%r4
	je	.L2770
	cghi	%r9,1
	je	.L2779
	cghi	%r9,2
	je	.L2780
	cghi	%r9,3
	je	.L2781
	cghi	%r9,4
	je	.L2782
	cghi	%r9,5
	je	.L2783
	cghi	%r9,6
	jne	.L2869
.L2784:
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	aghi	%r8,-1
.L2783:
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	aghi	%r8,-1
.L2782:
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	aghi	%r8,-1
.L2781:
	ic	%r1,0(%r8,%r3)
	stc	%r1,0(%r8,%r2)
	aghi	%r8,-1
.L2780:
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	aghi	%r8,-1
.L2779:
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	aghi	%r8,-1
	cghi	%r8,-1
	je	.L2637
.L2770:
	srlg	%r4,%r4,3
.L2653:
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	icy	%r12,-1(%r8,%r3)
	stcy	%r12,-1(%r8,%r2)
	icy	%r0,-2(%r8,%r3)
	stcy	%r0,-2(%r8,%r2)
	icy	%r11,-3(%r8,%r3)
	stcy	%r11,-3(%r8,%r2)
	icy	%r1,-4(%r8,%r3)
	stcy	%r1,-4(%r8,%r2)
	icy	%r5,-5(%r8,%r3)
	stcy	%r5,-5(%r8,%r2)
	icy	%r9,-6(%r8,%r3)
	stcy	%r9,-6(%r8,%r2)
	icy	%r10,-7(%r8,%r3)
	stcy	%r10,-7(%r8,%r2)
	aghi	%r8,-8
	brctg	%r4,.L2653
	j	.L2637
.L2868:
	ltgr	%r4,%r4
	llgfr	%r11,%r0
	je	.L2637
.L2640:
	lghi	%r9,-1
	lhi	%r0,7
	xgr	%r9,%r11
	lgr	%r1,%r11
	ar	%r9,%r4
	aghi	%r1,1
	ic	%r5,0(%r11,%r3)
	nr	%r0,%r9
	stc	%r5,0(%r11,%r2)
	clr	%r4,%r1
	jle	.L2637
	ltr	%r0,%r0
	je	.L2686
	chi	%r0,1
	je	.L2804
	chi	%r0,2
	je	.L2805
	chi	%r0,3
	je	.L2806
	chi	%r0,4
	je	.L2807
	chi	%r0,5
	je	.L2808
	chi	%r0,6
	je	.L2809
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	lgr	%r1,%r11
	aghi	%r1,2
.L2809:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L2808:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2807:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L2806:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L2805:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2804:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clr	%r4,%r1
	jle	.L2637
.L2686:
	lr	%r4,%r9
	srl	%r4,3
.L2651:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r8,3(%r1,%r3)
	stc	%r8,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	stc	%r0,5(%r1,%r2)
	ic	%r12,6(%r1,%r3)
	stc	%r12,6(%r1,%r2)
	ic	%r9,7(%r1,%r3)
	stc	%r9,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2651
	j	.L2637
.L2644:
	llgfr	%r9,%r11
	lghi	%r11,7
	sllg	%r10,%r9,2
	lghi	%r8,0
	lgr	%r5,%r10
	aghi	%r5,-4
	srlg	%r12,%r5,2
	aghi	%r12,1
	ngr	%r11,%r12
	je	.L2728
	cghi	%r11,1
	je	.L2791
	cghi	%r11,2
	je	.L2792
	cghi	%r11,3
	je	.L2793
	cghi	%r11,4
	je	.L2794
	cghi	%r11,5
	je	.L2795
	cghi	%r11,6
	je	.L2796
	l	%r1,0(%r3)
	lghi	%r8,4
	st	%r1,0(%r2)
.L2796:
	l	%r9,0(%r8,%r3)
	st	%r9,0(%r8,%r2)
	aghi	%r8,4
.L2795:
	l	%r5,0(%r8,%r3)
	st	%r5,0(%r8,%r2)
	aghi	%r8,4
.L2794:
	l	%r11,0(%r8,%r3)
	st	%r11,0(%r8,%r2)
	aghi	%r8,4
.L2793:
	l	%r1,0(%r8,%r3)
	st	%r1,0(%r8,%r2)
	aghi	%r8,4
.L2792:
	l	%r9,0(%r8,%r3)
	st	%r9,0(%r8,%r2)
	aghi	%r8,4
.L2791:
	l	%r5,0(%r8,%r3)
	st	%r5,0(%r8,%r2)
	aghi	%r8,4
	cgr	%r8,%r10
	je	.L2648
.L2728:
	srlg	%r10,%r12,3
.L2647:
	l	%r12,0(%r8,%r3)
	st	%r12,0(%r8,%r2)
	l	%r11,4(%r8,%r3)
	st	%r11,4(%r8,%r2)
	l	%r1,8(%r8,%r3)
	st	%r1,8(%r8,%r2)
	l	%r9,12(%r8,%r3)
	st	%r9,12(%r8,%r2)
	l	%r5,16(%r8,%r3)
	st	%r5,16(%r8,%r2)
	l	%r12,20(%r8,%r3)
	st	%r12,20(%r8,%r2)
	l	%r11,24(%r8,%r3)
	st	%r11,24(%r8,%r2)
	l	%r1,28(%r8,%r3)
	st	%r1,28(%r8,%r2)
	aghi	%r8,32
	brctg	%r10,.L2647
	j	.L2648
.L2869:
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	aghi	%r8,-1
	j	.L2784
	.section	.rodata
	.align	8
.L2870:
.L2871:
	.quad	4294967288
	.align	2
.text
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
	cdgbr	%f0,%r2
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
	cegbr	%f0,%r2
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
	larl	%r5,.L2881
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2879
	ld	%f4,.L2882-.L2881(%r5)
	ld	%f6,.L2882-.L2881+8(%r5)
	axbr	%f0,%f4
.L2879:
	ldxbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2881:
.L2882:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE113:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB114:
	.cfi_startproc
	larl	%r5,.L2886
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2884
	ld	%f4,.L2887-.L2886(%r5)
	ld	%f6,.L2887-.L2886+8(%r5)
	axbr	%f0,%f4
.L2884:
	lexbr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2886:
.L2887:
	.long	1077870592
	.long	0
	.long	0
	.long	0
	.align	2
.text
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
	lgr	%r1,%r2
	sra	%r2,15
	ltr	%r2,%r2
	jne	.L2893
	lr	%r2,%r1
	sra	%r2,14
	jne	.L2892
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2894
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2895
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2896
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2897
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2898
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2899
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2900
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2901
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2902
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2903
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2904
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2905
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2906
	ltgr	%r1,%r1
	lhi	%r2,16
	jne	.L2909
.L2892:
	lghi	%r1,31
	ngr	%r2,%r1
	br	%r14
.L2893:
	lhi	%r2,0
	j	.L2892
.L2904:
	lhi	%r2,12
	j	.L2892
.L2909:
	lhi	%r2,15
	j	.L2892
.L2894:
	lhi	%r2,2
	j	.L2892
.L2895:
	lhi	%r2,3
	j	.L2892
.L2896:
	lhi	%r2,4
	j	.L2892
.L2897:
	lhi	%r2,5
	j	.L2892
.L2898:
	lhi	%r2,6
	j	.L2892
.L2899:
	lhi	%r2,7
	j	.L2892
.L2900:
	lhi	%r2,8
	j	.L2892
.L2901:
	lhi	%r2,9
	j	.L2892
.L2902:
	lhi	%r2,10
	j	.L2892
.L2903:
	lhi	%r2,11
	j	.L2892
.L2905:
	lhi	%r2,13
	j	.L2892
.L2906:
	lhi	%r2,14
	j	.L2892
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
	jne	.L2914
	tmll	%r2,2
	jne	.L2915
	tmll	%r2,4
	jne	.L2916
	tmll	%r2,8
	jne	.L2917
	tmll	%r2,16
	jne	.L2918
	tmll	%r2,32
	jne	.L2919
	tmll	%r2,64
	jne	.L2920
	tmll	%r2,128
	jne	.L2921
	tmll	%r2,256
	jne	.L2922
	tmll	%r2,512
	jne	.L2923
	tmll	%r2,1024
	jne	.L2924
	tmll	%r2,2048
	jne	.L2925
	tmll	%r2,4096
	jne	.L2926
	tmll	%r2,8192
	jne	.L2927
	tmll	%r2,16384
	jne	.L2928
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	jne	.L2931
.L2913:
	lghi	%r0,31
	ngr	%r2,%r0
	br	%r14
.L2914:
	lhi	%r2,0
	j	.L2913
.L2915:
	lhi	%r2,1
	j	.L2913
.L2926:
	lhi	%r2,12
	j	.L2913
.L2916:
	lhi	%r2,2
	j	.L2913
.L2917:
	lhi	%r2,3
	j	.L2913
.L2918:
	lhi	%r2,4
	j	.L2913
.L2919:
	lhi	%r2,5
	j	.L2913
.L2920:
	lhi	%r2,6
	j	.L2913
.L2921:
	lhi	%r2,7
	j	.L2913
.L2922:
	lhi	%r2,8
	j	.L2913
.L2923:
	lhi	%r2,9
	j	.L2913
.L2924:
	lhi	%r2,10
	j	.L2913
.L2925:
	lhi	%r2,11
	j	.L2913
.L2927:
	lhi	%r2,13
	j	.L2913
.L2928:
	lhi	%r2,14
	j	.L2913
.L2931:
	lhi	%r2,15
	j	.L2913
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L2941
	keb	%f0,.L2942-.L2941(%r5)
	jhe	.L2940
	cgebr	%r2,5,%f0
	br	%r14
.L2940:
	seb	%f0,.L2942-.L2941(%r5)
	cgebr	%r2,5,%f0
	llill	%r1,32768
	agr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L2941:
.L2942:
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
	lgr	%r1,%r2
	lhi	%r3,1
	sra	%r2,1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,2
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,3
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,4
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,5
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,6
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,7
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,8
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,9
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,10
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,11
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,12
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,13
	ar	%r2,%r0
	nr	%r4,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,14
	ar	%r2,%r4
	nr	%r0,%r5
	sra	%r1,15
	ar	%r2,%r0
	ar	%r2,%r1
	lghi	%r1,1
	ngr	%r2,%r1
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
	lgr	%r1,%r2
	lhi	%r3,1
	sra	%r2,1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,2
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,3
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,4
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,5
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,6
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,7
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,8
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,9
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,10
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,11
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,12
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,13
	ar	%r2,%r0
	nr	%r4,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,14
	ar	%r2,%r4
	nr	%r0,%r5
	sra	%r1,15
	ar	%r2,%r0
	ar	%r2,%r1
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
	ltgr	%r4,%r2
	lhi	%r2,0
	je	.L2948
.L2949:
	lhi	%r1,1
	nr	%r1,%r4
	srl	%r4,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	jne	.L2949
.L2948:
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
	ltgr	%r4,%r2
	lhi	%r2,0
	jne	.L2959
	j	.L2954
.L2955:
	lhi	%r1,1
	lr	%r5,%r4
	nr	%r1,%r3
	sll	%r5,1
	lcr	%r0,%r1
	srlg	%r3,%r3,1
	nr	%r0,%r4
	llgfr	%r4,%r5
	ar	%r2,%r0
.L2959:
	ltgr	%r3,%r3
	jne	.L2955
.L2954:
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
	jhe	.L3007
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L2962:
	ltr	%r3,%r3
	lr	%r0,%r3
	sll	%r0,1
	jl	.L2967
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2964
	ltr	%r3,%r3
	jl	.L2967
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L2964
	ahi	%r5,-8
	brct	%r11,.L2962
.L2965:
	ltgr	%r4,%r4
	je	.L2973
	lr	%r5,%r2
.L2973:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2964:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2977
.L2967:
	lhi	%r5,0
	j	.L2972
.L3008:
	lr	%r11,%r1
.L2971:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L2965
.L2972:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r12,%r2
	lhi	%r0,0
	slr	%r2,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2969
	lr	%r12,%r11
.L2969:
	ltr	%r0,%r0
	llgfr	%r2,%r12
	jne	.L3008
	lhi	%r11,0
	j	.L2971
.L3007:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	slr	%r5,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2975
	lr	%r1,%r2
.L2975:
	lhi	%r0,255
	llgfr	%r2,%r1
	nr	%r3,%r0
	ltgr	%r4,%r4
	je	.L3004
	lr	%r3,%r2
.L3004:
	llgfr	%r2,%r3
	br	%r14
.L2977:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L2965
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
	jl	.L3013
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3013:
	lghi	%r2,-1
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
	jl	.L3018
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3018:
	lghi	%r2,-1
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	ltr	%r3,%r3
	jl	.L3039
	ltgr	%r3,%r3
	je	.L3030
	lhi	%r12,0
.L3026:
	lhi	%r0,32
	lhi	%r4,0
	j	.L3029
.L3040:
	lr	%r5,%r0
	ahi	%r5,-1
	tml	%r5,255
	lr	%r0,%r5
	je	.L3028
.L3029:
	lhi	%r1,1
	lr	%r5,%r2
	nr	%r1,%r3
	sll	%r5,1
	lcr	%r1,%r1
	nr	%r1,%r2
	lgfr	%r2,%r5
	ar	%r4,%r1
	srag	%r3,%r3,1
	jne	.L3040
.L3028:
	ltr	%r12,%r12
	je	.L3027
	lcr	%r4,%r4
.L3027:
	lgfr	%r2,%r4
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3039:
	.cfi_restore_state
	lcr	%r3,%r3
	lhi	%r12,1
	lgfr	%r3,%r3
	j	.L3026
.L3030:
	lhi	%r4,0
	j	.L3027
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ltgr	%r2,%r2
	jl	.L3087
	lhi	%r1,1
	lhi	%r11,0
.L3043:
	ltgr	%r3,%r3
	jhe	.L3044
	lcgr	%r3,%r3
	lr	%r11,%r1
.L3044:
	clr	%r2,%r3
	lr	%r4,%r2
	lr	%r1,%r3
	jle	.L3088
	lhi	%r3,1
	lhi	%r0,4
.L3045:
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	ltr	%r1,%r1
	jl	.L3050
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3047
	brct	%r0,.L3045
.L3061:
	lghi	%r2,0
	j	.L3048
.L3047:
	ltr	%r3,%r3
	je	.L3061
.L3050:
	lhi	%r2,0
	j	.L3055
.L3089:
	lr	%r12,%r3
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	je	.L3057
.L3055:
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r4
	lhi	%r5,0
	slr	%r4,%r1
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3052
	lr	%r0,%r12
.L3052:
	ltr	%r5,%r5
	lr	%r4,%r0
	jne	.L3089
	lhi	%r12,0
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L3055
.L3057:
	llgfr	%r2,%r2
.L3048:
	ltr	%r11,%r11
	je	.L3042
	lcgr	%r2,%r2
.L3042:
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3087:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r11,1
	j	.L3043
.L3088:
	slr	%r2,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L3057
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	ltgr	%r4,%r2
	jl	.L3136
	lhi	%r0,0
.L3092:
	lpgr	%r3,%r3
	llgfr	%r2,%r4
	clr	%r4,%r3
	lr	%r1,%r3
	jle	.L3137
	lhi	%r3,1
	lhi	%r5,4
.L3093:
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	ltr	%r1,%r1
	jl	.L3132
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3135
	brct	%r5,.L3093
	ltr	%r0,%r0
	ber	%r14
.L3138:
	lcgr	%r2,%r2
	br	%r14
.L3132:
	lr	%r5,%r2
	sr	%r5,%r1
	clr	%r2,%r1
	lr	%r4,%r2
	jl	.L3100
	lr	%r4,%r5
.L3100:
	srl	%r3,1
	llgfr	%r2,%r4
	srl	%r1,1
.L3135:
	ltr	%r3,%r3
	jne	.L3132
	ltr	%r0,%r0
	ber	%r14
	j	.L3138
.L3136:
	lcgr	%r4,%r4
	lhi	%r0,1
	j	.L3092
.L3137:
	lr	%r2,%r4
	sr	%r2,%r3
	clr	%r4,%r3
	jl	.L3103
	ltr	%r0,%r0
	llgfr	%r2,%r2
	ber	%r14
	j	.L3138
.L3103:
	ltr	%r0,%r0
	llgfr	%r2,%r4
	ber	%r14
	j	.L3138
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
	jhe	.L3303
	tmll	%r3,32768
	jne	.L3145
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	sllg	%r10,%r3,49
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3218
	tmll	%r1,32768
	jne	.L3218
	sllg	%r11,%r3,50
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3220
	tmll	%r1,32768
	jne	.L3220
	sllg	%r12,%r3,51
	srlg	%r1,%r12,48
	clr	%r2,%r1
	jle	.L3222
	tmll	%r1,32768
	jne	.L3222
	sllg	%r1,%r3,52
	srlg	%r1,%r1,48
	clr	%r2,%r1
	jle	.L3224
	tmll	%r1,32768
	jne	.L3224
	sllg	%r0,%r3,53
	srlg	%r1,%r0,48
	clr	%r2,%r1
	jle	.L3226
	tmll	%r1,32768
	jne	.L3226
	sllg	%r5,%r3,54
	srlg	%r1,%r5,48
	clr	%r2,%r1
	jle	.L3228
	tmll	%r1,32768
	jne	.L3228
	sllg	%r10,%r3,55
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3230
	tmll	%r1,32768
	jne	.L3230
	sllg	%r11,%r3,56
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3232
	tmll	%r1,32768
	jne	.L3232
	sllg	%r12,%r3,57
	srlg	%r1,%r12,48
	clr	%r2,%r1
	jle	.L3234
	tmll	%r1,32768
	jne	.L3234
	sllg	%r1,%r3,58
	srlg	%r1,%r1,48
	clr	%r2,%r1
	jle	.L3236
	tmll	%r1,32768
	jne	.L3236
	sllg	%r0,%r3,59
	srlg	%r1,%r0,48
	clr	%r2,%r1
	jle	.L3238
	tmll	%r1,32768
	jne	.L3238
	sllg	%r5,%r3,60
	srlg	%r1,%r5,48
	clr	%r2,%r1
	jle	.L3240
	tmll	%r1,32768
	jne	.L3240
	sllg	%r10,%r3,61
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3242
	tmll	%r1,32768
	jne	.L3242
	sllg	%r11,%r3,62
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3244
	tmll	%r1,32768
	jne	.L3244
	sllg	%r12,%r3,63
	srlg	%r0,%r12,48
	clr	%r2,%r0
	jle	.L3245
	ltgr	%r0,%r0
	lhi	%r5,0
	jne	.L3304
.L3148:
	ltgr	%r4,%r4
	je	.L3207
	lr	%r5,%r2
.L3207:
	sllg	%r4,%r5,48
	srlg	%r2,%r4,48
	lmg	%r10,%r12,136(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3218:
	.cfi_restore_state
	lhi	%r3,2
.L3147:
	lr	%r10,%r2
	llill	%r5,65535
	sr	%r10,%r1
	ngr	%r10,%r5
	clr	%r2,%r1
	jhe	.L3214
	lr	%r10,%r2
.L3214:
	sllg	%r11,%r10,48
	clr	%r2,%r1
	srlg	%r0,%r11,48
	jl	.L3215
	lr	%r12,%r3
.L3216:
	sllg	%r2,%r3,48
	srlg	%r11,%r1,1
	srlg	%r5,%r2,49
	llill	%r10,65535
	lr	%r2,%r0
	sr	%r2,%r11
	ngr	%r2,%r10
	clr	%r0,%r11
	jhe	.L3150
	lr	%r2,%r0
.L3150:
	sllg	%r10,%r2,48
	clr	%r0,%r11
	srlg	%r2,%r10,48
	jhe	.L3152
	lhi	%r5,0
.L3152:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r5,%r12
	srl	%r10,2
	ltr	%r10,%r10
	lr	%r12,%r10
	srlg	%r11,%r1,2
	je	.L3148
	llill	%r10,65535
	lr	%r0,%r2
	sr	%r0,%r11
	ngr	%r0,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3154
	lr	%r0,%r2
.L3154:
	sllg	%r2,%r0,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3155
	lr	%r0,%r12
.L3156:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,3
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,3
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3158
	lr	%r5,%r2
.L3158:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3159
	lr	%r10,%r12
.L3160:
	lr	%r12,%r3
	nilh	%r12,0
	or	%r0,%r10
	lr	%r10,%r12
	srl	%r10,4
	lr	%r5,%r0
	ltr	%r10,%r10
	lr	%r12,%r10
	srlg	%r11,%r1,4
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3162
	lr	%r5,%r2
.L3162:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3164
	lhi	%r12,0
.L3164:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r0
	srl	%r10,5
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r11,%r10
	srlg	%r0,%r1,5
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r0
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3166
	lr	%r2,%r5
.L3166:
	sllg	%r2,%r2,48
	ltr	%r0,%r0
	srlg	%r2,%r2,48
	jne	.L3168
	lhi	%r11,0
.L3168:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r11
	srl	%r10,6
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r0,%r10
	srlg	%r11,%r1,6
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3170
	lr	%r2,%r5
.L3170:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3172
	lhi	%r0,0
.L3172:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r12
	srl	%r10,7
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r11,%r10
	srlg	%r12,%r1,7
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r12
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3174
	lr	%r5,%r2
.L3174:
	sllg	%r2,%r5,48
	ltr	%r12,%r12
	srlg	%r2,%r2,48
	jne	.L3176
	lhi	%r11,0
.L3176:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r11
	srl	%r10,8
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,8
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3178
	lr	%r2,%r5
.L3178:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3179
	lr	%r5,%r12
.L3180:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,9
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,9
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3182
	lr	%r2,%r5
.L3182:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3183
	lr	%r5,%r12
.L3184:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,10
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,10
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3186
	lr	%r2,%r5
.L3186:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3187
	lr	%r5,%r12
.L3188:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,11
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,11
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3190
	lr	%r5,%r2
.L3190:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3191
	lr	%r10,%r12
.L3192:
	lr	%r12,%r3
	nilh	%r12,0
	or	%r0,%r10
	lr	%r10,%r12
	srl	%r10,12
	lr	%r5,%r0
	ltr	%r10,%r10
	lr	%r12,%r10
	srlg	%r11,%r1,12
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3194
	lr	%r2,%r5
.L3194:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3196
	lhi	%r12,0
.L3196:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r0
	srl	%r10,13
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r11,%r10
	srlg	%r0,%r1,13
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r0
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3198
	lr	%r5,%r2
.L3198:
	sllg	%r2,%r5,48
	ltr	%r0,%r0
	srlg	%r2,%r2,48
	jne	.L3200
	lhi	%r11,0
.L3200:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r11
	srl	%r10,14
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r0,%r10
	srlg	%r11,%r1,14
	je	.L3148
	llill	%r10,65535
	lr	%r5,%r2
	sr	%r5,%r11
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3202
	lr	%r5,%r2
.L3202:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3204
	lhi	%r0,0
.L3204:
	or	%r0,%r12
	nilh	%r3,0
	chi	%r3,16384
	srlg	%r1,%r1,15
	lr	%r5,%r0
	je	.L3148
	lr	%r3,%r2
	llill	%r12,65535
	sr	%r3,%r1
	lr	%r10,%r2
	ngr	%r3,%r12
	lhi	%r5,0
	slr	%r10,%r1
	alcr	%r5,%r5
	ltr	%r5,%r5
	jne	.L3206
	lr	%r3,%r2
.L3206:
	sllg	%r11,%r3,48
	or	%r5,%r0
	srlg	%r2,%r11,48
	j	.L3148
.L3155:
	lhi	%r0,0
	j	.L3156
.L3159:
	lhi	%r10,0
	j	.L3160
.L3215:
	lhi	%r12,0
	j	.L3216
.L3179:
	lhi	%r5,0
	j	.L3180
.L3183:
	lhi	%r5,0
	j	.L3184
.L3187:
	lhi	%r5,0
	j	.L3188
.L3191:
	lhi	%r10,0
	j	.L3192
.L3220:
	lhi	%r3,4
	j	.L3147
.L3222:
	lhi	%r3,8
	j	.L3147
.L3224:
	lhi	%r3,16
	j	.L3147
.L3234:
	lhi	%r3,512
	j	.L3147
.L3226:
	lhi	%r3,32
	j	.L3147
.L3228:
	lhi	%r3,64
	j	.L3147
.L3230:
	lhi	%r3,128
	j	.L3147
.L3232:
	lhi	%r3,256
	j	.L3147
.L3303:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lgr	%r5,%r3
	lr	%r1,%r2
	xgr	%r5,%r2
	sr	%r1,%r3
	llill	%r0,65535
	aghi	%r5,-1
	ngr	%r1,%r0
	lgr	%r3,%r5
	ltgr	%r3,%r3
	srlg	%r5,%r5,63
	jl	.L3143
	lr	%r1,%r2
.L3143:
	lhi	%r2,255
	sllg	%r0,%r1,48
	nr	%r5,%r2
	srlg	%r2,%r0,48
.L3294:
	ltgr	%r4,%r4
	je	.L3296
	lr	%r5,%r2
.L3296:
	sllg	%r4,%r5,48
	srlg	%r2,%r4,48
	br	%r14
.L3236:
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r3,1024
	j	.L3147
.L3238:
	lhi	%r3,2048
	j	.L3147
.L3240:
	lhi	%r3,4096
	j	.L3147
.L3242:
	lhi	%r3,8192
	j	.L3147
.L3244:
	lhi	%r3,16384
	j	.L3147
.L3304:
	lhi	%r3,-32768
	llill	%r1,32768
	j	.L3147
.L3245:
	llill	%r1,32768
	lhi	%r3,-32768
	j	.L3147
.L3145:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	llill	%r3,65535
	lhi	%r5,1
	ngr	%r2,%r3
	j	.L3294
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	clgr	%r3,%r2
	lgr	%r11,%r2
	jhe	.L3349
	lghi	%r1,1
	lhi	%r5,8
.L3307:
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3312
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3309
	brct	%r5,.L3307
.L3310:
	ltgr	%r4,%r4
	je	.L3306
	lgr	%r2,%r11
.L3306:
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3309:
	.cfi_restore_state
	ltgr	%r1,%r1
	je	.L3310
.L3312:
	lghi	%r2,0
	j	.L3317
.L3350:
	lgr	%r12,%r1
.L3316:
	ogr	%r2,%r12
	srlg	%r1,%r1,1
	ltgr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L3310
.L3317:
	lgr	%r12,%r11
	sgr	%r12,%r3
	lgr	%r0,%r11
	lhi	%r5,0
	slgr	%r11,%r3
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3314
	lgr	%r0,%r12
.L3314:
	ltr	%r5,%r5
	lgr	%r11,%r0
	jne	.L3350
	lghi	%r12,0
	j	.L3316
.L3349:
	sgr	%r2,%r3
	lgr	%r1,%r11
	lhi	%r0,0
	slgr	%r1,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3320
	lgr	%r11,%r2
.L3320:
	lghi	%r2,1
	ngr	%r2,%r0
	j	.L3310
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
	je	.L3353
	sll	%r2,4064(%r3)
	lhi	%r0,0
	sllg	%r3,%r2,32
	llgfr	%r2,%r0
	ogr	%r2,%r3
	br	%r14
.L3353:
	ltgr	%r3,%r3
	ber	%r14
	lhi	%r4,32
	srag	%r1,%r2,32
	sr	%r4,%r3
	sll	%r1,0(%r3)
	lr	%r5,%r2
	srl	%r5,0(%r4)
	lr	%r0,%r2
	lr	%r2,%r5
	sll	%r0,0(%r3)
	or	%r2,%r1
	sllg	%r3,%r2,32
	llgfr	%r2,%r0
	ogr	%r2,%r3
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
	tmll	%r4,64
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	je	.L3359
	sllg	%r1,%r3,4032(%r4)
	lghi	%r4,0
.L3360:
	lgr	%r3,%r4
.L3361:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L3359:
	ltgr	%r4,%r4
	je	.L3361
	lhi	%r5,64
	sllg	%r0,%r1,0(%r4)
	sr	%r5,%r4
	sllg	%r4,%r3,0(%r4)
	srlg	%r1,%r3,0(%r5)
	ogr	%r1,%r0
	j	.L3360
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
	je	.L3367
	srag	%r1,%r2,32
	lr	%r2,%r1
	sra	%r1,31
	sra	%r2,4064(%r3)
	lr	%r4,%r2
	sllg	%r2,%r1,32
	lr	%r2,%r4
	br	%r14
.L3367:
	ltgr	%r3,%r3
	ber	%r14
	lhi	%r5,32
	srag	%r1,%r2,32
	sr	%r5,%r3
	srl	%r2,0(%r3)
	lr	%r4,%r1
	sra	%r1,0(%r3)
	sll	%r4,0(%r5)
	or	%r4,%r2
	sllg	%r2,%r1,32
	lr	%r2,%r4
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
	tmll	%r4,64
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	je	.L3373
	srag	%r1,%r5,4032(%r4)
	srag	%r4,%r5,63
.L3374:
	lgr	%r5,%r4
.L3375:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3373:
	ltgr	%r4,%r4
	je	.L3375
	lhi	%r3,64
	srlg	%r0,%r1,0(%r4)
	sr	%r3,%r4
	srag	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3374
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r1,%r2
	llill	%r2,65535
	lhi	%r4,0
	clr	%r1,%r2
	lhi	%r3,16
	slbr	%r4,%r4
	lhi	%r12,8
	lcr	%r0,%r4
	lhi	%r4,240
	sll	%r0,4
	lhi	%r5,4
	sr	%r3,%r0
	lhi	%r2,2
	srl	%r1,0(%r3)
	llill	%r3,65280
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,3
	sr	%r12,%r3
	ar	%r0,%r3
	srl	%r1,0(%r12)
	lhi	%r12,12
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,2
	sr	%r5,%r4
	ar	%r0,%r4
	srl	%r1,0(%r5)
	lr	%r5,%r2
	nr	%r12,%r1
	ahi	%r12,-1
	srl	%r12,31
	sll	%r12,1
	sr	%r5,%r12
	srl	%r1,0(%r5)
	tmll	%r1,2
	jne	.L3385
	ar	%r12,%r0
	sr	%r2,%r1
	ar	%r2,%r12
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r2
	br	%r14
.L3385:
	.cfi_restore_state
	ar	%r12,%r0
	lhi	%r2,0
	ar	%r2,%r12
	lg	%r12,152(%r15)
	.cfi_restore 12
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
	lpgr	%r1,%r4
	aghi	%r1,-1
	lg	%r2,8(%r2)
	srlg	%r3,%r1,63
	lr	%r0,%r3
	ahi	%r0,-1
	stmg	%r12,%r15,128(%r15)
	lgfr	%r5,%r0
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	ngr	%r5,%r4
	lgr	%r12,%r3
	ltr	%r3,%r3
	jne	.L3391
	lghi	%r2,0
.L3391:
	ogr	%r2,%r5
	sll	%r12,6
	brasl	%r14,__clzdi2@PLT
	lg	%r4,176(%r15)
	ar	%r2,%r12
	lgfr	%r2,%r2
	lmg	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r4
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
	jl	.L3398
	jh	.L3399
	clr	%r2,%r3
	jl	.L3398
	jh	.L3399
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3398:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3399:
	lghi	%r0,3
	lhi	%r2,2
	ngr	%r2,%r0
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
	jl	.L3405
	jh	.L3404
	clr	%r2,%r3
	jl	.L3405
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3405:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3404:
	lhi	%r2,1
	lgfr	%r2,%r2
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
	lg	%r2,0(%r2)
	cg	%r2,0(%r3)
	lg	%r1,8(%r3)
	jl	.L3411
	jh	.L3412
	clgr	%r4,%r1
	jl	.L3411
	jh	.L3412
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3411:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3412:
	lghi	%r0,3
	lhi	%r2,2
	ngr	%r2,%r0
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
	lr	%r3,%r2
	nilh	%r3,0
	ahi	%r3,-1
	lgr	%r1,%r2
	srl	%r3,31
	lhi	%r2,255
	sll	%r3,4
	lhi	%r5,15
	srl	%r1,0(%r3)
	lhi	%r0,3
	nr	%r2,%r1
	lhi	%r4,2
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	ar	%r3,%r2
	nr	%r5,%r1
	lhi	%r2,3
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	ar	%r3,%r5
	nr	%r2,%r1
	lhi	%r5,1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,1
	srl	%r1,0(%r2)
	ar	%r3,%r2
	nr	%r0,%r1
	nr	%r1,%r5
	srl	%r0,1
	xr	%r1,%r5
	lcr	%r1,%r1
	sr	%r4,%r0
	nr	%r1,%r4
	ar	%r1,%r3
	lgfr	%r2,%r1
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
	stmg	%r12,%r15,128(%r15)
	lg	%r3,8(%r2)
	lpgr	%r1,%r3
	aghi	%r1,-1
	lg	%r4,0(%r2)
	srlg	%r2,%r1,63
	srag	%r0,%r1,63
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lhi	%r12,255
	ngr	%r0,%r4
	nr	%r12,%r2
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	sll	%r12,6
	lay	%r2,-1(%r2)
	ngr	%r2,%r3
	ogr	%r2,%r0
	brasl	%r14,__ctzdi2@PLT
	lg	%r5,176(%r15)
	ar	%r2,%r12
	lgfr	%r2,%r2
	lmg	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r5
	.cfi_endproc
.LFE145:
	.size	__ctzti2, .-__ctzti2
	.align	8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
.LFB146:
	.cfi_startproc
	stmg	%r14,%r15,144(%r15)
	lg	%r1,0(%r2)
	lg	%r2,8(%r2)
	ltgr	%r2,%r2
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-16(%r15)
	.cfi_def_cfa_offset 176
	jne	.L3422
	ltgr	%r1,%r1
	jne	.L3426
	lhi	%r2,0
	lg	%r4,160(%r15)
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
.L3422:
	.cfi_restore_state
	brasl	%r14,__ctzdi2@PLT
	lg	%r4,160(%r15)
	ahi	%r2,1
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
.L3426:
	.cfi_restore_state
	lgr	%r2,%r1
	brasl	%r14,__ctzdi2@PLT
	lg	%r4,160(%r15)
	ahi	%r2,65
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
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
	je	.L3429
	srlg	%r1,%r2,32
	lhi	%r4,0
	srl	%r1,4064(%r3)
	sllg	%r2,%r4,32
	lr	%r2,%r1
	br	%r14
.L3429:
	ltgr	%r3,%r3
	ber	%r14
	lhi	%r5,32
	srlg	%r4,%r2,32
	sr	%r5,%r3
	srl	%r2,0(%r3)
	lr	%r1,%r4
	srl	%r4,0(%r3)
	sll	%r1,0(%r5)
	or	%r1,%r2
	sllg	%r2,%r4,32
	lr	%r2,%r1
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
	tmll	%r4,64
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	je	.L3435
	srlg	%r1,%r5,4032(%r4)
	lghi	%r4,0
.L3436:
	lgr	%r5,%r4
.L3437:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3435:
	ltgr	%r4,%r4
	je	.L3437
	lhi	%r3,64
	srlg	%r0,%r1,0(%r4)
	sr	%r3,%r4
	srlg	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3436
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	lr	%r4,%r2
	nilh	%r4,0
	lr	%r1,%r3
	lr	%r5,%r4
	nilh	%r1,0
	srl	%r2,16
	msr	%r5,%r1
	msr	%r1,%r2
	srl	%r3,16
	msr	%r4,%r3
	msr	%r2,%r3
	lr	%r3,%r5
	srl	%r3,16
	ar	%r1,%r3
	nilh	%r5,0
	lr	%r0,%r1
	nilh	%r0,0
	ar	%r4,%r0
	srl	%r1,16
	ar	%r1,%r2
	lr	%r2,%r4
	sll	%r4,16
	srl	%r2,16
	ar	%r1,%r2
	ar	%r5,%r4
	llgfr	%r2,%r5
	sllg	%r4,%r1,32
	ogr	%r2,%r4
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
	stmg	%r11,%r13,136(%r15)
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L3446
	lr	%r5,%r2
	nilh	%r5,0
	lgr	%r0,%r2
	lr	%r1,%r3
	lr	%r2,%r5
	nilh	%r1,0
	msr	%r2,%r1
	lr	%r4,%r0
	srl	%r4,16
	msr	%r1,%r4
	lr	%r12,%r3
	srl	%r12,16
	msr	%r5,%r12
	lr	%r11,%r2
	srl	%r11,16
	msr	%r12,%r4
	ar	%r1,%r11
	srag	%r4,%r3,32
	lr	%r11,%r1
	nilh	%r11,0
	ar	%r5,%r11
	srl	%r1,16
	ar	%r1,%r12
	nilh	%r2,0
	lr	%r12,%r5
	srl	%r5,16
	sll	%r12,16
	ar	%r1,%r5
	msr	%r4,%r0
	ar	%r2,%r12
	srag	%r0,%r0,32
	msr	%r3,%r0
	sllg	%r5,%r1,32
	llgfr	%r2,%r2
	ogr	%r2,%r5
	srag	%r1,%r2,32
	ng	%r2,.L3447-.L3446(%r13)
	ar	%r1,%r4
	ar	%r1,%r3
	sllg	%r3,%r1,32
	ogr	%r2,%r3
	lmg	%r11,%r13,136(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L3446:
.L3447:
	.quad	4294967295
	.align	2
.text
	.cfi_endproc
.LFE150:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
.LFB151:
	.cfi_startproc
	stmg	%r12,%r13,144(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L3450
	srlg	%r0,%r4,32
	lg	%r5,.L3451-.L3450(%r13)
	ngr	%r5,%r3
	lg	%r1,.L3451-.L3450(%r13)
	lgr	%r12,%r5
	ngr	%r1,%r4
	srlg	%r3,%r3,32
	msgr	%r12,%r1
	lgr	%r4,%r5
	msgr	%r1,%r3
	msgr	%r4,%r0
	msgr	%r3,%r0
	srlg	%r0,%r12,32
	agr	%r1,%r0
	algfr	%r4,%r1
	srlg	%r1,%r1,32
	sllg	%r0,%r4,32
	agr	%r1,%r3
	srlg	%r4,%r4,32
	algfr	%r0,%r12
	stg	%r0,8(%r2)
	agr	%r1,%r4
	stg	%r1,0(%r2)
	lmg	%r12,%r13,144(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L3450:
.L3451:
	.quad	4294967295
	.align	2
.text
	.cfi_endproc
.LFE151:
	.size	__mulddi3, .-__mulddi3
	.align	8
.globl __multi3
	.type	__multi3, @function
__multi3:
.LFB152:
	.cfi_startproc
	stmg	%r8,%r13,112(%r15)
	.cfi_offset 8, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L3454
	lgr	%r9,%r4
	lgr	%r10,%r3
	lg	%r4,8(%r3)
	srlg	%r11,%r4,32
	lg	%r3,.L3455-.L3454(%r13)
	ngr	%r3,%r4
	lg	%r1,.L3455-.L3454(%r13)
	lgr	%r0,%r3
	msg	%r4,0(%r9)
	lg	%r5,8(%r9)
	ngr	%r1,%r5
	msgr	%r0,%r1
	srlg	%r8,%r5,32
	msgr	%r1,%r11
	msgr	%r3,%r8
	msgr	%r11,%r8
	msg	%r5,0(%r10)
	srlg	%r10,%r0,32
	agr	%r1,%r10
	algfr	%r3,%r1
	srlg	%r9,%r1,32
	agr	%r9,%r11
	srlg	%r1,%r3,32
	agr	%r9,%r1
	sllg	%r3,%r3,32
	agr	%r4,%r9
	algfr	%r3,%r0
	stg	%r3,8(%r2)
	agr	%r4,%r5
	stg	%r4,0(%r2)
	lmg	%r8,%r13,112(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
	.section	.rodata
	.align	8
.L3454:
.L3455:
	.quad	4294967295
	.align	2
.text
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
	lghi	%r5,0
	lghi	%r4,0
	slg	%r5,8(%r3)
	stg	%r5,8(%r2)
	slbg	%r4,0(%r3)
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
	srlg	%r3,%r2,32
	lhi	%r5,15
	xr	%r3,%r2
	lhi	%r2,27030
	lr	%r1,%r3
	srl	%r1,16
	xr	%r1,%r3
	lghi	%r3,1
	lr	%r0,%r1
	srl	%r0,8
	xr	%r0,%r1
	lr	%r4,%r0
	srl	%r4,4
	xr	%r4,%r0
	nr	%r4,%r5
	sra	%r2,0(%r4)
	ngr	%r2,%r3
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
	lhi	%r2,27030
	srag	%r3,%r1,32
	xr	%r3,%r1
	lhi	%r1,15
	lr	%r0,%r3
	srl	%r0,16
	xr	%r0,%r3
	lghi	%r3,1
	lr	%r4,%r0
	srl	%r4,8
	xr	%r4,%r0
	lr	%r5,%r4
	srl	%r5,4
	xr	%r5,%r4
	nr	%r5,%r1
	sra	%r2,0(%r5)
	ngr	%r2,%r3
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
	lr	%r1,%r2
	srl	%r1,16
	xr	%r1,%r2
	lhi	%r0,15
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lhi	%r2,27030
	lr	%r4,%r3
	srl	%r4,4
	xr	%r4,%r3
	lghi	%r5,1
	nr	%r4,%r0
	sra	%r2,0(%r4)
	ngr	%r2,%r5
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
	larl	%r5,.L3468
	srlg	%r1,%r2,1
	ng	%r1,.L3469-.L3468(%r5)
	sgr	%r2,%r1
	lghi	%r1,127
	srlg	%r0,%r2,2
	ng	%r2,.L3470-.L3468(%r5)
	ng	%r0,.L3470-.L3468(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3471-.L3468(%r5)
	srlg	%r2,%r3,32
	ar	%r2,%r3
	lr	%r4,%r2
	srl	%r4,16
	ar	%r4,%r2
	lr	%r2,%r4
	srl	%r2,8
	ar	%r2,%r4
	ngr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L3468:
.L3471:
	.quad	1085102592571150095
.L3470:
	.quad	3689348814741910323
.L3469:
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
	larl	%r5,.L3474
	lr	%r1,%r2
	srl	%r1,1
	lghi	%r4,63
	n	%r1,.L3475-.L3474(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r2,.L3476-.L3474(%r5)
	n	%r0,.L3476-.L3474(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3477-.L3474(%r5)
	lr	%r2,%r3
	srl	%r2,16
	ar	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	ar	%r2,%r3
	ngr	%r2,%r4
	br	%r14
	.section	.rodata
	.align	8
.L3474:
.L3477:
	.long	252645135
.L3476:
	.long	858993459
.L3475:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE159:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
.LFB160:
	.cfi_startproc
	stmg	%r11,%r13,136(%r15)
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L3480
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	srlg	%r1,%r3,1
	srlg	%r12,%r2,1
	lg	%r0,.L3481-.L3480(%r13)
	lg	%r11,.L3481-.L3480(%r13)
	ngr	%r0,%r12
	ngr	%r11,%r1
	slgr	%r3,%r11
	lg	%r12,.L3482-.L3480(%r13)
	slbgr	%r2,%r0
	srlg	%r5,%r3,2
	srlg	%r4,%r2,2
	lg	%r0,.L3482-.L3480(%r13)
	ngr	%r12,%r4
	ngr	%r0,%r2
	lg	%r1,.L3482-.L3480(%r13)
	lg	%r2,.L3482-.L3480(%r13)
	ngr	%r1,%r3
	ngr	%r2,%r5
	lgr	%r11,%r2
	algr	%r11,%r1
	lgr	%r4,%r12
	alcgr	%r4,%r0
	sllg	%r5,%r4,60
	srlg	%r3,%r11,4
	ogr	%r3,%r5
	srlg	%r12,%r4,4
	algr	%r3,%r11
	lg	%r0,.L3483-.L3480(%r13)
	alcgr	%r12,%r4
	lg	%r2,.L3483-.L3480(%r13)
	ngr	%r0,%r12
	ngr	%r2,%r3
	agr	%r0,%r2
	lghi	%r1,255
	srlg	%r4,%r0,32
	ar	%r4,%r0
	lr	%r11,%r4
	srl	%r11,16
	ar	%r11,%r4
	lr	%r2,%r11
	srl	%r2,8
	ar	%r2,%r11
	ngr	%r2,%r1
	lmg	%r11,%r13,136(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L3480:
.L3483:
	.quad	1085102592571150095
.L3482:
	.quad	3689348814741910323
.L3481:
	.quad	6148914691236517205
	.align	2
.text
	.cfi_endproc
.LFE160:
	.size	__popcountti2, .-__popcountti2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB161:
	.cfi_startproc
	larl	%r5,.L3493
	tmll	%r2,1
	ldr	%f2,%f0
	je	.L3490
	ld	%f0,.L3494-.L3493(%r5)
	lgr	%r1,%r2
.L3487:
	mdbr	%f0,%f2
.L3485:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3486
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3487
.L3492:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3487
	j	.L3492
.L3486:
	ltr	%r2,%r2
	bher	%r14
	ld	%f4,.L3494-.L3493(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
.L3490:
	ld	%f0,.L3494-.L3493(%r5)
	lgr	%r1,%r2
	j	.L3485
	.section	.rodata
	.align	8
.L3493:
.L3494:
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
	larl	%r5,.L3504
	tmll	%r2,1
	ler	%f2,%f0
	je	.L3501
	le	%f0,.L3505-.L3504(%r5)
	lgr	%r1,%r2
.L3498:
	meebr	%f0,%f2
.L3496:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3497
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3498
.L3503:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3498
	j	.L3503
.L3497:
	ltr	%r2,%r2
	bher	%r14
	le	%f4,.L3505-.L3504(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
.L3501:
	le	%f0,.L3505-.L3504(%r5)
	lgr	%r1,%r2
	j	.L3496
	.section	.rodata
	.align	8
.L3504:
.L3505:
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
	srlg	%r4,%r2,32
	srlg	%r1,%r3,32
	clr	%r4,%r1
	jl	.L3510
	jh	.L3511
	clr	%r2,%r3
	jl	.L3510
	jh	.L3511
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3510:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3511:
	lghi	%r0,3
	lhi	%r2,2
	ngr	%r2,%r0
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
	srlg	%r4,%r2,32
	srlg	%r1,%r3,32
	clr	%r4,%r1
	jl	.L3517
	jh	.L3516
	clr	%r2,%r3
	jl	.L3517
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3517:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3516:
	lhi	%r2,1
	lgfr	%r2,%r2
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
	clc	0(8,%r2),0(%r3)
	lg	%r4,8(%r2)
	lg	%r1,8(%r3)
	jl	.L3523
	jh	.L3524
	clgr	%r4,%r1
	jl	.L3523
	jh	.L3524
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3523:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3524:
	lghi	%r0,3
	lhi	%r2,2
	ngr	%r2,%r0
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
.globl __ctzdi2
.globl __clzdi2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
