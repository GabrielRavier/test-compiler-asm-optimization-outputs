	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z9-ec+htm"
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
	aghi	%r1,-1
	clgfi	%r1,14
	jle	.L17
	lgr	%r0,%r3
	lghi	%r5,7
	ogr	%r0,%r2
	ngr	%r0,%r5
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L17
	la	%r0,1(%r3)
	lgr	%r1,%r2
	sgr	%r1,%r0
	clgfi	%r1,6
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
	jne	.L172
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
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L164
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
.L11:
	aghi	%r1,64
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	brctg	%r5,.L11
	aghi	%r1,64
.L157:
	lgr	%r12,%r4
	sgr	%r12,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	je	.L8
	mvc	0(1,%r5),0(%r3)
	cghi	%r12,1
	je	.L8
	mvc	1(1,%r5),1(%r3)
	cghi	%r12,2
	je	.L8
	mvc	2(1,%r5),2(%r3)
	cghi	%r12,3
	je	.L8
	mvc	3(1,%r5),3(%r3)
	cghi	%r12,4
	je	.L8
	mvc	4(1,%r5),4(%r3)
	cghi	%r12,5
	je	.L8
	mvc	5(1,%r5),5(%r3)
	cghi	%r12,6
	je	.L8
	mvc	6(1,%r5),6(%r3)
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
.L164:
	.cfi_offset 12, -8
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r12,32(%r1,%r3)
	stg	%r12,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r12,48(%r1,%r3)
	stg	%r12,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L164
	j	.L157
.L17:
	.cfi_restore 12
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
.L172:
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
	ltgr	%r5,%r5
	je	.L238
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r1,7
	lgr	%r12,%r5
	aghi	%r12,-1
	ngr	%r1,%r5
	llcr	%r4,%r4
	lgr	%r0,%r5
	je	.L196
	cghi	%r1,1
	je	.L219
	cghi	%r1,2
	je	.L220
	cghi	%r1,3
	je	.L221
	cghi	%r1,4
	je	.L222
	cghi	%r1,5
	je	.L223
	cghi	%r1,6
	jne	.L241
.L224:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L234
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L223:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L234
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L222:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L234
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L221:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L234
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L220:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L234
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L219:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L234
	cghi	%r5,1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	je	.L177
.L196:
	srlg	%r5,%r0,3
.L175:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cr	%r4,%r0
	je	.L234
	la	%r12,1(%r2)
	llgc	%r1,1(%r3)
	cr	%r4,%r1
	lgr	%r2,%r12
	stc	%r1,0(%r12)
	je	.L234
	la	%r2,1(%r12)
	llgc	%r0,2(%r3)
	cr	%r4,%r0
	stc	%r0,0(%r2)
	je	.L234
	llgc	%r1,3(%r3)
	la	%r2,2(%r12)
	stc	%r1,2(%r12)
	cr	%r4,%r1
	je	.L234
	llgc	%r0,4(%r3)
	la	%r2,1(%r2)
	stc	%r0,3(%r12)
	cr	%r4,%r0
	je	.L234
	llgc	%r1,5(%r3)
	la	%r2,1(%r2)
	stc	%r1,4(%r12)
	cr	%r4,%r1
	je	.L234
	llgc	%r0,6(%r3)
	la	%r2,1(%r2)
	stc	%r0,5(%r12)
	cr	%r4,%r0
	je	.L234
	llgc	%r1,7(%r3)
	la	%r2,1(%r2)
	stc	%r1,6(%r12)
	cr	%r4,%r1
	je	.L234
	la	%r3,8(%r3)
	la	%r2,7(%r12)
	brctg	%r5,.L175
.L177:
	lghi	%r2,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L234:
	.cfi_restore_state
	la	%r2,1(%r2)
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L241:
	.cfi_restore_state
	llgc	%r5,0(%r3)
	stc	%r5,0(%r2)
	cr	%r4,%r5
	je	.L234
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	lgr	%r5,%r12
	j	.L224
.L238:
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
	ltgr	%r4,%r4
	llcr	%r3,%r3
	je	.L247
	lgr	%r0,%r4
	lghi	%r1,7
	aghi	%r0,-1
	lgr	%r5,%r4
	ngr	%r1,%r4
	je	.L262
	cghi	%r1,1
	je	.L285
	cghi	%r1,2
	je	.L286
	cghi	%r1,3
	je	.L287
	cghi	%r1,4
	je	.L288
	cghi	%r1,5
	je	.L289
	cghi	%r1,6
	jne	.L306
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L307:
	la	%r2,1(%r2)
	aghi	%r4,-1
.L289:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L288:
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L287:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L286:
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L285:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	cghi	%r4,1
	la	%r2,1(%r2)
	je	.L247
.L262:
	srlg	%r4,%r5,3
