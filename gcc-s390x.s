	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z900+htm"
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
	stmg	%r6,%r12,104(%r15)
	.cfi_offset 6, -56
	.cfi_offset 7, -48
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	clgr	%r2,%r3
	jle	.L7
	ltgr	%r4,%r4
	je	.L8
	lgr	%r1,%r2
	lgr	%r12,%r4
	aghi	%r3,-1
	aghi	%r1,-1
	aghi	%r12,-1
	lghi	%r11,7
	ngr	%r11,%r4
	lgr	%r5,%r4
	je	.L54
	cghi	%r11,1
	je	.L104
	cghi	%r11,2
	je	.L105
	cghi	%r11,3
	je	.L106
	cghi	%r11,4
	je	.L107
	cghi	%r11,5
	je	.L108
	cghi	%r11,6
	je	.L109
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lgr	%r4,%r12
.L109:
	ic	%r6,0(%r4,%r3)
	stc	%r6,0(%r4,%r1)
	aghi	%r4,-1
.L108:
	ic	%r7,0(%r4,%r3)
	stc	%r7,0(%r4,%r1)
	aghi	%r4,-1
.L107:
	ic	%r8,0(%r4,%r3)
	stc	%r8,0(%r4,%r1)
	aghi	%r4,-1
.L106:
	ic	%r9,0(%r4,%r3)
	stc	%r9,0(%r4,%r1)
	aghi	%r4,-1
.L105:
	ic	%r10,0(%r4,%r3)
	stc	%r10,0(%r4,%r1)
	aghi	%r4,-1
.L104:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	brctg	%r4,.L54
.L8:
	lmg	%r6,%r12,104(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
.L7:
	.cfi_restore_state
	je	.L8
	ltgr	%r4,%r4
	je	.L8
	lgr	%r1,%r4
	aghi	%r1,-1
	lghi	%r5,14
	clgr	%r1,%r5
	jle	.L17
	lgr	%r0,%r3
	ogr	%r0,%r2
	lghi	%r6,7
	ngr	%r0,%r6
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L17
	la	%r7,1(%r3)
	lgr	%r8,%r2
	sgr	%r8,%r7
	lghi	%r9,6
	clgr	%r8,%r9
	jle	.L17
	lgr	%r12,%r4
	nill	%r12,65528
	lgr	%r10,%r12
	aghi	%r10,-8
	srlg	%r11,%r10,3
	aghi	%r11,1
	lghi	%r5,7
	ngr	%r5,%r11
	lghi	%r1,0
	je	.L96
	cghi	%r5,1
	je	.L110
	cghi	%r5,2
	je	.L111
	cghi	%r5,3
	je	.L112
	cghi	%r5,4
	je	.L113
	cghi	%r5,5
	je	.L114
	cghi	%r5,6
	jne	.L175
.L115:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L114:
	lg	%r6,0(%r1,%r3)
	stg	%r6,0(%r1,%r2)
	aghi	%r1,8
.L113:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	aghi	%r1,8
.L112:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
.L111:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L110:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L157
.L96:
	srlg	%r5,%r11,3
	cghi	%r5,2
	jle	.L172
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
	j	.L8
.L54:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L170
	aghi	%r5,-1
	lgr	%r12,%r4
	aghi	%r12,-7
	lgr	%r11,%r4
	aghi	%r11,-6
	lgr	%r10,%r4
	aghi	%r10,-5
	lgr	%r9,%r4
	aghi	%r9,-4
	lgr	%r8,%r4
	aghi	%r8,-3
	lgr	%r7,%r4
	aghi	%r7,-2
	lgr	%r6,%r4
	aghi	%r6,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r1)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r1)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r1)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
.L9:
	aghi	%r4,-8
	lgr	%r12,%r4
	aghi	%r12,-7
	lgr	%r11,%r4
	aghi	%r11,-6
	lgr	%r10,%r4
	aghi	%r10,-5
	lgr	%r9,%r4
	aghi	%r9,-4
	lgr	%r8,%r4
	aghi	%r8,-3
	lgr	%r7,%r4
	aghi	%r7,-2
	lgr	%r6,%r4
	aghi	%r6,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r1)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r1)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r1)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	brctg	%r5,.L9
	j	.L8
.L170:
	lgr	%r6,%r4
	aghi	%r6,-1
	lgr	%r7,%r4
	aghi	%r7,-2
	ic	%r11,0(%r4,%r3)
	lgr	%r9,%r4
	stc	%r11,0(%r4,%r1)
	aghi	%r9,-3
	ic	%r0,0(%r6,%r3)
	lgr	%r12,%r4
	stc	%r0,0(%r6,%r1)
	aghi	%r12,-4
	ic	%r8,0(%r7,%r3)
	lgr	%r6,%r4
	stc	%r8,0(%r7,%r1)
	aghi	%r6,-5
	ic	%r10,0(%r9,%r3)
	lgr	%r7,%r4
	stc	%r10,0(%r9,%r1)
	aghi	%r7,-6
	ic	%r11,0(%r12,%r3)
	lgr	%r9,%r4
	stc	%r11,0(%r12,%r1)
	aghi	%r9,-7
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r8,0(%r7,%r3)
	stc	%r8,0(%r7,%r1)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r1)
	aghi	%r4,-8
	brctg	%r5,.L170
	j	.L8
.L172:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r6,24(%r1,%r3)
	stg	%r6,24(%r1,%r2)
	lg	%r7,32(%r1,%r3)
	stg	%r7,32(%r1,%r2)
	lg	%r8,40(%r1,%r3)
	stg	%r8,40(%r1,%r2)
	lg	%r9,48(%r1,%r3)
	stg	%r9,48(%r1,%r2)
	lg	%r10,56(%r1,%r3)
	stg	%r10,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L172
	j	.L157
.L17:
	lghi	%r0,7
	ngr	%r0,%r4
	lghi	%r1,0
	lgr	%r11,%r4
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
	ic	%r6,0(%r1,%r3)
	stc	%r6,0(%r1,%r2)
	aghi	%r1,1
.L120:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	aghi	%r1,1
.L119:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L118:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
.L117:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L116:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
	cgr	%r4,%r1
	je	.L8
.L75:
	srlg	%r4,%r11,3
	cghi	%r4,2
	jle	.L171
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
.L14:
	aghi	%r1,8
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
	brctg	%r4,.L14
	j	.L8
.L175:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L115
.L171:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r6,3(%r1,%r3)
	stc	%r6,3(%r1,%r2)
	ic	%r7,4(%r1,%r3)
	stc	%r7,4(%r1,%r2)
	ic	%r8,5(%r1,%r3)
	stc	%r8,5(%r1,%r2)
	ic	%r9,6(%r1,%r3)
	stc	%r9,6(%r1,%r2)
	ic	%r10,7(%r1,%r3)
	stc	%r10,7(%r1,%r2)
	aghi	%r1,8
	brctg	%r4,.L171
	j	.L8
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
	je	.L241
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r12,%r5
	aghi	%r12,-1
	lghi	%r1,7
	ngr	%r1,%r5
	lgr	%r0,%r5
	je	.L199
	cghi	%r1,1
	je	.L222
	cghi	%r1,2
	je	.L223
	cghi	%r1,3
	je	.L224
	cghi	%r1,4
	je	.L225
	cghi	%r1,5
	je	.L226
	cghi	%r1,6
	jne	.L244
.L227:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L237
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L226:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L237
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L225:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L237
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L224:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L237
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L223:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r2)
	cr	%r4,%r12
	je	.L237
	aghi	%r5,-1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L222:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cr	%r4,%r1
	je	.L237
	cghi	%r5,1
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	je	.L180
.L199:
	srlg	%r5,%r0,3
.L178:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r2)
	cr	%r4,%r0
	je	.L237
	la	%r12,1(%r2)
	llgc	%r1,1(%r3)
	stc	%r1,0(%r12)
	cr	%r4,%r1
	lgr	%r2,%r12
	je	.L237
	la	%r2,1(%r12)
	llgc	%r0,2(%r3)
	stc	%r0,0(%r2)
	cr	%r4,%r0
	je	.L237
	llgc	%r1,3(%r3)
	stc	%r1,2(%r12)
	cr	%r4,%r1
	la	%r2,2(%r12)
	je	.L237
	llgc	%r0,4(%r3)
	stc	%r0,3(%r12)
	cr	%r4,%r0
	la	%r2,1(%r2)
	je	.L237
	llgc	%r1,5(%r3)
	stc	%r1,4(%r12)
	cr	%r4,%r1
	la	%r2,1(%r2)
	je	.L237
	llgc	%r0,6(%r3)
	stc	%r0,5(%r12)
	cr	%r4,%r0
	la	%r2,1(%r2)
	je	.L237
	llgc	%r1,7(%r3)
	stc	%r1,6(%r12)
	cr	%r4,%r1
	la	%r2,1(%r2)
	je	.L237
	la	%r3,8(%r3)
	la	%r2,7(%r12)
	brctg	%r5,.L178
.L180:
	lghi	%r2,0
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L237:
	.cfi_restore_state
	la	%r2,1(%r2)
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L244:
	.cfi_restore_state
	llgc	%r5,0(%r3)
	stc	%r5,0(%r2)
	cr	%r4,%r5
	je	.L237
	lgr	%r5,%r12
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	j	.L227
.L241:
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
	je	.L250
	lgr	%r0,%r4
	aghi	%r0,-1
	lghi	%r1,7
	ngr	%r1,%r4
	lgr	%r5,%r4
	je	.L265
	cghi	%r1,1
	je	.L288
	cghi	%r1,2
	je	.L289
	cghi	%r1,3
	je	.L290
	cghi	%r1,4
	je	.L291
	cghi	%r1,5
	je	.L292
	cghi	%r1,6
	jne	.L309
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L310:
	la	%r2,1(%r2)
	aghi	%r4,-1
.L292:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L291:
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L290:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L289:
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	la	%r2,1(%r2)
	aghi	%r4,-1
.L288:
	llgc	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	cghi	%r4,1
	la	%r2,1(%r2)
	je	.L250
.L265:
	srlg	%r4,%r5,3
.L247:
	llgc	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	llgc	%r0,1(%r2)
	cr	%r0,%r3
	la	%r1,1(%r2)
	lgr	%r2,%r1
	ber	%r14
	llgc	%r5,1(%r1)
	cr	%r5,%r3
	la	%r2,1(%r1)
	ber	%r14
	llgc	%r0,2(%r1)
	cr	%r0,%r3
	la	%r2,2(%r1)
	ber	%r14
	llgc	%r5,3(%r1)
	cr	%r5,%r3
	la	%r2,1(%r2)
	ber	%r14
	llgc	%r0,4(%r1)
	cr	%r0,%r3
	la	%r2,1(%r2)
	ber	%r14
	llgc	%r5,5(%r1)
	cr	%r5,%r3
	la	%r2,1(%r2)
	ber	%r14
	llgc	%r0,6(%r1)
	cr	%r0,%r3
	la	%r2,1(%r2)
	ber	%r14
	la	%r2,7(%r1)
	brctg	%r4,.L247
.L250:
	lghi	%r2,0
	br	%r14
.L309:
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	la	%r2,1(%r2)
	lgr	%r4,%r0
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L310
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
	je	.L369
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r12,%r4
	aghi	%r12,-1
	lghi	%r5,7
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L332
	cghi	%r5,1
	je	.L355
	cghi	%r5,2
	je	.L356
	cghi	%r5,3
	je	.L357
	cghi	%r5,4
	je	.L358
	cghi	%r5,5
	je	.L359
	cghi	%r5,6
	jne	.L380
.L360:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L359:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L358:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L357:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L356:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L355:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	cghi	%r4,1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	je	.L317
.L332:
	srlg	%r12,%r0,3