.L244:
	llc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	llc	%r0,1(%r2)
	la	%r1,1(%r2)
	cr	%r0,%r3
	lgr	%r2,%r1
	ber	%r14
	llc	%r5,1(%r1)
	la	%r2,1(%r1)
	cr	%r5,%r3
	ber	%r14
	llc	%r0,2(%r1)
	la	%r2,2(%r1)
	cr	%r0,%r3
	ber	%r14
	llc	%r5,3(%r1)
	la	%r2,1(%r2)
	cr	%r5,%r3
	ber	%r14
	llc	%r0,4(%r1)
	la	%r2,1(%r2)
	cr	%r0,%r3
	ber	%r14
	llc	%r5,5(%r1)
	la	%r2,1(%r2)
	cr	%r5,%r3
	ber	%r14
	llc	%r0,6(%r1)
	la	%r2,1(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,7(%r1)
	brctg	%r4,.L244
.L247:
	lghi	%r2,0
	br	%r14
.L306:
	llc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	la	%r2,1(%r2)
	lgr	%r4,%r0
	llc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L307
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
	je	.L366
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r5,7
	lgr	%r12,%r4
	aghi	%r12,-1
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L329
	cghi	%r5,1
	je	.L352
	cghi	%r5,2
	je	.L353
	cghi	%r5,3
	je	.L354
	cghi	%r5,4
	je	.L355
	cghi	%r5,5
	je	.L356
	cghi	%r5,6
	jne	.L377
.L357:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L356:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L355:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L354:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L353:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L352:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	cghi	%r4,1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	je	.L314
.L329:
	srlg	%r12,%r0,3
.L310:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,4(%r2)
	llc	%r5,4(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,5(%r2)
	llc	%r5,5(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,6(%r2)
	llc	%r5,6(%r3)
	cr	%r1,%r5
	jne	.L368
	llc	%r1,7(%r2)
	llc	%r5,7(%r3)
	cr	%r1,%r5
	jne	.L368
	la	%r2,8(%r2)
	la	%r3,8(%r3)
	brctg	%r12,.L310
.L314:
	lhi	%r1,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L368:
	.cfi_restore_state
	sr	%r1,%r5
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L377:
	.cfi_restore_state
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L368
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	lgr	%r4,%r12
	j	.L357
.L366:
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
	lgr	%r5,%r4
	lay	%r1,-1(%r2,%r4)
	lghi	%r4,7
	llcr	%r3,%r3
	ngr	%r4,%r5
	je	.L406
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	cghi	%r4,1
	je	.L406
	cghi	%r4,2
	je	.L414
	cghi	%r4,3
	je	.L415
	cghi	%r4,4
	je	.L416
	cghi	%r4,5
	je	.L417
	cghi	%r4,6
	jne	.L436
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L417:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L416:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L415:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L414:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L406:
	srlg	%r5,%r5,3
	lgr	%r4,%r1
	aghi	%r5,1
	aghi	%r4,-1
	brctg	%r5,.L431
	lghi	%r2,0
	br	%r14
.L431:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	cr	%r0,%r3
	ber	%r14
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L427:
	lgr	%r12,%r1
	llc	%r0,-1(%r1)
	aghi	%r12,-2
	lgr	%r2,%r4
	cr	%r0,%r3
	je	.L389
	lgr	%r0,%r1
	llc	%r4,-2(%r1)
	aghi	%r0,-3
	lgr	%r2,%r12
	cr	%r4,%r3
	je	.L389
	aghi	%r12,-2
	llc	%r4,-3(%r1)
	cr	%r4,%r3
	lgr	%r2,%r0
	je	.L389
	aghi	%r0,-2
	llc	%r4,-4(%r1)
	cr	%r4,%r3
	lgr	%r2,%r12
	je	.L389
	aghi	%r12,-2
	llc	%r4,-5(%r1)
	cr	%r4,%r3
	lgr	%r2,%r0
	je	.L389
	lgr	%r4,%r1
	llc	%r0,-6(%r1)
	aghi	%r4,-7
	lgr	%r2,%r12
	cr	%r0,%r3
	je	.L389
	aghi	%r1,-8
	llc	%r12,0(%r4)
	cr	%r12,%r3
	lgr	%r2,%r4
	je	.L389
	lgr	%r4,%r1
	aghi	%r4,-1
	brctg	%r5,.L392
	lghi	%r2,0
.L389:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L436:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L417
	br	%r14
.L392:
	.cfi_offset 12, -8
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	cr	%r0,%r3
	jne	.L427
	j	.L389
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
.L449:
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
	jne	.L449
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
	llc	%r1,0(%r2)
	llcr	%r3,%r3
	ber	%r14
	cr	%r1,%r3
	ber	%r14
.L463:
	cli	1(%r2),0
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	ber	%r14
	cr	%r1,%r3
	jne	.L463
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
.L467:
	llc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ltr	%r1,%r1
	la	%r2,1(%r2)
	jne	.L467
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
	cr	%r1,%r5
	lghi	%r4,1
	je	.L471
	j	.L472
.L473:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	cr	%r1,%r5
	jne	.L472
.L471:
	ltr	%r1,%r1
	jne	.L473
.L472:
	sr	%r1,%r5
	lgfr	%r2,%r1
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
	je	.L483
.L482:
	cli	1(%r2),0
	la	%r2,1(%r2)
	jne	.L482
	sgr	%r2,%r3
	br	%r14
.L483:
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
	je	.L494
	cli	0(%r2),0
	llc	%r1,0(%r2)
	je	.L541
	lay	%r5,-1(%r4,%r2)
	lghi	%r0,3
	sgr	%r5,%r2
	ngr	%r0,%r5
	je	.L510
	cli	0(%r3),0
	llc	%r4,0(%r3)
	je	.L532
	cr	%r4,%r1
	jne	.L532
	cli	1(%r2),0
	la	%r2,1(%r2)
	la	%r4,1(%r3)
	llc	%r1,0(%r2)
	je	.L537
	cghi	%r0,1
	lgr	%r3,%r4
	je	.L510
	cghi	%r0,2
	je	.L523
	cli	0(%r3),0
	llc	%r4,0(%r4)
	je	.L532
	cr	%r4,%r1
	jne	.L532
	llc	%r1,1(%r2)
	la	%r0,1(%r3)
	cli	1(%r2),0
	la	%r2,1(%r2)
	je	.L537
	lgr	%r3,%r0
.L523:
	cli	0(%r3),0
	llc	%r4,0(%r3)
	je	.L532
	cr	%r4,%r1
	jne	.L532
	cli	1(%r2),0
	la	%r2,1(%r2)
	la	%r4,1(%r3)
	llc	%r1,0(%r2)
	je	.L537
	lgr	%r3,%r4
.L510:
	srlg	%r5,%r5,2
	llc	%r4,0(%r3)
	aghi	%r5,1
	cli	0(%r3),0
	je	.L532
	brctg	%r5,.L534
.L532:
	sr	%r1,%r4
	j	.L536
.L494:
	lhi	%r1,0
.L536:
	lgfr	%r2,%r1
	br	%r14
.L534:
	cr	%r4,%r1
	jne	.L532
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L493:
	cli	1(%r2),0
	la	%r12,1(%r3)
	llc	%r1,1(%r2)
	je	.L530
	cli	0(%r12),0
	lgr	%r3,%r12
	llc	%r0,0(%r12)
	je	.L489
	cr	%r0,%r1
	jne	.L489
	cli	2(%r2),0
	llc	%r1,2(%r2)
	je	.L530
	cli	1(%r12),0
	la	%r3,1(%r12)
	llc	%r0,0(%r3)
	je	.L489
	cr	%r0,%r1
	jne	.L489
	cli	3(%r2),0
	llc	%r1,3(%r2)
	je	.L530
	cli	2(%r12),0
	la	%r3,2(%r12)
	llc	%r0,2(%r12)
	je	.L489
	cr	%r0,%r1
	jne	.L489
	cli	4(%r2),0
	la	%r2,4(%r2)
	llc	%r1,0(%r2)
	je	.L530
	cli	3(%r12),0
	la	%r3,3(%r12)
	llc	%r0,0(%r3)
	je	.L489
	brctg	%r5,.L492
.L489:
	sr	%r1,%r0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L492:
	.cfi_restore_state
	cr	%r0,%r1
	je	.L493
	j	.L489
.L530:
	llc	%r0,1(%r3)
	lhi	%r1,0
	sr	%r1,%r0
	lg	%r12,152(%r15)
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L541:
	llc	%r4,0(%r3)
	lhi	%r1,0
	sr	%r1,%r4
	j	.L536
.L537:
	llc	%r4,1(%r3)
	lhi	%r1,0
	sr	%r1,%r4
	j	.L536
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
	je	.L560
	cghi	%r4,1
	je	.L568
	cghi	%r4,2
	je	.L569
	cghi	%r4,3
	je	.L570
	cghi	%r4,4
	je	.L571
	cghi	%r4,5
	je	.L572
	cghi	%r4,6
	jne	.L584
.L573:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L572:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L571:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L570:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L569:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L568:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r2,2(%r2)
	cgr	%r2,%r5
	la	%r3,2(%r3)
	ber	%r14
.L560:
	srlg	%r1,%r0,3
.L545:
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
	brctg	%r1,.L545
	br	%r14
.L584:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	j	.L573
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
	chi	%r2,32
	je	.L592
	xilf	%r2,9
	lghi	%r1,1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	ngr	%r2,%r1
	br	%r14
.L592:
	lghi	%r1,1
	lhi	%r2,1
	ngr	%r2,%r1
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
	clfi	%r2,31
	jle	.L596
	xilf	%r2,127
	lghi	%r1,1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	ngr	%r2,%r1
	br	%r14
.L596:
	lghi	%r1,1
	lhi	%r2,1
	ngr	%r2,%r1
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
	je	.L608
	ahi	%r2,-9
	lghi	%r1,1
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	ngr	%r2,%r1
	br	%r14
.L608:
	lghi	%r1,1
	lhi	%r2,1
	ngr	%r2,%r1
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
	jle	.L616
	lr	%r1,%r2
	ahi	%r1,-127
	clfi	%r1,32
	jh	.L617
.L616:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L617:
	ahi	%r1,-8105
	clfi	%r1,1
	jle	.L616
	slfi	%r2,65529
	lghi	%r0,1
	clfi	%r2,2
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
	jle	.L628
	clfi	%r2,8231
	jle	.L626
	lr	%r1,%r2
	ahi	%r1,-8234
	clfi	%r1,47061
	jle	.L626
	slfi	%r1,49110
	clfi	%r1,8184
	jle	.L626
	ahi	%r1,-8188
	clfi	%r1,1048579
	jh	.L627
	nilf	%r2,65534
	lghi	%r0,1
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	ngr	%r2,%r0
	br	%r14
.L626:
	lhi	%r2,1
.L623:
	lghi	%r0,1
	ngr	%r2,%r0
	br	%r14
.L628:
	ahi	%r2,1
	lghi	%r0,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	ngr	%r2,%r0
	br	%r14
.L627:
	lhi	%r2,0
	j	.L623
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
	ahi	%r1,-48
	clfi	%r1,9
	jle	.L632
	oill	%r2,32
	lghi	%r0,1
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	ngr	%r2,%r0
	br	%r14
.L632:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
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
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L640
	kdbr	%f0,%f2
	jnh	.L643
	sdbr	%f0,%f2
	br	%r14
.L643:
	lghi	%r1,0
	ldgr	%f0,%r1
	br	%r14
.L640:
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
	larl	%r5,.L654
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L649
	kebr	%f0,%f2
	jnh	.L652
	sebr	%f0,%f2
	br	%r14
.L652:
	le	%f0,.L655-.L654(%r5)
	br	%r14
.L649:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L654:
.L655:
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
	jo	.L664
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L666
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L661
	lhi	%r0,0
.L661:
	tmll	%r0,1
	jne	.L664
	ldr	%f2,%f0
.L664:
	ldr	%f0,%f2
	br	%r14
.L666:
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
	jo	.L676
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L678
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L673
	lhi	%r0,0
.L673:
	tmll	%r0,1
	jne	.L676
	ler	%f2,%f0
.L676:
	ler	%f0,%f2
	br	%r14
.L678:
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
	jo	.L687
	cxbr	%f4,%f4
	jo	.L692
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f4,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L694
	stmg	%r12,%r15,128(%r15)
	kxbr	%f0,%f4
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
	lhi	%r0,1
	jl	.L686
	lhi	%r0,0
.L686:
	tmll	%r0,1
	je	.L684
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L685:
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
.L694:
	ltr	%r1,%r1
	je	.L692
.L687:
	lxr	%f0,%f4
.L692:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L684:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L685
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
	jo	.L702
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L705
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L701
	lhi	%r0,0
.L701:
	tmll	%r0,1
	bner	%r14
.L702:
	ldr	%f0,%f2
	br	%r14
.L705:
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
	jo	.L713
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L716
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L712
	lhi	%r0,0
.L712:
	tmll	%r0,1
	bner	%r14
.L713:
	ler	%f0,%f2
	br	%r14
.L716:
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
	jo	.L730
	cxbr	%f0,%f0
	jo	.L725
	tcxb	%f4,1365
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L732
	stmg	%r12,%r15,128(%r15)
	kxbr	%f4,%f0
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-48(%r15)
	.cfi_def_cfa_offset 208
	lhi	%r0,1
	jl	.L724
	lhi	%r0,0
.L724:
	tmll	%r0,1
	je	.L722
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L723:
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
.L732:
	ltr	%r1,%r1
	je	.L730
.L725:
	lxr	%f0,%f4
.L730:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L722:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L723
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
	je	.L735
	larl	%r4,.LANCHOR1
.L736:
	lghi	%r3,63
	ngr	%r3,%r1
	srl	%r1,6
	ltr	%r1,%r1
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	jne	.L736
.L735:
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
	llihf	%r2,1481765933
	larl	%r1,.LANCHOR0
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
	je	.L751
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r4,0(%r2)
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
	ltg	%r1,0(%r2)
	je	.L754
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L754:
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
	lay	%r15,-96(%r15)
	.cfi_def_cfa_offset 256
	ltg	%r13,0(%r4)
	lgr	%r11,%r5
	lgr	%r10,%r2
	lgr	%r7,%r3
	stg	%r4,160(%r15)
	je	.L764
	stg	%r13,168(%r15)
	lghi	%r1,7
	ngr	%r1,%r13
	lghi	%r8,0
	lgr	%r12,%r3
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
	ltg	%r13,0(%r4)
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	je	.L817
	lghi	%r1,7
	lgr	%r12,%r3
	ngr	%r1,%r13
	lgr	%r10,%r5
	lgr	%r11,%r2
	lghi	%r7,0
	lgr	%r8,%r13
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
	cgr	%r13,%r7
	je	.L817
.L836:
	srlg	%r13,%r8,3
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
	lgr	%r8,%r2
	ltr	%r8,%r8
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
	brctg	%r13,.L819
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L874:
	cli	0(%r2),32
	llc	%r3,0(%r2)
	je	.L868
	lr	%r1,%r3
	ahi	%r1,-9
	clfi	%r1,4
	jle	.L868
	chi	%r3,43
	je	.L869
	chi	%r3,45
	je	.L870
	lr	%r4,%r3
	ahi	%r4,-48
	clfi	%r4,9
	jh	.L879
	lgr	%r1,%r2
	lhi	%r12,0
.L872:
	lhi	%r2,0
.L876:
	la	%r1,1(%r1)
	ahi	%r3,-48
	mhi	%r2,10
	lr	%r5,%r3
	llc	%r3,0(%r1)
	lr	%r4,%r2
	lr	%r0,%r3
	sr	%r2,%r5
	ahi	%r0,-48
	clfi	%r0,9
	jle	.L876
	ltr	%r12,%r12
	jne	.L875
	lr	%r2,%r5
	sr	%r2,%r4
.L875:
	lgfr	%r2,%r2
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L868:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L874
.L870:
	llc	%r3,1(%r2)
	la	%r1,1(%r2)
	lr	%r0,%r3
	ahi	%r0,-48
	clfi	%r0,9
	jh	.L879
	lhi	%r12,1
	j	.L872
.L869:
	llc	%r3,1(%r2)
	la	%r1,1(%r2)
	lr	%r2,%r3
	ahi	%r2,-48
	clfi	%r2,9
	lhi	%r12,0
	jle	.L872
.L879:
	lhi	%r2,0
	lg	%r12,152(%r15)
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L898:
	cli	0(%r2),32
	llc	%r4,0(%r2)
	je	.L892
	lr	%r1,%r4
	ahi	%r1,-9
	clfi	%r1,4
	jle	.L892
	chi	%r4,43
	je	.L893
	chi	%r4,45
	je	.L894
	lr	%r3,%r4
	ahi	%r3,-48
	clfi	%r3,9
	jh	.L903
	lgr	%r1,%r2
	lhi	%r12,0
.L896:
	lghi	%r2,0
.L900:
	mghi	%r2,10
	la	%r1,1(%r1)
	lr	%r3,%r4
	ahi	%r3,-48
	lgr	%r5,%r2
	sgfr	%r2,%r3
	lgfr	%r3,%r3
	llc	%r4,0(%r1)
	lr	%r0,%r4
	ahi	%r0,-48
	clfi	%r0,9
	jle	.L900
	ltr	%r12,%r12
	jne	.L891
	lgr	%r2,%r3
	sgr	%r2,%r5
.L891:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L892:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L898
.L894:
	llc	%r4,1(%r2)
	la	%r1,1(%r2)
	lr	%r0,%r4
	ahi	%r0,-48
	clfi	%r0,9
	jh	.L903
	lhi	%r12,1
	j	.L896
.L893:
	llc	%r4,1(%r2)
	la	%r1,1(%r2)
	lr	%r2,%r4
	ahi	%r2,-48
	clfi	%r2,9
	lhi	%r12,0
	jle	.L896
.L903:
	lghi	%r2,0
	lg	%r12,152(%r15)
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L920:
	cli	0(%r2),32
	llc	%r4,0(%r2)
	je	.L916
	lr	%r1,%r4
	ahi	%r1,-9
	clfi	%r1,4
	jle	.L916
	chi	%r4,43
	je	.L917
	chi	%r4,45
	je	.L918
	lr	%r3,%r4
	ahi	%r3,-48
	clfi	%r3,9
	jh	.L927
	lgr	%r1,%r2
	lhi	%r12,0
.L921:
	lghi	%r2,0
.L924:
	mghi	%r2,10
	la	%r1,1(%r1)
	lr	%r3,%r4
	ahi	%r3,-48
	lgr	%r5,%r2
	sgfr	%r2,%r3
	lgfr	%r3,%r3
	llc	%r4,0(%r1)
	lr	%r0,%r4
	ahi	%r0,-48
	clfi	%r0,9
	jle	.L924
	ltr	%r12,%r12
	jne	.L915
	lgr	%r2,%r3
	sgr	%r2,%r5
.L915:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L916:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L920
.L918:
	llc	%r4,1(%r2)
	la	%r1,1(%r2)
	lr	%r0,%r4
	ahi	%r0,-48
	clfi	%r0,9
	lhi	%r12,1
	jle	.L921
.L927:
	lghi	%r2,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L917:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r1,1(%r2)
	lr	%r2,%r4
	ahi	%r2,-48
	clfi	%r2,9
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
	lt	%r1,0(%r2)
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
	lt	%r1,0(%r2)
	je	.L1013
	lgr	%r1,%r2
.L1012:
	lt	%r3,4(%r1)
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
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r0
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
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r0
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
	clgfi	%r1,8
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
	lghi	%r0,0
	lgr	%r5,%r11
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
	jne	.L1383
.L1332:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1331:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1330:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1329:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1328:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1327:
	lg	%r12,0(%r1,%r3)
	aghi	%r0,1
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r11,%r0
	je	.L1368
.L1313:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1375
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
.L1239:
	aghi	%r1,64
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	brctg	%r5,.L1239
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
	jne	.L1384
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
.L1375:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r12,16(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r12,40(%r1,%r3)
	stg	%r12,40(%r1,%r2)
	lg	%r11,48(%r1,%r3)
	stg	%r11,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1375
	j	.L1368
.L1245:
	.cfi_restore 11
	.cfi_restore 12
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
.L1384:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	j	.L1326
.L1383:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lg	%r1,0(%r3)
	lghi	%r0,1
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
	je	.L1387
	srlg	%r5,%r2,2
	lghi	%r1,1
	ngr	%r5,%r1
	clgfi	%r11,5
	jle	.L1392
	ltgr	%r5,%r5
	je	.L1393
	st	%r3,0(%r2)
	la	%r6,4(%r2)
	aghi	%r11,-1
.L1389:
	sllg	%r7,%r5,2
	sgr	%r4,%r5
	srlg	%r9,%r4,1
	lghi	%r10,7
	sllg	%r0,%r3,32
	ngr	%r10,%r9
	lghi	%r1,0
	lr	%r0,%r3
	lgr	%r12,%r9
	la	%r5,0(%r7,%r2)
	je	.L1422
	cghi	%r10,1
	je	.L1430
	cghi	%r10,2
	je	.L1431
	cghi	%r10,3
	je	.L1432
	cghi	%r10,4
	je	.L1433
	cghi	%r10,5
	je	.L1434
	cghi	%r10,6
	jne	.L1458
.L1435:
	sllg	%r8,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r8,%r5)
.L1434:
	sllg	%r13,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r13,%r5)
.L1433:
	sllg	%r7,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r7,%r5)
.L1432:
	sllg	%r10,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r10,%r5)
.L1431:
	sllg	%r8,%r1,3
	aghi	%r1,1
	stg	%r0,0(%r8,%r5)
.L1430:
	sllg	%r13,%r1,3
	aghi	%r1,1
	cgr	%r9,%r1
	stg	%r0,0(%r13,%r5)
	je	.L1451
.L1422:
	srlg	%r12,%r12,3
	cghi	%r12,2
	jle	.L1456
	aghi	%r12,-1
	sllg	%r8,%r1,3
	lgr	%r9,%r8
	lgr	%r10,%r8
	lgr	%r13,%r8
	lgr	%r7,%r8
	stg	%r11,160(%r15)
	stg	%r6,168(%r15)
	stg	%r4,176(%r15)
.L1390:
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
	brctg	%r12,.L1390
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
.L1451:
	tmll	%r4,1
	je	.L1387
	nill	%r4,65534
	sllg	%r5,%r4,2
	sgr	%r11,%r4
	la	%r4,0(%r5,%r6)
.L1388:
	st	%r3,0(%r4)
	ltgr	%r11,%r11
	je	.L1387
	st	%r3,4(%r4)
	cghi	%r11,1
	je	.L1387
	st	%r3,8(%r4)
	cghi	%r11,2
	je	.L1387
	st	%r3,12(%r4)
	cghi	%r11,3
	je	.L1387
	st	%r3,16(%r4)
	cghi	%r11,4
	je	.L1387
	st	%r3,20(%r4)
.L1387:
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
.L1393:
	.cfi_restore_state
	lgr	%r6,%r2
	j	.L1389
.L1456:
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
	brctg	%r12,.L1456
	j	.L1451
.L1458:
	stg	%r0,0(%r1,%r5)
	lghi	%r1,1
	j	.L1435
.L1392:
	lgr	%r4,%r2
	j	.L1388
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
	jhe	.L1461
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r0,%r4
	lghi	%r5,7
	aghi	%r0,-1
	lgr	%r1,%r4
	ngr	%r5,%r4
	je	.L1508
	cghi	%r5,1
	je	.L1558
	cghi	%r5,2
	je	.L1559
	cghi	%r5,3
	je	.L1560
	cghi	%r5,4
	je	.L1561
	cghi	%r5,5
	je	.L1562
	cghi	%r5,6
	je	.L1563
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
.L1563:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1562:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L1561:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1560:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	aghi	%r4,-1
.L1559:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1558:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L1508
	br	%r14
.L1461:
	ber	%r14
	ltgr	%r4,%r4
	ber	%r14
	lgr	%r1,%r4
	aghi	%r1,-1
	clgfi	%r1,14
	jle	.L1471
	lgr	%r0,%r3
	lghi	%r5,7
	ogr	%r0,%r2
	ngr	%r0,%r5
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L1471
	la	%r0,1(%r2)
	lgr	%r1,%r3
	sgr	%r1,%r0
	clgfi	%r1,6
	jle	.L1471
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
	je	.L1550
	cghi	%r0,1
	je	.L1564
	cghi	%r0,2
	je	.L1565
	cghi	%r0,3
	je	.L1566
	cghi	%r0,4
	je	.L1567
	cghi	%r0,5
	je	.L1568
	cghi	%r0,6
	jne	.L1626
.L1569:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1568:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
.L1567:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
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
	cgr	%r1,%r12
	je	.L1611
.L1550:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1618
	aghi	%r5,-1
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	lg	%r0,32(%r1,%r2)
	stg	%r0,32(%r1,%r3)
	lg	%r0,40(%r1,%r2)
	stg	%r0,40(%r1,%r3)
	lg	%r0,48(%r1,%r2)
	stg	%r0,48(%r1,%r3)
	lg	%r0,56(%r1,%r2)
	stg	%r0,56(%r1,%r3)
.L1465:
	aghi	%r1,64
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	lg	%r0,32(%r1,%r2)
	stg	%r0,32(%r1,%r3)
	lg	%r0,40(%r1,%r2)
	stg	%r0,40(%r1,%r3)
	lg	%r0,48(%r1,%r2)
	stg	%r0,48(%r1,%r3)
	lg	%r0,56(%r1,%r2)
	stg	%r0,56(%r1,%r3)
	brctg	%r5,.L1465
	aghi	%r1,64
.L1611:
	lgr	%r5,%r4
	sgr	%r5,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r2,0(%r1,%r2)
	je	.L1460
	mvc	0(1,%r3),0(%r2)
	cghi	%r5,1
	je	.L1460
	mvc	1(1,%r3),1(%r2)
	cghi	%r5,2
	je	.L1460
	mvc	2(1,%r3),2(%r2)
	cghi	%r5,3
	je	.L1460
	mvc	3(1,%r3),3(%r2)
	cghi	%r5,4
	je	.L1460
	mvc	4(1,%r3),4(%r2)
	cghi	%r5,5
	je	.L1460
	mvc	5(1,%r3),5(%r2)
	cghi	%r5,6
	je	.L1460
	mvc	6(1,%r3),6(%r2)
.L1460:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L1508:
	srlg	%r1,%r1,3
.L1463:
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
	brctg	%r1,.L1463
	br	%r14
.L1618:
	.cfi_offset 12, -8
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	lg	%r0,8(%r1,%r2)
	stg	%r0,8(%r1,%r3)
	lg	%r12,16(%r1,%r2)
	stg	%r12,16(%r1,%r3)
	lg	%r0,24(%r1,%r2)
	stg	%r0,24(%r1,%r3)
	lg	%r12,32(%r1,%r2)
	stg	%r12,32(%r1,%r3)
	lg	%r0,40(%r1,%r2)
	stg	%r0,40(%r1,%r3)
	lg	%r12,48(%r1,%r2)
	stg	%r12,48(%r1,%r3)
	lg	%r0,56(%r1,%r2)
	stg	%r0,56(%r1,%r3)
	aghi	%r1,64
	brctg	%r5,.L1618
	j	.L1611
.L1471:
	.cfi_restore 12
	lghi	%r0,7
	lghi	%r1,0
	ngr	%r0,%r4
	lgr	%r5,%r4
	je	.L1529
	cghi	%r0,1
	je	.L1570
	cghi	%r0,2
	je	.L1571
	cghi	%r0,3
	je	.L1572
	cghi	%r0,4
	je	.L1573
	cghi	%r0,5
	je	.L1574
	cghi	%r0,6
	je	.L1575
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1575:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1574:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1573:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
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
	cgr	%r4,%r1
	ber	%r14
.L1529:
	srlg	%r4,%r5,3
.L1468:
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
	brctg	%r4,.L1468
	br	%r14
.L1626:
	.cfi_offset 12, -8
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
	j	.L1569
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
	lr	%r1,%r2
	lcr	%r4,%r3
	sll	%r1,0(%r3)
	nilf	%r4,15
	srl	%r2,0(%r4)
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
	lr	%r1,%r2
	lcr	%r4,%r3
	srl	%r1,0(%r3)
	nilf	%r4,15
	sll	%r2,0(%r4)
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
	lr	%r1,%r2
	lcr	%r4,%r3
	sll	%r1,0(%r3)
	nilf	%r4,7
	srl	%r2,0(%r4)
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
	lr	%r1,%r2
	lcr	%r4,%r3
	srl	%r1,0(%r3)
	nilf	%r4,7
	sll	%r2,0(%r4)
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
	lhi	%r1,0
	lhi	%r0,4
.L1657:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	lr	%r3,%r1
	srl	%r5,0(%r1)
	jne	.L1656
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r5,1
	srl	%r4,0(%r1)
	jne	.L1656
	lr	%r1,%r3
	ahi	%r1,2
	tmll	%r4,1
	lr	%r3,%r2
	srl	%r3,0(%r1)
	jne	.L1656
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1656
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	srl	%r5,0(%r1)
	jne	.L1656
	ahi	%r1,1
	lr	%r3,%r2
	tmll	%r5,1
	srl	%r3,0(%r1)
	jne	.L1656
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1656
	ahi	%r1,1
	tmll	%r4,1
	jne	.L1656
	brct	%r0,.L1657
	lhi	%r1,0
.L1656:
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
	je	.L1681
	lr	%r2,%r3
	nilf	%r2,1
	jne	.L1679
	lhi	%r2,1
.L1680:
	lr	%r1,%r3
	ahi	%r2,1
	sra	%r1,1
	tmll	%r1,1
	lgfr	%r3,%r1
	je	.L1680
.L1679:
	lgfr	%r2,%r2
	br	%r14