.L313:
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,1(%r2)
	llgc	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,2(%r2)
	llgc	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,3(%r2)
	llgc	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,4(%r2)
	llgc	%r5,4(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,5(%r2)
	llgc	%r5,5(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,6(%r2)
	llgc	%r5,6(%r3)
	cr	%r1,%r5
	jne	.L371
	llgc	%r1,7(%r2)
	llgc	%r5,7(%r3)
	cr	%r1,%r5
	jne	.L371
	la	%r2,8(%r2)
	la	%r3,8(%r3)
	brctg	%r12,.L313
.L317:
	lhi	%r1,0
	lgfr	%r2,%r1
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L371:
	.cfi_restore_state
	sr	%r1,%r5
	lgfr	%r2,%r1
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L380:
	.cfi_restore_state
	llgc	%r1,0(%r2)
	llgc	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L371
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	j	.L360
.L369:
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
	aghi	%r4,-1
	lhi	%r1,255
	nr	%r3,%r1
	la	%r1,0(%r2,%r4)
	lghi	%r4,7
	ngr	%r4,%r5
	je	.L409
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	cghi	%r4,1
	je	.L409
	cghi	%r4,2
	je	.L417
	cghi	%r4,3
	je	.L418
	cghi	%r4,4
	je	.L419
	cghi	%r4,5
	je	.L420
	cghi	%r4,6
	jne	.L440
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L420:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L419:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L418:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
.L417:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L409:
	srlg	%r5,%r5,3
	lgr	%r0,%r1
	aghi	%r5,1
	aghi	%r0,-1
	lgr	%r2,%r1
	brctg	%r5,.L435
	lghi	%r2,0
	br	%r14
.L435:
	llgc	%r4,0(%r1)
	cr	%r4,%r3
	ber	%r14
	lgr	%r2,%r0
	lgr	%r4,%r1
	aghi	%r4,-2
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
.L438:
	lgr	%r12,%r1
	aghi	%r12,-3
	llgc	%r0,0(%r4)
	cr	%r0,%r3
	lgr	%r2,%r4
	je	.L392
	aghi	%r4,-2
	llgc	%r0,0(%r12)
	cr	%r0,%r3
	lgr	%r2,%r12
	je	.L392
	aghi	%r12,-2
	llgc	%r0,0(%r4)
	cr	%r0,%r3
	lgr	%r2,%r4
	je	.L392
	aghi	%r4,-2
	llgc	%r0,0(%r12)
	cr	%r0,%r3
	lgr	%r2,%r12
	je	.L392
	aghi	%r12,-2
	llgc	%r0,0(%r4)
	cr	%r0,%r3
	lgr	%r2,%r4
	je	.L392
	aghi	%r1,-8
	llgc	%r4,0(%r12)
	cr	%r4,%r3
	lgr	%r2,%r12
	je	.L392
	lgr	%r12,%r1
	aghi	%r12,-1
	lgr	%r2,%r1
	brctg	%r5,.L395
	lghi	%r2,0
.L392:
	lg	%r12,152(%r15)
	.cfi_restore 12
	br	%r14
.L440:
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	lgr	%r2,%r1
	aghi	%r1,-1
	llgc	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L420
	br	%r14
.L395:
	.cfi_offset 12, -8
	llgc	%r0,0(%r1)
	cr	%r0,%r3
	je	.L392
	lgr	%r4,%r1
	aghi	%r4,-2
	lgr	%r2,%r12
	llgc	%r12,0(%r12)
	cr	%r12,%r3
	jne	.L438
	j	.L392
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
	lgr	%r0,%r2
	lgr	%r1,%r4
	lghi	%r5,0
	lghi	%r4,0
	mvcle	%r0,%r4,0(%r3)
	jo	.-4
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
	ltgr	%r1,%r1
	stc	%r1,0(%r2)
	ber	%r14
.L449:
	llgc	%r0,1(%r3)
	ltgr	%r0,%r0
	stc	%r0,1(%r2)
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	ber	%r14
	la	%r2,1(%r2)
	llgc	%r0,1(%r3)
	stc	%r0,0(%r2)
	ltgr	%r0,%r0
	la	%r3,1(%r3)
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
	lhi	%r1,255
	nr	%r3,%r1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	ber	%r14
.L463:
	la	%r2,1(%r2)
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
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
	llgc	%r1,0(%r2)
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
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	ic	%r5,0(%r3)
	lgr	%r12,%r3
	ic	%r4,0(%r2)
	lhi	%r3,255
	lhi	%r0,255
	aghi	%r12,-1
	nr	%r3,%r4
	nr	%r0,%r5
	cr	%r3,%r0
	lghi	%r1,1
	je	.L471
	j	.L472
.L473:
	ic	%r4,0(%r1,%r2)
	aghi	%r1,1
	lhi	%r3,255
	lhi	%r0,255
	nr	%r3,%r4
	ic	%r5,0(%r1,%r12)
	nr	%r0,%r5
	cr	%r3,%r0
	jne	.L472
.L471:
	tml	%r4,255
	jne	.L473
	lhi	%r3,0
.L472:
	lhi	%r2,255
	nr	%r5,%r2
	sr	%r3,%r5
	lgfr	%r2,%r3
	lg	%r12,152(%r15)
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
	cli	0(%r2),0
	lgr	%r3,%r2
	je	.L485
.L484:
	cli	1(%r2),0
	la	%r2,1(%r2)
	jne	.L484
	sgr	%r2,%r3
	br	%r14
.L485:
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
	ltgr	%r0,%r4
	je	.L496
	ic	%r5,0(%r2)
	lhi	%r4,255
	nr	%r4,%r5
	je	.L539
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	aghi	%r0,-1
	lghi	%r12,3
	ngr	%r12,%r0
	je	.L512
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L538
	cr	%r11,%r4
	jne	.L491
	lhi	%r4,255
	ic	%r5,1(%r2)
	nr	%r4,%r5
	la	%r2,1(%r2)
	la	%r10,1(%r3)
	je	.L532
	cghi	%r12,1
	lgr	%r3,%r10
	je	.L512
	cghi	%r12,2
	je	.L525
	ic	%r1,0(%r10)
	lhi	%r12,255
	nr	%r12,%r1
	je	.L538
	cr	%r12,%r4
	jne	.L491
	la	%r2,1(%r2)
	la	%r1,1(%r10)
	icm	%r5,1,0(%r2)
	je	.L532
	lgr	%r3,%r1
.L525:
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L538
	lhi	%r4,255
	nr	%r4,%r5
	cr	%r11,%r4
	jne	.L491
	la	%r2,1(%r2)
	la	%r4,1(%r3)
	icm	%r5,1,0(%r2)
	je	.L532
	lgr	%r3,%r4
.L512:
	srlg	%r0,%r0,2
	aghi	%r0,1
.L492:
	ic	%r1,0(%r3)
	lhi	%r10,255
	nr	%r10,%r1
	je	.L538
	lhi	%r4,255
	nr	%r4,%r5
	brctg	%r0,.L494
.L538:
	lhi	%r4,255
	nr	%r4,%r5
.L491:
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
.L494:
	.cfi_restore_state
	cr	%r10,%r4
	jne	.L491
	ic	%r5,1(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	la	%r12,1(%r3)
	lr	%r4,%r11
	je	.L532
	ic	%r1,0(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	lgr	%r3,%r12
	je	.L538
	cr	%r10,%r11
	jne	.L491
	ic	%r5,2(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L532
	lhi	%r10,255
	ic	%r1,1(%r12)
	nr	%r10,%r1
	la	%r3,1(%r12)
	je	.L538
	cr	%r10,%r11
	jne	.L491
	ic	%r5,3(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L532
	ic	%r1,2(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	la	%r3,2(%r12)
	je	.L538
	cr	%r10,%r11
	jne	.L491
	la	%r2,4(%r2)
	icm	%r5,1,0(%r2)
	je	.L532
	la	%r3,3(%r12)
	j	.L492
.L496:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lhi	%r4,0
.L535:
	lgfr	%r2,%r4
	br	%r14
.L532:
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
.L539:
	ic	%r1,0(%r3)
	lhi	%r2,255
	lhi	%r4,0
	nr	%r1,%r2
	sr	%r4,%r1
	j	.L535
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
	je	.L558
	cghi	%r4,1
	je	.L566
	cghi	%r4,2
	je	.L567
	cghi	%r4,3
	je	.L568
	cghi	%r4,4
	je	.L569
	cghi	%r4,5
	je	.L570
	cghi	%r4,6
	jne	.L582
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
	la	%r2,2(%r2)
	cgr	%r2,%r5
	la	%r3,2(%r3)
	ber	%r14
.L558:
	srlg	%r1,%r0,3
.L543:
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
	brctg	%r1,.L543
	br	%r14
.L582:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	j	.L571
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
	lhi	%r1,25
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
	je	.L590
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	lghi	%r0,1
	srl	%r2,31
	ngr	%r2,%r0
	br	%r14
.L590:
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
	jle	.L594
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	lghi	%r3,1
	srl	%r2,31
	ngr	%r2,%r3
	br	%r14
.L594:
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
	je	.L606
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	lghi	%r0,1
	ngr	%r2,%r0
	br	%r14
.L606:
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
	larl	%r5,.L617
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L614
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jh	.L616
.L614:
	lghi	%r0,1
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L616:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L614
	a	%r2,.L618-.L617(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	lghi	%r0,1
	ngr	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L617:
.L618:
	.long	-65529
	.align	2
.text
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
	larl	%r5,.L630
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L629
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L626
	lr	%r4,%r2
	ahi	%r4,-8234
	llill	%r3,47061
	clr	%r4,%r3
	jle	.L626
	l	%r1,.L631-.L630(%r5)
	ar	%r1,%r2
	lhi	%r0,8184
	clr	%r1,%r0
	jle	.L626
	l	%r4,.L632-.L630(%r5)
	ar	%r4,%r2
	cl	%r4,.L633-.L630(%r5)
	jh	.L627
	llill	%r3,65534
	nr	%r2,%r3
	xr	%r2,%r3
	lcr	%r2,%r2
	lghi	%r4,1
	srl	%r2,31
	ngr	%r2,%r4
	br	%r14
.L626:
	lhi	%r2,1
.L623:
	lghi	%r4,1
	ngr	%r2,%r4
	br	%r14
.L629:
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
.L627:
	lhi	%r2,0
	j	.L623
	.section	.rodata
	.align	8
.L630:
.L633:
	.long	1048579
.L632:
	.long	-65532
.L631:
	.long	-57344
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
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L636
	oill	%r2,32
	ahi	%r2,-97
	lhi	%r0,5
	clr	%r2,%r0
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	lghi	%r4,1
	ngr	%r2,%r4
	br	%r14
.L636:
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
	larl	%r5,.L649
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L644
	kdbr	%f0,%f2
	jnh	.L647
	sdbr	%f0,%f2
	br	%r14
.L647:
	ld	%f0,.L650-.L649(%r5)
	br	%r14
.L644:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L649:
.L650:
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
	larl	%r5,.L660
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L655
	kebr	%f0,%f2
	jnh	.L658
	sebr	%f0,%f2
	br	%r14
.L658:
	le	%f0,.L661-.L660(%r5)
	br	%r14
.L655:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L660:
.L661:
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
	jo	.L670
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L672
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L667
	lhi	%r0,0
.L667:
	tmll	%r0,1
	jne	.L670
	ldr	%f2,%f0
.L670:
	ldr	%f0,%f2
	br	%r14
.L672:
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
	jo	.L682
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L684
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L679
	lhi	%r0,0
.L679:
	tmll	%r0,1
	jne	.L682
	ler	%f2,%f0
.L682:
	ler	%f0,%f2
	br	%r14
.L684:
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
	cxbr	%f0,%f0
	ld	%f4,0(%r4)
	ld	%f6,8(%r4)
	jo	.L693
	cxbr	%f4,%f4
	jo	.L698
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	cr	%r1,%r3
	jne	.L700
	stmg	%r12,%r15,128(%r15)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-48
	.cfi_def_cfa_offset 208
	kxbr	%f0,%f4
	lhi	%r0,1
	jl	.L692
	lhi	%r0,0
.L692:
	tmll	%r0,1
	je	.L690
	std	%f4,160(%r15)
	lg	%r4,160(%r15)
	std	%f6,160(%r15)
	lg	%r5,160(%r15)
.L691:
	lgr	%r12,%r4
	lgr	%r13,%r5
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	lmg	%r12,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L700:
	ltr	%r1,%r1
	je	.L698
.L693:
	lxr	%f0,%f4
.L698:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L690:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	std	%f0,160(%r15)
	lg	%r4,160(%r15)
	std	%f2,160(%r15)
	lg	%r5,160(%r15)
	j	.L691
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
	jo	.L708
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L711
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L707
	lhi	%r0,0
.L707:
	tmll	%r0,1
	bner	%r14
.L708:
	ldr	%f0,%f2
	br	%r14
.L711:
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
	jo	.L719
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L722
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L718
	lhi	%r0,0
.L718:
	tmll	%r0,1
	bner	%r14
.L719:
	ler	%f0,%f2
	br	%r14
.L722:
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
	cxbr	%f4,%f4
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	jo	.L736
	cxbr	%f0,%f0
	jo	.L731
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	cr	%r1,%r3
	jne	.L738
	stmg	%r12,%r15,128(%r15)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-48
	.cfi_def_cfa_offset 208
	kxbr	%f4,%f0
	lhi	%r0,1
	jl	.L730
	lhi	%r0,0
.L730:
	tmll	%r0,1
	je	.L728
	std	%f4,160(%r15)
	lg	%r4,160(%r15)
	std	%f6,160(%r15)
	lg	%r5,160(%r15)
.L729:
	lgr	%r12,%r4
	lgr	%r13,%r5
	stmg	%r12,%r13,160(%r15)
	ld	%f0,160(%r15)
	ld	%f2,168(%r15)
	lmg	%r12,%r15,176(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L738:
	ltr	%r1,%r1
	je	.L736
.L731:
	lxr	%f0,%f4
.L736:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L728:
	.cfi_def_cfa_offset 208
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	std	%f0,160(%r15)
	lg	%r4,160(%r15)
	std	%f2,160(%r15)
	lg	%r5,160(%r15)
	j	.L729
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
	je	.L741
	larl	%r4,.LANCHOR1
.L742:
	lghi	%r3,63
	ngr	%r3,%r1
	srl	%r1,6
	ltr	%r1,%r1
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	jne	.L742
.L741:
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
	larl	%r1,.LANCHOR0
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
	larl	%r5,.L750
	larl	%r1,.LANCHOR0
	lg	%r2,.L751-.L750(%r5)
	msg	%r2,8(%r1)
	aghi	%r2,1
	stg	%r2,8(%r1)
	srlg	%r2,%r2,33
	br	%r14
	.section	.rodata
	.align	8
.L750:
.L751:
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
	je	.L758
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	stg	%r2,0(%r3)
	lg	%r4,0(%r2)
	ltgr	%r4,%r4
	ber	%r14
	stg	%r2,8(%r4)
	br	%r14
.L758:
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
	je	.L761
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L761:
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
	aghi	%r15,-96
	.cfi_def_cfa_offset 256
	lg	%r13,0(%r4)
	ltgr	%r13,%r13
	lgr	%r11,%r5
	lgr	%r10,%r2
	stg	%r4,160(%r15)
	lgr	%r7,%r3
	je	.L771
	lghi	%r1,7
	stg	%r13,168(%r15)
	ngr	%r1,%r13
	lgr	%r12,%r3
	lghi	%r8,0
	je	.L793
	cghi	%r1,1
	je	.L801
	cghi	%r1,2
	je	.L802
	cghi	%r1,3
	je	.L803
	cghi	%r1,4
	je	.L804
	cghi	%r1,5
	je	.L805
	cghi	%r1,6
	jne	.L821
.L806:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
.L805:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
.L804:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
.L803:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
.L802:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
.L801:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	aghi	%r8,1
	agr	%r12,%r11
	cgr	%r13,%r8
	je	.L771
.L793:
	srlg	%r8,%r13,3
.L773:
	lgr	%r3,%r12
	lgr	%r2,%r10
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r4,%r2
	ltr	%r4,%r4
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r1,%r2
	ltr	%r1,%r1
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r0,%r2
	ltr	%r0,%r0
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r9,%r12
	lgr	%r2,%r10
	je	.L770
	agr	%r12,%r11
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L770
	agr	%r12,%r11
	brctg	%r8,.L773
.L771:
	lgr	%r2,%r11
	msgr	%r2,%r13
	lg	%r14,160(%r15)
	aghi	%r13,1
	ltgr	%r11,%r11
	stg	%r13,0(%r14)
	la	%r9,0(%r2,%r7)
	je	.L770
	lgr	%r4,%r11
	lgr	%r3,%r10
	lgr	%r2,%r9
	brasl	%r14,memmove@PLT
.L770:
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
.L821:
	.cfi_restore_state
	lgr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L770
	lghi	%r8,1
	la	%r12,0(%r11,%r7)
	j	.L806
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
	aghi	%r15,-80
	.cfi_def_cfa_offset 240
	lg	%r8,0(%r4)
	ltgr	%r8,%r8
	je	.L824
	lghi	%r1,7
	ngr	%r1,%r8
	lgr	%r12,%r3
	lgr	%r10,%r5
	lgr	%r11,%r2
	lgr	%r13,%r8
	lghi	%r7,0
	je	.L843
	cghi	%r1,1
	je	.L851
	cghi	%r1,2
	je	.L852
	cghi	%r1,3
	je	.L853
	cghi	%r1,4
	je	.L854
	cghi	%r1,5
	je	.L855
	cghi	%r1,6
	jne	.L870
.L856:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
.L855:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
.L854:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
.L853:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
.L852:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
.L851:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	aghi	%r7,1
	agr	%r12,%r10
	cgr	%r8,%r7
	je	.L824
.L843:
	srlg	%r8,%r13,3
.L826:
	lgr	%r3,%r12
	lgr	%r2,%r11
	basr	%r14,%r6
	lgr	%r0,%r2
	ltr	%r0,%r0
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r3,%r2
	ltr	%r3,%r3
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r4,%r2
	ltr	%r4,%r4
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r5,%r2
	ltr	%r5,%r5
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r13,%r2
	ltr	%r13,%r13
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r1,%r2
	ltr	%r1,%r1
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	lgr	%r7,%r2
	ltr	%r7,%r7
	lgr	%r9,%r12
	lgr	%r2,%r11
	je	.L823
	agr	%r12,%r10
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lgr	%r9,%r12
	je	.L823
	agr	%r12,%r10
	brctg	%r8,.L826
.L824:
	lghi	%r9,0
.L823:
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
.L870:
	.cfi_restore_state
	lgr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L823
	agr	%r12,%r10
	lghi	%r7,1
	j	.L856
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
	aghi	%r15,-48
	.cfi_def_cfa_offset 208
.L881:
	ic	%r4,0(%r2)
	lhi	%r1,255
	nr	%r1,%r4
	stc	%r4,167(%r15)
	cli	167(%r15),32
	je	.L875
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r5,4
	clr	%r3,%r5
	jle	.L875
	chi	%r1,43
	je	.L876
	chi	%r1,45
	je	.L877
	ahi	%r1,-48
	lhi	%r5,9
	clr	%r1,%r5
	jh	.L886
	lgr	%r3,%r2
	lhi	%r12,0
.L879:
	lhi	%r2,0
.L883:
	lr	%r1,%r2
	la	%r3,1(%r3)
	sll	%r1,2
	ar	%r1,%r2
	lhi	%r5,255
	nr	%r5,%r4
	lhi	%r0,255
	ic	%r4,0(%r3)
	sll	%r1,1
	ahi	%r5,-48
	nr	%r0,%r4
	lr	%r2,%r1
	ahi	%r0,-48
	sr	%r2,%r5
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L883
	ltr	%r12,%r12
	jne	.L882
	lr	%r2,%r5
	sr	%r2,%r1
.L882:
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
.L875:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L881
.L877:
	ic	%r4,1(%r2)
	lhi	%r11,255
	nr	%r11,%r4
	ahi	%r11,-48
	lhi	%r12,9
	clr	%r11,%r12
	la	%r3,1(%r2)
	jh	.L886
	lhi	%r12,1
	j	.L879
.L876:
	ic	%r4,1(%r2)
	lhi	%r0,255
	nr	%r0,%r4
	la	%r3,1(%r2)
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	lhi	%r12,0
	jle	.L879
.L886:
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
	aghi	%r15,-48
	.cfi_def_cfa_offset 208
.L905:
	ic	%r5,0(%r2)
	lhi	%r1,255
	nr	%r1,%r5
	stc	%r5,167(%r15)
	cli	167(%r15),32
	je	.L899
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r4,4
	clr	%r3,%r4
	jle	.L899
	chi	%r1,43
	je	.L900
	chi	%r1,45
	je	.L901
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L910
	lgr	%r4,%r2
	lhi	%r12,0
.L903:
	lghi	%r2,0
.L907:
	sllg	%r1,%r2,2
	la	%r4,1(%r4)
	agr	%r1,%r2
	lhi	%r11,255
	nr	%r11,%r5
	lhi	%r0,255
	ic	%r5,0(%r4)
	sllg	%r1,%r1,1
	ahi	%r11,-48
	nr	%r0,%r5
	lgr	%r2,%r1
	sgfr	%r2,%r11
	ahi	%r0,-48
	lgfr	%r3,%r11
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L907
	ltr	%r12,%r12
	jne	.L898
	lgr	%r2,%r3
	sgr	%r2,%r1
.L898:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
.L899:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L905
.L901:
	ic	%r5,1(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	ahi	%r11,-48
	lhi	%r12,9
	clr	%r11,%r12
	la	%r4,1(%r2)
	jh	.L910
	lhi	%r12,1
	j	.L903
.L900:
	ic	%r5,1(%r2)
	lhi	%r0,255
	nr	%r0,%r5
	la	%r4,1(%r2)
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	lhi	%r12,0
	jle	.L903
.L910:
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
	aghi	%r15,-48
	.cfi_def_cfa_offset 208
.L927:
	ic	%r5,0(%r2)
	lhi	%r1,255
	nr	%r1,%r5
	stc	%r5,167(%r15)
	cli	167(%r15),32
	je	.L923
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r4,4
	clr	%r3,%r4
	jle	.L923
	chi	%r1,43
	je	.L924
	chi	%r1,45
	je	.L925
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	lgr	%r4,%r2
	jh	.L934
	lhi	%r12,0
.L928:
	lghi	%r2,0
.L931:
	sllg	%r11,%r2,2
	la	%r4,1(%r4)
	agr	%r11,%r2
	lhi	%r3,255
	nr	%r3,%r5
	sllg	%r1,%r11,1
	ic	%r5,0(%r4)
	lhi	%r0,255
	ahi	%r3,-48
	nr	%r0,%r5
	lgr	%r2,%r1
	sgfr	%r2,%r3
	ahi	%r0,-48
	lhi	%r11,9
	clr	%r0,%r11
	lgfr	%r3,%r3
	jle	.L931
	ltr	%r12,%r12
	jne	.L922
	lgr	%r2,%r3
	sgr	%r2,%r1
.L922:
	lmg	%r11,%r15,168(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 160
	br	%r14
.L923:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L927
.L925:
	ic	%r5,1(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	ahi	%r11,-48
	lhi	%r1,9
	clr	%r11,%r1
	la	%r4,1(%r2)
	lhi	%r12,1
	jle	.L928
.L934:
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
.L924:
	.cfi_restore_state
	ic	%r5,1(%r2)
	lhi	%r0,255
	nr	%r0,%r5
	la	%r4,1(%r2)
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L934
	lhi	%r12,0
	j	.L928
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
	aghi	%r15,-80
	.cfi_def_cfa_offset 240
	ltgr	%r12,%r4
	je	.L948
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	j	.L951
.L958:
	je	.L947
	aghi	%r12,-1
	sgr	%r12,%r10
	ltgr	%r12,%r12
	la	%r9,0(%r8,%r11)
	je	.L948
.L951:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r8
	la	%r11,0(%r11,%r9)
	lgr	%r3,%r11
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L958
	lgr	%r12,%r10
	ltgr	%r12,%r12
	jne	.L951
.L948:
	lghi	%r11,0
.L947:
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
	.cfi_offset 7, -72
	.cfi_offset 8, -64
	.cfi_offset 9, -56
	.cfi_offset 10, -48
	.cfi_offset 11, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-80
	.cfi_def_cfa_offset 240
	ltr	%r4,%r4
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lr	%r11,%r4
	je	.L965
.L970:
	lr	%r10,%r11
	sra	%r10,1
	lgr	%r12,%r8
	msgfr	%r12,%r10
	la	%r12,0(%r12,%r9)
	lgr	%r3,%r12
	lg	%r4,240(%r15)
	lgr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L960
	jle	.L963
	ahi	%r11,-1
	sra	%r11,1
	la	%r9,0(%r8,%r12)
	jne	.L970
.L965:
	lghi	%r12,0
.L960:
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
.L963:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L965
	lr	%r11,%r10
	j	.L970
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
	j	.L998
.L999:
	cr	%r1,%r3
	ber	%r14
	la	%r2,4(%r2)
.L998:
	icm	%r1,15,0(%r2)
	jne	.L999
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
	lgr	%r5,%r3
	aghi	%r5,-4
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lghi	%r1,4
	je	.L1002
	j	.L1003
.L1004:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	l	%r3,0(%r1,%r5)
	cr	%r4,%r3
	jne	.L1003
.L1002:
	ltr	%r4,%r4
	jne	.L1004
.L1003:
	cr	%r4,%r3
	jl	.L1008
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1008:
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
.L1013:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	ltr	%r4,%r4
	jne	.L1013
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
	je	.L1020
	lgr	%r1,%r2
.L1019:
	icm	%r3,15,4(%r1)
	la	%r1,4(%r1)
	jne	.L1019
	sgr	%r1,%r2
	srag	%r2,%r1,2
	br	%r14
.L1020:
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
	je	.L1030
	lgr	%r0,%r4
	aghi	%r0,-1
	lghi	%r1,7
	ngr	%r1,%r4
	lgr	%r5,%r4
	je	.L1045
	cghi	%r1,1
	je	.L1068
	cghi	%r1,2
	je	.L1069
	cghi	%r1,3
	je	.L1070
	cghi	%r1,4
	je	.L1071
	cghi	%r1,5
	je	.L1072
	cghi	%r1,6
	jne	.L1090
.L1073:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1072:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1026
	ltr	%r1,%r1
	je	.L1026
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1071:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1070:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1026
	ltr	%r1,%r1
	je	.L1026
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1069:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1068:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1026
	ltr	%r1,%r1
	je	.L1026
	cghi	%r4,1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	je	.L1030
.L1045:
	srlg	%r5,%r5,3
.L1024:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1026
	ltr	%r4,%r4
	je	.L1026
	la	%r1,4(%r3)
	l	%r0,4(%r2)
	la	%r2,4(%r2)
	c	%r0,0(%r1)
	lgr	%r4,%r2
	lgr	%r3,%r1
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	la	%r3,4(%r1)
	l	%r0,4(%r2)
	c	%r0,0(%r3)
	la	%r2,4(%r2)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	l	%r0,8(%r4)
	c	%r0,8(%r1)
	la	%r2,8(%r4)
	la	%r3,8(%r1)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	l	%r0,12(%r4)
	c	%r0,12(%r1)
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	l	%r0,16(%r4)
	c	%r0,16(%r1)
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	l	%r0,20(%r4)
	c	%r0,20(%r1)
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	jne	.L1026
	ltr	%r0,%r0
	je	.L1026
	l	%r4,24(%r4)
	c	%r4,24(%r1)
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	jne	.L1026
	ltr	%r4,%r4
	je	.L1026
	la	%r2,4(%r2)
	la	%r3,28(%r1)
	brctg	%r5,.L1024
.L1030:
	lghi	%r2,0
	br	%r14
.L1026:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L1091
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1091:
	lghi	%r2,-1
	br	%r14
.L1090:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1026
	ltr	%r4,%r4
	je	.L1026
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	j	.L1073
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
	je	.L1097
	lgr	%r0,%r4
	aghi	%r0,-1
	lghi	%r1,7
	ngr	%r1,%r4
	lgr	%r5,%r4
	je	.L1112
	cghi	%r1,1
	je	.L1135
	cghi	%r1,2
	je	.L1136
	cghi	%r1,3
	je	.L1137
	cghi	%r1,4
	je	.L1138
	cghi	%r1,5
	je	.L1139
	cghi	%r1,6
	jne	.L1156
	c	%r3,0(%r2)
	ber	%r14
.L1157:
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1139:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1138:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1137:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1136:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L1135:
	c	%r3,0(%r2)
	ber	%r14
	cghi	%r4,1
	la	%r2,4(%r2)
	je	.L1097
.L1112:
	srlg	%r0,%r5,3
.L1094:
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
	brctg	%r0,.L1094
.L1097:
	lghi	%r2,0
	br	%r14
.L1156:
	c	%r3,0(%r2)
	ber	%r14
	c	%r3,4(%r2)
	la	%r2,4(%r2)
	lgr	%r4,%r0
	jne	.L1157
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
	je	.L1166
	lgr	%r0,%r4
	aghi	%r0,-1
	lghi	%r1,7
	ngr	%r1,%r4
	lgr	%r5,%r4
	je	.L1181
	cghi	%r1,1
	je	.L1204
	cghi	%r1,2
	je	.L1205
	cghi	%r1,3
	je	.L1206
	cghi	%r1,4
	je	.L1207
	cghi	%r1,5
	je	.L1208
	cghi	%r1,6
	jne	.L1226
.L1209:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1208:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1207:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1206:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1205:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L1204:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	cghi	%r4,1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	je	.L1166
.L1181:
	srlg	%r0,%r5,3
.L1160:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	la	%r3,4(%r3)
	l	%r1,4(%r2)
	c	%r1,0(%r3)
	lgr	%r5,%r3
	jne	.L1220
	la	%r3,4(%r3)
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	l	%r1,12(%r2)
	c	%r1,8(%r5)
	la	%r3,8(%r5)
	jne	.L1220
	l	%r1,16(%r2)
	c	%r1,12(%r5)
	la	%r3,4(%r3)
	jne	.L1220
	l	%r1,20(%r2)
	c	%r1,16(%r5)
	la	%r3,4(%r3)
	jne	.L1220
	l	%r1,24(%r2)
	c	%r1,20(%r5)
	la	%r3,4(%r3)
	jne	.L1220
	l	%r1,28(%r2)
	c	%r1,24(%r5)
	la	%r3,4(%r3)
	jne	.L1220
	la	%r2,32(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L1160
.L1166:
	lghi	%r2,0
	br	%r14
.L1220:
	c	%r1,0(%r3)
	jl	.L1227
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L1227:
	lghi	%r2,-1
	br	%r14
.L1226:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1220
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	j	.L1209
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
	lgr	%r0,%r2
	lgr	%r12,%r3
	sllg	%r5,%r4,2
	lgr	%r13,%r5
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
	stmg	%r7,%r12,112(%r15)
	.cfi_offset 7, -48
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	clgr	%r0,%r5
	jl	.L1241
	ltgr	%r4,%r4
	je	.L1257
	lghi	%r7,8
	clgr	%r1,%r7
	jle	.L1252
	lgr	%r8,%r3
	ogr	%r8,%r2
	lghi	%r9,7
	ngr	%r8,%r9
	aghi	%r8,-1
	ltgr	%r8,%r8
	jhe	.L1252
	la	%r10,4(%r3)
	cgr	%r2,%r10
	je	.L1252
	srlg	%r11,%r4,1
	lghi	%r12,7
	ngr	%r12,%r11
	lgr	%r5,%r11
	lghi	%r1,0
	lghi	%r0,0
	je	.L1320
	cghi	%r12,1
	je	.L1334
	cghi	%r12,2
	je	.L1335
	cghi	%r12,3
	je	.L1336
	cghi	%r12,4
	je	.L1337
	cghi	%r12,5
	je	.L1338
	cghi	%r12,6
	jne	.L1395
.L1339:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L1338:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L1337:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L1336:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L1335:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L1334:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
	cgr	%r11,%r0
	je	.L1375
.L1320:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1390
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
.L1246:
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
	brctg	%r5,.L1246
.L1375:
	tmll	%r4,1
	je	.L1257
	nill	%r4,65534
	sllg	%r4,%r4,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L1257:
	lmg	%r7,%r12,112(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1241:
	.cfi_restore_state
	ltgr	%r4,%r4
	je	.L1257
	lgr	%r4,%r1
	nihh	%r4,16383
	aghi	%r4,1
	lghi	%r5,7
	ngr	%r5,%r4
	sllg	%r1,%r1,2
	je	.L1278
	cghi	%r5,1
	je	.L1328
	cghi	%r5,2
	je	.L1329
	cghi	%r5,3
	je	.L1330
	cghi	%r5,4
	je	.L1331
	cghi	%r5,5
	je	.L1332
	cghi	%r5,6
	jne	.L1396
.L1333:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	aghi	%r1,-4
.L1332:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	aghi	%r1,-4
.L1331:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,-4
.L1330:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	aghi	%r1,-4
.L1329:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	aghi	%r1,-4
.L1328:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cghi	%r1,-4
	je	.L1257
.L1278:
	srlg	%r4,%r4,3
	cghi	%r4,2
	jle	.L1388
	aghi	%r4,-1
	lgr	%r5,%r1
	aghi	%r5,-28
	lgr	%r12,%r1
	aghi	%r12,-24
	lgr	%r11,%r1
	aghi	%r11,-20
	lgr	%r10,%r1
	aghi	%r10,-16
	lgr	%r9,%r1
	aghi	%r9,-12
	lgr	%r8,%r1
	aghi	%r8,-8
	lgr	%r7,%r1
	aghi	%r7,-4
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,0(%r7,%r3)
	st	%r0,0(%r7,%r2)
	l	%r0,0(%r8,%r3)
	st	%r0,0(%r8,%r2)
	l	%r0,0(%r9,%r3)
	st	%r0,0(%r9,%r2)
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
.L1244:
	aghi	%r1,-32
	lgr	%r5,%r1
	aghi	%r5,-28
	lgr	%r12,%r1
	aghi	%r12,-24
	lgr	%r11,%r1
	aghi	%r11,-20
	lgr	%r10,%r1
	aghi	%r10,-16
	lgr	%r9,%r1
	aghi	%r9,-12
	lgr	%r8,%r1
	aghi	%r8,-8
	lgr	%r7,%r1
	aghi	%r7,-4
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,0(%r7,%r3)
	st	%r0,0(%r7,%r2)
	l	%r0,0(%r8,%r3)
	st	%r0,0(%r8,%r2)
	l	%r0,0(%r9,%r3)
	st	%r0,0(%r9,%r2)
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	brctg	%r4,.L1244
	j	.L1257
.L1388:
	lgr	%r8,%r1
	aghi	%r8,-4
	lgr	%r10,%r1
	l	%r5,0(%r1,%r3)
	aghi	%r10,-8
	st	%r5,0(%r1,%r2)
	lgr	%r7,%r1
	l	%r9,0(%r8,%r3)
	aghi	%r7,-12
	st	%r9,0(%r8,%r2)
	lgr	%r8,%r1
	aghi	%r8,-16
	l	%r12,0(%r10,%r3)
	lgr	%r9,%r1
	st	%r12,0(%r10,%r2)
	aghi	%r9,-20
	l	%r11,0(%r7,%r3)
	lgr	%r10,%r1
	st	%r11,0(%r7,%r2)
	aghi	%r10,-24
	l	%r0,0(%r8,%r3)
	lgr	%r7,%r1
	st	%r0,0(%r8,%r2)
	aghi	%r7,-28
	l	%r5,0(%r9,%r3)
	st	%r5,0(%r9,%r2)
	l	%r12,0(%r10,%r3)
	st	%r12,0(%r10,%r2)
	l	%r11,0(%r7,%r3)
	st	%r11,0(%r7,%r2)
	aghi	%r1,-32
	brctg	%r4,.L1388
	j	.L1257
.L1390:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r8,16(%r1,%r3)
	stg	%r8,16(%r1,%r2)
	lg	%r9,24(%r1,%r3)
	stg	%r9,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r12,40(%r1,%r3)
	stg	%r12,40(%r1,%r2)
	lg	%r7,48(%r1,%r3)
	stg	%r7,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1390
	j	.L1375
.L1252:
	lgr	%r5,%r1
	aghi	%r5,1
	lghi	%r0,7
	ngr	%r0,%r5
	lghi	%r4,0
	je	.L1299
	cghi	%r0,1
	je	.L1340
	cghi	%r0,2
	je	.L1341
	cghi	%r0,3
	je	.L1342
	cghi	%r0,4
	je	.L1343
	cghi	%r0,5
	je	.L1344
	cghi	%r0,6
	je	.L1345
	l	%r8,0(%r3)
	st	%r8,0(%r2)
	aghi	%r1,-1
	lghi	%r4,4
.L1345:
	l	%r9,0(%r4,%r3)
	st	%r9,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L1344:
	l	%r10,0(%r4,%r3)
	st	%r10,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L1343:
	l	%r12,0(%r4,%r3)
	st	%r12,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L1342:
	l	%r7,0(%r4,%r3)
	st	%r7,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L1341:
	l	%r11,0(%r4,%r3)
	st	%r11,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L1340:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	ltgr	%r1,%r1
	je	.L1257
.L1299:
	srlg	%r1,%r5,3
	cghi	%r1,2
	jle	.L1389
	aghi	%r1,-1
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	l	%r5,4(%r4,%r3)
	st	%r5,4(%r4,%r2)
	l	%r5,8(%r4,%r3)
	st	%r5,8(%r4,%r2)
	l	%r5,12(%r4,%r3)
	st	%r5,12(%r4,%r2)
	l	%r5,16(%r4,%r3)
	st	%r5,16(%r4,%r2)
	l	%r5,20(%r4,%r3)
	st	%r5,20(%r4,%r2)
	l	%r5,24(%r4,%r3)
	st	%r5,24(%r4,%r2)
	l	%r5,28(%r4,%r3)
	st	%r5,28(%r4,%r2)
.L1249:
	aghi	%r4,32
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	l	%r5,4(%r4,%r3)
	st	%r5,4(%r4,%r2)
	l	%r5,8(%r4,%r3)
	st	%r5,8(%r4,%r2)
	l	%r5,12(%r4,%r3)
	st	%r5,12(%r4,%r2)
	l	%r5,16(%r4,%r3)
	st	%r5,16(%r4,%r2)
	l	%r5,20(%r4,%r3)
	st	%r5,20(%r4,%r2)
	l	%r5,24(%r4,%r3)
	st	%r5,24(%r4,%r2)
	l	%r5,28(%r4,%r3)
	st	%r5,28(%r4,%r2)
	brctg	%r1,.L1249
	j	.L1257
.L1396:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	aghi	%r1,-4
	j	.L1333
.L1395:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r0,1
	lghi	%r1,8
	j	.L1339
.L1389:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	l	%r8,4(%r4,%r3)
	st	%r8,4(%r4,%r2)
	l	%r9,8(%r4,%r3)
	st	%r9,8(%r4,%r2)
	l	%r10,12(%r4,%r3)
	st	%r10,12(%r4,%r2)
	l	%r12,16(%r4,%r3)
	st	%r12,16(%r4,%r2)
	l	%r7,20(%r4,%r3)
	st	%r7,20(%r4,%r2)
	l	%r11,24(%r4,%r3)
	st	%r11,24(%r4,%r2)
	l	%r0,28(%r4,%r3)
	st	%r0,28(%r4,%r2)
	aghi	%r4,32
	brctg	%r1,.L1389
	j	.L1257
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
	aghi	%r15,-104
	.cfi_def_cfa_offset 264
	lgr	%r0,%r4
	aghi	%r0,-1
	ltgr	%r4,%r4
	stg	%r2,160(%r15)
	stg	%r3,168(%r15)
	je	.L1399
	srlg	%r1,%r2,2
	lghi	%r5,1
	ngr	%r1,%r5
	lghi	%r6,5
	clgr	%r0,%r6
	jle	.L1404
	ltgr	%r1,%r1
	je	.L1405
	st	%r3,0(%r2)
	la	%r2,4(%r2)
	stg	%r2,176(%r15)
	aghi	%r0,-1
.L1401:
	sgr	%r4,%r1
	lgr	%r8,%r4
	sllg	%r4,%r1,2
	srlg	%r10,%r8,1
	lg	%r3,168(%r15)
	ag	%r4,160(%r15)
	lghi	%r12,7
	sllg	%r5,%r3,32
	ngr	%r12,%r10
	lgr	%r11,%r10
	lr	%r5,%r3
	lghi	%r1,0
	je	.L1434
	cghi	%r12,1
	je	.L1442
	cghi	%r12,2
	je	.L1443
	cghi	%r12,3
	je	.L1444
	cghi	%r12,4
	je	.L1445
	cghi	%r12,5
	je	.L1446
	cghi	%r12,6
	jne	.L1470
.L1447:
	sllg	%r9,%r1,3
	aghi	%r1,1
	stg	%r5,0(%r9,%r4)
.L1446:
	sllg	%r13,%r1,3
	aghi	%r1,1
	stg	%r5,0(%r13,%r4)
.L1445:
	sllg	%r6,%r1,3
	aghi	%r1,1
	stg	%r5,0(%r6,%r4)
.L1444:
	sllg	%r7,%r1,3
	aghi	%r1,1
	stg	%r5,0(%r7,%r4)
.L1443:
	sllg	%r2,%r1,3
	aghi	%r1,1
	stg	%r5,0(%r2,%r4)
.L1442:
	sllg	%r3,%r1,3
	aghi	%r1,1
	cgr	%r10,%r1
	stg	%r5,0(%r3,%r4)
	je	.L1463
.L1434:
	srlg	%r9,%r11,3
	cghi	%r9,2
	jle	.L1468
	aghi	%r9,-1
	sllg	%r12,%r1,3
	stg	%r5,0(%r12,%r4)
	stg	%r5,8(%r12,%r4)
	stg	%r5,16(%r12,%r4)
	stg	%r5,24(%r12,%r4)
	stg	%r5,32(%r12,%r4)
	stg	%r5,40(%r12,%r4)
	stg	%r5,48(%r12,%r4)
	stg	%r5,56(%r12,%r4)
.L1402:
	aghi	%r1,8
	sllg	%r2,%r1,3
	stg	%r5,0(%r2,%r4)
	stg	%r5,8(%r2,%r4)
	stg	%r5,16(%r2,%r4)
	stg	%r5,24(%r2,%r4)
	stg	%r5,32(%r2,%r4)
	stg	%r5,40(%r2,%r4)
	stg	%r5,48(%r2,%r4)
	stg	%r5,56(%r2,%r4)
	brctg	%r9,.L1402
.L1463:
	tmll	%r8,1
	je	.L1399
	nill	%r8,65534
	sllg	%r7,%r8,2
	sgr	%r0,%r8
	ag	%r7,176(%r15)
.L1400:
	lg	%r4,168(%r15)
	st	%r4,0(%r7)
	ltgr	%r0,%r0
	je	.L1399
	st	%r4,4(%r7)
	cghi	%r0,1
	je	.L1399
	st	%r4,8(%r7)
	cghi	%r0,2
	je	.L1399
	st	%r4,12(%r7)
	cghi	%r0,3
	je	.L1399
	st	%r4,16(%r7)
	cghi	%r0,4
	je	.L1399
	st	%r4,20(%r7)
.L1399:
	lg	%r2,160(%r15)
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
.L1405:
	.cfi_restore_state
	stg	%r2,176(%r15)
	j	.L1401
.L1468:
	sllg	%r10,%r1,3
	aghi	%r1,8
	stg	%r5,0(%r10,%r4)
	stg	%r5,8(%r10,%r4)
	stg	%r5,16(%r10,%r4)
	stg	%r5,24(%r10,%r4)
	stg	%r5,32(%r10,%r4)
	stg	%r5,40(%r10,%r4)
	stg	%r5,48(%r10,%r4)
	stg	%r5,56(%r10,%r4)
	brctg	%r9,.L1468
	j	.L1463
.L1470:
	stg	%r5,0(%r1,%r4)
	lghi	%r1,1
	j	.L1447
.L1404:
	lgr	%r7,%r2
	j	.L1400
	.cfi_endproc
.LFE68:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB69:
	.cfi_startproc
	stmg	%r7,%r12,112(%r15)
	.cfi_offset 7, -48
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	clgr	%r2,%r3
	jhe	.L1473
	ltgr	%r4,%r4
	je	.L1472
	lgr	%r7,%r4
	aghi	%r2,-1
	aghi	%r3,-1
	aghi	%r7,-1
	lghi	%r8,7
	ngr	%r8,%r4
	lgr	%r1,%r4
	je	.L1520
	cghi	%r8,1
	je	.L1570
	cghi	%r8,2
	je	.L1571
	cghi	%r8,3
	je	.L1572
	cghi	%r8,4
	je	.L1573
	cghi	%r8,5
	je	.L1574
	cghi	%r8,6
	je	.L1575
	ic	%r9,0(%r4,%r2)
	stc	%r9,0(%r4,%r3)
	lgr	%r4,%r7
.L1575:
	ic	%r10,0(%r4,%r2)
	stc	%r10,0(%r4,%r3)
	aghi	%r4,-1
.L1574:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	aghi	%r4,-1
.L1573:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	aghi	%r4,-1
.L1572:
	ic	%r12,0(%r4,%r2)
	stc	%r12,0(%r4,%r3)
	aghi	%r4,-1
.L1571:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	aghi	%r4,-1
.L1570:
	ic	%r7,0(%r4,%r2)
	stc	%r7,0(%r4,%r3)
	brctg	%r4,.L1520
.L1472:
	lmg	%r7,%r12,112(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1473:
	.cfi_restore_state
	je	.L1472
	ltgr	%r4,%r4
	je	.L1472
	lgr	%r1,%r4
	aghi	%r1,-1
	lghi	%r5,14
	clgr	%r1,%r5
	jle	.L1483
	lgr	%r0,%r3
	ogr	%r0,%r2
	lghi	%r7,7
	ngr	%r0,%r7
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L1483
	la	%r8,1(%r2)
	lgr	%r9,%r3
	sgr	%r9,%r8
	lghi	%r10,6
	clgr	%r9,%r10
	jle	.L1483
	lgr	%r12,%r4
	nill	%r12,65528
	lgr	%r11,%r12
	aghi	%r11,-8
	srlg	%r5,%r11,3
	aghi	%r5,1
	lghi	%r0,7
	ngr	%r0,%r5
	lghi	%r1,0
	je	.L1562
	cghi	%r0,1
	je	.L1576
	cghi	%r0,2
	je	.L1577
	cghi	%r0,3
	je	.L1578
	cghi	%r0,4
	je	.L1579
	cghi	%r0,5
	je	.L1580
	cghi	%r0,6
	jne	.L1641
.L1581:
	lg	%r7,0(%r1,%r2)
	stg	%r7,0(%r1,%r3)
	aghi	%r1,8
.L1580:
	lg	%r8,0(%r1,%r2)
	stg	%r8,0(%r1,%r3)
	aghi	%r1,8
.L1579:
	lg	%r9,0(%r1,%r2)
	stg	%r9,0(%r1,%r3)
	aghi	%r1,8
.L1578:
	lg	%r10,0(%r1,%r2)
	stg	%r10,0(%r1,%r3)
	aghi	%r1,8
.L1577:
	lg	%r11,0(%r1,%r2)
	stg	%r11,0(%r1,%r3)
	aghi	%r1,8
.L1576:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L1623
.L1562:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1638
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
.L1477:
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
	brctg	%r5,.L1477
	aghi	%r1,64
.L1623:
	lgr	%r5,%r4
	sgr	%r5,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r2,0(%r1,%r2)
	je	.L1472
	mvc	0(1,%r3),0(%r2)
	cghi	%r5,1
	je	.L1472
	mvc	1(1,%r3),1(%r2)
	cghi	%r5,2
	je	.L1472
	mvc	2(1,%r3),2(%r2)
	cghi	%r5,3
	je	.L1472
	mvc	3(1,%r3),3(%r2)
	cghi	%r5,4
	je	.L1472
	mvc	4(1,%r3),4(%r2)
	cghi	%r5,5
	je	.L1472
	mvc	5(1,%r3),5(%r2)
	cghi	%r5,6
	je	.L1472
	mvc	6(1,%r3),6(%r2)
	j	.L1472
.L1520:
	srlg	%r1,%r1,3
	cghi	%r1,2
	jle	.L1636
	aghi	%r1,-1
	lgr	%r5,%r4
	aghi	%r5,-7
	lgr	%r12,%r4
	aghi	%r12,-6
	lgr	%r11,%r4
	aghi	%r11,-5
	lgr	%r10,%r4
	aghi	%r10,-4
	lgr	%r9,%r4
	aghi	%r9,-3
	lgr	%r8,%r4
	aghi	%r8,-2
	lgr	%r7,%r4
	aghi	%r7,-1
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ic	%r0,0(%r7,%r2)
	stc	%r0,0(%r7,%r3)
	ic	%r0,0(%r8,%r2)
	stc	%r0,0(%r8,%r3)
	ic	%r0,0(%r9,%r2)
	stc	%r0,0(%r9,%r3)
	ic	%r0,0(%r10,%r2)
	stc	%r0,0(%r10,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
.L1475:
	aghi	%r4,-8
	lgr	%r5,%r4
	aghi	%r5,-7
	lgr	%r12,%r4
	aghi	%r12,-6
	lgr	%r11,%r4
	aghi	%r11,-5
	lgr	%r10,%r4
	aghi	%r10,-4
	lgr	%r9,%r4
	aghi	%r9,-3
	lgr	%r8,%r4
	aghi	%r8,-2
	lgr	%r7,%r4
	aghi	%r7,-1
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ic	%r0,0(%r7,%r2)
	stc	%r0,0(%r7,%r3)
	ic	%r0,0(%r8,%r2)
	stc	%r0,0(%r8,%r3)
	ic	%r0,0(%r9,%r2)
	stc	%r0,0(%r9,%r3)
	ic	%r0,0(%r10,%r2)
	stc	%r0,0(%r10,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	brctg	%r1,.L1475
	j	.L1472
.L1636:
	lgr	%r9,%r4
	aghi	%r9,-1
	lgr	%r11,%r4
	aghi	%r11,-2
	ic	%r8,0(%r4,%r2)
	lgr	%r12,%r4
	stc	%r8,0(%r4,%r3)
	aghi	%r12,-3
	ic	%r10,0(%r9,%r2)
	lgr	%r7,%r4
	stc	%r10,0(%r9,%r3)
	aghi	%r7,-4
	ic	%r0,0(%r11,%r2)
	lgr	%r9,%r4
	stc	%r0,0(%r11,%r3)
	aghi	%r9,-5
	ic	%r5,0(%r12,%r2)
	lgr	%r11,%r4
	stc	%r5,0(%r12,%r3)
	aghi	%r11,-6
	ic	%r8,0(%r7,%r2)
	lgr	%r12,%r4
	stc	%r8,0(%r7,%r3)
	aghi	%r12,-7
	ic	%r10,0(%r9,%r2)
	stc	%r10,0(%r9,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r5,0(%r12,%r2)
	stc	%r5,0(%r12,%r3)
	aghi	%r4,-8
	brctg	%r1,.L1636
	j	.L1472
.L1638:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	lg	%r7,8(%r1,%r2)
	stg	%r7,8(%r1,%r3)
	lg	%r8,16(%r1,%r2)
	stg	%r8,16(%r1,%r3)
	lg	%r9,24(%r1,%r2)
	stg	%r9,24(%r1,%r3)
	lg	%r10,32(%r1,%r2)
	stg	%r10,32(%r1,%r3)
	lg	%r11,40(%r1,%r2)
	stg	%r11,40(%r1,%r3)
	lg	%r0,48(%r1,%r2)
	stg	%r0,48(%r1,%r3)
	lg	%r12,56(%r1,%r2)
	stg	%r12,56(%r1,%r3)
	aghi	%r1,64
	brctg	%r5,.L1638
	j	.L1623
.L1483:
	lghi	%r8,7
	ngr	%r8,%r4
	lghi	%r1,0
	lgr	%r7,%r4
	je	.L1541
	cghi	%r8,1
	je	.L1582
	cghi	%r8,2
	je	.L1583
	cghi	%r8,3
	je	.L1584
	cghi	%r8,4
	je	.L1585
	cghi	%r8,5
	je	.L1586
	cghi	%r8,6
	je	.L1587
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1587:
	ic	%r9,0(%r1,%r2)
	stc	%r9,0(%r1,%r3)
	aghi	%r1,1
.L1586:
	ic	%r10,0(%r1,%r2)
	stc	%r10,0(%r1,%r3)
	aghi	%r1,1
.L1585:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	aghi	%r1,1
.L1584:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1583:
	ic	%r12,0(%r1,%r2)
	stc	%r12,0(%r1,%r3)
	aghi	%r1,1
.L1582:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	aghi	%r1,1
	cgr	%r4,%r1
	je	.L1472
.L1541:
	srlg	%r4,%r7,3
	cghi	%r4,2
	jle	.L1637
	aghi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r5,5(%r1,%r2)
	stc	%r5,5(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	stc	%r5,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
.L1480:
	aghi	%r1,8
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r5,5(%r1,%r2)
	stc	%r5,5(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	stc	%r5,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
	brctg	%r4,.L1480
	j	.L1472
.L1641:
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
	j	.L1581
.L1637:
	ic	%r7,0(%r1,%r2)
	stc	%r7,0(%r1,%r3)
	ic	%r8,1(%r1,%r2)
	stc	%r8,1(%r1,%r3)
	ic	%r9,2(%r1,%r2)
	stc	%r9,2(%r1,%r3)
	ic	%r10,3(%r1,%r2)
	stc	%r10,3(%r1,%r3)
	ic	%r11,4(%r1,%r2)
	stc	%r11,4(%r1,%r3)
	ic	%r0,5(%r1,%r2)
	stc	%r0,5(%r1,%r3)
	ic	%r12,6(%r1,%r2)
	stc	%r12,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
	aghi	%r1,8
	brctg	%r4,.L1637
	j	.L1472
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
	nr	%r3,%r1
	lcr	%r5,%r3
	lhi	%r4,15
	nr	%r5,%r4
	lr	%r0,%r2
	srl	%r0,0(%r5)
	sll	%r2,0(%r3)
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
	nr	%r3,%r1
	lcr	%r5,%r3
	lhi	%r4,15
	nr	%r5,%r4
	lr	%r0,%r2
	sll	%r0,0(%r5)
	srl	%r2,0(%r3)
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
	nr	%r3,%r1
	lcr	%r5,%r3
	lhi	%r4,7
	nr	%r5,%r4
	lr	%r0,%r2
	srl	%r0,0(%r5)
	sll	%r2,0(%r3)
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
	nr	%r3,%r1
	lcr	%r5,%r3
	lhi	%r4,7
	nr	%r5,%r4
	lr	%r0,%r2
	sll	%r0,0(%r5)
	srl	%r2,0(%r3)
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
.L1672:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	lr	%r3,%r1
	srl	%r5,0(%r1)
	jne	.L1671
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r5,1
	srl	%r4,0(%r1)
	jne	.L1671
	lr	%r1,%r3
	ahi	%r1,2
	lr	%r3,%r2
	tmll	%r4,1
	srl	%r3,0(%r1)
	jne	.L1671
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1671
	ahi	%r1,1
	lr	%r5,%r2
	tmll	%r4,1
	srl	%r5,0(%r1)
	jne	.L1671
	ahi	%r1,1
	lr	%r3,%r2
	tmll	%r5,1
	srl	%r3,0(%r1)
	jne	.L1671
	ahi	%r1,1
	lr	%r4,%r2
	tmll	%r3,1
	srl	%r4,0(%r1)
	jne	.L1671
	ahi	%r1,1
	tmll	%r4,1
	jne	.L1671
	brct	%r0,.L1672
	lhi	%r1,0
.L1671:
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
	je	.L1696
	lhi	%r2,1
	nr	%r2,%r3
	jne	.L1694
	lhi	%r2,1
.L1695:
	lr	%r1,%r3
	sra	%r1,1
	ahi	%r2,1
	tmll	%r1,1
	lgfr	%r3,%r1
	je	.L1695
.L1694:
	lgfr	%r2,%r2
	br	%r14
.L1696:
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
	larl	%r5,.L1705
	lghi	%r2,1
	keb	%f0,.L1706-.L1705(%r5)
	blr	%r14
	keb	%f0,.L1707-.L1705(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1705:
.L1707:
	.long	2139095039
.L1706:
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
	larl	%r5,.L1713
	lghi	%r2,1
	kdb	%f0,.L1714-.L1713(%r5)
	blr	%r14
	kdb	%f0,.L1715-.L1713(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1713:
.L1715:
	.long	2146435071
	.long	-1
.L1714:
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
	larl	%r5,.L1721
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1722-.L1721(%r5)
	ld	%f6,.L1722-.L1721+8(%r5)
	kxbr	%f0,%f4
	lghi	%r2,1
	blr	%r14
	ld	%f4,.L1723-.L1721(%r5)
	ld	%f6,.L1723-.L1721+8(%r5)
	kxbr	%f0,%f4
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1721:
.L1723:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1722:
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
	larl	%r5,.L1742
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1740
	le	%f4,.L1743-.L1742(%r5)
.L1728:
	tmll	%r2,1
	je	.L1729
.L1730:
	meebr	%f0,%f4
.L1729:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	lr	%r0,%r2
	tmll	%r2,1
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1730
.L1741:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	lr	%r0,%r2
	tmll	%r2,1
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1730
	j	.L1741
.L1740:
	le	%f4,.L1744-.L1742(%r5)
	j	.L1728
	.section	.rodata
	.align	8
.L1742:
.L1744:
	.long	1056964608
.L1743:
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
	larl	%r5,.L1761
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1759
	ld	%f4,.L1762-.L1761(%r5)
.L1747:
	tmll	%r2,1
	je	.L1748
.L1749:
	mdbr	%f0,%f4
.L1748:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	ltgr	%r2,%r2
	ber	%r14
	lr	%r0,%r2
	tmll	%r2,1
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1749
.L1760:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	lr	%r0,%r2
	tmll	%r2,1
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1749
	j	.L1760
.L1759:
	ld	%f4,.L1763-.L1761(%r5)
	j	.L1747
	.section	.rodata
	.align	8
.L1761:
.L1763:
	.long	1071644672
	.long	0
.L1762:
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
	larl	%r5,.L1780
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1765
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1765
	ltr	%r4,%r4
	jl	.L1778
	ld	%f0,.L1781-.L1780(%r5)
	ld	%f2,.L1781-.L1780+8(%r5)
.L1766:
	tmll	%r4,1
	je	.L1767
.L1768:
	mxbr	%f4,%f0
.L1767:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	ltgr	%r4,%r4
	je	.L1765
	lr	%r0,%r4
	tmll	%r4,1
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1768
.L1779:
	ar	%r0,%r4
	sra	%r0,1
	lgfr	%r4,%r0
	lr	%r0,%r4
	tmll	%r4,1
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1768
	j	.L1779
.L1765:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1778:
	ld	%f0,.L1782-.L1780(%r5)
	ld	%f2,.L1782-.L1780+8(%r5)
	j	.L1766
	.section	.rodata
	.align	8
.L1780:
.L1782:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1781:
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
	lgr	%r1,%r4
	aghi	%r1,-1
	lghi	%r5,14
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	clgr	%r1,%r5
	jle	.L1791
	lgr	%r0,%r2
	ogr	%r0,%r3
	tmll	%r0,7
	jne	.L1791
	lgr	%r12,%r4
	nill	%r12,65528
	lgr	%r1,%r12
	aghi	%r1,-8
	srlg	%r5,%r1,3
	aghi	%r5,1
	lghi	%r0,7
	ngr	%r0,%r5
	lghi	%r1,0
	je	.L1842
	cghi	%r0,1
	je	.L1850
	cghi	%r0,2
	je	.L1851
	cghi	%r0,3
	je	.L1852
	cghi	%r0,4
	je	.L1853
	cghi	%r0,5
	je	.L1854
	cghi	%r0,6
	je	.L1855
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1855:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1854:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1853:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1852:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1851:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L1850:
	lg	%r0,0(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r12
	je	.L1886
.L1842:
	srlg	%r5,%r5,3
	cghi	%r5,2
	jle	.L1896
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
.L1786:
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
	brctg	%r5,.L1786
	aghi	%r1,64
.L1886:
	lgr	%r12,%r4
	sgr	%r12,%r1
	cgr	%r4,%r1
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	je	.L1784
	xc	0(1,%r5),0(%r3)
	cghi	%r12,1
	je	.L1784
	xc	1(1,%r5),1(%r3)
	cghi	%r12,2
	je	.L1784
	xc	2(1,%r5),2(%r3)
	cghi	%r12,3
	je	.L1784
	xc	3(1,%r5),3(%r3)
	cghi	%r12,4
	je	.L1784
	xc	4(1,%r5),4(%r3)
	cghi	%r12,5
	je	.L1784
	xc	5(1,%r5),5(%r3)
	cghi	%r12,6
	je	.L1784
	xc	6(1,%r5),6(%r3)
.L1784:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1896:
	.cfi_restore_state
	lg	%r12,0(%r1,%r2)
	lg	%r0,8(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	xg	%r0,8(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	stg	%r0,8(%r1,%r2)
	lg	%r12,16(%r1,%r2)
	lg	%r0,24(%r1,%r2)
	xg	%r12,16(%r1,%r3)
	xg	%r0,24(%r1,%r3)
	stg	%r12,16(%r1,%r2)
	stg	%r0,24(%r1,%r2)
	lg	%r12,32(%r1,%r2)
	lg	%r0,40(%r1,%r2)
	xg	%r12,32(%r1,%r3)
	xg	%r0,40(%r1,%r3)
	stg	%r12,32(%r1,%r2)
	stg	%r0,40(%r1,%r2)
	lg	%r12,48(%r1,%r2)
	lg	%r0,56(%r1,%r2)
	xg	%r12,48(%r1,%r3)
	xg	%r0,56(%r1,%r3)
	stg	%r12,48(%r1,%r2)
	stg	%r0,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L1896
	j	.L1886
.L1791:
	lghi	%r0,7
	ngr	%r0,%r4
	lghi	%r1,0
	lgr	%r5,%r4
	je	.L1821
	cghi	%r0,1
	je	.L1856
	cghi	%r0,2
	je	.L1857
	cghi	%r0,3
	je	.L1858
	cghi	%r0,4
	je	.L1859
	cghi	%r0,5
	je	.L1860
	cghi	%r0,6
	je	.L1861
	xc	0(1,%r2),0(%r3)
	lghi	%r1,1
.L1861:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1860:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1859:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1858:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1857:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L1856:
	llgc	%r0,0(%r1,%r2)
	llgc	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
	cgr	%r4,%r1
	je	.L1784
.L1821:
	srlg	%r4,%r5,3
	cghi	%r4,2
	jle	.L1895
	aghi	%r4,-1
	llgc	%r5,0(%r1,%r2)
	llgc	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	llgc	%r5,1(%r1,%r2)
	llgc	%r0,1(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,1(%r1,%r2)
	llgc	%r5,2(%r1,%r2)
	llgc	%r0,2(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,2(%r1,%r2)
	llgc	%r5,3(%r1,%r2)
	llgc	%r0,3(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,3(%r1,%r2)
	llgc	%r5,4(%r1,%r2)
	llgc	%r0,4(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	llgc	%r5,5(%r1,%r2)
	llgc	%r0,5(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,5(%r1,%r2)
	llgc	%r5,6(%r1,%r2)
	llgc	%r0,6(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,6(%r1,%r2)
	llgc	%r5,7(%r1,%r2)
	llgc	%r0,7(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,7(%r1,%r2)
.L1788:
	aghi	%r1,8
	llgc	%r5,0(%r1,%r2)
	llgc	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	llgc	%r5,1(%r1,%r2)
	llgc	%r0,1(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,1(%r1,%r2)
	llgc	%r5,2(%r1,%r2)
	llgc	%r0,2(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,2(%r1,%r2)
	llgc	%r5,3(%r1,%r2)
	llgc	%r0,3(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,3(%r1,%r2)
	llgc	%r5,4(%r1,%r2)
	llgc	%r0,4(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	llgc	%r5,5(%r1,%r2)
	llgc	%r0,5(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,5(%r1,%r2)
	llgc	%r5,6(%r1,%r2)
	llgc	%r0,6(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,6(%r1,%r2)
	llgc	%r5,7(%r1,%r2)
	llgc	%r0,7(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,7(%r1,%r2)
	brctg	%r4,.L1788
	j	.L1784
.L1895:
	llgc	%r5,0(%r1,%r2)
	llgc	%r0,0(%r1,%r3)
	xr	%r5,%r0
	llgc	%r12,1(%r1,%r2)
	stc	%r5,0(%r1,%r2)
	llgc	%r5,1(%r1,%r3)
	xr	%r12,%r5
	llgc	%r0,2(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	llgc	%r12,2(%r1,%r2)
	xr	%r12,%r0
	llgc	%r5,3(%r1,%r2)
	stc	%r12,2(%r1,%r2)
	llgc	%r12,3(%r1,%r3)
	xr	%r5,%r12
	llgc	%r0,4(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	llgc	%r5,4(%r1,%r2)
	xr	%r5,%r0
	llgc	%r12,5(%r1,%r2)
	stc	%r5,4(%r1,%r2)
	llgc	%r5,5(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,5(%r1,%r2)
	llgc	%r0,6(%r1,%r3)
	llgc	%r12,6(%r1,%r2)
	xr	%r12,%r0
	llgc	%r5,7(%r1,%r2)
	stc	%r12,6(%r1,%r2)
	llgc	%r12,7(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,7(%r1,%r2)
	aghi	%r1,8
	brctg	%r4,.L1895
	j	.L1784
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
	je	.L1903
.L1904:
	cli	1(%r1),0
	la	%r1,1(%r1)
	jne	.L1904
.L1903:
	ltgr	%r4,%r4
	je	.L1968
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lgr	%r12,%r4
	aghi	%r12,-1
	lghi	%r5,7
	ngr	%r5,%r4
	lgr	%r0,%r4
	je	.L1927
	cghi	%r5,1
	je	.L1950
	cghi	%r5,2
	je	.L1951
	cghi	%r5,3
	je	.L1952
	cghi	%r5,4
	je	.L1953
	cghi	%r5,5
	je	.L1954
	cghi	%r5,6
	jne	.L1972
.L1955:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1954:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1953:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1952:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1951:
	llgc	%r12,0(%r3)
	stc	%r12,0(%r1)
	ltgr	%r12,%r12
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	aghi	%r4,-1
.L1950:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	ltgr	%r5,%r5
	je	.L1908
	cghi	%r4,1
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	je	.L1906
.L1927:
	srlg	%r0,%r0,3
.L1905:
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1908
	llgc	%r12,1(%r3)
	stc	%r12,1(%r1)
	ltgr	%r12,%r12
	je	.L1908
	llgc	%r5,2(%r3)
	stc	%r5,2(%r1)
	ltgr	%r5,%r5
	je	.L1908
	llgc	%r4,3(%r3)
	stc	%r4,3(%r1)
	ltgr	%r4,%r4
	je	.L1908
	llgc	%r12,4(%r3)
	stc	%r12,4(%r1)
	ltgr	%r12,%r12
	je	.L1908
	llgc	%r5,5(%r3)
	stc	%r5,5(%r1)
	ltgr	%r5,%r5
	je	.L1908
	llgc	%r4,6(%r3)
	stc	%r4,6(%r1)
	ltgr	%r4,%r4
	je	.L1908
	llgc	%r12,7(%r3)
	stc	%r12,7(%r1)
	ltgr	%r12,%r12
	je	.L1908
	la	%r3,8(%r3)
	la	%r1,8(%r1)
	brctg	%r0,.L1905
.L1906:
	mvi	0(%r1),0
.L1908:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1972:
	.cfi_restore_state
	llgc	%r4,0(%r3)
	stc	%r4,0(%r1)
	ltgr	%r4,%r4
	je	.L1908
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	lgr	%r4,%r12
	j	.L1955
.L1968:
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
	ngr	%r1,%r3
	lgr	%r5,%r3
	je	.L1994
	cghi	%r1,1
	je	.L2017
	cghi	%r1,2
	je	.L2018
	cghi	%r1,3
	je	.L2019
	cghi	%r1,4
	je	.L2020
	cghi	%r1,5
	je	.L2021
	cghi	%r1,6
	jne	.L2034
.L2022:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2021:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2020:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2019:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2018:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
.L2017:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	aghi	%r2,1
	cgr	%r3,%r2
	ber	%r14
.L1994:
	srlg	%r0,%r5,3
.L1975:
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
	lgr	%r2,%r5
	la	%r1,2(%r5,%r4)
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
	brctg	%r0,.L1975
	br	%r14
.L2034:
	cli	0(%r4),0
	ber	%r14
	lghi	%r2,1
	j	.L2022
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
	je	.L2041
.L2047:
	lhi	%r1,255
	nr	%r5,%r1
	lgr	%r1,%r3
	j	.L2040
.L2039:
	cr	%r4,%r5
	la	%r1,1(%r1)
	ber	%r14
.L2040:
	llgc	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L2039
	la	%r2,1(%r2)
	icm	%r5,1,0(%r2)
	jne	.L2047
.L2041:
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
	j	.L2052
.L2055:
	tml	%r4,255
	lgr	%r2,%r1
	lgr	%r5,%r2
	la	%r1,1(%r1)
	ber	%r14
.L2052:
	ic	%r4,0(%r1)
	lhi	%r2,255
	nr	%r2,%r4
	cr	%r2,%r3
	je	.L2055
	lgr	%r2,%r5
	tml	%r4,255
	la	%r1,1(%r1)
	lgr	%r5,%r2
	jne	.L2052
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
	je	.L2057
	lgr	%r10,%r3
.L2059:
	cli	1(%r10),0
	la	%r10,1(%r10)
	jne	.L2059
	slgr	%r10,%r3
	jhe	.L2057
	lhi	%r11,255
	aghi	%r10,-1
	nr	%r11,%r9
	j	.L2110
.L2114:
	ltr	%r4,%r4
	la	%r2,1(%r2)
	je	.L2113
.L2110:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r11
	jne	.L2114
	lghi	%r8,3
	ngr	%r8,%r10
	lgr	%r0,%r10
	lgr	%r4,%r3
	lgr	%r5,%r2
	lr	%r12,%r9
	je	.L2083
	lhi	%r1,255
	nr	%r1,%r9
	cr	%r11,%r1
	jne	.L2064
	ic	%r1,1(%r2)
	lhi	%r6,255
	nr	%r6,%r1
	la	%r5,1(%r2)
	la	%r7,1(%r3)
	je	.L2109
	ic	%r12,1(%r3)
	lhi	%r13,255
	nr	%r13,%r12
	je	.L2064
	cghi	%r8,1
	lgr	%r4,%r7
	je	.L2083
	cghi	%r8,2
	je	.L2097
	cr	%r6,%r13
	jne	.L2064
	icm	%r1,1,2(%r2)
	la	%r5,1(%r5)
	la	%r8,2(%r3)
	je	.L2109
	icm	%r12,1,2(%r3)
	je	.L2064
	lgr	%r4,%r8
.L2097:
	lhi	%r7,255
	nr	%r1,%r7
	nr	%r12,%r7
	cr	%r1,%r12
	jne	.L2064
	la	%r5,1(%r5)
	la	%r6,1(%r4)
	icm	%r1,1,0(%r5)
	je	.L2109
	icm	%r12,1,1(%r4)
	je	.L2064
	lgr	%r4,%r6
.L2083:
	srlg	%r0,%r0,2
	aghi	%r0,1
.L2061:
	lhi	%r13,255
	lhi	%r8,255
	nr	%r13,%r1
	nr	%r8,%r12
	brctg	%r0,.L2096
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	je	.L2057
.L2064:
	la	%r2,1(%r2)
	j	.L2110
.L2096:
	cr	%r13,%r8
	jne	.L2064
	ic	%r1,1(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	la	%r12,1(%r4)
	je	.L2109
	llgc	%r1,1(%r4)
	ltr	%r1,%r1
	lgr	%r4,%r12
	je	.L2064
	cr	%r7,%r1
	jne	.L2064
	ic	%r1,2(%r5)
	lhi	%r13,255
	nr	%r13,%r1
	la	%r6,1(%r12)
	je	.L2109
	llgc	%r8,1(%r12)
	ltr	%r8,%r8
	lgr	%r4,%r6
	je	.L2064
	cr	%r13,%r8
	jne	.L2064
	ic	%r1,3(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2109
	llgc	%r1,1(%r6)
	ltr	%r1,%r1
	la	%r4,2(%r12)
	je	.L2064
	cr	%r7,%r1
	jne	.L2064
	la	%r5,4(%r5)
	la	%r6,3(%r12)
	icm	%r1,1,0(%r5)
	je	.L2109
	icm	%r12,1,3(%r12)
	lgr	%r4,%r6
	jne	.L2061
	la	%r2,1(%r2)
	j	.L2110
.L2113:
	lghi	%r2,0
.L2057:
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
.L2109:
	.cfi_restore_state
	ic	%r12,1(%r4)
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	jne	.L2064
	j	.L2057
	.cfi_endproc
.LFE97:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB98:
	.cfi_startproc
	larl	%r5,.L2128
	kdb	%f0,.L2129-.L2128(%r5)
	jl	.L2127
	jnh	.L2120
	kdb	%f2,.L2129-.L2128(%r5)
	jl	.L2119
.L2120:
	br	%r14
.L2127:
	kdb	%f2,.L2129-.L2128(%r5)
	jnh	.L2120
.L2119:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2128:
.L2129:
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
	jl	.L2139
	sgr	%r3,%r0
	algr	%r3,%r2
	jnle	.L2139
	stmg	%r8,%r12,120(%r15)
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	ic	%r9,0(%r4)
	lhi	%r12,255
	nr	%r12,%r9
	j	.L2136
.L2140:
	lgr	%r2,%r5
.L2132:
	clgr	%r3,%r2
	jl	.L2141
.L2136:
	llgc	%r1,0(%r2)
	cr	%r1,%r12
	la	%r5,1(%r2)
	jne	.L2140
	cghi	%r0,1
	je	.L2130
.L2135:
	lgr	%r11,%r0
	aghi	%r11,-1
	lghi	%r10,7
	ngr	%r10,%r11
	lghi	%r1,1
	je	.L2159
	cghi	%r10,1
	je	.L2181
	cghi	%r10,2
	je	.L2182
	cghi	%r10,3
	je	.L2183
	cghi	%r10,4
	je	.L2184
	cghi	%r10,5
	je	.L2185
	cghi	%r10,6
	je	.L2186
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	jne	.L2196
.L2186:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
.L2185:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
.L2184:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
.L2183:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
.L2182:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
.L2181:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,1
	cgr	%r1,%r0
	je	.L2130
.L2159:
	srlg	%r11,%r11,3
.L2133:
	la	%r10,0(%r1,%r2)
	llgc	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,1(%r1,%r2)
	llgc	%r8,1(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,2(%r1,%r2)
	llgc	%r8,2(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,3(%r1,%r2)
	llgc	%r8,3(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,4(%r1,%r2)
	llgc	%r8,4(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,5(%r1,%r2)
	llgc	%r8,5(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,6(%r1,%r2)
	llgc	%r8,6(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	la	%r10,7(%r1,%r2)
	llgc	%r8,7(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2196
	aghi	%r1,8
	brctg	%r11,.L2133
.L2130:
	lmg	%r8,%r12,120(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2196:
	.cfi_restore_state
	clgr	%r3,%r5
	jl	.L2141
	clm	%r9,1,0(%r5)
	la	%r2,1(%r5)
	jne	.L2132
	lgr	%r1,%r5
	lgr	%r5,%r2
	lgr	%r2,%r1
	j	.L2135
.L2141:
	lghi	%r2,0
	lmg	%r8,%r12,120(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2139:
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
	aghi	%r15,-40
	.cfi_def_cfa_offset 200
	ltgr	%r12,%r4
	lgr	%r11,%r2
	je	.L2207
	brasl	%r14,memmove@PLT
.L2207:
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
	larl	%r5,.L2240
	kdb	%f0,.L2241-.L2240(%r5)
	jl	.L2236
	kdb	%f0,.L2242-.L2240(%r5)
	jnhe	.L2237
	lhi	%r3,0
.L2216:
	lhi	%r0,0
.L2222:
	ahi	%r0,1
	mdb	%f0,.L2243-.L2240(%r5)
	kdb	%f0,.L2242-.L2240(%r5)
	jhe	.L2222
	ltr	%r3,%r3
	st	%r0,0(%r2)
	ber	%r14
.L2239:
	lcdbr	%f0,%f0
	br	%r14
.L2237:
	kdb	%f0,.L2243-.L2240(%r5)
	jnl	.L2219
	cdb	%f0,.L2241-.L2240(%r5)
	jne	.L2228
.L2219:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L2236:
	lcdbr	%f2,%f0
	kdb	%f0,.L2244-.L2240(%r5)
	jnle	.L2238
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L2216
.L2238:
	kdb	%f0,.L2245-.L2240(%r5)
	jnh	.L2219
	lhi	%r3,1
.L2217:
	ldr	%f0,%f2
	lhi	%r0,0
.L2224:
	ahi	%r0,-1
	adbr	%f0,%f0
	kdb	%f0,.L2243-.L2240(%r5)
	jl	.L2224
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L2239
	br	%r14
.L2228:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L2217
	.section	.rodata
	.align	8
.L2240:
.L2245:
	.long	-1075838976
	.long	0
.L2244:
	.long	-1074790400
	.long	0
.L2243:
	.long	1071644672
	.long	0
.L2242:
	.long	1072693248
	.long	0
.L2241:
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
.L2248:
	lghi	%r1,1
	ngr	%r1,%r4
	lcgr	%r0,%r1
	ngr	%r0,%r3
	agr	%r2,%r0
	srlg	%r4,%r4,1
	ltgr	%r4,%r4
	sllg	%r3,%r3,1
	jne	.L2248
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
	jhe	.L2299
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L2254:
	lr	%r0,%r3
	ltr	%r3,%r3
	sll	%r0,1
	jl	.L2259
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L2256
	ltr	%r3,%r3
	jl	.L2259
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L2256
	ahi	%r5,-8
	brct	%r11,.L2254
.L2257:
	ltgr	%r4,%r4
	je	.L2265
	lr	%r5,%r2
.L2265:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2256:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2269
.L2259:
	lhi	%r5,0
	j	.L2264
.L2300:
	lr	%r11,%r1
.L2263:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L2257
.L2264:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r0,%r2
	slr	%r0,%r3
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	je	.L2261
	lr	%r2,%r11
.L2261:
	ltr	%r12,%r12
	llgfr	%r2,%r2
	jne	.L2300
	lhi	%r11,0
	j	.L2263
.L2299:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	slr	%r5,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2267
	lr	%r1,%r2
.L2267:
	lhi	%r0,255
	nr	%r3,%r0
	ltgr	%r4,%r4
	llgfr	%r2,%r1
	je	.L2296
	lr	%r3,%r2
.L2296:
	llgfr	%r2,%r3
	br	%r14
.L2269:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L2257
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
	je	.L2304
	stmg	%r14,%r15,144(%r15)
	sllg	%r2,%r2,8
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-16
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
.L2304:
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
	je	.L2312
	stmg	%r14,%r15,144(%r15)
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-16
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
.L2312:
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
	je	.L2319
.L2320:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srlg	%r4,%r4,1
	sll	%r3,1
	ltgr	%r4,%r4
	llgfr	%r3,%r3
	jne	.L2320
.L2319:
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
	stmg	%r7,%r12,112(%r15)
	.cfi_offset 7, -48
	.cfi_offset 8, -40
	.cfi_offset 9, -32
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lr	%r11,%r4
	nill	%r11,65528
	lr	%r1,%r4
	clgr	%r2,%r3
	srl	%r1,3
	jl	.L2328
	la	%r5,0(%r4,%r3)
	clgr	%r2,%r5
	jle	.L2523
.L2328:
	ltr	%r1,%r1
	je	.L2524
	llgfr	%r1,%r1
	sllg	%r7,%r1,3
	lgr	%r0,%r7
	aghi	%r0,-8
	srlg	%r8,%r0,3
	aghi	%r8,1
	lghi	%r9,7
	ngr	%r9,%r8
	lghi	%r1,0
	je	.L2408
	cghi	%r9,1
	je	.L2444
	cghi	%r9,2
	je	.L2445
	cghi	%r9,3
	je	.L2446
	cghi	%r9,4
	je	.L2447
	cghi	%r9,5
	je	.L2448
	cghi	%r9,6
	je	.L2449
	lg	%r10,0(%r3)
	stg	%r10,0(%r2)
	lghi	%r1,8
.L2449:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L2448:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2447:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	aghi	%r1,8
.L2446:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2445:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2444:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r7,%r1
	je	.L2501
.L2408:
	srlg	%r5,%r8,3
	cghi	%r5,2
	jle	.L2520
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
.L2331:
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
	brctg	%r5,.L2331
.L2501:
	clr	%r11,%r4
	jhe	.L2324
	lr	%r9,%r4
	sr	%r9,%r11
	lr	%r1,%r9
	ahi	%r1,-1
	lhi	%r5,14
	clr	%r1,%r5
	llgfr	%r10,%r11
	jle	.L2333
	lgr	%r5,%r2
	algfr	%r5,%r11
	lgr	%r12,%r3
	la	%r0,1(%r10,%r3)
	lgr	%r7,%r5
	algfr	%r12,%r11
	sgr	%r7,%r0
	lghi	%r8,6
	clgr	%r7,%r8
	jle	.L2333
	lgr	%r1,%r12
	ogr	%r1,%r5
	lghi	%r0,7
	ngr	%r1,%r0
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2333
	lr	%r10,%r9
	srl	%r10,3
	llgfr	%r7,%r10
	sllg	%r10,%r7,3
	lgr	%r8,%r10
	aghi	%r8,-8
	srlg	%r0,%r8,3
	aghi	%r0,1
	lghi	%r7,7
	ngr	%r7,%r0
	lghi	%r1,0
	je	.L2387
	cghi	%r7,1
	je	.L2450
	cghi	%r7,2
	je	.L2451
	cghi	%r7,3
	je	.L2452
	cghi	%r7,4
	je	.L2453
	cghi	%r7,5
	je	.L2454
	cghi	%r7,6
	je	.L2455
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
.L2455:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2454:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
.L2453:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2452:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
.L2451:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2450:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
	cgr	%r1,%r10
	je	.L2500
.L2387:
	srlg	%r0,%r0,3
	cghi	%r0,2
	jle	.L2519
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
.L2334:
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
	brctg	%r0,.L2334
.L2500:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r11
	tmll	%r9,7
	je	.L2324
	llgfr	%r11,%r1
	lr	%r9,%r1
	ahi	%r9,1
	clr	%r9,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2324
	llgfr	%r5,%r9
	lr	%r0,%r1
	ahi	%r0,2
	clr	%r0,%r4
	ic	%r7,0(%r5,%r3)
	stc	%r7,0(%r5,%r2)
	jhe	.L2324
	llgfr	%r10,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r8,0(%r10,%r3)
	stc	%r8,0(%r10,%r2)
	jhe	.L2324
	llgfr	%r11,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r9,0(%r11,%r3)
	stc	%r9,0(%r11,%r2)
	jhe	.L2324
	llgfr	%r5,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	jhe	.L2324
	llgfr	%r7,%r0
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	jhe	.L2324
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2324:
	lmg	%r7,%r12,112(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2523:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r1,%r0
	je	.L2324
	lgr	%r4,%r1
	aghi	%r4,1
	lghi	%r7,7
	ngr	%r7,%r4
	je	.L2429
	cghi	%r7,1
	je	.L2438
	cghi	%r7,2
	je	.L2439
	cghi	%r7,3
	je	.L2440
	cghi	%r7,4
	je	.L2441
	cghi	%r7,5
	je	.L2442
	cghi	%r7,6
	jne	.L2525
.L2443:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2442:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L2441:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L2440:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
.L2439:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L2438:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	je	.L2324
.L2429:
	srlg	%r4,%r4,3
	cghi	%r4,2
	jle	.L2521
	aghi	%r4,-1
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2338:
	aghi	%r1,-8
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brctg	%r4,.L2338
	j	.L2324
.L2520:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	lg	%r8,8(%r1,%r3)
	stg	%r8,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r9,24(%r1,%r3)
	stg	%r9,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r12,40(%r1,%r3)
	stg	%r12,40(%r1,%r2)
	lg	%r7,48(%r1,%r3)
	stg	%r7,48(%r1,%r2)
	lg	%r8,56(%r1,%r3)
	stg	%r8,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2520
	j	.L2501
.L2519:
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r8,8(%r1,%r12)
	stg	%r8,8(%r1,%r5)
	lg	%r7,16(%r1,%r12)
	stg	%r7,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r8,32(%r1,%r12)
	stg	%r8,32(%r1,%r5)
	lg	%r7,40(%r1,%r12)
	stg	%r7,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r8,56(%r1,%r12)
	stg	%r8,56(%r1,%r5)
	aghi	%r1,64
	brctg	%r0,.L2519
	j	.L2500
.L2524:
	ltgr	%r4,%r4
	llgfr	%r10,%r11
	je	.L2324
.L2333:
	lghi	%r8,-1
	xgr	%r8,%r10
	ar	%r8,%r4
	lhi	%r11,7
	lgr	%r1,%r10
	nr	%r11,%r8
	aghi	%r1,1
	ic	%r9,0(%r10,%r3)
	stc	%r9,0(%r10,%r2)
	clr	%r1,%r4
	jhe	.L2324
	ltr	%r11,%r11
	je	.L2366
	chi	%r11,1
	je	.L2457
	chi	%r11,2
	je	.L2458
	chi	%r11,3
	je	.L2459
	chi	%r11,4
	je	.L2460
	chi	%r11,5
	je	.L2461
	chi	%r11,6
	je	.L2462
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lgr	%r1,%r10
	aghi	%r1,2
.L2462:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2461:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2460:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	aghi	%r1,1
.L2459:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2458:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L2457:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
	clr	%r1,%r4
	jhe	.L2324
.L2366:
	lr	%r4,%r8
	srl	%r4,3
	chi	%r4,2
	jle	.L2518
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
.L2336:
	aghi	%r1,8
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
	brct	%r4,.L2336
	j	.L2324
.L2521:
	lgr	%r8,%r1
	aghi	%r8,-1
	lgr	%r10,%r1
	aghi	%r10,-2
	ic	%r7,0(%r1,%r3)
	lgr	%r12,%r1
	stc	%r7,0(%r1,%r2)
	aghi	%r12,-3
	ic	%r9,0(%r8,%r3)
	lgr	%r7,%r1
	stc	%r9,0(%r8,%r2)
	aghi	%r7,-4
	ic	%r11,0(%r10,%r3)
	lgr	%r8,%r1
	stc	%r11,0(%r10,%r2)
	aghi	%r8,-5
	ic	%r5,0(%r12,%r3)
	lgr	%r10,%r1
	stc	%r5,0(%r12,%r2)
	aghi	%r10,-6
	ic	%r0,0(%r7,%r3)
	lgr	%r12,%r1
	stc	%r0,0(%r7,%r2)
	aghi	%r12,-7
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	aghi	%r1,-8
	brctg	%r4,.L2521
	j	.L2324
.L2525:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
	j	.L2443
.L2518:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ic	%r7,4(%r1,%r3)
	stc	%r7,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	stc	%r0,5(%r1,%r2)
	ic	%r11,6(%r1,%r3)
	stc	%r11,6(%r1,%r2)
	ic	%r9,7(%r1,%r3)
	stc	%r9,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2518
	j	.L2324
	.cfi_endproc
.LFE107:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB108:
	.cfi_startproc
	stmg	%r7,%r13,104(%r15)
	.cfi_offset 7, -56
	.cfi_offset 8, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L2679
	lr	%r12,%r4
	clgr	%r2,%r3
	srl	%r12,1
	jl	.L2531
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2677
.L2531:
	ltr	%r12,%r12
	je	.L2530
	lr	%r1,%r12
	ahi	%r1,-1
	lhi	%r7,6
	clr	%r1,%r7
	jle	.L2534
	lgr	%r0,%r3
	ogr	%r0,%r2
	lghi	%r8,7
	ngr	%r0,%r8
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L2534
	la	%r5,2(%r3)
	lgr	%r9,%r2
	sgr	%r9,%r5
	lghi	%r10,4
	clgr	%r9,%r10
	jle	.L2534
	lg	%r7,.L2680-.L2679(%r13)
	ngr	%r7,%r4
	lgr	%r11,%r7
	aghi	%r11,-8
	srlg	%r8,%r11,3
	aghi	%r8,1
	lghi	%r5,7
	lr	%r0,%r4
	ngr	%r5,%r8
	srl	%r0,3
	lghi	%r1,0
	je	.L2585
	cghi	%r5,1
	je	.L2621
	cghi	%r5,2
	je	.L2622
	cghi	%r5,3
	je	.L2623
	cghi	%r5,4
	je	.L2624
	cghi	%r5,5
	je	.L2625
	cghi	%r5,6
	je	.L2626
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2626:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2625:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2624:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L2623:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2622:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2621:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r1,%r7
	je	.L2660
.L2585:
	srlg	%r5,%r8,3
	cghi	%r5,2
	jle	.L2674
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
.L2535:
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
	brctg	%r5,.L2535
.L2660:
	lr	%r1,%r0
	sll	%r1,2
	cr	%r12,%r1
	je	.L2530
	llgfr	%r0,%r1
	sllg	%r9,%r0,1
	lr	%r5,%r1
	ahi	%r5,1
	clr	%r12,%r5
	lh	%r10,0(%r9,%r3)
	sth	%r10,0(%r9,%r2)
	jle	.L2530
	llgfr	%r7,%r5
	sllg	%r8,%r7,1
	ahi	%r1,2
	clr	%r12,%r1
	lh	%r11,0(%r8,%r3)
	sth	%r11,0(%r8,%r2)
	jle	.L2530
	llgfr	%r12,%r1
	sllg	%r1,%r12,1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2530:
	tmll	%r4,1
	je	.L2527
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2527:
	lmg	%r7,%r13,104(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2677:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r1,%r0
	je	.L2527
	lgr	%r4,%r1
	aghi	%r4,1
	lghi	%r5,7
	ngr	%r5,%r4
	je	.L2606
	cghi	%r5,1
	je	.L2615
	cghi	%r5,2
	je	.L2616
	cghi	%r5,3
	je	.L2617
	cghi	%r5,4
	je	.L2618
	cghi	%r5,5
	je	.L2619
	cghi	%r5,6
	jne	.L2678
.L2620:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2619:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2618:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L2617:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L2616:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
.L2615:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	je	.L2527
.L2606:
	srlg	%r4,%r4,3
	cghi	%r4,2
	jle	.L2675
	aghi	%r4,-1
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2540:
	aghi	%r1,-8
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brctg	%r4,.L2540
	j	.L2527
.L2674:
	lg	%r7,0(%r1,%r3)
	stg	%r7,0(%r1,%r2)
	lg	%r8,8(%r1,%r3)
	stg	%r8,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r9,24(%r1,%r3)
	stg	%r9,24(%r1,%r2)
	lg	%r10,32(%r1,%r3)
	stg	%r10,32(%r1,%r2)
	lg	%r7,40(%r1,%r3)
	stg	%r7,40(%r1,%r2)
	lg	%r8,48(%r1,%r3)
	stg	%r8,48(%r1,%r2)
	lg	%r11,56(%r1,%r3)
	stg	%r11,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2674
	j	.L2660
.L2534:
	llgfr	%r9,%r12
	sllg	%r10,%r9,1
	lgr	%r5,%r10
	aghi	%r5,-2
	srlg	%r7,%r5,1
	aghi	%r7,1
	lghi	%r8,7
	ngr	%r8,%r7
	lghi	%r1,0
	je	.L2564
	cghi	%r8,1
	je	.L2627
	cghi	%r8,2
	je	.L2628
	cghi	%r8,3
	je	.L2629
	cghi	%r8,4
	je	.L2630
	cghi	%r8,5
	je	.L2631
	cghi	%r8,6
	je	.L2632
	lh	%r11,0(%r3)
	sth	%r11,0(%r2)
	lghi	%r1,2
.L2632:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	aghi	%r1,2
.L2631:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L2630:
	lh	%r9,0(%r1,%r3)
	sth	%r9,0(%r1,%r2)
	aghi	%r1,2
.L2629:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
.L2628:
	lh	%r8,0(%r1,%r3)
	sth	%r8,0(%r1,%r2)
	aghi	%r1,2
.L2627:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	aghi	%r1,2
	cgr	%r10,%r1
	je	.L2530
.L2564:
	srlg	%r5,%r7,3
	cghi	%r5,2
	jle	.L2673
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r0,10(%r1,%r3)
	sth	%r0,10(%r1,%r2)
	lh	%r0,12(%r1,%r3)
	sth	%r0,12(%r1,%r2)
	lh	%r0,14(%r1,%r3)
	sth	%r0,14(%r1,%r2)
.L2537:
	aghi	%r1,16
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r0,10(%r1,%r3)
	sth	%r0,10(%r1,%r2)
	lh	%r0,12(%r1,%r3)
	sth	%r0,12(%r1,%r2)
	lh	%r0,14(%r1,%r3)
	sth	%r0,14(%r1,%r2)
	brctg	%r5,.L2537
	j	.L2530
.L2675:
	lgr	%r7,%r1
	aghi	%r7,-1
	lgr	%r9,%r1
	ic	%r5,0(%r1,%r3)
	aghi	%r9,-2
	stc	%r5,0(%r1,%r2)
	lgr	%r11,%r1
	ic	%r8,0(%r7,%r3)
	aghi	%r11,-3
	stc	%r8,0(%r7,%r2)
	lgr	%r7,%r1
	aghi	%r7,-4
	ic	%r10,0(%r9,%r3)
	lgr	%r8,%r1
	stc	%r10,0(%r9,%r2)
	aghi	%r8,-5
	ic	%r12,0(%r11,%r3)
	lgr	%r9,%r1
	stc	%r12,0(%r11,%r2)
	aghi	%r9,-6
	ic	%r0,0(%r7,%r3)
	lgr	%r11,%r1
	stc	%r0,0(%r7,%r2)
	aghi	%r11,-7
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	aghi	%r1,-8
	brctg	%r4,.L2675
	j	.L2527
.L2678:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	aghi	%r1,-1
	j	.L2620
.L2673:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	lh	%r7,2(%r1,%r3)
	sth	%r7,2(%r1,%r2)
	lh	%r12,4(%r1,%r3)
	sth	%r12,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	lh	%r9,8(%r1,%r3)
	sth	%r9,8(%r1,%r2)
	lh	%r8,10(%r1,%r3)
	sth	%r8,10(%r1,%r2)
	lh	%r11,12(%r1,%r3)
	sth	%r11,12(%r1,%r2)
	lh	%r10,14(%r1,%r3)
	sth	%r10,14(%r1,%r2)
	aghi	%r1,16
	brctg	%r5,.L2673
	j	.L2530
	.section	.rodata
	.align	8
.L2679:
.L2680:
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
	stmg	%r7,%r13,104(%r15)
	.cfi_offset 7, -56
	.cfi_offset 8, -48
	.cfi_offset 9, -40
	.cfi_offset 10, -32
	.cfi_offset 11, -24
	.cfi_offset 12, -16
	.cfi_offset 13, -8
	larl	%r13,.L2929
	lr	%r11,%r4
	nill	%r11,65532
	lr	%r12,%r4
	clgr	%r2,%r3
	srl	%r12,2
	jl	.L2686
	la	%r1,0(%r4,%r3)
	clgr	%r2,%r1
	jle	.L2926
.L2686:
	ltr	%r12,%r12
	je	.L2927
	lr	%r1,%r12
	ahi	%r1,-1
	lhi	%r7,8
	clr	%r1,%r7
	jle	.L2688
	lgr	%r0,%r2
	ogr	%r0,%r3
	lghi	%r8,7
	ngr	%r0,%r8
	aghi	%r0,-1
	ltgr	%r0,%r0
	jhe	.L2688
	la	%r5,4(%r3)
	cgr	%r2,%r5
	je	.L2688
	lg	%r9,.L2930-.L2929(%r13)
	ngr	%r9,%r4
	lgr	%r10,%r9
	aghi	%r10,-8
	srlg	%r7,%r10,3
	aghi	%r7,1
	lghi	%r8,7
	lr	%r0,%r4
	ngr	%r8,%r7
	srl	%r0,3
	lghi	%r1,0
	je	.L2793
	cghi	%r8,1
	je	.L2829
	cghi	%r8,2
	je	.L2830
	cghi	%r8,3
	je	.L2831
	cghi	%r8,4
	je	.L2832
	cghi	%r8,5
	je	.L2833
	cghi	%r8,6
	je	.L2834
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
.L2834:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2833:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2832:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
.L2831:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L2830:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2829:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgr	%r9,%r1
	je	.L2900
.L2793:
	srlg	%r5,%r7,3
	cghi	%r5,2
	jle	.L2923
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
.L2689:
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
	brctg	%r5,.L2689
.L2900:
	sll	%r0,1
	cr	%r12,%r0
	je	.L2692
	llgfr	%r12,%r0
	sllg	%r1,%r12,2
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L2692:
	clr	%r11,%r4
	jhe	.L2681
	lr	%r9,%r4
	sr	%r9,%r11
	lr	%r1,%r9
	ahi	%r1,-1
	lhi	%r5,14
	clr	%r1,%r5
	llgfr	%r10,%r11
	jle	.L2684
	lgr	%r5,%r2
	algfr	%r5,%r11
	lgr	%r12,%r3
	la	%r0,1(%r10,%r3)
	lgr	%r7,%r5
	algfr	%r12,%r11
	sgr	%r7,%r0
	lghi	%r8,6
	clgr	%r7,%r8
	jle	.L2684
	lgr	%r1,%r12
	ogr	%r1,%r5
	lghi	%r0,7
	ngr	%r1,%r0
	aghi	%r1,-1
	ltgr	%r1,%r1
	jhe	.L2684
	lr	%r10,%r9
	srl	%r10,3
	llgfr	%r7,%r10
	sllg	%r10,%r7,3
	lgr	%r8,%r10
	aghi	%r8,-8
	srlg	%r0,%r8,3
	aghi	%r0,1
	lghi	%r7,7
	ngr	%r7,%r0
	lghi	%r1,0
	je	.L2751
	cghi	%r7,1
	je	.L2841
	cghi	%r7,2
	je	.L2842
	cghi	%r7,3
	je	.L2843
	cghi	%r7,4
	je	.L2844
	cghi	%r7,5
	je	.L2845
	cghi	%r7,6
	je	.L2846
	lg	%r1,0(%r12)
	stg	%r1,0(%r5)
	lghi	%r1,8
.L2846:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2845:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
.L2844:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2843:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
.L2842:
	lg	%r8,0(%r1,%r12)
	stg	%r8,0(%r1,%r5)
	aghi	%r1,8
.L2841:
	lg	%r7,0(%r1,%r12)
	stg	%r7,0(%r1,%r5)
	aghi	%r1,8
	cgr	%r10,%r1
	je	.L2899
.L2751:
	srlg	%r0,%r0,3
	cghi	%r0,2
	jle	.L2921
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
.L2693:
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
	brctg	%r0,.L2693
.L2899:
	lr	%r1,%r9
	nill	%r1,65528
	ar	%r1,%r11
	tmll	%r9,7
	je	.L2681
	llgfr	%r11,%r1
	lr	%r9,%r1
	ahi	%r9,1
	clr	%r9,%r4
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	jhe	.L2681
	llgfr	%r5,%r9
	lr	%r0,%r1
	ahi	%r0,2
	clr	%r0,%r4
	ic	%r7,0(%r5,%r3)
	stc	%r7,0(%r5,%r2)
	jhe	.L2681
	llgfr	%r10,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r8,0(%r10,%r3)
	stc	%r8,0(%r10,%r2)
	jhe	.L2681
	llgfr	%r11,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r9,0(%r11,%r3)
	stc	%r9,0(%r11,%r2)
	jhe	.L2681
	llgfr	%r5,%r0
	ahi	%r0,1
	clr	%r0,%r4
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	jhe	.L2681
	llgfr	%r7,%r0
	ahi	%r1,6
	clr	%r1,%r4
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	jhe	.L2681
	llgfr	%r4,%r1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2681:
	lmg	%r7,%r13,104(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2926:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	ltgr	%r4,%r4
	llgfr	%r1,%r0
	je	.L2681
	lgr	%r4,%r1
	aghi	%r4,1
	lghi	%r5,7
	ngr	%r5,%r4
	je	.L2814
	cghi	%r5,1
	je	.L2823
	cghi	%r5,2
	je	.L2824
	cghi	%r5,3
	je	.L2825
	cghi	%r5,4
	je	.L2826
	cghi	%r5,5
	je	.L2827
	cghi	%r5,6
	jne	.L2928
.L2828:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,-1
.L2827:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2826:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L2825:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L2824:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
.L2823:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
	cghi	%r1,-1
	je	.L2681
.L2814:
	srlg	%r4,%r4,3
	cghi	%r4,2
	jle	.L2924
	aghi	%r4,-1
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2697:
	aghi	%r1,-8
	lgr	%r5,%r1
	aghi	%r5,-7
	lgr	%r12,%r1
	aghi	%r12,-6
	lgr	%r11,%r1
	aghi	%r11,-5
	lgr	%r10,%r1
	aghi	%r10,-4
	lgr	%r9,%r1
	aghi	%r9,-3
	lgr	%r8,%r1
	aghi	%r8,-2
	lgr	%r7,%r1
	aghi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brctg	%r4,.L2697
	j	.L2681
.L2921:
	lg	%r10,0(%r1,%r12)
	stg	%r10,0(%r1,%r5)
	lg	%r8,8(%r1,%r12)
	stg	%r8,8(%r1,%r5)
	lg	%r7,16(%r1,%r12)
	stg	%r7,16(%r1,%r5)
	lg	%r10,24(%r1,%r12)
	stg	%r10,24(%r1,%r5)
	lg	%r8,32(%r1,%r12)
	stg	%r8,32(%r1,%r5)
	lg	%r7,40(%r1,%r12)
	stg	%r7,40(%r1,%r5)
	lg	%r10,48(%r1,%r12)
	stg	%r10,48(%r1,%r5)
	lg	%r8,56(%r1,%r12)
	stg	%r8,56(%r1,%r5)
	aghi	%r1,64
	brctg	%r0,.L2921
	j	.L2899
.L2923:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	lg	%r7,8(%r1,%r3)
	stg	%r7,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r8,24(%r1,%r3)
	stg	%r8,24(%r1,%r2)
	lg	%r9,32(%r1,%r3)
	stg	%r9,32(%r1,%r2)
	lg	%r7,40(%r1,%r3)
	stg	%r7,40(%r1,%r2)
	lg	%r10,48(%r1,%r3)
	stg	%r10,48(%r1,%r2)
	lg	%r8,56(%r1,%r3)
	stg	%r8,56(%r1,%r2)
	aghi	%r1,64
	brctg	%r5,.L2923
	j	.L2900
.L2688:
	llgfr	%r9,%r12
	sllg	%r7,%r9,2
	lgr	%r10,%r7
	aghi	%r10,-4
	srlg	%r8,%r10,2
	aghi	%r8,1
	lghi	%r0,7
	ngr	%r0,%r8
	lghi	%r1,0
	je	.L2772
	cghi	%r0,1
	je	.L2835
	cghi	%r0,2
	je	.L2836
	cghi	%r0,3
	je	.L2837
	cghi	%r0,4
	je	.L2838
	cghi	%r0,5
	je	.L2839
	cghi	%r0,6
	je	.L2840
	l	%r12,0(%r3)
	st	%r12,0(%r2)
	lghi	%r1,4
.L2840:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
.L2839:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	aghi	%r1,4
.L2838:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	aghi	%r1,4
.L2837:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,4
.L2836:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L2835:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgr	%r1,%r7
	je	.L2692
.L2772:
	srlg	%r5,%r8,3
	cghi	%r5,2
	jle	.L2922
	aghi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
.L2691:
	aghi	%r1,32
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
	brctg	%r5,.L2691
	j	.L2692
.L2927:
	ltgr	%r4,%r4
	llgfr	%r10,%r11
	je	.L2681
.L2684:
	lghi	%r8,-1
	xgr	%r8,%r10
	ar	%r8,%r4
	lhi	%r11,7
	lgr	%r1,%r10
	nr	%r11,%r8
	aghi	%r1,1
	ic	%r9,0(%r10,%r3)
	stc	%r9,0(%r10,%r2)
	clr	%r4,%r1
	jle	.L2681
	ltr	%r11,%r11
	je	.L2730
	chi	%r11,1
	je	.L2848
	chi	%r11,2
	je	.L2849
	chi	%r11,3
	je	.L2850
	chi	%r11,4
	je	.L2851
	chi	%r11,5
	je	.L2852
	chi	%r11,6
	je	.L2853
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lgr	%r1,%r10
	aghi	%r1,2
.L2853:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
.L2852:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,1
.L2851:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	aghi	%r1,1
.L2850:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,1
.L2849:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,1
.L2848:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,1
	clr	%r4,%r1
	jle	.L2681
.L2730:
	lr	%r4,%r8
	srl	%r4,3
	chi	%r4,2
	jle	.L2920
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
.L2695:
	aghi	%r1,8
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
	brct	%r4,.L2695
	j	.L2681
.L2924:
	lgr	%r7,%r1
	aghi	%r7,-1
	lgr	%r9,%r1
	ic	%r5,0(%r1,%r3)
	aghi	%r9,-2
	stc	%r5,0(%r1,%r2)
	lgr	%r11,%r1
	ic	%r8,0(%r7,%r3)
	aghi	%r11,-3
	stc	%r8,0(%r7,%r2)
	lgr	%r7,%r1
	aghi	%r7,-4
	ic	%r10,0(%r9,%r3)
	lgr	%r8,%r1
	stc	%r10,0(%r9,%r2)
	aghi	%r8,-5
	ic	%r12,0(%r11,%r3)
	lgr	%r9,%r1
	stc	%r12,0(%r11,%r2)
	aghi	%r9,-6
	ic	%r0,0(%r7,%r3)
	lgr	%r11,%r1
	stc	%r0,0(%r7,%r2)
	aghi	%r11,-7
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	aghi	%r1,-8
	brctg	%r4,.L2924
	j	.L2681
.L2928:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	aghi	%r1,-1
	j	.L2828
.L2922:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r9,8(%r1,%r3)
	st	%r9,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r12,20(%r1,%r3)
	st	%r12,20(%r1,%r2)
	l	%r7,24(%r1,%r3)
	st	%r7,24(%r1,%r2)
	l	%r8,28(%r1,%r3)
	st	%r8,28(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2922
	j	.L2692
.L2920:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r10,2(%r1,%r3)
	stc	%r10,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ic	%r7,4(%r1,%r3)
	stc	%r7,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	stc	%r0,5(%r1,%r2)
	ic	%r11,6(%r1,%r3)
	stc	%r11,6(%r1,%r2)
	ic	%r9,7(%r1,%r3)
	stc	%r9,7(%r1,%r2)
	aghi	%r1,8
	brct	%r4,.L2920
	j	.L2681
	.section	.rodata
	.align	8
.L2929:
.L2930:
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
	larl	%r5,.L2940
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2938
	ld	%f4,.L2941-.L2940(%r5)
	ld	%f6,.L2941-.L2940+8(%r5)
	axbr	%f0,%f4
.L2938:
	ldxbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2940:
.L2941:
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
	larl	%r5,.L2945
	ltgr	%r2,%r2
	cxgbr	%f0,%r2
	jhe	.L2943
	ld	%f4,.L2946-.L2945(%r5)
	ld	%f6,.L2946-.L2945+8(%r5)
	axbr	%f0,%f4
.L2943:
	lexbr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2945:
.L2946:
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
	jne	.L2952
	lr	%r2,%r1
	sra	%r2,14
	jne	.L2951
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2953
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2954
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2955
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2956
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2957
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2958
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2959
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2960
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2961
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2962
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2963
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2964
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2965
	ltgr	%r1,%r1
	lhi	%r2,16
	jne	.L2968
.L2951:
	lghi	%r1,31
	ngr	%r2,%r1
	br	%r14
.L2952:
	lhi	%r2,0
	j	.L2951
.L2963:
	lhi	%r2,12
	j	.L2951
.L2968:
	lhi	%r2,15
	j	.L2951
.L2953:
	lhi	%r2,2
	j	.L2951
.L2954:
	lhi	%r2,3
	j	.L2951
.L2955:
	lhi	%r2,4
	j	.L2951
.L2956:
	lhi	%r2,5
	j	.L2951
.L2957:
	lhi	%r2,6
	j	.L2951
.L2958:
	lhi	%r2,7
	j	.L2951
.L2959:
	lhi	%r2,8
	j	.L2951
.L2960:
	lhi	%r2,9
	j	.L2951
.L2961:
	lhi	%r2,10
	j	.L2951
.L2962:
	lhi	%r2,11
	j	.L2951
.L2964:
	lhi	%r2,13
	j	.L2951
.L2965:
	lhi	%r2,14
	j	.L2951
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
	jne	.L2973
	tmll	%r2,2
	jne	.L2974
	tmll	%r2,4
	jne	.L2975
	tmll	%r2,8
	jne	.L2976
	tmll	%r2,16
	jne	.L2977
	tmll	%r2,32
	jne	.L2978
	tmll	%r2,64
	jne	.L2979
	tmll	%r2,128
	jne	.L2980
	tmll	%r2,256
	jne	.L2981
	tmll	%r2,512
	jne	.L2982
	tmll	%r2,1024
	jne	.L2983
	tmll	%r2,2048
	jne	.L2984
	tmll	%r2,4096
	jne	.L2985
	tmll	%r2,8192
	jne	.L2986
	tmll	%r2,16384
	jne	.L2987
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	jne	.L2990
.L2972:
	lghi	%r0,31
	ngr	%r2,%r0
	br	%r14
.L2973:
	lhi	%r2,0
	j	.L2972
.L2974:
	lhi	%r2,1
	j	.L2972
.L2985:
	lhi	%r2,12
	j	.L2972
.L2975:
	lhi	%r2,2
	j	.L2972
.L2976:
	lhi	%r2,3
	j	.L2972
.L2977:
	lhi	%r2,4
	j	.L2972
.L2978:
	lhi	%r2,5
	j	.L2972
.L2979:
	lhi	%r2,6
	j	.L2972
.L2980:
	lhi	%r2,7
	j	.L2972
.L2981:
	lhi	%r2,8
	j	.L2972
.L2982:
	lhi	%r2,9
	j	.L2972
.L2983:
	lhi	%r2,10
	j	.L2972
.L2984:
	lhi	%r2,11
	j	.L2972
.L2986:
	lhi	%r2,13
	j	.L2972
.L2987:
	lhi	%r2,14
	j	.L2972
.L2990:
	lhi	%r2,15
	j	.L2972
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L3000
	keb	%f0,.L3001-.L3000(%r5)
	jhe	.L2999
	cgebr	%r2,5,%f0
	br	%r14
.L2999:
	seb	%f0,.L3001-.L3000(%r5)
	cgebr	%r2,5,%f0
	llill	%r1,32768
	agr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L3000:
.L3001:
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
	lr	%r0,%r1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	sra	%r0,2
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,3
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,5
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,6
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,7
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,8
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,9
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,10
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,11
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,12
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,13
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,14
	lhi	%r5,1
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
	lr	%r0,%r1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	sra	%r0,2
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,3
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,5
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,6
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,7
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,8
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,9
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,10
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,11
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,12
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,13
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,14
	lhi	%r5,1
	ar	%r2,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	sra	%r1,15
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
	je	.L3007
.L3008:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	ltr	%r4,%r4
	sll	%r3,1
	jne	.L3008
.L3007:
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
	jne	.L3018
	j	.L3013
.L3014:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	sll	%r4,1
	ar	%r2,%r0
	srlg	%r3,%r3,1
	llgfr	%r4,%r4
.L3018:
	ltgr	%r3,%r3
	jne	.L3014
.L3013:
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
	jhe	.L3066
	stmg	%r11,%r12,144(%r15)
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,32
	lhi	%r1,1
	lhi	%r11,4
.L3021:
	lr	%r0,%r3
	ltr	%r3,%r3
	sll	%r0,1
	jl	.L3026
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r12
	lr	%r0,%r3
	clr	%r2,%r12
	sll	%r1,1
	sll	%r0,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	llgfr	%r3,%r0
	lr	%r12,%r3
	clr	%r2,%r0
	sll	%r1,1
	sll	%r12,1
	jle	.L3023
	ltr	%r3,%r3
	jl	.L3026
	clr	%r2,%r12
	sll	%r1,1
	llgfr	%r3,%r12
	jle	.L3023
	ahi	%r5,-8
	brct	%r11,.L3021
.L3024:
	ltgr	%r4,%r4
	je	.L3032
	lr	%r5,%r2
.L3032:
	llgfr	%r2,%r5
	lmg	%r11,%r12,144(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3023:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L3036
.L3026:
	lhi	%r5,0
	j	.L3031
.L3067:
	lr	%r11,%r1
.L3030:
	or	%r5,%r11
	srl	%r1,1
	ltr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L3024
.L3031:
	lr	%r11,%r2
	sr	%r11,%r3
	lr	%r0,%r2
	slr	%r0,%r3
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	je	.L3028
	lr	%r2,%r11
.L3028:
	ltr	%r12,%r12
	llgfr	%r2,%r2
	jne	.L3067
	lhi	%r11,0
	j	.L3030
.L3066:
	.cfi_restore 11
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r5,%r2
	slr	%r5,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3034
	lr	%r1,%r2
.L3034:
	lhi	%r0,255
	nr	%r3,%r0
	ltgr	%r4,%r4
	llgfr	%r2,%r1
	je	.L3063
	lr	%r3,%r2
.L3063:
	llgfr	%r2,%r3
	br	%r14
.L3036:
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r5,0
	j	.L3024
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
	jl	.L3072
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3072:
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
	jl	.L3077
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L3077:
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
	ltr	%r3,%r3
	jl	.L3097
	ltgr	%r3,%r3
	je	.L3089
	lhi	%r0,0
.L3085:
	lhi	%r5,32
	lhi	%r4,0
	j	.L3088
.L3098:
	lr	%r1,%r5
	ahi	%r1,-1
	tml	%r1,255
	lr	%r5,%r1
	je	.L3087
.L3088:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r2
	ar	%r4,%r1
	sll	%r2,1
	srag	%r3,%r3,1
	lgfr	%r2,%r2
	jne	.L3098
.L3087:
	ltr	%r0,%r0
	je	.L3086
	lcr	%r4,%r4
.L3086:
	lgfr	%r2,%r4
	br	%r14
.L3097:
	lcr	%r3,%r3
	lgfr	%r3,%r3
	lhi	%r0,1
	j	.L3085
.L3089:
	lhi	%r4,0
	j	.L3086
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB129:
	.cfi_startproc
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	ltgr	%r2,%r2
	jl	.L3145
	lhi	%r1,1
	lhi	%r12,0
.L3101:
	ltgr	%r3,%r3
	jhe	.L3102
	lcgr	%r3,%r3
	lr	%r12,%r1
.L3102:
	clr	%r2,%r3
	lr	%r4,%r2
	lr	%r1,%r3
	jle	.L3146
	lhi	%r3,1
	lhi	%r0,4
.L3103:
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	ltr	%r1,%r1
	jl	.L3108
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3105
	brct	%r0,.L3103
.L3119:
	lghi	%r2,0
	j	.L3106
.L3105:
	ltr	%r3,%r3
	je	.L3119
.L3108:
	lhi	%r2,0
	j	.L3113
.L3147:
	lr	%r0,%r3
	or	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	srl	%r1,1
	je	.L3115
.L3113:
	lr	%r0,%r4
	lr	%r5,%r4
	sr	%r0,%r1
	slr	%r5,%r1
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3110
	lr	%r4,%r0
.L3110:
	ltr	%r5,%r5
	jne	.L3147
	lhi	%r0,0
	or	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	srl	%r1,1
	jne	.L3113
.L3115:
	llgfr	%r2,%r2
.L3106:
	ltr	%r12,%r12
	je	.L3100
	lcgr	%r2,%r2
.L3100:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3145:
	.cfi_restore_state
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L3101
.L3146:
	slr	%r2,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L3115
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
	jl	.L3194
	lhi	%r5,0
.L3150:
	lpgr	%r3,%r3
	clr	%r4,%r3
	lr	%r1,%r3
	llgfr	%r2,%r4
	jle	.L3195
	lhi	%r3,1
	lhi	%r4,4
.L3151:
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	ltr	%r1,%r1
	jl	.L3190
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L3193
	brct	%r4,.L3151
	ltr	%r5,%r5
	ber	%r14
.L3196:
	lcgr	%r2,%r2
	br	%r14
.L3190:
	lr	%r0,%r2
	sr	%r0,%r1
	clr	%r2,%r1
	jl	.L3158
	llgfr	%r2,%r0
.L3158:
	srl	%r3,1
	srl	%r1,1
.L3193:
	ltr	%r3,%r3
	jne	.L3190
	ltr	%r5,%r5
	ber	%r14
	j	.L3196
.L3194:
	lcgr	%r4,%r4
	lhi	%r5,1
	j	.L3150
.L3195:
	lr	%r0,%r4
	sr	%r0,%r3
	clr	%r4,%r3
	jl	.L3161
	ltr	%r5,%r5
	llgfr	%r2,%r0
	ber	%r14
	j	.L3196
.L3161:
	ltr	%r5,%r5
	llgfr	%r2,%r4
	ber	%r14
	j	.L3196
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
	jhe	.L3361
	tmll	%r3,32768
	jne	.L3203
	stmg	%r10,%r12,136(%r15)
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	sllg	%r10,%r3,49
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3276
	tmll	%r1,32768
	jne	.L3276
	sllg	%r11,%r3,50
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3278
	tmll	%r1,32768
	jne	.L3278
	sllg	%r12,%r3,51
	srlg	%r1,%r12,48
	clr	%r2,%r1
	jle	.L3280
	tmll	%r1,32768
	jne	.L3280
	sllg	%r1,%r3,52
	srlg	%r1,%r1,48
	clr	%r2,%r1
	jle	.L3282
	tmll	%r1,32768
	jne	.L3282
	sllg	%r0,%r3,53
	srlg	%r1,%r0,48
	clr	%r2,%r1
	jle	.L3284
	tmll	%r1,32768
	jne	.L3284
	sllg	%r5,%r3,54
	srlg	%r1,%r5,48
	clr	%r2,%r1
	jle	.L3286
	tmll	%r1,32768
	jne	.L3286
	sllg	%r10,%r3,55
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3288
	tmll	%r1,32768
	jne	.L3288
	sllg	%r11,%r3,56
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3290
	tmll	%r1,32768
	jne	.L3290
	sllg	%r12,%r3,57
	srlg	%r1,%r12,48
	clr	%r2,%r1
	jle	.L3292
	tmll	%r1,32768
	jne	.L3292
	sllg	%r1,%r3,58
	srlg	%r1,%r1,48
	clr	%r2,%r1
	jle	.L3294
	tmll	%r1,32768
	jne	.L3294
	sllg	%r0,%r3,59
	srlg	%r1,%r0,48
	clr	%r2,%r1
	jle	.L3296
	tmll	%r1,32768
	jne	.L3296
	sllg	%r5,%r3,60
	srlg	%r1,%r5,48
	clr	%r2,%r1
	jle	.L3298
	tmll	%r1,32768
	jne	.L3298
	sllg	%r10,%r3,61
	srlg	%r1,%r10,48
	clr	%r2,%r1
	jle	.L3300
	tmll	%r1,32768
	jne	.L3300
	sllg	%r11,%r3,62
	srlg	%r1,%r11,48
	clr	%r2,%r1
	jle	.L3302
	tmll	%r1,32768
	jne	.L3302
	sllg	%r12,%r3,63
	srlg	%r0,%r12,48
	clr	%r2,%r0
	jle	.L3303
	ltgr	%r0,%r0
	lhi	%r5,0
	jne	.L3362
.L3206:
	ltgr	%r4,%r4
	je	.L3265
	lr	%r5,%r2
.L3265:
	sllg	%r4,%r5,48
	srlg	%r2,%r4,48
	lmg	%r10,%r12,136(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3276:
	.cfi_restore_state
	lhi	%r3,2
.L3205:
	lr	%r10,%r2
	sr	%r10,%r1
	llill	%r5,65535
	ngr	%r10,%r5
	clr	%r2,%r1
	jhe	.L3272
	lr	%r10,%r2
.L3272:
	sllg	%r11,%r10,48
	clr	%r2,%r1
	srlg	%r0,%r11,48
	jl	.L3273
	lr	%r12,%r3
.L3274:
	sllg	%r2,%r3,48
	srlg	%r11,%r1,1
	srlg	%r5,%r2,49
	lr	%r2,%r0
	sr	%r2,%r11
	llill	%r10,65535
	ngr	%r2,%r10
	clr	%r0,%r11
	jhe	.L3208
	lr	%r2,%r0
.L3208:
	sllg	%r10,%r2,48
	clr	%r0,%r11
	srlg	%r2,%r10,48
	jhe	.L3210
	lhi	%r5,0
.L3210:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r5,%r12
	srl	%r10,2
	ltr	%r10,%r10
	lr	%r12,%r10
	srlg	%r11,%r1,2
	je	.L3206
	lr	%r0,%r2
	sr	%r0,%r11
	llill	%r10,65535
	ngr	%r0,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3212
	lr	%r0,%r2
.L3212:
	sllg	%r2,%r0,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3213
	lr	%r0,%r12
.L3214:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,3
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,3
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3216
	lr	%r5,%r2
.L3216:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3217
	lr	%r10,%r12
.L3218:
	lr	%r12,%r3
	nilh	%r12,0
	or	%r0,%r10
	lr	%r10,%r12
	srl	%r10,4
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,4
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3220
	lr	%r5,%r2
.L3220:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3222
	lhi	%r12,0
.L3222:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r0
	srl	%r10,5
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r11,%r10
	srlg	%r0,%r1,5
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r0
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3224
	lr	%r2,%r5
.L3224:
	sllg	%r2,%r2,48
	ltr	%r0,%r0
	srlg	%r2,%r2,48
	jne	.L3226
	lhi	%r11,0
.L3226:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r11
	srl	%r10,6
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r0,%r10
	srlg	%r11,%r1,6
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3228
	lr	%r2,%r5
.L3228:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3230
	lhi	%r0,0
.L3230:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r12
	srl	%r10,7
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r11,%r10
	srlg	%r12,%r1,7
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r12
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3232
	lr	%r5,%r2
.L3232:
	sllg	%r2,%r5,48
	ltr	%r12,%r12
	srlg	%r2,%r2,48
	jne	.L3234
	lhi	%r11,0
.L3234:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r11
	srl	%r10,8
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,8
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3236
	lr	%r2,%r5
.L3236:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3237
	lr	%r5,%r12
.L3238:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,9
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,9
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3240
	lr	%r2,%r5
.L3240:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3241
	lr	%r5,%r12
.L3242:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,10
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,10
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3244
	lr	%r2,%r5
.L3244:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3245
	lr	%r5,%r12
.L3246:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r0,%r5
	srl	%r10,11
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,11
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3248
	lr	%r5,%r2
.L3248:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	je	.L3249
	lr	%r10,%r12
.L3250:
	lr	%r12,%r3
	nilh	%r12,0
	or	%r0,%r10
	lr	%r10,%r12
	srl	%r10,12
	ltr	%r10,%r10
	lr	%r5,%r0
	lr	%r12,%r10
	srlg	%r11,%r1,12
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	je	.L3252
	lr	%r2,%r5
.L3252:
	sllg	%r2,%r2,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3254
	lhi	%r12,0
.L3254:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r0
	srl	%r10,13
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r11,%r10
	srlg	%r0,%r1,13
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r0
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3256
	lr	%r5,%r2
.L3256:
	sllg	%r2,%r5,48
	ltr	%r0,%r0
	srlg	%r2,%r2,48
	jne	.L3258
	lhi	%r11,0
.L3258:
	lr	%r10,%r3
	nilh	%r10,0
	or	%r12,%r11
	srl	%r10,14
	ltr	%r10,%r10
	lr	%r5,%r12
	lr	%r0,%r10
	srlg	%r11,%r1,14
	je	.L3206
	lr	%r5,%r2
	sr	%r5,%r11
	llill	%r10,65535
	ngr	%r5,%r10
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3260
	lr	%r5,%r2
.L3260:
	sllg	%r2,%r5,48
	ltr	%r11,%r11
	srlg	%r2,%r2,48
	jne	.L3262
	lhi	%r0,0
.L3262:
	or	%r0,%r12
	nilh	%r3,0
	chi	%r3,16384
	srlg	%r1,%r1,15
	lr	%r5,%r0
	je	.L3206
	lr	%r3,%r2
	sr	%r3,%r1
	llill	%r12,65535
	ngr	%r3,%r12
	lr	%r10,%r2
	slr	%r10,%r1
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	jne	.L3264
	lr	%r3,%r2
.L3264:
	sllg	%r11,%r3,48
	srlg	%r2,%r11,48
	or	%r5,%r0
	j	.L3206
.L3213:
	lhi	%r0,0
	j	.L3214
.L3217:
	lhi	%r10,0
	j	.L3218
.L3273:
	lhi	%r12,0
	j	.L3274
.L3237:
	lhi	%r5,0
	j	.L3238
.L3241:
	lhi	%r5,0
	j	.L3242
.L3245:
	lhi	%r5,0
	j	.L3246
.L3249:
	lhi	%r10,0
	j	.L3250
.L3278:
	lhi	%r3,4
	j	.L3205
.L3280:
	lhi	%r3,8
	j	.L3205
.L3282:
	lhi	%r3,16
	j	.L3205
.L3292:
	lhi	%r3,512
	j	.L3205
.L3284:
	lhi	%r3,32
	j	.L3205
.L3286:
	lhi	%r3,64
	j	.L3205
.L3288:
	lhi	%r3,128
	j	.L3205
.L3290:
	lhi	%r3,256
	j	.L3205
.L3361:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lgr	%r5,%r3
	xgr	%r5,%r2
	lr	%r1,%r2
	sr	%r1,%r3
	aghi	%r5,-1
	llill	%r0,65535
	lgr	%r3,%r5
	ngr	%r1,%r0
	ltgr	%r3,%r3
	srlg	%r5,%r5,63
	jl	.L3201
	lr	%r1,%r2
.L3201:
	sllg	%r2,%r1,48
	lhi	%r0,255
	srlg	%r2,%r2,48
	nr	%r5,%r0
.L3352:
	ltgr	%r4,%r4
	je	.L3354
	lr	%r5,%r2
.L3354:
	sllg	%r4,%r5,48
	srlg	%r2,%r4,48
	br	%r14
.L3294:
	.cfi_offset 10, -24
	.cfi_offset 11, -16
	.cfi_offset 12, -8
	lhi	%r3,1024
	j	.L3205
.L3296:
	lhi	%r3,2048
	j	.L3205
.L3298:
	lhi	%r3,4096
	j	.L3205
.L3300:
	lhi	%r3,8192
	j	.L3205
.L3302:
	lhi	%r3,16384
	j	.L3205
.L3362:
	lhi	%r3,-32768
	llill	%r1,32768
	j	.L3205
.L3303:
	llill	%r1,32768
	lhi	%r3,-32768
	j	.L3205
.L3203:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	llill	%r5,65535
	sr	%r2,%r3
	ngr	%r2,%r5
	lhi	%r5,1
	j	.L3352
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	clgr	%r3,%r2
	lgr	%r12,%r2
	jhe	.L3407
	lghi	%r1,1
	lhi	%r5,8
.L3365:
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	llilh	%r2,32768
	ngr	%r2,%r3
	jne	.L3370
	sllg	%r3,%r3,1
	clgr	%r12,%r3
	sllg	%r1,%r1,1
	jle	.L3367
	brct	%r5,.L3365
.L3368:
	ltgr	%r4,%r4
	je	.L3364
	lgr	%r2,%r12
.L3364:
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3367:
	.cfi_restore_state
	ltgr	%r1,%r1
	je	.L3368
.L3370:
	lghi	%r2,0
	j	.L3375
.L3408:
	lgr	%r5,%r1
.L3374:
	ogr	%r2,%r5
	srlg	%r1,%r1,1
	ltgr	%r1,%r1
	srlg	%r3,%r3,1
	je	.L3368
.L3375:
	lgr	%r5,%r12
	lgr	%r0,%r12
	sgr	%r5,%r3
	slgr	%r0,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3372
	lgr	%r12,%r5
.L3372:
	ltr	%r0,%r0
	jne	.L3408
	lghi	%r5,0
	j	.L3374
.L3407:
	sgr	%r2,%r3
	lgr	%r1,%r12
	slgr	%r1,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3378
	lgr	%r12,%r2
.L3378:
	lghi	%r2,1
	ngr	%r2,%r0
	j	.L3368
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
	je	.L3411
	lr	%r1,%r2
	sll	%r1,4064(%r3)
	lhi	%r2,0
	sllg	%r0,%r1,32
	llgfr	%r2,%r2
	ogr	%r2,%r0
	br	%r14
.L3411:
	ltgr	%r3,%r3
	ber	%r14
	lhi	%r5,32
	srag	%r4,%r2,32
	sr	%r5,%r3
	lr	%r1,%r2
	srl	%r1,0(%r5)
	sll	%r4,0(%r3)
	or	%r1,%r4
	sll	%r2,0(%r3)
	sllg	%r0,%r1,32
	llgfr	%r2,%r2
	ogr	%r2,%r0
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
	lg	%r5,0(%r3)
	lg	%r1,8(%r3)
	je	.L3417
	sllg	%r5,%r1,4032(%r4)
	lghi	%r1,0
.L3419:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3417:
	ltgr	%r4,%r4
	je	.L3419
	lhi	%r3,64
	sr	%r3,%r4
	sllg	%r0,%r5,0(%r4)
	srlg	%r5,%r1,0(%r3)
	ogr	%r5,%r0
	sllg	%r1,%r1,0(%r4)
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
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
	je	.L3425
	srag	%r1,%r2,32
	lr	%r2,%r1
	sra	%r2,4064(%r3)
	sra	%r1,31
	lr	%r4,%r2
	sllg	%r2,%r1,32
	lr	%r2,%r4
	br	%r14
.L3425:
	ltgr	%r3,%r3
	ber	%r14
	srag	%r1,%r2,32
	lhi	%r5,32
	sr	%r5,%r3
	lr	%r4,%r1
	srl	%r2,0(%r3)
	sll	%r4,0(%r5)
	sra	%r1,0(%r3)
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
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	je	.L3431
	srag	%r3,%r1,4032(%r4)
	srag	%r1,%r1,63
.L3433:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L3431:
	ltgr	%r4,%r4
	je	.L3433
	lhi	%r5,64
	sr	%r5,%r4
	srlg	%r0,%r3,0(%r4)
	sllg	%r3,%r1,0(%r5)
	ogr	%r3,%r0
	srag	%r1,%r1,0(%r4)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
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
	lgr	%r1,%r2
	llill	%r2,65535
	clr	%r1,%r2
	lhi	%r0,0
	slbr	%r0,%r0
	stg	%r12,152(%r15)
	.cfi_offset 12, -8
	lcr	%r12,%r0
	sll	%r12,4
	lhi	%r3,16
	sr	%r3,%r12
	srl	%r1,0(%r3)
	llill	%r5,65280
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,3
	lhi	%r4,8
	sr	%r4,%r5
	srl	%r1,0(%r4)
	lhi	%r0,240
	nr	%r0,%r1
	ahi	%r0,-1
	srl	%r0,31
	sll	%r0,2
	lhi	%r2,4
	sr	%r2,%r0
	srl	%r1,0(%r2)
	lhi	%r3,12
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	lhi	%r4,2
	ar	%r5,%r12
	sll	%r3,1
	lr	%r12,%r4
	sr	%r12,%r3
	ar	%r0,%r5
	srl	%r1,0(%r12)
	tmll	%r1,2
	jne	.L3443
	sr	%r4,%r1
	ar	%r3,%r0
	ar	%r4,%r3
	lgfr	%r2,%r4
	lg	%r12,152(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3443:
	.cfi_restore_state
	lhi	%r4,0
	ar	%r3,%r0
	ar	%r4,%r3
	lgfr	%r2,%r4
	lg	%r12,152(%r15)
	.cfi_restore 12
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
	srlg	%r4,%r1,63
	lr	%r3,%r4
	ahi	%r3,-1
	lgfr	%r0,%r3
	stmg	%r12,%r15,128(%r15)
	ngr	%r0,%r5
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-32
	.cfi_def_cfa_offset 192
	ltr	%r4,%r4
	lg	%r2,8(%r2)
	lgr	%r12,%r4
	jne	.L3449
	lghi	%r2,0
.L3449:
	ogr	%r2,%r0
	brasl	%r14,__clzdi2@PLT
	sll	%r12,6
	ar	%r2,%r12
	lg	%r5,176(%r15)
	lgfr	%r2,%r2
	lmg	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r5
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
	jl	.L3456
	jh	.L3457
	clr	%r2,%r3
	jl	.L3456
	jh	.L3457
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3456:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3457:
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
	jl	.L3463
	jh	.L3462
	clr	%r2,%r3
	jl	.L3463
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3463:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3462:
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
	jl	.L3469
	jh	.L3470
	clgr	%r4,%r1
	jl	.L3469
	jh	.L3470
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3469:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3470:
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
	srl	%r3,31
	lgr	%r1,%r2
	sll	%r3,4
	srl	%r1,0(%r3)
	lhi	%r2,255
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	lhi	%r5,15
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	lhi	%r4,3
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	srl	%r1,0(%r4)
	ar	%r3,%r2
	lhi	%r0,3
	lhi	%r2,1
	nr	%r0,%r1
	nr	%r1,%r2
	ar	%r3,%r5
	srl	%r0,1
	xr	%r1,%r2
	lhi	%r5,2
	lcr	%r2,%r1
	sr	%r5,%r0
	ar	%r4,%r3
	nr	%r2,%r5
	ar	%r2,%r4
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
	lg	%r4,8(%r2)
	lpgr	%r1,%r4
	aghi	%r1,-1
	srlg	%r0,%r1,63
	lg	%r2,0(%r2)
	srag	%r3,%r1,63
	ngr	%r3,%r2
	lgr	%r2,%r0
	aghi	%r2,-1
	ngr	%r2,%r4
	stmg	%r12,%r15,128(%r15)
	ogr	%r2,%r3
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-32
	.cfi_def_cfa_offset 192
	lhi	%r12,255
	nr	%r12,%r0
	brasl	%r14,__ctzdi2@PLT
	sll	%r12,6
	ar	%r2,%r12
	lg	%r5,176(%r15)
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
	lgr	%r1,%r2
	stmg	%r14,%r15,144(%r15)
	lg	%r2,8(%r2)
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	aghi	%r15,-16
	.cfi_def_cfa_offset 176
	ltgr	%r2,%r2
	lg	%r0,0(%r1)
	jne	.L3480
	ltgr	%r0,%r0
	jne	.L3484
	lhi	%r2,0
	lg	%r4,160(%r15)
	lgfr	%r2,%r2
	lmg	%r14,%r15,160(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 160
	br	%r4
.L3480:
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
.L3484:
	.cfi_restore_state
	lgr	%r2,%r0
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
	je	.L3487
	srlg	%r1,%r2,32
	lhi	%r4,0
	srl	%r1,4064(%r3)
	sllg	%r2,%r4,32
	lr	%r2,%r1
	br	%r14
.L3487:
	ltgr	%r3,%r3
	ber	%r14
	srlg	%r4,%r2,32
	lhi	%r5,32
	sr	%r5,%r3
	lr	%r1,%r4
	srl	%r2,0(%r3)
	sll	%r1,0(%r5)
	srl	%r4,0(%r3)
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
	lg	%r1,0(%r3)
	lg	%r3,8(%r3)
	je	.L3493
	srlg	%r3,%r1,4032(%r4)
	lghi	%r1,0
.L3495:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L3493:
	ltgr	%r4,%r4
	je	.L3495
	lhi	%r5,64
	sr	%r5,%r4
	srlg	%r0,%r3,0(%r4)
	sllg	%r3,%r1,0(%r5)
	ogr	%r3,%r0
	srlg	%r1,%r1,0(%r4)
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
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
	lr	%r4,%r2
	nilh	%r4,0
	lr	%r1,%r3
	nilh	%r1,0
	lr	%r5,%r4
	msr	%r5,%r1
	srl	%r2,16
	msr	%r1,%r2
	srl	%r3,16
	msr	%r2,%r3
	msr	%r4,%r3
	lr	%r3,%r5
	srl	%r3,16
	ar	%r1,%r3
	lr	%r0,%r1
	nilh	%r0,0
	ar	%r4,%r0
	srl	%r1,16
	ar	%r1,%r2
	lr	%r2,%r4
	nilh	%r5,0
	srl	%r2,16
	sll	%r4,16
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
	larl	%r13,.L3504
	lr	%r5,%r2
	nilh	%r5,0
	lr	%r1,%r3
	nilh	%r1,0
	lr	%r4,%r5
	msr	%r4,%r1
	lr	%r0,%r2
	srl	%r0,16
	msr	%r1,%r0
	lr	%r12,%r3
	srl	%r12,16
	msr	%r5,%r12
	lr	%r11,%r4
	srl	%r11,16
	ar	%r1,%r11
	msr	%r0,%r12
	lr	%r12,%r1
	nilh	%r12,0
	ar	%r5,%r12
	srag	%r11,%r3,32
	lr	%r12,%r5
	srl	%r1,16
	msr	%r11,%r2
	sll	%r12,16
	srl	%r5,16
	srag	%r2,%r2,32
	nilh	%r4,0
	ar	%r1,%r0
	msr	%r3,%r2
	ar	%r4,%r12
	ar	%r1,%r5
	sllg	%r5,%r1,32
	llgfr	%r2,%r4
	ogr	%r2,%r5
	srag	%r1,%r2,32
	ar	%r1,%r11
	ar	%r1,%r3
	ng	%r2,.L3505-.L3504(%r13)
	sllg	%r3,%r1,32
	ogr	%r2,%r3
	lmg	%r11,%r13,136(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L3504:
.L3505:
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
	larl	%r13,.L3508
	srlg	%r0,%r4,32
	lg	%r5,.L3509-.L3508(%r13)
	ngr	%r5,%r3
	lg	%r1,.L3509-.L3508(%r13)
	ngr	%r1,%r4
	lgr	%r12,%r5
	msgr	%r12,%r1
	srlg	%r3,%r3,32
	msgr	%r1,%r3
	lgr	%r4,%r5
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
	agr	%r1,%r4
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	lmg	%r12,%r13,144(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L3508:
.L3509:
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
	larl	%r13,.L3512
	lgr	%r9,%r4
	lgr	%r10,%r3
	lg	%r4,8(%r3)
	lg	%r3,.L3513-.L3512(%r13)
	ngr	%r3,%r4
	lg	%r5,8(%r9)
	lg	%r1,.L3513-.L3512(%r13)
	ngr	%r1,%r5
	lgr	%r0,%r3
	msgr	%r0,%r1
	srlg	%r11,%r4,32
	srlg	%r8,%r5,32
	msgr	%r1,%r11
	msgr	%r3,%r8
	msgr	%r11,%r8
	msg	%r4,0(%r9)
	msg	%r5,0(%r10)
	srlg	%r10,%r0,32
	agr	%r1,%r10
	algfr	%r3,%r1
	srlg	%r9,%r1,32
	agr	%r9,%r11
	srlg	%r1,%r3,32
	agr	%r9,%r1
	agr	%r4,%r9
	sllg	%r3,%r3,32
	algfr	%r3,%r0
	agr	%r4,%r5
	stg	%r4,0(%r2)
	stg	%r3,8(%r2)
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
.L3512:
.L3513:
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
	slg	%r5,8(%r3)
	lghi	%r4,0
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
	srlg	%r1,%r2,32
	xr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,16
	xr	%r0,%r2
	lr	%r2,%r0
	srl	%r2,8
	xr	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	xr	%r3,%r2
	lhi	%r4,15
	nr	%r3,%r4
	lhi	%r2,27030
	sra	%r2,0(%r3)
	lghi	%r5,1
	ngr	%r2,%r5
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
	srag	%r2,%r1,32
	xr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,16
	xr	%r0,%r2
	lr	%r3,%r0
	srl	%r3,8
	xr	%r3,%r0
	lr	%r4,%r3
	srl	%r4,4
	xr	%r4,%r3
	lhi	%r5,15
	nr	%r4,%r5
	lhi	%r2,27030
	sra	%r2,0(%r4)
	lghi	%r1,1
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
	lr	%r2,%r1
	srl	%r2,8
	xr	%r2,%r1
	lr	%r3,%r2
	srl	%r3,4
	xr	%r3,%r2
	lhi	%r0,15
	nr	%r3,%r0
	lhi	%r2,27030
	sra	%r2,0(%r3)
	lghi	%r4,1
	ngr	%r2,%r4
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
	larl	%r5,.L3526
	srlg	%r1,%r2,1
	ng	%r1,.L3527-.L3526(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r0,.L3528-.L3526(%r5)
	ng	%r2,.L3528-.L3526(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3529-.L3526(%r5)
	srlg	%r2,%r3,32
	ar	%r2,%r3
	lr	%r4,%r2
	srl	%r4,16
	ar	%r4,%r2
	lr	%r2,%r4
	srl	%r2,8
	ar	%r2,%r4
	lghi	%r1,127
	ngr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L3526:
.L3529:
	.quad	1085102592571150095
.L3528:
	.quad	3689348814741910323
.L3527:
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
	larl	%r5,.L3532
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3533-.L3532(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L3534-.L3532(%r5)
	n	%r2,.L3534-.L3532(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3535-.L3532(%r5)
	lr	%r2,%r3
	srl	%r2,16
	ar	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	ar	%r2,%r3
	lghi	%r4,63
	ngr	%r2,%r4
	br	%r14
	.section	.rodata
	.align	8
.L3532:
.L3535:
	.long	252645135
.L3534:
	.long	858993459
.L3533:
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
	larl	%r13,.L3538
	lg	%r3,8(%r2)
	lg	%r2,0(%r2)
	srlg	%r12,%r2,1
	srlg	%r1,%r3,1
	lg	%r0,.L3539-.L3538(%r13)
	lg	%r11,.L3539-.L3538(%r13)
	ngr	%r0,%r12
	ngr	%r11,%r1
	slgr	%r3,%r11
	slbgr	%r2,%r0
	srlg	%r4,%r2,2
	lg	%r5,.L3540-.L3538(%r13)
	ngr	%r5,%r4
	srlg	%r12,%r3,2
	lgr	%r4,%r5
	lg	%r0,.L3540-.L3538(%r13)
	lg	%r5,.L3540-.L3538(%r13)
	lg	%r1,.L3540-.L3538(%r13)
	ngr	%r0,%r2
	ngr	%r5,%r12
	ngr	%r1,%r3
	algr	%r5,%r1
	alcgr	%r4,%r0
	sllg	%r2,%r4,60
	srlg	%r3,%r5,4
	ogr	%r3,%r2
	algr	%r3,%r5
	srlg	%r11,%r4,4
	alcgr	%r11,%r4
	lg	%r12,.L3541-.L3538(%r13)
	lg	%r2,.L3541-.L3538(%r13)
	ngr	%r12,%r11
	ngr	%r2,%r3
	agr	%r12,%r2
	srlg	%r4,%r12,32
	ar	%r4,%r12
	lr	%r0,%r4
	srl	%r0,16
	ar	%r0,%r4
	lr	%r2,%r0
	srl	%r2,8
	ar	%r2,%r0
	lghi	%r5,255
	ngr	%r2,%r5
	lmg	%r11,%r13,136(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L3538:
.L3541:
	.quad	1085102592571150095
.L3540:
	.quad	3689348814741910323
.L3539:
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
	larl	%r5,.L3551
	tmll	%r2,1
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L3552-.L3551(%r5)
	je	.L3543
.L3545:
	mdbr	%f0,%f2
.L3543:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3544
	lr	%r0,%r1
	tmll	%r1,1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3545
.L3550:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	lr	%r0,%r1
	tmll	%r1,1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3545
	j	.L3550
.L3544:
	ltr	%r2,%r2
	bher	%r14
	ld	%f4,.L3552-.L3551(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3551:
.L3552:
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
	larl	%r5,.L3562
	tmll	%r2,1
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L3563-.L3562(%r5)
	je	.L3554
.L3556:
	meebr	%f0,%f2
.L3554:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	lgfr	%r1,%r1
	ltgr	%r1,%r1
	je	.L3555
	lr	%r0,%r1
	tmll	%r1,1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3556
.L3561:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	lr	%r0,%r1
	tmll	%r1,1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3556
	j	.L3561
.L3555:
	ltr	%r2,%r2
	bher	%r14
	le	%f4,.L3563-.L3562(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3562:
.L3563:
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
	jl	.L3568
	jh	.L3569
	clr	%r2,%r3
	jl	.L3568
	jh	.L3569
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3568:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3569:
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
	jl	.L3575
	jh	.L3574
	clr	%r2,%r3
	jl	.L3575
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3575:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3574:
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
	jl	.L3581
	jh	.L3582
	clgr	%r4,%r1
	jl	.L3581
	jh	.L3582
	lghi	%r0,3
	lhi	%r2,1
	ngr	%r2,%r0
	br	%r14
.L3581:
	lghi	%r0,3
	lhi	%r2,0
	ngr	%r2,%r0
	br	%r14
.L3582:
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