.L1681:
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
	larl	%r5,.L1690
	lghi	%r2,1
	keb	%f0,.L1691-.L1690(%r5)
	blr	%r14
	keb	%f0,.L1692-.L1690(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1690:
.L1692:
	.long	2139095039
.L1691:
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
	larl	%r5,.L1698
	lghi	%r2,1
	kdb	%f0,.L1699-.L1698(%r5)
	blr	%r14
	kdb	%f0,.L1700-.L1698(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1698:
.L1700:
	.long	2146435071
	.long	-1
.L1699:
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
	larl	%r5,.L1706
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1707-.L1706(%r5)
	ld	%f6,.L1707-.L1706+8(%r5)
	kxbr	%f0,%f4
	lghi	%r2,1
	blr	%r14
	ld	%f4,.L1708-.L1706(%r5)
	ld	%f6,.L1708-.L1706+8(%r5)
	kxbr	%f0,%f4
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1706:
.L1708:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1707:
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
	larl	%r5,.L1727
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1725
	le	%f4,.L1728-.L1727(%r5)
.L1713:
	tmll	%r2,1
	je	.L1714
.L1715:
	meebr	%f0,%f4
.L1714:
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
	jne	.L1715
.L1726:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1715
	j	.L1726
.L1725:
	le	%f4,.L1729-.L1727(%r5)
	j	.L1713
	.section	.rodata
	.align	8
.L1727:
.L1729:
	.long	1056964608
.L1728:
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
	larl	%r5,.L1746
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1744
	ld	%f4,.L1747-.L1746(%r5)
.L1732:
	tmll	%r2,1
	je	.L1733
.L1734:
	mdbr	%f0,%f4
.L1733:
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
	jne	.L1734
.L1745:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1734
	j	.L1745
.L1744:
	ld	%f4,.L1748-.L1746(%r5)
	j	.L1732
	.section	.rodata
	.align	8
.L1746:
.L1748:
	.long	1071644672
	.long	0
.L1747:
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
	larl	%r5,.L1765
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1750
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1750
	ltr	%r4,%r4
	jl	.L1763
	ld	%f0,.L1766-.L1765(%r5)
	ld	%f2,.L1766-.L1765+8(%r5)
.L1751:
	tmll	%r4,1
	je	.L1752
.L1753:
	mxbr	%f4,%f0
.L1752:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	ltgr	%r4,%r4
	je	.L1750
	tmll	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1753
.L1764:
	ar	%r0,%r4
	mxbr	%f0,%f0
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	jne	.L1753
	j	.L1764
.L1750:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1763:
	ld	%f0,.L1767-.L1765(%r5)
	ld	%f2,.L1767-.L1765+8(%r5)
	j	.L1751
	.section	.rodata
	.align	8
.L1765:
.L1767:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1766:
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
	aghi	%r1,-1
	clgfi	%r1,14
	jle	.L1770
	lgr	%r0,%r2
	ogr	%r0,%r3
	tmll	%r0,7
	jne	.L1770
	lgr	%r12,%r4
	nill	%r12,65528
	lgr	%r5,%r12
	aghi	%r5,-8
	srlg	%r5,%r5,3
	lghi	%r0,7
	aghi	%r5,1
	lghi	%r1,0
	ngr	%r0,%r5
	je	.L1825
	cghi	%r0,1
	je	.L1833
	cghi	%r0,2
	je	.L1834
	cghi	%r0,3
	je	.L1835
	cghi	%r0,4
	je	.L1836
	cghi	%r0,5
	je	.L1837
	cghi	%r0,6
	je	.L1838
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1838:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1837:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1836:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1835:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1834:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1833:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L1868
.L1825:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1878
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
.L1771:
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
	brctg	%r5,.L1771
	aghi	%r1,64
.L1868:
	lgr	%r12,%r4
	sgr	%r12,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	je	.L1769
	xc	0(1,%r5),0(%r3)
	cghi	%r12,1
	je	.L1769
	xc	1(1,%r5),1(%r3)
	cghi	%r12,2
	je	.L1769
	xc	2(1,%r5),2(%r3)
	cghi	%r12,3
	je	.L1769
	xc	3(1,%r5),3(%r3)
	cghi	%r12,4
	je	.L1769
	xc	4(1,%r5),4(%r3)
	cghi	%r12,5
	je	.L1769
	xc	5(1,%r5),5(%r3)
	cghi	%r12,6
	je	.L1769
	xc	6(1,%r5),6(%r3)
.L1769:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1878:
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
	brctg	%r5,.L1878
	j	.L1868
.L1770:
	lgr	%r5,%r4
	la	%r0,0(%r4,%r3)
	lghi	%r4,7
	lgr	%r1,%r2
	ngr	%r4,%r5
	je	.L1804
	cghi	%r4,1
	je	.L1839
	cghi	%r4,2
	je	.L1840
	cghi	%r4,3
	je	.L1841
	cghi	%r4,4
	je	.L1842
	cghi	%r4,5
	je	.L1843
	cghi	%r4,6
	je	.L1844
	lgr	%r12,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
.L1844:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	la	%r1,1(%r1)
.L1843:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	la	%r1,1(%r1)
.L1842:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	la	%r1,1(%r1)
.L1841:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	la	%r1,1(%r1)
.L1840:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	la	%r1,1(%r1)
.L1839:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	xr	%r4,%r12
	la	%r3,1(%r3)
	stc	%r4,0(%r1)
	cgr	%r0,%r3
	la	%r1,1(%r1)
	je	.L1769
.L1804:
	srlg	%r4,%r5,3
	cghi	%r4,2
	jle	.L1877
	aghi	%r4,-1
	xc	0(6,%r1),0(%r3)
.L1773:
	xc	6(1,%r1),6(%r3)
	la	%r1,8(%r1)
	la	%r3,8(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	xc	0(6,%r1),0(%r3)
	brctg	%r4,.L1773
	xc	6(1,%r1),6(%r3)
	llgc	%r4,7(%r1)
	llgc	%r3,7(%r3)
	xr	%r4,%r3
	stc	%r4,7(%r1)
	j	.L1769
.L1877:
	xc	0(7,%r1),0(%r3)
	llgc	%r5,7(%r1)
	llgc	%r0,7(%r3)
	xr	%r5,%r0
	la	%r1,8(%r1)
	stcy	%r5,-1(%r1)
	la	%r3,8(%r3)
	brctg	%r4,.L1877
	j	.L1769
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
	je	.L1885
.L1886:
	cli	1(%r1),0
	la	%r1,1(%r1)
	jne	.L1886
.L1885:
	ltgr	%r4,%r4
	je	.L1950
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lghi	%r5,7
	lgr	%r12,%r4
	aghi	%r12,-1
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L1909
	cghi	%r5,1
	je	.L1932
	cghi	%r5,2
	je	.L1933
	cghi	%r5,3
	je	.L1934
	cghi	%r5,4
	je	.L1935
	cghi	%r5,5
	je	.L1936
	cghi	%r5,6
	jne	.L1954
.L1937:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1936:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1935:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1934:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1933:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1932:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1890
	cghi	%r4,1
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	je	.L1888
.L1909:
	srlg	%r0,%r0,3
.L1887:
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1890
	llgc	%r12,1(%r3)
	stc	%r12,1(%r1)
	ltgr	%r12,%r12
	je	.L1890
	llgc	%r5,2(%r3)
	stc	%r5,2(%r1)
	ltgr	%r5,%r5
	je	.L1890
	llgc	%r4,3(%r3)
	stc	%r4,3(%r1)
	ltgr	%r4,%r4
	je	.L1890
	llgc	%r12,4(%r3)
	stc	%r12,4(%r1)
	ltgr	%r12,%r12
	je	.L1890
	llgc	%r5,5(%r3)
	stc	%r5,5(%r1)
	ltgr	%r5,%r5
	je	.L1890
	llgc	%r4,6(%r3)
	stc	%r4,6(%r1)
	ltgr	%r4,%r4
	je	.L1890
	llgc	%r12,7(%r3)
	stc	%r12,7(%r1)
	ltgr	%r12,%r12
	je	.L1890
	la	%r3,8(%r3)
	la	%r1,8(%r1)
	brctg	%r0,.L1887
.L1888:
	mvi	0(%r1),0
.L1890:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1954:
	.cfi_restore_state
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1890
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	lgr	%r4,%r12
	j	.L1937
.L1950:
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
	je	.L1976
	cghi	%r1,1
	je	.L1999
	cghi	%r1,2
	je	.L2000
	cghi	%r1,3
	je	.L2001
	cghi	%r1,4
	je	.L2002
	cghi	%r1,5
	je	.L2003
	cghi	%r1,6
	jne	.L2016
.L2004:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2003:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2002:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2001:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2000:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L1999:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
	cgr	%r3,%r2
	ber	%r14
.L1976:
	srlg	%r0,%r5,3
.L1957:
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
	brctg	%r0,.L1957
	br	%r14
.L2016:
	cli	0(%r4),0
	ber	%r14
	lghi	%r2,1
	j	.L2004
	.cfi_endproc
.LFE94:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB95:
	.cfi_startproc
	cli	0(%r2),0
	llc	%r5,0(%r2)
	je	.L2023
.L2029:
	lgr	%r1,%r3
	j	.L2022
.L2021:
	cr	%r4,%r5
	la	%r1,1(%r1)
	ber	%r14
.L2022:
	llc	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L2021
	cli	1(%r2),0
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	jne	.L2029
.L2023:
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
	lghi	%r5,0
.L2034:
	llc	%r4,0(%r1)
	lgr	%r2,%r5
	cr	%r4,%r3
	jne	.L2033
	lgr	%r2,%r1
.L2033:
	ltr	%r4,%r4
	la	%r1,1(%r1)
	lgr	%r5,%r2
	jne	.L2034
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
	stmg	%r7,%r12,112(%r15)
	.cfi_offset 7, -48
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	llc	%r10,0(%r3)
	tml	%r10,255
	je	.L2038
	lr	%r8,%r10
	lgr	%r9,%r3
.L2040:
	cli	1(%r9),0
	la	%r9,1(%r9)
	jne	.L2040
	slgr	%r9,%r3
	jhe	.L2038
	aghi	%r9,-1
	j	.L2091
.L2094:
	ltr	%r1,%r1
	la	%r2,1(%r2)
	je	.L2093
.L2091:
	llc	%r1,0(%r2)
	cr	%r1,%r10
	jne	.L2094
	lghi	%r12,3
	lgr	%r0,%r9
	ngr	%r12,%r9
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r11,%r8
	je	.L2064
	cr	%r10,%r8
	jne	.L2045
	cli	1(%r2),0
	la	%r4,1(%r2)
	la	%r7,1(%r3)
	llc	%r1,1(%r2)
	je	.L2090
	cli	1(%r3),0
	llc	%r11,1(%r3)
	je	.L2045
	cghi	%r12,1
	lgr	%r5,%r7
	je	.L2064
	cghi	%r12,2
	je	.L2078
	cr	%r1,%r11
	jne	.L2045
	cli	2(%r2),0
	la	%r4,1(%r4)
	la	%r12,2(%r3)
	llc	%r1,2(%r2)
	je	.L2090
	cli	2(%r3),0
	llc	%r11,2(%r3)
	je	.L2045
	lgr	%r5,%r12
.L2078:
	cr	%r1,%r11
	jne	.L2045
	cli	1(%r4),0
	la	%r4,1(%r4)
	la	%r7,1(%r5)
	llc	%r1,0(%r4)
	je	.L2090
	cli	1(%r5),0
	llc	%r11,1(%r5)
	je	.L2045
	lgr	%r5,%r7
.L2064:
	srlg	%r0,%r0,2
	aghi	%r0,1
	brctg	%r0,.L2077
.L2044:
	cr	%r1,%r11
	je	.L2038
.L2045:
	la	%r2,1(%r2)
	j	.L2091
.L2077:
	cr	%r1,%r11
	jne	.L2045
	cli	1(%r4),0
	la	%r12,1(%r5)
	llc	%r1,1(%r4)
	je	.L2090
	cli	1(%r5),0
	llc	%r11,1(%r5)
	je	.L2045
	cr	%r1,%r11
	lgr	%r5,%r12
	jne	.L2045
	cli	2(%r4),0
	la	%r11,1(%r12)
	llc	%r1,2(%r4)
	je	.L2090
	cli	1(%r12),0
	llc	%r7,1(%r12)
	je	.L2045
	cr	%r1,%r7
	lgr	%r5,%r11
	jne	.L2045
	cli	3(%r4),0
	llc	%r1,3(%r4)
	je	.L2090
	cli	1(%r11),0
	llc	%r7,1(%r11)
	la	%r5,2(%r12)
	je	.L2045
	cr	%r1,%r7
	jne	.L2045
	cli	4(%r4),0
	la	%r4,4(%r4)
	la	%r7,3(%r12)
	llc	%r1,0(%r4)
	je	.L2090
	cli	3(%r12),0
	llc	%r11,3(%r12)
	je	.L2045
	lgr	%r5,%r7
	brctg	%r0,.L2077
	j	.L2044
.L2093:
	lghi	%r2,0
.L2038:
	lmg	%r7,%r12,112(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2090:
	.cfi_restore_state
	llc	%r11,1(%r5)
	cr	%r1,%r11
	jne	.L2045
	j	.L2038
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	larl	%r5,.L2108
	kdb	%f0,.L2109-.L2108(%r5)
	jl	.L2107
	jnh	.L2100
	kdb	%f2,.L2109-.L2108(%r5)
	jl	.L2099
.L2100:
	br	%r14
.L2107:
	kdb	%f2,.L2109-.L2108(%r5)
	jnh	.L2100
.L2099:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2108:
.L2109:
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
	jl	.L2119
	sgr	%r3,%r0
	algr	%r3,%r2
	jnle	.L2119
	stmg	%r9,%r12,128(%r15)
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	llc	%r12,0(%r4)
	j	.L2116
.L2120:
	lgr	%r2,%r5
.L2112:
	clgr	%r3,%r2
	jl	.L2121
.L2116:
	llc	%r1,0(%r2)
	la	%r5,1(%r2)
	cr	%r1,%r12
	jne	.L2120
	cghi	%r0,1
	je	.L2110
.L2115:
	lgr	%r11,%r0
	lghi	%r10,7
	aghi	%r11,-1
	lghi	%r1,1
	ngr	%r10,%r11
	je	.L2139
	cghi	%r10,1
	je	.L2161
	cghi	%r10,2
	je	.L2162
	cghi	%r10,3
	je	.L2163
	cghi	%r10,4
	je	.L2164
	cghi	%r10,5
	je	.L2165
	cghi	%r10,6
	je	.L2166
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	jne	.L2176
.L2166:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
.L2165:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
.L2164:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
.L2163:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
.L2162:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
.L2161:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,1
	cgr	%r1,%r0
	je	.L2110
.L2139:
	srlg	%r11,%r11,3
.L2113:
	la	%r10,0(%r1,%r2)
	llgc	%r9,0(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,1(%r1,%r2)
	llgc	%r9,1(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,2(%r1,%r2)
	llgc	%r9,2(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,3(%r1,%r2)
	llgc	%r9,3(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,4(%r1,%r2)
	llgc	%r9,4(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,5(%r1,%r2)
	llgc	%r9,5(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,6(%r1,%r2)
	llgc	%r9,6(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	la	%r10,7(%r1,%r2)
	llgc	%r9,7(%r1,%r4)
	clm	%r9,1,0(%r10)
	jne	.L2176
	aghi	%r1,8
	brctg	%r11,.L2113
.L2110:
	lmg	%r9,%r12,128(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L2176:
	.cfi_restore_state
	clgr	%r3,%r5
	jl	.L2121
	llc	%r1,0(%r5)
	la	%r2,1(%r5)
	cr	%r12,%r1
	jne	.L2112
	lgr	%r11,%r5
	lgr	%r5,%r2
	lgr	%r2,%r11
	j	.L2115
.L2121:
	lghi	%r2,0
	lmg	%r9,%r12,128(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L2119:
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
	je	.L2187
	brasl	%r14,memmove@PLT
.L2187:
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
	larl	%r5,.L2220
	kdb	%f0,.L2221-.L2220(%r5)
	jl	.L2216
	kdb	%f0,.L2222-.L2220(%r5)
	jnhe	.L2217
	lhi	%r3,0
.L2196:
	lhi	%r0,0
.L2202:
	ahi	%r0,1
	mdb	%f0,.L2223-.L2220(%r5)
	kdb	%f0,.L2222-.L2220(%r5)
	jhe	.L2202
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L2219:
	lcdbr	%f0,%f0
	br	%r14
.L2217:
	kdb	%f0,.L2223-.L2220(%r5)
	jnl	.L2199
	cdb	%f0,.L2221-.L2220(%r5)
	jne	.L2208
.L2199:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L2216:
	lcdbr	%f2,%f0
	kdb	%f0,.L2224-.L2220(%r5)
	jnle	.L2218
	lhi	%r3,1
	ldr	%f0,%f2
	j	.L2196
.L2218:
	kdb	%f0,.L2225-.L2220(%r5)
	jnh	.L2199
	lhi	%r3,1
.L2197:
	lhi	%r0,0
	ldr	%f0,%f2
.L2204:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L2223-.L2220(%r5)
	jl	.L2204
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L2219
	br	%r14
.L2208:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L2197
	.section	.rodata
	.align	8
.L2220:
.L2225:
	.long	-1075838976
	.long	0
.L2224:
	.long	-1074790400
	.long	0
.L2223:
	.long	1071644672
	.long	0
.L2222:
	.long	1072693248
	.long	0
.L2221:
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
.L2228:
	lghi	%r1,1
	ngr	%r1,%r4
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	ltgr	%r4,%r4
	jne	.L2228
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
	jhe	.L2279
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L2234:
	ltr	%r3,%r3
	lr	%r0,%r3
	sll	%r0,1
	jl	.L2239
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2236
	ltr	%r3,%r3
	jl	.L2239
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L2236
	ahi	%r5,-8
	brct	%r11,.L2234
.L2237:
	ltgr	%r4,%r4
	je	.L2245
	lr	%r5,%r2
.L2245:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2236:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2249
.L2239:
	lhi	%r5,0
	j	.L2244
.L2280:
	lr	%r11,%r1
.L2243:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L2237
.L2244:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r12,%r2
	lhi	%r0,0
	slr	%r2,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2241
	lr	%r12,%r11
.L2241:
	ltr	%r0,%r0
	llgfr	%r2,%r12
	jne	.L2280
	lhi	%r11,0
	j	.L2243
.L2279:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	lhi	%r0,0
	slr	%r5,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2247
	lr	%r1,%r2
.L2247:
	ltgr	%r4,%r4
	llgfr	%r2,%r1
	je	.L2276
	lr	%r0,%r2
.L2276:
	llgfr	%r2,%r0
	br	%r14
.L2249:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L2237
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
	je	.L2284
	sllg	%r0,%r2,8
	flogr	%r2,%r0
	ahi	%r2,-33
	lgfr	%r2,%r2
	br	%r14
.L2284:
	lhi	%r2,7
	lgfr	%r2,%r2
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
	xgr	%r1,%r3
	cgr	%r2,%r3
	je	.L2288
	flogr	%r2,%r1
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L2288:
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
	je	.L2291
.L2292:
	lr	%r1,%r4
	nilf	%r1,1
	lcr	%r0,%r1
	srlg	%r4,%r4,1
	nr	%r0,%r3
	lr	%r5,%r3
	ar	%r2,%r0
	sll	%r5,1
	ltgr	%r4,%r4
	llgfr	%r3,%r5
	jne	.L2292
.L2291:
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
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lr	%r11,%r4
	nill	%r11,65528
	clgr	%r2,%r3
	lr	%r1,%r4
	srl	%r1,3
	jl	.L2300
	la	%r5,0(%r4,%r3)
	clgr	%r2,%r5
	jle	.L2489
.L2300:
	ltr	%r1,%r1
	je	.L2490
	llgfr	%r8,%r1
	lghi	%r9,7
	sllg	%r0,%r8,3
	lghi	%r1,0
	lgr	%r12,%r0
	aghi	%r12,-8
	srlg	%r5,%r12,3
	aghi	%r5,1
	ngr	%r9,%r5
	je	.L2380
	cghi	%r9,1
	je	.L2416
	cghi	%r9,2
	je	.L2417
	cghi	%r9,3
	je	.L2418
	cghi	%r9,4
	je	.L2419
	cghi	%r9,5
	je	.L2420
	cghi	%r9,6
	je	.L2421
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2421:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2420:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
.L2419:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L2418:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2417:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2416:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r0,%r1
	je	.L2473
.L2380:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L2485
	aghi	%r5,-1
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
.L2303:
	aghi	%r1,64
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r0,24(%r1,%r3)
	stg	%r0,24(%r1,%r2)
	lg	%r0,32(%r1,%r3)
	stg	%r0,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r0,48(%r1,%r3)
	stg	%r0,48(%r1,%r2)
	lg	%r0,56(%r1,%r3)
	stg	%r0,56(%r1,%r2)
	brctg	%r5,.L2303
.L2473:
	clr	%r11,%r4
	jhe	.L2296
	lr	%r9,%r4
	sr	%r9,%r11
	lr	%r5,%r9
	ahi	%r5,-1
	clfi	%r5,14
	llgfr	%r10,%r11
	jle	.L2305
	lgr	%r5,%r2
	algfr	%r5,%r11
	lgr	%r12,%r3
	la	%r8,1(%r10,%r3)
	algfr	%r12,%r11
	lgr	%r1,%r5
	sgr	%r1,%r8
	clgfi	%r1,6
	jle	.L2305
	lgr	%r8,%r12
	lghi	%r0,7
	ogr	%r8,%r5
	ngr	%r8,%r0
	aghi	%r8,-1
	ltgr	%r8,%r8
	jhe	.L2305
	lr	%r10,%r9
	srl	%r10,3
	llgfr	%r8,%r10
	lghi	%r1,0
	sllg	%r10,%r8,3
	lghi	%r8,7
	lgr	%r0,%r10
	aghi	%r0,-8
	srlg	%r0,%r0,3
	aghi	%r0,1
	ngr	%r8,%r0
	je	.L2359
	cghi	%r8,1
	je	.L2422
	cghi	%r8,2
	je	.L2423
	cghi	%r8,3
	je	.L2424
	cghi	%r8,4
	je	.L2425
	cghi	%r8,5
	je	.L2426
	cghi	%r8,6
	je	.L2427
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
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
.L2424:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2423:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2422:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
	cgr	%r1,%r10
	je	.L2472
.L2359:
	srlg	%r0,%r0,3
	cghi	%r0,2
	jle	.L2484
	aghi	%r0,-1
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r10,8(%r1,%r12)
	stg	%r10,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r10,40(%r1,%r12)
	stg	%r10,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r10,56(%r1,%r12)
	stg	%r10,56(%r1,%r5)
.L2306:
	aghi	%r1,64
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r10,8(%r1,%r12)
	stg	%r10,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r10,40(%r1,%r12)
	stg	%r10,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r10,56(%r1,%r12)
	stg	%r10,56(%r1,%r5)
	brctg	%r0,.L2306
.L2472:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r11
	tmll	%r9,7
	je	.L2296
	llgfr	%r11,%r1
	lr	%r12,%r1
	ahi	%r12,1
	clr	%r12,%r4
	ic	%r9,0(%r11,%r3)
	stc	%r9,0(%r11,%r2)
	jhe	.L2296
	llgfr	%r5,%r12
	lr	%r0,%r1
	ahi	%r0,2
	clr	%r0,%r4
	ic	%r10,0(%r5,%r3)
	stc	%r10,0(%r5,%r2)
	jhe	.L2296
	llgfr	%r8,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	jhe	.L2296
	llgfr	%r9,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	jhe	.L2296
	llgfr	%r5,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r10,0(%r5,%r3)
	stc	%r10,0(%r5,%r2)
	jhe	.L2296
	llgfr	%r8,%r0
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	jhe	.L2296
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2296:
	lmg	%r8,%r12,120(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2489:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r8,%r0
	je	.L2296
	lgr	%r4,%r8
	lghi	%r9,7
	aghi	%r4,1
	ngr	%r9,%r4
	je	.L2401
	cghi	%r9,1
	je	.L2410
	cghi	%r9,2
	je	.L2411
	cghi	%r9,3
	je	.L2412
	cghi	%r9,4
	je	.L2413
	cghi	%r9,5
	je	.L2414
	cghi	%r9,6
	jne	.L2491
.L2415:
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	aghi	%r8,-1
.L2414:
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	aghi	%r8,-1
.L2413:
	ic	%r1,0(%r8,%r3)
	stc	%r1,0(%r8,%r2)
	aghi	%r8,-1
.L2412:
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	aghi	%r8,-1
.L2411:
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	aghi	%r8,-1
.L2410:
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	aghi	%r8,-1
	cghi	%r8,-1
	je	.L2296
.L2401:
	srlg	%r4,%r4,3
.L2310:
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	icy	%r11,-1(%r8,%r3)
	stcy	%r11,-1(%r8,%r2)
	icy	%r12,-2(%r8,%r3)
	stcy	%r12,-2(%r8,%r2)
	icy	%r1,-3(%r8,%r3)
	stcy	%r1,-3(%r8,%r2)
	icy	%r5,-4(%r8,%r3)
	stcy	%r5,-4(%r8,%r2)
	icy	%r0,-5(%r8,%r3)
	stcy	%r0,-5(%r8,%r2)
	icy	%r9,-6(%r8,%r3)
	stcy	%r9,-6(%r8,%r2)
	icy	%r10,-7(%r8,%r3)
	stcy	%r10,-7(%r8,%r2)
	aghi	%r8,-8
	brctg	%r4,.L2310
	j	.L2296
.L2485:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	lg	%r8,32(%r1,%r3)
	stg	%r8,32(%r1,%r2)
	lg	%r0,40(%r1,%r3)
	stg	%r0,40(%r1,%r2)
	lg	%r12,48(%r1,%r3)
	stg	%r12,48(%r1,%r2)
	lg	%r9,56(%r1,%r3)
	stg	%r9,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2485
	j	.L2473
.L2484:
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
	brctg	%r0,.L2484
	j	.L2472
.L2490:
	ltgr	%r4,%r4
	llgfr	%r10,%r11
	je	.L2296
.L2305:
	lghi	%r11,-1
	lgr	%r1,%r10
	xgr	%r11,%r10
	aghi	%r1,1
	ar	%r11,%r4
	ic	%r9,0(%r10,%r3)
	stc	%r9,0(%r10,%r2)
	lr	%r12,%r11
	nilf	%r12,7
	clr	%r1,%r4
	jhe	.L2296
	ltr	%r12,%r12
	je	.L2338
	chi	%r12,1
	je	.L2429
	chi	%r12,2
	je	.L2430
	chi	%r12,3
	je	.L2431
	chi	%r12,4
	je	.L2432
	chi	%r12,5
	je	.L2433
	chi	%r12,6
	je	.L2434
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lgr	%r1,%r10
	aghi	%r1,2
.L2434:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2433:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L2432:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2431:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
.L2430:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2429:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	clr	%r1,%r4
	jhe	.L2296
.L2338:
	lr	%r4,%r11
	srl	%r4,3
.L2308:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r10,1(%r1,%r3)
	stc	%r10,1(%r1,%r2)
	ic	%r8,2(%r1,%r3)
	stc	%r8,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ic	%r9,4(%r1,%r3)
	stc	%r9,4(%r1,%r2)
	ic	%r12,5(%r1,%r3)
	stc	%r12,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r11,7(%r1,%r3)
	stc	%r11,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2308
	j	.L2296
.L2491:
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	aghi	%r8,-1
	j	.L2415
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	clgr	%r2,%r3
	lr	%r12,%r4
	srl	%r12,1
	jl	.L2497
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2637
.L2497:
	ltr	%r12,%r12
	je	.L2496
	lr	%r10,%r12
	ahi	%r10,-1
	clfi	%r10,6
	jle	.L2500
	lgr	%r11,%r3
	lghi	%r1,7
	ogr	%r11,%r2
	ngr	%r11,%r1
	aghi	%r11,-1
	ltgr	%r11,%r11
	jhe	.L2500
	la	%r0,2(%r3)
	lgr	%r5,%r2
	sgr	%r5,%r0
	clgfi	%r5,4
	jle	.L2500
	llilf	%r10,4294967288
	lr	%r0,%r4
	ngr	%r10,%r4
	srl	%r0,3
	lgr	%r11,%r10
	aghi	%r11,-8
	srlg	%r5,%r11,3
	lghi	%r11,7
	aghi	%r5,1
	lghi	%r1,0
	ngr	%r11,%r5
	je	.L2551
	cghi	%r11,1
	je	.L2587
	cghi	%r11,2
	je	.L2588
	cghi	%r11,3
	je	.L2589
	cghi	%r11,4
	je	.L2590
	cghi	%r11,5
	je	.L2591
	cghi	%r11,6
	je	.L2592
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2592:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
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
	cgr	%r1,%r10
	je	.L2626
.L2551:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L2633
	aghi	%r5,-1
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	lg	%r11,32(%r1,%r3)
	stg	%r11,32(%r1,%r2)
	lg	%r11,40(%r1,%r3)
	stg	%r11,40(%r1,%r2)
	lg	%r11,48(%r1,%r3)
	stg	%r11,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
.L2501:
	aghi	%r1,64
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	lg	%r11,32(%r1,%r3)
	stg	%r11,32(%r1,%r2)
	lg	%r11,40(%r1,%r3)
	stg	%r11,40(%r1,%r2)
	lg	%r11,48(%r1,%r3)
	stg	%r11,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	brctg	%r5,.L2501
.L2626:
	lr	%r1,%r0
	sll	%r1,2
	cr	%r12,%r1
	je	.L2496
	llgfr	%r5,%r1
	lr	%r0,%r1
	sllg	%r10,%r5,1
	ahi	%r0,1
	clr	%r12,%r0
	lh	%r11,0(%r10,%r3)
	sth	%r11,0(%r10,%r2)
	jle	.L2496
	llgfr	%r5,%r0
	ahi	%r1,2
	sllg	%r10,%r5,1
	clr	%r12,%r1
	lh	%r0,0(%r10,%r3)
	sth	%r0,0(%r10,%r2)
	jle	.L2496
	llgfr	%r12,%r1
	sllg	%r1,%r12,1
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
.L2496:
	tmll	%r4,1
	je	.L2493
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2493:
	lmg	%r10,%r12,136(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2637:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r10,%r0
	je	.L2493
	lgr	%r4,%r10
	lghi	%r5,7
	aghi	%r4,1
	ngr	%r5,%r4
	je	.L2572
	cghi	%r5,1
	je	.L2581
	cghi	%r5,2
	je	.L2582
	cghi	%r5,3
	je	.L2583
	cghi	%r5,4
	je	.L2584
	cghi	%r5,5
	je	.L2585
	cghi	%r5,6
	jne	.L2638
.L2586:
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	aghi	%r10,-1
.L2585:
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	aghi	%r10,-1
.L2584:
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	aghi	%r10,-1
.L2583:
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	aghi	%r10,-1
.L2582:
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	aghi	%r10,-1
.L2581:
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	aghi	%r10,-1
	cghi	%r10,-1
	je	.L2493
.L2572:
	srlg	%r4,%r4,3
.L2506:
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
	brctg	%r4,.L2506
	j	.L2493
.L2633:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r11,24(%r1,%r3)
	stg	%r11,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r11,40(%r1,%r3)
	stg	%r11,40(%r1,%r2)
	lg	%r10,48(%r1,%r3)
	stg	%r10,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2633
	j	.L2626
.L2500:
	llgfr	%r5,%r12
	lghi	%r12,7
	sllg	%r10,%r5,1
	lghi	%r1,0
	lgr	%r0,%r10
	aghi	%r0,-2
	srlg	%r11,%r0,1
	aghi	%r11,1
	ngr	%r12,%r11
	je	.L2530
	cghi	%r12,1
	je	.L2593
	cghi	%r12,2
	je	.L2594
	cghi	%r12,3
	je	.L2595
	cghi	%r12,4
	je	.L2596
	cghi	%r12,5
	je	.L2597
	cghi	%r12,6
	je	.L2598
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lghi	%r1,2
.L2598:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2597:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L2596:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L2595:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2594:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L2593:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
	cgr	%r10,%r1
	je	.L2496
.L2530:
	srlg	%r10,%r11,3
.L2503:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	lh	%r11,8(%r1,%r3)
	sth	%r11,8(%r1,%r2)
	lh	%r5,10(%r1,%r3)
	sth	%r5,10(%r1,%r2)
	lh	%r0,12(%r1,%r3)
	sth	%r0,12(%r1,%r2)
	lh	%r12,14(%r1,%r3)
	sth	%r12,14(%r1,%r2)
	aghi	%r1,16
	brctg	%r10,.L2503
	j	.L2496
.L2638:
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	aghi	%r10,-1
	j	.L2586
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lr	%r11,%r4
	nill	%r11,65532
	clgr	%r2,%r3
	lr	%r12,%r4
	srl	%r12,2
	jl	.L2645
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2876
.L2645:
	ltr	%r12,%r12
	je	.L2877
	lr	%r8,%r12
	ahi	%r8,-1
	clfi	%r8,8
	jle	.L2647
	lgr	%r10,%r2
	lghi	%r1,7
	ogr	%r10,%r3
	ngr	%r10,%r1
	aghi	%r10,-1
	ltgr	%r10,%r10
	jhe	.L2647
	la	%r0,4(%r3)
	cgr	%r2,%r0
	je	.L2647
	llilf	%r9,4294967288
	lghi	%r10,7
	ngr	%r9,%r4
	lr	%r0,%r4
	lgr	%r5,%r9
	aghi	%r5,-8
	srlg	%r8,%r5,3
	srl	%r0,3
	aghi	%r8,1
	lghi	%r1,0
	ngr	%r10,%r8
	je	.L2752
	cghi	%r10,1
	je	.L2788
	cghi	%r10,2
	je	.L2789
	cghi	%r10,3
	je	.L2790
	cghi	%r10,4
	je	.L2791
	cghi	%r10,5
	je	.L2792
	cghi	%r10,6
	je	.L2793
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2793:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2792:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2791:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2790:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2789:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2788:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r9,%r1
	je	.L2859
.L2752:
	srlg	%r5,%r8,3
	cghi	%r5,2
	jle	.L2871
	aghi	%r5,-1
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r10,40(%r1,%r3)
	stg	%r10,40(%r1,%r2)
	lg	%r10,48(%r1,%r3)
	stg	%r10,48(%r1,%r2)
	lg	%r10,56(%r1,%r3)
	stg	%r10,56(%r1,%r2)
.L2648:
	aghi	%r1,64
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r10,40(%r1,%r3)
	stg	%r10,40(%r1,%r2)
	lg	%r10,48(%r1,%r3)
	stg	%r10,48(%r1,%r2)
	lg	%r10,56(%r1,%r3)
	stg	%r10,56(%r1,%r2)
	brctg	%r5,.L2648
.L2859:
	sll	%r0,1
	cr	%r12,%r0
	je	.L2651
	llgfr	%r12,%r0
	sllg	%r1,%r12,2
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L2651:
	clr	%r11,%r4
	jhe	.L2640
	lr	%r9,%r4
	sr	%r9,%r11
	lr	%r1,%r9
	ahi	%r1,-1
	clfi	%r1,14
	llgfr	%r10,%r11
	jle	.L2643
	lgr	%r5,%r2
	algfr	%r5,%r11
	lgr	%r12,%r3
	la	%r0,1(%r10,%r3)
	algfr	%r12,%r11
	lgr	%r8,%r5
	sgr	%r8,%r0
	clgfi	%r8,6
	jle	.L2643
	lgr	%r1,%r12
	lghi	%r0,7
	ogr	%r1,%r5
	ngr	%r1,%r0
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2643
	lr	%r10,%r9
	srl	%r10,3
	llgfr	%r8,%r10
	lghi	%r1,0
	sllg	%r10,%r8,3
	lghi	%r8,7
	lgr	%r0,%r10
	aghi	%r0,-8
	srlg	%r0,%r0,3
	aghi	%r0,1
	ngr	%r8,%r0
	je	.L2710
	cghi	%r8,1
	je	.L2800
	cghi	%r8,2
	je	.L2801
	cghi	%r8,3
	je	.L2802
	cghi	%r8,4
	je	.L2803
	cghi	%r8,5
	je	.L2804
	cghi	%r8,6
	je	.L2805
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
.L2805:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2804:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2803:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
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
	cgr	%r10,%r1
	je	.L2858
.L2710:
	srlg	%r0,%r0,3
	cghi	%r0,2
	jle	.L2870
	aghi	%r0,-1
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r10,8(%r1,%r12)
	stg	%r10,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r10,40(%r1,%r12)
	stg	%r10,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r10,56(%r1,%r12)
	stg	%r10,56(%r1,%r5)
.L2652:
	aghi	%r1,64
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r10,8(%r1,%r12)
	stg	%r10,8(%r1,%r5)
	lg	%r10,16(%r1,%r12)
	stg	%r10,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r10,32(%r1,%r12)
	stg	%r10,32(%r1,%r5)
	lg	%r10,40(%r1,%r12)
	stg	%r10,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r10,56(%r1,%r12)
	stg	%r10,56(%r1,%r5)
	brctg	%r0,.L2652
.L2858:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r11
	tmll	%r9,7
	je	.L2640
	llgfr	%r11,%r1
	lr	%r9,%r1
	ahi	%r9,1
	clr	%r9,%r4
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	jhe	.L2640
	llgfr	%r10,%r9
	lr	%r0,%r1
	ahi	%r0,2
	clr	%r0,%r4
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	jhe	.L2640
	llgfr	%r8,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	jhe	.L2640
	llgfr	%r9,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	jhe	.L2640
	llgfr	%r10,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	jhe	.L2640
	llgfr	%r8,%r0
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	jhe	.L2640
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2640:
	lmg	%r8,%r12,120(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2876:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r8,%r0
	je	.L2640
	lgr	%r4,%r8
	lghi	%r5,7
	aghi	%r4,1
	ngr	%r5,%r4
	je	.L2773
	cghi	%r5,1
	je	.L2782
	cghi	%r5,2
	je	.L2783
	cghi	%r5,3
	je	.L2784
	cghi	%r5,4
	je	.L2785
	cghi	%r5,5
	je	.L2786
	cghi	%r5,6
	jne	.L2878
.L2787:
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	aghi	%r8,-1
.L2786:
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	aghi	%r8,-1
.L2785:
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	aghi	%r8,-1
.L2784:
	ic	%r1,0(%r8,%r3)
	stc	%r1,0(%r8,%r2)
	aghi	%r8,-1
.L2783:
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	aghi	%r8,-1
.L2782:
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	aghi	%r8,-1
	cghi	%r8,-1
	je	.L2640
.L2773:
	srlg	%r4,%r4,3
.L2656:
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	icy	%r10,-1(%r8,%r3)
	stcy	%r10,-1(%r8,%r2)
	icy	%r11,-2(%r8,%r3)
	stcy	%r11,-2(%r8,%r2)
	icy	%r12,-3(%r8,%r3)
	stcy	%r12,-3(%r8,%r2)
	icy	%r1,-4(%r8,%r3)
	stcy	%r1,-4(%r8,%r2)
	icy	%r0,-5(%r8,%r3)
	stcy	%r0,-5(%r8,%r2)
	icy	%r5,-6(%r8,%r3)
	stcy	%r5,-6(%r8,%r2)
	icy	%r9,-7(%r8,%r3)
	stcy	%r9,-7(%r8,%r2)
	aghi	%r8,-8
	brctg	%r4,.L2656
	j	.L2640
.L2870:
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
	brctg	%r0,.L2870
	j	.L2858
.L2871:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	lg	%r8,8(%r1,%r3)
	stg	%r8,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r9,24(%r1,%r3)
	stg	%r9,24(%r1,%r2)
	lg	%r8,32(%r1,%r3)
	stg	%r8,32(%r1,%r2)
	lg	%r10,40(%r1,%r3)
	stg	%r10,40(%r1,%r2)
	lg	%r9,48(%r1,%r3)
	stg	%r9,48(%r1,%r2)
	lg	%r8,56(%r1,%r3)
	stg	%r8,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2871
	j	.L2859
.L2877:
	ltgr	%r4,%r4
	llgfr	%r10,%r11
	je	.L2640
.L2643:
	lghi	%r11,-1
	lgr	%r1,%r10
	xgr	%r11,%r10
	aghi	%r1,1
	ar	%r11,%r4
	ic	%r9,0(%r10,%r3)
	stc	%r9,0(%r10,%r2)
	lr	%r5,%r11
	nilf	%r5,7
	clr	%r4,%r1
	jle	.L2640
	ltr	%r5,%r5
	je	.L2689
	chi	%r5,1
	je	.L2807
	chi	%r5,2
	je	.L2808
	chi	%r5,3
	je	.L2809
	chi	%r5,4
	je	.L2810
	chi	%r5,5
	je	.L2811
	chi	%r5,6
	je	.L2812
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	lgr	%r1,%r10
	aghi	%r1,2
.L2812:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2811:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L2810:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2809:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
.L2808:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L2807:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
	clr	%r4,%r1
	jle	.L2640
.L2689:
	lr	%r4,%r11
	srl	%r4,3
.L2654:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r10,1(%r1,%r3)
	stc	%r10,1(%r1,%r2)
	ic	%r8,2(%r1,%r3)
	stc	%r8,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ic	%r9,4(%r1,%r3)
	stc	%r9,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r12,6(%r1,%r3)
	stc	%r12,6(%r1,%r2)
	ic	%r11,7(%r1,%r3)
	stc	%r11,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2654
	j	.L2640
.L2647:
	llgfr	%r10,%r12
	lghi	%r12,7
	sllg	%r9,%r10,2
	lghi	%r1,0
	lgr	%r8,%r9
	aghi	%r8,-4
	srlg	%r0,%r8,2
	aghi	%r0,1
	ngr	%r12,%r0
	je	.L2731
	cghi	%r12,1
	je	.L2794
	cghi	%r12,2
	je	.L2795
	cghi	%r12,3
	je	.L2796
	cghi	%r12,4
	je	.L2797
	cghi	%r12,5
	je	.L2798
	cghi	%r12,6
	je	.L2799
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lghi	%r1,4
.L2799:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
.L2798:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	aghi	%r1,4
.L2797:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	aghi	%r1,4
.L2796:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L2795:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
.L2794:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	aghi	%r1,4
	cgr	%r1,%r9
	je	.L2651
.L2731:
	srlg	%r9,%r0,3
.L2650:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	l	%r10,16(%r1,%r3)
	st	%r10,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r8,24(%r1,%r3)
	st	%r8,24(%r1,%r2)
	l	%r12,28(%r1,%r3)
	st	%r12,28(%r1,%r2)
	aghi	%r1,32
	brctg	%r9,.L2650
	j	.L2651
.L2878:
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	aghi	%r8,-1
	j	.L2787
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
	larl	%r5,.L2889
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2887
	ld	%f4,.L2890-.L2889(%r5)
	ld	%f6,.L2890-.L2889+8(%r5)
	axbr	%f0,%f4
.L2887:
	ldxbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2889:
.L2890:
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
	larl	%r5,.L2894
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2892
	ld	%f4,.L2895-.L2894(%r5)
	ld	%f6,.L2895-.L2894+8(%r5)
	axbr	%f0,%f4
.L2892:
	lexbr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2894:
.L2895:
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
	jne	.L2901
	lr	%r2,%r1
	sra	%r2,14
	jne	.L2900
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2902
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2903
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2904
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2905
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2906
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2907
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2908
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2909
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2910
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2911
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2912
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2913
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2914
	ltgr	%r1,%r1
	lhi	%r2,16
	jne	.L2917
.L2900:
	lghi	%r1,31
	ngr	%r2,%r1
	br	%r14
.L2901:
	lhi	%r2,0
	j	.L2900
.L2912:
	lhi	%r2,12
	j	.L2900
.L2917:
	lhi	%r2,15
	j	.L2900
.L2902:
	lhi	%r2,2
	j	.L2900
.L2903:
	lhi	%r2,3
	j	.L2900
.L2904:
	lhi	%r2,4
	j	.L2900
.L2905:
	lhi	%r2,5
	j	.L2900
.L2906:
	lhi	%r2,6
	j	.L2900
.L2907:
	lhi	%r2,7
	j	.L2900
.L2908:
	lhi	%r2,8
	j	.L2900
.L2909:
	lhi	%r2,9
	j	.L2900
.L2910:
	lhi	%r2,10
	j	.L2900
.L2911:
	lhi	%r2,11
	j	.L2900
.L2913:
	lhi	%r2,13
	j	.L2900
.L2914:
	lhi	%r2,14
	j	.L2900
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
	jne	.L2922
	tmll	%r2,2
	jne	.L2923
	tmll	%r2,4
	jne	.L2924
	tmll	%r2,8
	jne	.L2925
	tmll	%r2,16
	jne	.L2926
	tmll	%r2,32
	jne	.L2927
	tmll	%r2,64
	jne	.L2928
	tmll	%r2,128
	jne	.L2929
	tmll	%r2,256
	jne	.L2930
	tmll	%r2,512
	jne	.L2931
	tmll	%r2,1024
	jne	.L2932
	tmll	%r2,2048
	jne	.L2933
	tmll	%r2,4096
	jne	.L2934
	tmll	%r2,8192
	jne	.L2935
	tmll	%r2,16384
	jne	.L2936
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	jne	.L2939
.L2921:
	lghi	%r0,31
	ngr	%r2,%r0
	br	%r14
.L2922:
	lhi	%r2,0
	j	.L2921
.L2923:
	lhi	%r2,1
	j	.L2921
.L2934:
	lhi	%r2,12
	j	.L2921
.L2924:
	lhi	%r2,2
	j	.L2921
.L2925:
	lhi	%r2,3
	j	.L2921
.L2926:
	lhi	%r2,4
	j	.L2921
.L2927:
	lhi	%r2,5
	j	.L2921
.L2928:
	lhi	%r2,6
	j	.L2921
.L2929:
	lhi	%r2,7
	j	.L2921
.L2930:
	lhi	%r2,8
	j	.L2921
.L2931:
	lhi	%r2,9
	j	.L2921
.L2932:
	lhi	%r2,10
	j	.L2921
.L2933:
	lhi	%r2,11
	j	.L2921
.L2935:
	lhi	%r2,13
	j	.L2921
.L2936:
	lhi	%r2,14
	j	.L2921
.L2939:
	lhi	%r2,15
	j	.L2921
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L2949
	keb	%f0,.L2950-.L2949(%r5)
	jhe	.L2948
	cgebr	%r2,5,%f0
	br	%r14
.L2948:
	seb	%f0,.L2950-.L2949(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2949:
.L2950:
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
	sra	%r2,1
	lr	%r4,%r1
	nilf	%r2,1
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,2
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,3
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,4
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,5
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,6
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,7
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,8
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,9
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,10
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,11
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,12
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,13
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,14
	ar	%r2,%r4
	nilf	%r3,1
	sra	%r1,15
	ar	%r2,%r3
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
	sra	%r2,1
	lr	%r4,%r1
	nilf	%r2,1
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,2
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,3
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,4
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,5
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,6
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,7
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,8
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,9
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,10
	ar	%r2,%r4
	nilf	%r3,1
	lr	%r0,%r1
	sra	%r0,11
	ar	%r2,%r3
	nilf	%r0,1
	lr	%r5,%r1
	sra	%r5,12
	ar	%r2,%r0
	nilf	%r5,1
	lr	%r4,%r1
	sra	%r4,13
	ar	%r2,%r5
	nilf	%r4,1
	lr	%r3,%r1
	sra	%r3,14
	ar	%r2,%r4
	nilf	%r3,1
	sra	%r1,15
	ar	%r2,%r3
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
	je	.L2956
.L2957:
	lr	%r1,%r4
	nilf	%r1,1
	lcr	%r0,%r1
	srl	%r4,1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	jne	.L2957
.L2956:
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
	jne	.L2967
	j	.L2962
.L2963:
	lr	%r1,%r3
	nilf	%r1,1
	lcr	%r0,%r1
	lr	%r5,%r4
	nr	%r0,%r4
	sll	%r5,1
	srlg	%r3,%r3,1
	llgfr	%r4,%r5
	ar	%r2,%r0
.L2967:
	ltgr	%r3,%r3
	jne	.L2963
.L2962:
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
	jhe	.L3015
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L2970:
	ltr	%r3,%r3
	lr	%r0,%r3
	sll	%r0,1
	jl	.L2975
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r12
	clr	%r2,%r12
	lr	%r0,%r3
	sll	%r1,1
	sll	%r0,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	llgfr	%r3,%r0
	clr	%r2,%r0
	lr	%r12,%r3
	sll	%r1,1
	sll	%r12,1
	jle	.L2972
	ltr	%r3,%r3
	jl	.L2975
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L2972
	ahi	%r5,-8
	brct	%r11,.L2970
.L2973:
	ltgr	%r4,%r4
	je	.L2981
	lr	%r5,%r2
.L2981:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2972:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2985
.L2975:
	lhi	%r5,0
	j	.L2980
.L3016:
	lr	%r11,%r1
.L2979:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L2973
.L2980:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r12,%r2
	lhi	%r0,0
	slr	%r2,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2977
	lr	%r12,%r11
.L2977:
	ltr	%r0,%r0
	llgfr	%r2,%r12
	jne	.L3016
	lhi	%r11,0
	j	.L2979
.L3015:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	lhi	%r0,0
	slr	%r5,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2983
	lr	%r1,%r2
.L2983:
	ltgr	%r4,%r4
	llgfr	%r2,%r1
	je	.L3012
	lr	%r0,%r2
.L3012:
	llgfr	%r2,%r0
	br	%r14
.L2985:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L2973
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
	jl	.L3021
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3021:
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
	jl	.L3026
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3026:
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
	jl	.L3047
	ltgr	%r3,%r3
	je	.L3038
	lhi	%r12,0
.L3034:
	lhi	%r0,32
	lhi	%r4,0
	j	.L3037
.L3048:
	lr	%r5,%r0
	ahi	%r5,-1
	tml	%r5,255
	lr	%r0,%r5
	je	.L3036
.L3037:
	lr	%r1,%r3
	nilf	%r1,1
	lcr	%r1,%r1
	lr	%r5,%r2
	nr	%r1,%r2
	sll	%r5,1
	ar	%r4,%r1
	lgfr	%r2,%r5
	srag	%r3,%r3,1
	jne	.L3048
.L3036:
	ltr	%r12,%r12
	je	.L3035
	lcr	%r4,%r4
.L3035:
	lgfr	%r2,%r4
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3047:
	.cfi_restore_state
	lcr	%r3,%r3
	lhi	%r12,1
	lgfr	%r3,%r3
	j	.L3034
.L3038:
	lhi	%r4,0
	j	.L3035
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
	jl	.L3095
	lhi	%r1,1
	lhi	%r11,0
.L3051:
	ltgr	%r3,%r3
	jhe	.L3052
	lcgr	%r3,%r3
	lr	%r11,%r1
.L3052:
	clr	%r2,%r3
	lr	%r4,%r2
	lr	%r1,%r3
	jle	.L3096
	lhi	%r3,1
	lhi	%r0,4
.L3053:
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	ltr	%r1,%r1
	jl	.L3058
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L3055
	brct	%r0,.L3053
.L3069:
	lghi	%r2,0
	j	.L3056
.L3055:
	ltr	%r3,%r3
	je	.L3069
.L3058:
	lhi	%r2,0
	j	.L3063
.L3097:
	lr	%r12,%r3
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	je	.L3065
.L3063:
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r4
	lhi	%r5,0
	slr	%r4,%r1
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3060
	lr	%r0,%r12
.L3060:
	ltr	%r5,%r5
	lr	%r4,%r0
	jne	.L3097
	lhi	%r12,0
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L3063
.L3065:
	llgfr	%r2,%r2
.L3056:
	ltr	%r11,%r11
	je	.L3050
	lcgr	%r2,%r2
.L3050:
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3095:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r11,1
	j	.L3051
.L3096:
	slr	%r2,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L3065
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
	jl	.L3144
	lhi	%r0,0
.L3100:
	lpgr	%r3,%r3
	llgfr	%r2,%r4
	clr	%r4,%r3
	lr	%r1,%r3
	jle	.L3145
	lhi	%r3,1
	lhi	%r5,4
.L3101:
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	ltr	%r1,%r1
	jl	.L3140
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L3143
	brct	%r5,.L3101
	ltr	%r0,%r0
	ber	%r14
.L3146:
	lcgr	%r2,%r2
	br	%r14
.L3140:
	lr	%r5,%r2
	sr	%r5,%r1
	clr	%r2,%r1
	lr	%r4,%r2
	jl	.L3108
	lr	%r4,%r5
.L3108:
	srl	%r3,1
	llgfr	%r2,%r4
	srl	%r1,1
.L3143:
	ltr	%r3,%r3
	jne	.L3140
	ltr	%r0,%r0
	ber	%r14
	j	.L3146
.L3144:
	lcgr	%r4,%r4
	lhi	%r0,1
	j	.L3100
.L3145:
	lr	%r2,%r4
	sr	%r2,%r3
	clr	%r4,%r3
	jl	.L3111
	ltr	%r0,%r0
	llgfr	%r2,%r2
	ber	%r14
	j	.L3146
.L3111:
	ltr	%r0,%r0
	llgfr	%r2,%r4
	ber	%r14
	j	.L3146
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
	jhe	.L3311
	tmll	%r3,32768
	jne	.L3153
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lr	%r10,%r3
	sll	%r10,1
	llghr	%r1,%r10
	clr	%r2,%r1
	jle	.L3226
	tmll	%r1,32768
	jne	.L3226
	lr	%r11,%r3
	sll	%r11,2
	llghr	%r1,%r11
	clr	%r2,%r1
	jle	.L3228
	tmll	%r1,32768
	jne	.L3228
	lr	%r12,%r3
	sll	%r12,3
	llghr	%r1,%r12
	clr	%r2,%r1
	jle	.L3230
	tmll	%r1,32768
	jne	.L3230
	lr	%r0,%r3
	sll	%r0,4
	llghr	%r1,%r0
	clr	%r2,%r1
	jle	.L3232
	tmll	%r1,32768
	jne	.L3232
	lr	%r1,%r3
	sll	%r1,5
	llghr	%r1,%r1
	clr	%r2,%r1
	jle	.L3234
	tmll	%r1,32768
	jne	.L3234
	lr	%r5,%r3
	sll	%r5,6
	llghr	%r1,%r5
	clr	%r2,%r1
	jle	.L3236
	tmll	%r1,32768
	jne	.L3236
	lr	%r10,%r3
	sll	%r10,7
	llghr	%r1,%r10
	clr	%r2,%r1
	jle	.L3238
	tmll	%r1,32768
	jne	.L3238
	lr	%r11,%r3
	sll	%r11,8
	llghr	%r1,%r11
	clr	%r2,%r1
	jle	.L3240
	tmll	%r1,32768
	jne	.L3240
	lr	%r12,%r3
	sll	%r12,9
	llghr	%r1,%r12
	clr	%r2,%r1
	jle	.L3242
	tmll	%r1,32768
	jne	.L3242
	lr	%r0,%r3
	sll	%r0,10
	llghr	%r1,%r0
	clr	%r2,%r1
	jle	.L3244
	tmll	%r1,32768
	jne	.L3244
	lr	%r1,%r3
	sll	%r1,11
	llghr	%r1,%r1
	clr	%r2,%r1
	jle	.L3246
	tmll	%r1,32768
	jne	.L3246
	lr	%r5,%r3
	sll	%r5,12
	llghr	%r1,%r5
	clr	%r2,%r1
	jle	.L3248
	tmll	%r1,32768
	jne	.L3248
	lr	%r10,%r3
	sll	%r10,13
	llghr	%r1,%r10
	clr	%r2,%r1
	jle	.L3250
	tmll	%r1,32768
	jne	.L3250
	lr	%r11,%r3
	sll	%r11,14
	llghr	%r1,%r11
	clr	%r2,%r1
	jle	.L3252
	tmll	%r1,32768
	jne	.L3252
	sll	%r3,15
	llghr	%r3,%r3
	clr	%r2,%r3
	jle	.L3253
	ltgr	%r3,%r3
	lhi	%r5,0
	jne	.L3312
.L3156:
	ltgr	%r4,%r4
	je	.L3215
	lr	%r5,%r2
.L3215:
	llghr	%r2,%r5
	lmg	%r10,%r12,136(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3226:
	.cfi_restore_state
	lhi	%r0,2
.L3155:
	lr	%r12,%r2
	sr	%r12,%r1
	clr	%r2,%r1
	llghr	%r5,%r12
	jhe	.L3222
	lr	%r5,%r2
.L3222:
	clr	%r2,%r1
	llghr	%r10,%r5
	jl	.L3223
	lr	%r5,%r0
.L3224:
	srlg	%r11,%r1,1
	lr	%r2,%r10
	sr	%r2,%r11
	lr	%r3,%r0
	clr	%r10,%r11
	srl	%r3,1
	llghr	%r12,%r2
	jhe	.L3158
	lr	%r12,%r10
.L3158:
	clr	%r10,%r11
	llghr	%r2,%r12
	jl	.L3159
	lr	%r10,%r3
.L3160:
	or	%r5,%r10
	lr	%r3,%r0
	srl	%r3,2
	srlg	%r11,%r1,2
	ltr	%r3,%r3
	je	.L3156
	lr	%r12,%r2
	sr	%r12,%r11
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	llghr	%r12,%r12
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3162
	lr	%r12,%r2
.L3162:
	ltr	%r11,%r11
	llghr	%r2,%r12
	jne	.L3164
	lhi	%r3,0
.L3164:
	or	%r3,%r5
	lr	%r11,%r0
	srl	%r11,3
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,3
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3166
	lr	%r5,%r2
.L3166:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3168
	lhi	%r11,0
.L3168:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,4
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,4
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3170
	lr	%r5,%r2
.L3170:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3172
	lhi	%r11,0
.L3172:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,5
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,5
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3174
	lr	%r2,%r10
.L3174:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3176
	lhi	%r11,0
.L3176:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,6
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,6
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3178
	lr	%r2,%r10
.L3178:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3180
	lhi	%r11,0
.L3180:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,7
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,7
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3182
	lr	%r5,%r2
.L3182:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3184
	lhi	%r11,0
.L3184:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,8
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,8
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3186
	lr	%r2,%r10
.L3186:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3188
	lhi	%r11,0
.L3188:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,9
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,9
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3190
	lr	%r2,%r10
.L3190:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3192
	lhi	%r11,0
.L3192:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,10
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,10
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3194
	lr	%r2,%r10
.L3194:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3196
	lhi	%r11,0
.L3196:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,11
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,11
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3198
	lr	%r5,%r2
.L3198:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3200
	lhi	%r11,0
.L3200:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,12
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,12
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	llghr	%r10,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3202
	lr	%r2,%r10
.L3202:
	ltr	%r5,%r5
	llghr	%r2,%r2
	jne	.L3204
	lhi	%r11,0
.L3204:
	or	%r3,%r11
	lr	%r11,%r0
	srl	%r11,13
	lr	%r5,%r3
	ltr	%r11,%r11
	srlg	%r10,%r1,13
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r12,%r2
	slr	%r12,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3206
	lr	%r5,%r2
.L3206:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3208
	lhi	%r11,0
.L3208:
	or	%r3,%r11
	lr	%r12,%r0
	srl	%r12,14
	lr	%r5,%r3
	ltr	%r12,%r12
	srlg	%r10,%r1,14
	je	.L3156
	lr	%r5,%r2
	sr	%r5,%r10
	lr	%r11,%r2
	slr	%r11,%r10
	lhi	%r10,0
	llghr	%r5,%r5
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3210
	lr	%r5,%r2
.L3210:
	ltr	%r10,%r10
	llghr	%r2,%r5
	jne	.L3212
	lhi	%r12,0
.L3212:
	or	%r3,%r12
	srlg	%r1,%r1,15
	chi	%r0,16384
	lr	%r5,%r3
	je	.L3156
	lr	%r11,%r2
	sr	%r11,%r1
	lr	%r0,%r2
	lhi	%r5,0
	slr	%r0,%r1
	llghr	%r10,%r11
	alcr	%r5,%r5
	ltr	%r5,%r5
	jne	.L3214
	lr	%r10,%r2
.L3214:
	llghr	%r2,%r10
	or	%r5,%r3
	j	.L3156
.L3159:
	lhi	%r10,0
	j	.L3160
.L3223:
	lhi	%r5,0
	j	.L3224
.L3228:
	lhi	%r0,4
	j	.L3155
.L3230:
	lhi	%r0,8
	j	.L3155
.L3232:
	lhi	%r0,16
	j	.L3155
.L3242:
	lhi	%r0,512
	j	.L3155
.L3234:
	lhi	%r0,32
	j	.L3155
.L3236:
	lhi	%r0,64
	j	.L3155
.L3238:
	lhi	%r0,128
	j	.L3155
.L3240:
	lhi	%r0,256
	j	.L3155
.L3311:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lgr	%r5,%r3
	xgr	%r5,%r2
	aghi	%r5,-1
	lr	%r1,%r2
	sr	%r1,%r3
	lgr	%r0,%r5
	ltgr	%r0,%r0
	srlg	%r5,%r5,63
	llghr	%r3,%r1
	jl	.L3151
	lr	%r3,%r2
.L3151:
	llghr	%r2,%r3
.L3302:
	ltgr	%r4,%r4
	je	.L3304
	lr	%r5,%r2
.L3304:
	llghr	%r2,%r5
	br	%r14
.L3244:
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r0,1024
	j	.L3155
.L3246:
	lhi	%r0,2048
	j	.L3155
.L3248:
	lhi	%r0,4096
	j	.L3155
.L3250:
	lhi	%r0,8192
	j	.L3155
.L3252:
	lhi	%r0,16384
	j	.L3155
.L3312:
	llill	%r0,32768
	llill	%r1,32768
	j	.L3155
.L3253:
	llill	%r1,32768
	llill	%r0,32768
	j	.L3155
.L3153:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r5,1
	llghr	%r2,%r2
	j	.L3302
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
	jhe	.L3357
	lghi	%r1,1
	lhi	%r5,8
.L3315:
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3320
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgr	%r11,%r3
	jle	.L3317
	brct	%r5,.L3315
.L3318:
	ltgr	%r4,%r4
	je	.L3314
	lgr	%r2,%r11
.L3314:
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3317:
	.cfi_restore_state
	ltgr	%r1,%r1
	je	.L3318
.L3320:
	lghi	%r2,0
.L3325:
	lgr	%r12,%r11
	sgr	%r12,%r3
	lgr	%r0,%r11
	lhi	%r5,0
	slgr	%r11,%r3
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3322
	lgr	%r0,%r12
.L3322:
	ltr	%r5,%r5
	lgr	%r11,%r0
	lgr	%r12,%r1
	jne	.L3324
	lghi	%r12,0
.L3324:
	ogr	%r2,%r12
	srlg	%r1,%r1,1
	ltgr	%r1,%r1
	srlg	%r3,%r3,1
	jne	.L3325
	j	.L3318
.L3357:
	sgr	%r2,%r3
	lgr	%r1,%r11
	lhi	%r0,0
	slgr	%r1,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3328
	lgr	%r2,%r11
.L3328:
	lgr	%r11,%r2
	llgcr	%r2,%r0
	j	.L3318
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
	je	.L3360
	sll	%r2,4064(%r3)
	lhi	%r0,0
	sllg	%r3,%r2,32
	llgfr	%r2,%r0
	ogr	%r2,%r3
	br	%r14
.L3360:
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
	je	.L3366
	sllg	%r1,%r3,4032(%r4)
	lghi	%r4,0
.L3367:
	lgr	%r3,%r4
.L3368:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L3366:
	ltgr	%r4,%r4
	je	.L3368
	lhi	%r5,64
	sllg	%r0,%r1,0(%r4)
	sr	%r5,%r4
	sllg	%r4,%r3,0(%r4)
	srlg	%r1,%r3,0(%r5)
	ogr	%r1,%r0
	j	.L3367
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
	je	.L3374
	srag	%r1,%r2,32
	lr	%r2,%r1
	sra	%r1,31
	sra	%r2,4064(%r3)
	lr	%r4,%r2
	sllg	%r2,%r1,32
	lr	%r2,%r4
	br	%r14
.L3374:
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
	je	.L3380
	srag	%r1,%r5,4032(%r4)
	srag	%r4,%r5,63
.L3381:
	lgr	%r5,%r4
.L3382:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3380:
	ltgr	%r4,%r4
	je	.L3382
	lhi	%r3,64
	srlg	%r0,%r1,0(%r4)
	sr	%r3,%r4
	srag	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3381
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
	clfi	%r2,65535
	lhi	%r4,0
	lgr	%r1,%r2
	slbr	%r4,%r4
	lhi	%r2,16
	lcr	%r0,%r4
	lhi	%r12,8
	sll	%r0,4
	lhi	%r5,4
	sr	%r2,%r0
	srl	%r1,0(%r2)
	lhi	%r2,2
	lr	%r3,%r1
	nilf	%r3,65280
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,3
	sr	%r12,%r3
	ar	%r0,%r3
	srl	%r1,0(%r12)
	lr	%r4,%r1
	nilf	%r4,240
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,2
	sr	%r5,%r4
	ar	%r0,%r4
	srl	%r1,0(%r5)
	lr	%r5,%r2
	lr	%r12,%r1
	nilf	%r12,12
	ahi	%r12,-1
	srl	%r12,31
	sll	%r12,1
	sr	%r5,%r12
	srl	%r1,0(%r5)
	tmll	%r1,2
	jne	.L3392
	ar	%r12,%r0
	sr	%r2,%r1
	ar	%r2,%r12
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r2
	br	%r14
.L3392:
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
	lg	%r5,0(%r2)
	lpgr	%r1,%r5
	aghi	%r1,-1
	lg	%r3,8(%r2)
	srlg	%r1,%r1,63
	llcr	%r2,%r1
	lay	%r4,-1(%r1)
	ngr	%r4,%r5
	ltgr	%r1,%r1
	je	.L3397
	lgr	%r0,%r3
	ogr	%r4,%r0
	flogr	%r4,%r4
	sll	%r2,6
	ar	%r2,%r4
	lgfr	%r2,%r2
	br	%r14
.L3397:
	lghi	%r0,0
	sll	%r2,6
	ogr	%r4,%r0
	flogr	%r4,%r4
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
	cr	%r4,%r1
	jl	.L3404
	jh	.L3405
	clr	%r2,%r3
	jl	.L3404
	jh	.L3405
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3404:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3405:
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
	jl	.L3411
	jh	.L3410
	clr	%r2,%r3
	jl	.L3411
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3411:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3410:
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
	jl	.L3417
	jh	.L3418
	clgr	%r4,%r1
	jl	.L3417
	jh	.L3418
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3417:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3418:
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
	llhr	%r3,%r2
	lgr	%r1,%r2
	ahi	%r3,-1
	lhi	%r4,2
	srl	%r3,31
	sll	%r3,4
	srl	%r1,0(%r3)
	llcr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	ar	%r3,%r2
	lr	%r5,%r1
	nilf	%r5,15
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	ar	%r3,%r5
	lr	%r2,%r1
	nilf	%r2,3
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,1
	srl	%r1,0(%r2)
	ar	%r3,%r2
	lr	%r0,%r1
	nilf	%r1,1
	nilf	%r0,3
	xilf	%r1,1
	srl	%r0,1
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
	lg	%r5,8(%r2)
	lpgr	%r1,%r5
	aghi	%r1,-1
	lg	%r4,0(%r2)
	srlg	%r0,%r1,63
	ltgr	%r0,%r0
	llcr	%r2,%r0
	jne	.L3424
	lghi	%r4,0
.L3424:
	lr	%r3,%r2
	ahi	%r3,-1
	lgfr	%r1,%r3
	lghi	%r0,63
	ngr	%r1,%r5
	lgr	%r3,%r0
	ogr	%r4,%r1
	sll	%r2,6
	lcgr	%r5,%r4
	ngr	%r4,%r5
	flogr	%r4,%r4
	sgr	%r3,%r4
	ar	%r2,%r3
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
	ltg	%r4,8(%r2)
	lg	%r1,0(%r2)
	jne	.L3427
	ltgr	%r1,%r1
	jne	.L3430
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L3427:
	lcgr	%r0,%r4
	lghi	%r2,63
	ngr	%r4,%r0
	flogr	%r4,%r4
	sgr	%r2,%r4
	ahi	%r2,1
	lgfr	%r2,%r2
	br	%r14
.L3430:
	lcgr	%r3,%r1
	lghi	%r2,63
	ngr	%r1,%r3
	flogr	%r4,%r1
	sgr	%r2,%r4
	ahi	%r2,65
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
	je	.L3433
	srlg	%r1,%r2,32
	lhi	%r4,0
	srl	%r1,4064(%r3)
	sllg	%r2,%r4,32
	lr	%r2,%r1
	br	%r14
.L3433:
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
	je	.L3439
	srlg	%r1,%r5,4032(%r4)
	lghi	%r4,0
.L3440:
	lgr	%r5,%r4
.L3441:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3439:
	ltgr	%r4,%r4
	je	.L3441
	lhi	%r3,64
	srlg	%r0,%r1,0(%r4)
	sr	%r3,%r4
	srlg	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3440
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
	llhr	%r0,%r5
	msr	%r4,%r3
	msr	%r2,%r3
	lr	%r3,%r5
	srl	%r3,16
	ar	%r1,%r3
	llhr	%r5,%r1
	srl	%r1,16
	ar	%r4,%r5
	ar	%r1,%r2
	lr	%r2,%r4
	sll	%r4,16
	srl	%r2,16
	ar	%r0,%r4
	ar	%r1,%r2
	llgfr	%r2,%r0
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
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
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
	llhr	%r11,%r1
	srl	%r1,16
	ar	%r5,%r11
	ar	%r1,%r12
	llhr	%r2,%r2
	lr	%r12,%r5
	srl	%r5,16
	sll	%r12,16
	msr	%r4,%r0
	ar	%r2,%r12
	ar	%r1,%r5
	srag	%r0,%r0,32
	sllg	%r5,%r1,32
	msr	%r3,%r0
	llgfr	%r2,%r2
	ogr	%r2,%r5
	srag	%r1,%r2,32
	nihf	%r2,0
	ar	%r1,%r4
	ar	%r1,%r3
	sllg	%r3,%r1,32
	ogr	%r2,%r3
	lmg	%r11,%r12,144(%r15)
	.cfi_restore 12
	.cfi_restore 11
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
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lgr	%r5,%r3
	nihf	%r5,0
	lgr	%r1,%r4
	lgr	%r0,%r5
	nihf	%r1,0
	srlg	%r3,%r3,32
	msgr	%r0,%r1
	srlg	%r11,%r4,32
	lgr	%r4,%r5
	msgr	%r1,%r3
	msgr	%r4,%r11
	msgr	%r3,%r11
	srlg	%r5,%r0,32
	agr	%r1,%r5
	algfr	%r4,%r1
	srlg	%r1,%r1,32
	sllg	%r11,%r4,32
	agr	%r1,%r3
	srlg	%r4,%r4,32
	lgr	%r3,%r11
	agr	%r1,%r4
	algfr	%r3,%r0
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	lmg	%r11,%r12,144(%r15)
	.cfi_restore 12
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
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lgr	%r9,%r4
	lgr	%r10,%r3
	lg	%r4,8(%r3)
	lgr	%r3,%r4
	nihf	%r3,0
	srlg	%r11,%r4,32
	lgr	%r0,%r3
	msg	%r4,0(%r9)
	lg	%r5,8(%r9)
	lgr	%r1,%r5
	nihf	%r1,0
	srlg	%r8,%r5,32
	msgr	%r0,%r1
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
	lmg	%r8,%r12,120(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
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
	lhi	%r4,27030
	xr	%r3,%r2
	lr	%r2,%r4
	lr	%r1,%r3
	srl	%r1,16
	xr	%r1,%r3
	lghi	%r3,1
	lr	%r0,%r1
	srl	%r0,8
	xr	%r0,%r1
	lr	%r5,%r0
	srl	%r5,4
	xr	%r5,%r0
	nilf	%r5,15
	sra	%r2,0(%r5)
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
	lghi	%r1,1
	lr	%r0,%r3
	srl	%r0,16
	xr	%r0,%r3
	lr	%r4,%r0
	srl	%r4,8
	xr	%r4,%r0
	lr	%r5,%r4
	srl	%r5,4
	xr	%r5,%r4
	nilf	%r5,15
	sra	%r2,0(%r5)
	ngr	%r2,%r1
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
	lhi	%r4,27030
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lr	%r2,%r4
	lr	%r5,%r3
	srl	%r5,4
	xr	%r5,%r3
	lghi	%r0,1
	nilf	%r5,15
	sra	%r2,0(%r5)
	ngr	%r2,%r0
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
	larl	%r5,.L3469
	srlg	%r1,%r2,1
	ng	%r1,.L3470-.L3469(%r5)
	sgr	%r2,%r1
	lghi	%r1,127
	srlg	%r0,%r2,2
	ng	%r2,.L3471-.L3469(%r5)
	ng	%r0,.L3471-.L3469(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3472-.L3469(%r5)
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
.L3469:
.L3472:
	.quad	1085102592571150095
.L3471:
	.quad	3689348814741910323
.L3470:
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
	lr	%r1,%r2
	srl	%r1,1
	nilf	%r1,1431655765
	lghi	%r4,63
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	nilf	%r2,858993459
	nilf	%r0,858993459
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	nilf	%r3,252645135
	lr	%r2,%r3
	srl	%r2,16
	ar	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	ar	%r2,%r3
	ngr	%r2,%r4
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
	stmg	%r11,%r12,136(%r15)
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	llihf	%r4,1431655765
	llihf	%r5,1431655765
	lg	%r3,8(%r2)
	oilf	%r4,1431655765
	srlg	%r1,%r3,1
	lg	%r2,0(%r2)
	oilf	%r5,1431655765
	srlg	%r0,%r2,1
	ngr	%r4,%r0
	ngr	%r5,%r1
	slgr	%r3,%r5
	llihf	%r0,858993459
	slbgr	%r2,%r4
	llihf	%r5,858993459
	llihf	%r4,858993459
	llihf	%r1,858993459
	srlg	%r11,%r2,2
	srlg	%r12,%r3,2
	oilf	%r4,858993459
	oilf	%r0,858993459
	oilf	%r5,858993459
	oilf	%r1,858993459
	ngr	%r0,%r2
	ngr	%r4,%r11
	ngr	%r5,%r12
	ngr	%r1,%r3
	algr	%r5,%r1
	llihf	%r12,252645135
	alcgr	%r4,%r0
	srlg	%r3,%r5,4
	sllg	%r2,%r4,60
	srlg	%r11,%r4,4
	ogr	%r3,%r2
	llihf	%r2,252645135
	algr	%r3,%r5
	alcgr	%r11,%r4
	oilf	%r12,252645135
	oilf	%r2,252645135
	ngr	%r12,%r11
	ngr	%r2,%r3
	agr	%r12,%r2
	srlg	%r4,%r12,32
	ar	%r4,%r12
	lr	%r0,%r4
	srl	%r0,16
	ar	%r0,%r4
	lr	%r5,%r0
	srl	%r5,8
	ar	%r5,%r0
	llgcr	%r2,%r5
	lmg	%r11,%r12,136(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	larl	%r5,.L3487
	tmll	%r2,1
	lgr	%r1,%r2
	ldr	%f2,%f0
	ld	%f0,.L3488-.L3487(%r5)
	je	.L3479
.L3481:
	mdbr	%f0,%f2
.L3479:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3480
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3481
.L3486:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3481
	j	.L3486
.L3480:
	ltr	%r2,%r2
	bher	%r14
	ld	%f4,.L3488-.L3487(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3487:
.L3488:
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
	larl	%r5,.L3498
	tmll	%r2,1
	lgr	%r1,%r2
	ler	%f2,%f0
	le	%f0,.L3499-.L3498(%r5)
	je	.L3490
.L3492:
	meebr	%f0,%f2
.L3490:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3491
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3492
.L3497:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3492
	j	.L3497
.L3491:
	ltr	%r2,%r2
	bher	%r14
	le	%f4,.L3499-.L3498(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3498:
.L3499:
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
	jl	.L3504
	jh	.L3505
	clr	%r2,%r3
	jl	.L3504
	jh	.L3505
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3504:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3505:
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
	jl	.L3511
	jh	.L3510
	clr	%r2,%r3
	jl	.L3511
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3511:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3510:
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
	jl	.L3517
	jh	.L3518
	clgr	%r4,%r1
	jl	.L3517
	jh	.L3518
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3517:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3518:
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
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
